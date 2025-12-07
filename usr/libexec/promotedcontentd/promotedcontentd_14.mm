uint64_t sub_1002786D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100278728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10027877C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

Swift::Int sub_1002787D8()
{
  sub_100399B58();
  sub_100397568();
  return sub_100399B88();
}

Swift::Int sub_10027882C(uint64_t a1)
{
  sub_100399B58();
  sub_100397568();
  return sub_100399B88();
}

void sub_100278874(uint64_t *a3@<X8>)
{
  v4 = sub_100397508();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xF000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;
}

unint64_t sub_1002788F4()
{
  result = qword_1004D8768;
  if (!qword_1004D8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8768);
  }

  return result;
}

unint64_t sub_10027894C()
{
  result = qword_1004D8770;
  if (!qword_1004D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8770);
  }

  return result;
}

uint64_t type metadata accessor for TransmittedAttribution(uint64_t a1)
{
  result = qword_1004D87D0;
  if (!qword_1004D87D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100278A14(uint64_t a1)
{
  type metadata accessor for AttributionCandidate(319);
  if (v1 <= 0x3F)
  {
    sub_10024A0C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_100278AB4(uint64_t a1, uint64_t a2)
{
  sub_100397748();
  sub_100278C34();
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  sub_1001E27A8(&qword_1004D6250, &unk_1003EF180);
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AttributionCandidate(0);
  if ((sub_100237E2C(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5 + 8);
  v7 = *(a2 + v5 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(a1 + v5) == *(a2 + v5) && v6 == v7;
    if (!v8 && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  type metadata accessor for AppSpecifier(0);
  if ((sub_100398188() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for TransmittedAttribution(0);
  if (!sub_100259AD0(*(a1 + v9[5]), *(a1 + v9[5] + 8), *(a2 + v9[5]), *(a2 + v9[5] + 8)) || *(a1 + v9[6]) != *(a2 + v9[6]))
  {
    return 0;
  }

  v11 = v9[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != 2)
  {
    return v13 != 2 && ((v13 ^ v12) & 1) == 0;
  }

  return v13 == 2;
}

unint64_t sub_100278C34()
{
  result = qword_1004D6460;
  if (!qword_1004D6460)
  {
    sub_100397748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6460);
  }

  return result;
}

uint64_t sub_100278C8C(void *a1)
{
  if (!a1)
  {
    v12 = sub_1003993E8();
    sub_100206B54();
    v13 = sub_1003995A8();
    sub_100398B98(v12, &_mh_execute_header, v13, "Upload: Broken payload.", 23, 2, _swiftEmptyArrayStorage);

    v14 = sub_100398F28();
    v15 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(18);
    return 0;
  }

  v1 = a1;
  v2 = [v1 responseStatusCode];
  v3 = [v1 responseError];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1003993E8();
    sub_100206B54();
    v6 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v8 = sub_100399AC8();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100206BA0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v11 = 2;
    sub_100398B98(v5, &_mh_execute_header, v6, "Error received from server %{public}@", 37, 2, v7);

    return v11;
  }

  if (v2 == 204)
  {
    v16 = sub_1003993F8();
    sub_100206B54();
    v17 = sub_1003995A8();
    sub_100398B98(v16, &_mh_execute_header, v17, "Server responded with success.", 30, 2, _swiftEmptyArrayStorage);

    return 1;
  }

  if ((v2 - 400) <= 0x63)
  {
    v19 = sub_1003993E8();
    sub_100206B54();
    v20 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1003C9930;
    v22 = [v1 responseStatusCode];
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v22;
    sub_100398B98(v19, &_mh_execute_header, v20, "Unsupported format server response with status code: %lu", v35);

    return 0;
  }

  if ((v2 - 500) > 0x63)
  {
    v29 = sub_1003993E8();
    sub_100206B54();
    v30 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1003C9930;
    v32 = [v1 responseStatusCode];
    *(v31 + 56) = &type metadata for Int;
    *(v31 + 64) = &protocol witness table for Int;
    *(v31 + 32) = v32;
    v11 = 2;
    sub_100398B98(v29, &_mh_execute_header, v30, "Unexpected server response with status code: %lu", v35);

    v33 = sub_100398F28();
    v34 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(19);
  }

  else
  {
    v23 = sub_100398F28();
    v24 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(20);
    v25 = sub_1003993E8();
    sub_100206B54();
    v26 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1003C9930;
    v28 = [v1 responseStatusCode];
    *(v27 + 56) = &type metadata for Int;
    *(v27 + 64) = &protocol witness table for Int;
    *(v27 + 32) = v28;
    v11 = 2;
    sub_100398B98(v25, &_mh_execute_header, v26, "Unsupported format server response with status code: %lu", v35);
  }

  return v11;
}

uint64_t AttributionSignposts.appInstall()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134349056;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "AppInstall", "id=%{name=id,public}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "AppInstall";
  *(a1 + 8) = 10;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_10027964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionSignposts(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002796B0(uint64_t a1)
{
  v2 = type metadata accessor for AttributionSignposts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall AttributionSignposts.operationCompleted()()
{
  v1 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100398BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v0 + *(v1 + 20), v4);
  sub_10027964C(v0, v3);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v8, v9);
  v10 = sub_100398C08();
  v11 = sub_100399518();
  if (sub_100399598())
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = sub_100398BB8();
    sub_1002796B0(v3);
    v13 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v13, "OperationCompleted", "id=%{name=id,public}llu", v12, 0xCu);
  }

  else
  {

    sub_1002796B0(v3);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t AttributionSignposts.buildPayload()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134349056;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "BuildPayload", "id=%{name=id,public}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "BuildPayload";
  *(a1 + 8) = 12;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t AttributionSignposts.generateToken()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "GenerateToken", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for TokenSignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "GenerateToken";
  *(a1 + 8) = 13;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_100279F1C(int a1, int a2)
{
  v31 = a1;
  v32 = a2;
  v3 = sub_100398C28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TokenSignpostInterval(0);
  v33 = *v2;
  v11 = *(v2 + 16);
  v12 = sub_100398C08();
  sub_100398C48();
  v30 = sub_1003994F8();
  result = sub_100399598();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = v12;
  if ((v11 & 1) == 0)
  {
    if (!v33)
    {
      __break(1u);
LABEL_5:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_10;
  }

  if (v33 >> 32)
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v33 & 0xFFFFF800) == 0xD800)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (v33 >> 16 > 0x10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = &v35;
LABEL_10:

  sub_100398C78();

  v14 = (*(v4 + 88))(v6, v3);
  v27 = v8;
  v28 = v7;
  if (v14 == enum case for OSSignpostError.doubleEnd(_:))
  {
    v15 = 0;
    v26 = "[Error] Interval already ended";
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v26 = "cached=%{name=cached,public}s signerReady=%{name=signerReady,public}s";
    v15 = 2;
  }

  v16 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v16 = v15;
  *(v16 + 1) = v15;
  *(v16 + 2) = 2082;
  if (v31)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v31)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = sub_100005700(v17, v18, &v34);

  *(v16 + 4) = v19;
  *(v16 + 12) = 2082;
  if (v32)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v32)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = sub_100005700(v20, v21, &v34);

  *(v16 + 14) = v22;
  v23 = sub_100398BB8();
  v24 = v29;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v23, v33, v26, v16, 0x16u);
  swift_arrayDestroy();

  return (*(v27 + 8))(v10, v28);
}

uint64_t AttributionSignposts.preMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "PreMatch", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "PreMatch";
  *(a1 + 8) = 8;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t AttributionSignposts.processPreMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "FetchMetrics", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "FetchMetrics";
  *(a1 + 8) = 12;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t AttributionSignposts.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v4 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = v2 + *(v4 + 20);
  v31 = *(v8 + 16);
  v31(&v27 - v12, v14, v7);
  sub_10027964C(v2, v6);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v15, v16);
  sub_1001E3438();
  sub_1002792C0();
  sub_10023998C(v17, v18);
  v32 = v2;
  v19 = sub_100398C08();
  v29 = sub_100399508();
  if (sub_100399598())
  {
    v20 = swift_slowAlloc();
    v28 = v11;
    v21 = v20;
    *v20 = 134218240;
    *(v20 + 4) = sub_100398BB8();
    sub_1002796B0(v6);
    *(v21 + 12) = 2050;
    *(v21 + 14) = v30;
    v22 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v29, v22, "Matching", "id=%{name=id}llu count=%{name=count,public}ld", v21, 0x16u);
    v11 = v28;
  }

  else
  {

    sub_1002796B0(v6);
  }

  v31(v11, v13, v7);
  sub_100398C68();
  swift_allocObject();
  v23 = sub_100398C58();
  (*(v8 + 8))(v13, v7);
  v24 = *(type metadata accessor for SignpostInterval(0) + 24);
  v25 = sub_100398C18();
  result = (*(*(v25 - 8) + 16))(a2 + v24, v32, v25);
  *a2 = "Matching";
  *(a2 + 8) = 8;
  *(a2 + 16) = 2;
  *(a2 + 24) = v23;
  return result;
}

uint64_t AttributionSignposts.processMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "FetchAdInstances", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "FetchAdInstances";
  *(a1 + 8) = 16;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t AttributionSignposts.postMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "PostMatch", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "PostMatch";
  *(a1 + 8) = 9;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

uint64_t AttributionSignposts.processPostMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = v1 + *(v3 + 20);
  v26 = *(v7 + 16);
  v26(&v24 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14, v15);
  v27 = v1;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    *v17 = 134217984;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "ProcessPostMatch", "id=%{name=id}llu", v18, 0xCu);
    v10 = v24;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v26(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v21 = *(type metadata accessor for SignpostInterval(0) + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a1 + v21, v27, v22);
  *a1 = "ProcessPostMatch";
  *(a1 + 8) = 16;
  *(a1 + 16) = 2;
  *(a1 + 24) = v20;
  return result;
}

void sub_10027B4E8()
{
  sub_1003976C8();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v2 = fabs(v1);
    if (v2 < 9.22337204e18)
    {
      v3 = v2;
      v4 = objc_opt_self();
      v5 = sub_100398F28();
      sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = 0x676E696D6974;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v3];
      sub_1002143B8(inited);
      swift_setDeallocating();
      sub_10025A0D0(inited + 32);
      sub_10025A138();
      isa = sub_100398E48().super.isa;

      [v4 sendEvent:v5 customPayload:isa];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10027B66C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionSignposts(0) + 20);
  v4 = sub_100398BD8();
  (*(*(v4 - 8) + 16))(a1 + v3, v1, v4);
  v5 = APPerfLogForCategory();

  return sub_100398BF8();
}

uint64_t sub_10027B740@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a4;
  v33 = a1;
  v6 = type metadata accessor for AttributionSignposts(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_100398BD8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = v4 + *(v6 + 20);
  v34 = *(v13 + 16);
  v34(&v31 - v16, v18, v12);
  sub_10027964C(v4, v11);
  sub_10027964C(v4, v9);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v19, v20);
  v36 = v4;
  v21 = sub_100398C08();
  v32 = sub_100399508();
  if (sub_100399598())
  {
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = v22;
    *v22 = 134218240;
    v24 = sub_100398BB8();
    sub_1002796B0(v11);
    *(v23 + 1) = v24;
    *(v23 + 6) = 2050;
    *(v23 + 14) = sub_100398BB8();
    sub_1002796B0(v9);
    v25 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v32, v25, v33, "task=%llu id=%{name=id,public}llu", v23, 0x16u);
    a3 = v31;
  }

  else
  {
    sub_1002796B0(v11);

    sub_1002796B0(v9);
  }

  v34(v35, v17, v12);
  sub_100398C68();
  swift_allocObject();
  v26 = sub_100398C58();
  (*(v13 + 8))(v17, v12);
  v27 = *(type metadata accessor for SignpostInterval(0) + 24);
  v28 = sub_100398C18();
  v29 = v38;
  result = (*(*(v28 - 8) + 16))(v38 + v27, v36, v28);
  *v29 = v37;
  *(v29 + 8) = a3;
  *(v29 + 16) = 2;
  *(v29 + 24) = v26;
  return result;
}

uint64_t AttributionSignposts.appOpen(_:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v4 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = v2 + *(v4 + 20);
  v28 = *(v8 + 16);
  v28(&v25 - v12, v14, v7);
  sub_10027964C(v2, v6);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v15, v16);
  v29 = v2;
  v17 = sub_100398C08();
  v26 = sub_100399508();
  if (sub_100399598())
  {
    v18 = swift_slowAlloc();
    v25 = v11;
    v19 = v18;
    *v18 = 134349312;
    *(v18 + 4) = sub_100398BB8();
    sub_1002796B0(v6);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v27 & 1;
    v20 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v26, v20, "AppOpen", "id=%{name=id,public}llu prod=%{BOOL}d", v19, 0x12u);
    v11 = v25;
  }

  else
  {

    sub_1002796B0(v6);
  }

  v28(v11, v13, v7);
  sub_100398C68();
  swift_allocObject();
  v21 = sub_100398C58();
  (*(v8 + 8))(v13, v7);
  v22 = *(type metadata accessor for SignpostInterval(0) + 24);
  v23 = sub_100398C18();
  result = (*(*(v23 - 8) + 16))(a2 + v22, v29, v23);
  *a2 = "AppOpen";
  *(a2 + 8) = 7;
  *(a2 + 16) = 2;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_10027BE1C(uint64_t a1)
{
  result = sub_100398C68();
  if (v2 <= 0x3F)
  {
    result = sub_100398C18();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027BEF8(uint64_t a1)
{
  result = sub_100398BD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027BF64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  sub_100397BA8();
  if (!v2)
  {
    v5 = sub_100397508();
    v7 = v6;

    if (v7 >> 60 != 15)
    {
      sub_1000035B8(a1, a1[3]);
      v8 = sub_100397BA8();
      v10 = v9;
      v13 = v8;
      sub_1000035B8(a1, a1[3]);
      result = sub_100397BA8();
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v13;
      a2[3] = v10;
      a2[4] = result;
      a2[5] = v12;
      return result;
    }

    sub_100397B38();
    sub_100251778();
    swift_allocError();
    sub_100397B28();
    swift_willThrow();
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_10027C11C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  result = sub_100397BE8();
  if (v2)
  {

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2 != 0;
  return result;
}

uint64_t sub_10027C1A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10027C200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027C248(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t type metadata accessor for SignpostInterval(uint64_t a1)
{
  result = qword_1004D8AF0;
  if (!qword_1004D8AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027C30C()
{
  v1 = sub_100398C28();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100398BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SignpostInterval(0);
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = sub_100398C08();
  sub_100398C48();
  v17 = sub_1003994F8();
  result = sub_100399598();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v5 + 8))(v7, v4);
  }

  if ((v9 & 1) == 0)
  {
    if (v8)
    {
LABEL_9:

      sub_100398C78();

      v12 = v18;
      if ((*(v18 + 88))(v3, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v12 + 8))(v3, v1);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_100398BB8();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v17, v15, v8, v13, v14, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v8 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    if (v8 >> 16 <= 0x10)
    {
      v8 = &v19;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_10027C5D4(uint64_t a1, uint64_t a2, Class a3, uint64_t a4)
{
  v8 = sub_1003993D8();
  sub_100206B54();
  v9 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003EB210;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_100206BA0();
  *(v10 + 64) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (a3)
  {
    v25 = sub_1001E27A8(&qword_1004D5E00, &qword_1003EAF20);
    v26 = sub_10027C9D4();
    *&v24 = a3;
    sub_100004A68(&v24, v10 + 72);
  }

  else
  {
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v11;
    *(v10 + 72) = 7104878;
    *(v10 + 80) = 0xE300000000000000;
  }

  sub_100398B98(v8, &_mh_execute_header, v9, "Sending OnDevice conversion for impressionId: %{public}@. Properties:\n%{public}@", 80, 2, v10);

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  v12 = sub_100398F28();
  v13 = sub_100398F28();
  if (a3)
  {
    sub_1001E27A8(&unk_1004D5850, &qword_1003EAF30);
    a3 = sub_100398E48().super.isa;
  }

  if (a4)
  {
    sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
    v14.super.isa = sub_100398E48().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurpose:8502 metric:8000 contentIdentifier:0 contextIdentifier:0 handle:v12 secondaryHandle:v13 branch:0 properties:a3 internalProperties:v14.super.isa relayData:0 environment:0 order:0 options:0xFFFFFFFF80000000];

  if (v15)
  {
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_100398F28();
      [v17 updateClientBundleID:v18];

      swift_unknownObjectRelease();
    }

    [objc_msgSend(objc_opt_self() "storage")];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_1003993E8();
    v20 = sub_1003995A8();
    sub_100398B98(v19, &_mh_execute_header, v20, "Couldn't create Conversion metric", 33, 2, _swiftEmptyArrayStorage);

    v21 = sub_100398F28();
    v22 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(100);
  }

  return v15 != 0;
}

unint64_t sub_10027C9D4()
{
  result = qword_1004D8BD0;
  if (!qword_1004D8BD0)
  {
    sub_1001E27F0(&qword_1004D5E00, &qword_1003EAF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8BD0);
  }

  return result;
}

uint64_t sub_10027CA38(uint64_t a1)
{
  if (a1 > 5604)
  {
    if (a1 <= 5607)
    {
      if (a1 == 5605)
      {
        return 0xD00000000000001BLL;
      }

      if (a1 == 5606)
      {
        return 0xD000000000000019;
      }
    }

    else
    {
      if (a1 > 5609)
      {
        if (a1 == 5610)
        {
          return 0xD000000000000023;
        }

        if (a1 == 5611)
        {
          return 0xD000000000000018;
        }

        goto LABEL_30;
      }

      if (a1 != 5608)
      {
        return 0x204449206D616441;
      }
    }

    return 0xD000000000000020;
  }

  if (a1 <= 5600)
  {
    switch(a1)
    {
      case 0:
        return 0x726F727265206F4ELL;
      case 15:
        return 0xD00000000000001ALL;
      case 5600:
        return 0xD000000000000014;
    }

LABEL_30:
    result = sub_100399A68();
    __break(1u);
    return result;
  }

  if (a1 > 5602)
  {
    if (a1 == 5603)
    {
      return 0xD000000000000022;
    }

    return 0xD00000000000001BLL;
  }

  if (a1 == 5601)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

Swift::Int sub_10027CCCC(uint64_t a1, uint64_t a2)
{
  sub_100399B58();
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_10027CD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027D834();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10027CD7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10027D34C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10027CDB0(uint64_t a1)
{
  v2 = sub_10027D834();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10027CDEC(uint64_t a1)
{
  v2 = sub_10027D834();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10027CE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027D834();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_10027CF68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ODAttributionAnalytics();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10027CFC0(uint64_t a1)
{
  if (!a1)
  {
    v1 = objc_opt_self();
    v2 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 32) = 0x646F69726550;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
    *(inited + 56) = 0x737574617453;
    *(inited + 64) = 0xE600000000000000;
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:0];
LABEL_6:
    *(inited + 72) = v6;
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001E27A8(&qword_1004D5A28, &unk_1003EB1B0);
    swift_arrayDestroy();
    sub_10025A138();
    v4.super.isa = sub_100398E48().super.isa;
    goto LABEL_7;
  }

  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  if (!swift_dynamicCast())
  {
    v1 = objc_opt_self();
    v2 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 32) = 0x646F69726550;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
    *(inited + 56) = 0x737574617453;
    *(inited + 64) = 0xE600000000000000;
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:15];
    goto LABEL_6;
  }

  v1 = objc_opt_self();
  v2 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1003EB210;
  *(v3 + 32) = 0x646F69726550;
  *(v3 + 40) = 0xE600000000000000;
  *(v3 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
  *(v3 + 56) = 0x737574617453;
  *(v3 + 64) = 0xE600000000000000;
  *(v3 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v7];
  sub_1002143B8(v3);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28, &unk_1003EB1B0);
  swift_arrayDestroy();
  sub_10025A138();
  v4.super.isa = sub_100398E48().super.isa;
LABEL_7:

  [v1 sendEvent:v2 customPayload:v4.super.isa];
}

uint64_t sub_10027D34C(uint64_t result)
{
  if ((result - 5600) >= 0xC && result != 0 && result != 15)
  {
    return 0;
  }

  return result;
}

void sub_10027D378(uint64_t a1, char a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
  if (a2)
  {
    a1 = 0;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB210;
  *(inited + 32) = 0x646F69726550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a3];
  *(inited + 56) = 0x737574617453;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28, &unk_1003EB1B0);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v6 sendEvent:v7 customPayload:isa];
}

void sub_10027D530(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB210;
  *(inited + 32) = 0x646F69726550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 0x737574617453;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28, &unk_1003EB1B0);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v2 sendEvent:v3 customPayload:isa];
}

unint64_t sub_10027D6D8()
{
  result = qword_1004D8C08;
  if (!qword_1004D8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C08);
  }

  return result;
}

unint64_t sub_10027D730()
{
  result = qword_1004D8C10;
  if (!qword_1004D8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C10);
  }

  return result;
}

unint64_t sub_10027D788()
{
  result = qword_1004D8C18;
  if (!qword_1004D8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C18);
  }

  return result;
}

unint64_t sub_10027D7E0()
{
  result = qword_1004D8C20;
  if (!qword_1004D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C20);
  }

  return result;
}

unint64_t sub_10027D834()
{
  result = qword_1004D8C28;
  if (!qword_1004D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C28);
  }

  return result;
}

void sub_10027D888(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v192 = a2;
  v207 = a1;
  v206 = a3;
  v198 = sub_100398768();
  v197 = *(v198 - 8);
  v4 = __chkstk_darwin(v198);
  v186 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v187 = &v180 - v7;
  v8 = __chkstk_darwin(v6);
  v184 = &v180 - v9;
  v10 = __chkstk_darwin(v8);
  v185 = &v180 - v11;
  v12 = __chkstk_darwin(v10);
  v188 = &v180 - v13;
  __chkstk_darwin(v12);
  v189 = &v180 - v14;
  v193 = type metadata accessor for ProductionAppSpecifier(0);
  v15 = __chkstk_darwin(v193);
  v182 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v181 = &v180 - v18;
  __chkstk_darwin(v17);
  v183 = &v180 - v19;
  v203 = sub_1001E27A8(&unk_1004D70A0, &unk_1003ECDF0);
  v202 = *(v203 - 8);
  v20 = __chkstk_darwin(v203);
  v195 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v194 = &v180 - v22;
  v200 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v200);
  v201 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_100398DA8();
  v205 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_100398DD8();
  v204 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v191);
  v196 = (&v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = sub_1002142A8(_swiftEmptyArrayStorage);
  v226 = v199;
  [*(v3 + 56) lock];
  v217 = v3;
  v27 = *(*(v3 + 16) + 16);
  v212 = *(v3 + 16);

  v211 = v27;
  if (v27)
  {
    v28 = 0;
    v210 = v212 + 32;
    v209 = &v222;
    v208 = (v205 + 8);
    v29 = (v204 + 8);
    v30 = v213;
    v31 = v215;
    while (v28 < *(v212 + 16))
    {
      v32 = v217;
      v33 = *(v217 + 32);
      v34 = swift_allocObject();
      v218 = *(v210 + 16 * v28);
      *(v34 + 16) = v218;
      *(v34 + 32) = v32;
      *(v34 + 40) = v28;
      v224 = sub_10027F8C4;
      v225 = v34;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v222 = sub_1001F77E8;
      v223 = &unk_10047C218;
      v35 = _Block_copy(&aBlock);
      swift_unknownObjectRetain_n();
      v36 = v33;

      sub_100398DC8();
      *&v220 = _swiftEmptyArrayStorage;
      sub_1001F8B1C();
      sub_1001E27A8(&unk_1004DC400, &qword_1003C9AF0);
      sub_1001F8B74();
      v37 = v216;
      sub_100399658();
      sub_100399478();
      _Block_release(v35);
      swift_unknownObjectRelease();

      (*v208)(v31, v37);
      (*v29)(v30, v214);

      if (v211 == ++v28)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_5:

  v38 = v217;
  [*(v217 + 56) unlock];
  v39 = sub_10027F118();
  if (v40)
  {

    *v206 = v39;
LABEL_37:
    sub_1001E27A8(&unk_1004D76E8, &qword_1003ED688);
LABEL_43:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v41 = type metadata accessor for AttributionCandidate(0);
  v42 = v207;
  v43 = v201;
  sub_10027F8D0(&v207[*(v41 + 20)], v201);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v190 = v39;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v202 + 32))(v194, v43, v203);
      v45 = type metadata accessor for TransmittedAttribution(0);
      v46 = v42;

      v47 = sub_100397548(0);
      v223 = &type metadata for String;
      *&aBlock = v47;
      *(&aBlock + 1) = v48;
      sub_10021243C(&aBlock, &v220);
      v49 = v226;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219 = v49;
      sub_10023C638(&v220, 0x7475626972747461, 0xEE0079654B6E6F69, isUniquelyReferenced_nonNull_native);
      v51 = v219;
      v223 = &type metadata for Bool;
      LOBYTE(aBlock) = 1;
      sub_10021243C(&aBlock, &v220);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v51;
      sub_10023C638(&v220, 0x7475626972747461, 0xEB000000006E6F69, v52);
      v53 = v219;
      v54 = (v46 + *(v41 + 24));
      v55 = *(type metadata accessor for AppSpecifier(0) + 20);
      v56 = sub_1003981A8();
      v223 = &type metadata for String;
      *&aBlock = v56;
      *(&aBlock + 1) = v57;
      sub_10021243C(&aBlock, &v220);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v53;
      sub_10023C638(&v220, 0x6449656C646E7562, 0xE800000000000000, v58);
      v226 = v219;
      v59 = *(v54 + 1);
      v212 = v41;
      if (v59)
      {
        v60 = *v54;
        v61 = *(v193 + 20);
        v62 = sub_1003981B8();
        v63 = v183;
        (*(*(v62 - 8) + 16))(&v183[v61], &v54[v55], v62);
        *v63 = v60;
        v63[1] = v59;
        swift_bridgeObjectRetain_n();
        sub_10027F934(v63);
        v223 = &type metadata for String;
        *&aBlock = v60;
        *(&aBlock + 1) = v59;
        sub_10021243C(&aBlock, &v220);
        v64 = v226;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v219 = v64;
        sub_10023C638(&v220, 0x64496D616461, 0xE600000000000000, v65);
        v226 = v219;
      }

      else
      {
        sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
        sub_1001ED244(&aBlock, &qword_1004D5D40, &unk_1003C9610);
      }

      v99 = v45;
      v100 = v207;
      v101 = v197;
      if (v207[*(v45 + 24)])
      {
        v102 = &enum case for AttributionCallType.open(_:);
      }

      else
      {
        v102 = &enum case for AttributionCallType.install(_:);
      }

      v103 = v188;
      v104 = v198;
      (*(v197 + 104))(v188, *v102, v198);
      v105 = v189;
      (*(v101 + 32))(v189, v103, v104);
      v106 = sub_100398758();
      (*(v101 + 8))(v105, v104);
      v223 = &type metadata for Int;
      *&aBlock = v106;
      sub_10021243C(&aBlock, &v220);
      v107 = v226;
      v108 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v107;
      sub_10023C638(&v220, 0x6E6576456C6C6163, 0xED00006570795474, v108);
      v109 = v219;
      v110 = v203;
      v111 = v194;
      sub_100397A18();
      v112 = aBlock;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *&v220 = v109;
      sub_10027F990(v112, sub_10027F718, 0, v113, &v220);

      v114 = v111;
      v115 = v99;
      (*(v202 + 8))(v114, v110);
      v116 = v220;
      v226 = v220;
    }

    else
    {
      v223 = &type metadata for Bool;
      LOBYTE(aBlock) = 0;
      sub_10021243C(&aBlock, &v220);

      v82 = v42;
      v83 = v226;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v83;
      sub_10023C638(&v220, 0x7475626972747461, 0xEB000000006E6F69, v84);
      v85 = v219;
      v86 = (v82 + *(v41 + 24));
      v87 = *(type metadata accessor for AppSpecifier(0) + 20);
      v88 = sub_1003981A8();
      v223 = &type metadata for String;
      *&aBlock = v88;
      *(&aBlock + 1) = v89;
      sub_10021243C(&aBlock, &v220);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v85;
      sub_10023C638(&v220, 0x6449656C646E7562, 0xE800000000000000, v90);
      v226 = v219;
      v91 = *(v86 + 1);
      if (v91)
      {
        v92 = *v86;
        v93 = *(v193 + 20);
        v94 = sub_1003981B8();
        v95 = v182;
        (*(*(v94 - 8) + 16))(&v182[v93], &v86[v87], v94);
        *v95 = v92;
        v95[1] = v91;
        swift_bridgeObjectRetain_n();
        sub_10027F934(v95);
        v223 = &type metadata for String;
        *&aBlock = v92;
        *(&aBlock + 1) = v91;
        v96 = v91;
        sub_10021243C(&aBlock, &v220);
        v97 = v226;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v219 = v97;
        sub_10023C638(&v220, 0x64496D616461, 0xE600000000000000, v98);
        v226 = v219;
      }

      else
      {
        v96 = 0;
        sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
        sub_1001ED244(&aBlock, &qword_1004D5D40, &unk_1003C9610);
      }

      v136 = type metadata accessor for TransmittedAttribution(0);
      v100 = v207;
      v137 = v197;
      if (v207[*(v136 + 24)])
      {
        v138 = &enum case for AttributionCallType.open(_:);
      }

      else
      {
        v138 = &enum case for AttributionCallType.install(_:);
      }

      v139 = v186;
      v140 = v198;
      (*(v197 + 104))(v186, *v138, v198);
      v141 = v187;
      (*(v137 + 32))(v187, v139, v140);
      v142 = sub_100398758();
      (*(v137 + 8))(v141, v140);
      v115 = v136;
      v223 = &type metadata for Int;
      *&aBlock = v142;
      sub_10021243C(&aBlock, &v220);
      v143 = v226;
      v144 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v143;
      sub_10023C638(&v220, 0x6E6576456C6C6163, 0xED00006570795474, v144);
      v145 = v219;
      v146 = sub_100397548(0);
      v223 = &type metadata for String;
      *&aBlock = v146;
      *(&aBlock + 1) = v147;
      sub_10021243C(&aBlock, &v220);
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v145;
      sub_10023C638(&v220, 0x7475626972747461, 0xEE0079654B6E6F69, v148);
      v116 = v219;
      v226 = v219;
      v59 = v96;
    }
  }

  else
  {
    (*(v202 + 32))(v195, v43, v203);
    v223 = &type metadata for Bool;
    LOBYTE(aBlock) = 0;
    sub_10021243C(&aBlock, &v220);

    v66 = v42;
    v67 = v226;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v219 = v67;
    sub_10023C638(&v220, 0x7475626972747461, 0xEB000000006E6F69, v68);
    v69 = v219;
    v70 = (v66 + *(v41 + 24));
    v71 = *(type metadata accessor for AppSpecifier(0) + 20);
    v72 = sub_1003981A8();
    v223 = &type metadata for String;
    *&aBlock = v72;
    *(&aBlock + 1) = v73;
    sub_10021243C(&aBlock, &v220);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v219 = v69;
    sub_10023C638(&v220, 0x6449656C646E7562, 0xE800000000000000, v74);
    v226 = v219;
    v75 = *(v70 + 1);
    *&v218 = v75;
    if (v75)
    {
      v76 = *v70;
      v77 = *(v193 + 20);
      v78 = sub_1003981B8();
      v79 = v181;
      (*(*(v78 - 8) + 16))(&v181[v77], &v70[v71], v78);
      *v79 = v76;
      v79[1] = v75;
      swift_bridgeObjectRetain_n();
      sub_10027F934(v79);
      v223 = &type metadata for String;
      *&aBlock = v76;
      *(&aBlock + 1) = v75;
      sub_10021243C(&aBlock, &v220);
      v80 = v226;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v219 = v80;
      sub_10023C638(&v220, 0x64496D616461, 0xE600000000000000, v81);
      v226 = v219;
    }

    else
    {
      sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
      sub_1001ED244(&aBlock, &qword_1004D5D40, &unk_1003C9610);
    }

    v117 = type metadata accessor for TransmittedAttribution(0);
    v100 = v207;
    v118 = v197;
    if (v207[*(v117 + 24)])
    {
      v119 = &enum case for AttributionCallType.open(_:);
    }

    else
    {
      v119 = &enum case for AttributionCallType.install(_:);
    }

    v120 = v184;
    v121 = v198;
    (*(v197 + 104))(v184, *v119, v198);
    v122 = v185;
    (*(v118 + 32))(v185, v120, v121);
    v123 = sub_100398758();
    (*(v118 + 8))(v122, v121);
    v223 = &type metadata for Int;
    *&aBlock = v123;
    sub_10021243C(&aBlock, &v220);
    v124 = v226;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v219 = v124;
    sub_10023C638(&v220, 0x6E6576456C6C6163, 0xED00006570795474, v125);
    v126 = v219;
    v127 = sub_100397548(0);
    v223 = &type metadata for String;
    *&aBlock = v127;
    *(&aBlock + 1) = v128;
    sub_10021243C(&aBlock, &v220);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v219 = v126;
    sub_10023C638(&v220, 0x7475626972747461, 0xEE0079654B6E6F69, v129);
    v130 = v219;
    v131 = v203;
    v132 = v195;
    sub_100397A18();
    v133 = aBlock;
    v134 = swift_isUniquelyReferenced_nonNull_native();
    *&v220 = v130;
    sub_10027F990(v133, sub_10027F718, 0, v134, &v220);

    v135 = v132;
    v115 = v117;
    (*(v202 + 8))(v135, v131);
    v116 = v220;
    v226 = v220;
    v59 = v218;
  }

  type metadata accessor for TransmittedAttribution(0);
  v149 = *(v100 + *(v115 + 28));
  if (v149 == 2)
  {
    sub_10023C010(0x63696C7075447369, 0xEB00000000657461, &aBlock);
    sub_1001ED244(&aBlock, &qword_1004D5D40, &unk_1003C9610);
    if (v59)
    {
LABEL_32:
      v150 = v226;
      goto LABEL_35;
    }
  }

  else
  {
    v223 = &type metadata for Bool;
    LOBYTE(aBlock) = v149 & 1;
    sub_10021243C(&aBlock, &v220);
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v219 = v116;
    sub_10023C638(&v220, 0x63696C7075447369, 0xEB00000000657461, v151);
    v226 = v219;
    if (v59)
    {
      goto LABEL_32;
    }
  }

  v223 = &type metadata for Bool;
  LOBYTE(aBlock) = 1;
  sub_10021243C(&aBlock, &v220);
  v152 = v226;
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v219 = v152;
  sub_10023C638(&v220, 0x6D706F6C65766564, 0xEE00707041746E65, v153);
  v150 = v219;
  v226 = v219;
LABEL_35:
  v154 = *(v38 + 64);
  v223 = &type metadata for Bool;
  LOBYTE(aBlock) = v154;
  sub_10021243C(&aBlock, &v220);
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v219 = v150;
  sub_10023C638(&v220, 0x796C6E4F64616572, 0xE800000000000000, v155);
  v156 = sub_10027FCA0(v219);
  v158 = v157;
  v160 = v159;

  if (v160)
  {
    v161 = v190;
    sub_10027FF18(v190, 0);
    sub_10027FF18(v161, 0);
    *v206 = v156;
    goto LABEL_37;
  }

  v162 = v191;
  v163 = *(v191 + 24);
  v164 = sub_1003974E8();
  v165 = v196;
  (*(*(v164 - 8) + 16))(v196 + v163, v192, v164);
  type metadata accessor for AppSpecifier(0);
  sub_1001EF9F4(v156, v158);
  v166 = sub_1003981A8();
  *v165 = v190;
  v165[1] = v156;
  v207 = v156;
  v203 = v158;
  v165[2] = v158;
  v167 = (v165 + *(v162 + 28));
  *v167 = v166;
  v167[1] = v168;
  [*(v38 + 56) lock];
  v169 = *(*(v38 + 16) + 16);
  v212 = *(v38 + 16);

  v211 = v169;
  if (!v169)
  {
LABEL_42:

    [*(v217 + 56) unlock];
    sub_10027FF70(v207, v203, 0);
    sub_10027FF18(v190, 0);
    sub_100243088(v196, v206);
    sub_1001E27A8(&unk_1004D76E8, &qword_1003ED688);
    goto LABEL_43;
  }

  v170 = 0;
  v210 = v212 + 32;
  v209 = &v222;
  v208 = (v205 + 8);
  v171 = (v204 + 8);
  v173 = v215;
  v172 = v216;
  while (v170 < *(v212 + 16))
  {
    v174 = v217;
    v175 = *(v217 + 32);
    v176 = swift_allocObject();
    v218 = *(v210 + 16 * v170);
    *(v176 + 16) = v218;
    *(v176 + 32) = v174;
    *(v176 + 40) = v170;
    v224 = sub_10027FF64;
    v225 = v176;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v222 = sub_1001F77E8;
    v223 = &unk_10047C268;
    v177 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v178 = v175;
    v179 = v213;
    sub_100398DC8();
    *&v220 = _swiftEmptyArrayStorage;
    sub_1001F8B1C();
    sub_1001E27A8(&unk_1004DC400, &qword_1003C9AF0);
    sub_1001F8B74();
    sub_100399658();
    sub_100399478();
    _Block_release(v177);
    swift_unknownObjectRelease();

    (*v208)(v173, v172);
    (*v171)(v179, v214);

    if (v211 == ++v170)
    {
      goto LABEL_42;
    }
  }

LABEL_45:
  __break(1u);
}

id sub_10027F118()
{
  sub_1003979B8();
  v1 = sub_100397998();
  v3 = v2;
  v4 = sub_1003979A8();
  v6 = v5;
  v7 = sub_100397988();
  v9 = v8;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = sub_100397978();
  v14 = 0x6E776F6E6B6E55;
  v15 = 0xE700000000000000;
  *&v32 = 0x6E776F6E6B6E55;
  *(&v32 + 1) = 0xE700000000000000;
  if (v13)
  {
    v14 = v12;
  }

  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *&v34 = v1;
  *(&v34 + 1) = v3;
  *&v35 = v4;
  *(&v35 + 1) = v6;
  *&v36 = v7;
  *(&v36 + 1) = v9;
  *&v37 = v11;
  *(&v37 + 1) = v10;
  *&v38 = v14;
  *(&v38 + 1) = v15;
  sub_1003970E8();
  swift_allocObject();
  sub_1003970D8();
  v39[4] = v36;
  v39[5] = v37;
  v39[6] = v38;
  v39[0] = v32;
  v39[1] = v33;
  v39[2] = v34;
  v39[3] = v35;
  sub_10027F6C4();
  v16 = sub_1003970C8();
  v18 = v17;

  sub_10025CD94(&v32);
  v19 = objc_opt_self();
  isa = sub_100397538().super.isa;
  *&v39[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v39];

  if (!v21)
  {
    v24 = *&v39[0];
    v23 = sub_1003973E8();

    swift_willThrow();
LABEL_10:
    sub_1001EFA90(v16, v18);
    return v23;
  }

  v22 = *&v39[0];
  sub_100399648();
  swift_unknownObjectRelease();
  sub_1001E27A8(&qword_1004D7AA8, &qword_1003EF920);
  if (!swift_dynamicCast())
  {
    sub_1001E27A8(&unk_1004D5A30, &qword_1003EB2B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = sub_100398F58();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x8000000100430BA0;
    sub_1002142A8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D5DD0, &qword_1003EB1C0);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_100398F28();
    v29 = sub_100398E48().super.isa;

    v23 = [v27 initWithDomain:v28 code:3210 userInfo:v29];

    goto LABEL_10;
  }

  sub_1001EFA90(v16, v18);
  return v31;
}

uint64_t sub_10027F4A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 24);
  v10[3] = sub_1001E27A8(&qword_1004D5D40, &unk_1003C9610);
  result = swift_allocObject();
  v10[0] = result;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a4)
  {
    sub_10027FF84(v8 + 32 * a4 + 32, result + 16);
    (*(a2 + 8))(v10, ObjectType, a2);
    return sub_100003894(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 24);
  v10[3] = sub_1001E27A8(&qword_1004D5D40, &unk_1003C9610);
  result = swift_allocObject();
  v10[0] = result;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a4)
  {
    sub_10027FF84(v8 + 32 * a4 + 32, result + 16);
    (*(a2 + 16))(v10, ObjectType, a2);
    return sub_100003894(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F648()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10027F6C4()
{
  result = qword_1004D8DA0;
  if (!qword_1004D8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8DA0);
  }

  return result;
}

uint64_t sub_10027F718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000038F4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_10027F764@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000038F4(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_10021243C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1001ED244(v21, &qword_1004D8DA8, &qword_1003EF928);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10027F8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate.Provenance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027F934(uint64_t a1)
{
  v2 = type metadata accessor for ProductionAppSpecifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10027F990(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_10027F764(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_10021243C(v45, v43);
  v14 = *a5;
  v15 = sub_1001EC1DC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10023B29C(v20, a4 & 1);
    v15 = sub_1001EC1DC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_100399A98();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_10023CA2C();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    sub_100003894(v25);
    sub_10021243C(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_10021243C(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_10027F764(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_10021243C(v45, v43);
        v32 = *a5;
        v33 = sub_1001EC1DC(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_10023B29C(v37, 1);
          v33 = sub_1001EC1DC(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          sub_100003894(v31);
          sub_10021243C(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_10021243C(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_10027F764(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_10027FF7C(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

id sub_10027FCA0(uint64_t a1)
{
  v1 = objc_opt_self();
  isa = sub_100398E48().super.isa;
  v3 = [v1 isValidJSONObject:isa];

  if (v3)
  {
    v4 = sub_100398E48().super.isa;
    v15 = 0;
    v5 = [v1 dataWithJSONObject:v4 options:1 error:&v15];

    v6 = v15;
    if (v5)
    {
      v7 = sub_100397558();
    }

    else
    {
      v13 = v6;
      v7 = sub_1003973E8();

      swift_willThrow();
    }
  }

  else
  {
    sub_1001E27A8(&unk_1004D5A30, &qword_1003EB2B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = sub_100398F58();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v9;
    *(inited + 48) = 0xD000000000000045;
    *(inited + 56) = 0x8000000100430BD0;
    sub_1002142A8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D5DD0, &qword_1003EB1C0);
    v10 = objc_allocWithZone(NSError);
    v11 = sub_100398F28();
    v12 = sub_100398E48().super.isa;

    v7 = [v10 initWithDomain:v11 code:3210 userInfo:v12];
  }

  return v7;
}

double sub_10027FF18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_10027FF24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10027FF70(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1001EFA90(a1, a2);
  }
}

uint64_t sub_10027FF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D5D40, &unk_1003C9610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100280000(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s11Attribution0A10TokenGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10);
}

uint64_t AttributionTokenGroup.debugDescription.getter()
{
  sub_1003996F8(42);
  v1._countAndFlagsBits = 0x7267206E656B6F74;
  v1._object = 0xEC0000002870756FLL;
  sub_100399068(v1);
  v2._countAndFlagsBits = sub_100397548(0);
  sub_100399068(v2);

  v3._countAndFlagsBits = 0x61646E617473202CLL;
  v3._object = 0xEC000000203A6472;
  sub_100399068(v3);
  sub_1003997C8();
  v4._countAndFlagsBits = 0x6C6961746564202CLL;
  v4._object = 0xEC000000203A6465;
  sub_100399068(v4);
  sub_1003997C8();
  return 0;
}

BOOL _s11Attribution0A10TokenGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_100259AD0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    if (sub_100259AD0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) && ((v4 ^ v7) & 1) == 0 && (v5 == v8 && v6 == v9 || (sub_1003999B8() & 1) != 0))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v14 = *(a1 + 80);
      v13 = *(a1 + 88);
      v15 = *(a2 + 56);
      v16 = *(a2 + 64);
      v17 = *(a2 + 72);
      v19 = *(a2 + 80);
      v18 = *(a2 + 88);
      if (sub_100259AD0(v10, v11, v15, v16) && ((v12 ^ v17) & 1) == 0 && (v14 == v19 && v13 == v18 || (sub_1003999B8() & 1) != 0))
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 sub_1002802B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1002802CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100280314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10028037C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1002373F4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100003554(v4, v11);
      sub_1001E27A8(&unk_1004D9A30, &qword_1003EBCD0);
      sub_1001E27A8(&qword_1004D64E0, &unk_1003EBCC0);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002373F4((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[5 * v6];
      v8 = v12;
      v9 = v13;
      v7[8] = v14;
      *(v7 + 2) = v8;
      *(v7 + 3) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002804B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100237414(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_100237414((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for Int;
      v12 = &protocol witness table for Int;
      *&v10 = v5;
      v2[2] = v8 + 1;
      sub_100004A68(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100280600(void *a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_100003554(a1, v6);
  sub_1000035B8(a1, a1[3]);
  v4 = sub_100397B48();
  return a2(v6, v4);
}

BOOL sub_100280684(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v32 = a1;
  v6 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v13 = *(v3 + 40);
  v36 = sub_100281694(0x3F, 0xE100000000000000, *(v13 + 16));
  sub_1001E27A8(&unk_1004D9A20, &qword_1003EED70);
  sub_100281730();
  v33 = sub_100398ED8();
  v15 = v14;

  sub_1001E2838(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001ED244(v8, &qword_1004D4CE0, &unk_1003C8E30);
    sub_1001E27A8(&qword_1004D9A80, &qword_1003EFB80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1003EB210;
    v36 = v32;
    v37 = a2;

    v17 = sub_1003990F8();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = &protocol witness table for String;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v20 = *(v34 + 24);
    v19 = *(v34 + 32);
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = &protocol witness table for String;
    *(v16 + 72) = v20;
    *(v16 + 80) = v19;

    v21 = sub_1002804B8(v13);
    v36 = v16;
    sub_10028158C(v21);
    v22 = v36;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1003996F8(248);
    v38._countAndFlagsBits = 0xD0000000000000AELL;
    v38._object = 0x8000000100430C60;
    sub_100399068(v38);
    v35 = 100;
    v39._countAndFlagsBits = sub_100399998();
    sub_100399068(v39);

    v40._object = 0x8000000100430D10;
    v40._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v40);
    v41._countAndFlagsBits = v33;
    v41._object = v15;
    sub_100399068(v41);

    v42._countAndFlagsBits = 0x2054494D494C0A29;
    v42._object = 0xE900000000000031;
    sub_100399068(v42);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1001E27A8(&qword_1004D9A80, &qword_1003EFB80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1003C9260;
    *(v23 + 56) = v9;
    *(v23 + 64) = &protocol witness table for Date;
    v24 = sub_1001E6B7C((v23 + 32));
    (*(v10 + 16))(v24, v12, v9);
    v36 = v32;
    v37 = a2;

    v25 = sub_1003990F8();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = &protocol witness table for String;
    *(v23 + 72) = v25;
    *(v23 + 80) = v26;
    v28 = *(v34 + 24);
    v27 = *(v34 + 32);
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = &protocol witness table for String;
    *(v23 + 112) = v28;
    *(v23 + 120) = v27;

    v29 = sub_1002804B8(v13);
    v36 = v23;
    sub_10028158C(v29);
    v22 = v36;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1003996F8(276);
    v43._countAndFlagsBits = 0xD0000000000000CALL;
    v43._object = 0x8000000100430D80;
    sub_100399068(v43);
    v35 = 100;
    v44._countAndFlagsBits = sub_100399998();
    sub_100399068(v44);

    v45._object = 0x8000000100430D10;
    v45._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v45);
    v46._countAndFlagsBits = v33;
    v46._object = v15;
    sub_100399068(v46);

    v47._countAndFlagsBits = 0x2054494D494C0A29;
    v47._object = 0xE900000000000031;
    sub_100399068(v47);
    (*(v10 + 8))(v12, v9);
  }

  sub_10028037C(v22);

  sub_100397CF8();

  return (v37 & 1) == 0 && v36 > 0;
}

uint64_t sub_100280DD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  result = sub_100397C18();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_100280E38()
{

  return swift_deallocClassInstance();
}

char *sub_100280EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D8E88, &qword_1003EFB98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100280FD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&qword_1004D9A80, &qword_1003EFB80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(&unk_1004D9A30, &qword_1003EBCD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100281120(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D8E98, &unk_1003EFBA8);
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

void *sub_10028122C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&qword_1004D8E80, &qword_1003EFB88);
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
    sub_1001E27A8(&qword_1004D84B8, &qword_1003EFB90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002813B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001E27A8(a5, a6);
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

void sub_10028158C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100280FD8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001E27A8(&unk_1004D9A30, &qword_1003EBCD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100281694(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_1003991D8();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_100281730()
{
  result = qword_1004D8E78;
  if (!qword_1004D8E78)
  {
    sub_1001E27F0(&unk_1004D9A20, &qword_1003EED70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8E78);
  }

  return result;
}

uint64_t sub_1002817A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_1001EC1DC(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v2, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_1001EC1DC(0x73656372756F73, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v4, v12);
  sub_1001E27A8(&qword_1004D8EA8, &qword_1003EFBF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16))
  {
    v6 = sub_1001EC1DC(0x736573616870, 0xE600000000000000);
    if (v7)
    {
      sub_1000038F4(*(a1 + 56) + 32 * v6, v12);
      if (swift_dynamicCast())
      {
        if (!*(a1 + 16) || (v8 = sub_1001EC1DC(0x7365707954707061, 0xE800000000000000), (v9 & 1) == 0))
        {

          goto LABEL_16;
        }

        sub_1000038F4(*(a1 + 56) + 32 * v8, v12);

        if (swift_dynamicCast())
        {
          return v11;
        }
      }
    }
  }

LABEL_16:

  return 0;
}

void sub_1002819A4(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_10025E8D0(v5);
    v7 = sub_1002817A4(v6);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    ++v1;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100280EA4(0, *(v3 + 2) + 1, 1, v3);
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        v3 = sub_100280EA4((v14 > 1), v15 + 1, 1, v3);
      }

      *(v3 + 2) = v15 + 1;
      v16 = &v3[32 * v15];
      *(v16 + 8) = v7;
      *(v16 + 5) = v9;
      *(v16 + 6) = v11;
      *(v16 + 7) = v13;
      v1 = v4;
    }
  }
}

uint64_t sub_100281AF8()
{
  sub_1001E27A8(&qword_1004D8F48, &qword_1003EFD70);
  sub_100397E78();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003EFC40;
  sub_1001E27A8(&unk_1004D7BF0, &unk_1003EE150);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + v3) = sub_10025D724(&off_100479F38);
  v28 = enum case for IntBucketContents.individualValues(_:);
  v5 = *(v1 + 104);
  v5(v4 + v3);
  sub_100397E68();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003C9260;
  v7 = v6 + v3;
  *(v6 + v3) = xmmword_1003EFC50;
  v8 = enum case for IntBucketContents.range(_:);
  v27 = enum case for IntBucketContents.range(_:);
  (v5)(v6 + v3, enum case for IntBucketContents.range(_:), v0);
  *(v7 + v2) = xmmword_1003EFC60;
  (v5)(v7 + v2, v8, v0);
  v26 = 2 * v2;
  *(v7 + v26) = xmmword_1003EFC70;
  (v5)(v7 + 2 * v2, v8, v0);
  sub_100397E68();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003C9930;
  *(v9 + v3) = sub_10025D724(&off_100479F68);
  (v5)(v9 + v3, v28, v0);
  sub_100397E68();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003C9930;
  *(v10 + v3) = sub_10025D724(&off_100479F98);
  (v5)(v10 + v3, v28, v0);
  sub_100397E68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003C9930;
  *(v11 + v3) = sub_10025D724(&off_100479FC0);
  (v5)(v11 + v3, v28, v0);
  sub_100397E68();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003C9930;
  *(v12 + v3) = sub_10025D724(&off_100479FE8);
  (v5)(v12 + v3, v28, v0);
  sub_100397E68();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9930;
  *(v13 + v3) = sub_10025D724(&off_10047A018);
  (v5)(v13 + v3, v28, v0);
  sub_100397E68();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003C9930;
  *(v14 + v3) = sub_10025D724(&off_10047A040);
  (v5)(v14 + v3, v28, v0);
  sub_100397E68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9930;
  *(v15 + v3) = sub_10025D724(&off_10047A080);
  (v5)(v15 + v3, v28, v0);
  sub_100397E68();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1003ECC10;
  v17 = (v16 + v3);
  *v17 = sub_10025D724(&off_10047A0B0);
  (v5)(v17, v28, v0);
  *(v17 + v2) = xmmword_1003EFC80;
  (v5)(v17 + v2, v27, v0);
  *(v17 + v26) = xmmword_1003EFC90;
  (v5)(v17 + 2 * v2, v27, v0);
  *(v17 + 3 * v2) = xmmword_1003EFCA0;
  (v5)(v17 + 3 * v2, v27, v0);
  *(v17 + 4 * v2) = xmmword_1003EFCB0;
  (v5)(v17 + 4 * v2, v27, v0);
  *(v17 + 5 * v2) = xmmword_1003EFCC0;
  (v5)(v17 + 5 * v2, v27, v0);
  *(v17 + 6 * v2) = xmmword_1003EFCD0;
  (v5)();
  sub_100397E68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003EB210;
  v19 = (v18 + v3);
  *v19 = sub_10025D724(&off_10047A0E0);
  (v5)(v19, v28, v0);
  *(v19 + v2) = xmmword_1003EFCE0;
  (v5)(v19 + v2, v27, v0);
  sub_100397E68();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003C9930;
  *(v20 + v3) = xmmword_1003EFCF0;
  (v5)(v20 + v3, v27, v0);
  sub_100397E68();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1003C9930;
  *(v21 + v3) = sub_10025D724(&off_10047A108);
  (v5)(v21 + v3, v28, v0);
  sub_100397E68();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003EB210;
  v23 = (v22 + v3);
  *v23 = sub_10025D724(&off_10047A138);
  (v5)(v23, v28, v0);
  *(v23 + v2) = xmmword_1003EFD00;
  (v5)(v23 + v2, v27, v0);
  sub_100397E68();

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100011, _swiftEmptyArrayStorage, v25);
}

uint64_t sub_1002825B8(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004D92A0, &qword_1003EFF50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000035B8(a1, a1[3]);
  sub_1002867E0();
  sub_100399BF8();
  v14 = 0;
  sub_100399988();
  if (!v1)
  {
    v13 = 1;
    sub_100399958();
    type metadata accessor for AttributionPerfMetrics(0);
    v12 = 2;
    sub_100397748();
    sub_100286798(&qword_1004D6428, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100399978();
    v11 = 3;
    sub_100399978();
    v10 = 4;
    sub_100399978();
    v9 = 5;
    sub_100399978();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100282864(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = sub_100397748();
  v40 = *(v42 - 8);
  v3 = __chkstk_darwin(v42);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v43 = sub_1001E27A8(&qword_1004D9290, &qword_1003EFF48);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = &v35 - v13;
  v15 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v15);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v46 = a1;
  sub_1000035B8(a1, v18);
  sub_1002867E0();
  v44 = v14;
  v19 = v45;
  sub_100399BC8();
  if (v19)
  {
    sub_100003894(v46);
    return;
  }

  v20 = v12;
  v45 = v7;
  v22 = v41;
  v21 = v42;
  v52 = 0;
  *v17 = sub_1003998E8();
  v51 = 1;
  v23 = v22;
  v17[1] = sub_1003998B8();
  v17[2] = v24;
  v50 = 2;
  v25 = v21;
  sub_100286798(&qword_1004D6400, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1003998D8();
  v26 = v17 + v15[6];
  v35 = *(v40 + 32);
  v35(v26, v20, v21);
  v49 = 3;
  v36 = 0;
  sub_1003998D8();
  v37 = 0;
  v27 = v35;
  v35(v17 + v15[7], v10, v25);
  v48 = 4;
  v28 = v45;
  v29 = v37;
  sub_1003998D8();
  v37 = v29;
  if (v29)
  {
    (*(v23 + 8))(v44, v43);
    v30 = v40;
    v31 = v36;
    sub_100003894(v46);

    if (v31)
    {
      (*(v30 + 8))(v17 + v15[7], v25);
      return;
    }
  }

  else
  {
    v27(v17 + v15[8], v28, v25);
    v47 = 5;
    v32 = v39;
    v33 = v37;
    sub_1003998D8();
    v37 = v33;
    if (!v33)
    {
      (*(v23 + 8))(v44, v43);
      v27(v17 + v15[9], v32, v25);
      sub_100286834(v17, v38, type metadata accessor for AttributionPerfMetrics);
      sub_100003894(v46);
      sub_10028689C(v17, type metadata accessor for AttributionPerfMetrics);
      return;
    }

    (*(v23 + 8))(v44, v43);
    sub_100003894(v46);

    LOBYTE(v31) = 1;
    v30 = v40;
  }

  v34 = *(v30 + 8);
  v34(v17 + v15[6], v25);
  v34(v17 + v15[7], v25);
  if (v31)
  {
    v34(v17 + v15[8], v25);
  }
}

uint64_t sub_100282E50()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x74536E6F6D656164;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100282F2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028575C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100282F54(uint64_t a1)
{
  v2 = sub_1002867E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282F90(uint64_t a1)
{
  v2 = sub_1002867E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282FFC(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D9278, &qword_1003EFF40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_100286744();
  sub_100399BF8();
  v13 = *v3;
  v15 = 0;
  sub_1001E27A8(&qword_1004D7AA8, &qword_1003EF920);
  sub_10025B9C4(&qword_1004D7AD0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_100399948();
  if (!v2)
  {
    v9 = v3[2];
    v13 = v3[1];
    v14 = v9;
    v15 = 1;
    sub_100245FB4(v13, v9);
    sub_1001F9BE4();
    sub_100399948();
    sub_1001DDE50(v13, v14);
    v10 = type metadata accessor for AttributionNetworkRequestData(0);
    LOBYTE(v13) = 2;
    sub_1003974E8();
    sub_100286798(&qword_1004D7AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100399978();
    LOBYTE(v13) = 3;
    sub_100399958();
    v13 = *(v3 + *(v10 + 32));
    v15 = 4;
    type metadata accessor for APHTTPMethod(0);
    sub_100286798(&qword_1004D9280, type metadata accessor for APHTTPMethod, &protocol conformance descriptor for APHTTPMethod);
    sub_100399978();
    LOBYTE(v13) = 5;
    type metadata accessor for AttributionPerfMetrics(0);
    sub_100286798(&qword_1004D9288, type metadata accessor for AttributionPerfMetrics, ")8\a");
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100283380(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1003974E8();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1001E27A8(&qword_1004D9258, &qword_1003EFF38);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v23 - v8;
  v10 = type metadata accessor for AttributionNetworkRequestData(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  sub_1000035B8(a1, v13);
  sub_100286744();
  v29 = v9;
  v14 = v31;
  sub_100399BC8();
  if (v14)
  {
    sub_100003894(v32);
  }

  else
  {
    v31 = v7;
    v15 = v27;
    v16 = v28;
    v24 = v4;
    v17 = v12;
    sub_1001E27A8(&qword_1004D7AA8, &qword_1003EF920);
    v34 = 0;
    sub_10025B9C4(&qword_1004D7AB0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1003998A8();
    *v12 = v33;
    v34 = 1;
    sub_10025B970();
    sub_1003998A8();
    *(v12 + 8) = v33;
    LOBYTE(v33) = 2;
    sub_100286798(&qword_1004D7AC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = v31;
    sub_1003998D8();
    (*(v16 + 32))(v17 + v10[6], v18, v5);
    LOBYTE(v33) = 3;
    v19 = sub_1003998B8();
    v20 = (v17 + v10[7]);
    *v20 = v19;
    v20[1] = v21;
    type metadata accessor for APHTTPMethod(0);
    v34 = 4;
    sub_100286798(&qword_1004D9268, type metadata accessor for APHTTPMethod, &protocol conformance descriptor for APHTTPMethod);
    sub_1003998D8();
    *(v17 + v10[8]) = v33;
    LOBYTE(v33) = 5;
    sub_100286798(&qword_1004D9270, type metadata accessor for AttributionPerfMetrics, &unk_1003EFE90);
    v22 = v24;
    sub_1003998D8();
    (*(v15 + 8))(v29, v30);
    sub_1002868FC(v22, v17 + v10[9], type metadata accessor for AttributionPerfMetrics);
    sub_100286834(v17, v25, type metadata accessor for AttributionNetworkRequestData);
    sub_100003894(v32);
    sub_10028689C(v17, type metadata accessor for AttributionNetworkRequestData);
  }
}

uint64_t sub_1002839B8()
{
  v1 = *v0;
  v2 = 0x73726564616568;
  v3 = 0x6449656C646E7562;
  v4 = 0x646F6874656DLL;
  if (v1 != 4)
  {
    v4 = 0x7274654D66726570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 6910581;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100283A68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100285970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100283A90(uint64_t a1)
{
  v2 = sub_100286744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100283ACC(uint64_t a1)
{
  v2 = sub_100286744();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AttributionRetryWorkerBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id AttributionRetryWorkerBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100283E48(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_1001E27A8(&qword_1004D92B0, &qword_1003EFF60);
  __chkstk_darwin(v8 - 8);
  v10 = (&v18 - v9);
  type metadata accessor for AttributionRetryWorker(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
    sub_100286834(a5, v10 + *(v13 + 24), type metadata accessor for AttributionNetworkRequestData);
    *v10 = a3;
    v10[1] = a4;
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = a3;
    v16 = a4;
    sub_100286C8C(v10, v12 + v14, &qword_1004D92B0, &qword_1003EFF60);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_100398F28();
    APSimulateCrash();
    v17 = v18;
  }
}

uint64_t sub_100284020(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v106 = a5;
  v107 = a6;
  v102 = a3;
  v103 = a4;
  v105 = a1;
  v98 = sub_1003979F8();
  __chkstk_darwin(v98);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionNetworkRequestData(0);
  v101 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1001E27A8(&qword_1004D92A8, &qword_1003EFF58);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v97 - v15;
  v17 = sub_1001E27A8(&qword_1004D92B0, &qword_1003EFF60);
  __chkstk_darwin(v17 - 8);
  v19 = &v97 - v18;
  v20 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = mach_continuous_time();

  v105 = sub_100269608(v105, a2);
  v24 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
  swift_beginAccess();
  sub_10000ADB4(v6 + v24, v19, &qword_1004D92B0, &qword_1003EFF60);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1001ED244(v19, &qword_1004D92B0, &qword_1003EFF60);
    v25 = v101;
    (*(v101 + 56))(v16, 1, 1, v9);
    v26 = objc_autoreleasePoolPush();
    sub_100285054(v102, v103, v16);
    objc_autoreleasePoolPop(v26);
    sub_10000ADB4(v16, v14, &qword_1004D92A8, &qword_1003EFF58);
    if ((*(v25 + 48))(v14, 1, v9) == 1)
    {
      sub_1001ED244(v14, &qword_1004D92A8, &qword_1003EFF58);
      v27 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
      v28 = sub_1003995A8();
      sub_100398B98(v27, &_mh_execute_header, v28, "Retry: Failed to de-serialize payload.", 38, 2, _swiftEmptyArrayStorage);

      v29 = v99;
      *v99 = 0;
      swift_storeEnumTagMultiPayload();
      v106(v29);
      sub_10028689C(v29, &type metadata accessor for WorkResult);
      return sub_1001ED244(v16, &qword_1004D92A8, &qword_1003EFF58);
    }

    v43 = v9;
    v44 = v104;
    sub_1002868FC(v14, v104, type metadata accessor for AttributionNetworkRequestData);
    v45 = *v44;
    v97 = v16;
    if (v45 && *(v45 + 16) && ((v46 = sub_1001EC1DC(0xD000000000000018, 0x800000010042DF60), (v47 & 1) != 0) || *(v45 + 16) && (v46 = sub_1001EC1DC(0xD000000000000017, 0x8000000100430F60), (v48 & 1) != 0)))
    {
      v49 = (*(v45 + 56) + 16 * v46);
      v51 = *v49;
      v50 = v49[1];
    }

    else
    {
      v51 = 0;
      v50 = 0xE000000000000000;
    }

    v60 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v61 = sub_1003995A8();
    v62 = os_log_type_enabled(v61, v60);
    v103 = v45;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v63 = 134218242;
      *(v63 + 4) = v105;
      *(v63 + 12) = 2080;
      v65 = sub_100005700(v51, v50, &aBlock);

      *(v63 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v61, v60, "Retry: attempt retry:%lu\nRetry: attempt sigID:%s", v63, 0x16u);
      sub_100003894(v64);
    }

    else
    {
    }

    v66 = *(v43 + 36);
    v67 = v104;
    v102 = v43;
    v68 = *(v104 + v66);
    type metadata accessor for AttributionPerfMetrics(0);
    v69 = objc_allocWithZone(APAttributionUploadStatusListener);
    v70 = sub_100398F28();
    isa = sub_100397688().super.isa;
    v72 = sub_100397688().super.isa;
    v73 = sub_100397688().super.isa;
    v74 = sub_100397688().super.isa;
    v75 = [v69 initWithIntervalId:v68 reportingStorefront:v70 requestTimestamp:isa daemonStartTime:v72 tokenPayloadDeliveryStartTime:v73 tokenReturnedToClientDate:v74];

    [v75 requestBuildingStartedWithTimestamp:v100];
    v76 = swift_allocObject();
    v78 = v105;
    v77 = v106;
    v76[2] = v75;
    v76[3] = v78;
    v79 = v107;
    v76[4] = v77;
    v76[5] = v79;
    v80 = objc_opt_self();

    v81 = v75;
    v82 = [v80 sharedAPNetworkClient];
    v83 = v102;
    v84 = sub_100398F28();
    v85 = [v82 temporarySessionForClient:v84];

    v86 = *(v67 + *(v83 + 8));
    v87 = *(v67 + 16);

    sub_100397438(v88);
    v90 = v89;
    if (v103)
    {
      v91.super.isa = sub_100398E48().super.isa;
    }

    else
    {
      v91.super.isa = 0;
    }

    if (v87 >> 60 == 15)
    {
      v92 = 0;
    }

    else
    {
      v92 = sub_100397538().super.isa;
    }

    v93 = objc_allocWithZone(APHTTPRequest);
    v112 = sub_100286964;
    v113 = v76;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_100284FEC;
    v111 = &unk_10047C438;
    v94 = _Block_copy(&aBlock);

    v95 = [v93 initWithURL:v90 HTTPMethod:v86 HTTPHeaders:v91.super.isa HTTPBody:v92 serviceName:0 completionHandler:v94];
    _Block_release(v94);

    sub_100286970(v95);
    [v81 requestIsAboutToBeSent];
    v96 = [v85 sendRequest:v95];

    sub_1001ED244(v97, &qword_1004D92A8, &qword_1003EFF58);
    v58 = type metadata accessor for AttributionNetworkRequestData;
    v59 = v104;
  }

  else
  {
    sub_1002868FC(v19, v23, type metadata accessor for AttributionRetryWorker.OriginalRequest);
    v31 = *&v23[*(v20 + 24) + *(v9 + 36)];
    type metadata accessor for AttributionPerfMetrics(0);
    v32 = objc_allocWithZone(APAttributionUploadStatusListener);
    v33 = sub_100398F28();
    v34 = sub_100397688().super.isa;
    v35 = sub_100397688().super.isa;
    v36 = sub_100397688().super.isa;
    v37 = sub_100397688().super.isa;
    v38 = [v32 initWithIntervalId:v31 reportingStorefront:v33 requestTimestamp:v34 daemonStartTime:v35 tokenPayloadDeliveryStartTime:v36 tokenReturnedToClientDate:v37];

    v39 = *(v23 + 1);
    v40 = [v39 completionHandler];
    v41 = v23;
    if (v40)
    {
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      v40 = sub_100286BF4;
    }

    else
    {
      v42 = 0;
    }

    v52 = v105;
    v53 = swift_allocObject();
    v53[2] = v38;
    v53[3] = v52;
    v54 = v107;
    v53[4] = v106;
    v53[5] = v54;
    v53[6] = v40;
    v53[7] = v42;
    v112 = sub_100286BD4;
    v113 = v53;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_100284FEC;
    v111 = &unk_10047C488;
    v55 = _Block_copy(&aBlock);
    v56 = v38;

    sub_100286BE4(v40, v42);

    [v39 setCompletionHandler:v55];
    _Block_release(v55);
    sub_100286970(v39);
    [v56 requestIsAboutToBeSent];
    v57 = [*v41 sendRequest:v39];

    sub_10023998C(v40, v42);
    v58 = type metadata accessor for AttributionRetryWorker.OriginalRequest;
    v59 = v41;
  }

  return sub_10028689C(v59, v58);
}

uint64_t sub_100284BF4(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v42 = a5;
  v43 = a4;
  v12 = sub_100397748();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1003979F8();
  v16 = __chkstk_darwin(v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v37 - v19);
  [a2 receivedResponse:a1 retryCount:a3];
  v41 = a1;
  v21 = sub_100269924(a1, a3, a2);
  if (v21 == 2)
  {
    v37 = v15;
    v38 = a6;
    v39 = a7;
    v22 = sub_10026A1D4(a3);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v28 = *(sub_1001E27A8(&qword_1004D6CB8, &qword_1003ECAF8) + 64);
      *v18 = v25;
      v18[1] = v26;

      sub_100397738();
      sub_1003976B8();
      (*(v40 + 8))(v14, v12);

      v29 = sub_100397C98();
      if (v27)
      {
        v44 = _swiftEmptyArrayStorage;
        sub_100286798(&qword_1004D6CC0, &type metadata accessor for WorkOrderFlags, &protocol conformance descriptor for WorkOrderFlags);
        sub_1001E27A8(&qword_1004D6CC8, &unk_1003ECB00);
        sub_100243350();
        sub_100399658();
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      a6 = v38;
      a7 = v39;
      (*(*(v29 - 8) + 56))(v18 + v28, v30, 1, v29);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v31 = v41;
      v32 = [v41 responseError];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1003973D8();
        v35 = [v34 code];
      }

      else
      {
        v35 = [v31 responseStatusCode];
      }

      a6 = v38;
      [a2 uploadFailedWithStatusCode:v35 retryCount:a3];
      *v20 = 0;
      swift_storeEnumTagMultiPayload();
      v18 = v20;
      a7 = v39;
    }
  }

  else
  {
    *v20 = v21 & 1;
    swift_storeEnumTagMultiPayload();
    v18 = v20;
  }

  v43(v18);
  result = sub_10028689C(v18, &type metadata accessor for WorkResult);
  if (a6)
  {

    a6(v41);
    return sub_10023998C(a6, a7);
  }

  return result;
}

void sub_100284FEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100285054(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_1001E27A8(&qword_1004D92A8, &qword_1003EFF58);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = a1(v7);
  if (v3)
  {

LABEL_4:
    v12 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v13 = sub_1003995A8();
    sub_100398B98(v12, &_mh_execute_header, v13, "Retry: no payload.", 18, 2, _swiftEmptyArrayStorage);

    return;
  }

  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v14 = v10;
  v15 = v11;
  type metadata accessor for AttributionNetworkRequestData(0);
  sub_100286798(&qword_1004D92B8, type metadata accessor for AttributionNetworkRequestData, &unk_1003EFEE0);
  sub_100398138();
  sub_1001DDE50(v14, v15);
  sub_100286C8C(v9, a3, &qword_1004D92A8, &qword_1003EFF58);
}

uint64_t sub_1002852A4(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_100397748();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1003979F8();
  v14 = __chkstk_darwin(v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v34 - v17);
  [a2 receivedResponse:a1 retryCount:a3];
  v19 = sub_100269924(a1, a3, a2);
  if (v19 == 2)
  {
    v34 = a5;
    v35 = a4;
    v20 = sub_10026A1D4(a3);
    if (v21)
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      v26 = *(sub_1001E27A8(&qword_1004D6CB8, &qword_1003ECAF8) + 64);
      *v16 = v23;
      v16[1] = v24;

      sub_100397738();
      sub_1003976B8();
      (*(v36 + 8))(v12, v10);

      v27 = sub_100397C98();
      if (v25)
      {
        v37 = _swiftEmptyArrayStorage;
        sub_100286798(&qword_1004D6CC0, &type metadata accessor for WorkOrderFlags, &protocol conformance descriptor for WorkOrderFlags);
        sub_1001E27A8(&qword_1004D6CC8, &unk_1003ECB00);
        sub_100243350();
        sub_100399658();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      a4 = v35;
      (*(*(v27 - 8) + 56))(v16 + v26, v28, 1, v27);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v29 = [a1 responseError];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1003973D8();
        v32 = [v31 code];
      }

      else
      {
        v32 = [a1 responseStatusCode];
      }

      [a2 uploadFailedWithStatusCode:v32 retryCount:a3];
      *v18 = 0;
      swift_storeEnumTagMultiPayload();
      v16 = v18;
      a4 = v35;
    }
  }

  else
  {
    *v18 = v19 & 1;
    swift_storeEnumTagMultiPayload();
    v16 = v18;
  }

  a4(v16);
  return sub_10028689C(v16, &type metadata accessor for WorkResult);
}

uint64_t sub_100285660()
{
  sub_1001ED244(v0 + OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest, &qword_1004D92B0, &qword_1003EFF60);

  return swift_deallocClassInstance();
}

uint64_t sub_1002856D8(void *a1)
{
  sub_100003894(a1);
  type metadata accessor for AttributionRetryWorker(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
  v3 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  return v1;
}

uint64_t sub_10028575C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100431050 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100431070 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74536E6F6D656164 && a2 == 0xEF656D6954747261 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100431090 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004310B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100285970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274654D66726570 && a2 == 0xEB00000000736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100285B6C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = a8;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v15 = sub_1001E27A8(&qword_1004D92C8, &qword_1003EFF68);
  __chkstk_darwin(v15 - 8);
  v17 = &v69 - v16;
  v18 = type metadata accessor for AttributionNetworkRequestData(0);
  v75 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v20;
  __chkstk_darwin(v19);
  v83 = (&v69 - v22);
  v23 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v23);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = [a1 name];
  if (!v26)
  {
    v26 = [a2 serviceName];
    if (!v26)
    {
      v68 = sub_100398F28();
      APSimulateCrash();

      return 0;
    }
  }

  v27 = v26;
  v70 = v21;
  v71 = a1;
  v84 = a2;
  v72 = a3;
  v73 = a4;
  v74 = v17;
  v77 = sub_100398F58();
  v78 = v28;

  v29 = v23[6];
  v30 = sub_100397748();
  v31 = *(*(v30 - 8) + 16);
  v31(v25 + v29, v79, v30);
  v31(v25 + v23[7], a9, v30);
  v31(v25 + v23[8], a10, v30);
  v32 = v25;
  v31(v25 + v23[9], a11, v30);
  v33 = v81;
  *v25 = v80;
  v25[1] = v33;
  v25[2] = v82;

  v34 = v84;
  v35 = [v84 HTTPMethod];
  v36 = [v34 allHTTPHeaderFields];
  if (v36)
  {
    v37 = v36;
    v38 = sub_100398E68();
  }

  else
  {
    v38 = 0;
  }

  v39 = v83;
  v40 = [v34 HTTPBody];
  if (v40)
  {
    v41 = v40;
    v42 = sub_100397558();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  v45 = [v34 URL];
  sub_100397478();

  sub_100286834(v32, v39 + v18[9], type metadata accessor for AttributionPerfMetrics);
  *(v39 + v18[8]) = v35;
  *v39 = v38;
  v39[1] = v42;
  v39[2] = v44;
  v46 = (v39 + v18[7]);
  v47 = v78;
  *v46 = v77;
  v46[1] = v47;
  sub_100286798(&qword_1004D92D0, type metadata accessor for AttributionNetworkRequestData, &unk_1003EFEB8);
  v48 = sub_100398128();
  if (v49 >> 60 == 15)
  {
    v50 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v51 = sub_1003995A8();
    sub_100398B98(v50, &_mh_execute_header, v51, "Failed to serialize network payload.", 36, 2, _swiftEmptyArrayStorage);

    sub_10028689C(v39, type metadata accessor for AttributionNetworkRequestData);
    sub_10028689C(v32, type metadata accessor for AttributionPerfMetrics);
    return 0;
  }

  v53 = v49;
  v54 = v48;
  sub_100397DB8();
  result = sub_100397D98();
  v83 = result;
  if (result)
  {
    v55 = type metadata accessor for AttributionRetryWorker(0);
    v85[3] = sub_1001E27A8(&qword_1004D92D8, &qword_1003EFF70);
    v85[0] = v55;
    v56 = sub_100398118();
    v81 = v57;
    v82 = v56;
    sub_100003894(v85);
    v58 = v54;
    sub_1001EF9F4(v54, v53);
    v59 = v74;
    sub_100397C88();
    v60 = sub_100397C98();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = v70;
    sub_100286834(v39, v70, type metadata accessor for AttributionNetworkRequestData);
    v62 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v63 = swift_allocObject();
    v64 = v71;
    v65 = v84;
    *(v63 + 16) = v71;
    *(v63 + 24) = v65;
    sub_1002868FC(v61, v63 + v62, type metadata accessor for AttributionNetworkRequestData);
    v66 = v64;
    v67 = v65;
    sub_100397D78();

    sub_1001DDE50(v58, v53);

    sub_1001DDE50(v58, v53);
    sub_1001ED244(v59, &qword_1004D92C8, &qword_1003EFF68);
    sub_10028689C(v39, type metadata accessor for AttributionNetworkRequestData);
    sub_10028689C(v32, type metadata accessor for AttributionPerfMetrics);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100286308(uint64_t a1)
{
  sub_100286398(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100286398(uint64_t a1)
{
  if (!qword_1004D8FB8)
  {
    type metadata accessor for AttributionRetryWorker.OriginalRequest(255);
    v1 = sub_1003995E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1004D8FB8);
    }
  }
}

uint64_t sub_100286458(uint64_t a1)
{
  result = sub_100004218(319, &qword_1004D90D0, APHTTPSession_ptr);
  if (v2 <= 0x3F)
  {
    result = sub_100004218(319, &unk_1004D90D8, APHTTPRequest_ptr);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AttributionNetworkRequestData(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10028655C(uint64_t a1)
{
  sub_100286630(319);
  if (v1 <= 0x3F)
  {
    sub_1002434D0();
    if (v2 <= 0x3F)
    {
      sub_1003974E8();
      if (v3 <= 0x3F)
      {
        type metadata accessor for APHTTPMethod(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AttributionPerfMetrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100286630(uint64_t a1)
{
  if (!qword_1004D9178)
  {
    sub_1001E27F0(&qword_1004D7AA8, &qword_1003EF920);
    v1 = sub_1003995E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1004D9178);
    }
  }
}

uint64_t sub_1002866BC(uint64_t a1)
{
  result = sub_100397748();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100286744()
{
  result = qword_1004D9260;
  if (!qword_1004D9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9260);
  }

  return result;
}

uint64_t sub_100286798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002867E0()
{
  result = qword_1004D9298;
  if (!qword_1004D9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9298);
  }

  return result;
}

uint64_t sub_100286834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028689C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002868FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100286970(void *a1)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v2 = objc_allocWithZone(NSUserDefaults);
    v3 = sub_100398F28();
    v4 = [v2 initWithSuiteName:v3];

    if (v4)
    {
      v5 = v4;
      v6 = sub_100398F28();
      v7 = [v5 stringForKey:v6];

      if (v7)
      {
        v8 = sub_100398F58();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v12 = sub_100398F28();
          [a1 setRequestHeader:v12 withValue:v7];
        }
      }

      v21 = v5;
      v13 = sub_100398F28();
      v14 = [v21 stringForKey:v13];

      if (v14)
      {
        v15 = sub_100398F58();
        v17 = v16;

        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          v19 = sub_100398F28();
          [a1 setRequestHeader:v19 withValue:v14];

          v20 = v14;
        }

        else
        {
          v20 = v21;
          v21 = v14;
        }
      }
    }
  }
}

uint64_t sub_100286BE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100286C08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AttributionNetworkRequestData(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100283E48(a1, a2, v6, v7, v8);
}

uint64_t sub_100286C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001E27A8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100286D04(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100286D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100286E58()
{
  result = qword_1004D92E0;
  if (!qword_1004D92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92E0);
  }

  return result;
}

unint64_t sub_100286EB0()
{
  result = qword_1004D92E8;
  if (!qword_1004D92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92E8);
  }

  return result;
}

unint64_t sub_100286F08()
{
  result = qword_1004D92F0;
  if (!qword_1004D92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92F0);
  }

  return result;
}

unint64_t sub_100286F60()
{
  result = qword_1004D92F8;
  if (!qword_1004D92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92F8);
  }

  return result;
}

unint64_t sub_100286FB8()
{
  result = qword_1004D9300;
  if (!qword_1004D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9300);
  }

  return result;
}

unint64_t sub_100287010()
{
  result = qword_1004D9308;
  if (!qword_1004D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9308);
  }

  return result;
}

uint64_t sub_1002870D8(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D9410, &qword_1003F0248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_100288418();
  sub_100399BF8();
  v11[15] = 0;
  type metadata accessor for AttributionPayloadDTO(0);
  sub_100289054(&qword_1004D9418, type metadata accessor for AttributionPayloadDTO, &unk_1003EDBCC);
  sub_100399978();
  if (!v2)
  {
    v9 = type metadata accessor for AttributionSignerWorkerTask(0);
    v11[14] = 1;
    sub_100399988();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_100266830();
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002872D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004D93F8, &qword_1003F0240);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AttributionSignerWorkerTask(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_100288418();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v12 = v17;
  v13 = v11;
  v23 = 0;
  sub_100289054(&qword_1004D9408, type metadata accessor for AttributionPayloadDTO, &unk_1003EDBF4);
  v14 = v18;
  sub_1003998D8();
  sub_1002884CC(v19, v13, type metadata accessor for AttributionPayloadDTO);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1003998E8();
  v20 = 2;
  sub_100266738();
  sub_1003998A8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  sub_100288F80(v13, v16, type metadata accessor for AttributionSignerWorkerTask);
  sub_100003894(a1);
  return sub_10028846C(v13, type metadata accessor for AttributionSignerWorkerTask);
}

uint64_t sub_100287644(uint64_t a1)
{
  v2 = sub_100288418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100287680(uint64_t a1)
{
  v2 = sub_100288418();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002876EC(uint64_t a1)
{
  v2 = sub_100397A48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WorkerError.failedToDeserializeTask(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v9 = sub_1003995A8();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v7;
      v24 = v11;
      *v10 = 136446210;
      sub_1001E27A8(&qword_1004D8288, &qword_1003EED68);
      v12 = sub_1003995D8();
      v14 = sub_100005700(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "Attribution Signing: Failed to deserialize task. %{public}s", v10, 0xCu);
      sub_100003894(v11);
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(7);
    sub_100264F44(v7, 0xD000000000000024, 0x80000001004311B0);
  }

  else
  {
    v15 = v6;
    v16 = enum case for WorkerError.failedToSerializeTask(_:);
    v17 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v18 = sub_1003995A8();
    if (v15 == v16)
    {
      sub_100398B98(v17, &_mh_execute_header, v18, "Failed to serialize task.", 25, 2, _swiftEmptyArrayStorage);

      v19 = sub_100398F28();
      v20 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(15);
    }

    else
    {
      sub_100398B98(v17, &_mh_execute_header, v18, "Unknown error.", 14, 2, _swiftEmptyArrayStorage);

      v21 = sub_100398F28();
      v22 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_100287AF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v41 = a2;
  v42 = a3;
  v36 = sub_1003979F8();
  __chkstk_darwin(v36);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionSignerWorkerTask(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - v15;
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v40 = a1;
  sub_100288F80(a1, &v35 - v17, type metadata accessor for AttributionSignerWorkerTask);
  sub_100288F80(v18, v16, type metadata accessor for AttributionSignerWorkerTask);
  v19 = *(v10 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_1002884CC(v18, v21 + v20, type metadata accessor for AttributionSignerWorkerTask);
  v22 = (v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v38 = a4;
  v39 = a5;
  *v22 = a4;
  v22[1] = a5;

  v23 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v24 = sub_1003995A8();
  sub_100398B98(v23, &_mh_execute_header, v24, "Requesting signature...", 23, 2, _swiftEmptyArrayStorage);

  if (qword_1004D6138 != -1)
  {
    swift_once();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_10028846C(v16, type metadata accessor for AttributionSignerWorkerTask);
    v27 = *(v26 + 24);
    swift_unknownObjectRetain();

    v28 = v40;
    sub_100288F80(v40, v13, type metadata accessor for AttributionSignerWorkerTask);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_100288534;
    *(v29 + 24) = v21;
    sub_1002884CC(v13, v29 + ((v19 + 32) & ~v19), type metadata accessor for AttributionSignerWorkerTask);

    sub_100242ABC(v28, v41, v42, v27, sub_1002885D4, v29);

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = sub_1003993E8();
    v31 = sub_1003995A8();
    sub_100398B98(v30, &_mh_execute_header, v31, "DevicePipelinesModule is not available.", 39, 2, _swiftEmptyArrayStorage);

    v32 = sub_100398F28();
    v33 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(5);
    v34 = v37;
    *v37 = 0;
    swift_storeEnumTagMultiPayload();
    sub_100287FC0(v34, v16, v38);

    sub_10028846C(v34, &type metadata accessor for WorkResult);
    sub_10028846C(v16, type metadata accessor for AttributionSignerWorkerTask);
  }
}

uint64_t sub_100287FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1003979F8();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AttributionSignerWorkerTask(0) + 24)))
  {
    sub_100288F80(a1, v8, &type metadata accessor for WorkResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 5604;
      }

      v11 = [objc_allocWithZone(type metadata accessor for ODAttributionAnalytics()) init];
      sub_10027D370(v10, v9);
    }

    else
    {
      sub_10028846C(v8, &type metadata accessor for WorkResult);
    }
  }

  return a3(a1);
}

uint64_t sub_1002880FC(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4)
{
  v7 = sub_1001E27A8(&qword_1004D6CD8, &qword_1003ECB10);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AttributionPayloadDTO(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100288648(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1002886B8(v9);
LABEL_5:
    v17 = type metadata accessor for AttributionSigner.Result(0);
    return (a2)(a1 + *(v17 + 24));
  }

  sub_1002884CC(v9, v13, type metadata accessor for AttributionPayloadDTO);
  v14 = type metadata accessor for AttributionSigner.Result(0);
  v15 = (a1 + *(v14 + 20));
  v16 = v15[1];
  if (v16 >> 60 == 15)
  {
    sub_10028846C(v13, type metadata accessor for AttributionPayloadDTO);
    goto LABEL_5;
  }

  v19 = v14;
  v20 = *v15;
  v21 = type metadata accessor for AttributionSignerWorkerTask(0);
  v22 = *(a4 + *(v21 + 20));
  v23 = *(a4 + *(v21 + 24));
  sub_100245FB4(v20, v16);
  v24 = sub_100288720(v13, v20, v16, v23, v22);
  a2(a1 + *(v19 + 24), v24);
  sub_1001DDE50(v20, v16);
  return sub_10028846C(v13, type metadata accessor for AttributionPayloadDTO);
}

void sub_10028838C(uint64_t a1)
{
  type metadata accessor for AttributionPayloadDTO(319);
  if (v1 <= 0x3F)
  {
    sub_100266694();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100288418()
{
  result = qword_1004D9400;
  if (!qword_1004D9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9400);
  }

  return result;
}

uint64_t sub_10028846C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002884CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100288534(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100287FC0(a1, v1 + v4, v5);
}

uint64_t sub_1002885D4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1002880FC(a1, v4, v5, v6);
}

uint64_t sub_100288648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D6CD8, &qword_1003ECB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002886B8(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D6CD8, &qword_1003ECB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100288720(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v58 = a4;
  v6 = sub_100398DA8();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v72 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100399468();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100399438();
  __chkstk_darwin(v63);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398DD8();
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  v14 = v13 - 8;
  v60 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v61 = v16;
  v62 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v56 - v17;
  v18 = type metadata accessor for SignedAttributionPayloadDTO(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v23 = sub_1003995A8();
  sub_100398B98(v22, &_mh_execute_header, v23, "Successfully signed payload. Starting transmission.", 51, 2, _swiftEmptyArrayStorage);

  v24 = *a1;

  v25 = sub_100397548(0);
  v27 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  sub_10023C788(v25, v27, 0xD000000000000018, 0x800000010042DF60, isUniquelyReferenced_nonNull_native);
  v29 = aBlock[0];
  v31 = *(a1 + 1);
  v30 = *(a1 + 2);
  v32 = type metadata accessor for AttributionPayloadDTO(0);
  v33 = *(v32 + 24);
  v34 = *(v19 + 32);
  v35 = sub_1003974E8();
  (*(*(v35 - 8) + 16))(&v21[v34], &a1[v33], v35);
  v36 = &a1[*(v32 + 28)];
  v37 = *v36;
  v38 = *(v36 + 1);
  *v21 = v29;
  *(v21 + 1) = v31;
  *(v21 + 2) = v30;
  v39 = &v21[*(v19 + 36)];
  *v39 = v37;
  *(v39 + 1) = v38;
  v68 = v21;
  v40 = v56;
  sub_100288F80(v21, v56, type metadata accessor for SignedAttributionPayloadDTO);
  v41 = v57;
  *(v40 + *(v14 + 28)) = v59;
  v42 = v40;
  *(v40 + *(v14 + 32)) = v41;
  if (v58 == 2 || (v41 & 1) == 0)
  {
    sub_1001EF9F4(v31, v30);
  }

  else
  {
    v43 = objc_allocWithZone(type metadata accessor for ODAttributionAnalytics());
    sub_1001EF9F4(v31, v30);

    v44 = [v43 init];
    sub_10027D528(v44, v45);
  }

  sub_100004218(0, &qword_1004D40C0, OS_dispatch_queue_ptr);
  v46 = v69;
  sub_100398DC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100289054(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0, &qword_1003C9160);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0, &qword_1003C9160);
  sub_100399658();
  (*(v66 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
  v47 = sub_100399488();
  v48 = v42;
  v49 = v62;
  sub_100288F80(v42, v62, type metadata accessor for AttributionDeliveryWorkerTask);
  v50 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v51 = swift_allocObject();
  sub_1002884CC(v49, v51 + v50, type metadata accessor for AttributionDeliveryWorkerTask);
  aBlock[4] = sub_100288FE8;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001F77E8;
  aBlock[3] = &unk_10047C698;
  v52 = _Block_copy(aBlock);
  sub_100398DC8();
  v75 = _swiftEmptyArrayStorage;
  sub_100289054(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001E27A8(&unk_1004DC400, &qword_1003C9AF0);
  sub_100004380(&qword_1004D40B0, &unk_1004DC400, &qword_1003C9AF0);
  v53 = v72;
  v54 = v74;
  sub_100399658();
  sub_100399478();
  _Block_release(v52);

  (*(v73 + 8))(v53, v54);
  (*(v70 + 8))(v46, v71);
  sub_10028846C(v48, type metadata accessor for AttributionDeliveryWorkerTask);
  sub_10028846C(v68, type metadata accessor for SignedAttributionPayloadDTO);

  return result;
}

uint64_t sub_100288F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100288FE8()
{
  type metadata accessor for AttributionDeliveryWorkerTask(0);
  type metadata accessor for AttributionDeliveryWorker(0);
  return sub_100398158();
}

uint64_t sub_100289054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002890B0()
{
  result = qword_1004D9420;
  if (!qword_1004D9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9420);
  }

  return result;
}

unint64_t sub_100289108()
{
  result = qword_1004D9428;
  if (!qword_1004D9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9428);
  }

  return result;
}

unint64_t sub_100289160()
{
  result = qword_1004D9430;
  if (!qword_1004D9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9430);
  }

  return result;
}

void *sub_1002891B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100397588();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1001EFA90(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1001EAB38(v10, 0);
      v14 = sub_1003974F8();
      sub_1001EFA90(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_100289334()
{
  result = qword_1004D9438;
  if (!qword_1004D9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9438);
  }

  return result;
}

void sub_100289398(uint64_t *a1, int a2, int a3, char a4)
{
  if (a2 <= 31)
  {
    if ((a2 - 0x10000000) >> 29 == 7)
    {
      if (a3 > 8 * a2)
      {
        return;
      }

      v9 = a3 + 7;
      if (a3 >= 0)
      {
        v9 = a3;
      }

      v5 = v9 >> 3;
      v6 = a3;
      v8 = a3 - (v9 & 0xFFFFFFF8);
      v7 = a1;
      v4 = sub_1002891B4(*a1, a1[1]);
      if ((a4 & 1) == 0)
      {
        if (v8 >= 0)
        {
          LOBYTE(v8) = ~(1 << v8);
        }

        else
        {
          LOBYTE(v8) = -1;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v6 < -7)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_19:
          if (*(v4 + 2) > v5)
          {
            v11 = &v4[v5];
            v12 = v4[v5 + 32] & v8;
            goto LABEL_21;
          }

LABEL_29:
          __break(1u);
          return;
        }

LABEL_26:
        v4 = sub_1002895A8(v4);
        if (v6 < -7)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      if (v8 >= 0)
      {
        v8 = 1 << v8;
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v6 >= -7)
        {
          goto LABEL_12;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    v4 = sub_1002895A8(v4);
    if (v6 >= -7)
    {
LABEL_12:
      if (*(v4 + 2) > v5)
      {
        v11 = &v4[v5];
        v12 = v4[v5 + 32] | v8;
LABEL_21:
        v11[32] = v12;
        v13 = sub_100289800(v4);
        v15 = v14;

        *v7 = v13;
        v7[1] = v15;
        return;
      }

      goto LABEL_28;
    }

    goto LABEL_25;
  }
}

_BYTE *sub_100289514@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100289648(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100289700(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10028977C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1002895BC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100289648(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100289700(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1003971B8();
  swift_allocObject();
  result = sub_100397178();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100397518();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10028977C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1003971B8();
  swift_allocObject();
  result = sub_100397178();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100289800(uint64_t a1)
{
  v9 = sub_1001E27A8(&qword_1004D94F0, &qword_1003F0440);
  v10 = sub_100289A70();
  v8[0] = a1;
  v2 = sub_1000035B8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100289514(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003894(v8);
  return v5;
}

__n128 sub_1002898B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100397A58();
  v4 = v3;
  __src = sub_1002895BC(0x38uLL);
  v5 = sub_100289648(&__src, &__src + 1);
  v7 = v6;
  v8 = sub_100397A58();
  v28 = v8;
  v29 = v9;
  v26 = v8;
  v27 = v9;
  v10 = __src;
  if (__src < 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v11 = v8;
  v12 = v9;
  sub_1001EF9F4(v8, v9);
  sub_1001EF9F4(v11, v12);
  sub_100289398(&v28, 7, v10, 1);
  if (__src < 0)
  {
    goto LABEL_5;
  }

  sub_100289398(&v26, 7, __src, 0);
  *&v25 = v2;
  *(&v25 + 1) = v4;
  sub_1001EF9F4(v2, v4);
  sub_100397578();
  v13 = v28;
  v14 = v29;
  sub_100397578();
  v24.n128_u64[0] = v2;
  v24.n128_u64[1] = v4;
  sub_1001EF9F4(v2, v4);
  sub_100397578();
  v21 = v2;
  v22 = v4;
  v15 = v7;
  v16 = v5;
  v18 = v26;
  v17 = v27;
  sub_100397578();
  sub_1001EFA90(v16, v15 & 0xFFFFFFFFFFFFFFLL);
  sub_1001EFA90(v11, v12);
  sub_1001EFA90(v18, v17);
  sub_1001EFA90(v13, v14);
  result = v24;
  v20 = v25;
  *a1 = v21;
  *(a1 + 8) = v22;
  *(a1 + 16) = v20;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100289A70()
{
  result = qword_1004D94F8;
  if (!qword_1004D94F8)
  {
    sub_1001E27F0(&qword_1004D94F0, &qword_1003F0440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D94F8);
  }

  return result;
}

void sub_100289B18(id a1)
{
  v1 = qword_1004E68B8;
  qword_1004E68B8 = @"adprivacyd";
}

void sub_100289B74(id a1)
{
  v1 = qword_1004E68C8;
  qword_1004E68C8 = @"1";
}

void sub_100289B8C(id a1)
{
  v4 = +[APAMSBagManager bagSubProfile];
  v1 = +[APAMSBagManager bagSubProfileVersion];
  v2 = [AMSBag bagForProfile:v4 profileVersion:v1];
  v3 = qword_1004E68D8;
  qword_1004E68D8 = v2;
}

void sub_100289E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100289EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138478083;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{private}@: Unable to get the 'isSearchLandingAdsEnabled' status from the bag. Error: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028A1E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138478083;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{private}@: Unable to get the 'isSponsoredAdsEnabledForAdTrackingd' status from the bag. Error: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028A518(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'useAMSMescal' key from the bag. Error: %@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A6E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (!a2 || v6)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = v7;
      v10 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'useAMSMescal' key from the bag. Error: %@", &v11, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = [a2 BOOLValue];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v7);
}

void sub_10028A8C4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AA08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AB4C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AC90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7.n128_u64[0] = 0;
  v8 = v6;
  if (a2 && !v6)
  {
    [a2 doubleValue];
  }

  (*(*(a1 + 32) + 16))(v7);
}

void sub_10028ADD0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AE8C(id a1)
{
  qword_1004E68E0 = objc_alloc_init(APDeviceInfo);

  _objc_release_x1();
}

void sub_10028B00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10028B454(uint64_t a1)
{
  *(*(a1 + 32) + 40) = objc_alloc_init(APUnfairRecursiveLock);

  return _objc_release_x1();
}

__CFString *_statusToString(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None ";
    goto LABEL_11;
  }

  v1 = a1;
  if ((a1 & 2) != 0)
  {
    v2 = [&stru_1004810B8 stringByAppendingString:@"Wifi "];
    if ((v1 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = &stru_1004810B8;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    v3 = [(__CFString *)v2 stringByAppendingString:@"Cellular "];

    v2 = v3;
  }

LABEL_8:
  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = [(__CFString *)v2 stringByAppendingString:@"Expensive "];

  v2 = v6;
  if ((v1 & 0x10) != 0)
  {
LABEL_10:
    v4 = [(__CFString *)v2 stringByAppendingString:@"Constrained"];

    v2 = v4;
  }

LABEL_11:

  return v2;
}

void sub_10028BA7C(id a1)
{
  qword_1004E68F8 = objc_alloc_init(APTelephony);

  _objc_release_x1();
}

void sub_10028C01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTelephonyProperties];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setNetworkInfoUpdatingInProgress:0];
}

void sub_10028C180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) maxDisplayBars];
  [v3 doubleValue];
  v5 = v4;

  v6 = [*(a1 + 32) bars];
  [v6 doubleValue];
  v8 = v7;

  v9 = [WeakRetained lock];
  [v9 lock];
  if (v5 <= 0.0)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unable to retrieve CT signal strength because maxBars is 0.", &v13, 2u);
    }
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInteger:vcvtad_u64_f64(v8 / v5 * 100.0)];
    [WeakRetained setLatestCellularSignalStrength:v10];

    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [WeakRetained latestCellularSignalStrength];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Update latest signal strength to %{public}@.", &v13, 0xCu);
    }
  }

  [v9 unlock];
}

id sub_10028CADC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void sub_10028CF70(id a1)
{
  qword_1004E6910 = objc_alloc_init(APIDAccountProvider);

  _objc_release_x1();
}

void sub_10028D160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10028E7D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Triggering a forceReconcile on adprivacyd. Keychain will be reloaded when notification is received that IDs in keychain have changed. Error: %{public}@.", &v4, 0xCu);
  }
}

void sub_10028E98C(id a1)
{
  v1 = qword_1004E6920;
  qword_1004E6920 = &off_100493E48;
}

uint64_t APPBLogAdEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_10028FB80(id a1)
{
  v1 = qword_1004E6930;
  qword_1004E6930 = &off_100493E70;
}

uint64_t APPBCachedAdReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 40) |= 4u;
          LODWORD(v27) = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v27;
        }

        else
        {
          if (v13 != 5)
          {
LABEL_28:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_40;
          }

          *(a1 + 40) |= 2u;
          v27 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v27;
        }
      }

      else if (v13 == 1)
      {
        v19 = PBReaderReadString();
        v20 = *(a1 + 32);
        *(a1 + 32) = v19;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_28;
        }

        *(a1 + 40) |= 1u;
        v27 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27;
      }

LABEL_40:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100291698(id a1)
{
  v1 = qword_1004E6940;
  qword_1004E6940 = &off_100493E98;
}

uint64_t APPBAdSpecificationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 3)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v30 = PBReaderReadString();
          v31 = 24;
          goto LABEL_46;
        }

        if (v13 != 2)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v38 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_54;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_54:
        *(a1 + 32) = v22;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v39 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v39 & 0x7F) << v23;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_50;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 36) = v29;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v30 = PBReaderReadString();
          v31 = 16;
LABEL_46:
          v32 = *(a1 + v31);
          *(a1 + v31) = v30;

          goto LABEL_57;
        }

        if (v13 != 7)
        {
          goto LABEL_47;
        }

        *(a1 + 40) |= 1u;
        v36 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36;
      }

LABEL_57:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002934B0(uint64_t a1)
{
  [*(a1 + 32) startTime];
  v3 = v2;
  v4 = APLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 <= 0.0)
  {
    if (v5)
    {
      v12 = *(a1 + 32);
      *v21 = 134217984;
      *&v21[4] = v12;
      v9 = "%p: accumulating first item.";
      v10 = v4;
      v11 = 12;
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    v6 = *(a1 + 32);
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) startTime];
    *v21 = 134218240;
    *&v21[4] = v6;
    *&v21[12] = 2048;
    *&v21[14] = (Current - v8) * 1000.0;
    v9 = "%p: accumulating one item after %.0f mS";
    v10 = v4;
    v11 = 22;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, v21, v11);
  }

  v13 = [*(a1 + 32) lock];
  [v13 lock];

  v14 = [*(a1 + 32) items];
  v15 = [v14 count];

  if (!v15 && [*(a1 + 32) accumulationTime])
  {
    [*(a1 + 32) _startAccumulationSource];
  }

  v16 = [*(a1 + 32) items];
  [v16 addObject:*(a1 + 40)];

  if ([*(a1 + 32) inactivityTime])
  {
    [*(a1 + 32) _startInactivitySource];
  }

  if ([*(a1 + 32) itemLimit])
  {
    v17 = [*(a1 + 32) items];
    v18 = [v17 count];
    v19 = [*(a1 + 32) itemLimit];

    if (v18 == v19)
    {
      [*(a1 + 32) _stopInactivitySource];
      [*(a1 + 32) _stopAccumulationSource];
      [*(a1 + 32) _callAccumulationHandlerWithReason:1];
    }
  }

  v20 = [*(a1 + 32) lock];
  [v20 unlock];
}

void sub_100294290(id a1)
{
  v1 = qword_1004E6950;
  qword_1004E6950 = &off_100493EC0;
}

uint64_t APPBLogSysEventRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            LODWORD(v36) = 0;
            v22 = [a2 position] + 4;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v36 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v36;
            goto LABEL_65;
          case 5:
            v30 = PBReaderReadString();
            v31 = *(a1 + 16);
            *(a1 + 16) = v30;

            goto LABEL_65;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v36 & 0x7F) << v15;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_57:
            v32 = 48;
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(APPBLogMetaData);
            objc_storeStrong((a1 + 40), v14);
            v36 = 0;
            v37 = 0;
            if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_38;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v36 & 0x7F) << v24;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v26;
            }

LABEL_61:
            v32 = 32;
LABEL_62:
            *(a1 + v32) = v21;
            goto LABEL_65;
          case 3:
            v14 = objc_alloc_init(APPBClickLocation);
            objc_storeStrong((a1 + 24), v14);
            v36 = 0;
            v37 = 0;
            if (!PBReaderPlaceMark() || !APPBClickLocationReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdJourneyStartRelayValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (!v13)
      {
        v23 = 0;
        while (1)
        {
          v43 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v43 & 0x80000000) == 0)
          {
            break;
          }

          if (v23++ > 8)
          {
            goto LABEL_68;
          }
        }

        [a2 hasError];
        goto LABEL_68;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadString();
        v22 = 24;
LABEL_55:
        v36 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_68;
      }

      if (v13 != 2)
      {
        goto LABEL_52;
      }

      [a1 clearOneofValuesForValue];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 1;
      *(a1 + 52) |= 8u;
      while (1)
      {
        v44 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v44 & 0x7F) << v14;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_65;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 48) = v20;
LABEL_68:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      [a1 clearOneofValuesForValue];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 2;
      *(a1 + 52) |= 2u;
      while (1)
      {
        v45 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v45 & 0x7F) << v28;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v34 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

LABEL_63:
      *(a1 + 16) = v34;
      goto LABEL_68;
    }

    if (v13 == 4)
    {
      [a1 clearOneofValuesForValue];
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 3;
      *(a1 + 52) |= 1u;
      v41 = 0;
      v37 = [a2 position] + 8;
      if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v41;
      goto LABEL_68;
    }

    if (v13 != 5)
    {
LABEL_52:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_68;
    }

    [a1 clearOneofValuesForValue];
    *(a1 + 52) |= 4u;
    *(a1 + 32) = 4;
    v21 = PBReaderReadString();
    v22 = 40;
    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBPolicyDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(APPBNumericParameter);
    [a1 addPolicyValues:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !APPBNumericParameterReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBConfigurationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      v24 = objc_alloc_init(APPBConfiguration);
      [a1 addTheConfiguration:v24];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !APPBConfigurationReadFrom(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_26;
      case 4:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_44:
        *(a1 + 8) = v23;
        goto LABEL_45;
      case 5:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_26:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void sub_100299F4C(id a1)
{
  v1 = qword_1004E6960;
  qword_1004E6960 = &off_100493EE8;
}

uint64_t APPBOptOutResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBShadowStyleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &selRef_hasSkipThreshold;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v39 & 0x7F) << v6;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          *(a1 + 48) |= 1u;
          LODWORD(v39) = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v35 = v39;
          v36 = *(v5 + 1022);
LABEL_65:
          *(a1 + v36) = v35;
          goto LABEL_66;
        }

LABEL_41:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v25 = objc_alloc_init(APPBColor);
      objc_storeStrong((a1 + 32), v25);
      v39 = 0;
      v40 = 0;
      if (!PBReaderPlaceMark() || !APPBColorReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v14 == 3)
    {
      *(a1 + 48) |= 2u;
      LODWORD(v39) = 0;
      v26 = [a2 position] + 4;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
      {
        v37 = [a2 data];
        [v37 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v35 = v39;
      v36 = 44;
      goto LABEL_65;
    }

    if (v14 == 4)
    {
      if ((v13 & 7) == 2)
      {
        v39 = 0;
        v40 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v18 = [a2 position];
          if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v41 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v41 & 0x7F) << v19;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v12 = v20++ >= 9;
            if (v12)
            {
              goto LABEL_40;
            }
          }

          [a2 hasError];
LABEL_40:
          PBRepeatedInt32Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            goto LABEL_60;
          }
        }

        [a2 hasError];
LABEL_60:
        PBRepeatedInt32Add();
        v5 = &selRef_hasSkipThreshold;
      }

      goto LABEL_66;
    }

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBColorReadFrom(_DWORD *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addColors:v21];
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v25 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v25 & 0x7F) << v14;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_39;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_39:
            a1[6] = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_40;
        }

        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addDarkModeColors:v21];
        }
      }

LABEL_40:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdLayoutDetailsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v33) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v33 & 0x7F) << v5;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 116) |= 2u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_62:
            v30 = 112;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_62;
      case 2u:
        v20 = PBReaderReadString();
        v21 = 64;
        goto LABEL_38;
      case 3u:
        v20 = PBReaderReadString();
        v21 = 16;
        goto LABEL_38;
      case 4u:
        v20 = PBReaderReadString();
        v21 = 32;
        goto LABEL_38;
      case 5u:
        v20 = PBReaderReadString();
        v21 = 8;
        goto LABEL_38;
      case 6u:
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_38;
      case 7u:
        v22 = objc_alloc_init(APPBElement);
        [a1 addElements:v22];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !APPBElementReadFrom(v22, a2))
        {
          goto LABEL_70;
        }

        goto LABEL_47;
      case 8u:
        v22 = objc_alloc_init(APPBStyle);
        objc_storeStrong((a1 + 104), v22);
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !APPBStyleReadFrom(v22, a2))
        {
          goto LABEL_70;
        }

        goto LABEL_47;
      case 9u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 116) |= 1u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33 & 0x7F) << v24;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_66;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v26;
        }

LABEL_66:
        v30 = 40;
LABEL_67:
        *(a1 + v30) = v19;
        goto LABEL_68;
      case 0xAu:
        v20 = PBReaderReadString();
        v21 = 88;
        goto LABEL_38;
      case 0xBu:
        v22 = objc_alloc_init(APPBButton);
        objc_storeStrong((a1 + 48), v22);
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && APPBButtonReadFrom(v22, a2))
        {
          goto LABEL_47;
        }

        goto LABEL_70;
      case 0xCu:
        v20 = PBReaderReadString();
        v21 = 24;
        goto LABEL_38;
      case 0xDu:
        v20 = PBReaderReadString();
        v21 = 96;
LABEL_38:
        v23 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_68;
      case 0xEu:
        v22 = objc_alloc_init(APPBLocalizedStringEntry);
        [a1 addLocalizedHeadlines:v22];
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && APPBLocalizedStringEntryReadFrom(v22, a2))
        {
LABEL_47:
          PBReaderRecallMark();

LABEL_68:
          v31 = [a2 position];
          if (v31 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_70:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_68;
    }
  }
}

void sub_10029E5F4(id a1)
{
  v1 = qword_1004E6970;
  qword_1004E6970 = &off_100493F10;
}

uint64_t APPBAdSizeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v53 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v53 & 0x7F) << v40;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_81:
          v47 = 16;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v52 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v52 & 0x7F) << v21;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_87:
          v47 = 8;
        }

        goto LABEL_88;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v50 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v50 & 0x7F) << v34;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_77:
        v47 = 12;
LABEL_88:
        *(a1 + v47) = v27;
        goto LABEL_89;
      }

      if (v13 != 5)
      {
        goto LABEL_68;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v54 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v54 & 0x7F) << v14;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_83;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_83:
      *(a1 + 24) = v20;
LABEL_89:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v51 = 0;
      v31 = [a2 position] + 1;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v30 |= (v51 & 0x7F) << v28;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v28 += 7;
      v11 = v29++ >= 9;
      if (v11)
      {
        v27 = 0;
        goto LABEL_73;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v30;
    }

LABEL_73:
    v47 = 20;
    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}