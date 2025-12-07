unint64_t sub_10011B928(uint64_t a1)
{
  _StringGuts.grow(_:)(30);

  v3 = *(a1 + 112);
  v2 = *(a1 + 120);
  sub_100009708(v3, v2);
  v4 = Data.base16EncodedString()();
  sub_1000092BC(v3, v2);
  String.append(_:)(v4);

  return 0xD00000000000001CLL;
}

void *sub_10011B9DC(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10011C098();
  v8 = v1;
  if (v1)
  {
    (*(v4 + 104))(v6, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v8 = sub_100123368(a1, v7);
  }

  return v8;
}

uint64_t sub_10011BBF8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ISO18013Package.Document();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013Package();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v34;
  result = sub_100112CC4(v13);
  if (!v14)
  {
    v27 = v9;
    v28 = v7;
    v34 = v11;
    v29 = 0;
    v30 = v10;
    v16 = v13;
    v17 = *(ISO18013Package.documents.getter() + 16);

    if (v17 == 1)
    {
      v18 = ISO18013Package.documents.getter();
      sub_1000FC1A8(v18, v6);

      v19 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
      result = (*(*(v19 - 8) + 48))(v6, 1, v19);
      v20 = v34;
      if (result == 1)
      {
        __break(1u);
      }

      else
      {

        v21 = v31;
        v22 = v27;
        v23 = v28;
        (*(v31 + 32))(v27, &v6[*(v19 + 48)], v28);
        v24 = v32;
        ISO18013Package.Document.issuerAuth.getter();
        (*(v21 + 8))(v22, v23);
        (*(v20 + 8))(v16, v30);
        v25 = type metadata accessor for COSE_Sign1();
        return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      }
    }

    else
    {
      (*(v33 + 104))(v3, enum case for DIPError.Code.idcsInvalidPayload(_:), v1);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v34 + 8))(v13, v30);
    }
  }

  return result;
}

unint64_t sub_10011C098()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_100004E70(&qword_100203898, &unk_1001AE040);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ISO18013Package.Document();
  v31 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013Package();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v35;
  sub_100112CC4(v34);
  if (!v16)
  {
    v28 = v12;
    v29 = 0;
    v30 = v14;
    v35 = v13;
    v17 = ISO18013Package.documents.getter();
    sub_1000FC1A8(v17, v6);

    v18 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      sub_10000A0D4(v6, &qword_100203890, &qword_1001AE038);
      (*(v33 + 104))(v3, enum case for DIPError.Code.invalidStoredData(_:), v32);
      v13 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v20 = *(v6 + 1);
      v21 = *(v18 + 48);
      v22 = *(v7 + 48);
      *v9 = *v6;
      *(v9 + 1) = v20;
      v23 = v31;
      v24 = *(v31 + 32);
      v25 = v10;
      v24(&v9[v22], &v6[v21], v10);

      v26 = v28;
      v24(v28, &v9[*(v7 + 48)], v25);
      v13 = ISO18013Package.Document.namespaces.getter();
      (*(v23 + 8))(v26, v25);
    }

    (*(v30 + 8))(v34, v35);
  }

  return v13;
}

unint64_t sub_10011C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v3 = type metadata accessor for AnyCodable();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013IssuerSignedItem();
  v76 = *(v7 - 8);
  __chkstk_darwin(v7);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  v10 = __chkstk_darwin(v9 - 8);
  v79 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v69 - v18;
  sub_10011DA70(&v86);
  if (!*(&v87 + 1))
  {
    v34 = &qword_100203888;
    v35 = &qword_1001AE030;
    v36 = &v86;
LABEL_19:
    sub_10000A0D4(v36, v34, v35);
    return 0;
  }

  v70 = v7;
  v71 = v6;
  v80 = v15;
  v19 = v14;
  v72 = v4;
  v73 = v3;
  v98 = v90;
  v99 = v91;
  v100 = v92;
  v101 = v93;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v97 = v89;
  sub_10001A940(&v99, &v86);
  sub_100009278(&v86, *(&v87 + 1));
  swift_getDynamicType();
  sub_100005090(&v86);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = &v69;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v69 - v22;
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  if (!*(v81 + 16))
  {

    v27 = v19;
    v28 = v80;
    goto LABEL_9;
  }

  v24 = sub_100099644(v84, v85);
  v26 = v25;

  v27 = v19;
  v28 = v80;
  if ((v26 & 1) == 0)
  {
LABEL_9:
    v37 = *(v28 + 56);
    v37(v13, 1, 1, v27);
LABEL_10:
    sub_10000A0D4(v13, &qword_100203400, &qword_1001ADCB0);
    goto LABEL_11;
  }

  v29 = *(*(v81 + 56) + 8 * v24);
  sub_100009278(&v99, *(&v100 + 1));

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v29 + 16))
  {
    v30 = sub_100099644(v82, v83);
    v32 = v31;

    if (v32)
    {
      (*(v28 + 16))(v13, *(v29 + 56) + *(v28 + 72) * v30, v19);

      v33 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v33 = 1;
LABEL_24:
  v54 = v77;
  v37 = *(v28 + 56);
  v37(v13, v33, 1, v19);
  if ((*(v28 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_10;
  }

  (*(v28 + 32))(v54, v13, v19);
  v55 = v75;
  CBOREncodedCBOR.value.getter();
  v56 = v71;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v76 + 8))(v55, v70);
  v57 = AnyCodable.stringValue.getter();
  v59 = v58;
  (*(v72 + 8))(v56, v73);
  if (v59)
  {
    *&v86 = v57;
    *(&v86 + 1) = v59;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    (*(v28 + 8))(v54, v27);

    if (v85)
    {
      v60 = v84;
      sub_100120AB4(&v94);
      return v60;
    }
  }

  else
  {
    (*(v28 + 8))(v54, v27);
  }

LABEL_11:
  sub_10001A940(&v94, &v86);
  sub_100009278(&v86, *(&v87 + 1));
  swift_getDynamicType();
  sub_100005090(&v86);
  v38 = swift_getAssociatedTypeWitness();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v69 - v40;
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v39 + 8))(v41, v38);
  v42 = v81;
  if (!*(v81 + 16))
  {

    goto LABEL_17;
  }

  v43 = sub_100099644(v84, v85);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_17:
    v51 = v79;
    v37(v79, 1, 1, v27);
LABEL_18:
    sub_100120AB4(&v94);
    v34 = &qword_100203400;
    v35 = &qword_1001ADCB0;
    v36 = v51;
    goto LABEL_19;
  }

  v46 = *(*(v42 + 56) + 8 * v43);
  sub_100009278(&v94, *(&v95 + 1));

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v46 + 16))
  {
    v47 = sub_100099644(v82, v83);
    v49 = v48;

    if (v49)
    {
      v50 = *(v46 + 56) + *(v80 + 72) * v47;
      v51 = v79;
      (*(v80 + 16))(v79, v50, v27);

      v52 = 0;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v52 = 1;
  v51 = v79;
LABEL_29:
  v61 = v80;
  v37(v51, v52, 1, v27);
  if ((*(v61 + 48))(v51, 1, v27) == 1)
  {
    goto LABEL_18;
  }

  v62 = v74;
  (*(v61 + 32))(v74, v51, v27);
  v63 = v75;
  CBOREncodedCBOR.value.getter();
  v64 = v71;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v76 + 8))(v63, v70);
  v65 = AnyCodable.stringValue.getter();
  v67 = v66;
  (*(v72 + 8))(v64, v73);
  if (v67 && (*&v86 = v65, *(&v86 + 1) = v67, sub_10004630C(), Collection.nilIfEmpty.getter(), , v85))
  {
    v68 = v84;
    (*(v61 + 8))(v62, v27);
  }

  else
  {
    (*(v61 + 8))(v62, v27);

    v68 = 0xD00000000000001CLL;
  }

  sub_100120AB4(&v94);
  return v68;
}

uint64_t sub_10011D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a3;
  v77 = a2;
  v71 = a1;
  v78 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v61 - v9;
  v10 = type metadata accessor for Logger();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v61 - v13;
  v70 = type metadata accessor for AnyCodable();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ISO18013IssuerSignedItem();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v72 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v61 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v20 = &v61 - v19;
  swift_getDynamicType();
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v20, AssociatedTypeWitness);
  v21 = v83;
  v22 = v84;
  sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  v79 = xmmword_1001AA160;
  *(inited + 16) = xmmword_1001AA160;
  *(inited + 32) = v21;
  *(inited + 40) = v22;
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v24 = swift_allocObject();
  *(v24 + 16) = v79;
  v25 = *(a5 + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  *(inited + 48) = v24;
  v26 = sub_10010D02C(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_1002004F0, &unk_1001AE020);
  v27 = v81;
  v28 = sub_10011B9DC(v26);
  if (v27)
  {
  }

  v30 = v28;
  v31 = v72;
  v80 = v25;
  v81 = 0;
  v32 = v73;

  if (!v30[2])
  {

    v38 = v76;
    v46 = v82;
    v47 = a4;
LABEL_12:

    v45 = v78;
    goto LABEL_13;
  }

  v33 = sub_100099644(v21, v22);
  v35 = v34;

  v36 = a4;
  if ((v35 & 1) == 0)
  {
    v38 = v76;
    goto LABEL_11;
  }

  v37 = *(v30[7] + 8 * v33);

  v38 = v76;
  if (!*(v37 + 16))
  {
LABEL_11:
    v46 = v82;
    v47 = v36;
    goto LABEL_12;
  }

  v39 = v63;
  v40 = v64;
  (*(v31 + 16))(v63, v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v64);

  v41 = v65;
  CBOREncodedCBOR.value.getter();
  (*(v31 + 8))(v39, v40);
  v42 = v68;
  ISO18013IssuerSignedItem.elementValue.getter();
  (*(v66 + 8))(v41, v67);
  *&v79 = AnyCodable.stringValue.getter();
  v44 = v43;
  (*(v69 + 8))(v42, v70);
  v45 = v78;
  v46 = v82;
  v47 = v36;
  if (v44)
  {
    v48 = v62;
    defaultLogger()();
    v49 = v61;
    (*(v45 + 16))(v61, v46, v36);
    v50 = v77;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v85 = v82;
      *v53 = 136315650;
      *(v53 + 4) = sub_10010150C(v71, v50, &v85);
      *(v53 + 12) = 2080;
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v45 + 8))(v49, v47);
      v54 = sub_10010150C(v83, v84, &v85);

      *(v53 + 14) = v54;
      *(v53 + 22) = 2080;
      v55 = v79;
      *(v53 + 24) = sub_10010150C(v79, v44, &v85);
      _os_log_impl(&_mh_execute_header, v51, v52, "Element found for doc Type %s and element Identifier %s : %s", v53, 0x20u);
      swift_arrayDestroy();

      (*(v74 + 8))(v62, v75);
      return v55;
    }

    else
    {

      (*(v45 + 8))(v49, v36);
      (*(v74 + 8))(v48, v75);
      return v79;
    }
  }

LABEL_13:
  defaultLogger()();
  (*(v45 + 16))(v32, v46, v47);
  v56 = v77;

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v59 = 136315394;
    *(v59 + 4) = sub_10010150C(v71, v56, &v85);
    *(v59 + 12) = 2080;
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v45 + 8))(v32, v47);
    v60 = sub_10010150C(v83, v84, &v85);

    *(v59 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v57, v58, "Element not found for doc Type %s and element Identifier %s", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v45 + 8))(v32, v47);
  }

  (*(v74 + 8))(v38, v75);
  return 0;
}

uint64_t sub_10011DA70@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;

  ISO18013KnownDocTypes.init(rawValue:)();
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v9, v7, &qword_100201578, &qword_1001AD1E0);
  v13 = (*(v11 + 88))(v7, v10);
  if (v13 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v14 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
    *(a3 + 24) = v14;
    v15 = sub_100120B50(&qword_100203880, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
    *(a3 + 32) = v15;
    v16 = sub_10001A9A4(a3);
    v17 = *(*(v14 - 8) + 104);
    v17(v16, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v14);
    *(a3 + 64) = v14;
    *(a3 + 72) = v15;
    v18 = sub_10001A9A4((a3 + 40));
    v17(v18, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v14);
    *(a3 + 104) = v14;
    *(a3 + 112) = v15;
    v19 = sub_10001A9A4((a3 + 80));
    v20 = &enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:);
  }

  else
  {
    if (v13 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      *(a3 + 112) = 0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return sub_10000A0D4(v9, &qword_100201578, &qword_1001AD1E0);
    }

    if (v13 != enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      (*(v11 + 8))(v7, v10);
LABEL_2:
      result = sub_10000A0D4(v9, &qword_100201578, &qword_1001AD1E0);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0;
      return result;
    }

    v14 = type metadata accessor for ISO23220_1_ElementIdentifier();
    *(a3 + 24) = v14;
    v21 = sub_100120B50(&qword_100203878, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    *(a3 + 32) = v21;
    v22 = sub_10001A9A4(a3);
    v17 = *(*(v14 - 8) + 104);
    v17(v22, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v14);
    *(a3 + 64) = v14;
    *(a3 + 72) = v21;
    v23 = sub_10001A9A4((a3 + 40));
    v17(v23, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v14);
    *(a3 + 104) = v14;
    *(a3 + 112) = v21;
    v19 = sub_10001A9A4((a3 + 80));
    v20 = &enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:);
  }

  v17(v19, *v20, v14);
  return sub_10000A0D4(v9, &qword_100201578, &qword_1001AD1E0);
}

void *sub_10011DE30()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10011C098();
  v6 = v0;
  if (v0)
  {
    (*(v2 + 104))(v4, enum case for DIPError.Code.internalError(_:), v1);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v6 = sub_100123C64(v5);
  }

  return v6;
}

uint64_t sub_10011E040@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004E70(&qword_100203868, &qword_1001AE000);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013MobileSecurityObject.status.getter();
  v12 = type metadata accessor for ISO18013MobileSecurityObject.Status();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_10000A0D4(v4, &qword_100203868, &qword_1001AE000);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    ISO18013MobileSecurityObject.Status.identifierList.getter();
    (*(v13 + 8))(v4, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      ISO18013MobileSecurityObject.IdentifierList.id.getter();
      ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      ISO18013MobileSecurityObject.IdentifierList.init(id:certificate:uri:)();
      (*(v9 + 8))(v11, v8);
      v14 = 0;
      return (*(v9 + 56))(a1, v14, 1, v8);
    }
  }

  sub_10000A0D4(v7, &qword_100203870, &qword_1001AE008);
  v14 = 1;
  return (*(v9 + 56))(a1, v14, 1, v8);
}

void *sub_10011E344(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10011C098();
  v15 = v5;
  if (v5)
  {
    (*(v11 + 104))(v13, enum case for DIPError.Code.internalError(_:), v10);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v15 = sub_100111F78(a1, a2, a3, v14, a4, v18);
  }

  return v15;
}

uint64_t sub_10011E580()
{
  sub_1000092BC(*(v0 + 112), *(v0 + 120));
  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload, &qword_100203918, &qword_1001AE0B0);
  sub_100005090((v0 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder));
  v1 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v2 = type metadata accessor for ISO18013CodingKeyFormat();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ISO18013PackagePayloadProcessor(uint64_t a1)
{
  result = qword_100203708;
  if (!qword_100203708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011E684(uint64_t a1)
{
  sub_10011E76C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ISO18013CodingKeyFormat();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011E76C(uint64_t a1)
{
  if (!qword_100203718)
  {
    type metadata accessor for ISO18013Package();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100203718);
    }
  }
}

uint64_t sub_10011E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ISO18013CodingKeyFormat();
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v8, enum case for ISO18013CodingKeyFormat.standard(_:));
  result = sub_1000EE06C(a1, a2, v8);
  *a3 = result;
  return result;
}

uint64_t sub_10011E8A4(uint64_t a1, char a2)
{
  *(v3 + 32) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_10011E8C8, v4, 0);
}

uint64_t sub_10011E8C8()
{
  sub_100113200(*(v0 + 32), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011E948(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10011E968, v3, 0);
}

uint64_t sub_10011E968()
{
  v1 = sub_10011B9DC(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return _swift_task_switch(sub_10011EA0C, v7, 0);
}

uint64_t sub_10011EA0C()
{
  v1 = sub_10011E344(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011EA90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10011EAB0, v3, 0);
}

uint64_t sub_10011EAB0()
{
  sub_10011BBF8(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011EB2C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10011EB4C, v2, 0);
}

uint64_t sub_10011EB4C()
{
  v1 = sub_10011DE30();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011EBC8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10011EBE8, v2, 0);
}

uint64_t sub_10011EBE8()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  sub_100009708(v3, v2);
  v4 = *(v0 + 8);

  return v4(v3, v2);
}

void (*sub_10011EC60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10011ECE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011ECE8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013KnownDocTypes();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v8);
  v12 = ISO18013KnownDocTypes.rawValue.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (v12 == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10010150C(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v18, v19, "ISO18013PackagePayloadProcessor: issuerForDocTypeWithoutCorrespondingElementIdentifier docType: %s returning JP", v20, 0xCu);
    sub_100005090(v21);
  }

  (*(v5 + 8))(v7, v4);
  return 20554;
}

uint64_t sub_10011EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v155 = a7;
  v154 = a6;
  v185 = a4;
  v186 = a5;
  v183 = a1;
  v166 = type metadata accessor for AnyCodable();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v157 = *(v170 - 8);
  __chkstk_darwin(v170);
  v145 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_100004E70(&qword_1002038C0, &qword_1001AE070);
  __chkstk_darwin(v149);
  v163 = &v144 - v11;
  v12 = sub_100004E70(&qword_1002038C8, &qword_1001AE078);
  v13 = __chkstk_darwin(v12 - 8);
  v147 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v169 = &v144 - v16;
  __chkstk_darwin(v15);
  v151 = &v144 - v17;
  v162 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  v160 = *(v162 - 8);
  __chkstk_darwin(v162);
  v146 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100004E70(&qword_1002038D0, &qword_1001AE080);
  __chkstk_darwin(v158);
  v161 = &v144 - v19;
  v20 = sub_100004E70(&qword_1002038D8, &qword_1001AE088);
  v21 = __chkstk_darwin(v20 - 8);
  v150 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v181 = &v144 - v24;
  __chkstk_darwin(v23);
  v171 = &v144 - v25;
  v178 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v148 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_100004E70(&qword_1002038E0, &qword_1001AE090);
  __chkstk_darwin(v174);
  v177 = &v144 - v27;
  v28 = sub_100004E70(&qword_1002038E8, &qword_1001AE098);
  v29 = __chkstk_darwin(v28 - 8);
  v159 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v182 = &v144 - v32;
  __chkstk_darwin(v31);
  v175 = &v144 - v33;
  v34 = type metadata accessor for ISO18013KnownNamespaces();
  v35 = *(v34 - 8);
  v187 = v34;
  v188 = v35;
  __chkstk_darwin(v34);
  v179 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_100004E70(&qword_1002038F0, &unk_1001AE0A0);
  v37 = __chkstk_darwin(v184);
  v168 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v180 = &v144 - v40;
  __chkstk_darwin(v39);
  v42 = &v144 - v41;
  v43 = sub_100004E70(&qword_100202E08, &qword_1001AD4D8);
  v44 = __chkstk_darwin(v43 - 8);
  v156 = &v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v172 = &v144 - v47;
  v48 = __chkstk_darwin(v46);
  v173 = &v144 - v49;
  v50 = __chkstk_darwin(v48);
  v167 = &v144 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v144 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v144 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v144 - v59;
  v61 = __chkstk_darwin(v58);
  v63 = &v144 - v62;
  __chkstk_darwin(v61);
  v65 = &v144 - v64;
  v66 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v67 = __chkstk_darwin(v66 - 8);
  v69 = &v144 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v71 = &v144 - v70;

  v152 = a2;
  v153 = a3;
  ISO18013KnownDocTypes.init(rawValue:)();
  v72 = type metadata accessor for ISO18013KnownDocTypes();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v71, 1, v72) != 1)
  {
    v144 = v71;
    sub_100046360(v71, v69, &qword_100201578, &qword_1001AD1E0);
    v75 = (*(v73 + 88))(v69, v72);
    if (v75 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {

      ISO18013KnownNamespaces.init(rawValue:)();
      v77 = v187;
      v76 = v188;
      (*(v188 + 104))(v63, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v187);
      (*(v76 + 56))(v63, 0, 1, v77);
      v78 = *(v184 + 48);
      sub_100046360(v65, v42, &qword_100202E08, &qword_1001AD4D8);
      sub_100046360(v63, &v42[v78], &qword_100202E08, &qword_1001AD4D8);
      v79 = *(v76 + 48);
      if (v79(v42, 1, v77) == 1)
      {
        sub_10000A0D4(v63, &qword_100202E08, &qword_1001AD4D8);
        sub_10000A0D4(v65, &qword_100202E08, &qword_1001AD4D8);
        if (v79(&v42[v78], 1, v77) == 1)
        {
          sub_10000A0D4(v42, &qword_100202E08, &qword_1001AD4D8);
LABEL_21:
          ISO18013IssuerSignedItem.elementIdentifier.getter();
          v84 = v175;
          ISO18013_5_1_ElementIdentifier.init(rawValue:)();
          v102 = v176;
          v103 = v182;
          v93 = v178;
          (*(v176 + 104))(v182, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v178);
          (*(v102 + 56))(v103, 0, 1, v93);
          v104 = *(v174 + 48);
          v94 = v177;
          sub_100046360(v84, v177, &qword_1002038E8, &qword_1001AE098);
          sub_100046360(v103, v104 + v94, &qword_1002038E8, &qword_1001AE098);
          v105 = *(v102 + 48);
          if (v105(v94, 1, v93) == 1)
          {
            sub_10000A0D4(v103, &qword_1002038E8, &qword_1001AE098);
            sub_10000A0D4(v84, &qword_1002038E8, &qword_1001AE098);
            if (v105(v104 + v94, 1, v93) == 1)
            {
              v106 = &qword_1002038E8;
              v107 = &qword_1001AE098;
LABEL_47:
              sub_10000A0D4(v94, v106, v107);
              sub_10000A0D4(v144, &qword_100201578, &qword_1001AD1E0);
              while (1)
              {
                v133 = v164;
                ISO18013IssuerSignedItem.elementValue.getter();
                AnyCodable.value.getter();
                (*(v165 + 8))(v133, v166);
                result = swift_dynamicCast();
                if (!result)
                {
                  return result;
                }

                v134 = v190 >> 62;
                if ((v190 >> 62) <= 1)
                {
                  break;
                }

                if (v134 != 2)
                {
                  goto LABEL_65;
                }

                v130 = *(v189 + 16);
                v135 = *(v189 + 24);
                sub_1000092BC(v189, v190);
                v136 = __OFSUB__(v135, v130);
                v129 = (v135 - v130);
                if (!v136)
                {
                  goto LABEL_66;
                }

                __break(1u);
LABEL_59:
                v137 = v147;
                sub_100046360(v94, v147, &qword_1002038C8, &qword_1001AE078);
                if (v105(v104 + v94, 1, v93) == 1)
                {
                  sub_10000A0D4(v84, v129, v130);
                  sub_10000A0D4(v103, v129, v130);
                  (*(v157 + 8))(v137, v93);
                  goto LABEL_61;
                }

                v140 = v157;
                v141 = v104 + v94;
                v142 = v145;
                (*(v157 + 32))(v145, v141, v93);
                sub_100120B50(&qword_1002038F8, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
                v120 = dispatch thunk of static Equatable.== infix(_:_:)();
                v143 = *(v140 + 8);
                v105 = (v140 + 8);
                v143(v142, v93);
                v122 = &qword_1002038C8;
                v104 = &qword_1001AE078;
                sub_10000A0D4(v84, &qword_1002038C8, &qword_1001AE078);
                sub_10000A0D4(v103, &qword_1002038C8, &qword_1001AE078);
                v143(v137, v93);
LABEL_50:
                sub_10000A0D4(v94, v122, v104);
                result = sub_10000A0D4(v144, &qword_100201578, &qword_1001AD1E0);
                if ((v120 & 1) == 0)
                {
                  return result;
                }
              }

              if (v134)
              {
                v138 = HIDWORD(v189);
                v139 = v189;
                result = sub_1000092BC(v189, v190);
                if (__OFSUB__(v138, v139))
                {
                  __break(1u);
                  return result;
                }
              }

              else
              {
LABEL_65:
                sub_1000092BC(v189, v190);
              }

LABEL_66:
              type metadata accessor for IDCSAnalytics();
              return static IDCSAnalytics.sendPayloadPortraitSizeEvent(docType:issuer:portraitSizeBytes:)();
            }

            goto LABEL_27;
          }

          v103 = v159;
          sub_100046360(v94, v159, &qword_1002038E8, &qword_1001AE098);
          if (v105(v104 + v94, 1, v93) == 1)
          {
            sub_10000A0D4(v182, &qword_1002038E8, &qword_1001AE098);
            sub_10000A0D4(v84, &qword_1002038E8, &qword_1001AE098);
            (*(v102 + 8))(v103, v93);
LABEL_27:
            v108 = &qword_1002038E0;
            v109 = &qword_1001AE090;
            goto LABEL_62;
          }

          v118 = v104 + v94;
          v119 = v148;
          (*(v102 + 32))(v148, v118, v93);
          sub_100120B50(&qword_100203910, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
          v120 = dispatch thunk of static Equatable.== infix(_:_:)();
          v121 = *(v102 + 8);
          v121(v119, v93);
          v122 = &qword_1002038E8;
          v104 = &qword_1001AE098;
          sub_10000A0D4(v182, &qword_1002038E8, &qword_1001AE098);
          v123 = v84;
LABEL_49:
          sub_10000A0D4(v123, v122, v104);
          v121(v103, v93);
          goto LABEL_50;
        }

        goto LABEL_17;
      }

      sub_100046360(v42, v60, &qword_100202E08, &qword_1001AD4D8);
      if (v79(&v42[v78], 1, v77) == 1)
      {
        v85 = v63;
        v86 = v42;
LABEL_30:
        sub_10000A0D4(v85, &qword_100202E08, &qword_1001AD4D8);
        sub_10000A0D4(v65, &qword_100202E08, &qword_1001AD4D8);
        (*(v188 + 8))(v60, v77);
        goto LABEL_31;
      }

      v97 = v188;
      v98 = &v42[v78];
      v99 = v179;
      (*(v188 + 32))(v179, v98, v77);
      sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
      v100 = dispatch thunk of static Equatable.== infix(_:_:)();
      v101 = *(v97 + 8);
      v101(v99, v77);
      sub_10000A0D4(v63, &qword_100202E08, &qword_1001AD4D8);
      sub_10000A0D4(v65, &qword_100202E08, &qword_1001AD4D8);
      v101(v60, v77);
      sub_10000A0D4(v42, &qword_100202E08, &qword_1001AD4D8);
      if (v100)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v77 = v187;
      if (v75 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
      {

        ISO18013KnownNamespaces.init(rawValue:)();
        v80 = v188;
        (*(v188 + 104))(v54, enum case for ISO18013KnownNamespaces.iso23220_1_jp(_:), v77);
        (*(v80 + 56))(v54, 0, 1, v77);
        v81 = *(v184 + 48);
        v42 = v180;
        sub_100046360(v57, v180, &qword_100202E08, &qword_1001AD4D8);
        sub_100046360(v54, &v42[v81], &qword_100202E08, &qword_1001AD4D8);
        v82 = *(v80 + 48);
        if (v82(v42, 1, v77) == 1)
        {
          sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v57, &qword_100202E08, &qword_1001AD4D8);
          v83 = v82(&v42[v81], 1, v77);
          v84 = v181;
          if (v83 != 1)
          {
LABEL_17:
            v86 = v42;
            goto LABEL_31;
          }

          sub_10000A0D4(v42, &qword_100202E08, &qword_1001AD4D8);
        }

        else
        {
          v95 = v167;
          sub_100046360(v42, v167, &qword_100202E08, &qword_1001AD4D8);
          v96 = v82(&v42[v81], 1, v77);
          v84 = v181;
          if (v96 == 1)
          {
            v85 = v54;
            v65 = v57;
            v60 = v95;
            v86 = v42;
            goto LABEL_30;
          }

          v113 = v188;
          v114 = &v42[v81];
          v115 = v179;
          (*(v188 + 32))(v179, v114, v77);
          sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
          LODWORD(v186) = dispatch thunk of static Equatable.== infix(_:_:)();
          v116 = *(v113 + 8);
          v116(v115, v77);
          sub_10000A0D4(v54, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v57, &qword_100202E08, &qword_1001AD4D8);
          v116(v95, v77);
          sub_10000A0D4(v42, &qword_100202E08, &qword_1001AD4D8);
          if ((v186 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v103 = v171;
        ISO23220_1_Japan_ElementIdentifier.init(rawValue:)();
        v117 = v160;
        v93 = v162;
        (*(v160 + 104))(v84, enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:), v162);
        (*(v117 + 56))(v84, 0, 1, v93);
        v104 = *(v158 + 48);
        v94 = v161;
        sub_100046360(v103, v161, &qword_1002038D8, &qword_1001AE088);
        sub_100046360(v84, v104 + v94, &qword_1002038D8, &qword_1001AE088);
        v105 = *(v117 + 48);
        if (v105(v94, 1, v93) == 1)
        {
          sub_10000A0D4(v84, &qword_1002038D8, &qword_1001AE088);
          sub_10000A0D4(v103, &qword_1002038D8, &qword_1001AE088);
          if (v105(v104 + v94, 1, v93) == 1)
          {
            v106 = &qword_1002038D8;
            v107 = &qword_1001AE088;
            goto LABEL_47;
          }
        }

        else
        {
          v103 = v150;
          sub_100046360(v94, v150, &qword_1002038D8, &qword_1001AE088);
          if (v105(v104 + v94, 1, v93) != 1)
          {
            v131 = v104 + v94;
            v132 = v146;
            (*(v117 + 32))(v146, v131, v93);
            sub_100120B50(&qword_100203908, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
            v120 = dispatch thunk of static Equatable.== infix(_:_:)();
            v121 = *(v117 + 8);
            v121(v132, v93);
            v122 = &qword_1002038D8;
            v104 = &qword_1001AE088;
            sub_10000A0D4(v84, &qword_1002038D8, &qword_1001AE088);
            v123 = v171;
            goto LABEL_49;
          }

          sub_10000A0D4(v84, &qword_1002038D8, &qword_1001AE088);
          sub_10000A0D4(v171, &qword_1002038D8, &qword_1001AE088);
          (*(v117 + 8))(v103, v93);
        }

        v108 = &qword_1002038D0;
        v109 = &qword_1001AE080;
        goto LABEL_62;
      }

      if (v75 == enum case for ISO18013KnownDocTypes.photoID(_:))
      {

        v87 = v173;
        ISO18013KnownNamespaces.init(rawValue:)();
        v88 = v188;
        v89 = v172;
        (*(v188 + 104))(v172, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v77);
        (*(v88 + 56))(v89, 0, 1, v77);
        v90 = *(v184 + 48);
        v86 = v168;
        sub_100046360(v87, v168, &qword_100202E08, &qword_1001AD4D8);
        sub_100046360(v89, v86 + v90, &qword_100202E08, &qword_1001AD4D8);
        v91 = *(v88 + 48);
        if (v91(v86, 1, v77) == 1)
        {
          sub_10000A0D4(v89, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v87, &qword_100202E08, &qword_1001AD4D8);
          v92 = v91(v86 + v90, 1, v77);
          v93 = v170;
          v94 = v163;
          v84 = v169;
          if (v92 != 1)
          {
LABEL_31:
            sub_10000A0D4(v86, &qword_1002038F0, &unk_1001AE0A0);
            goto LABEL_32;
          }

          sub_10000A0D4(v86, &qword_100202E08, &qword_1001AD4D8);
        }

        else
        {
          v110 = v156;
          sub_100046360(v86, v156, &qword_100202E08, &qword_1001AD4D8);
          v111 = v91(v86 + v90, 1, v77);
          v93 = v170;
          v84 = v169;
          if (v111 == 1)
          {
            v60 = v110;
            v65 = v173;
            v85 = v172;
            goto LABEL_30;
          }

          v124 = v188;
          v125 = v179;
          (*(v188 + 32))(v179, v86 + v90, v77);
          sub_100120B50(&qword_100203900, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
          v126 = dispatch thunk of static Equatable.== infix(_:_:)();
          v127 = *(v124 + 8);
          v127(v125, v77);
          sub_10000A0D4(v172, &qword_100202E08, &qword_1001AD4D8);
          sub_10000A0D4(v173, &qword_100202E08, &qword_1001AD4D8);
          v127(v110, v77);
          sub_10000A0D4(v86, &qword_100202E08, &qword_1001AD4D8);
          v94 = v163;
          if ((v126 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v103 = v151;
        ISO23220_1_ElementIdentifier.init(rawValue:)();
        v128 = v157;
        (*(v157 + 104))(v84, enum case for ISO23220_1_ElementIdentifier.portrait(_:), v93);
        (*(v128 + 56))(v84, 0, 1, v93);
        v104 = *(v149 + 48);
        v129 = &qword_1002038C8;
        v130 = &qword_1001AE078;
        sub_100046360(v103, v94, &qword_1002038C8, &qword_1001AE078);
        sub_100046360(v84, v104 + v94, &qword_1002038C8, &qword_1001AE078);
        v105 = *(v128 + 48);
        if (v105(v94, 1, v93) != 1)
        {
          goto LABEL_59;
        }

        sub_10000A0D4(v84, &qword_1002038C8, &qword_1001AE078);
        sub_10000A0D4(v103, &qword_1002038C8, &qword_1001AE078);
        if (v105(v104 + v94, 1, v93) == 1)
        {
          v106 = &qword_1002038C8;
          v107 = &qword_1001AE078;
          goto LABEL_47;
        }

LABEL_61:
        v108 = &qword_1002038C0;
        v109 = &qword_1001AE070;
LABEL_62:
        sub_10000A0D4(v94, v108, v109);
        v74 = v144;
        return sub_10000A0D4(v74, &qword_100201578, &qword_1001AD1E0);
      }

      (*(v73 + 8))(v69, v72);
    }

LABEL_32:
    v74 = v144;
    return sub_10000A0D4(v74, &qword_100201578, &qword_1001AD1E0);
  }

  v74 = v71;
  return sub_10000A0D4(v74, &qword_100201578, &qword_1001AD1E0);
}

unint64_t sub_100120AEC()
{
  result = qword_1002038B8;
  if (!qword_1002038B8)
  {
    sub_100021ED0(&qword_1002038A8, &qword_1001AE058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002038B8);
  }

  return result;
}

uint64_t sub_100120B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100120B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203918, &qword_1001AE0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_100120C08(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100120C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100120C7C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100120CF8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100120DA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100120ECC()
{
  v0 = type metadata accessor for AnyCodable();
  sub_100120F20(v0, qword_100205D38);
  sub_1000FC128(v0, qword_100205D38);
  return AnyCodable.init(value:)();
}

uint64_t *sub_100120F20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_100120F84(uint64_t a1)
{
  v79 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v2 = __chkstk_darwin(v79);
  v78 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v77 = &v67 - v4;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = _swiftEmptyDictionarySingleton;
  v69 = a1 + 64;
  v70 = a1;
  v68 = v9;
  while (v8)
  {
LABEL_12:
    v73 = v10;
    v74 = v8;
    v13 = __clz(__rbit64(v8)) | (v10 << 6);
    v14 = *(a1 + 56);
    v15 = (*(a1 + 48) + 16 * v13);
    v16 = v15[1];
    v75 = *v15;
    v17 = *(v14 + 8 * v13);
    v18 = *(v17 + 16);
    v82 = v17;
    if (v18)
    {
      v72 = v11;
      v88 = _swiftEmptyArrayStorage;
      v71 = v16;

      sub_10010A6B4(0, v18, 0);
      v19 = v88;
      v20 = v17 + 64;
      v21 = _HashTable.startBucket.getter();
      v22 = 0;
      v76 = v17 + 72;
      v80 = v18;
      v81 = v17 + 64;
      while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v17 + 32))
      {
        v24 = v21 >> 6;
        if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_45;
        }

        v83 = v22;
        v84 = *(v17 + 36);
        v85 = 1 << v21;
        v87 = v19;
        v25 = v79;
        v26 = *(v79 + 48);
        v27 = *(v17 + 56);
        v28 = (*(v17 + 48) + 16 * v21);
        v30 = *v28;
        v29 = v28[1];
        v31 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
        v32 = *(v31 - 8);
        v33 = v77;
        (*(v32 + 16))(&v77[v26], v27 + *(v32 + 72) * v21, v31);
        v34 = v78;
        v86 = v30;
        *v78 = v30;
        *(v34 + 8) = v29;
        v35 = *(v25 + 48);
        v19 = v87;
        (*(v32 + 32))(v34 + v35, &v33[v26], v31);
        swift_bridgeObjectRetain_n();
        sub_100124218(v34);
        v88 = v19;
        v37 = v19[2];
        v36 = v19[3];
        if (v37 >= v36 >> 1)
        {
          sub_10010A6B4((v36 > 1), v37 + 1, 1);
          v19 = v88;
        }

        v19[2] = v37 + 1;
        v38 = &v19[2 * v37];
        v38[4] = v86;
        v38[5] = v29;
        v20 = v81;
        v17 = v82;
        v23 = 1 << *(v82 + 32);
        if (v21 >= v23)
        {
          goto LABEL_46;
        }

        v39 = *(v81 + 8 * v24);
        if ((v39 & v85) == 0)
        {
          goto LABEL_47;
        }

        if (v84 != *(v82 + 36))
        {
          goto LABEL_48;
        }

        v40 = v39 & (-2 << (v21 & 0x3F));
        if (v40)
        {
          v23 = __clz(__rbit64(v40)) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v24 << 6;
          v42 = v24 + 1;
          v43 = (v76 + 8 * v24);
          while (v42 < (v23 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_1000468A0(v21, v84, 0);
              v23 = __clz(__rbit64(v44)) + v41;
              goto LABEL_15;
            }
          }

          sub_1000468A0(v21, v84, 0);
        }

LABEL_15:
        v22 = v83 + 1;
        v21 = v23;
        if (v83 + 1 == v80)
        {
          v87 = v19;
          v5 = v69;
          a1 = v70;
          v9 = v68;
          v16 = v71;
          v11 = v72;
          goto LABEL_32;
        }
      }

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

    v87 = _swiftEmptyArrayStorage;
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    v47 = v16;
    v48 = sub_100099644(v75, v16);
    v50 = v11[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      goto LABEL_50;
    }

    v54 = v49;
    if (v11[3] >= v53)
    {
      v56 = v74;
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v88;
        if (v49)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v60 = v48;
        sub_100109A9C();
        v56 = v74;
        v48 = v60;
        v11 = v88;
        if (v54)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_100108404(v53, isUniquelyReferenced_nonNull_native);
      v48 = sub_100099644(v75, v16);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_52;
      }

      v56 = v74;
      v11 = v88;
      if (v54)
      {
LABEL_5:
        *(v11[7] + 8 * v48) = v87;

        goto LABEL_6;
      }
    }

    v11[(v48 >> 6) + 8] |= 1 << v48;
    v57 = (v11[6] + 16 * v48);
    *v57 = v75;
    v57[1] = v47;
    *(v11[7] + 8 * v48) = v87;
    v58 = v11[2];
    v52 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v52)
    {
      goto LABEL_51;
    }

    v11[2] = v59;
LABEL_6:
    v8 = (v56 - 1) & v56;

    v10 = v73;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v88 = 0;
      v89 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v61._object = 0x80000001001BAF80;
      v61._countAndFlagsBits = 0xD000000000000032;
      String.append(_:)(v61);
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v62 = Dictionary.description.getter();
      v64 = v63;

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      return v88;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001215BC(uint64_t a1)
{
  _StringGuts.grow(_:)(35);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v1._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000021;
}

void sub_100121664(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100099644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100109790();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100107EC8(v16, a4 & 1);
    v11 = sub_100099644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100005090(v22);

    sub_100009268(a1, v22);
  }

  else
  {
    sub_1001096D8(v11, a2, a3, a1, v21);
  }
}

void sub_100121874(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100099644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_100099644(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t *sub_1001219E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100122A78(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_100121A7C(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_100122DA8(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

Swift::Int sub_100121B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100004E70(&qword_100203510, &qword_1001ADD80);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100121D88(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_100004E70(&qword_100203518, &qword_1001ADD88);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100122114(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012226C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012251C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10012261C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100122774(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001228CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100122A20(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t *sub_100122A78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];

      sub_100099644(v16, v17);
      v19 = v18;

      if (v19)
      {
        *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_100121B44(v22, a2, v23, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100121B44(v22, a2, v23, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100122BE8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1001219E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100122A78((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_100122DA8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v51 = a4;
  v41 = a2;
  v42 = a1;
  v50 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  __chkstk_darwin(v50);
  v8 = &v41 - v7;
  v58 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  result = __chkstk_darwin(v58);
  v56 = &v41 - v11;
  v43 = 0;
  v12 = 0;
  v53 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v48 = v10 + 16;
  v49 = v10;
  v52 = (v10 + 8);
  v55 = v8;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = v53[7];
    v25 = (v53[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v49 + 72);
    v46 = v23;
    v29 = *(v49 + 16);
    v30 = v56;
    v31 = v58;
    v29(v56, v24 + v28 * v23, v58);
    v32 = v55;
    *v55 = v27;
    *(v32 + 1) = v26;
    v29(&v32[*(v50 + 48)], v30, v31);
    v33 = v51;
    v34 = *(v51 + 16);
    swift_bridgeObjectRetain_n();
    if (v34 && (v35 = sub_100099644(v44, v45), (v36 & 1) != 0))
    {
      v37 = *(*(v33 + 56) + 8 * v35);
      v57[0] = v27;
      v57[1] = v26;
      __chkstk_darwin(v35);
      *(&v41 - 2) = v57;

      v38 = v47;
      v39 = sub_100120CF8(sub_100124290, (&v41 - 4), v37);
      v47 = v38;

      sub_100124218(v55);
      (*v52)(v56, v58);

      v18 = v54;
      if (v39)
      {
        *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
          return sub_100121D88(v42, v41, v43, v53);
        }
      }
    }

    else
    {
      sub_100124218(v55);
      (*v52)(v56, v58);

      v18 = v54;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_100121D88(v42, v41, v43, v53);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100123138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_100121A7C(v16, v11, a1, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_100122DA8((&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v14;
}

void *sub_100123368(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v100 = a2;
  Logger.sensitive(_:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_10010D040(_swiftEmptyArrayStorage);

  if (a1)
  {
    v11 = defaultLogger()();
    __chkstk_darwin(v11);
    *(&v90 - 2) = a1;
    Logger.sensitive(_:)();
    v10(v9, v6);

    v12 = sub_100122BE8(a2, a1);

    v13 = v12 + 8;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12[8];
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = _swiftEmptyDictionarySingleton;
    v95 = v17;
    v96 = a1;
    v98 = v12;
    v94 = v12 + 8;
    while (v16)
    {
      v21 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16)) | (v21 << 6);
      v23 = v12[7];
      v24 = (v12[6] + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v23 + 8 * v22);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v28 = v3;
      v29 = sub_100123138(v27, a1, v25, v26);
      v102 = v28;
      v99 = v27;

      v30 = *(v29 + 16);
      if (v30)
      {
        v97 = v25;
        sub_100004E70(&qword_100203410, &qword_1001ADCC0);
        v31 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v32 = *(v31 + 72);
        v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = swift_allocObject();
        v35 = j__malloc_size(v34);
        if (!v32)
        {
          goto LABEL_63;
        }

        if (v35 - v33 == 0x8000000000000000 && v32 == -1)
        {
          goto LABEL_69;
        }

        v34[2] = v30;
        v34[3] = 2 * ((v35 - v33) / v32);
        v37 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v38 = sub_10012226C(v101, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v30, v29);
        sub_1000BAE9C(v101[0]);
        if (v38 != v30)
        {
          goto LABEL_64;
        }

        v13 = v94;
        v25 = v97;
      }

      else
      {

        v34 = _swiftEmptyArrayStorage;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v19;
      v40 = sub_100099644(v25, v26);
      v42 = v19[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_62;
      }

      v46 = v41;
      if (v19[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v25;
          v52 = v40;
          sub_100109AB0();
          v40 = v52;
          v25 = v51;
        }
      }

      else
      {
        sub_100108418(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_100099644(v25, v26);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_72;
        }
      }

      v3 = v102;
      v16 &= v16 - 1;
      if (v46)
      {
        v20 = v40;

        v19 = v101[0];
        *(*(v101[0] + 56) + 8 * v20) = v34;
      }

      else
      {
        v19 = v101[0];
        *(v101[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v48 = (v19[6] + 16 * v40);
        *v48 = v25;
        v48[1] = v26;
        *(v19[7] + 8 * v40) = v34;

        v49 = v19[2];
        v44 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v44)
        {
          goto LABEL_66;
        }

        v19[2] = v50;
      }

      v18 = v21;
      v12 = v98;
      v17 = v95;
      a1 = v96;
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v17)
      {

        goto LABEL_31;
      }

      v16 = v13[v21];
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = a2 + 64;
    v55 = 1 << *(a2 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(a2 + 64);
    v58 = (v55 + 63) >> 6;

    v59 = 0;
    v19 = _swiftEmptyDictionarySingleton;
    v102 = v3;
    v98 = a2;
    v91 = a2 + 64;
    v92 = v58;
    while (v57)
    {
      v61 = v59;
LABEL_42:
      v62 = __clz(__rbit64(v57)) | (v61 << 6);
      v63 = *(a2 + 56);
      v64 = (*(a2 + 48) + 16 * v62);
      v65 = v64[1];
      v99 = *v64;
      v66 = *(*(v63 + 8 * v62) + 16);
      v97 = *(v63 + 8 * v62);
      if (v66)
      {
        v95 = v65;
        sub_100004E70(&qword_100203410, &qword_1001ADCC0);
        v67 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v68 = *(v67 + 72);
        v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v70 = swift_allocObject();
        v71 = j__malloc_size(v70);
        if (!v68)
        {
          goto LABEL_67;
        }

        if (v71 - v69 == 0x8000000000000000 && v68 == -1)
        {
          goto LABEL_71;
        }

        v70[2] = v66;
        v70[3] = 2 * ((v71 - v69) / v68);
        v73 = *(sub_100004E70(&qword_1002004D8, &qword_1001ACBF0) - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v96 = v70;
        v75 = sub_10012226C(v101, v70 + v74, v66, v97);
        v76 = v101[0];
        v93 = v101[1];
        v94 = v75;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1000BAE9C(v76);
        if (v94 != v66)
        {
          goto LABEL_68;
        }

        a2 = v98;
        v54 = v91;
        v65 = v95;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v96 = _swiftEmptyArrayStorage;
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v19;
      v78 = sub_100099644(v99, v65);
      v80 = v19[2];
      v81 = (v79 & 1) == 0;
      v44 = __OFADD__(v80, v81);
      v82 = v80 + v81;
      if (v44)
      {
        goto LABEL_65;
      }

      v83 = v79;
      if (v19[3] >= v82)
      {
        if ((v77 & 1) == 0)
        {
          v88 = v65;
          v89 = v78;
          sub_100109AB0();
          v78 = v89;
          v65 = v88;
        }
      }

      else
      {
        sub_100108418(v82, v77);
        v78 = sub_100099644(v99, v65);
        if ((v83 & 1) != (v84 & 1))
        {
          goto LABEL_72;
        }
      }

      v57 &= v57 - 1;
      if (v83)
      {
        v60 = v78;

        v19 = v101[0];
        *(*(v101[0] + 56) + 8 * v60) = v96;
      }

      else
      {
        v19 = v101[0];
        *(v101[0] + 8 * (v78 >> 6) + 64) |= 1 << v78;
        v85 = (v19[6] + 16 * v78);
        *v85 = v99;
        v85[1] = v65;
        *(v19[7] + 8 * v78) = v96;

        v86 = v19[2];
        v44 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v44)
        {
          goto LABEL_70;
        }

        v19[2] = v87;
      }

      v59 = v61;
      v58 = v92;
    }

    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {
LABEL_31:

        return v19;
      }

      v57 = *(v54 + 8 * v61);
      ++v59;
      if (v57)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
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
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100123C64(uint64_t a1)
{
  v77 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v2 = __chkstk_darwin(v77);
  v76 = &v65[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v75 = &v65[-v4];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v73 = _swiftEmptyDictionarySingleton;
  v66 = a1 + 64;
  v67 = a1;
  v69 = v9;
  while (v8)
  {
LABEL_12:
    v70 = v10;
    v71 = v8;
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = *(a1 + 56);
    v14 = (*(a1 + 48) + 16 * v12);
    v15 = v14[1];
    v72 = *v14;
    v16 = *(v13 + 8 * v12);
    v17 = *(v16 + 16);
    if (v17)
    {
      v87 = _swiftEmptyArrayStorage;
      v68 = v15;

      sub_10010A6B4(0, v17, 0);
      v18 = v87;
      v19 = v16 + 64;
      v20 = _HashTable.startBucket.getter();
      v21 = 0;
      v74 = v16 + 72;
      v78 = v17;
      v79 = v16 + 64;
      v80 = v16;
      while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
      {
        if ((*(v19 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_43;
        }

        v81 = v21;
        v82 = *(v16 + 36);
        v83 = 1 << v20;
        v24 = v77;
        v25 = *(v77 + 48);
        v26 = *(v16 + 56);
        v27 = (*(v16 + 48) + 16 * v20);
        v28 = *v27;
        v84 = v27[1];
        v85 = v20 >> 6;
        v29 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
        v30 = v18;
        v31 = *(v29 - 8);
        v32 = v75;
        (*(v31 + 16))(&v75[v25], v26 + *(v31 + 72) * v20, v29);
        v33 = v76;
        v86 = v28;
        *v76 = v28;
        v34 = v84;
        *(v33 + 8) = v84;
        (*(v31 + 32))(v33 + *(v24 + 48), &v32[v25], v29);
        v18 = v30;
        swift_bridgeObjectRetain_n();
        sub_100124218(v33);
        v87 = v30;
        v36 = v30[2];
        v35 = v30[3];
        if (v36 >= v35 >> 1)
        {
          sub_10010A6B4((v35 > 1), v36 + 1, 1);
          v18 = v87;
        }

        v18[2] = v36 + 1;
        v37 = &v18[2 * v36];
        v38 = v85;
        v37[4] = v86;
        v37[5] = v34;
        v16 = v80;
        v22 = 1 << *(v80 + 32);
        if (v20 >= v22)
        {
          goto LABEL_44;
        }

        v19 = v79;
        v39 = *(v79 + 8 * v38);
        if ((v39 & v83) == 0)
        {
          goto LABEL_45;
        }

        if (v82 != *(v80 + 36))
        {
          goto LABEL_46;
        }

        v40 = v39 & (-2 << (v20 & 0x3F));
        if (v40)
        {
          v22 = __clz(__rbit64(v40)) | v20 & 0x7FFFFFFFFFFFFFC0;
          v23 = v78;
        }

        else
        {
          v41 = v38 << 6;
          v42 = v38 + 1;
          v43 = (v74 + 8 * v38);
          v23 = v78;
          while (v42 < (v22 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_1000468A0(v20, v82, 0);
              v22 = __clz(__rbit64(v44)) + v41;
              goto LABEL_15;
            }
          }

          sub_1000468A0(v20, v82, 0);
        }

LABEL_15:
        v21 = v81 + 1;
        v20 = v22;
        if (v81 + 1 == v23)
        {
          v46 = v18;
          v5 = v66;
          a1 = v67;
          v47 = v73;
          v15 = v68;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v46 = _swiftEmptyArrayStorage;
    v47 = v73;
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v47;
    v49 = v15;
    v50 = sub_100099644(v72, v15);
    v52 = v73[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_48;
    }

    v56 = v51;
    if (v73[3] >= v55)
    {
      v58 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = v50;
        sub_100109A9C();
        v58 = v71;
        v50 = v63;
      }
    }

    else
    {
      sub_100108404(v55, isUniquelyReferenced_nonNull_native);
      v50 = sub_100099644(v72, v15);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_50;
      }

      v58 = v71;
    }

    v59 = v87;
    v73 = v87;
    if (v56)
    {
      *(v87[7] + 8 * v50) = v46;
    }

    else
    {
      v87[(v50 >> 6) + 8] |= 1 << v50;
      v60 = (v59[6] + 16 * v50);
      *v60 = v72;
      v60[1] = v49;
      *(v59[7] + 8 * v50) = v46;
      v61 = v59[2];
      v54 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v54)
      {
        goto LABEL_49;
      }

      v59[2] = v62;
    }

    v8 = (v58 - 1) & v58;

    v9 = v69;
    v10 = v70;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v73;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100124218(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124290(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int sub_1001242EC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(v4, v2);
  sub_10010B5EC(v4, v1);
  return Hasher._finalize()();
}

void sub_100124378(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(a1, v4);

  sub_10010B5EC(a1, v3);
}

Swift::Int sub_1001243EC(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10010B604(v5, v3);
  sub_10010B5EC(v5, v2);
  return Hasher._finalize()();
}

uint64_t sub_100124474(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1000FFD08(v3, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFD20(v5, v8);
}

uint64_t sub_10012456C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_100124704(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PayloadMetadata(uint64_t a1)
{
  result = qword_100203980;
  if (!qword_100203980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001248D4(uint64_t a1)
{
  type metadata accessor for DCCredentialPayloadFormat(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100124AB0(319, &qword_100203990, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        sub_100124A60(319, &unk_100202728, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100124A60(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_100124AB0(319, &unk_100203998, &type metadata accessor for ISO18013MobileSecurityObject.IdentifierList);
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

void sub_100124A60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100124AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100124B18()
{
  result = qword_1002039F8;
  if (!qword_1002039F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002039F8);
  }

  return result;
}

__n128 sub_100124B6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100124B80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100124BC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100124C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for Insecure.SHA1();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Insecure.SHA1Digest();
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  v12 = v11;
  sub_100124F98(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
  dispatch thunk of HashFunction.init()();
  sub_100009708(v10, v12);
  sub_1000265CC(v10, v12, v6);
  sub_1000092BC(v10, v12);
  dispatch thunk of HashFunction.finalize()();
  (*(v16 + 8))(v6, v4);
  sub_100124F98(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
  v13 = v18;
  v14 = Digest.data.getter();
  sub_1000092BC(v10, v12);
  (*(v17 + 8))(v9, v13);
  return v14;
}

uint64_t sub_100124F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100125008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001250CC, 0, 0);
}

uint64_t sub_1001250CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;

  sub_100009708(v4, v3);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = &unk_1001AE550;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v7 = v0;
  v7[1] = sub_100125228;

  return AsyncCoreDataContainer.write<A>(_:)(v0 + 2, &unk_1001AE8C0, v6, v8);
}

uint64_t sub_100125228()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1001253BC;
  }

  else
  {

    v2 = sub_10012534C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012534C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1001253BC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100125558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100125620, 0, 0);
}

uint64_t sub_100125620()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;

  sub_100009708(v5, v4);
  sub_100009708(v3, v1);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = &unk_1001AE5B0;
  *(v7 + 24) = v6;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100125784;

  return AsyncCoreDataContainer.write<A>(_:)(v8, &unk_1001AE5B8, v7, &type metadata for () + 8);
}

uint64_t sub_100125784()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1001258A8;
  }

  else
  {

    v2 = sub_100058874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001258A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v7 = v0[7];

  v6 = enum case for DIPError.Code.internalError(_:);
  v5 = *(v2 + 104);
  v5(v1);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v5)(v1, v6, v7);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100125AF8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100125BB8, 0, 0);
}

uint64_t sub_100125BB8()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = &unk_1001AE590;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100125CC4;

  return AsyncCoreDataContainer.write<A>(_:)(v0 + 9, &unk_1001AE598, v2, &type metadata for Bool);
}

uint64_t sub_100125CC4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100125E2C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 72);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_100125E2C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100125FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_100126114;

  return sub_10012ED08(1);
}

uint64_t sub_100126114(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1001268BC;
  }

  else
  {
    v4 = sub_100126228;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100126228()
{
  v1 = v0[13];
  if (!v1)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[14];
  sub_100009278((v0[5] + 24), *(v0[5] + 48));
  v3 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v4 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v3, v4);
  dispatch thunk of AppleIDVManaging.generatePrearmTrustKeyforWatchAndCopyPublicKey(nonce:prognitorPublicKey:)();
  v0[15] = v13;
  v0[16] = v14;
  v0[17] = v15;
  v0[18] = v16;
  v0[19] = v17;
  v0[20] = v18;
  v0[21] = v19;
  v0[22] = v20;
  sub_1000092BC(v3, v4);
  if (v2)
  {

LABEL_5:
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  v8 = v0[10];
  v7 = v0[11];
  v12 = v0[9];
  defaultLogger()();
  v9 = swift_task_alloc();
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v9[6] = v17;
  v9[7] = v18;
  v9[8] = v19;
  v9[9] = v20;
  Logger.sensitive(_:)();

  (*(v8 + 8))(v7, v12);
  sub_100009708(v13, v14);
  sub_100009708(v15, v16);
  sub_100009708(v17, v18);
  sub_100009708(v19, v20);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_1001266D0;
  v11 = v0[2];

  return DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)(v11);
}

uint64_t sub_1001266D0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100126A50;
  }

  else
  {
    v2 = sub_1001267E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001267E4()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  sub_1000092BC(v0[15], v0[16]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001268BC()
{
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100126A50()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  sub_1000092BC(v0[15], v0[16]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100126C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[14] = v9;
  *v9 = v6;
  v9[1] = sub_100126D7C;

  return sub_10012ED08(0);
}

uint64_t sub_100126D7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100127534;
  }

  else
  {
    v4 = sub_100126E90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100126E90()
{
  v1 = v0[15];
  if (!v1)
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v12 = v0[16];
  sub_100009278((v0[7] + 24), *(v0[7] + 48));
  v3 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v2 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v3, v2);
  dispatch thunk of AppleIDVManaging.getPrearmTrustKeyFromExistingKeyBlob(keyBlob:nonce:prognitorPublicKey:)();
  v0[17] = v13;
  v0[18] = v14;
  v0[19] = v15;
  v0[20] = v16;
  v0[21] = v17;
  v0[22] = v18;
  v0[23] = v19;
  v0[24] = v20;
  sub_1000092BC(v3, v2);
  if (v12)
  {

LABEL_5:
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  v7 = v0[12];
  v6 = v0[13];
  v11 = v0[11];
  defaultLogger()();
  v8 = swift_task_alloc();
  v8[2] = v13;
  v8[3] = v14;
  v8[4] = v15;
  v8[5] = v16;
  v8[6] = v17;
  v8[7] = v18;
  v8[8] = v19;
  v8[9] = v20;
  Logger.sensitive(_:)();

  (*(v7 + 8))(v6, v11);
  sub_100009708(v13, v14);
  sub_100009708(v15, v16);
  sub_100009708(v17, v18);
  sub_100009708(v19, v20);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_100127348;
  v10 = v0[2];

  return DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)(v10);
}

uint64_t sub_100127348()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1001276C8;
  }

  else
  {
    v2 = sub_10012745C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012745C()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  sub_1000092BC(v0[17], v0[18]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100127534()
{
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001276C8()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  sub_1000092BC(v0[17], v0[18]);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v1, v2);

  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001278A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_1001279F0;

  return sub_10012ED08(1);
}

uint64_t sub_1001279F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_100127F3C;
  }

  else
  {
    v4 = sub_100127B04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100127B04()
{
  v1 = v0[12];
  if (!v1)
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.progenitorKeyUnavailable(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[13];
  sub_100009278((v0[4] + 24), *(v0[4] + 48));
  v3 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v4 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v3, v4);
  dispatch thunk of AppleIDVManaging.updatePrearmTrustKeyforWatch(inKeyBlob:prognitorPublicKey:)();
  sub_1000092BC(v3, v4);
  if (v2)
  {

LABEL_5:
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  v7 = v0[9];
  v8 = v0[10];
  v11 = v0[8];
  sub_1000092BC(v12, v13);
  defaultLogger()();
  v9 = swift_task_alloc();
  v9[2] = v14;
  v9[3] = v15;
  v9[4] = v16;
  v9[5] = v17;
  v9[6] = v18;
  v9[7] = v19;
  Logger.sensitive(_:)();
  sub_1000092BC(v14, v15);
  sub_1000092BC(v16, v17);

  (*(v7 + 8))(v8, v11);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100127F3C()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001280C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[14] = v6;
  *v6 = v4;
  v6[1] = sub_1001281D0;

  return sub_100137B2C(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_1001281D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v6 = sub_100128504;
  }

  else
  {
    v6 = sub_1001282E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001282E8(uint64_t a1)
{
  v2 = v1[18];
  v1[19] = sub_10012C720();
  v1[20] = v3;
  if (v2)
  {
    sub_10001C120(v1[15], v1[16]);
    (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.internalError(_:), v1[11]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v1[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v1[21] = v6;
    *v6 = v1;
    v6[1] = sub_10012868C;

    return sub_10012C910();
  }
}

uint64_t sub_100128504()
{
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012868C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = sub_100128B18;
  }

  else
  {
    v5 = sub_1001287A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001287A4()
{
  v24 = v0[24];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[7];
  sub_10001A940(v0[10] + 24, (v0 + 2));
  sub_100009278(v0 + 2, v0[5]);
  v6 = [v5 credentialNonce];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v3 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = v3;
  }

  v12 = v4;
  v13 = v10;
  sub_100032EBC(v12, v3);
  sub_100009708(v1, v2);
  v14 = dispatch thunk of AppleIDVManaging.generatePhoneToken(withNonce:aclBlob:keyBlob:keyAttestation:casdCertificate:)();
  v17 = v0[22];
  v16 = v0[23];
  v19 = v0[19];
  v18 = v0[20];
  if (v24)
  {
    sub_10001C120(v0[15], v0[16]);
    sub_1000092BC(v19, v18);
    sub_1000092BC(v7, v9);
    sub_10001C120(v17, v16);
    sub_1000092BC(v19, v18);
    sub_1000092BC(v13, v11);
    sub_100005090(v0 + 2);
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v15;
    v25 = v14;
    sub_10001C120(v0[15], v0[16]);
    sub_1000092BC(v19, v18);
    sub_1000092BC(v7, v9);
    sub_10001C120(v17, v16);
    sub_1000092BC(v19, v18);
    sub_1000092BC(v13, v11);
    sub_100005090(v0 + 2);

    v22 = v0[1];

    return v22(v25, v23);
  }
}

uint64_t sub_100128B18()
{
  v1 = v0[16];
  v2 = v0[15];
  sub_1000092BC(v0[19], v0[20]);
  sub_10001C120(v2, v1);
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100128CC0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100128E48, 0, 0);
}

uint64_t sub_100128E48(uint64_t a1)
{
  v2 = v1[9];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[9];
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = [v6 credentialAccessibilityEnabled];

    _os_log_impl(&_mh_execute_header, v4, v5, "establishPrearmTrust called with accessibility enabled: %{BOOL,public}d", v7, 8u);

    v8 = v1[9];
  }

  else
  {

    v8 = v1[9];
    v4 = v8;
  }

  v9 = v1[25];
  v10 = v1[14];
  v11 = v1[15];

  v12 = *(v11 + 8);
  v1[26] = v12;
  v1[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = [v8 credentialPairingID];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[28] = v16;
  v17 = swift_task_alloc();
  v1[29] = v17;
  *v17 = v1;
  v17[1] = sub_100129004;

  return sub_10013AF38(v14, v16);
}

uint64_t sub_100129004(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v7 = sub_10012B210;
  }

  else
  {

    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v7 = sub_100129140;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100129140()
{
  *(v0 + 40) = vextq_s8(*(v0 + 248), *(v0 + 248), 8uLL);
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001BB6A0;
  v2._countAndFlagsBits = 0xD000000000000029;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SIMULATING no prearm trust", v6, 2u);
    }

    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 112);

    v9(v10, v11);
    sub_10001C120(v7, v8);
    *(v0 + 40) = xmmword_1001AE390;
  }

  v12 = *(v0 + 80);
  v13 = swift_allocObject();
  *(v0 + 264) = v13;
  *(v13 + 16) = sub_100141150;
  *(v13 + 24) = v12;
  swift_retain_n();
  v14 = swift_task_alloc();
  *(v0 + 272) = v14;
  v15 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v14 = v0;
  v14[1] = sub_100129370;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 56, sub_100141878, v13, v15);
}

uint64_t sub_100129370()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10012A3E4;
  }

  else
  {

    v2 = sub_100129498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129498(uint64_t a1)
{
  v131 = v1;
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v1 + 56);
  defaultLogger()();
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = v2;
  sub_100032EBC(v6, v5);
  sub_100032EBC(v4, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  sub_10001C120(v6, v5);
  v125 = v4;
  sub_10001C120(v4, v3);
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 208);
  v121 = *(v1 + 112);
  v123 = *(v1 + 184);
  v127 = v3 >> 60;
  v12 = &off_1001FE000;
  v13 = *(v1 + 72);
  if (v10)
  {
    v119 = v3;
    v14 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v14 = 136315650;
    if (v5 >> 60 == 15)
    {
      v15 = 0x746E65736261;
    }

    else
    {
      v15 = 0x746E6573657270;
    }

    if (v5 >> 60 == 15)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_10010150C(v15, v16, v130);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    if (v127 <= 0xE)
    {
      v18 = 0x746E6573657270;
    }

    else
    {
      v18 = 0x746E65736261;
    }

    if (v127 <= 0xE)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = sub_10010150C(v18, v19, v130);

    *(v14 + 14) = v20;
    *(v14 + 22) = 1024;
    v21 = [v13 credentialAccessibilityEnabled];

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "establishPrearmTrust -\nexisting trust       : %s\nexisting attestation : %s\naccessibilityEnabled : %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    v12 = &off_1001FE000;

    v3 = v119;

    v11(v123, v121);
  }

  else
  {

    v11(v123, v121);
  }

  if (v127 > 0xE)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 208);
    v26 = *(v1 + 152);
    v27 = *(v1 + 112);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "establishPrearmTrust - no re-use possible", v28, 2u);

      v29 = v125;
LABEL_19:
      sub_10001C120(v29, v3);
LABEL_37:
      v25(v26, v27);
      sub_10001C120(*(v1 + 40), *(v1 + 48));
      v129 = *(v1 + 280);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  swift_beginAccess();
  v30 = *(v1 + 48);
  if (v30 >> 60 == 15)
  {
    v31 = *(v1 + 72);
    sub_100009708(v125, v3);
    if (![v31 v12[452]])
    {
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      v57 = os_log_type_enabled(v22, v56);
      v25 = *(v1 + 208);
      v26 = *(v1 + 160);
      v27 = *(v1 + 112);
      if (v57)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v22, v56, "establishPrearmTrust - watch has an integrity issue. previous progenitor key with no trust blob. Forcing a redo", v58, 2u);

        sub_10001C120(v125, v3);
        v29 = v125;
        goto LABEL_19;
      }

      sub_10001C120(v125, v3);
      sub_10001C120(v125, v3);
LABEL_36:

      goto LABEL_37;
    }

    sub_10001C120(v125, v3);
    defaultLogger()();
    sub_100009708(v125, v3);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    sub_10001C120(v125, v3);
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 208);
    v36 = *(v1 + 168);
    v37 = *(v1 + 112);
    v120 = v3;
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v130[0] = v39;
      *v38 = 136315138;
      v40 = Data.base16EncodedString()();
      v41 = sub_10010150C(v40._countAndFlagsBits, v40._object, v130);

      *(v38 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "establishPrearmTrust - AX returning attestations %s", v38, 0xCu);
      sub_100005090(v39);
    }

    v35(v36, v37);
LABEL_66:
    sub_10001C120(*(v1 + 40), *(v1 + 48));

    v118 = *(v1 + 8);

    return v118(v125, v120);
  }

  v42 = *(v1 + 40);
  v128 = *(v1 + 280);
  v43 = *(v1 + 72);
  sub_100009278((*(v1 + 80) + 24), *(*(v1 + 80) + 48));
  sub_100032EBC(v125, v3);
  sub_100032EBC(v42, v30);
  v44 = [v43 credentialBAACertificate];
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  dispatch thunk of AppleIDVManaging.validatePrearmTrust(baaCertificate:protectedPublicKey:)();
  if (!v128)
  {
    v124 = v30;
    sub_10001C120(v125, v3);
    sub_1000092BC(v45, v47);
    defaultLogger()();
    sub_100009708(v125, v3);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_10001C120(v125, v3);
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v1 + 208);
    v63 = *(v1 + 176);
    v64 = *(v1 + 112);
    v120 = v3;
    if (v61)
    {
      v122 = *(v1 + 208);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v130[0] = v66;
      *v65 = 136315138;
      v67 = Data.base16EncodedString()();
      v68 = sub_10010150C(v67._countAndFlagsBits, v67._object, v130);

      *(v65 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "establishPrearmTrust - returning attestations %s", v65, 0xCu);
      sub_100005090(v66);

      sub_10001C120(v42, v124);

      v122(v63, v64);
    }

    else
    {
      sub_10001C120(v42, v124);

      v62(v63, v64);
    }

    goto LABEL_66;
  }

  sub_10001C120(*(v1 + 40), *(v1 + 48));
  sub_1000092BC(v45, v47);
  sub_10001C120(v42, v30);
  sub_10001C120(v125, v3);
  sub_10001C120(v125, v3);
  defaultLogger()();
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v1 + 96);
    v51 = *(v1 + 104);
    v52 = *(v1 + 88);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    (*(v50 + 104))(v51, enum case for DIPError.Code.internalError(_:), v52);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v53, 0xCu);
    sub_10000A0D4(v54, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  v12 = &off_1001FE000;
  (*(v1 + 208))(*(v1 + 128), *(v1 + 112));
  v129 = 0;
LABEL_38:
  defaultLogger()();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "establishPrearmTrust - creating new trust and globalAuthACL", v71, 2u);
  }

  v72 = *(v1 + 208);
  v73 = *(v1 + 144);
  v74 = *(v1 + 112);
  v75 = *(v1 + 72);

  v72(v73, v74);
  v76 = [v75 v12[452]];
  v77 = *(v1 + 72);
  if (v76)
  {
    defaultLogger()();
    v78 = v77;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v1 + 208);
    v83 = *(v1 + 136);
    v84 = *(v1 + 112);
    if (v81)
    {
      v85 = *(v1 + 72);
      v126 = *(v1 + 208);
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v130[0] = v87;
      *v86 = 136446210;
      v88 = [v85 v12[452]];
      v89 = v88 == 0;
      if (v88)
      {
        v90 = 20047;
      }

      else
      {
        v90 = 4605519;
      }

      if (v89)
      {
        v91 = 0xE300000000000000;
      }

      else
      {
        v91 = 0xE200000000000000;
      }

      v92 = v12;
      v93 = sub_10010150C(v90, v91, v130);

      *(v86 + 4) = v93;
      v12 = v92;
      _os_log_impl(&_mh_execute_header, v79, v80, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v86, 0xCu);
      sub_100005090(v87);

      v126(v83, v84);
    }

    else
    {

      v82(v83, v84);
    }

    v100 = *(v1 + 72);
    sub_100009278((*(v1 + 80) + 24), *(*(v1 + 80) + 48));
    [v100 v12[452]];
    v101 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v1 + 328) = v101;
    *(v1 + 336) = v102;
    if (v129)
    {
      goto LABEL_53;
    }

    v114 = v101;
    v115 = v102;
    if ([*(v1 + 72) v12[452]])
    {
      v116 = 2;
    }

    else
    {
      v116 = 3;
    }

    v117 = swift_task_alloc();
    *(v1 + 344) = v117;
    *v117 = v1;
    v117[1] = sub_10012AE24;

    return sub_100125008(v114, v115, v116);
  }

  else
  {
    sub_100009278((*(v1 + 80) + 24), *(*(v1 + 80) + 48));
    v94 = [v77 credentialBAACertificate];
    v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v1 + 288) = v98;
    *(v1 + 296) = v99;
    if (v129)
    {
      sub_1000092BC(v95, v97);
LABEL_53:

      v103 = *(v1 + 8);

      return v103();
    }

    v105 = *(v1 + 72);
    v106 = v98;
    v107 = v95;
    v108 = v99;
    sub_1000092BC(v107, v97);
    v109 = [v105 credentialPairingID];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    *(v1 + 304) = v112;
    v113 = swift_task_alloc();
    *(v1 + 312) = v113;
    *v113 = v1;
    v113[1] = sub_10012AB24;

    return sub_10013A578(v106, v108, v110, v112);
  }
}

uint64_t sub_10012A3E4()
{
  v59 = v0;

  sub_10001C120(*(v0 + 40), *(v0 + 48));
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    (*(v3 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v6, 0xCu);
    sub_10000A0D4(v7, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  (*(v0 + 208))(*(v0 + 128), *(v0 + 112));
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "establishPrearmTrust - creating new trust and globalAuthACL", v11, 2u);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = *(v0 + 72);

  v12(v13, v14);
  if ([v15 credentialAccessibilityEnabled])
  {
    v16 = *(v0 + 72);
    defaultLogger()();
    v17 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 208);
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    if (v20)
    {
      v57 = *(v0 + 208);
      v24 = *(v0 + 72);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v58 = v26;
      *v25 = 136446210;
      v27 = [v24 credentialAccessibilityEnabled];
      v28 = v27 == 0;
      if (v27)
      {
        v29 = 20047;
      }

      else
      {
        v29 = 4605519;
      }

      if (v28)
      {
        v30 = 0xE300000000000000;
      }

      else
      {
        v30 = 0xE200000000000000;
      }

      v31 = sub_10010150C(v29, v30, &v58);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v25, 0xCu);
      sub_100005090(v26);

      v57(v22, v23);
    }

    else
    {

      v21(v22, v23);
    }

    v39 = *(v0 + 72);
    sub_100009278((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
    [v39 credentialAccessibilityEnabled];
    v40 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v0 + 328) = v40;
    *(v0 + 336) = v41;
    v52 = v40;
    v53 = v41;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    v56 = swift_task_alloc();
    *(v0 + 344) = v56;
    *v56 = v0;
    v56[1] = sub_10012AE24;

    return sub_100125008(v52, v53, v55);
  }

  else
  {
    v32 = *(v0 + 72);
    sub_100009278((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
    v33 = [v32 credentialBAACertificate];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v0 + 288) = v37;
    *(v0 + 296) = v38;
    v42 = *(v0 + 72);
    v43 = v37;
    v44 = v34;
    v45 = v38;
    sub_1000092BC(v44, v36);
    v46 = [v42 credentialPairingID];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *(v0 + 304) = v49;
    v50 = swift_task_alloc();
    *(v0 + 312) = v50;
    *v50 = v0;
    v50[1] = sub_10012AB24;

    return sub_10013A578(v43, v45, v47, v49);
  }
}

uint64_t sub_10012AB24()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10012B940;
  }

  else
  {

    v2 = sub_10012AC40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012AC40()
{
  sub_1000092BC(*(v0 + 288), *(v0 + 296));
  v1 = *(v0 + 320);
  v2 = *(v0 + 72);
  sub_100009278((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
  [v2 credentialAccessibilityEnabled];
  v3 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
  *(v0 + 328) = v3;
  *(v0 + 336) = v4;
  if (v1)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_10012AE24;

    return sub_100125008(v7, v8, v9);
  }
}

uint64_t sub_10012AE24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v5 = sub_10012BA48;
  }

  else
  {
    v5 = sub_10012AF3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012AF3C()
{
  if (v0[45] >> 60 == 15)
  {
    v2 = v0[41];
    v1 = v0[42];
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingProgenitorKeyAttestation(_:), v0[11]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v2, v1);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1000092BC(v0[41], v0[42]);
    v6 = v0[44];
    v7 = v0[45];

    v5 = v0[1];

    return v5(v6, v7);
  }
}

uint64_t sub_10012B210()
{
  v59 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    (*(v3 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "establishPrearmTrust - ignoring error inspecting previous trust and globalAuthACL, %@", v6, 0xCu);
    sub_10000A0D4(v7, &qword_1002003B8, &unk_1001AB850);
  }

  else
  {
  }

  (*(v0 + 208))(*(v0 + 128), *(v0 + 112));
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "establishPrearmTrust - creating new trust and globalAuthACL", v11, 2u);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = *(v0 + 72);

  v12(v13, v14);
  v16 = [v15 credentialAccessibilityEnabled];
  v17 = *(v0 + 72);
  if (v16)
  {
    defaultLogger()();
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 208);
    v23 = *(v0 + 136);
    v24 = *(v0 + 112);
    if (v21)
    {
      v57 = *(v0 + 208);
      v25 = *(v0 + 72);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v58 = v27;
      *v26 = 136446210;
      v28 = [v25 credentialAccessibilityEnabled];
      v29 = v28 == 0;
      if (v28)
      {
        v30 = 20047;
      }

      else
      {
        v30 = 4605519;
      }

      if (v29)
      {
        v31 = 0xE300000000000000;
      }

      else
      {
        v31 = 0xE200000000000000;
      }

      v32 = sub_10010150C(v30, v31, &v58);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping establishing prearm trust with watch because phone's accessibility is turned %{public}s", v26, 0xCu);
      sub_100005090(v27);

      v57(v23, v24);
    }

    else
    {

      v22(v23, v24);
    }

    v39 = *(v0 + 72);
    sub_100009278((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
    [v39 credentialAccessibilityEnabled];
    v40 = dispatch thunk of AppleIDVManaging.prepareUnboundACLForWatch(withAccessibilityEnabled:)();
    *(v0 + 328) = v40;
    *(v0 + 336) = v41;
    v52 = v40;
    v53 = v41;
    if ([*(v0 + 72) credentialAccessibilityEnabled])
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    v56 = swift_task_alloc();
    *(v0 + 344) = v56;
    *v56 = v0;
    v56[1] = sub_10012AE24;

    return sub_100125008(v52, v53, v55);
  }

  else
  {
    sub_100009278((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
    v33 = [v17 credentialBAACertificate];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = dispatch thunk of AppleIDVManaging.establishPrearmTrust(baaCertificate:)();
    *(v0 + 288) = v37;
    *(v0 + 296) = v38;
    v42 = *(v0 + 72);
    v43 = v37;
    v44 = v34;
    v45 = v38;
    sub_1000092BC(v44, v36);
    v46 = [v42 credentialPairingID];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *(v0 + 304) = v49;
    v50 = swift_task_alloc();
    *(v0 + 312) = v50;
    *v50 = v0;
    v50[1] = sub_10012AB24;

    return sub_10013A578(v43, v45, v47, v49);
  }
}

uint64_t sub_10012B940()
{
  v1 = v0[37];
  v2 = v0[36];

  sub_1000092BC(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012BA48()
{
  sub_1000092BC(v0[41], v0[42]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012BB40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10012BC5C, 0, 0);
}

uint64_t sub_10012BC5C()
{
  v1 = [*(v0 + 16) credentialPairingID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10012BD2C;

  return sub_10013AF38(v2, v4);
}

uint64_t sub_10012BD2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = sub_10012C378;
  }

  else
  {

    v5 = sub_10012BE4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012BE4C()
{
  v33 = v0;
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.missingWatchPrearmTrustWhenWatchPrearming(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v29 = v0[1];
    goto LABEL_8;
  }

  v2 = v0[12];
  v3 = v0[2];
  sub_100009708(v2, v0[13]);
  defaultLogger()();
  sub_100032EBC(v2, v1);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  sub_10001C120(v2, v1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v31 = v0[9];
    v8 = v0[7];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = Data.base64EncodedString(options:)(0);
    v12 = sub_10010150C(v11._countAndFlagsBits, v11._object, v32);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = [v9 credentialPairingID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10010150C(v14, v16, v32);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully retrieved persisted protected public key: %s for pairingID: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v31, v8);
  }

  else
  {
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  v24 = v0[2];
  sub_100009278((v0[3] + 24), *(v0[3] + 48));
  v25 = [v24 credentialAuthorizationToken];
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  dispatch thunk of AppleIDVManaging.prearmCredential(withAuthorizationToken:protectedPublicKey:)();
  sub_1000092BC(v26, v28);
  sub_10001C120(v23, v22);
  sub_10001C120(v23, v22);
  if (v21)
  {
    goto LABEL_7;
  }

  v29 = v0[1];
LABEL_8:

  return v29();
}

uint64_t sub_10012C378()
{

  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012C50C()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  sub_100009278((v0 + 24), *(v0 + 48));
  dispatch thunk of AppleIDVManaging.credentialAuthenticationTokenStatus()();
  return 2;
}

uint64_t sub_10012C720()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of SESKeystore.getCASDCertificate()();
  if (v0)
  {
    v6 = result;
    (*(v2 + 104))(v4, enum case for DIPError.Code.internalError(_:), v1);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v6;
  }

  return result;
}

uint64_t sub_10012C910()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_10012CA00;

  return sub_10012ED08(0);
}

uint64_t sub_10012CA00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_10012CD24;
  }

  else
  {
    v4 = sub_10012CB14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012CB14()
{
  if (v0[7])
  {
    v1 = v0[8];
    v2 = sub_10002E3C4(v0[7]);
    v4 = v3;

    if (v1)
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v5 = v0[1];

      return v5();
    }
  }

  else
  {
    v2 = 0;
    v4 = 0xF000000000000000;
  }

  v7 = v0[1];

  return v7(v2, v4);
}

uint64_t sub_10012CD24()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012CEAC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_10012CF98;

  return sub_10013B9D8();
}

uint64_t sub_10012CF98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_10012D2C4;
  }

  else
  {
    v4 = sub_10012D0AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012D0AC()
{
  if (v0[7])
  {
    v1 = v0[8];

    v3 = sub_10002E3C4(v2);
    v5 = v4;

    if (v1)
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v6 = v0[1];

      return v6();
    }
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_10012D2C4()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012D44C()
{
  v1[10] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10012D50C, 0, 0);
}

uint64_t sub_10012D50C()
{
  v1 = v0[10];
  type metadata accessor for ACLFetcher();
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = v1;
  type metadata accessor for AppleIDVManager();

  sub_1000215BC((inited + 24));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10012D5E8;

  return sub_10012ED08(0);
}

uint64_t sub_10012D5E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_10012DFF0;
  }

  else
  {
    v4 = sub_10012D6FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012D6FC()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey;
    v3 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v0[18] = v3;
    v4 = *(v2 + 8);
    v0[19] = v4;
    sub_100009708(v3, v4);

    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_10012D9DC;

    return sub_10013B9D8();
  }

  else
  {
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[11]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10012D9DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_10012E178;
  }

  else
  {
    v4 = sub_10012DAF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012DAF0()
{
  v1 = v0[21];
  if (!v1)
  {
    v11 = v0[18];
    v10 = v0[19];
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsMissingGlobalThirdPartyAuthACL(_:), v0[11]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v11, v10);
LABEL_7:

    goto LABEL_8;
  }

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
  v5 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
  sub_100009708(v6, v5);

  v7 = sub_10000975C(v4, v3, v6, v5);
  if (v2)
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_1000092BC(v6, v5);
    sub_1000092BC(v9, v8);

LABEL_8:
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  v12 = v7;
  v13 = SecAccessControlRef.constraintsData.getter();
  v15 = v0[19];
  v22 = v0[18];
  v16 = v0[14];
  if (v14 >> 60 == 15)
  {
    (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.idcsInvalidACL(_:), v0[11]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v6, v5);
    sub_1000092BC(v22, v15);
    goto LABEL_7;
  }

  v19 = v13;
  v20 = v14;

  sub_1000092BC(v6, v5);
  sub_1000092BC(v22, v15);

  swift_setDeallocating();
  sub_100005090((v16 + 24));

  v21 = v0[1];

  return v21(v19, v20);
}

uint64_t sub_10012DFF0()
{

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012E178()
{
  sub_1000092BC(v0[18], v0[19]);

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012E30C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10012E3D4, 0, 0);
}

uint64_t sub_10012E3D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);
  v4 = *(*(*(v0 + 32) + 64) + 16);
  *(v0 + 64) = v4;
  v5 = swift_allocObject();
  *(v0 + 72) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  swift_retain_n();
  sub_100032EBC(v3, v1);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = &unk_1001AE4B8;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10012E534;

  return AsyncCoreDataContainer.write<A>(_:)(v7, &unk_1001AB060, v6, &type metadata for () + 8);
}

uint64_t sub_10012E534()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10012E658;
  }

  else
  {

    v2 = sub_100141874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012E658()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012E804()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10012E8C4, 0, 0);
}

uint64_t sub_10012E8C4()
{
  v1 = *(*(v0[2] + 64) + 16);
  v0[6] = v1;
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = &unk_1001AE4E0;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10012E9D8;

  return AsyncCoreDataContainer.write<A>(_:)(v3, &unk_1001AE4E8, v2, &type metadata for () + 8);
}

uint64_t sub_10012E9D8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10012EB68;
  }

  else
  {

    v2 = sub_10012EAFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012EAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012EB68()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012ED08(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 88) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10012EDCC, 0, 0);
}

uint64_t sub_10012EDCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 88);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = &unk_1001AE408;
  *(v4 + 24) = v3;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_100004E70(&qword_100203AC8, &qword_1001AE420);
  *v5 = v0;
  v5[1] = sub_10012EF1C;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 16, &unk_1001AE418, v4, v6);
}

uint64_t sub_10012EF1C()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012F084, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10012F084()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_10012F2EC;

  return sub_10012F470(a4, a5, a6, a2, 0);
}

uint64_t sub_10012F2EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_10012F448, 0, 0);
  }
}

uint64_t sub_10012F470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 152) = a4;
  *(v6 + 160) = v5;
  *(v6 + 492) = a5;
  *(v6 + 144) = a3;
  v10 = type metadata accessor for DIPError.Code();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v6 + 192) = v11;
  *(v6 + 200) = *(v11 - 8);
  *(v6 + 208) = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 216) = v12;
  *(v6 + 224) = *(v12 - 8);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v6 + 248) = v13;
  *v13 = v6;
  v13[1] = sub_10012F658;

  return sub_1001318E8(v6 + 16, a1, a2, a3);
}

uint64_t sub_10012F658()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100130FD0;
  }

  else
  {
    v2 = sub_10012F76C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012F76C()
{
  v1 = *(v0[20] + 64);
  v0[33] = v1;
  v2 = *(v1 + 16);
  v0[34] = v2;

  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10012F824;
  v4 = v0[19];

  return sub_10019F998(v4, v2);
}

uint64_t sub_10012F824()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10013118C;
  }

  else
  {
    v2 = sub_10012F938;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012F938()
{
  v12 = *(v0 + 240);
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = swift_allocObject();
  *(v0 + 296) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v0 + 304) = *(v4 + 16);
  v6 = swift_allocObject();
  *(v0 + 312) = v6;
  *(v6 + 16) = sub_10013EE78;
  *(v6 + 24) = v5;
  v7 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 488) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = *(v2 + 104);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v8(v12, v7, v1);

  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_10012FACC;
  v10 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_100026510, v6, &type metadata for () + 8);
}

uint64_t sub_10012FACC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    (*(v2[28] + 8))(v2[30], v2[27]);

    v3 = sub_10012FE10;
  }

  else
  {
    v4 = v2[30];
    v5 = v2[27];
    v6 = v2[28];

    v7 = *(v6 + 8);
    v2[44] = v7;
    v2[45] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_10012FC64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012FC64()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_10012FCFC;

  return sub_10002CF1C(v1);
}

uint64_t sub_10012FCFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_100131358;
  }

  else
  {
    v4 = sub_10012FFE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012FE10()
{

  sub_10013EE48((v0 + 2));
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012FFE8()
{
  sub_100009278((*(v0 + 160) + 80), *(*(v0 + 160) + 104));
  if (dispatch thunk of DeviceInformationProviding.isPhone.getter())
  {
    v1 = *(v0 + 40);
    v2 = swift_task_alloc();
    *(v0 + 392) = v2;
    *v2 = v0;
    v2[1] = sub_100130498;

    return sub_10002CF1C(v1);
  }

  else
  {
    v4 = *(v0 + 384);
    *(v0 + 416) = 0;
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "created a new progenitor key", v7, 2u);
    }

    v8 = *(v0 + 376);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);

    (*(v10 + 8))(v9, v11);
    *(v0 + 424) = sub_10002E3C4(v8);
    *(v0 + 432) = v12;
    if (v4)
    {

      sub_10013EE48(v0 + 16);
      (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.internalError(_:), *(v0 + 168));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10001C120(0, 0xF000000000000000);

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      v14 = *(v0 + 376);
      v28 = *(v0 + 320);
      v15 = *(v0 + 488);
      v16 = *(v0 + 232);
      v17 = *(v0 + 216);
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = *(v0 + 492);
      v21 = *(v0 + 144);
      v22 = swift_allocObject();
      *(v0 + 440) = v22;
      *(v22 + 16) = v20;
      *(v22 + 24) = v18;
      v23 = *(v0 + 32);
      *(v22 + 32) = *(v0 + 16);
      *(v22 + 48) = v23;
      v24 = *(v0 + 64);
      *(v22 + 64) = *(v0 + 48);
      *(v22 + 80) = v24;
      *(v22 + 96) = v19;
      *(v22 + 104) = v14;
      *(v22 + 112) = v21;
      *(v22 + 120) = 0;

      sub_10013EF38(v0 + 16, v0 + 80);
      v25 = swift_allocObject();
      *(v0 + 448) = v25;
      *(v25 + 16) = sub_10013EF0C;
      *(v25 + 24) = v22;

      v28(v16, v15, v17);

      v26 = swift_task_alloc();
      *(v0 + 456) = v26;
      *v26 = v0;
      v26[1] = sub_1001309E0;
      v27 = *(v0 + 232);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v26, v27, sub_100027120, v25, &type metadata for () + 8);
    }
  }
}

uint64_t sub_100130498(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_100131524;
  }

  else
  {
    *(v4 + 408) = a1;
    v5 = sub_1001305C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001305C0(uint64_t a1)
{
  v3 = *(v1 + 400);
  v2 = *(v1 + 408);
  *(v1 + 416) = v2;
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "created a new progenitor key", v6, 2u);
  }

  v7 = *(v1 + 376);
  v9 = *(v1 + 200);
  v8 = *(v1 + 208);
  v10 = *(v1 + 192);

  (*(v9 + 8))(v8, v10);
  *(v1 + 424) = sub_10002E3C4(v7);
  *(v1 + 432) = v11;
  if (v3)
  {

    sub_10013EE48(v1 + 16);
    (*(*(v1 + 176) + 104))(*(v1 + 184), enum case for DIPError.Code.internalError(_:), *(v1 + 168));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(0, 0xF000000000000000);

    v12 = *(v1 + 8);

    return v12();
  }

  else
  {
    v14 = *(v1 + 376);
    v28 = *(v1 + 320);
    v27 = *(v1 + 488);
    v15 = *(v1 + 232);
    v16 = *(v1 + 216);
    v18 = *(v1 + 152);
    v17 = *(v1 + 160);
    v19 = *(v1 + 492);
    v20 = *(v1 + 144);
    v21 = swift_allocObject();
    *(v1 + 440) = v21;
    *(v21 + 16) = v19;
    *(v21 + 24) = v17;
    v22 = *(v1 + 32);
    *(v21 + 32) = *(v1 + 16);
    *(v21 + 48) = v22;
    v23 = *(v1 + 64);
    *(v21 + 64) = *(v1 + 48);
    *(v21 + 80) = v23;
    *(v21 + 96) = v18;
    *(v21 + 104) = v14;
    *(v21 + 112) = v20;
    *(v21 + 120) = v2;

    sub_10013EF38(v1 + 16, v1 + 80);
    v24 = swift_allocObject();
    *(v1 + 448) = v24;
    *(v24 + 16) = sub_10013EF0C;
    *(v24 + 24) = v21;

    v28(v15, v27, v16);

    v25 = swift_task_alloc();
    *(v1 + 456) = v25;
    *v25 = v1;
    v25[1] = sub_1001309E0;
    v26 = *(v1 + 232);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v25, v26, sub_100027120, v24, &type metadata for () + 8);
  }
}

uint64_t sub_1001309E0()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    (*(v2 + 352))(*(v2 + 232), *(v2 + 216));

    v3 = sub_100130D14;
  }

  else
  {
    v4 = *(v2 + 352);
    v5 = *(v2 + 232);
    v6 = *(v2 + 216);

    v4(v5, v6);
    v3 = sub_100130B5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100130B5C()
{
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_100130C00;
  v2 = v0[34];
  v3 = v0[19];

  return sub_1001A02E0(v3, 0, 0xF000000000000000, 0, v2);
}

uint64_t sub_100130C00()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1001316FC;
  }

  else
  {
    v2 = sub_100130F0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100130D14()
{

  sub_10013EE48((v0 + 2));
  v2 = v0[53];
  v1 = v0[54];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100130F0C()
{

  sub_10013EE48((v0 + 2));

  v1 = v0[1];
  v2 = v0[53];
  v3 = v0[54];

  return v1(v2, v3);
}

uint64_t sub_100130FD0()
{
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10013118C()
{

  sub_10013EE48((v0 + 2));
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100131358()
{

  sub_10013EE48((v0 + 2));
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100131524()
{

  sub_10013EE48((v0 + 2));
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(0, 0xF000000000000000);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001316FC()
{

  sub_10013EE48((v0 + 2));
  v2 = v0[53];
  v1 = v0[54];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001318E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100131A30, 0, 0);
}

uint64_t sub_100131A30()
{
  v56 = v0;
  v1 = sub_1001326E0(v0[3], v0[4], v0[5]);
  v3 = v2;
  type metadata accessor for SecAccessControl(0);
  v4 = static SecAccessControlRef.fromData(_:)();
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[11];
  v54 = v4;
  defaultLogger()();
  v8 = swift_task_alloc();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v54;
  Logger.cryptoParam(_:)();

  v9 = v6;
  v10 = *(v7 + 8);
  v10(v5, v9);
  v53 = dispatch thunk of BiometricsHelper.requiresDoublePress.getter();
  if (v53 & 1) == 0 || (SecAccessControlRef.hasStockholmPolicy.getter() & 1) != 0 || (SecAccessControlRef.hasIDVPolicy.getter())
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No double press required", v13, 2u);
    }

    v14 = v0[12];
    v15 = v0[10];

    v10(v14, v15);
    sub_100009708(v1, v3);
    v16 = v54;
    v17 = v1;
    v18 = v3;
    goto LABEL_7;
  }

  v52 = v10;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Double press required, updating ACL", v25, 2u);
  }

  v26 = v0[14];
  v27 = v0[10];
  v28 = v0[6];

  v52(v26, v27);
  sub_100009278((v28 + 24), *(v28 + 48));
  v29 = dispatch thunk of AppleIDVManaging.requireDoublePressOnACL(_:)();
  if (v30 >> 60 != 15)
  {
    v31 = v29;
    v32 = v30;
    sub_100009708(v29, v30);
    v33 = v32;
    v34 = static SecAccessControlRef.fromData(_:)();
    sub_10001C120(v31, v33);
    v35 = v34;
    defaultLogger()();
    sub_100032EBC(v31, v33);
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_10001C120(v31, v33);

    v39 = os_log_type_enabled(v37, v38);
    v50 = v0[10];
    v51 = v0[13];
    v18 = v33;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = Data.base16EncodedString()();
      log = v37;
      v49 = v18;
      v42 = sub_10010150C(v41._countAndFlagsBits, v41._object, v55);

      *(v40 + 4) = v42;
      *(v40 + 12) = 2080;
      v43 = SecAccessControlRef.constraintsDescription.getter();
      v45 = v44;
      v47 = v38;
      v16 = v36;

      v46 = sub_10010150C(v43, v45, v55);
      v18 = v49;

      *(v40 + 14) = v46;
      v37 = log;
      _os_log_impl(&_mh_execute_header, log, v47, "setSESBackedGlobalAuthACL ACL with double press: %s = %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v16 = v36;
    }

    v52(v51, v50);
    v17 = v31;
LABEL_7:
    sub_100009278((v0[6] + 24), *(v0[6] + 48));
    v19 = dispatch thunk of AppleIDVManaging.getUUIDsFromACL(_:)();
    v21 = v0[2];
    *v21 = v53 & 1;
    *(v21 + 8) = v1;
    *(v21 + 16) = v3;
    *(v21 + 24) = v54;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    *(v21 + 48) = v16;
    *(v21 + 56) = v19;

    v22 = v0[1];
    goto LABEL_8;
  }

  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.appleIDVErrorRequireDoublePressOnACL(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000092BC(v1, v3);

  v22 = v0[1];
LABEL_8:

  return v22();
}

uint64_t sub_100132138(uint64_t a1, char *a2)
{
  v4 = *(a1 + 64);
  result = sub_10013F468(0xD000000000000012, 0x80000001001B18B0, a2, v4);
  if (!v2)
  {
    return sub_10013F468(0xD00000000000001ELL, 0x80000001001B18D0, a2, v4);
  }

  return result;
}

void sub_1001321B4(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v48 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a4;
  if ((a1 & 1) == 0)
  {
    v24 = 0;
    v47 = 0xC000000000000000;
LABEL_7:
    type metadata accessor for StoredCryptoKey();
    v25 = *(a4 + 16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:v25];
    sub_10005FFF0(a5);
    type metadata accessor for StoredAuthACL();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_allocWithZone(v28) initWithContext:v25];
    [v29 setVersion:2];
    if (a6 < 0)
    {
      __break(1u);
    }

    else
    {
      v42 = ObjCClassFromMetadata;
      v30 = v27;
      [v29 setAclType:a6];
      v31 = String._bridgeToObjectiveC()();
      [v29 setIdentifier:v31];

      v43 = v24;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v29 setEncryptedACL:isa];

      if (v48[7])
      {
        v33 = v48[7];
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
      }

      swift_bridgeObjectRetain_n();
      sub_10006055C(v33);
      if (v7)
      {

        sub_1000092BC(v43, v47);
      }

      else
      {
        v45 = a6;

        v34 = v30;
        [v29 setProgenitorKey:v30];
        v35 = v46;
        if (v46)
        {
          v36 = objc_allocWithZone(v42);

          v37 = [v36 initWithContext:v25];
          sub_10005FFF0(v35);
          v38 = [objc_allocWithZone(v28) initWithContext:v25];
          [v38 setVersion:2];
          [v38 setAclType:v45];
          v39 = String._bridgeToObjectiveC()();
          [v38 setIdentifier:v39];

          v40 = Data._bridgeToObjectiveC()().super.isa;
          [v38 setEncryptedACL:v40];

          sub_10006055C(v33);

          [v38 setProgenitorKey:v37];
        }

        else
        {
        }

        sub_100050240();
        sub_1000092BC(v43, v47);
      }
    }

    return;
  }

  v45 = a6;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v43 = a5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10010150C(0xD00000000000003CLL, 0x80000001001BB100, &v49);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s keeping sidv acl", v20, 0xCu);
    sub_100005090(v21);

    a4 = v44;
  }

  (*(v14 + 8))(v16, v13);
  sub_100009278(a2 + 3, a2[6]);
  v22 = dispatch thunk of AppleIDVManaging.persistACLBlob(_:requiresDoublePress:)();
  a6 = v45;
  if (!v7)
  {
    v24 = v22;
    v47 = v23;

    a5 = v43;
    goto LABEL_7;
  }
}

uint64_t sub_1001326E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v65 = a2;
  v64 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnrolledBiometricType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E70(&qword_100203AD8, &qword_1001AE448);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v54 = sub_100004E70(&qword_100203AE0, &qword_1001AE450);
  v15 = __chkstk_darwin(v54);
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v53 = &v51 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - v20;
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  dispatch thunk of BiometricsHelper.biometricType.getter();
  v55 = a3;
  v60 = v23;
  v61 = v8;
  if (a3 != 1)
  {
    v27 = 0;
    goto LABEL_11;
  }

  (*(v10 + 104))(v21, enum case for EnrolledBiometricType.touchID(_:), v9);
  (*(v10 + 56))(v21, 0, 1, v9);
  v24 = *(v12 + 48);
  sub_10013FBD0(v23, v14);
  sub_10013FBD0(v21, &v14[v24]);
  v25 = *(v10 + 48);
  if (v25(v14, 1, v9) != 1)
  {
    v28 = v53;
    sub_10013FBD0(v14, v53);
    if (v25(&v14[v24], 1, v9) != 1)
    {
      v29 = v52;
      (*(v10 + 32))(v52, &v14[v24], v9);
      sub_10013FC40(&qword_100203AE8, &type metadata accessor for EnrolledBiometricType, &protocol conformance descriptor for EnrolledBiometricType);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v10 + 8);
      v31(v29, v9);
      sub_10000A0D4(v21, &qword_100203AE0, &qword_1001AE450);
      v31(v28, v9);
      v32 = v14;
      v27 = v30;
      sub_10000A0D4(v32, &qword_100203AE0, &qword_1001AE450);
      v8 = v61;
      goto LABEL_10;
    }

    sub_10000A0D4(v21, &qword_100203AE0, &qword_1001AE450);
    (*(v10 + 8))(v28, v9);
    v8 = v61;
    goto LABEL_8;
  }

  sub_10000A0D4(v21, &qword_100203AE0, &qword_1001AE450);
  v26 = v25(&v14[v24], 1, v9);
  v8 = v61;
  if (v26 != 1)
  {
LABEL_8:
    sub_10000A0D4(v14, &qword_100203AD8, &qword_1001AE448);
    v27 = 0;
    goto LABEL_10;
  }

  sub_10000A0D4(v14, &qword_100203AE0, &qword_1001AE450);
  v27 = 1;
LABEL_10:
  v23 = v60;
LABEL_11:
  v33 = v59;
  defaultLogger()();
  sub_10013FBD0(v23, v33);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v36 = 67109634;
    *(v36 + 4) = v27 & 1;
    *(v36 + 8) = 2080;
    v37 = DCCredentialAuthACLTypeToString();
    v38 = v27;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10010150C(v39, v41, &v67);

    *(v36 + 10) = v42;
    *(v36 + 18) = 2080;
    v43 = Optional.debugDescription.getter();
    v45 = v44;
    sub_10000A0D4(v33, &qword_100203AE0, &qword_1001AE450);
    v46 = sub_10010150C(v43, v45, &v67);
    v27 = v38;

    *(v36 + 20) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Calling migrateOACLOperation with shouldHaveOACL = %{BOOL}d, acl type = %s, biometric type = %s", v36, 0x1Cu);
    swift_arrayDestroy();
    v23 = v60;

    (*(v62 + 8))(v61, v63);
  }

  else
  {

    sub_10000A0D4(v33, &qword_100203AE0, &qword_1001AE450);
    (*(v62 + 8))(v8, v63);
  }

  v47 = v66;
  sub_10000A6EC(v64, v65, v27 & 1);
  v49 = v48;
  sub_10000A0D4(v23, &qword_100203AE0, &qword_1001AE450);
  if (v47)
  {
    (*(v56 + 104))(v58, enum case for DIPError.Code.internalError(_:), v57);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v49;
}

uint64_t sub_100132F40()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x80000001001BB240;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 2112800;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v3);

  return 0;
}

uint64_t sub_100133008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[27] = v9;
  v7[28] = *(v9 - 8);
  v7[29] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[30] = v10;
  *v10 = v7;
  v10[1] = sub_100133174;

  return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_100133174(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1001332D0, 0, 0);
  }
}

uint64_t sub_1001332D0()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [*(v0 + 248) aclType];

    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_100133500;
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);

    return sub_1001318E8(v0 + 16, v4, v5, v2);
  }

  else
  {
    (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 216));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100133500()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100133658, 0, 0);
  }
}

uint64_t sub_100133658()
{
  v1 = *(*(v0[19] + 64) + 16);
  v0[33] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_10013370C;
  v3 = v0[18];

  return sub_10019F998(v3, v1);
}

uint64_t sub_10013370C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100133E34;
  }

  else
  {
    v2 = sub_100133820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133820()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v16 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v3;
  v10 = *(v0 + 32);
  *(v9 + 64) = *(v0 + 16);
  *(v9 + 80) = v10;
  v11 = *(v0 + 64);
  *(v9 + 96) = *(v0 + 48);
  *(v9 + 112) = v11;

  sub_100009708(v6, v5);
  sub_100009708(v4, v3);
  sub_10013EF38(v0 + 16, v0 + 80);
  v12 = swift_allocObject();
  *(v0 + 296) = v12;
  *(v12 + 16) = sub_100141608;
  *(v12 + 24) = v9;
  (*(v1 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);

  v13 = swift_task_alloc();
  *(v0 + 304) = v13;
  *v13 = v0;
  v13[1] = sub_1001339E0;
  v14 = *(v0 + 208);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v14, sub_100027120, v12, &type metadata for () + 8);
}

uint64_t sub_1001339E0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    (*(v2[25] + 8))(v2[26], v2[24]);

    v3 = sub_100133D24;
  }

  else
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];

    (*(v5 + 8))(v4, v6);
    v3 = sub_100133B6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133B6C()
{
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_100133C10;
  v2 = v0[33];
  v3 = v0[18];

  return sub_1001A02E0(v3, 0, 0xF000000000000000, 0, v2);
}

uint64_t sub_100133C10()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100133EB4;
  }

  else
  {
    v2 = sub_100133DB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133D24()
{

  sub_10013EE48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133DB0()
{

  sub_10013EE48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133E34()
{

  sub_10013EE48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133EB4()
{

  sub_10013EE48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100133F34(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v53 = a7;
  v54 = a5;
  v55 = a6;
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v7)
  {
    v21 = v20;
    v47 = v17;
    v48 = v16;
    v42 = v13;
    v44 = v10;
    v45 = a1;
    v46 = v9;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    v49 = v19;
    if (!v20)
    {
      (*(v47 + 104))(v49, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v48);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v43 = 0;
    v25 = [v20 version];
    if (v25 == 1)
    {
      v32 = v43;
      sub_1001346D0(v21, v50, v51, v45, v23, v24);
      if (!v32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v25 != 2)
      {
        (*(v47 + 104))(v49, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v48);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return;
      }

      v26 = v22;
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Updating global progenitor key", v29, 2u);
        v26 = v22;
      }

      (*(v44 + 8))(v15, v46);
      v30 = v26[6];
      v31 = v43;
      sub_10013FE5C(v21, v30, v26[4], v26[5], v23, v24);
      if (!v31)
      {
        sub_100134E84(v30, v45, v23, v24);
LABEL_11:
        v33 = sub_1000508BC(0xD00000000000001ELL, 0x80000001001B18D0);
        v34 = v46;
        if (v33)
        {
          v51 = v21;
          v35 = v33;
          if ([v33 version] != 2)
          {
            (*(v47 + 104))(v49, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v48);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return;
          }

          v50 = v35;
          v36 = v42;
          defaultLogger()();
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Updating global third party progenitor key", v39, 2u);
            v34 = v46;
          }

          (*(v44 + 8))(v36, v34);
          v40 = v50;
          sub_10013FE5C(v50, v22[3], v22[1], v22[2], v23, v24);

          v21 = v51;
        }

        sub_100050240();
      }
    }
  }
}

uint64_t sub_1001346D0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v64 = a2;
  v65 = a3;
  v67 = type metadata accessor for DIPError.Code();
  v10 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 encryptedACL];
  if (!v16)
  {
    goto LABEL_6;
  }

  v63 = v7;
  v60 = v13;
  v61 = v12;
  v17 = v16;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [a1 identifier];
  if (!v21)
  {
    sub_1000092BC(v18, v20);
LABEL_6:
    v33 = v66;
    v30 = v67;
    (*(v10 + 104))(v66, enum case for DIPError.Code.invalidStoredData(_:), v67);
    sub_10002688C(_swiftEmptyArrayStorage);
    v32 = v10;
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v34 = swift_allocError();
    v31 = v33;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v68 = v34;
    swift_willThrow();
    goto LABEL_7;
  }

  v57 = v15;
  v59 = a4;
  v62 = v10;
  v22 = v21;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = [a1 aclType];
  sub_100009278((v6 + 24), *(v6 + 48));
  v26 = v63;
  v27 = dispatch thunk of AppleIDVManaging.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)();
  v68 = v26;
  if (v26)
  {

    sub_1000092BC(v18, v20);
    v31 = v66;
    v30 = v67;
    v32 = v62;
LABEL_7:
    (*(v32 + 104))(v31, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v54 = v25;
  v55 = v29;
  v36 = v27;
  v64 = v20;
  v65 = v28;
  v56 = v22;
  v63 = v18;
  sub_100051424(v58, v24);
  v68 = 0;

  v37 = v57;
  defaultLogger()();
  v38 = v36;
  v39 = v65;
  sub_100009708(v36, v65);
  v40 = v55;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_1000092BC(v38, v39);

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v69 = v44;
    *v43 = 136315138;
    v45 = Data.base64EncodedString(options:)(0);
    v46 = sub_10010150C(v45._countAndFlagsBits, v45._object, &v69);

    *(v43 + 4) = v46;
    v39 = v65;
    _os_log_impl(&_mh_execute_header, v41, v42, "Modified ACL: %s", v43, 0xCu);
    sub_100005090(v44);

    (*(v60 + 8))(v57, v61);
  }

  else
  {

    (*(v60 + 8))(v37, v61);
  }

  v47 = v54;
  type metadata accessor for StoredAuthACL();
  v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v59 + 16)];
  sub_100009708(v38, v39);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v38, v39);
  [v48 setEncryptedACL:isa];

  [v48 setAclType:v47];
  v50 = v56;
  [v48 setIdentifier:v56];

  sub_100009708(v38, v39);

  sub_1000092BC(v38, v39);
  if (v40)
  {
    v51 = v40;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  v52 = v68;
  sub_10006055C(v51);
  if (v52)
  {
    sub_1000092BC(v63, v64);
    sub_1000092BC(v38, v39);

    v68 = v52;
    v32 = v62;
    v31 = v66;
    v30 = v67;
    goto LABEL_7;
  }

  sub_1000092BC(v63, v64);
  sub_1000092BC(v38, v39);
}

void sub_100134E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v77 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CredentialKeyType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Logger();
  v11 = *(v82 - 8);
  v12 = __chkstk_darwin(v82);
  v81 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v80 = &v61 - v15;
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  v18 = [objc_opt_self() standardUserDefaults];
  v19._countAndFlagsBits = 0xD000000000000031;
  v19._object = 0x80000001001BB930;
  v20 = NSUserDefaults.internalBool(forKey:)(v19);

  if (v20)
  {
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Skipping ACL update to presentment keys due to internal defaults setting", v23, 2u);
    }

    (*(v11 + 8))(v17, v82);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for CredentialKeyType.ses(_:), v7);
    v24 = sub_100055D40(v10, 2);
    if (v4)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      if (v25 >> 62)
      {
        goto LABEL_31;
      }

      for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v28 = 0;
        v67 = v25 & 0xFFFFFFFFFFFFFF8;
        v68 = v25 & 0xC000000000000001;
        v65 = (v11 + 8);
        *&v26 = 136315138;
        v63 = v26;
        v66 = v25;
        v64 = i;
        while (1)
        {
          if (v68)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *(v67 + 16))
            {
              goto LABEL_30;
            }

            v29 = *(v25 + 8 * v28 + 32);
          }

          v30 = v29;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v31 = [v29 identifier];
          if (!v31)
          {
            v60 = v30;
LABEL_28:

            (*(v70 + 104))(v72, enum case for DIPError.Code.invalidStoredData(_:), v71);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return;
          }

          v32 = v31;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = [v30 keyBlob];
          if (!v35)
          {
            v60 = v30;

            goto LABEL_28;
          }

          v36 = v35;
          v73 = v28 + 1;
          v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v40 = sub_10002BD74(v11, v34, v37, v39, 0, 0xF000000000000000);
          v75 = v37;
          v76 = v39;
          v74 = v40;
          v41 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
          v43 = v42;
          type metadata accessor for SecAccessControl(0);
          v44 = static SecAccessControlRef.fromConstraintsData(_:)();
          sub_1000092BC(v41, v43);
          v69 = v44;
          if (SecAccessControlRef.isOSGNChild.getter())
          {
            v45 = v80;
            defaultLogger()();

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v83 = v49;
              *v48 = v63;
              v11 = sub_10010150C(v11, v34, &v83);

              *(v48 + 4) = v11;
              _os_log_impl(&_mh_execute_header, v46, v47, "Presentment key %s is a child key; skipping ACL change", v48, 0xCu);
              sub_100005090(v49);

              sub_1000092BC(v75, v76);

              (*v65)(v80, v82);
            }

            else
            {

              sub_1000092BC(v75, v76);

              (*v65)(v45, v82);
            }
          }

          else
          {
            v50 = v81;
            defaultLogger()();

            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v62 = v30;
              v55 = v54;
              v83 = v54;
              *v53 = v63;
              v56 = sub_10010150C(v11, v34, &v83);

              *(v53 + 4) = v56;
              _os_log_impl(&_mh_execute_header, v51, v52, "Updating ACL for presentment key %s", v53, 0xCu);
              sub_100005090(v55);
              v30 = v62;

              (*v65)(v81, v82);
            }

            else
            {

              (*v65)(v50, v82);
            }

            v57 = v76;
            v11 = v74;
            v58 = sub_10002C42C(v74, v77, v78, v79);
            v59 = v75;
            sub_10005F7F4(v58);

            sub_1000092BC(v59, v57);
          }

          v25 = v66;
          ++v28;
          if (v73 == v64)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }

LABEL_32:
    }
  }
}

uint64_t sub_100135A60()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100135B20, 0, 0);
}

uint64_t sub_100135B20(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking global auth oacl for migration", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = swift_allocObject();
  v1[6] = v9;
  *(v9 + 16) = sub_100141018;
  *(v9 + 24) = v8;
  swift_retain_n();
  v10 = swift_task_alloc();
  v1[7] = v10;
  *v10 = v1;
  v10[1] = sub_100135CC4;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v10, sub_10001AAC8, v9, &type metadata for () + 8);
}

uint64_t sub_100135CC4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100135DEC;
  }

  else
  {

    v2 = sub_1000145A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100135DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100135E64(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v4 = type metadata accessor for Logger();
  v87 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v76 - v9;
  __chkstk_darwin(v8);
  v12 = &v76 - v11;
  v13 = type metadata accessor for DIPError.Code();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v2)
  {
    return;
  }

  v85 = v13;
  v86 = v14;
  v18 = v88;
  v82 = a1;
  v83 = v4;
  if (!v17)
  {
    (v86)[13](v16, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v85);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v81 = 0;
  v84 = v17;
  v19 = [v17 version];
  v20 = v86;
  if (v19 == 1)
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Global auth acl is v1, no migration necessary", v39, 2u);
    }

    (*(v87 + 8))(v12, v83);
    goto LABEL_14;
  }

  if (v19 != 2)
  {
    (v86)[13](v16, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v85);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_19:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v40 = v84;
LABEL_20:

    return;
  }

  v21 = [v84 progenitorKey];
  v22 = v85;
  if (!v21)
  {
LABEL_18:
    (v20)[13](v16, enum case for DIPError.Code.idcsMissingProgenitorKeyFromACL(_:), v22);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v23 = v21;
  v24 = [v21 identifier];
  if (!v24)
  {

    goto LABEL_18;
  }

  v25 = v24;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [v23 keyBlob];
  if (!v28)
  {

    v20 = v86;
    goto LABEL_18;
  }

  v29 = v28;
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v31;
  v78 = v30;

  v32 = *(v18 + 64);
  v76 = v23;
  v33 = [v23 publicKeyIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v36;
  }

  else
  {
    v35 = 0;
    v80 = 0xF000000000000000;
  }

  v41 = v78;
  v42 = v77;
  v43 = v35;
  v44 = v81;
  v45 = sub_10002DA84(v79, v27, v78, v77, v35, v80);
  v81 = v44;
  if (v44)
  {
    sub_10001C120(v35, v80);
    sub_1000092BC(v41, v42);

    return;
  }

  v46 = v45;
  sub_10001C120(v43, v80);
  v47 = v81;
  v48 = sub_10002B1A4(*(v46 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob), *(v46 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8));
  if (v47)
  {

    (v86)[13](v16, enum case for DIPError.Code.internalError(_:), v85);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v78, v77);

    v40 = v76;
    goto LABEL_20;
  }

  v85 = v32;
  v86 = v48;
  v49 = SecAccessControlRef.data.getter();
  v51 = v50;
  v52 = [v84 aclType];
  if (v52 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v88 = sub_1001326E0(v49, v51, v52);
  v54 = v53;
  if (!sub_1000EBB34(v88, v53, v49, v51))
  {
    v80 = v51;
    v60 = v7;
    defaultLogger()();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Global auth acl requires migration", v63, 2u);
    }

    (*(v87 + 8))(v60, v83);
    v64 = [objc_allocWithZone(LAContext) init];
    sub_10000BD0C(v64);
    type metadata accessor for SecAccessControl(0);
    v66 = static SecAccessControlRef.fromData(_:)();
    v87 = v54;
    v67 = v46;
    v68 = [v64 externalizedContext];
    if (v68)
    {
      v69 = v68;

      v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = sub_10002EA64(v67, v66, v70, v72);
      v81 = 0;
      v74 = v73;
      sub_1000092BC(v70, v72);
      v75 = v76;
      sub_10005FFF0(v74);

      sub_1000092BC(v88, v87);
      sub_1000092BC(v49, v80);

      sub_1000092BC(v78, v77);
LABEL_14:
      sub_100050240();

      return;
    }

LABEL_39:
    __break(1u);
    return;
  }

  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Global auth acl already migrated, nothing to do", v57, 2u);
    v58 = v86;

    sub_1000092BC(v78, v77);
    sub_1000092BC(v88, v54);
    sub_1000092BC(v49, v51);
  }

  else
  {

    sub_1000092BC(v78, v77);
    sub_1000092BC(v88, v54);
    sub_1000092BC(v49, v51);
    v58 = v86;
  }

  v59 = v87;
  v65 = v83;

  (*(v59 + 8))(v10, v65);
}

uint64_t sub_100136AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100136BB0, 0, 0);
}

uint64_t sub_100136BB0()
{
  v1 = *(*(v0[4] + 64) + 16);
  v0[8] = v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100136C64;
  v3 = v0[3];

  return sub_10019F998(v3, v1);
}

uint64_t sub_100136C64()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100137168;
  }

  else
  {
    v2 = sub_100136D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100136D78()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = sub_100141410;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v2 + 104);

  v9(v1, v8, v3);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_100136F00;
  v11 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 15, v11, sub_10014142C, v7, &type metadata for Bool);
}

uint64_t sub_100136F00()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    (*(*(v2 + 48) + 8))(*(v2 + 56), *(v2 + 40));

    v3 = sub_1001370F0;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    (*(v5 + 8))(v4, v6);
    *v7 = *(v2 + 120);
    v3 = sub_100137084;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100137084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001370F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137168()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001371D4@<X0>(char *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = sub_1001373BC();
  v6 = sub_10013F468(0xD000000000000012, 0x80000001001B18B0, a1, v5);

  if (!v2)
  {
    v8 = sub_1001373BC();
    sub_10013F468(0xD00000000000001ELL, 0x80000001001B18D0, a1, v8);

    result = sub_100051CD4();
    v9 = result;
    v17 = a2;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      do
      {
        if (v10 < 1)
        {
          __break(1u);
          return result;
        }

        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = [v12 options];
          if (!v14)
          {
            goto LABEL_6;
          }

          v15 = v14;
          v16 = [v14 presentmentAuthPolicy];

          if ((v16 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v16 == 2)
          {
            [v13 setState:0];
          }

LABEL_6:
          ++v11;

          if (v10 == v11)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_15:
        result = _CocoaArrayWrapper.endIndex.getter();
        v10 = result;
      }

      while (result);
    }

LABEL_16:

    result = sub_100050240();
    *v17 = v6 & 1;
  }

  return result;
}

void *sub_1001373BC()
{
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v0 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v1 = SEPairingManager.init()();
  v2 = type metadata accessor for GenericPasswordKeychainWrapper();
  v19 = v2;
  v20 = &off_1001F4DE8;
  v18[0] = swift_allocObject();
  v3 = type metadata accessor for SyncableKeyStoreProvider();
  v4 = swift_allocObject();
  v5 = sub_1000129AC(v18, v2);
  __chkstk_darwin(v5);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v2;
  v4[6] = &off_1001F4DE8;
  v4[2] = v9;

  sub_100005090(v18);
  v19 = v3;
  v20 = &off_1001F5068;
  v18[0] = v4;
  type metadata accessor for CredentialKeyManager();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v18, v3);
  __chkstk_darwin(v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000F20BC(v0, v1, *v13, v10);

  sub_100005090(v18);
  return v15;
}