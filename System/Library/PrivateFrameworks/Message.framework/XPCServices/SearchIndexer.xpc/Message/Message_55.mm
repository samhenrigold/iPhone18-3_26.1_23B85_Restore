unint64_t sub_10038C3A4()
{
  result = qword_1005DB220;
  if (!qword_1005DB220)
  {
    result = swift_getWitnessTable(byte_1004FCDB4, &type metadata for CredentialResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB220);
  }

  return result;
}

unint64_t sub_10038C3F8()
{
  result = qword_1005DB228;
  if (!qword_1005DB228)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for CredentialResponse.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB228);
  }

  return result;
}

unint64_t sub_10038C44C()
{
  result = qword_1005DB238;
  if (!qword_1005DB238)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB230, &qword_1004FA408);
    v4[0] = sub_10038C4D0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB238);
  }

  return result;
}

unint64_t sub_10038C4D0()
{
  result = qword_1005DB240;
  if (!qword_1005DB240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Credentials, &type metadata for Credentials, v0, v1);
    atomic_store(result, &qword_1005DB240);
  }

  return result;
}

void *sub_10038C524(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DB748, &qword_1004FD4C0);
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v20 = sub_10000C9C0(&qword_1005DB750, &qword_1004FD4C8);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v17 - v7;
  v9 = sub_10002587C(a1, a1[3]);
  sub_10038C3A4();
  sub_1004A6F84();
  if (v1)
  {
    goto LABEL_5;
  }

  v17 = a1;
  v18 = v6;
  v10 = v20;
  if (*(sub_1004A6BC4() + 16) != 1)
  {
    v12 = v10;
    v13 = sub_1004A67D4();
    swift_allocError();
    v15 = v14;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v15 = &type metadata for CredentialResponse;
    v9 = v8;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v13);
    swift_willThrow();
    (*(v18 + 8))(v8, v12);
    swift_unknownObjectRelease();
    a1 = v17;
LABEL_5:
    sub_1000197E0(a1);
    return v9;
  }

  sub_10038C3F8();
  sub_1004A6B04();
  v11 = v18;
  sub_10000C9C0(&qword_1005DB230, &qword_1004FA408);
  sub_100391B8C();
  sub_1004A6B94();
  (*(v19 + 8))(v5, v3);
  (*(v11 + 8))(v8, v10);
  swift_unknownObjectRelease();
  v9 = v21;
  sub_1000197E0(v17);
  return v9;
}

unint64_t sub_10038C8B4()
{
  result = qword_1005DB280;
  if (!qword_1005DB280)
  {
    result = swift_getWitnessTable(byte_1004FCD14, &type metadata for SearchRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB280);
  }

  return result;
}

unint64_t sub_10038C908()
{
  result = qword_1005DB288;
  if (!qword_1005DB288)
  {
    result = swift_getWitnessTable("ժ\b", &type metadata for SearchRequest.SendAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB288);
  }

  return result;
}

unint64_t sub_10038C95C()
{
  result = qword_1005DB290;
  if (!qword_1005DB290)
  {
    result = swift_getWitnessTable(asc_1004FCC74, &type metadata for SearchRequest.ExcludeIndexedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB290);
  }

  return result;
}

unint64_t sub_10038C9B0()
{
  result = qword_1005DB298;
  if (!qword_1005DB298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Mailbox, &type metadata for Mailbox, v0, v1);
    atomic_store(result, &qword_1005DB298);
  }

  return result;
}

unint64_t sub_10038CA04()
{
  result = qword_1005DB2A8;
  if (!qword_1005DB2A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB2A0, &unk_1004FA448);
    v4[0] = sub_10038CA88();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB2A8);
  }

  return result;
}

unint64_t sub_10038CA88()
{
  result = qword_1005DB2B0;
  if (!qword_1005DB2B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DB2B0);
  }

  return result;
}

unint64_t sub_10038CADC()
{
  result = qword_1005DB2B8;
  if (!qword_1005DB2B8)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for SearchRequest.GetIndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB2B8);
  }

  return result;
}

unint64_t sub_10038CB30()
{
  result = qword_1005DB2C0;
  if (!qword_1005DB2C0)
  {
    result = swift_getWitnessTable("ū\b", &type metadata for SearchRequest.GetIndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB2C0);
  }

  return result;
}

unint64_t sub_10038CB84()
{
  result = qword_1005DB2C8;
  if (!qword_1005DB2C8)
  {
    result = swift_getWitnessTable(byte_1004FCB84, &type metadata for SearchRequest.LookupCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB2C8);
  }

  return result;
}

unint64_t sub_10038CBD8()
{
  result = qword_1005DB2D0;
  if (!qword_1005DB2D0)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for SearchRequest.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB2D0);
  }

  return result;
}

unint64_t sub_10038CC2C()
{
  result = qword_1005DB2D8;
  if (!qword_1005DB2D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchQuery, &type metadata for SearchQuery, v0, v1);
    atomic_store(result, &qword_1005DB2D8);
  }

  return result;
}

uint64_t sub_10038CC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B0260 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004B0280 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B02A0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41646E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10038CE88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F666562 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10038CF90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_10000C9C0(&qword_1005DB700, &qword_1004FD488);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v77 = &v63 - v4;
  v74 = sub_10000C9C0(&qword_1005DB708, &qword_1004FD490);
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v81 = &v63 - v5;
  v70 = sub_10000C9C0(&qword_1005DB710, &qword_1004FD498);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v63 - v6;
  v67 = sub_10000C9C0(&qword_1005DB718, &qword_1004FD4A0);
  v75 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v63 - v7;
  v71 = sub_10000C9C0(&qword_1005DB720, &qword_1004FD4A8);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v9 = &v63 - v8;
  v10 = sub_10000C9C0(&qword_1005DB728, &qword_1004FD4B0);
  v66 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v13 = sub_10000C9C0(&qword_1005DB730, &qword_1004FD4B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v17 = a1[3];
  v83 = a1;
  sub_10002587C(a1, v17);
  sub_10038C8B4();
  v18 = v82;
  sub_1004A6F84();
  if (v18)
  {
    return sub_1000197E0(v83);
  }

  v63 = v10;
  v20 = v79;
  v19 = v80;
  v21 = v81;
  v64 = 0;
  v65 = v14;
  v82 = v16;
  v22 = sub_1004A6BC4();
  v23 = v22;
  if (*(v22 + 16) != 1 || (v24 = *(v22 + 32), v24 == 6))
  {
    v29 = sub_1004A67D4();
    swift_allocError();
    v31 = v30;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v31 = &type metadata for SearchRequest;
    v32 = v82;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v65 + 8))(v32, v13);
LABEL_25:
    swift_unknownObjectRelease();
    return sub_1000197E0(v83);
  }

  if (*(v22 + 32) <= 2u)
  {
    if (*(v22 + 32))
    {
      v25 = v82;
      if (v24 == 1)
      {
        LOBYTE(v85) = 1;
        sub_10038CB84();
        v26 = v64;
        sub_1004A6B04();
        if (!v26)
        {
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100391ACC(&qword_1005DB738, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
          v27 = v71;
          sub_1004A6B94();
          v28 = 0;
          (*(v69 + 8))(v9, v27);
          (*(v65 + 8))(v25, v13);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v85;
          v57 = 1;
LABEL_29:
          v41 = v78;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v85) = 2;
        sub_10038CB30();
        v43 = v20;
        v44 = v64;
        sub_1004A6B04();
        if (!v44)
        {
          LOBYTE(v88) = 0;
          sub_100391A78();
          v52 = v67;
          sub_1004A6B94();
          v59 = v85;
          v77 = v86;
          v54 = v87;
          v84 = 1;
          sub_1003918EC();
          sub_1004A6B44();
          v60 = v75;
          v80 = v88;
          v81 = v59;
          v61 = BYTE4(v88);
          v84 = 2;
          v55 = sub_1004A6B84();
          (*(v60 + 8))(v43, v52);
          (*(v65 + 8))(v82, v13);
          swift_unknownObjectRelease();
          v62 = &_mh_execute_header;
          if (!v61)
          {
            v62 = 0;
          }

          v56 = v81;
          v28 = v62 | v80;
          v57 = 2;
          v53 = v77;
          v41 = v78;
          goto LABEL_30;
        }
      }

      (*(v65 + 8))(v25, v13);
    }

    else
    {
      LOBYTE(v85) = 0;
      sub_10038CBD8();
      v37 = v82;
      v38 = v64;
      sub_1004A6B04();
      if (!v38)
      {
        sub_100391B38();
        v49 = v63;
        sub_1004A6B94();
        v28 = 0;
        (*(v66 + 8))(v12, v49);
        (*(v65 + 8))(v37, v13);
        swift_unknownObjectRelease();
        v55 = 0;
        v57 = 0;
        v56 = v85;
        v53 = v86;
        v54 = v87;
        goto LABEL_29;
      }

      (*(v65 + 8))(v37, v13);
    }

    goto LABEL_25;
  }

  if (v24 == 3)
  {
    LOBYTE(v85) = 3;
    sub_10038CADC();
    v39 = v82;
    v40 = v64;
    sub_1004A6B04();
    v41 = v78;
    v42 = v65;
    if (v40)
    {
      (*(v65 + 8))(v39, v13);
      swift_unknownObjectRelease();
      return sub_1000197E0(v83);
    }

    (*(v68 + 8))(v19, v70);
    (*(v42 + 8))(v39, v13);
    swift_unknownObjectRelease();
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v28 = 0;
    v55 = 0;
    v57 = 4;
  }

  else
  {
    v80 = v13;
    v33 = v65;
    if (v24 != 4)
    {
      LOBYTE(v85) = 5;
      sub_10038C908();
      v45 = v77;
      v46 = v80;
      v47 = v82;
      v48 = v64;
      sub_1004A6B04();
      v28 = v48;
      if (!v48)
      {
        (*(v72 + 8))(v45, v73);
        (*(v33 + 8))(v47, v46);
        swift_unknownObjectRelease();
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v57 = 4;
        v56 = 1;
        goto LABEL_29;
      }

      (*(v33 + 8))(v47, v46);
      goto LABEL_25;
    }

    LOBYTE(v85) = 4;
    sub_10038C95C();
    v34 = v80;
    v35 = v82;
    v36 = v64;
    sub_1004A6B04();
    if (v36)
    {
      (*(v33 + 8))(v35, v34);
      goto LABEL_25;
    }

    LOBYTE(v88) = 0;
    sub_100391A78();
    v50 = v74;
    sub_1004A6B94();
    v79 = v23;
    v56 = v85;
    v58 = v86;
    v54 = v87;
    sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
    v84 = 1;
    sub_100391868();
    sub_1004A6B94();
    v77 = v58;
    (*(v76 + 8))(v21, v50);
    (*(v33 + 8))(v82, v80);
    swift_unknownObjectRelease();
    v55 = 0;
    v28 = v88;
    v57 = 3;
    v53 = v77;
    v41 = v78;
  }

LABEL_30:
  result = sub_1000197E0(v83);
  *v41 = v56;
  *(v41 + 8) = v53;
  *(v41 + 16) = v54;
  *(v41 + 24) = v28;
  *(v41 + 32) = v55;
  *(v41 + 40) = v57;
  return result;
}

unint64_t sub_10038DCFC()
{
  result = qword_1005DB318;
  if (!qword_1005DB318)
  {
    result = swift_getWitnessTable(byte_1004FCAE4, &type metadata for SearchResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB318);
  }

  return result;
}

unint64_t sub_10038DD50()
{
  result = qword_1005DB320;
  if (!qword_1005DB320)
  {
    result = swift_getWitnessTable(byte_1004FCA94, &type metadata for SearchResponse.SentAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB320);
  }

  return result;
}

unint64_t sub_10038DDA4()
{
  result = qword_1005DB328;
  if (!qword_1005DB328)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for SearchResponse.ExcludedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB328);
  }

  return result;
}

unint64_t sub_10038DDF8()
{
  result = qword_1005DB330;
  if (!qword_1005DB330)
  {
    result = swift_getWitnessTable(byte_1004FC9F4, &type metadata for SearchResponse.IndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB330);
  }

  return result;
}

unint64_t sub_10038DE4C()
{
  result = qword_1005DB338;
  if (!qword_1005DB338)
  {
    result = swift_getWitnessTable(byte_1004FC9A4, &type metadata for SearchResponse.IndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB338);
  }

  return result;
}

unint64_t sub_10038DEA0()
{
  result = qword_1005DB340;
  if (!qword_1005DB340)
  {
    result = swift_getWitnessTable("ٜ\b", &type metadata for IndexingDiagnostics, v0, v1);
    atomic_store(result, &qword_1005DB340);
  }

  return result;
}

unint64_t sub_10038DEF4()
{
  result = qword_1005DB348;
  if (!qword_1005DB348)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for SearchResponse.LookupResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB348);
  }

  return result;
}

unint64_t sub_10038DF48()
{
  result = qword_1005DB360;
  if (!qword_1005DB360)
  {
    result = swift_getWitnessTable(byte_1004FC904, &type metadata for SearchResponse.SearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB360);
  }

  return result;
}

uint64_t sub_10038DF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552686372616573 && a2 == 0xED000073746C7573;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655270756B6F6F6CLL && a2 == 0xED000073746C7573 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004B02C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004AF9C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564756C637865 && a2 == 0xEC00000073444955 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41746E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10038E1BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = sub_10000C9C0(&qword_1005DB698, &qword_1004FD448);
  v61 = *(v69 - 8);
  __chkstk_darwin(v69);
  v74 = &v56 - v3;
  v68 = sub_10000C9C0(&qword_1005DB6A0, &qword_1004FD450);
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v56 - v4;
  v62 = sub_10000C9C0(&qword_1005DB6A8, &qword_1004FD458);
  v67 = *(v62 - 8);
  __chkstk_darwin(v62);
  v73 = &v56 - v5;
  v6 = sub_10000C9C0(&qword_1005DB6B0, &qword_1004FD460);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v72 = &v56 - v7;
  v8 = sub_10000C9C0(&qword_1005DB6B8, &qword_1004FD468);
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10000C9C0(&qword_1005DB6C0, &qword_1004FD470);
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v14 = sub_10000C9C0(&qword_1005DB6C8, &unk_1004FD478);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = a1[3];
  v81 = a1;
  sub_10002587C(a1, v18);
  sub_10038DCFC();
  v19 = v76;
  sub_1004A6F84();
  if (v19)
  {
    return sub_1000197E0(v81);
  }

  v57 = v11;
  v20 = v10;
  v22 = v72;
  v21 = v73;
  v23 = v74;
  v58 = 0;
  v59 = v15;
  v24 = v75;
  v76 = v17;
  v25 = sub_1004A6BC4();
  if (*(v25 + 16) != 1 || (v26 = *(v25 + 32), v26 == 6))
  {
    v32 = sub_1004A67D4();
    swift_allocError();
    v34 = v33;
    sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340);
    *v34 = &type metadata for SearchResponse;
    v35 = v76;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
    swift_willThrow();
    (*(v59 + 8))(v35, v14);
    goto LABEL_11;
  }

  if (*(v25 + 32) > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v77) = 3;
      sub_10038DDF8();
      v37 = v76;
      v44 = v58;
      sub_1004A6B04();
      if (!v44)
      {
        sub_100391940();
        v49 = v62;
        sub_1004A6B94();
        v50 = v59;
        v58 = 0;
        (*(v67 + 8))(v21, v49);
        (*(v50 + 8))(v37, v14);
        swift_unknownObjectRelease();
        v55 = v77;
        v53 = v78;
        v31 = v79;
        v54 = v80;
        goto LABEL_30;
      }
    }

    else
    {
      v73 = v25;
      v37 = v76;
      if (v26 == 4)
      {
        LOBYTE(v77) = 4;
        sub_10038DDA4();
        v38 = v71;
        v39 = v58;
        sub_1004A6B04();
        if (!v39)
        {
          sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
          sub_100391868();
          v40 = v68;
          sub_1004A6B94();
          v31 = 0;
          v58 = 0;
          (*(v70 + 8))(v38, v40);
          (*(v59 + 8))(v37, v14);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = v77;
LABEL_30:
          v24 = v75;
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v77) = 5;
        sub_10038DD50();
        v47 = v58;
        sub_1004A6B04();
        v31 = v47;
        if (!v47)
        {
          v58 = 0;
          (*(v61 + 8))(v23, v69);
          (*(v59 + 8))(v37, v14);
          swift_unknownObjectRelease();
          v55 = 0;
          v53 = 0;
          v54 = 0;
          goto LABEL_30;
        }
      }
    }

    (*(v59 + 8))(v37, v14);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_1000197E0(v81);
  }

  if (!*(v25 + 32))
  {
    v73 = v25;
    LOBYTE(v77) = 0;
    sub_10038DF48();
    v41 = v13;
    v42 = v76;
    v43 = v58;
    sub_1004A6B04();
    if (!v43)
    {
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB6F0, sub_100391A78, sub_100391868, &protocol conformance descriptor for <> [A : B]);
      v48 = v57;
      sub_1004A6B94();
      v31 = 0;
      (*(v60 + 8))(v41, v48);
      (*(v59 + 8))(v42, v14);
      swift_unknownObjectRelease();
      v58 = 0;
      goto LABEL_29;
    }

    (*(v59 + 8))(v42, v14);
    goto LABEL_11;
  }

  if (v26 == 1)
  {
    LOBYTE(v77) = 1;
    sub_10038DEF4();
    v27 = v20;
    v28 = v76;
    v29 = v58;
    sub_1004A6B04();
    if (!v29)
    {
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB6F0, sub_100391A78, sub_100391868, &protocol conformance descriptor for <> [A : B]);
      v30 = v64;
      sub_1004A6B94();
      v31 = 0;
      v58 = 0;
      (*(v63 + 8))(v27, v30);
      (*(v59 + 8))(v28, v14);
      swift_unknownObjectRelease();
LABEL_29:
      v53 = 0;
      v54 = 0;
      v55 = v77;
      goto LABEL_31;
    }

    (*(v59 + 8))(v28, v14);
    goto LABEL_11;
  }

  LOBYTE(v77) = 2;
  sub_10038DE4C();
  v45 = v76;
  v46 = v58;
  sub_1004A6B04();
  if (v46)
  {
    (*(v59 + 8))(v45, v14);
    swift_unknownObjectRelease();
    return sub_1000197E0(v81);
  }

  sub_100391994();
  v51 = v66;
  sub_1004A6B44();
  v52 = v59;
  v58 = 0;
  (*(v65 + 8))(v22, v51);
  (*(v52 + 8))(v76, v14);
  swift_unknownObjectRelease();
  v31 = 0;
  v54 = 0;
  v55 = v77;
  v53 = v78;
LABEL_31:
  result = sub_1000197E0(v81);
  *v24 = v55;
  *(v24 + 8) = v53;
  *(v24 + 16) = v31;
  *(v24 + 24) = v54;
  *(v24 + 32) = v26;
  return result;
}

unint64_t sub_10038EE78()
{
  result = qword_1005DB368;
  if (!qword_1005DB368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.Response, &type metadata for IndexRequest.Response, v0, v1);
    atomic_store(result, &qword_1005DB368);
  }

  return result;
}

unint64_t sub_10038EED0()
{
  result = qword_1005DB370;
  if (!qword_1005DB370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.ID, &type metadata for IndexRequest.ID, v0, v1);
    atomic_store(result, &qword_1005DB370);
  }

  return result;
}

uint64_t sub_10038EF30(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_10038EF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10038EFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10038F048(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10038F060(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_10038F088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 33))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10038F0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10038F1AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10038F1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038F240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10038F288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10038F2D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10038F30C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10038F354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_10038F39C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_10038F60C()
{
  result = qword_1005DB378;
  if (!qword_1005DB378)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for MessageToSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB378);
  }

  return result;
}

unint64_t sub_10038F664()
{
  result = qword_1005DB380;
  if (!qword_1005DB380)
  {
    result = swift_getWitnessTable(byte_1004FB3AC, &type metadata for MessageToSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB380);
  }

  return result;
}

unint64_t sub_10038F6BC()
{
  result = qword_1005DB388;
  if (!qword_1005DB388)
  {
    result = swift_getWitnessTable(byte_1004FB464, &type metadata for MessageToSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB388);
  }

  return result;
}

unint64_t sub_10038F714()
{
  result = qword_1005DB390;
  if (!qword_1005DB390)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for MessageToSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB390);
  }

  return result;
}

unint64_t sub_10038F76C()
{
  result = qword_1005DB398;
  if (!qword_1005DB398)
  {
    result = swift_getWitnessTable(byte_1004FB5D4, &type metadata for MessageFromSearchIndexer.IndexingStatisticsUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB398);
  }

  return result;
}

unint64_t sub_10038F7C4()
{
  result = qword_1005DB3A0;
  if (!qword_1005DB3A0)
  {
    result = swift_getWitnessTable("ݶ\b", &type metadata for MessageFromSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3A0);
  }

  return result;
}

unint64_t sub_10038F81C()
{
  result = qword_1005DB3A8;
  if (!qword_1005DB3A8)
  {
    result = swift_getWitnessTable(asc_1004FB744, &type metadata for MessageFromSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3A8);
  }

  return result;
}

unint64_t sub_10038F874()
{
  result = qword_1005DB3B0;
  if (!qword_1005DB3B0)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for MessageFromSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3B0);
  }

  return result;
}

unint64_t sub_10038F8CC()
{
  result = qword_1005DB3B8;
  if (!qword_1005DB3B8)
  {
    result = swift_getWitnessTable(byte_1004FB8B4, &type metadata for MessageFromSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3B8);
  }

  return result;
}

unint64_t sub_10038F924()
{
  result = qword_1005DB3C0;
  if (!qword_1005DB3C0)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for IndexRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3C0);
  }

  return result;
}

unint64_t sub_10038F97C()
{
  result = qword_1005DB3C8;
  if (!qword_1005DB3C8)
  {
    result = swift_getWitnessTable(byte_1004FBBB4, &type metadata for IndexRequest.StopCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3C8);
  }

  return result;
}

unint64_t sub_10038F9D4()
{
  result = qword_1005DB3D0;
  if (!qword_1005DB3D0)
  {
    result = swift_getWitnessTable(byte_1004FBC6C, &type metadata for IndexRequest.StartCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3D0);
  }

  return result;
}

unint64_t sub_10038FA2C()
{
  result = qword_1005DB3D8;
  if (!qword_1005DB3D8)
  {
    result = swift_getWitnessTable(aE_19, &type metadata for IndexRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3D8);
  }

  return result;
}

unint64_t sub_10038FA84()
{
  result = qword_1005DB3E0;
  if (!qword_1005DB3E0)
  {
    result = swift_getWitnessTable(byte_1004FBDDC, &type metadata for CredentialRequest.MakeCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3E0);
  }

  return result;
}

unint64_t sub_10038FADC()
{
  result = qword_1005DB3E8;
  if (!qword_1005DB3E8)
  {
    result = swift_getWitnessTable("ծ\b", &type metadata for CredentialRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3E8);
  }

  return result;
}

unint64_t sub_10038FB34()
{
  result = qword_1005DB3F0;
  if (!qword_1005DB3F0)
  {
    result = swift_getWitnessTable(byte_1004FBF4C, &type metadata for CredentialResponse.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3F0);
  }

  return result;
}

unint64_t sub_10038FB8C()
{
  result = qword_1005DB3F8;
  if (!qword_1005DB3F8)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for CredentialResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB3F8);
  }

  return result;
}

unint64_t sub_10038FBE4()
{
  result = qword_1005DB400;
  if (!qword_1005DB400)
  {
    result = swift_getWitnessTable(asc_1004FC10C, &type metadata for SearchRequest.ExcludeIndexedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB400);
  }

  return result;
}

unint64_t sub_10038FC3C()
{
  result = qword_1005DB408;
  if (!qword_1005DB408)
  {
    result = swift_getWitnessTable(aU_19, &type metadata for SearchRequest.GetIndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB408);
  }

  return result;
}

unint64_t sub_10038FC94()
{
  result = qword_1005DB410;
  if (!qword_1005DB410)
  {
    result = swift_getWitnessTable(byte_1004FC2CC, &type metadata for SearchRequest.LookupCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB410);
  }

  return result;
}

unint64_t sub_10038FCEC()
{
  result = qword_1005DB418;
  if (!qword_1005DB418)
  {
    result = swift_getWitnessTable(byte_1004FC384, &type metadata for SearchRequest.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB418);
  }

  return result;
}

unint64_t sub_10038FD44()
{
  result = qword_1005DB420;
  if (!qword_1005DB420)
  {
    result = swift_getWitnessTable(asc_1004FC43C, &type metadata for SearchRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB420);
  }

  return result;
}

unint64_t sub_10038FD9C()
{
  result = qword_1005DB428;
  if (!qword_1005DB428)
  {
    result = swift_getWitnessTable(asc_1004FC544, &type metadata for SearchResponse.ExcludedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB428);
  }

  return result;
}

unint64_t sub_10038FDF4()
{
  result = qword_1005DB430;
  if (!qword_1005DB430)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for SearchResponse.IndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB430);
  }

  return result;
}

unint64_t sub_10038FE4C()
{
  result = qword_1005DB438;
  if (!qword_1005DB438)
  {
    result = swift_getWitnessTable(byte_1004FC6B4, &type metadata for SearchResponse.IndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB438);
  }

  return result;
}

unint64_t sub_10038FEA4()
{
  result = qword_1005DB440;
  if (!qword_1005DB440)
  {
    result = swift_getWitnessTable(byte_1004FC76C, &type metadata for SearchResponse.LookupResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB440);
  }

  return result;
}

unint64_t sub_10038FEFC()
{
  result = qword_1005DB448;
  if (!qword_1005DB448)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for SearchResponse.SearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB448);
  }

  return result;
}

unint64_t sub_10038FF54()
{
  result = qword_1005DB450;
  if (!qword_1005DB450)
  {
    result = swift_getWitnessTable(byte_1004FC8DC, &type metadata for SearchResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB450);
  }

  return result;
}

unint64_t sub_10038FFAC()
{
  result = qword_1005DB458;
  if (!qword_1005DB458)
  {
    result = swift_getWitnessTable(byte_1004FC794, &type metadata for SearchResponse.SearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB458);
  }

  return result;
}

unint64_t sub_100390004()
{
  result = qword_1005DB460;
  if (!qword_1005DB460)
  {
    result = swift_getWitnessTable(byte_1004FC7BC, &type metadata for SearchResponse.SearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB460);
  }

  return result;
}

unint64_t sub_10039005C()
{
  result = qword_1005DB468;
  if (!qword_1005DB468)
  {
    result = swift_getWitnessTable("ͦ\b", &type metadata for SearchResponse.LookupResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB468);
  }

  return result;
}

unint64_t sub_1003900B4()
{
  result = qword_1005DB470;
  if (!qword_1005DB470)
  {
    result = swift_getWitnessTable(byte_1004FC704, &type metadata for SearchResponse.LookupResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB470);
  }

  return result;
}

unint64_t sub_10039010C()
{
  result = qword_1005DB478;
  if (!qword_1005DB478)
  {
    result = swift_getWitnessTable(byte_1004FC624, &type metadata for SearchResponse.IndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB478);
  }

  return result;
}

unint64_t sub_100390164()
{
  result = qword_1005DB480;
  if (!qword_1005DB480)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for SearchResponse.IndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB480);
  }

  return result;
}

unint64_t sub_1003901BC()
{
  result = qword_1005DB488;
  if (!qword_1005DB488)
  {
    result = swift_getWitnessTable(asc_1004FC56C, &type metadata for SearchResponse.IndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB488);
  }

  return result;
}

unint64_t sub_100390214()
{
  result = qword_1005DB490;
  if (!qword_1005DB490)
  {
    result = swift_getWitnessTable(asc_1004FC594, &type metadata for SearchResponse.IndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB490);
  }

  return result;
}

unint64_t sub_10039026C()
{
  result = qword_1005DB498;
  if (!qword_1005DB498)
  {
    result = swift_getWitnessTable(byte_1004FC4B4, &type metadata for SearchResponse.ExcludedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB498);
  }

  return result;
}

unint64_t sub_1003902C4()
{
  result = qword_1005DB4A0;
  if (!qword_1005DB4A0)
  {
    result = swift_getWitnessTable("ŭ\b", &type metadata for SearchResponse.ExcludedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4A0);
  }

  return result;
}

unint64_t sub_10039031C()
{
  result = qword_1005DB4A8;
  if (!qword_1005DB4A8)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for SearchResponse.SentAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4A8);
  }

  return result;
}

unint64_t sub_100390374()
{
  result = qword_1005DB4B0;
  if (!qword_1005DB4B0)
  {
    result = swift_getWitnessTable(byte_1004FC48C, &type metadata for SearchResponse.SentAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4B0);
  }

  return result;
}

unint64_t sub_1003903CC()
{
  result = qword_1005DB4B8;
  if (!qword_1005DB4B8)
  {
    result = swift_getWitnessTable(asc_1004FC84C, &type metadata for SearchResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4B8);
  }

  return result;
}

unint64_t sub_100390424()
{
  result = qword_1005DB4C0;
  if (!qword_1005DB4C0)
  {
    result = swift_getWitnessTable(asc_1004FC874, &type metadata for SearchResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4C0);
  }

  return result;
}

unint64_t sub_10039047C()
{
  result = qword_1005DB4C8;
  if (!qword_1005DB4C8)
  {
    result = swift_getWitnessTable(byte_1004FC2F4, &type metadata for SearchRequest.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4C8);
  }

  return result;
}

unint64_t sub_1003904D4()
{
  result = qword_1005DB4D0;
  if (!qword_1005DB4D0)
  {
    result = swift_getWitnessTable(byte_1004FC31C, &type metadata for SearchRequest.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4D0);
  }

  return result;
}

unint64_t sub_10039052C()
{
  result = qword_1005DB4D8;
  if (!qword_1005DB4D8)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for SearchRequest.LookupCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4D8);
  }

  return result;
}

unint64_t sub_100390584()
{
  result = qword_1005DB4E0;
  if (!qword_1005DB4E0)
  {
    result = swift_getWitnessTable(asc_1004FC264, &type metadata for SearchRequest.LookupCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4E0);
  }

  return result;
}

unint64_t sub_1003905DC()
{
  result = qword_1005DB4E8;
  if (!qword_1005DB4E8)
  {
    result = swift_getWitnessTable(asc_1004FC184, &type metadata for SearchRequest.GetIndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4E8);
  }

  return result;
}

unint64_t sub_100390634()
{
  result = qword_1005DB4F0;
  if (!qword_1005DB4F0)
  {
    result = swift_getWitnessTable(byte_1004FC1AC, &type metadata for SearchRequest.GetIndexingDiagnosticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4F0);
  }

  return result;
}

unint64_t sub_10039068C()
{
  result = qword_1005DB4F8;
  if (!qword_1005DB4F8)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for SearchRequest.GetIndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB4F8);
  }

  return result;
}

unint64_t sub_1003906E4()
{
  result = qword_1005DB500;
  if (!qword_1005DB500)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for SearchRequest.GetIndexingStatisticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB500);
  }

  return result;
}

unint64_t sub_10039073C()
{
  result = qword_1005DB508;
  if (!qword_1005DB508)
  {
    result = swift_getWitnessTable(asc_1004FC07C, &type metadata for SearchRequest.ExcludeIndexedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB508);
  }

  return result;
}

unint64_t sub_100390794()
{
  result = qword_1005DB510;
  if (!qword_1005DB510)
  {
    result = swift_getWitnessTable(byte_1004FC0A4, &type metadata for SearchRequest.ExcludeIndexedUIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB510);
  }

  return result;
}

unint64_t sub_1003907EC()
{
  result = qword_1005DB518;
  if (!qword_1005DB518)
  {
    result = swift_getWitnessTable(asc_1004FC02C, &type metadata for SearchRequest.SendAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB518);
  }

  return result;
}

unint64_t sub_100390844()
{
  result = qword_1005DB520;
  if (!qword_1005DB520)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for SearchRequest.SendAnalyticsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB520);
  }

  return result;
}

unint64_t sub_10039089C()
{
  result = qword_1005DB528;
  if (!qword_1005DB528)
  {
    result = swift_getWitnessTable(byte_1004FC3AC, &type metadata for SearchRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB528);
  }

  return result;
}

unint64_t sub_1003908F4()
{
  result = qword_1005DB530;
  if (!qword_1005DB530)
  {
    result = swift_getWitnessTable("ͮ\b", &type metadata for SearchRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB530);
  }

  return result;
}

unint64_t sub_10039094C()
{
  result = qword_1005DB538;
  if (!qword_1005DB538)
  {
    result = swift_getWitnessTable(byte_1004FBEBC, &type metadata for CredentialResponse.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB538);
  }

  return result;
}

unint64_t sub_1003909A4()
{
  result = qword_1005DB540;
  if (!qword_1005DB540)
  {
    result = swift_getWitnessTable(byte_1004FBEE4, &type metadata for CredentialResponse.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB540);
  }

  return result;
}

unint64_t sub_1003909FC()
{
  result = qword_1005DB548;
  if (!qword_1005DB548)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for CredentialResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB548);
  }

  return result;
}

unint64_t sub_100390A54()
{
  result = qword_1005DB550;
  if (!qword_1005DB550)
  {
    result = swift_getWitnessTable(byte_1004FBF9C, &type metadata for CredentialResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB550);
  }

  return result;
}

unint64_t sub_100390AAC()
{
  result = qword_1005DB558;
  if (!qword_1005DB558)
  {
    result = swift_getWitnessTable(asc_1004FBD4C, &type metadata for CredentialRequest.MakeCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB558);
  }

  return result;
}

unint64_t sub_100390B04()
{
  result = qword_1005DB560;
  if (!qword_1005DB560)
  {
    result = swift_getWitnessTable(asc_1004FBD74, &type metadata for CredentialRequest.MakeCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB560);
  }

  return result;
}

unint64_t sub_100390B5C()
{
  result = qword_1005DB568;
  if (!qword_1005DB568)
  {
    result = swift_getWitnessTable(byte_1004FBE04, &type metadata for CredentialRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB568);
  }

  return result;
}

unint64_t sub_100390BB4()
{
  result = qword_1005DB570;
  if (!qword_1005DB570)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for CredentialRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB570);
  }

  return result;
}

unint64_t sub_100390C0C()
{
  result = qword_1005DB578;
  if (!qword_1005DB578)
  {
    result = swift_getWitnessTable("ͱ\b", &type metadata for IndexRequest.StartCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB578);
  }

  return result;
}

unint64_t sub_100390C64()
{
  result = qword_1005DB580;
  if (!qword_1005DB580)
  {
    result = swift_getWitnessTable(byte_1004FBC04, &type metadata for IndexRequest.StartCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB580);
  }

  return result;
}

unint64_t sub_100390CBC()
{
  result = qword_1005DB588;
  if (!qword_1005DB588)
  {
    result = swift_getWitnessTable(byte_1004FBB24, &type metadata for IndexRequest.StopCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB588);
  }

  return result;
}

unint64_t sub_100390D14()
{
  result = qword_1005DB590;
  if (!qword_1005DB590)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for IndexRequest.StopCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB590);
  }

  return result;
}

unint64_t sub_100390D6C()
{
  result = qword_1005DB598;
  if (!qword_1005DB598)
  {
    result = swift_getWitnessTable(byte_1004FBC94, &type metadata for IndexRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB598);
  }

  return result;
}

unint64_t sub_100390DC4()
{
  result = qword_1005DB5A0;
  if (!qword_1005DB5A0)
  {
    result = swift_getWitnessTable(byte_1004FBCBC, &type metadata for IndexRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5A0);
  }

  return result;
}

unint64_t sub_100390E1C()
{
  result = qword_1005DB5A8;
  if (!qword_1005DB5A8)
  {
    result = swift_getWitnessTable(byte_1004FBA1C, &type metadata for IndexRequest.Response.DidDeferCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5A8);
  }

  return result;
}

unint64_t sub_100390E74()
{
  result = qword_1005DB5B0;
  if (!qword_1005DB5B0)
  {
    result = swift_getWitnessTable(asc_1004FBA44, &type metadata for IndexRequest.Response.DidDeferCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5B0);
  }

  return result;
}

unint64_t sub_100390ECC()
{
  result = qword_1005DB5B8;
  if (!qword_1005DB5B8)
  {
    result = swift_getWitnessTable("ݳ\b", &type metadata for IndexRequest.Response.DidNotCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5B8);
  }

  return result;
}

unint64_t sub_100390F24()
{
  result = qword_1005DB5C0;
  if (!qword_1005DB5C0)
  {
    result = swift_getWitnessTable(byte_1004FB9F4, &type metadata for IndexRequest.Response.DidNotCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5C0);
  }

  return result;
}

unint64_t sub_100390F7C()
{
  result = qword_1005DB5C8;
  if (!qword_1005DB5C8)
  {
    result = swift_getWitnessTable(asc_1004FB97C, &type metadata for IndexRequest.Response.CurrentlyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5C8);
  }

  return result;
}

unint64_t sub_100390FD4()
{
  result = qword_1005DB5D0;
  if (!qword_1005DB5D0)
  {
    result = swift_getWitnessTable(byte_1004FB9A4, &type metadata for IndexRequest.Response.CurrentlyUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5D0);
  }

  return result;
}

unint64_t sub_10039102C()
{
  result = qword_1005DB5D8;
  if (!qword_1005DB5D8)
  {
    result = swift_getWitnessTable(asc_1004FB92C, &type metadata for IndexRequest.Response.DidCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5D8);
  }

  return result;
}

unint64_t sub_100391084()
{
  result = qword_1005DB5E0;
  if (!qword_1005DB5E0)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for IndexRequest.Response.DidCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5E0);
  }

  return result;
}

unint64_t sub_1003910DC()
{
  result = qword_1005DB5E8;
  if (!qword_1005DB5E8)
  {
    result = swift_getWitnessTable("ʹ\b", &type metadata for IndexRequest.Response.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5E8);
  }

  return result;
}

unint64_t sub_100391134()
{
  result = qword_1005DB5F0;
  if (!qword_1005DB5F0)
  {
    result = swift_getWitnessTable(byte_1004FB904, &type metadata for IndexRequest.Response.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5F0);
  }

  return result;
}

unint64_t sub_10039118C()
{
  result = qword_1005DB5F8;
  if (!qword_1005DB5F8)
  {
    result = swift_getWitnessTable(asc_1004FBA6C, &type metadata for IndexRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB5F8);
  }

  return result;
}

unint64_t sub_1003911E4()
{
  result = qword_1005DB600;
  if (!qword_1005DB600)
  {
    result = swift_getWitnessTable(asc_1004FBA94, &type metadata for IndexRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB600);
  }

  return result;
}

unint64_t sub_10039123C()
{
  result = qword_1005DB608;
  if (!qword_1005DB608)
  {
    result = swift_getWitnessTable(asc_1004FB76C, &type metadata for MessageFromSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB608);
  }

  return result;
}

unint64_t sub_100391294()
{
  result = qword_1005DB610;
  if (!qword_1005DB610)
  {
    result = swift_getWitnessTable(asc_1004FB794, &type metadata for MessageFromSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB610);
  }

  return result;
}

unint64_t sub_1003912EC()
{
  result = qword_1005DB618;
  if (!qword_1005DB618)
  {
    result = swift_getWitnessTable(byte_1004FB6B4, &type metadata for MessageFromSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB618);
  }

  return result;
}

unint64_t sub_100391344()
{
  result = qword_1005DB620;
  if (!qword_1005DB620)
  {
    result = swift_getWitnessTable("Ż\b", &type metadata for MessageFromSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB620);
  }

  return result;
}

unint64_t sub_10039139C()
{
  result = qword_1005DB628;
  if (!qword_1005DB628)
  {
    result = swift_getWitnessTable(byte_1004FB5FC, &type metadata for MessageFromSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB628);
  }

  return result;
}

unint64_t sub_1003913F4()
{
  result = qword_1005DB630;
  if (!qword_1005DB630)
  {
    result = swift_getWitnessTable(asc_1004FB624, &type metadata for MessageFromSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB630);
  }

  return result;
}

unint64_t sub_10039144C()
{
  result = qword_1005DB638;
  if (!qword_1005DB638)
  {
    result = swift_getWitnessTable(aE_24, &type metadata for MessageFromSearchIndexer.IndexingStatisticsUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB638);
  }

  return result;
}

unint64_t sub_1003914A4()
{
  result = qword_1005DB640;
  if (!qword_1005DB640)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for MessageFromSearchIndexer.IndexingStatisticsUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB640);
  }

  return result;
}

unint64_t sub_1003914FC()
{
  result = qword_1005DB648;
  if (!qword_1005DB648)
  {
    result = swift_getWitnessTable(byte_1004FB824, &type metadata for MessageFromSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB648);
  }

  return result;
}

unint64_t sub_100391554()
{
  result = qword_1005DB650;
  if (!qword_1005DB650)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for MessageFromSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB650);
  }

  return result;
}

unint64_t sub_1003915AC()
{
  result = qword_1005DB658;
  if (!qword_1005DB658)
  {
    result = swift_getWitnessTable("չ\b", &type metadata for MessageToSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB658);
  }

  return result;
}

unint64_t sub_100391604()
{
  result = qword_1005DB660;
  if (!qword_1005DB660)
  {
    result = swift_getWitnessTable(byte_1004FB3FC, &type metadata for MessageToSearchIndexer.IndexCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB660);
  }

  return result;
}

unint64_t sub_10039165C()
{
  result = qword_1005DB668;
  if (!qword_1005DB668)
  {
    result = swift_getWitnessTable(byte_1004FB31C, &type metadata for MessageToSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB668);
  }

  return result;
}

unint64_t sub_1003916B4()
{
  result = qword_1005DB670;
  if (!qword_1005DB670)
  {
    result = swift_getWitnessTable(asc_1004FB344, &type metadata for MessageToSearchIndexer.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB670);
  }

  return result;
}

unint64_t sub_10039170C()
{
  result = qword_1005DB678;
  if (!qword_1005DB678)
  {
    result = swift_getWitnessTable(aE_25, &type metadata for MessageToSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB678);
  }

  return result;
}

unint64_t sub_100391764()
{
  result = qword_1005DB680;
  if (!qword_1005DB680)
  {
    result = swift_getWitnessTable(byte_1004FB28C, &type metadata for MessageToSearchIndexer.CredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB680);
  }

  return result;
}

unint64_t sub_1003917BC()
{
  result = qword_1005DB688;
  if (!qword_1005DB688)
  {
    result = swift_getWitnessTable(byte_1004FB48C, &type metadata for MessageToSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB688);
  }

  return result;
}

unint64_t sub_100391814()
{
  result = qword_1005DB690;
  if (!qword_1005DB690)
  {
    result = swift_getWitnessTable(byte_1004FB4B4, &type metadata for MessageToSearchIndexer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB690);
  }

  return result;
}

unint64_t sub_100391868()
{
  result = qword_1005DB6D0;
  if (!qword_1005DB6D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB2A0, &unk_1004FA448);
    v4[0] = sub_1003918EC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB6D0);
  }

  return result;
}

unint64_t sub_1003918EC()
{
  result = qword_1005DB6D8;
  if (!qword_1005DB6D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DB6D8);
  }

  return result;
}

unint64_t sub_100391940()
{
  result = qword_1005DB6E0;
  if (!qword_1005DB6E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexingStatistics, &type metadata for IndexingStatistics, v0, v1);
    atomic_store(result, &qword_1005DB6E0);
  }

  return result;
}

unint64_t sub_100391994()
{
  result = qword_1005DB6E8;
  if (!qword_1005DB6E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexingDiagnostics, &type metadata for IndexingDiagnostics, v0, v1);
    atomic_store(result, &qword_1005DB6E8);
  }

  return result;
}

uint64_t sub_1003919E8(unint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10000DEFC(&qword_1005DB350, &qword_1004FA490);
    v10[0] = a2();
    v10[1] = a3();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100391A78()
{
  result = qword_1005DB6F8;
  if (!qword_1005DB6F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Mailbox, &type metadata for Mailbox, v0, v1);
    atomic_store(result, &qword_1005DB6F8);
  }

  return result;
}

uint64_t sub_100391ACC(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100391B38()
{
  result = qword_1005DB740;
  if (!qword_1005DB740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchQuery, &type metadata for SearchQuery, v0, v1);
    atomic_store(result, &qword_1005DB740);
  }

  return result;
}

unint64_t sub_100391B8C()
{
  result = qword_1005DB758;
  if (!qword_1005DB758)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB230, &qword_1004FA408);
    v4[0] = sub_100391C10();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB758);
  }

  return result;
}

unint64_t sub_100391C10()
{
  result = qword_1005DB760;
  if (!qword_1005DB760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Credentials, &type metadata for Credentials, v0, v1);
    atomic_store(result, &qword_1005DB760);
  }

  return result;
}

unint64_t sub_100391C64()
{
  result = qword_1005DB798;
  if (!qword_1005DB798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.ID, &type metadata for IndexRequest.ID, v0, v1);
    atomic_store(result, &qword_1005DB798);
  }

  return result;
}

unint64_t sub_100391CB8()
{
  result = qword_1005DB7A0;
  if (!qword_1005DB7A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DB1D8, &qword_1004FA3E0);
    v4[0] = sub_100391D3C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005DB7A0);
  }

  return result;
}

unint64_t sub_100391D3C()
{
  result = qword_1005DB7A8;
  if (!qword_1005DB7A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountConfiguration, &type metadata for AccountConfiguration, v0, v1);
    atomic_store(result, &qword_1005DB7A8);
  }

  return result;
}

unint64_t sub_100391D90()
{
  result = qword_1005DB808;
  if (!qword_1005DB808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CredentialRequest, &type metadata for CredentialRequest, v0, v1);
    atomic_store(result, &qword_1005DB808);
  }

  return result;
}

unint64_t sub_100391DE4()
{
  result = qword_1005DB810;
  if (!qword_1005DB810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResponse, &type metadata for SearchResponse, v0, v1);
    atomic_store(result, &qword_1005DB810);
  }

  return result;
}

unint64_t sub_100391E38()
{
  result = qword_1005DB818;
  if (!qword_1005DB818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest.Response, &type metadata for IndexRequest.Response, v0, v1);
    atomic_store(result, &qword_1005DB818);
  }

  return result;
}

double sub_100391E8C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_100391ECC()
{
  result = qword_1005DB840;
  if (!qword_1005DB840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CredentialResponse, &type metadata for CredentialResponse, v0, v1);
    atomic_store(result, &qword_1005DB840);
  }

  return result;
}

unint64_t sub_100391F20()
{
  result = qword_1005DB848;
  if (!qword_1005DB848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest, &type metadata for SearchRequest, v0, v1);
    atomic_store(result, &qword_1005DB848);
  }

  return result;
}

unint64_t sub_100391F74()
{
  result = qword_1005DB850;
  if (!qword_1005DB850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexRequest, &type metadata for IndexRequest, v0, v1);
    atomic_store(result, &qword_1005DB850);
  }

  return result;
}

uint64_t Suggestion.encode(to:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v4 setOutputFormat:200];
  v5 = sub_1004A5734();
  [v4 encodeObject:a2 forKey:v5];

  v6 = [v4 encodedData];
  v7 = sub_1004A4414();
  v9 = v8;

  sub_10002587C(a1, a1[3]);
  sub_1004A6F94();
  sub_100025928(v11, v11[3]);
  sub_10015246C();
  sub_1004A6D84();

  sub_100014D40(v7, v9);
  return sub_1000197E0(v11);
}

uint64_t sub_100392198@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100392698(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SearchQuery.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1004A5764();

  return v2;
}

IMAPSearchIndexerXPC::Suggestion::ID __swiftcall Suggestion.ID.init(_:)(CSSuggestion a1)
{
  v2 = [(objc_class *)a1.super.isa uniqueIdentifier];
  v3 = sub_1004A5764();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.underlying._object = v7;
  result.underlying._countAndFlagsBits = v6;
  return result;
}

void sub_100392290(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueIdentifier];
  v4 = sub_1004A5764();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A49D4();
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4884();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A48E4();
  __chkstk_darwin(v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v8 + 104))(v10, enum case for OSLogPrivacy.Mask.hash(_:), v7);
  sub_1004A48D4();
  (*(v8 + 8))(v10, v7);
  sub_1000EADE8();
  sub_1004A4964();
  sub_100392898(v6, &type metadata accessor for OSLogStringAlignment);
  sub_100392898(v13, &type metadata accessor for OSLogPrivacy);
}

{
  return sub_100439154(a1, a2, &unk_1005C1D38, sub_100439094);
}

{
  return sub_100439154(a1, a2, &unk_1005C1D60, sub_100439324);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1D88, sub_100439374);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1DB0, sub_10043970C);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1DD8, sub_100439374);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1E00, sub_100439788);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1E28, sub_100439898);
}

{
  return sub_100439940(a1, a2, &unk_1005C1E50, sub_1004398F8);
}

{
  return sub_100439940(a1, a2, &unk_1005C1E78, sub_100439B30);
}

{
  return sub_100439154(a1, a2, &unk_1005C1EA0, sub_100439B80);
}

{
  return sub_100439154(a1, a2, &unk_1005C1EC8, sub_100439BC8);
}

{
  return sub_100439CD0(a1, a2, &unk_1005C1EF0, sub_100439C18);
}

{
  return sub_100439CD0(a1, a2, &unk_1005C1F18, sub_100439EA0);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1F40, sub_100439F5C);
}

{
  return sub_10043A83C(a1, a2, "[", &unk_1005C1F68, sub_100439F94, "]");
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1F90, sub_10043A484);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1FB8, sub_10043A4AC);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C1FE0, sub_10043A4F4);
}

{
  return sub_10043A83C(a1, a2, "{", &unk_1005C2058, sub_10043A9F4, "}");
}

{
  return sub_1004395B4(a1, a2, &unk_1005C2080, sub_10043AA30);
}

{
  return sub_10043A83C(a1, a2, "[", &unk_1005C20A8, sub_10043BFF8, "]");
}

{
  return sub_1004395B4(a1, a2, &unk_1005C20D0, sub_10043ABD4);
}

{
  return sub_1004395B4(a1, a2, &unk_1005C20F8, sub_10043AC44);
}

{
  return sub_10043AC90(a1, a2, &unk_1005C2120, sub_10043AC6C);
}

{
  return sub_10043AC90(a1, a2, &unk_1005C2148, sub_10043AEA8);
}

{
  v44 = a1;
  v47 = sub_1004A48C4();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A48E4();
  __chkstk_darwin(v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A49D4();
  __chkstk_darwin(v8 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68._countAndFlagsBits = sub_1004A58F4("[", 1uLL, 1);
  sub_1004A49B4(v68);

  v43 = a2;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v64 = sub_1004A49E4();
  v65 = v12;
  v66 = v13;
  v67 = v14;
  v15 = v64;
  v16 = v12;
  v17 = BYTE1(v12);
  v18 = BYTE2(v12);
  v19 = v13;
  v20 = v14;
  sub_1000EADE8();
  sub_1004390BC();
  v58 = v15;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  v63 = v20;
  sub_1004A4974();
  v42 = &type metadata accessor for OSLogPrivacy;
  v21 = v7;
  sub_1004390D4(v7, &type metadata accessor for OSLogPrivacy);
  v41 = &type metadata accessor for OSLogStringAlignment;
  sub_1004390D4(v10, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v19, v20);

  v69._countAndFlagsBits = sub_1004A58F4("-", 1uLL, 1);
  sub_1004A49B4(v69);

  v22 = v43;

  v23 = swift_allocObject();
  *(v23 + 16) = v44;
  *(v23 + 24) = v22;
  v24 = v23;
  v70._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v70);

  v40[1] = v24;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_10043B598;
  *(v25 + 24) = v24;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v54 = sub_1004A49E4();
  v55 = v26;
  v56 = v27;
  v57 = v28;
  v29 = v54;
  v30 = v26;
  LOBYTE(v24) = BYTE1(v26);
  LOBYTE(v7) = BYTE2(v26);
  v31 = v27;
  v32 = v28;
  sub_1000EADE8();
  sub_1004390BC();
  v48 = v29;
  v49 = v30;
  v50 = v24;
  v51 = v7;
  v52 = v31;
  v53 = v32;
  sub_1004A4984();
  sub_1004390D4(v21, v42);
  sub_1004390D4(v10, v41);
  sub_1000B5158(v31, v32);

  v71._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v71);

  v72._countAndFlagsBits = sub_1004A58F4("-", 1uLL, 1);
  sub_1004A49B4(v72);

  v33 = v43;

  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v33;

  v35 = swift_allocObject();
  *(v35 + 16) = sub_10043BD24;
  *(v35 + 24) = v34;
  sub_1004A49C4();
  v36 = v46;
  v37 = v45;
  v38 = v47;
  (*(v46 + 104))(v45, enum case for OSLogPrivacy._MailMask.mailbox(_:), v47);
  sub_1004A48A4();
  (*(v36 + 8))(v37, v38);
  sub_1004A4964();
  sub_1004390D4(v21, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v10, &type metadata accessor for OSLogStringAlignment);

  v73._countAndFlagsBits = sub_1004A58F4("]", 1uLL, 1);
  sub_1004A49B4(v73);
}

{
  v4 = sub_1004A48E4();
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A49D4();
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v31);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v27 = sub_1004A49E4();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v14 = v27;
  v15 = v11 & 1;
  v16 = BYTE1(v11) & 1;
  v17 = BYTE2(v11) & 1;
  v18 = v12;
  v19 = v13;
  sub_1000EADE8();
  sub_1004390BC();
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_1004A4984();
  sub_1004390D4(v6, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v9, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v18, v19);

  v32._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v32);
}

{
  v33 = a1;
  v36 = sub_1004A48C4();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A48E4();
  __chkstk_darwin(v5 - 8);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A49D4();
  __chkstk_darwin(v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47._countAndFlagsBits = sub_1004A58F4("[", 1uLL, 1);
  sub_1004A49B4(v47);

  v32 = a2;

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v10;
  v48._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v48);

  v30[1] = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = sub_10043BD54;
  *(v12 + 24) = v11;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v43 = sub_1004A49E4();
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v16 = v43;
  v17 = v13;
  v18 = BYTE1(v13);
  v19 = BYTE2(v13);
  v20 = v14;
  v21 = v15;
  sub_1000EADE8();
  v22 = v31;
  sub_1004390BC();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  sub_1004A4984();
  sub_1004390D4(v22, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v9, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v20, v21);

  v49._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v49);

  v23 = v32;

  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 24) = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_10043BD8C;
  *(v25 + 24) = v24;
  sub_1004A49C4();
  v26 = v35;
  v27 = v34;
  v28 = v36;
  (*(v35 + 104))(v34, enum case for OSLogPrivacy._MailMask.mailbox(_:), v36);
  sub_1004A48A4();
  (*(v26 + 8))(v27, v28);
  sub_1004A4964();
  sub_1004390D4(v22, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v9, &type metadata accessor for OSLogStringAlignment);

  v50._countAndFlagsBits = sub_1004A58F4("]", 1uLL, 1);
  sub_1004A49B4(v50);
}

uint64_t _s20IMAPSearchIndexerXPC10SuggestionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = sub_1004A5764();
  v6 = v5;

  v7 = [a2 uniqueIdentifier];
  v8 = sub_1004A5764();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004A6D34();
  }

  return v12 & 1;
}

id sub_1003925D8(uint64_t a1, uint64_t a2)
{
  isa = sub_1004A4404().super.isa;
  v8 = 0;
  v4 = [v2 initForReadingFromData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1004A4274();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100392698(void *a1)
{
  sub_10002587C(a1, a1[3]);
  sub_1004A6F74();
  if (!v1)
  {
    sub_10002587C(v10, v10[3]);
    sub_100381E8C();
    sub_1004A6D64();
    v4 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_100014CEC(v8, v9);
    v5 = sub_1003925D8(v8, v9);
    sub_100014D40(v8, v9);
    [v5 setRequiresSecureCoding:1];
    sub_1003929C8();
    v7 = sub_1004A62C4();
    if (v7)
    {
      v2 = v7;

      sub_100014D40(v8, v9);
      sub_1000197E0(v10);
      sub_1000197E0(a1);
      return v2;
    }

    sub_100392A14();
    swift_allocError();
    swift_willThrow();

    sub_100014D40(v8, v9);
    sub_1000197E0(v10);
  }

  sub_1000197E0(a1);
  return v2;
}

uint64_t sub_100392838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100392898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003928FC()
{
  result = qword_1005DB858;
  if (!qword_1005DB858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Suggestion.ID, &type metadata for Suggestion.ID, v0, v1);
    atomic_store(result, &qword_1005DB858);
  }

  return result;
}

unint64_t sub_100392954()
{
  result = qword_1005DB860;
  if (!qword_1005DB860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Suggestion.ID, &type metadata for Suggestion.ID, v0, v1);
    atomic_store(result, &qword_1005DB860);
  }

  return result;
}

unint64_t sub_1003929C8()
{
  result = qword_1005DB868;
  if (!qword_1005DB868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005DB868);
  }

  return result;
}

unint64_t sub_100392A14()
{
  result = qword_1005DB870;
  if (!qword_1005DB870)
  {
    result = swift_getWitnessTable(byte_1004FD730, &type metadata for Suggestion.WrongObject, v0, v1);
    atomic_store(result, &qword_1005DB870);
  }

  return result;
}

uint64_t SearchQuery.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6934();
  v4._countAndFlagsBits = 544106784;
  v4._object = 0xE400000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A5C24();
  sub_1004A5994(v5);

  return 0;
}

uint64_t sub_100392BD8()
{
  if (*v0)
  {
    return 0x49746E756F636361;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_100392C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100392CF4(uint64_t a1)
{
  v2 = sub_1003940C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100392D30(uint64_t a1)
{
  v2 = sub_1003940C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Mailbox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_10000C9C0(&qword_1005DB878, &unk_1004FD770);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10002587C(a1, a1[3]);
  sub_1003940C0();
  sub_1004A6FA4();
  v15 = a2;
  v17 = 0;
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1003954B0(&qword_1005DB888, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
  sub_1004A6C74();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_10037DF88();
    sub_1004A6C74();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Mailbox.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1004A6EC4(v7);
      --v5;
    }

    while (v5);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Mailbox.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  v4 = *(a1 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10039307C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100394114(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1003930F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10039316C(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003931F4()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_100393254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003943E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10039327C(uint64_t a1)
{
  v2 = sub_100394338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003932B8(uint64_t a1)
{
  v2 = sub_100394338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchQuery.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_10000C9C0(&qword_1005DB890, &qword_1004FD780);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10002587C(a1, a1[3]);
  sub_100394338();
  sub_1004A6FA4();
  v15 = a2;
  v14 = 0;
  sub_10039438C();
  sub_1004A6C74();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    sub_1004A6C64();
    v15 = a4;
    v14 = 2;
    sub_10000C9C0(&qword_1005DB8A8, &qword_1004FD788);
    sub_100395438(&qword_1005DB8B0, sub_10038C9B0, &protocol conformance descriptor for <A> [A]);
    sub_1004A6C74();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100393568(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100393594@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100394504(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100393620()
{
  if (*v0)
  {
    return 0x657865646E696E75;
  }

  else
  {
    return 0x64657865646E69;
  }
}

uint64_t sub_100393660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657865646E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657865646E696E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100393744(uint64_t a1)
{
  v2 = sub_100394774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393780(uint64_t a1)
{
  v2 = sub_100394774();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int static IndexingDiagnostics.__derived_struct_equals(_:_:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  if ((sub_100083308(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100083308(a2, a4);
}

uint64_t IndexingDiagnostics.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005DB8B8, &qword_1004FD790);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_100394774();
  sub_1004A6FA4();
  v14 = a2;
  v13 = 0;
  sub_10000C9C0(&qword_1005DB8C8, &qword_1004FD798);
  sub_1003947C8(&qword_1005DB8D0, sub_10038CA88, &protocol conformance descriptor for <> Set<A>);
  sub_1004A6C74();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1004A6C74();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100393A20@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100394840(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_100393A68(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_100083308(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100083308(v2, v3);
}

uint64_t IndexingStatistics.messagesNotIndexed.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100393AD4()
{
  v1 = 0x73654D6C61746F74;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100393B6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100394AC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100393B94(uint64_t a1)
{
  v2 = sub_100394A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393BD0(uint64_t a1)
{
  v2 = sub_100394A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IndexingStatistics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = sub_10000C9C0(&qword_1005DB8D8, &qword_1004FD7A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_100394A70();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6C64();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  sub_1004A6C64();
  v14 = 2;
  sub_1004A6C64();
  v13 = 3;
  sub_1004A6C64();
  return (*(v8 + 8))(v10, v7);
}

uint64_t IndexingStatistics.init(from:)(void *a1)
{
  result = sub_100394C44(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100393E0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100394C44(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double IndexingStatistics.fractionCompleted.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  else
  {
    return a2 / a1;
  }
}

uint64_t IndexingStatistics.fractionCompletedAsInt.getter(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2 / result * 100.0;
  }

  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100393EF4()
{
  sub_1004A6934();
  v1._countAndFlagsBits = 544106784;
  v1._object = 0xE400000000000000;
  sub_1004A5994(v1);
  v2._countAndFlagsBits = sub_1004A5C24();
  sub_1004A5994(v2);

  return 0;
}

uint64_t _s20IMAPSearchIndexerXPC11SearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1004A5764();
  v14 = v13;

  v15 = [a4 uniqueIdentifier];
  v16 = sub_1004A5764();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

    if (a2 == a5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v20 = sub_1004A6D34();

  if ((v20 & 1) == 0 || a2 != a5)
  {
    return 0;
  }

LABEL_7:

  return sub_100385CB0(a3, a6);
}

unint64_t sub_1003940C0()
{
  result = qword_1005DB880;
  if (!qword_1005DB880)
  {
    result = swift_getWitnessTable(byte_1004FE080, &type metadata for Mailbox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB880);
  }

  return result;
}

uint64_t sub_100394114(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB990, &unk_1004FE0E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  sub_10002587C(a1, a1[3]);
  sub_1003940C0();
  sub_1004A6F84();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  v9 = 0;
  sub_1003954B0(&qword_1005DB998, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
  sub_1004A6B94();
  v7 = v8[1];
  v9 = 1;
  sub_10037F108();
  sub_1004A6B94();
  (*(v3 + 8))(v5, v2);
  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_100394338()
{
  result = qword_1005DB898;
  if (!qword_1005DB898)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for SearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB898);
  }

  return result;
}

unint64_t sub_10039438C()
{
  result = qword_1005DB8A0;
  if (!qword_1005DB8A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Suggestion, &type metadata for Suggestion, v0, v1);
    atomic_store(result, &qword_1005DB8A0);
  }

  return result;
}

uint64_t sub_1003943E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100394504(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB978, &qword_1004FE0E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10002587C(a1, a1[3]);
  sub_100394338();
  sub_1004A6F84();
  HIBYTE(v8) = 0;
  sub_1003953E4();
  sub_1004A6B94();
  v7 = v9;
  LOBYTE(v9) = 1;
  sub_1004A6B84();
  sub_10000C9C0(&qword_1005DB8A8, &qword_1004FD788);
  HIBYTE(v8) = 2;
  sub_100395438(&qword_1005DB988, sub_100391A78, &protocol conformance descriptor for <A> [A]);
  sub_1004A6B94();
  (*(v3 + 8))(v5, v2);
  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_100394774()
{
  result = qword_1005DB8C0;
  if (!qword_1005DB8C0)
  {
    result = swift_getWitnessTable(byte_1004FDFE0, &type metadata for IndexingDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB8C0);
  }

  return result;
}

uint64_t sub_1003947C8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&qword_1005DB8C8, &qword_1004FD798);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100394840(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB968, &qword_1004FE0D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10002587C(a1, a1[3]);
  sub_100394774();
  sub_1004A6F84();
  sub_10000C9C0(&qword_1005DB8C8, &qword_1004FD798);
  v9 = 0;
  sub_1003947C8(&qword_1005DB970, sub_1003918EC, &protocol conformance descriptor for <> Set<A>);
  sub_1004A6B94();
  v7 = v10;
  v9 = 1;
  sub_1004A6B94();
  (*(v3 + 8))(v5, v2);
  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_100394A70()
{
  result = qword_1005DB8E0;
  if (!qword_1005DB8E0)
  {
    result = swift_getWitnessTable(asc_1004FDF90, &type metadata for IndexingStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB8E0);
  }

  return result;
}

uint64_t sub_100394AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6C61746F74 && a2 == 0xED00007365676173;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEF64657865646E49 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B02E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B0300 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100394C44(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB960, &qword_1004FE0D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10002587C(a1, a1[3]);
  sub_100394A70();
  sub_1004A6F84();
  v12 = 0;
  v6 = sub_1004A6B84();
  v11 = 1;
  sub_1004A6B84();
  v10 = 2;
  sub_1004A6B84();
  v9 = 3;
  sub_1004A6B84();
  (*(v3 + 8))(v5, v2);
  sub_1000197E0(a1);
  return v6;
}

unint64_t sub_100394E34()
{
  result = qword_1005DB8E8;
  if (!qword_1005DB8E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DB8E8);
  }

  return result;
}

unint64_t sub_100394E8C()
{
  result = qword_1005DB8F0;
  if (!qword_1005DB8F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Mailbox, &type metadata for Mailbox, v0, v1);
    atomic_store(result, &qword_1005DB8F0);
  }

  return result;
}

ValueMetadata *type metadata accessor for UID()
{
  return &type metadata for UID;
}

{
  return &type metadata for UID;
}

unint64_t sub_100394F74()
{
  result = qword_1005DB8F8;
  if (!qword_1005DB8F8)
  {
    result = swift_getWitnessTable(asc_1004FDD40, &type metadata for Mailbox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB8F8);
  }

  return result;
}

unint64_t sub_100394FCC()
{
  result = qword_1005DB900;
  if (!qword_1005DB900)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for SearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB900);
  }

  return result;
}

unint64_t sub_100395024()
{
  result = qword_1005DB908;
  if (!qword_1005DB908)
  {
    result = swift_getWitnessTable(byte_1004FDEB0, &type metadata for IndexingDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB908);
  }

  return result;
}

unint64_t sub_10039507C()
{
  result = qword_1005DB910;
  if (!qword_1005DB910)
  {
    result = swift_getWitnessTable(byte_1004FDF68, &type metadata for IndexingStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB910);
  }

  return result;
}

unint64_t sub_1003950D4()
{
  result = qword_1005DB918;
  if (!qword_1005DB918)
  {
    result = swift_getWitnessTable("ю\b", &type metadata for IndexingStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB918);
  }

  return result;
}

unint64_t sub_10039512C()
{
  result = qword_1005DB920;
  if (!qword_1005DB920)
  {
    result = swift_getWitnessTable(byte_1004FDF00, &type metadata for IndexingStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB920);
  }

  return result;
}

unint64_t sub_100395184()
{
  result = qword_1005DB928;
  if (!qword_1005DB928)
  {
    result = swift_getWitnessTable(byte_1004FDE20, &type metadata for IndexingDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB928);
  }

  return result;
}

unint64_t sub_1003951DC()
{
  result = qword_1005DB930;
  if (!qword_1005DB930)
  {
    result = swift_getWitnessTable(aY_30, &type metadata for IndexingDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB930);
  }

  return result;
}

unint64_t sub_100395234()
{
  result = qword_1005DB938;
  if (!qword_1005DB938)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for SearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB938);
  }

  return result;
}

unint64_t sub_10039528C()
{
  result = qword_1005DB940;
  if (!qword_1005DB940)
  {
    result = swift_getWitnessTable(byte_1004FDD90, &type metadata for SearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB940);
  }

  return result;
}

unint64_t sub_1003952E4()
{
  result = qword_1005DB948;
  if (!qword_1005DB948)
  {
    result = swift_getWitnessTable(byte_1004FDCB0, &type metadata for Mailbox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB948);
  }

  return result;
}

unint64_t sub_10039533C()
{
  result = qword_1005DB950;
  if (!qword_1005DB950)
  {
    result = swift_getWitnessTable("ɕ\b", &type metadata for Mailbox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DB950);
  }

  return result;
}

unint64_t sub_100395390()
{
  result = qword_1005DB958;
  if (!qword_1005DB958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DB958);
  }

  return result;
}

unint64_t sub_1003953E4()
{
  result = qword_1005DB980;
  if (!qword_1005DB980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Suggestion, &type metadata for Suggestion, v0, v1);
    atomic_store(result, &qword_1005DB980);
  }

  return result;
}

uint64_t sub_100395438(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&qword_1005DB8A8, &qword_1004FD788);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003954B0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

double sub_100395528(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFE00000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 512;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

double variable initialization expression of AuthenticatedURLRump.expire@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

double variable initialization expression of BodyStructure.DispositionAndLanguage.disposition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of ExtendedSearchResponse.correlator@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of FramingParser.buffer()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }
}

double variable initialization expression of NetworkPath.command@<D0>(_OWORD *a1@<X8>)
{
  sub_100395528(v9);
  v2 = v17;
  a1[8] = v16;
  a1[9] = v2;
  v3 = v19;
  a1[10] = v18;
  a1[11] = v3;
  v4 = v13;
  a1[4] = v12;
  a1[5] = v4;
  v5 = v15;
  a1[6] = v14;
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

uint64_t variable initialization expression of QResyncParameter.knownUIDs@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1003957B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of BodyStructure.Singlepart.extension@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004B1230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

double variable initialization expression of BodyStructure.Singlepart.Extension.dispositionAndLanguage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004B1230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_100395860(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100395880(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1003958E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100395900(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100395914(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100395934(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 28) = v3;
  return result;
}

__n128 sub_100395978(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003959A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 106))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003959C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
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

  *(result + 106) = v3;
  return result;
}

void Access.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_1004A6EB4(v4);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (a2 | a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1004A6EB4(v5);
}

Swift::Int Access.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1004A6E94();
  if (!a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 1;
LABEL_5:
    sub_1004A6EB4(v6);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (a1 | a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_1004A6EB4(v7);
  return sub_1004A6F14();
}

Swift::Int sub_100395B9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1004A6E94();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_1004A6EB4(v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

void sub_100395C38(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v2 = 1;
LABEL_5:
    sub_1004A6EB4(v2);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (*v1 == 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  sub_1004A6EB4(v3);
}

Swift::Int sub_100395CD0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1004A6E94();
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:
    sub_1004A6EB4(v5);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (v2 | v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

uint64_t sub_100395D84(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_21:
      v29 = *(v3 + 20);
      if (a1 | a2)
      {
        result = sub_1002F178C(0x756F6D796E6F6E61uLL, 0xE900000000000073, v3 + 8, *(v3 + 20));
        if (v30)
        {
          v31._countAndFlagsBits = 0x756F6D796E6F6E61;
          v31._object = 0xE900000000000073;
          result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
        }

        v32 = *(v3 + 20);
        v16 = __CFADD__(v32, result);
        v33 = v32 + result;
        if (!v16)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      result = sub_1002F178C(0x7265737568747561uLL, 0xE800000000000000, v3 + 8, v29);
      if (v34)
      {
        v35._countAndFlagsBits = 0x7265737568747561;
        v35._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
      }

      v36 = *(v3 + 20);
      v16 = __CFADD__(v36, result);
      v33 = v36 + result;
      if (!v16)
      {
LABEL_30:
        *(v3 + 20) = v33;
        return result;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v6 = *(v3 + 20);
    result = sub_1002F178C(0x2B72657375uLL, 0xE500000000000000, v3 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 0x2B72657375;
      v9._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = result;
    v11 = *(v3 + 20);
    v12 = (v11 + result);
    if (__CFADD__(v11, result))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 20) = v12;
    result = sub_1002F178C(a1, a2, v3 + 8, v12);
    if (v13)
    {
      v14._countAndFlagsBits = a1;
      v14._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v17;
    v18 = __OFADD__(v10, result);
    result += v10;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  v19 = *(v3 + 20);
  result = sub_1002F178C(0x2B74696D627573uLL, 0xE700000000000000, v3 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0x2B74696D627573;
    v21._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = result;
  v23 = *(v3 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_32;
  }

  *(v3 + 20) = v24;
  result = sub_1002F178C(a1, a2, v3 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v16 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v16)
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v28;
  v18 = __OFADD__(v22, result);
  result += v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore26AccessO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1004A6D34();
  }

  return 0;
}

unint64_t sub_100396094()
{
  result = qword_1005DBC28;
  if (!qword_1005DBC28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Access, &type metadata for Access, v0, v1);
    atomic_store(result, &qword_1005DBC28);
  }

  return result;
}

uint64_t sub_1003960E8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

Swift::Int AppendData.hashValue.getter(Swift::UInt a1, char a2)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  sub_1004A6EC4(a2 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003961A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_100396208()
{
  v1 = *(v0 + 8);
  sub_1004A6EB4(*v0);
  sub_1004A6EC4(v1);
}

Swift::Int sub_100396248(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

unint64_t sub_1003962A8()
{
  result = qword_1005DBC30;
  if (!qword_1005DBC30)
  {
    result = swift_getWitnessTable("ɉ\b", &type metadata for AppendData, v0, v1);
    atomic_store(result, &qword_1005DBC30);
  }

  return result;
}

uint64_t sub_1003962FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039633C(uint64_t result, char a2)
{
  v3 = *(v2 + 1) | (*(v2 + 5) << 32);
  if ((v3 & 0x8000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      v28._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v28);

      v29._countAndFlagsBits = 658813;
      v29._object = 0xE300000000000000;
      sub_1004A5994(v29);
      v9 = *(v2 + 20);
      v10 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v2 + 8, v9);
      if (v11)
      {
        v12._countAndFlagsBits = 123;
        v12._object = 0xE100000000000000;
        v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
      }

      v8 = v10;

      v13 = *(v2 + 20);
      result = (v13 + v8);
      if (!__CFADD__(v13, v8))
      {
LABEL_13:
        *(v2 + 20) = result;
        sub_1003E46E4(result);
        return v8;
      }

      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if ((*(v2 + 1) & 0x10000) == 0)
  {
    v26._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v26);

    v27._countAndFlagsBits = 658813;
    v27._object = 0xE300000000000000;
    sub_1004A5994(v27);
    v4 = *(v2 + 20);
    v5 = sub_1002F178C(0x7B7EuLL, 0xE200000000000000, v2 + 8, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 31614;
      v7._object = 0xE200000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    LODWORD(v3) = *(v2 + 20);
    result = (v3 + v8);
    if (!__CFADD__(v3, v8))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v30._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v30);

  v31._countAndFlagsBits = 168656171;
  v31._object = 0xE400000000000000;
  sub_1004A5994(v31);
  v14 = *(v2 + 20);
  v15 = sub_1002F178C(0x7B7EuLL, 0xE200000000000000, v2 + 8, v14);
  if (v16)
  {
    v17._countAndFlagsBits = 31614;
    v17._object = 0xE200000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v8 = v15;

  v18 = *(v2 + 20);
  v19 = __CFADD__(v18, v8);
  v20 = v18 + v8;
  if (!v19)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_19:
  v32._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v32);

  v33._countAndFlagsBits = 168656171;
  v33._object = 0xE400000000000000;
  sub_1004A5994(v33);
  v21 = *(v2 + 20);
  v22 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v2 + 8, v21);
  if (v23)
  {
    v24._countAndFlagsBits = 123;
    v24._object = 0xE100000000000000;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
  }

  v8 = v22;

  v25 = *(v2 + 20);
  v19 = __CFADD__(v25, v8);
  v20 = v25 + v8;
  if (!v19)
  {
LABEL_22:
    *(v2 + 20) = v20;
    return v8;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppendMessage.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 AppendMessage.options.setter(uint64_t a1)
{

  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t AppendMessage.data.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

__n128 AppendMessage.init(options:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

void AppendMessage.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AppendOptions.hash(into:)(a1);
  v7 = *(v6 + 56);
  sub_1004A6EB4(*(v6 + 48));
  sub_1004A6EC4(v7 & 1);
}

Swift::Int AppendMessage.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  AppendOptions.hash(into:)(v4);
  v2 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 6));
  sub_1004A6EC4(v2 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_100396808()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  sub_1004A6E94();
  AppendOptions.hash(into:)(v5);
  sub_1004A6EB4(v2);
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

void sub_100396884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  AppendOptions.hash(into:)(a1);
  sub_1004A6EB4(v7);
  sub_1004A6EC4(v8);
}

Swift::Int sub_1003968E8(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v9 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 56);
  sub_1004A6E94();
  AppendOptions.hash(into:)(v6);
  sub_1004A6EB4(v3);
  sub_1004A6EC4(v4);
  return sub_1004A6F14();
}

BOOL sub_100396960(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_10010321C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return (sub_10020FB40(v7, v11) & 1) != 0 && (sub_1003A0B30(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  result = 0;
  if ((v9 & 1) == 0 && v4 == v8)
  {
    return (sub_10020FB40(v7, v11) & 1) != 0 && (sub_1003A0B30(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  return result;
}

unint64_t sub_100396A94()
{
  result = qword_1005DBC38;
  if (!qword_1005DBC38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppendMessage, &type metadata for AppendMessage, v0, v1);
    atomic_store(result, &qword_1005DBC38);
  }

  return result;
}

__n128 sub_100396AE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100396B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100396B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL static AppendOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_10039F8D8(*a1, *a2, &String.uppercased()) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  return (sub_10020FB40(v5, v7) & 1) != 0 && (sub_1003A0B30(v6, v8) & 1) != 0;
}

void sub_100396C48(uint64_t *a1)
{
  v168 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  __chkstk_darwin(v168);
  v177 = (&v151 - v2);
  v167 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  __chkstk_darwin(v167);
  v166 = (&v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v165 = (&v151 - v5);
  v164 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
  __chkstk_darwin(v164);
  v163 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v162 = (&v151 - v8);
  __chkstk_darwin(v9);
  v176 = (&v151 - v10);
  __chkstk_darwin(v11);
  v161 = (&v151 - v12);
  __chkstk_darwin(v13);
  v160 = &v151 - v14;
  v159 = sub_10000C9C0(&qword_1005DBC88, &qword_1004FE5A8);
  __chkstk_darwin(v159);
  v158 = (&v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v175 = (&v151 - v17);
  v18 = *a1;
  if (*(*a1 + 16))
  {
    v19 = *(v178 + 20);
    v20 = 0;
    v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v178 + 8, v19);
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
    }

    v24 = v21;
    v25 = *(v178 + 20);
    v26 = (v25 + v21);
    if (__CFADD__(v25, v21))
    {
      goto LABEL_77;
    }

    v27 = v178;
    *(v178 + 20) = v26;
    v182 = v18;
    v28 = sub_1002F178C(0, 0xE000000000000000, v27 + 8, v26);
    if (v29)
    {
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v26);
    }

    v31 = v28;
    v32 = *(v178 + 20);
    v33 = (v32 + v28);
    if (__CFADD__(v32, v28))
    {
      goto LABEL_78;
    }

    v34 = v178;
    *(v178 + 20) = v33;
    v35 = sub_1002F178C(0x28uLL, 0xE100000000000000, v34 + 8, v33);
    if (v36)
    {
      v37._countAndFlagsBits = 40;
      v37._object = 0xE100000000000000;
      v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v33);
    }

    v38 = *(v178 + 20);
    v39 = __CFADD__(v38, v35);
    v40 = v38 + v35;
    if (v39)
    {
      goto LABEL_79;
    }

    *(v178 + 20) = v40;
    v41 = v31 + v35;
    if (__OFADD__(v31, v35))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    __chkstk_darwin(v35);
    *(&v151 - 6) = sub_1003C40B8;
    *(&v151 - 5) = 0;
    *(&v151 - 4) = v178;
    *(&v151 - 3) = &v182;
    *(&v151 - 2) = 32;
    *(&v151 - 1) = 0xE100000000000000;
    v42 = sub_1004594A4(0, sub_1003A3458, (&v151 - 8), v18);
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v44 = *(v178 + 20);
    v45 = sub_1002F178C(0x29uLL, 0xE100000000000000, v178 + 8, v44);
    if (v46)
    {
      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
    }

    v48 = *(v178 + 20);
    v49 = (v48 + v45);
    if (__CFADD__(v48, v45))
    {
      goto LABEL_82;
    }

    *(v178 + 20) = v49;
    v50 = __OFADD__(v43, v45);
    v51 = v43 + v45;
    if (v50)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v52 = sub_1002F178C(0, 0xE000000000000000, v178 + 8, v49);
    if (v53)
    {
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v49);
    }

    v55 = *(v178 + 20);
    v39 = __CFADD__(v55, v52);
    v56 = v55 + v52;
    if (v39)
    {
      goto LABEL_84;
    }

    *(v178 + 20) = v56;
    v57 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v58 = v24 + v57;
    if (__OFADD__(v24, v57))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (a1[2])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v58 = 0;
    v20 = 0;
    if (a1[2])
    {
LABEL_23:
      v59 = 0;
      goto LABEL_29;
    }
  }

  v60 = a1[1];
  v61 = *(v178 + 20);
  v62 = sub_1002F178C(0x20uLL, 0xE100000000000000, v178 + 8, v61);
  if (v63)
  {
    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
  }

  v65 = v62;
  v66 = *(v178 + 20);
  v39 = __CFADD__(v66, v62);
  v67 = v66 + v62;
  if (v39)
  {
    goto LABEL_89;
  }

  *(v178 + 20) = v67;
  v68 = sub_1004338EC(v60);
  v59 = v68 + v65;
  if (__OFADD__(v65, v68))
  {
LABEL_90:
    __break(1u);
    return;
  }

LABEL_29:
  v50 = __OFADD__(v58, v59);
  v69 = &v59[v58];
  if (v50)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v152 = v69;
  v70 = a1[3];
  v71 = a1[4];
  v182 = a1[5];
  v157 = v182;
  v72 = *(v182 + 16);
  if (v72)
  {
    v73 = *(v178 + 20);
    v74 = sub_1002F178C(0x20uLL, 0xE100000000000000, v178 + 8, v73);
    if (v75)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      v74 = ByteBuffer._setStringSlowpath(_:at:)(v76, v73);
    }

    v77 = *(v178 + 20);
    v39 = __CFADD__(v77, v74);
    v78 = v77 + v74;
    if (v39)
    {
      goto LABEL_86;
    }

    v153 = v74;
    *(v178 + 20) = v78;
  }

  else
  {
    v153 = 0;
  }

  v180 = v71;
  v181 = v70;
  sub_10000E268(&v181, v179, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_10000E268(&v180, v179, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_10000E268(&v182, v179, &qword_1005DBC90, &qword_1004FE5B0);
  sub_10000E268(&v181, v179, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_10000E268(&v180, v179, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_10000E268(&v182, v179, &qword_1005DBC90, &qword_1004FE5B0);
  v79 = 0;
  if (v72)
  {
    v80 = 0;
    v154 = v72 - 1;
    v81 = (v71 + 40);
    v82 = v71;
    v156 = v72;
    v155 = v71;
    while (v80 < *(v82 + 16))
    {
      v171 = v79;
      v83 = v167;
      v84 = *(v167 + 48);
      v169 = v81;
      v85 = *(v81 - 1);
      v86 = *v81;
      v173 = v86;
      v87 = v165;
      *v165 = v85;
      *(v87 + 8) = v86;
      v88 = *(type metadata accessor for ParameterValue(0) - 8);
      sub_1003A3594(v157 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v80, v87 + v84, type metadata accessor for ParameterValue);
      v89 = v166;
      sub_100025FDC(v87, v166, &qword_1005D8480, &qword_1004F4968);
      v90 = *(v83 + 48);
      v91 = v164;
      v92 = *(v164 + 48);
      v93 = v89[1];
      v94 = v161;
      *v161 = *v89;
      v94[1] = v93;
      sub_1003A352C(v89 + v90, v94 + v92, type metadata accessor for ParameterValue);
      v95 = v94;
      v96 = v160;
      sub_100025FDC(v95, v160, &qword_1005DBC80, &qword_1004FE5A0);
      v172 = v20;
      v97 = v159;
      v98 = *(v159 + 48);
      v99 = v175;
      v174 = v80;
      *v175 = v80;
      sub_100025FDC(v96, v99 + v98, &qword_1005DBC80, &qword_1004FE5A0);
      v100 = v158;
      sub_10000E268(v99, v158, &qword_1005DBC88, &qword_1004FE5A8);
      v170 = *v100;
      v101 = (v100 + *(v97 + 48));
      v102 = *(v91 + 48);
      v103 = *v101;
      v104 = v101[1];
      v105 = v162;
      sub_1003A352C(v101 + v102, v162 + v102, type metadata accessor for ParameterValue);
      v106 = *(v91 + 48);
      v107 = v176;
      *v176 = v103;
      v107[1] = v104;
      sub_1003A352C(v105 + v102, v107 + v106, type metadata accessor for ParameterValue);
      sub_10000E268(v107, v105, &qword_1005DBC80, &qword_1004FE5A0);
      v108 = *(v91 + 48);
      v109 = v163;
      sub_10000E268(v107, v163, &qword_1005DBC80, &qword_1004FE5A0);
      v110 = *(v91 + 48);
      v111 = *v105;
      v112 = v105[1];
      v113 = v177;
      *v177 = *v105;
      v113[1] = v112;
      v114 = *(v168 + 52);
      sub_1003A352C(v109 + v110, v113 + v114, type metadata accessor for ParameterValue);

      v115 = v105 + v108;
      v116 = v178;
      sub_1003A35FC(v115, type metadata accessor for ParameterValue);
      v117 = *(v116 + 20);
      v20 = v172;
      v118 = sub_1002F178C(v111, v112, v116 + 8, v117);
      if (v119)
      {
        v120._countAndFlagsBits = v111;
        v120._object = v112;
        v118 = ByteBuffer._setStringSlowpath(_:at:)(v120, v117);
      }

      v121 = v118;
      v122 = *(v178 + 20);
      v123 = (v122 + v118);
      v124 = v174;
      if (__CFADD__(v122, v118))
      {
        goto LABEL_67;
      }

      v125 = v178;
      *(v178 + 20) = v123;
      v126 = sub_1002F178C(0x20uLL, 0xE100000000000000, v125 + 8, v123);
      if (v127)
      {
        v128._countAndFlagsBits = 32;
        v128._object = 0xE100000000000000;
        v126 = ByteBuffer._setStringSlowpath(_:at:)(v128, v123);
      }

      v129 = *(v178 + 20);
      v39 = __CFADD__(v129, v126);
      v130 = v129 + v126;
      if (v39)
      {
        goto LABEL_68;
      }

      *(v178 + 20) = v130;
      v131 = v121 + v126;
      if (__OFADD__(v121, v126))
      {
        goto LABEL_69;
      }

      v132 = v177;
      v133 = sub_100463ACC(v177 + v114);
      v134 = v131 + v133;
      if (__OFADD__(v131, v133))
      {
        goto LABEL_70;
      }

      sub_100025F40(v132, &qword_1005DBC78, &unk_100502CB0);
      v135 = v171 + v134;
      if (__OFADD__(v171, v134))
      {
        goto LABEL_71;
      }

      if (v170 >= v154)
      {
        sub_100025F40(v176, &qword_1005DBC80, &qword_1004FE5A0);
        v140 = 0;
        v72 = v156;
        v82 = v155;
      }

      else
      {
        v136 = *(v178 + 20);
        v137 = sub_1002F178C(0x20uLL, 0xE100000000000000, v178 + 8, v136);
        v72 = v156;
        v82 = v155;
        if (v138)
        {
          v139._countAndFlagsBits = 32;
          v139._object = 0xE100000000000000;
          v137 = ByteBuffer._setStringSlowpath(_:at:)(v139, v136);
        }

        v140 = v137;
        sub_100025F40(v176, &qword_1005DBC80, &qword_1004FE5A0);
        v141 = *(v178 + 20);
        v39 = __CFADD__(v141, v140);
        v142 = v141 + v140;
        if (v39)
        {
          goto LABEL_73;
        }

        *(v178 + 20) = v142;
      }

      v50 = __OFADD__(v135, v140);
      v79 = v135 + v140;
      if (v50)
      {
        goto LABEL_72;
      }

      v80 = v124 + 1;
      sub_100025F40(v175, &qword_1005DBC88, &qword_1004FE5A8);
      v81 = v169 + 2;
      if (v72 == v80)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_66;
  }

LABEL_56:
  sub_100025F40(&v181, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_100025F40(&v180, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_100025F40(&v182, &qword_1005DBC90, &qword_1004FE5B0);
  sub_100025F40(&v181, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_100025F40(&v180, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_100025F40(&v182, &qword_1005DBC90, &qword_1004FE5B0);
  v143 = v153 + v79;
  if (__OFADD__(v153, v79))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v72)
  {
    v144 = *(v178 + 20);
    v145 = sub_1002F178C(0, 0xE000000000000000, v178 + 8, v144);
    if (v146)
    {
      v147._countAndFlagsBits = 0;
      v147._object = 0xE000000000000000;
      v145 = ByteBuffer._setStringSlowpath(_:at:)(v147, v144);
    }

    v148 = *(v178 + 20);
    v39 = __CFADD__(v148, v145);
    v149 = v148 + v145;
    if (v39)
    {
      goto LABEL_88;
    }

    *(v178 + 20) = v149;
    v150 = v143 + v145;
    if (__OFADD__(v143, v145))
    {
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
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  else
  {
    v150 = v153 + v79;
  }

  if (__OFADD__(v152, v150))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }
}

uint64_t AppendOptions.extensions.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppendOptions.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t sub_10039797C()
{
  result = sub_1003FF33C(_swiftEmptyArrayStorage);
  static AppendOptions.none = _swiftEmptyArrayStorage;
  unk_1005DE310 = 0;
  byte_1005DE318 = 1;
  qword_1005DE320 = result;
  unk_1005DE328 = v1;
  qword_1005DE330 = v2;
  return result;
}

uint64_t AppendOptions.init(flagList:internalDate:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *AppendOptions.none.unsafeMutableAddressor()
{
  if (qword_1005DB9A0 != -1)
  {
    swift_once();
  }

  return &static AppendOptions.none;
}

uint64_t static AppendOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005DB9A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1005DE310;
  v2 = byte_1005DE318;
  v3 = qword_1005DE320;
  v4 = unk_1005DE328;
  v5 = qword_1005DE330;
  *a1 = static AppendOptions.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t sub_100397AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 55);
    v4 = (a2 + 55);
    do
    {
      v8 = *(v3 - 23);
      v9 = *(v3 - 15);
      v10 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
      v11 = *(v4 - 23);
      v12 = *(v4 - 15);
      v13 = *(v4 - 7);
      v14 = v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
      if (*v3)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }

        sub_1003A30E8(*(v4 - 23), *(v4 - 15), v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32), 1);
        sub_1003A30E8(v8, v9, v10, 1);
        v15 = sub_100397AD8(v8, v11);
        sub_1003A30F4(v11, v12, v14, 1);
        sub_1003A30F4(v8, v9, v10, 1);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((*v4 & 1) != 0 || HIDWORD(v9) - v9 != HIDWORD(v12) - v12)
        {
          return 0;
        }

        v16 = HIDWORD(v14) & 0xFFFFFF;
        v17 = BYTE6(v14);
        if (*(v3 - 7) != v14 || (*(v3 - 3) == WORD2(v14) ? (v18 = BYTE6(v10) == BYTE6(v14)) : (v18 = 0), v18 ? (v19 = v8 == v11) : (v19 = 0), !v19))
        {
          v5 = BYTE6(v10);
          v21 = HIDWORD(v10) & 0xFFFFFF;
          v22 = v16;
          v6 = v17;
          swift_beginAccess();
          v7 = *(v8 + 24) + v9;
          swift_beginAccess();
          if (memcmp((v7 + (v5 & 0xFFFFFFFFFF0000FFLL | (v21 << 8))), (*(v11 + 24) + (v6 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v12), HIDWORD(v9) - v9))
          {
            return 0;
          }
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100397D28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v4 + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = a2 + 32 + 16 * v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      if (v11 != 1)
      {
        return 0;
      }

      v22 = *(v7 + 16);
      if (v22 != *(v10 + 16))
      {
        return 0;
      }

      if (v22)
      {
        v23 = v7 == v10;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_12;
      }

      v24 = 0;
      v25 = v7 + 32;
      v26 = v10 + 32;
      while (v24 != v22)
      {
        v39 = (v25 + 16 * v24);
        v40 = v26 + 16 * v24;
        if ((v39[2] | (v39[2] << 32)) != (*(v40 + 8) | (*(v40 + 8) << 32)))
        {
          return 0;
        }

        v41 = *v39;
        result = *v40;
        v42 = *(*v39 + 16);
        if (v42 != *(result + 16))
        {
          return 0;
        }

        if (v42)
        {
          v43 = v41 == result;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          result += 32;
          while (v42)
          {
            if (*v44 != *result)
            {
              return 0;
            }

            ++v44;
            ++result;
            if (!--v42)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_99;
        }

LABEL_70:
        if (++v24 == v22)
        {
          goto LABEL_12;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *(v7 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v7 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = v7 + 32;
      v16 = v10 + 32;
      while (v14 != v12)
      {
        v27 = (v15 + 16 * v14);
        v28 = v16 + 16 * v14;
        if ((v27[2] | (v27[2] << 32)) != (*(v28 + 8) | (*(v28 + 8) << 32)))
        {
          return 0;
        }

        v29 = *v27;
        result = *v28;
        v30 = *(*v27 + 16);
        if (v30 != *(result + 16))
        {
          return 0;
        }

        if (v30)
        {
          v31 = v29 == result;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = (v29 + 32);
          result += 32;
          while (v30)
          {
            if (*v32 != *result)
            {
              return 0;
            }

            ++v32;
            ++result;
            if (!--v30)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_98;
        }

LABEL_44:
        if (++v14 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_102;
    }

LABEL_12:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (v8 != 2)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v11 != 3 || v10 != 1)
        {
          return 0;
        }
      }

      else if (v11 != 3 || v10 != 0)
      {
        return 0;
      }
    }

    else if (v7 == 2)
    {
      if (v11 != 3 || v10 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      result = 0;
      if (v11 != 3 || v10 != 3)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11 != 3 || v10 != 4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v17 = *(v7 + 16);
  if (v17 != *(v10 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v7 == v10;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
  v20 = v7 + 32;
  v21 = v10 + 32;
  while (v19 != v17)
  {
    v33 = (v20 + 16 * v19);
    v34 = v21 + 16 * v19;
    if ((v33[2] | (v33[2] << 32)) != (*(v34 + 8) | (*(v34 + 8) << 32)))
    {
      return 0;
    }

    v35 = *v33;
    result = *v34;
    v36 = *(*v33 + 16);
    if (v36 != *(result + 16))
    {
      return 0;
    }

    if (v36)
    {
      v37 = v35 == result;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v35 + 32);
      result += 32;
      while (v36)
      {
        if (*v38 != *result)
        {
          return 0;
        }

        ++v38;
        ++result;
        if (!--v36)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_57:
    if (++v19 == v17)
    {
      goto LABEL_12;
    }
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_100398074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1003A3594(v20, v17, a4);
        sub_1003A3594(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1003A35FC(v13, a6);
        sub_1003A35FC(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_100398218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *i;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *(v6 + 64);
    v58[2] = *(v6 + 48);
    v58[3] = v9;
    v59[0] = *(v6 + 80);
    *(v59 + 15) = *(v6 + 95);
    v10 = *(v6 + 32);
    v58[0] = *(v6 + 16);
    v58[1] = v10;
    if ((v8 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v11 = *(v8 + 64);
    v60[2] = *(v8 + 48);
    v60[3] = v11;
    v61[0] = *(v8 + 80);
    *(v61 + 15) = *(v8 + 95);
    v12 = *(v8 + 32);
    v60[0] = *(v8 + 16);
    v60[1] = v12;

    sub_1003A3260(v60, &v53);
    v13 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v58, v60);
    sub_1003A32BC(v60);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v51 = v3;
  v14 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 28);
  v18 = *(v14 + 32);
  v19 = *(v14 + 36);
  v20 = *(v14 + 38);
  v21 = *(v14 + 40);
  v48 = *(v14 + 48);
  v22 = *(v14 + 62);
  v23 = *(v14 + 60);
  v24 = *(v14 + 56);
  v25 = *(v14 + 64);
  v26 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v53 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v54 = v26;
  v55 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v56 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
  v27 = DWORD2(v53);
  if (v17 - v16 != HIDWORD(v53) - DWORD2(v53))
  {
    return 0;
  }

  v45 = v23;
  v46 = v22;
  v47 = v24;
  v50 = v25;
  v52 = v21;
  v28 = v53;
  if (v18 == v54 && v19 == WORD2(v54) && v20 == BYTE6(v54) && v15 == v53)
  {

    sub_1003A31B0(&v53, v57);
  }

  else
  {
    v43 = BYTE6(v54);
    v44 = WORD2(v54);
    swift_beginAccess();
    v29 = *(v15 + 24);
    swift_beginAccess();
    v30 = *(v28 + 24);

    sub_1003A31B0(&v53, v57);
    if (memcmp((v29 + (v20 | (v19 << 8)) + v16), (v30 + (v43 | (v44 << 8)) + v27), v17 - v16))
    {
      goto LABEL_28;
    }
  }

  v31 = *(&v54 + 1);
  if (!v52)
  {
    if (*(&v54 + 1))
    {
      goto LABEL_31;
    }

LABEL_6:
    v5 = sub_100398218(v50, v56);
    sub_1003A320C(&v53);

    v3 = v51;
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*(&v54 + 1))
  {
    v32 = v55;
    v33 = HIDWORD(v48);
    if (HIDWORD(v48) - v48 != DWORD1(v55) - v55 || ((v34 = v47 | ((v45 | (v46 << 16)) << 32), v35 = DWORD2(v55) | ((WORD6(v55) | (BYTE14(v55) << 16)) << 32), v36 = BYTE6(v35), v37 = HIDWORD(v34) & 0xFFFFFF, v38 = BYTE6(v34), v47 != DWORD2(v55)) || WORD2(v34) != WORD6(v55) || BYTE6(v34) != BYTE6(v35) || v52 != *(&v54 + 1)) && (v39 = v48, v49 = HIDWORD(v35) & 0xFFFFFF, swift_beginAccess(), v40 = v38 & 0xFFFFFFFFFF0000FFLL | (v37 << 8), v41 = *(v52 + 24) + v39, swift_beginAccess(), memcmp((v41 + v40), (*(v31 + 24) + (v36 & 0xFFFFFFFFFF0000FFLL | (v49 << 8)) + v32), v33 - v39)))
    {
LABEL_28:
      sub_1003A320C(&v53);

      goto LABEL_32;
    }

    goto LABEL_6;
  }

LABEL_31:

  sub_1003A320C(&v53);

LABEL_32:

  return 0;
}

uint64_t sub_100398608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1004A6D34();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1003986D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_1000B3664(v5);
        sub_1000B3664(v7);
        v8 = static SearchKey.__derived_enum_equals(_:_:)(v5, v7);
        sub_1000B37D8(v7);
        sub_1000B37D8(v5);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100398790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 44);
      v6 = *(a2 + 40);
      if (v4 - v5 == *(a2 + 44) - v6)
      {
        v7 = 0;
        v25 = a2;
        do
        {
          v8 = *(v3 + v7 + 54);
          v9 = *(v3 + v7 + 52);
          v10 = *(v3 + v7 + 32);
          v11 = *(a2 + v7 + 54);
          v12 = *(a2 + v7 + 52);
          v13 = *(a2 + v7 + 32);
          if (*(v3 + v7 + 48) != *(a2 + v7 + 48) || v9 != v12 || v8 != v11 || v10 != v13)
          {
            v17 = v5;
            v26 = v4;
            swift_beginAccess();
            v18 = *(v10 + 24) + (v8 | (v9 << 8));
            swift_beginAccess();
            v19 = memcmp((v18 + v17), (*(v13 + 24) + (v11 | (v12 << 8)) + v6), v26 - v17);
            v3 = a1;
            a2 = v25;
            if (v19)
            {
              break;
            }
          }

          if (!--v2)
          {
            return 1;
          }

          v20 = v3 + v7;
          v21 = a2 + v7;
          v7 += 24;
          v22 = v20 + 64;
          v5 = *(v20 + 64);
          v4 = *(v22 + 4);
          v6 = *(v21 + 64);
        }

        while (v4 - v5 == *(v21 + 68) - v6);
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003988F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v35 = v2;
  v36 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v27 = *v5;
    v28 = v8;
    v9 = v5[3];
    v29 = v5[2];
    v30 = v9;
    v10 = v6[1];
    v31 = *v6;
    v32 = v10;
    v11 = v6[3];
    v33 = v6[2];
    v34 = v11;
    v12 = v28;
    v13 = *(&v29 + 1);
    v14 = *(&v30 + 1);
    v15 = v30;
    if (v29 > 0xFDu)
    {
      if (v29 == 255)
      {
        if (v33 != 0xFF)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 254)
      {
        if (v33 != 254)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v29 == 252)
      {
        if (v33 != 252)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 253)
      {
        if (v33 != 253)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    if (v33 > 0xFBu)
    {
      return 0;
    }

    v24 = *(&v33 + 1);
    v16 = *(&v34 + 1);
    v25 = v34;
    if ((v29 & 1) == 0)
    {
      if (v33)
      {
        return 0;
      }

      if (v27 == v31)
      {
        goto LABEL_28;
      }

LABEL_27:
      if ((sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    v17 = *(&v32 + 1);
    v18 = v32;
    if (v27 != v31)
    {
      v23 = *(&v32 + 1);
      v19 = sub_1004A6D34();
      v17 = v23;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v12 != __PAIR128__(v17, v18))
    {
      goto LABEL_27;
    }

LABEL_28:
    if (HIBYTE(v14) != 255)
    {
      break;
    }

    if (HIBYTE(v16) != 255)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v16) != 255)
  {
    if ((v14 & 0x100000000000000) != 0)
    {
      if ((v16 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1003A33A8(&v31, v26);
      sub_1003A33A8(&v27, v26);
      sub_1003A3378(v13, v15, v14);
      sub_1003A3378(v24, v25, v16);
      v21 = sub_100397AD8(v13, v24);
      sub_1003A3390(v24, v25, v16);
      sub_1003A3390(v13, v15, v14);
      sub_1003A3404(&v31);
      sub_1003A3404(&v27);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v16 & 0x100000000000000) != 0 || HIDWORD(v15) - v15 != HIDWORD(v25) - v25)
      {
        return 0;
      }

      if (v14 != v16 || WORD2(v14) != WORD2(v16) || BYTE6(v14) != BYTE6(v16) || v13 != v24)
      {
        swift_beginAccess();
        v20 = *(v13 + 24);
        swift_beginAccess();
        if (memcmp((v20 + (BYTE6(v14) | (WORD2(v14) << 8)) + v15), (*(v24 + 24) + (BYTE6(v16) | (WORD2(v16) << 8)) + v25), HIDWORD(v15) - v15))
        {
          return 0;
        }
      }
    }

    goto LABEL_43;
  }

LABEL_48:
  sub_1003A3378(v13, v15, v14);
  sub_1003A3378(v24, v25, v16);
  sub_1003A3390(v13, v15, v14);
  sub_1003A3390(v24, v25, v16);
  return 0;
}

uint64_t sub_100398C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95 - v6;
  v105 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v105);
  v9 = &v95 - v8;
  v10 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v10 - 8);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v107 = &v95 - v13;
  v112 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v112);
  v15 = &v95 - v14;
  v116 = type metadata accessor for ParameterValue(0);
  v16 = *(v116 - 8);
  __chkstk_darwin(v116);
  v106 = (&v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v111 = &v95 - v19;
  __chkstk_darwin(v20);
  v113 = &v95 - v21;
  v22 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v22 - 8);
  v117 = &v95 - v23;
  v115 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  __chkstk_darwin(v115);
  v118 = &v95 - v24;
  v114 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v114);
  v26 = (&v95 - v25);
  v121 = sub_10000C9C0(&qword_1005DBCB0, &qword_1004FE5C8);
  __chkstk_darwin(v121);
  v28 = &v95 - v27;
  Parameter = type metadata accessor for CreateParameter(0);
  __chkstk_darwin(Parameter);
  __chkstk_darwin(v29);
  v124 = &v95 - v30;
  __chkstk_darwin(v31);
  v125 = &v95 - v32;
  __chkstk_darwin(v33);
  v37 = &v95 - v35;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
    return 0;
  }

  if (!v38 || a1 == a2)
  {
    return 1;
  }

  v101 = v36;
  v95 = v7;
  v96 = v4;
  v97 = v9;
  v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v110 = a1 + v39;
  v108 = a2 + v39;
  v99 = (v16 + 48);
  v40 = 0;
  v41 = (v5 + 48);
  v109 = *(v34 + 72);
  v42 = v118;
  v43 = v124;
  v102 = v41;
  v100 = v28;
  v98 = v15;
  v104 = v26;
  v122 = &v95 - v35;
  v123 = v38;
  while (1)
  {
    v44 = v109 * v40;
    v45 = v37;
    result = sub_1003A3594(v110 + v109 * v40, v37, type metadata accessor for CreateParameter);
    if (v40 == v123)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v119 = v40;
    v47 = v125;
    sub_1003A3594(v108 + v44, v125, type metadata accessor for CreateParameter);
    v48 = *(v121 + 48);
    sub_1003A3594(v45, v28, type metadata accessor for CreateParameter);
    sub_1003A3594(v47, v28 + v48, type metadata accessor for CreateParameter);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v49 = v101;
    sub_1003A3594(v28, v101, type metadata accessor for CreateParameter);
    v50 = *v49;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1003A35FC(v125, type metadata accessor for CreateParameter);
      sub_1003A35FC(v122, type metadata accessor for CreateParameter);
      goto LABEL_60;
    }

    v51 = *(v28 + v48);
    v15 = *(v50 + 16);
    if (v15 != *(v51 + 16))
    {
LABEL_56:
      sub_1003A35FC(v125, type metadata accessor for CreateParameter);
      sub_1003A35FC(v122, type metadata accessor for CreateParameter);

      v88 = v100;
      goto LABEL_77;
    }

    if (v15 && v50 != v51)
    {
      v52 = 0;
      v53 = v50 + 40;
      v26 = (v51 + 40);
      while (v52 < *(v50 + 16))
      {
        if (v52 >= *(v51 + 16))
        {
          goto LABEL_68;
        }

        v28 = *v26;
        v54 = sub_1004A5814();
        v56 = v55;
        if (v54 == sub_1004A5814() && v56 == v57)
        {
        }

        else
        {
          v28 = sub_1004A6D34();

          if ((v28 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        ++v52;
        v53 += 16;
        v26 += 2;
        if (v15 == v52)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_100025F40(v107, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1003A35FC(v113, type metadata accessor for ParameterValue);
      sub_1003A35FC(v125, type metadata accessor for CreateParameter);
      sub_1003A35FC(v122, type metadata accessor for CreateParameter);
      sub_100025F40(v50, &qword_1005CDA68, &qword_1004CF7D0);
LABEL_70:
      v93 = &qword_1005DBC60;
      v94 = &qword_1004FE590;
LABEL_72:
      sub_100025F40(v97, v93, v94);
      sub_100025F40(v111, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1003A35FC(v15, type metadata accessor for ParameterValue);
      v43 = v124;
      goto LABEL_73;
    }

LABEL_5:
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);

    v28 = v100;
    v15 = v98;
    v26 = v104;
    v42 = v118;
    v43 = v124;
    v41 = v102;
LABEL_6:
    v40 = v119 + 1;
    sub_1003A35FC(v28, type metadata accessor for CreateParameter);
    v37 = v122;
    if (v40 == v123)
    {
      return 1;
    }
  }

  sub_1003A3594(v28, v43, type metadata accessor for CreateParameter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    sub_100025F40(v43, &qword_1005DBCA8, &unk_100504BF0);
LABEL_60:
    sub_100025F40(v28, &qword_1005DBCB0, &qword_1004FE5C8);
    return 0;
  }

  sub_100025FDC(v28 + v48, v26, &qword_1005DBCA8, &unk_100504BF0);
  if ((*v43 != *v26 || v43[1] != v26[1]) && (sub_1004A6D34() & 1) == 0)
  {
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    goto LABEL_76;
  }

  v59 = *(v114 + 52);
  v60 = *(v115 + 48);
  sub_10000E268(v43 + v59, v42, &qword_1005D7F50, &unk_100502FF0);
  sub_10000E268(v26 + v59, v42 + v60, &qword_1005D7F50, &unk_100502FF0);
  v61 = *v99;
  v62 = v116;
  if ((*v99)(v42, 1, v116) == 1)
  {
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    v63 = v61(v42 + v60, 1, v62);
    v41 = v102;
    v43 = v124;
    v26 = v104;
    if (v63 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

  sub_10000E268(v42, v117, &qword_1005D7F50, &unk_100502FF0);
  if (v61(v42 + v60, 1, v62) == 1)
  {
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    sub_1003A35FC(v117, type metadata accessor for ParameterValue);
    v43 = v124;
    v26 = v104;
LABEL_63:
    v90 = &qword_1005DBC70;
    v91 = &unk_100505A20;
    v92 = v42;
    goto LABEL_75;
  }

  v64 = v113;
  sub_1003A352C(v42 + v60, v113, type metadata accessor for ParameterValue);
  v65 = *(v112 + 48);
  sub_1003A3594(v117, v15, type metadata accessor for ParameterValue);
  sub_1003A3594(v64, &v15[v65], type metadata accessor for ParameterValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v124;
  if (EnumCaseMultiPayload != 1)
  {
    v74 = v111;
    sub_1003A3594(v15, v111, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v75 = v107;
      sub_100025FDC(&v15[v65], v107, &qword_1005CDA78, &unk_1004CF7E0);
      v76 = *(v105 + 48);
      v77 = v74;
      v78 = v75;
      v79 = v97;
      sub_10000E268(v77, v97, &qword_1005CDA78, &unk_1004CF7E0);
      sub_10000E268(v75, v79 + v76, &qword_1005CDA78, &unk_1004CF7E0);
      v80 = *v41;
      v81 = v79;
      v82 = v96;
      v83 = (*v41)(v81, 1, v96);
      v26 = v104;
      if (v83 == 1)
      {
        sub_100025F40(v78, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v113, type metadata accessor for ParameterValue);
        sub_1003A35FC(v125, type metadata accessor for CreateParameter);
        sub_1003A35FC(v122, type metadata accessor for CreateParameter);
        if (v80(&v97[v76], 1, v82) != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v84 = v97;
        v50 = v103;
        sub_10000E268(v97, v103, &qword_1005CDA78, &unk_1004CF7E0);
        if (v80(v84 + v76, 1, v82) == 1)
        {
          goto LABEL_69;
        }

        v85 = v95;
        sub_100025FDC(&v97[v76], v95, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100016D2C();
        v86 = v50;
        v87 = sub_1004A7034();
        sub_100025F40(v85, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100025F40(v107, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v113, type metadata accessor for ParameterValue);
        sub_1003A35FC(v125, type metadata accessor for CreateParameter);
        sub_1003A35FC(v122, type metadata accessor for CreateParameter);
        sub_100025F40(v86, &qword_1005CDA68, &qword_1004CF7D0);
        if ((v87 & 1) == 0)
        {
          v93 = &qword_1005CDA78;
          v94 = &unk_1004CF7E0;
          goto LABEL_72;
        }
      }

      sub_100025F40(v97, &qword_1005CDA78, &unk_1004CF7E0);
      sub_100025F40(v111, &qword_1005CDA78, &unk_1004CF7E0);
      v43 = v124;
      v42 = v118;
      goto LABEL_53;
    }

    sub_1003A35FC(v113, type metadata accessor for ParameterValue);
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    sub_100025F40(v74, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_66:
    v26 = v104;
    sub_100025F40(v15, &qword_1005DBC68, &qword_1004FE598);
LABEL_73:
    v89 = v118;
    goto LABEL_74;
  }

  v67 = v106;
  sub_1003A3594(v15, v106, type metadata accessor for ParameterValue);
  v68 = *v67;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1003A35FC(v113, type metadata accessor for ParameterValue);
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);
    goto LABEL_66;
  }

  v69 = *&v15[v65];
  v70 = *(v68 + 16);
  v26 = v104;
  if (v70 != *(v69 + 16))
  {
    goto LABEL_57;
  }

  if (!v70 || v68 == v69)
  {
LABEL_49:
    sub_1003A35FC(v113, type metadata accessor for ParameterValue);
    sub_1003A35FC(v125, type metadata accessor for CreateParameter);
    sub_1003A35FC(v122, type metadata accessor for CreateParameter);

    v42 = v118;
    v43 = v124;
    v41 = v102;
LABEL_53:
    sub_1003A35FC(v15, type metadata accessor for ParameterValue);
    sub_1003A35FC(v117, type metadata accessor for ParameterValue);
LABEL_54:
    sub_100025F40(v42, &qword_1005D7F50, &unk_100502FF0);
    sub_100025F40(v26, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v43, &qword_1005DBCA8, &unk_100504BF0);
    goto LABEL_6;
  }

  v71 = (v68 + 40);
  v72 = (v69 + 40);
  while (1)
  {
    v73 = *(v71 - 1) == *(v72 - 1) && *v71 == *v72;
    if (!v73 && (sub_1004A6D34() & 1) == 0)
    {
      break;
    }

    v71 += 2;
    v72 += 2;
    if (!--v70)
    {
      goto LABEL_49;
    }
  }

LABEL_57:
  sub_1003A35FC(v113, type metadata accessor for ParameterValue);
  sub_1003A35FC(v125, type metadata accessor for CreateParameter);
  sub_1003A35FC(v122, type metadata accessor for CreateParameter);

  sub_1003A35FC(v15, type metadata accessor for ParameterValue);
  v89 = v118;
  v43 = v124;
LABEL_74:
  sub_1003A35FC(v117, type metadata accessor for ParameterValue);
  v90 = &qword_1005D7F50;
  v91 = &unk_100502FF0;
  v92 = v89;
LABEL_75:
  sub_100025F40(v92, v90, v91);
LABEL_76:
  sub_100025F40(v26, &qword_1005DBCA8, &unk_100504BF0);
  sub_100025F40(v43, &qword_1005DBCA8, &unk_100504BF0);
  v88 = v28;
LABEL_77:
  sub_1003A35FC(v88, type metadata accessor for CreateParameter);
  return 0;
}

uint64_t sub_100399F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v102 - v9;
  v111 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v111);
  v113 = &v102 - v11;
  v12 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v12 - 8);
  v110 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v102 - v15;
  v116 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v116);
  v117 = &v102 - v16;
  v127 = type metadata accessor for ParameterValue(0);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v112 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v115 = &v102 - v19;
  __chkstk_darwin(v20);
  v118 = &v102 - v21;
  v22 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v22 - 8);
  v119 = &v102 - v23;
  v121 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  __chkstk_darwin(v121);
  v123 = &v102 - v24;
  v120 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v120);
  v128 = (&v102 - v25);
  v130 = sub_10000C9C0(&qword_1005DBCB8, &qword_1004FE5D0);
  __chkstk_darwin(v130);
  v27 = &v102 - v26;
  v129 = type metadata accessor for SelectParameter(0);
  __chkstk_darwin(v129);
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v31 = &v102 - v30;
  __chkstk_darwin(v32);
  v37 = &v102 - v36;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
    return 0;
  }

  if (!v38 || a1 == a2)
  {
    return 1;
  }

  v107 = v6;
  v108 = v35;
  v122 = v34;
  v102 = v10;
  v104 = v7;
  v39 = 0;
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v126 = a1 + v40;
  v124 = a2 + v40;
  v106 = (v125 + 48);
  v103 = (v8 + 48);
  v125 = *(v33 + 72);
  v109 = v31;
  while (1)
  {
    v41 = v125 * v39;
    result = sub_1003A3594(v126 + v125 * v39, v37, type metadata accessor for SelectParameter);
    if (v39 == v38)
    {
      break;
    }

    sub_1003A3594(v124 + v41, v31, type metadata accessor for SelectParameter);
    v43 = *(v130 + 48);
    sub_1003A3594(v37, v27, type metadata accessor for SelectParameter);
    sub_1003A3594(v31, &v27[v43], type metadata accessor for SelectParameter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = v37;
        v46 = v108;
        sub_1003A3594(v27, v108, type metadata accessor for SelectParameter);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1003A35FC(v46, type metadata accessor for QResyncParameter);
LABEL_49:
          sub_100025F40(v27, &qword_1005DBCB8, &qword_1004FE5D0);
          goto LABEL_62;
        }

        v47 = v107;
        sub_1003A352C(&v27[v43], v107, type metadata accessor for QResyncParameter);
        _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v48);
        v50 = v49;
        sub_1003A35FC(v47, type metadata accessor for QResyncParameter);
        sub_1003A35FC(v46, type metadata accessor for QResyncParameter);
        v37 = v45;
        if ((v50 & 1) == 0)
        {
          sub_1003A35FC(v27, type metadata accessor for SelectParameter);
          goto LABEL_62;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v51 = v127;
      v52 = v122;
      sub_1003A3594(v27, v122, type metadata accessor for SelectParameter);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = v123;
      if (v53)
      {
        sub_100025F40(v52, &qword_1005DBCA8, &unk_100504BF0);
        v31 = v109;
        goto LABEL_49;
      }

      v55 = v128;
      sub_100025FDC(&v27[v43], v128, &qword_1005DBCA8, &unk_100504BF0);
      if (*v52 != *v55 || (v56 = v52, v52[1] != v55[1]))
      {
        v57 = sub_1004A6D34();
        v56 = v122;
        if ((v57 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v58 = *(v120 + 52);
      v59 = *(v121 + 48);
      sub_10000E268(v56 + v58, v54, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v128 + v58, v54 + v59, &qword_1005D7F50, &unk_100502FF0);
      v60 = *v106;
      if ((*v106)(v54, 1, v51) == 1)
      {
        v61 = v60(v54 + v59, 1, v127);
        v31 = v109;
        if (v61 != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v62 = v54;
        v63 = v54;
        v64 = v119;
        sub_10000E268(v62, v119, &qword_1005D7F50, &unk_100502FF0);
        if (v60(v63 + v59, 1, v127) == 1)
        {
          sub_1003A35FC(v64, type metadata accessor for ParameterValue);
          v54 = v63;
LABEL_51:
          v96 = &qword_1005DBC70;
          v97 = &unk_100505A20;
          v98 = v54;
          goto LABEL_60;
        }

        v65 = v63 + v59;
        v66 = v118;
        sub_1003A352C(v65, v118, type metadata accessor for ParameterValue);
        v67 = v117;
        v68 = *(v116 + 48);
        sub_1003A3594(v64, v117, type metadata accessor for ParameterValue);
        sub_1003A3594(v66, v67 + v68, type metadata accessor for ParameterValue);
        v69 = swift_getEnumCaseMultiPayload();
        v31 = v109;
        if (v69 == 1)
        {
          v70 = v112;
          sub_1003A3594(v67, v112, type metadata accessor for ParameterValue);
          v71 = *v70;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

LABEL_54:
            sub_100025F40(v67, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_59;
          }

          v72 = *(v67 + v68);
          v73 = *(v71 + 16);
          if (v73 != *(v72 + 16))
          {
            goto LABEL_46;
          }

          if (v73 && v71 != v72)
          {
            v74 = (v71 + 40);
            v75 = (v72 + 40);
            while (1)
            {
              v76 = *(v74 - 1) == *(v75 - 1) && *v74 == *v75;
              if (!v76 && (sub_1004A6D34() & 1) == 0)
              {
                break;
              }

              v74 += 2;
              v75 += 2;
              if (!--v73)
              {
                goto LABEL_39;
              }
            }

LABEL_46:

            v95 = v117;
            goto LABEL_58;
          }

LABEL_39:

          v89 = v117;
          v31 = v109;
        }

        else
        {
          v77 = v115;
          sub_1003A3594(v67, v115, type metadata accessor for ParameterValue);
          v78 = swift_getEnumCaseMultiPayload();
          v79 = v113;
          if (v78 == 1)
          {
            sub_100025F40(v77, &qword_1005CDA78, &unk_1004CF7E0);
            goto LABEL_54;
          }

          v80 = v67 + v68;
          v81 = v77;
          v82 = v114;
          sub_100025FDC(v80, v114, &qword_1005CDA78, &unk_1004CF7E0);
          v83 = *(v111 + 48);
          sub_10000E268(v81, v79, &qword_1005CDA78, &unk_1004CF7E0);
          v105 = v83;
          sub_10000E268(v82, v79 + v83, &qword_1005CDA78, &unk_1004CF7E0);
          v84 = *v103;
          v85 = v79;
          v86 = v79;
          v87 = v104;
          if ((*v103)(v85, 1, v104) == 1)
          {
            v76 = v84(v86 + v105, 1, v87) == 1;
            v88 = v86;
            v89 = v117;
            v90 = v115;
            if (!v76)
            {
              goto LABEL_56;
            }

            sub_100025F40(v88, &qword_1005CDA78, &unk_1004CF7E0);
          }

          else
          {
            sub_10000E268(v86, v110, &qword_1005CDA78, &unk_1004CF7E0);
            if (v84(v86 + v105, 1, v87) == 1)
            {
              sub_100025F40(v110, &qword_1005CDA68, &qword_1004CF7D0);
              v88 = v86;
              v89 = v117;
              v90 = v115;
LABEL_56:
              sub_100025F40(v88, &qword_1005DBC60, &qword_1004FE590);
LABEL_57:
              sub_100025F40(v114, &qword_1005CDA78, &unk_1004CF7E0);
              sub_100025F40(v90, &qword_1005CDA78, &unk_1004CF7E0);
              v95 = v89;
LABEL_58:
              sub_1003A35FC(v95, type metadata accessor for ParameterValue);
LABEL_59:
              v99 = v119;
              v100 = v123;
              sub_1003A35FC(v118, type metadata accessor for ParameterValue);
              sub_1003A35FC(v99, type metadata accessor for ParameterValue);
              v96 = &qword_1005D7F50;
              v97 = &unk_100502FF0;
              v98 = v100;
LABEL_60:
              sub_100025F40(v98, v96, v97);
              v56 = v122;
LABEL_61:
              v101 = v56;
              sub_100025F40(v128, &qword_1005DBCA8, &unk_100504BF0);
              sub_100025F40(v101, &qword_1005DBCA8, &unk_100504BF0);
              sub_1003A35FC(v27, type metadata accessor for SelectParameter);
              v31 = v109;
LABEL_62:
              sub_1003A35FC(v31, type metadata accessor for SelectParameter);
              sub_1003A35FC(v37, type metadata accessor for SelectParameter);
              return 0;
            }

            v91 = v86 + v105;
            v92 = v102;
            sub_100025FDC(v91, v102, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v93 = v110;
            v94 = sub_1004A7034();
            sub_100025F40(v92, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v93, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v113, &qword_1005CDA78, &unk_1004CF7E0);
            v89 = v117;
            v90 = v115;
            if ((v94 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          sub_100025F40(v114, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v90, &qword_1005CDA78, &unk_1004CF7E0);
        }

        sub_1003A35FC(v89, type metadata accessor for ParameterValue);
        sub_1003A35FC(v118, type metadata accessor for ParameterValue);
        sub_1003A35FC(v119, type metadata accessor for ParameterValue);
        v54 = v123;
      }

      sub_100025F40(v54, &qword_1005D7F50, &unk_100502FF0);
      sub_100025F40(v128, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v122, &qword_1005DBCA8, &unk_100504BF0);
    }

    ++v39;
    sub_1003A35FC(v27, type metadata accessor for SelectParameter);
    sub_1003A35FC(v31, type metadata accessor for SelectParameter);
    sub_1003A35FC(v37, type metadata accessor for SelectParameter);
    if (v39 == v38)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10039AE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24 = *v5;
    v25 = v8;
    v9 = v5[3];
    v26 = v5[2];
    v27 = v9;
    v10 = v6[1];
    v28 = *v6;
    v29 = v10;
    v11 = v6[3];
    v30 = v6[2];
    v31 = v11;
    if (v26 == 254)
    {
      if (v30 != 254)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v26 == 255)
    {
      if (v30 != 0xFF)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v30 > 0xFDu)
    {
      return 0;
    }

    v12 = *(&v27 + 1);
    v13 = v27;
    v20 = *(&v26 + 1);
    v21 = *(&v30 + 1);
    v14 = *(&v31 + 1);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      if (v30)
      {
        return 0;
      }

      if (v24 == v28)
      {
        goto LABEL_21;
      }

LABEL_20:
      if ((sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    v15 = v25;
    v16 = v29;
    if (v24 != v28 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (HIBYTE(v12) != 255)
    {
      break;
    }

    if (HIBYTE(v14) != 255)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v14) != 255)
  {
    if ((v12 & 0x100000000000000) != 0)
    {
      if ((v14 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1003A347C(&v28, v23);
      sub_1003A347C(&v24, v23);
      sub_1003A3378(v20, v13, v12);
      sub_1003A3378(v21, v22, v14);
      v18 = sub_100397AD8(v20, v21);
      sub_1003A3390(v21, v22, v14);
      sub_1003A3390(v20, v13, v12);
      sub_1003A34D8(&v28);
      sub_1003A34D8(&v24);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v14 & 0x100000000000000) != 0 || HIDWORD(v13) - v13 != HIDWORD(v22) - v22)
      {
        return 0;
      }

      if (v12 != v14 || WORD2(v12) != WORD2(v14) || BYTE6(v12) != BYTE6(v14) || v20 != v21)
      {
        swift_beginAccess();
        v17 = *(v20 + 24);
        swift_beginAccess();
        if (memcmp((v17 + (BYTE6(v12) | (WORD2(v12) << 8)) + v13), (*(v21 + 24) + (BYTE6(v14) | (WORD2(v14) << 8)) + v22), HIDWORD(v13) - v13))
        {
          return 0;
        }
      }
    }

    goto LABEL_36;
  }

LABEL_41:
  sub_1003A3378(v20, v13, v12);
  sub_1003A3378(v21, v22, v14);
  sub_1003A3390(v20, v13, v12);
  sub_1003A3390(v21, v22, v14);
  return 0;
}

uint64_t sub_10039B220(uint64_t a1, uint64_t a2)
{
  v103 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v118 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v91 - v4;
  v101 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v101);
  v104 = &v91 - v5;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v6 - 8);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v91 - v9;
  v107 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v107);
  v11 = &v91 - v10;
  v115 = type metadata accessor for ParameterValue(0);
  v12 = *(v115 - 8);
  __chkstk_darwin(v115);
  v102 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v106 = &v91 - v15;
  __chkstk_darwin(v16);
  v109 = &v91 - v17;
  v18 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v91 - v19;
  v114 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  __chkstk_darwin(v114);
  v117 = &v91 - v21;
  v113 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v113);
  v121 = (&v91 - v22);
  v120 = sub_10000C9C0(&qword_1005DBCC0, &qword_1004FE5D8);
  __chkstk_darwin(v120);
  v24 = &v91 - v23;
  v119 = type metadata accessor for StoreModifier(0);
  __chkstk_darwin(v119);
  v26 = (&v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  __chkstk_darwin(v31);
  v35 = &v91 - v33;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
    return 0;
  }

  v116 = *(a1 + 16);
  if (!v36 || a1 == a2)
  {
    return 1;
  }

  v93 = v11;
  v98 = v34;
  v94 = v20;
  v37 = 0;
  v38 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v112 = a1 + v38;
  v110 = a2 + v38;
  v97 = (v12 + 48);
  v91 = (v118 + 48);
  v111 = *(v32 + 72);
  v118 = &v91 - v33;
  v39 = v116;
  v92 = v26;
  v96 = v24;
  v95 = v30;
  while (1)
  {
    v43 = v111 * v37;
    result = sub_1003A3594(v112 + v111 * v37, v35, type metadata accessor for StoreModifier);
    if (v37 == v39)
    {
      break;
    }

    sub_1003A3594(v110 + v43, v30, type metadata accessor for StoreModifier);
    v45 = *(v120 + 48);
    sub_1003A3594(v35, v24, type metadata accessor for StoreModifier);
    sub_1003A3594(v30, &v24[v45], type metadata accessor for StoreModifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v26;
      sub_1003A3594(v24, v26, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1003A35FC(v30, type metadata accessor for StoreModifier);
        sub_1003A35FC(v118, type metadata accessor for StoreModifier);
        sub_100025F40(v26, &qword_1005DBCA8, &unk_100504BF0);
LABEL_45:
        sub_100025F40(v24, &qword_1005DBCC0, &qword_1004FE5D8);
        return 0;
      }

      v46 = v121;
      sub_100025FDC(&v24[v45], v121, &qword_1005DBCA8, &unk_100504BF0);
      if ((*v26 != *v46 || v26[1] != v46[1]) && (sub_1004A6D34() & 1) == 0)
      {
        sub_1003A35FC(v30, type metadata accessor for StoreModifier);
        sub_1003A35FC(v118, type metadata accessor for StoreModifier);
LABEL_55:
        sub_100025F40(v121, &qword_1005DBCA8, &unk_100504BF0);
        sub_100025F40(v42, &qword_1005DBCA8, &unk_100504BF0);
LABEL_56:
        sub_1003A35FC(v24, type metadata accessor for StoreModifier);
        return 0;
      }

      v108 = v37;
      v47 = *(v113 + 52);
      v48 = *(v114 + 48);
      v49 = v117;
      v50 = v26;
      sub_10000E268(v26 + v47, v117, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v121 + v47, v49 + v48, &qword_1005D7F50, &unk_100502FF0);
      v51 = *v97;
      v52 = v115;
      if ((*v97)(v49, 1, v115) == 1)
      {
        v40 = v95;
        sub_1003A35FC(v95, type metadata accessor for StoreModifier);
        sub_1003A35FC(v118, type metadata accessor for StoreModifier);
        v41 = v51(v49 + v48, 1, v52);
        v30 = v40;
        v24 = v96;
        v42 = v50;
        if (v41 != 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v53 = v94;
        sub_10000E268(v49, v94, &qword_1005D7F50, &unk_100502FF0);
        if (v51(v49 + v48, 1, v52) == 1)
        {
          sub_1003A35FC(v95, type metadata accessor for StoreModifier);
          sub_1003A35FC(v118, type metadata accessor for StoreModifier);
          sub_1003A35FC(v53, type metadata accessor for ParameterValue);
          v42 = v92;
          v24 = v96;
LABEL_48:
          v85 = &qword_1005DBC70;
          v86 = &unk_100505A20;
          goto LABEL_54;
        }

        v54 = v49 + v48;
        v55 = v109;
        sub_1003A352C(v54, v109, type metadata accessor for ParameterValue);
        v56 = *(v107 + 48);
        v57 = v53;
        v58 = v93;
        sub_1003A3594(v57, v93, type metadata accessor for ParameterValue);
        sub_1003A3594(v55, v58 + v56, type metadata accessor for ParameterValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = v95;
        v24 = v96;
        if (EnumCaseMultiPayload == 1)
        {
          v60 = v102;
          sub_1003A3594(v58, v102, type metadata accessor for ParameterValue);
          v61 = *v60;
          v62 = swift_getEnumCaseMultiPayload();
          v42 = v92;
          if (v62 != 1)
          {

            sub_1003A35FC(v109, type metadata accessor for ParameterValue);
            sub_1003A35FC(v30, type metadata accessor for StoreModifier);
            sub_1003A35FC(v118, type metadata accessor for StoreModifier);
            goto LABEL_51;
          }

          v63 = *(v58 + v56);
          v64 = *(v61 + 16);
          if (v64 != *(v63 + 16))
          {
            goto LABEL_43;
          }

          if (v64 && v61 != v63)
          {
            v65 = (v61 + 40);
            v66 = (v63 + 40);
            while (1)
            {
              v67 = *(v65 - 1) == *(v66 - 1) && *v65 == *v66;
              if (!v67 && (sub_1004A6D34() & 1) == 0)
              {
                break;
              }

              v65 += 2;
              v66 += 2;
              if (!--v64)
              {
                goto LABEL_37;
              }
            }

LABEL_43:
            sub_1003A35FC(v109, type metadata accessor for ParameterValue);
            sub_1003A35FC(v30, type metadata accessor for StoreModifier);
            sub_1003A35FC(v118, type metadata accessor for StoreModifier);

            sub_1003A35FC(v93, type metadata accessor for ParameterValue);
LABEL_52:
            v87 = v94;
            v49 = v117;
LABEL_53:
            sub_1003A35FC(v87, type metadata accessor for ParameterValue);
            v85 = &qword_1005D7F50;
            v86 = &unk_100502FF0;
LABEL_54:
            sub_100025F40(v49, v85, v86);
            goto LABEL_55;
          }

LABEL_37:
          sub_1003A35FC(v109, type metadata accessor for ParameterValue);
          sub_1003A35FC(v30, type metadata accessor for StoreModifier);
          sub_1003A35FC(v118, type metadata accessor for StoreModifier);

          v81 = v93;
          v49 = v117;
        }

        else
        {
          v71 = v106;
          sub_1003A3594(v58, v106, type metadata accessor for ParameterValue);
          v72 = swift_getEnumCaseMultiPayload();
          v73 = v103;
          v74 = v104;
          v75 = v91;
          if (v72 == 1)
          {
            sub_1003A35FC(v109, type metadata accessor for ParameterValue);
            sub_1003A35FC(v30, type metadata accessor for StoreModifier);
            sub_1003A35FC(v118, type metadata accessor for StoreModifier);
            sub_100025F40(v71, &qword_1005CDA78, &unk_1004CF7E0);
            v42 = v92;
LABEL_51:
            sub_100025F40(v58, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_52;
          }

          v76 = v58 + v56;
          v77 = v105;
          sub_100025FDC(v76, v105, &qword_1005CDA78, &unk_1004CF7E0);
          v78 = *(v101 + 48);
          sub_10000E268(v71, v74, &qword_1005CDA78, &unk_1004CF7E0);
          sub_10000E268(v77, v74 + v78, &qword_1005CDA78, &unk_1004CF7E0);
          v79 = *v75;
          if ((*v75)(v74, 1, v73) == 1)
          {
            sub_100025F40(v77, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v109, type metadata accessor for ParameterValue);
            sub_1003A35FC(v30, type metadata accessor for StoreModifier);
            sub_1003A35FC(v118, type metadata accessor for StoreModifier);
            v67 = v79(v74 + v78, 1, v73) == 1;
            v80 = v74;
            v49 = v117;
            if (!v67)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v82 = v100;
            sub_10000E268(v74, v100, &qword_1005CDA78, &unk_1004CF7E0);
            if (v79(v74 + v78, 1, v73) == 1)
            {
              sub_100025F40(v105, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v109, type metadata accessor for ParameterValue);
              sub_1003A35FC(v30, type metadata accessor for StoreModifier);
              sub_1003A35FC(v118, type metadata accessor for StoreModifier);
              sub_100025F40(v82, &qword_1005CDA68, &qword_1004CF7D0);
              v80 = v74;
              v49 = v117;
LABEL_59:
              v88 = &qword_1005DBC60;
              v89 = &qword_1004FE590;
              goto LABEL_61;
            }

            v83 = v99;
            sub_100025FDC(v74 + v78, v99, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v84 = sub_1004A7034();
            sub_100025F40(v83, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v105, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v109, type metadata accessor for ParameterValue);
            sub_1003A35FC(v30, type metadata accessor for StoreModifier);
            sub_1003A35FC(v118, type metadata accessor for StoreModifier);
            sub_100025F40(v82, &qword_1005CDA68, &qword_1004CF7D0);
            v80 = v74;
            v49 = v117;
            if ((v84 & 1) == 0)
            {
              v88 = &qword_1005CDA78;
              v89 = &unk_1004CF7E0;
LABEL_61:
              sub_100025F40(v80, v88, v89);
              v90 = v93;
              sub_100025F40(v106, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v90, type metadata accessor for ParameterValue);
              v87 = v94;
              v42 = v92;
              goto LABEL_53;
            }
          }

          sub_100025F40(v80, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v106, &qword_1005CDA78, &unk_1004CF7E0);
          v42 = v92;
          v81 = v93;
        }

        sub_1003A35FC(v81, type metadata accessor for ParameterValue);
        sub_1003A35FC(v94, type metadata accessor for ParameterValue);
        v39 = v116;
      }

      sub_100025F40(v49, &qword_1005D7F50, &unk_100502FF0);
      sub_100025F40(v121, &qword_1005DBCA8, &unk_100504BF0);
      v26 = v42;
      sub_100025F40(v42, &qword_1005DBCA8, &unk_100504BF0);
      v37 = v108;
    }

    else
    {
      sub_1003A35FC(v30, type metadata accessor for StoreModifier);
      sub_1003A35FC(v35, type metadata accessor for StoreModifier);
      v68 = v98;
      sub_1003A3594(v24, v98, type metadata accessor for StoreModifier);
      v69 = *v68;
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        goto LABEL_45;
      }

      v70 = *&v24[v45];
      v39 = v116;
      if ((v70 | v69) < 0)
      {
        goto LABEL_63;
      }

      if (v70 != v69)
      {
        goto LABEL_56;
      }
    }

    ++v37;
    sub_1003A35FC(v24, type metadata accessor for StoreModifier);
    v35 = v118;
    if (v37 == v39)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10039C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1004A6D34();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10039C440(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v27 = *v5;
    v28[0] = v8;
    *&v28[1] = *(v5 + 4);
    v9 = v27;
    v10 = DWORD2(v27);
    v11 = HIDWORD(v27);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v29 = *v6;
    *v30 = v15;
    *&v30[16] = *(v6 + 4);
    v16 = DWORD2(v29);
    if (HIDWORD(v27) - DWORD2(v27) != HIDWORD(v29) - DWORD2(v29))
    {
      break;
    }

    v24 = v5;
    v25 = v7;
    v17 = v29;
    v18 = *&v30[4];
    v19 = v30[6];
    if (v12 == *v30 && v13 == *&v30[4] && v14 == v30[6] && v27 == v29)
    {
      sub_1003A365C(&v27, v26);
      sub_1003A365C(&v29, v26);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1003A365C(&v27, v26);
      sub_1003A365C(&v29, v26);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        sub_1003A36B8(&v29);
        sub_1003A36B8(&v27);
        return 0;
      }
    }

    if (*(v28 + 8) == *&v30[8])
    {
      sub_1003A36B8(&v29);
      sub_1003A36B8(&v27);
    }

    else
    {
      v22 = sub_1004A6D34();
      sub_1003A36B8(&v29);
      sub_1003A36B8(&v27);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v25)
    {
      return 1;
    }

    v7 = v25 - 1;
    v6 = (v6 + 40);
    v5 = (v24 + 40);
  }

  return 0;
}

uint64_t sub_10039C650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v11 = *(v4 - 2);
      v10 = *(v4 - 1);
      v12 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
      v13 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
      v15 = *(v3 - 2);
      v14 = *(v3 - 1);
      v16 = BYTE6(v12);
      if (v11 < 0)
      {
        if ((v15 & 0x8000000000000000) == 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
        v22 = v15 & 0x7FFFFFFFFFFFFFFFLL;
        v23 = BYTE6(v13);
        if (*v4 != *v3 || (*(v4 + 2) == *(v3 + 2) ? (v24 = BYTE6(v12) == BYTE6(v13)) : (v24 = 0), v24 ? (v25 = v21 == v22) : (v25 = 0), !v25))
        {
          v26 = v10;
          v31 = HIDWORD(v13) & 0xFFFFFF;
          v33 = HIDWORD(v10);
          v27 = *(v4 + 2);
          swift_beginAccess();
          v28 = *(v21 + 24) + v26;
          v7 = v33 - v26;
          swift_beginAccess();
          v8 = (*(v22 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v31 << 8)) + v14);
          v9 = (v28 + (v16 & 0xFFFFFFFFFF0000FFLL | (v27 << 8)));
LABEL_6:
          if (memcmp(v9, v8, v7))
          {
            return 0;
          }
        }
      }

      else
      {
        if (v15 < 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v17 = HIDWORD(v13) & 0xFFFFFF;
        v18 = BYTE6(v13);
        if (*v4 != *v3 || (*(v4 + 2) == *(v3 + 2) ? (v19 = BYTE6(v12) == BYTE6(v13)) : (v19 = 0), v19 ? (v20 = v11 == v15) : (v20 = 0), !v20))
        {
          v5 = v10;
          v30 = HIDWORD(v12) & 0xFFFFFF;
          v32 = HIDWORD(v10);
          swift_beginAccess();
          v6 = *(v11 + 24) + v5;
          v7 = v32 - v5;
          swift_beginAccess();
          v8 = (*(v15 + 24) + (v18 & 0xFFFFFFFFFF0000FFLL | (v17 << 8)) + v14);
          v9 = (v6 + (v16 & 0xFFFFFFFFFF0000FFLL | (v30 << 8)));
          goto LABEL_6;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10039C870(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
    return 0;
  }

  if (!v3 || v1 == v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = v1 + 32;
  v6 = v2 + 32;
  v263 = *(v1 + 16);
  v264 = v2 + 32;
  v265 = v1 + 32;
  while (1)
  {
    v266 = v4;
    v7 = 184 * v4;
    v8 = v5 + v7;
    v9 = *(v5 + v7 + 144);
    v10 = *(v5 + v7 + 112);
    v386 = *(v5 + v7 + 128);
    v387 = v9;
    v11 = *(v5 + v7 + 144);
    v388 = *(v5 + v7 + 160);
    v12 = *(v5 + v7 + 80);
    v13 = *(v5 + v7 + 48);
    v382 = *(v5 + v7 + 64);
    v383 = v12;
    v14 = *(v5 + v7 + 80);
    v15 = *(v5 + v7 + 112);
    v384 = *(v5 + v7 + 96);
    v385 = v15;
    v16 = *(v5 + v7 + 16);
    v379[0] = *(v5 + v7);
    v379[1] = v16;
    v17 = *(v5 + v7 + 48);
    v19 = *(v5 + v7);
    v18 = *(v5 + v7 + 16);
    v380 = *(v5 + v7 + 32);
    v381 = v17;
    v20 = (v6 + v7);
    v21 = v20[9];
    v398 = v20[8];
    v399 = v21;
    v400 = v20[10];
    v22 = v20[5];
    v394 = v20[4];
    v395 = v22;
    v23 = v20[7];
    v396 = v20[6];
    v397 = v23;
    v24 = v20[1];
    v390 = *v20;
    v391 = v24;
    v25 = v20[3];
    v392 = v20[2];
    v393 = v25;
    v402[8] = v386;
    v402[9] = v11;
    v402[10] = *(v8 + 160);
    v402[4] = v382;
    v402[5] = v14;
    v402[6] = v384;
    v402[7] = v10;
    v402[0] = v19;
    v402[1] = v18;
    v389 = *(v8 + 176);
    v401 = *(v20 + 176);
    v403 = *(v8 + 176);
    v402[2] = v380;
    v402[3] = v13;
    if (sub_10000FE88(v402) == 1)
    {
      v26 = UInt32.init(_:)(v402);
      *&v357[128] = v398;
      *&v357[144] = v399;
      *&v357[160] = v400;
      v357[176] = v401;
      *&v357[64] = v394;
      *&v357[80] = v395;
      *&v357[96] = v396;
      *&v357[112] = v397;
      *v357 = v390;
      *&v357[16] = v391;
      *&v357[32] = v392;
      *&v357[48] = v393;
      if (sub_10000FE88(v357) != 1)
      {
        UInt32.init(_:)(v357);
        return 0;
      }

      v27 = UInt32.init(_:)(v357);
      v28 = *v26;
      sub_1000510B4(&v390, __dst);
      sub_1000510B4(v379, __dst);
      if ((sub_10039C870(v28) & 1) == 0 || (v26[1] != v27[1] || v26[2] != v27[2]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }

      v29 = v26[3];
      v30 = v26[4];
      v31 = v26 + 3;
      v34 = v27[3];
      v33 = (v27 + 3);
      v32 = v34;
      v35 = v31[2];
      v36 = v31[4];
      v37 = v31[5];
      v335 = v31[3];
      v336 = v36;
      v337 = v37;
      v38 = v31[1];
      v334 = v35;
      v333 = v38;
      v39 = *(v33 + 8);
      v40 = *(v33 + 16);
      v41 = *(v33 + 32);
      v42 = *(v33 + 48);
      v43 = *(v33 + 64);
      v325 = *(v33 + 80);
      v324 = v43;
      v323 = v42;
      v321 = v40;
      v322 = v41;
      if (v30)
      {
        v44 = v31[2];
        v45 = v31[4];
        v46 = v31[5];
        v303 = v31[3];
        v304 = v45;
        v305 = v46;
        v301 = v31[1];
        v302 = v44;
        if (!v39)
        {
          goto LABEL_214;
        }

        *&v359 = v32;
        *(&v359 + 1) = v39;
        v360 = v321;
        v361 = v322;
        v362 = v323;
        v363 = v324;
        v364 = v325;
        v371 = v359;
        *v372 = v321;
        *&v372[64] = v325;
        *&v372[48] = v324;
        *&v372[32] = v323;
        *&v372[16] = v322;
        *&v313 = v29;
        *(&v313 + 1) = v30;
        *&v314[48] = v304;
        *&v314[64] = v305;
        *&v314[16] = v302;
        *&v314[32] = v303;
        *v314 = v301;
        v47 = *(v30 + 16);
        if (v47 != *(v39 + 16))
        {
          goto LABEL_208;
        }

        v48 = *v314;
        v49 = *v372;
        if (v47 && v39 != v30)
        {
          v50 = (v30 + 40);
          v51 = (v39 + 40);
          while (1)
          {
            v52 = *(v50 - 1) == *(v51 - 1) && *v50 == *v51;
            if (!v52 && (sub_1004A6D34() & 1) == 0)
            {
              break;
            }

            v50 += 2;
            v51 += 2;
            if (!--v47)
            {
              goto LABEL_41;
            }
          }

LABEL_208:
          sub_10000E268(v31, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v33, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
LABEL_209:
          sub_100025F40(&v359, &qword_1005DBCC8, &qword_1004FE5E0);
LABEL_210:
          *__dst = v29;
          *&__dst[8] = v30;
          *&__dst[48] = v335;
          *&__dst[64] = v336;
          *&__dst[80] = v337;
          *&__dst[16] = v333;
          *&__dst[32] = v334;
          v235 = &qword_1005DBCC8;
          v236 = &qword_1004FE5E0;
LABEL_211:
          sub_100025F40(__dst, v235, v236);
          goto LABEL_230;
        }

LABEL_41:
        v3 = v263;
        if ((sub_10020FB40(v48, v49) & 1) == 0)
        {
          goto LABEL_208;
        }

        v94 = *&v314[8];
        v95 = *&v314[16];
        v273 = *&v314[24];
        v274 = *&v314[40];
        v275 = *&v314[56];
        *&v276 = *&v314[72];
        if (*&v314[16] == 1)
        {
          if (*&v372[16] != 1)
          {
            goto LABEL_216;
          }

          *&v345 = *&v314[8];
          *(&v345 + 1) = 1;
          v346 = *&v314[24];
          v347 = *&v314[40];
          v348 = *&v314[56];
          *&v349 = *&v314[72];
          sub_10000E268(v31, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v33, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(&v314[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(&v372[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v345, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v359, &qword_1005DBCC8, &qword_1004FE5E0);
        }

        else
        {
          if (*&v372[16] == 1)
          {
LABEL_216:
            *__dst = *&v314[8];
            *&__dst[16] = *&v314[24];
            *&__dst[32] = *&v314[40];
            *&__dst[48] = *&v314[56];
            *&__dst[64] = *&v314[72];
            *&__dst[72] = *&v372[8];
            *&__dst[88] = *&v372[24];
            *&__dst[104] = *&v372[40];
            *&__dst[120] = *&v372[56];
            *&__dst[136] = *&v372[72];
            sub_10000E268(v31, &v345, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v33, &v345, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(&v314[8], &v345, &qword_1005DBCD8, &qword_1004FE5F0);
            sub_10000E268(&v372[8], &v345, &qword_1005DBCD8, &qword_1004FE5F0);
            sub_100025F40(__dst, &qword_1005DBCE0, &qword_1004FE5F8);
            goto LABEL_209;
          }

          v289 = *&v372[8];
          v290 = *&v372[24];
          v291 = *&v372[40];
          v292 = *&v372[56];
          *&v293 = *&v372[72];
          v446 = *&v372[72];
          v445[2] = *&v372[40];
          v445[3] = *&v372[56];
          v445[0] = *&v372[8];
          v445[1] = *&v372[24];
          v444 = *&v314[72];
          v442 = *&v314[40];
          v443 = *&v314[56];
          v441 = *&v314[24];
          v440[0] = *&v314[8];
          v440[1] = *&v314[16];
          sub_10000E268(v31, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v33, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(&v314[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(&v372[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          v104 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v440, v445);
          sub_100025F40(&v289, &qword_1005DBCD8, &qword_1004FE5F0);
          *&v345 = v94;
          *(&v345 + 1) = v95;
          v346 = v273;
          v347 = v274;
          v348 = v275;
          *&v349 = v276;
          sub_100025F40(&v345, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v359, &qword_1005DBCC8, &qword_1004FE5E0);
          if (!v104)
          {
            goto LABEL_210;
          }
        }

        *__dst = v29;
        *&__dst[8] = v30;
        *&__dst[48] = v335;
        *&__dst[64] = v336;
        *&__dst[80] = v337;
        *&__dst[16] = v333;
        *&__dst[32] = v334;
      }

      else
      {
        if (v39)
        {
LABEL_214:
          *__dst = v29;
          *&__dst[8] = v30;
          *&__dst[48] = v335;
          *&__dst[64] = v336;
          *&__dst[80] = v337;
          *&__dst[16] = v333;
          *&__dst[32] = v334;
          *&__dst[96] = v32;
          *&__dst[104] = v39;
          *&__dst[160] = v324;
          *&__dst[176] = v325;
          *&__dst[128] = v322;
          *&__dst[144] = v323;
          *&__dst[112] = v321;
          sub_10000E268(v31, &v313, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v33, &v313, &qword_1005DBCC8, &qword_1004FE5E0);
          v235 = &qword_1005DBCD0;
          v236 = &qword_1004FE5E8;
          goto LABEL_211;
        }

        *__dst = v29;
        *&__dst[48] = v335;
        *&__dst[64] = v336;
        *&__dst[80] = v337;
        *&__dst[16] = v333;
        *&__dst[32] = v334;
        sub_10000E268(v31, &v313, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_10000E268(v33, &v313, &qword_1005DBCC8, &qword_1004FE5E0);
      }

      sub_100025F40(__dst, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100051110(&v390);
      sub_100051110(v379);
      goto LABEL_203;
    }

    v53 = UInt32.init(_:)(v402);
    v375 = v398;
    v376 = v399;
    v377 = v400;
    v378 = v401;
    *&v372[48] = v394;
    *&v372[64] = v395;
    v373 = v396;
    v374 = v397;
    v371 = v390;
    *v372 = v391;
    *&v372[16] = v392;
    *&v372[32] = v393;
    if (sub_10000FE88(&v371) == 1)
    {
      UInt32.init(_:)(&v371);
      return 0;
    }

    v54 = UInt32.init(_:)(&v371);
    v55 = v54;
    v56 = *v53;
    v57 = *v54;
    v58 = *v53 >> 62;
    v261 = v53;
    v59 = *v54 >> 62;
    if (!v58)
    {
      if (v59)
      {
        return 0;
      }

      v96 = v54;
      v97 = *(v56 + 32);
      v98 = *(v56 + 40);
      v99 = *(v57 + 32);
      v100 = *(v57 + 40);
      if ((*(v56 + 16) != *(v57 + 16) || *(v56 + 24) != *(v57 + 24)) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if ((v97 != v99 || v98 != v100) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      sub_1000510B4(&v390, __dst);
      sub_1000510B4(v379, __dst);
      v55 = v96;
      goto LABEL_142;
    }

    if (v58 == 1)
    {
      break;
    }

    if (v59 != 2)
    {
      return 0;
    }

    v101 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v102 = (v57 & 0x3FFFFFFFFFFFFFFFLL);
    v103 = v102[4];
    if ((*((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v102[2] || *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != v102[3]) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    if (v101 != v103)
    {
      return 0;
    }

    sub_1000510B4(&v390, __dst);
    sub_1000510B4(v379, __dst);
LABEL_142:
    v193 = v53[2];
    v194 = v55[2];
    v195 = *(v193 + 16);
    if (v195 != *(v194 + 16))
    {
      goto LABEL_230;
    }

    v196 = v53[3];
    v197 = v53[5];
    v248 = v53[6];
    v198 = v53[7];
    v244 = v53[8];
    v258 = v53[9];
    v256 = v53[10];
    v199 = v55[3];
    v250 = v55[4];
    v252 = v53[4];
    v200 = v55[5];
    v246 = v55[6];
    v201 = v55[7];
    v242 = v55[8];
    v260 = v55[9];
    v202 = v55;
    v254 = v55[10];
    if (v195 && v193 != v194)
    {
      v203 = (v193 + 40);
      v204 = (v194 + 40);
      do
      {
        v205 = *(v203 - 1) == *(v204 - 1) && *v203 == *v204;
        if (!v205 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_230;
        }

        v203 += 2;
        v204 += 2;
      }

      while (--v195);
    }

    v206 = *(v196 + 16);
    if (v206 != *(v199 + 16))
    {
      goto LABEL_230;
    }

    if (v206 && v196 != v199)
    {
      v207 = (v196 + 40);
      v208 = (v199 + 40);
      do
      {
        v209 = *(v207 - 1) == *(v208 - 1) && *v207 == *v208;
        if (!v209 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_230;
        }

        v207 += 2;
        v208 += 2;
      }

      while (--v206);
    }

    if (v197)
    {
      if (!v200)
      {
        goto LABEL_230;
      }

      v210 = v202;
      if ((v252 != v250 || v197 != v200) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v210 = v202;
      if (v200)
      {
        goto LABEL_230;
      }
    }

    if (v198)
    {
      if (!v201 || (v248 != v246 || v198 != v201) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (v201)
    {
      goto LABEL_230;
    }

    if (v258)
    {
      v211 = v261;
      if (!v260 || (v244 != v242 || v258 != v260) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v211 = v261;
      if (v260)
      {
        goto LABEL_230;
      }
    }

    if (v256 != v254)
    {
      goto LABEL_230;
    }

    v212 = v211[11];
    v214 = v211[12];
    v213 = (v211 + 11);
    v215 = *(v213 + 64);
    v335 = *(v213 + 48);
    v336 = v215;
    *&v337 = *(v213 + 80);
    v216 = *(v213 + 16);
    v334 = *(v213 + 32);
    v333 = v216;
    v217 = v210[11];
    v218 = v210[12];
    v219 = (v210 + 11);
    v220 = *(v219 + 16);
    v221 = *(v219 + 32);
    v222 = *(v219 + 48);
    v223 = *(v219 + 64);
    *&v325 = *(v219 + 80);
    v324 = v223;
    v323 = v222;
    v321 = v220;
    v322 = v221;
    if (v214 != 1)
    {
      if (v218 == 1)
      {
LABEL_215:
        *__dst = v212;
        *&__dst[8] = v214;
        *&__dst[48] = v335;
        *&__dst[64] = v336;
        *&__dst[16] = v333;
        *&__dst[32] = v334;
        *&__dst[80] = v337;
        *&__dst[88] = v217;
        *&__dst[104] = v321;
        *&__dst[96] = v218;
        *&__dst[168] = v325;
        *&__dst[152] = v324;
        *&__dst[136] = v323;
        *&__dst[120] = v322;
        sub_10000E268(v213, v357, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v219, v357, &qword_1005DBCE8, &qword_1004FE600);
        v235 = &qword_1005DBCF0;
        v236 = &qword_1004FE608;
        goto LABEL_211;
      }

      *&v359 = v217;
      *(&v359 + 1) = v218;
      v226 = *(v219 + 32);
      v360 = *(v219 + 16);
      v361 = v226;
      v227 = *(v219 + 64);
      v362 = *(v219 + 48);
      v363 = v227;
      *&v364 = *(v219 + 80);
      v313 = v359;
      *v314 = v360;
      *&v314[64] = v364;
      *&v314[48] = v227;
      *&v314[16] = v361;
      *&v314[32] = v362;
      *v357 = v212;
      *&v357[8] = v214;
      v228 = *(v213 + 16);
      v229 = *(v213 + 32);
      v230 = *(v213 + 48);
      v231 = *(v213 + 64);
      *&v357[80] = *(v213 + 80);
      *&v357[48] = v230;
      *&v357[64] = v231;
      *&v357[16] = v228;
      *&v357[32] = v229;
      if (v214)
      {
        if (!v218 || (v212 != v313 || v214 != v218) && (sub_1004A6D34() & 1) == 0)
        {
LABEL_217:
          sub_10000E268(v213, __dst, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v219, __dst, &qword_1005DBCE8, &qword_1004FE600);
          v237 = &v359;
          goto LABEL_219;
        }
      }

      else if (v218)
      {
        goto LABEL_217;
      }

      v232 = *&v357[24];
      v289 = *&v357[32];
      v290 = *&v357[48];
      v291 = *&v357[64];
      *&v292 = *&v357[80];
      if (*&v357[24] == 1)
      {
        if (*&v314[8] != 1)
        {
          goto LABEL_218;
        }

        *&v345 = *&v357[16];
        *(&v345 + 1) = 1;
        v346 = *&v357[32];
        v347 = *&v357[48];
        v348 = *&v357[64];
        *&v349 = *&v357[80];
        sub_10000E268(v213, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v219, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v213, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v219, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(&v357[16], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v314, __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v345, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v359, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v219, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v213, &qword_1005DBCE8, &qword_1004FE600);
      }

      else
      {
        if (*&v314[8] == 1)
        {
LABEL_218:
          *&__dst[16] = *&v357[32];
          *&__dst[32] = *&v357[48];
          *&__dst[48] = *&v357[64];
          *&__dst[88] = *&v314[16];
          *__dst = *&v357[16];
          *&__dst[64] = *&v357[80];
          *&__dst[72] = *v314;
          *&__dst[104] = *&v314[32];
          *&__dst[120] = *&v314[48];
          *&__dst[136] = *&v314[64];
          sub_10000E268(v213, &v345, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v219, &v345, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v213, &v345, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v219, &v345, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(&v357[16], &v345, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(v314, &v345, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(__dst, &qword_1005DBCE0, &qword_1004FE5F8);
          sub_100025F40(&v359, &qword_1005DBCE8, &qword_1004FE600);
          sub_100025F40(v219, &qword_1005DBCE8, &qword_1004FE600);
          v237 = v213;
LABEL_219:
          sub_100025F40(v237, &qword_1005DBCE8, &qword_1004FE600);
LABEL_220:
          *__dst = v212;
          *&__dst[8] = v214;
          *&__dst[48] = v335;
          *&__dst[64] = v336;
          *&__dst[80] = v337;
          *&__dst[16] = v333;
          *&__dst[32] = v334;
          v235 = &qword_1005DBCE8;
          v236 = &qword_1004FE600;
          goto LABEL_211;
        }

        v301 = *v314;
        v302 = *&v314[16];
        v303 = *&v314[32];
        v304 = *&v314[48];
        *&v305 = *&v314[64];
        v407 = *&v314[64];
        v406[3] = *&v314[48];
        v406[2] = *&v314[32];
        v406[0] = *v314;
        v406[1] = *&v314[16];
        v405 = *&v357[80];
        v404[2] = *&v357[48];
        v404[3] = *&v357[64];
        v404[1] = *&v357[32];
        v404[0] = *&v357[16];
        v262 = *&v357[16];
        sub_10000E268(v213, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v219, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v213, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v219, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(&v357[16], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v314, __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        v233 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v404, v406);
        sub_100025F40(&v301, &qword_1005DBCD8, &qword_1004FE5F0);
        *&v345 = v262;
        *(&v345 + 1) = v232;
        v346 = v289;
        v347 = v290;
        v348 = v291;
        *&v349 = v292;
        sub_100025F40(&v345, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v359, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v219, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v213, &qword_1005DBCE8, &qword_1004FE600);
        if (!v233)
        {
          goto LABEL_220;
        }
      }

      *__dst = v212;
      *&__dst[8] = v214;
      *&__dst[48] = v335;
      *&__dst[64] = v336;
      *&__dst[80] = v337;
      *&__dst[16] = v333;
      *&__dst[32] = v334;
      sub_100025F40(__dst, &qword_1005DBCE8, &qword_1004FE600);
      sub_100051110(&v390);
      sub_100051110(v379);
      v3 = v263;
      goto LABEL_203;
    }

    if (v218 != 1)
    {
      goto LABEL_215;
    }

    *__dst = v212;
    *&__dst[8] = 1;
    v224 = *(v213 + 64);
    *&__dst[48] = *(v213 + 48);
    *&__dst[64] = v224;
    *&__dst[80] = *(v213 + 80);
    v225 = *(v213 + 32);
    *&__dst[16] = *(v213 + 16);
    *&__dst[32] = v225;
    sub_10000E268(v213, v357, &qword_1005DBCE8, &qword_1004FE600);
    sub_10000E268(v219, v357, &qword_1005DBCE8, &qword_1004FE600);
    sub_100025F40(__dst, &qword_1005DBCE8, &qword_1004FE600);
    sub_100051110(&v390);
    sub_100051110(v379);
    v3 = v263;
LABEL_203:
    v5 = v265;
    v4 = v266 + 1;
    v6 = v264;
    if (v266 + 1 == v3)
    {
      return 1;
    }
  }

  v60 = v56 & 0x3FFFFFFFFFFFFFFFLL;
  v61 = *(v60 + 16);
  v62 = *(v60 + 24);
  v63 = *(v60 + 112);
  v436[4] = *(v60 + 96);
  v436[5] = v63;
  v436[6] = *(v60 + 128);
  v64 = *(v60 + 144);
  v65 = *(v60 + 48);
  v436[0] = *(v60 + 32);
  v436[1] = v65;
  v66 = *(v60 + 80);
  v436[2] = *(v60 + 64);
  v436[3] = v66;
  v67 = *(v60 + 184);
  v362 = *(v60 + 200);
  v361 = v67;
  v68 = *(v60 + 152);
  v360 = *(v60 + 168);
  v359 = v68;
  v69 = *(v60 + 248);
  v70 = *(v60 + 280);
  v366 = *(v60 + 264);
  v365 = v69;
  v71 = *(v60 + 216);
  v364 = *(v60 + 232);
  v363 = v71;
  v72 = *(v60 + 296);
  v369 = *(v60 + 312);
  v437 = v64;
  v370 = *(v60 + 328);
  v368 = v72;
  v367 = v70;
  if (v59 != 1)
  {
    return 0;
  }

  v73 = *(v60 + 336);
  memcpy(__dst, ((v57 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v62, v61) != *__dst && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v438[4] = *&__dst[80];
  v438[5] = *&__dst[96];
  v438[6] = *&__dst[112];
  v439 = *&__dst[128];
  v438[0] = *&__dst[16];
  v438[1] = *&__dst[32];
  v438[2] = *&__dst[48];
  v438[3] = *&__dst[64];
  sub_1000510B4(&v390, v357);
  sub_1000510B4(v379, v357);
  sub_100259990(__dst, v357);
  if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v436, v438))
  {
    goto LABEL_229;
  }

  v353 = v367;
  v354 = v368;
  v355 = v369;
  v356 = v370;
  v349 = v363;
  v350 = v364;
  v351 = v365;
  v352 = v366;
  v345 = v359;
  v346 = v360;
  v347 = v361;
  v348 = v362;
  v240 = v55;
  if (sub_10000FE88(&v345) == 1)
  {
    v74 = UInt32.init(_:)(&v345);
    v317 = *&__dst[264];
    v318 = *&__dst[280];
    v319 = *&__dst[296];
    LOBYTE(v320) = __dst[312];
    *&v314[48] = *&__dst[200];
    *&v314[64] = *&__dst[216];
    v315 = *&__dst[232];
    v316 = *&__dst[248];
    v313 = *&__dst[136];
    *v314 = *&__dst[152];
    *&v314[16] = *&__dst[168];
    *&v314[32] = *&__dst[184];
    if (sub_10000FE88(&v313) != 1)
    {
      UInt32.init(_:)(&v313);
      goto LABEL_229;
    }

    v75 = UInt32.init(_:)(&v313);
    if ((sub_10039C870(*v74) & 1) == 0 || (v74[1] != v75[1] || v74[2] != v75[2]) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }

    v76 = v74[3];
    v78 = v74[4];
    v77 = v74 + 3;
    v81 = v75[3];
    v80 = (v75 + 3);
    v79 = v81;
    v82 = v77[2];
    v83 = v77[4];
    v84 = v77[5];
    v303 = v77[3];
    v304 = v83;
    v305 = v84;
    v301 = v77[1];
    v302 = v82;
    v85 = *(v80 + 8);
    v86 = *(v80 + 16);
    v87 = *(v80 + 32);
    v88 = *(v80 + 48);
    v89 = *(v80 + 80);
    v292 = *(v80 + 64);
    v293 = v89;
    v290 = v87;
    v291 = v88;
    v289 = v86;
    if (v78)
    {
      v90 = v77[2];
      v91 = v77[4];
      v92 = v77[5];
      v275 = v77[3];
      v276 = v91;
      v277 = v92;
      v273 = v77[1];
      v274 = v90;
      if (!v85)
      {
        goto LABEL_223;
      }

      *&v333 = v79;
      *(&v333 + 1) = v85;
      v336 = v291;
      v337 = v292;
      v334 = v289;
      v335 = v290;
      v338 = v293;
      v435[1] = v289;
      v435[0] = v333;
      v435[5] = v293;
      v435[4] = v292;
      v435[3] = v291;
      v435[2] = v290;
      v433 = v276;
      v434 = v277;
      v431 = v274;
      v432 = v275;
      v430 = v273;
      v429[0] = v76;
      v429[1] = v78;
      sub_10000E268(v77, &v321, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v80, &v321, &qword_1005DBCC8, &qword_1004FE5E0);
      v93 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v429, v435);
      sub_100025F40(&v333, &qword_1005DBCC8, &qword_1004FE5E0);
      *v357 = v76;
      *&v357[8] = v78;
      *&v357[48] = v303;
      *&v357[64] = v304;
      *&v357[80] = v305;
      *&v357[16] = v301;
      *&v357[32] = v302;
      sub_100025F40(v357, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_1002599EC(__dst);
      if (!v93)
      {
        goto LABEL_230;
      }
    }

    else
    {
      if (v85)
      {
LABEL_223:
        *v357 = v76;
        *&v357[8] = v78;
        *&v357[48] = v303;
        *&v357[64] = v304;
        *&v357[80] = v305;
        *&v357[32] = v302;
        *&v357[16] = v301;
        *&v357[96] = v79;
        *&v357[104] = v85;
        *&v357[176] = v293;
        *&v357[160] = v292;
        *&v357[144] = v291;
        *&v357[112] = v289;
        *&v357[128] = v290;
        sub_10000E268(v77, &v333, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_10000E268(v80, &v333, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_100025F40(v357, &qword_1005DBCD0, &qword_1004FE5E8);
        goto LABEL_229;
      }

      *v357 = v76;
      *&v357[48] = v303;
      *&v357[64] = v304;
      *&v357[80] = v305;
      *&v357[16] = v301;
      *&v357[32] = v302;
      sub_10000E268(v77, &v333, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v80, &v333, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(v357, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_1002599EC(__dst);
    }

LABEL_141:
    v55 = v240;
    if (v73 != *&__dst[320])
    {
      goto LABEL_230;
    }

    goto LABEL_142;
  }

  v253 = v73;
  v105 = UInt32.init(_:)(&v345);
  v341 = *&__dst[264];
  v342 = *&__dst[280];
  v343 = *&__dst[296];
  v344 = __dst[312];
  v337 = *&__dst[200];
  v338 = *&__dst[216];
  v339 = *&__dst[232];
  v340 = *&__dst[248];
  v333 = *&__dst[136];
  v334 = *&__dst[152];
  v335 = *&__dst[168];
  v336 = *&__dst[184];
  if (sub_10000FE88(&v333) == 1)
  {
    UInt32.init(_:)(&v333);
    goto LABEL_229;
  }

  v106 = UInt32.init(_:)(&v333);
  v107 = *v105;
  v108 = *v106;
  v109 = *v105 >> 62;
  if (v109)
  {
    if (v109 == 1)
    {
      v110 = v107 & 0x3FFFFFFFFFFFFFFFLL;
      v111 = *(v110 + 16);
      v112 = *(v110 + 24);
      v113 = *(v110 + 112);
      v425[4] = *(v110 + 96);
      v425[5] = v113;
      v425[6] = *(v110 + 128);
      v114 = *(v110 + 144);
      v115 = *(v110 + 48);
      v425[0] = *(v110 + 32);
      v425[1] = v115;
      v116 = *(v110 + 80);
      v425[2] = *(v110 + 64);
      v425[3] = v116;
      v117 = *(v110 + 184);
      v324 = *(v110 + 200);
      v323 = v117;
      v118 = *(v110 + 152);
      v322 = *(v110 + 168);
      v321 = v118;
      v119 = *(v110 + 248);
      v120 = *(v110 + 280);
      v328 = *(v110 + 264);
      v327 = v119;
      v121 = *(v110 + 216);
      v326 = *(v110 + 232);
      v325 = v121;
      v122 = *(v110 + 296);
      v331 = *(v110 + 312);
      v426 = v114;
      v332 = *(v110 + 328);
      v330 = v122;
      v329 = v120;
      if (v108 >> 62 != 1)
      {
        goto LABEL_229;
      }

      v123 = *(v110 + 336);
      memcpy(v357, ((v108 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v357));
      if (__PAIR128__(v112, v111) != *v357 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }

      v427[4] = *&v357[80];
      v427[5] = *&v357[96];
      v427[6] = *&v357[112];
      v428 = *&v357[128];
      v427[0] = *&v357[16];
      v427[1] = *&v357[32];
      v427[2] = *&v357[48];
      v427[3] = *&v357[64];
      sub_100259990(v357, &v313);
      if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v425, v427))
      {
        goto LABEL_228;
      }

      v309 = v329;
      v310 = v330;
      v311 = v331;
      v312 = v332;
      v305 = v325;
      v306 = v326;
      v307 = v327;
      v308 = v328;
      v301 = v321;
      v302 = v322;
      v303 = v323;
      v304 = v324;
      if (sub_10000FE88(&v301) == 1)
      {
        v124 = UInt32.init(_:)(&v301);
        v297 = *&v357[264];
        v298 = *&v357[280];
        v299 = *&v357[296];
        v300 = v357[312];
        v293 = *&v357[200];
        v294 = *&v357[216];
        v295 = *&v357[232];
        v296 = *&v357[248];
        v289 = *&v357[136];
        v290 = *&v357[152];
        v291 = *&v357[168];
        v292 = *&v357[184];
        if (sub_10000FE88(&v289) == 1)
        {
          v125 = UInt32.init(_:)(&v289);
          if ((sub_10039C870(*v124) & 1) == 0 || (v124[1] != v125[1] || v124[2] != v125[2]) && (sub_1004A6D34() & 1) == 0)
          {
            goto LABEL_228;
          }

          v126 = v124[3];
          v128 = v124[4];
          v127 = v124 + 3;
          v129 = v125[3];
          v130 = v125[4];
          v131 = v125 + 3;
          v132 = v127[4];
          v286 = v127[3];
          v287 = v132;
          v288 = v127[5];
          v133 = v127[2];
          v284 = v127[1];
          v285 = v133;
          v134 = v131[1];
          v135 = v131[2];
          v136 = v131[5];
          v282 = v131[4];
          v283 = v136;
          v137 = v131[3];
          v280 = v135;
          v281 = v137;
          v279 = v134;
          if (v128)
          {
            v138 = v127[4];
            v270 = v127[3];
            v271 = v138;
            v272 = v127[5];
            v139 = v127[2];
            v268 = v127[1];
            v269 = v139;
            if (!v130)
            {
              goto LABEL_227;
            }

            *&v273 = v129;
            *(&v273 + 1) = v130;
            v276 = v281;
            v277 = v282;
            v274 = v279;
            v275 = v280;
            v278 = v283;
            v424[1] = v279;
            v424[0] = v273;
            v424[5] = v283;
            v424[4] = v282;
            v424[3] = v281;
            v424[2] = v280;
            v422 = v271;
            v423 = v272;
            v420 = v269;
            v421 = v270;
            v419 = v268;
            v418[0] = v126;
            v418[1] = v128;
            sub_10000E268(v127, v267, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v131, v267, &qword_1005DBCC8, &qword_1004FE5E0);
            v140 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v418, v424);
            sub_100025F40(&v273, &qword_1005DBCC8, &qword_1004FE5E0);
            *&v313 = v126;
            *(&v313 + 1) = v128;
            *&v314[32] = v286;
            *&v314[48] = v287;
            *&v314[64] = v288;
            *v314 = v284;
            *&v314[16] = v285;
            sub_100025F40(&v313, &qword_1005DBCC8, &qword_1004FE5E0);
            goto LABEL_99;
          }

          if (!v130)
          {
            v313 = v126;
            *&v314[32] = v286;
            *&v314[48] = v287;
            *&v314[64] = v288;
            *v314 = v284;
            *&v314[16] = v285;
            sub_10000E268(v127, &v273, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v131, &v273, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_100025F40(&v313, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_1002599EC(v357);
            goto LABEL_100;
          }

LABEL_227:
          *&v313 = v126;
          *(&v313 + 1) = v128;
          *&v314[48] = v287;
          *&v314[64] = v288;
          *&v314[16] = v285;
          *&v314[32] = v286;
          *v314 = v284;
          *&v315 = v129;
          *(&v315 + 1) = v130;
          v320 = v283;
          v319 = v282;
          v318 = v281;
          v316 = v279;
          v317 = v280;
          sub_10000E268(v127, &v273, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v131, &v273, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_100025F40(&v313, &qword_1005DBCD0, &qword_1004FE5E8);
        }

        else
        {
          UInt32.init(_:)(&v289);
        }

LABEL_228:
        sub_1002599EC(v357);
        goto LABEL_229;
      }

      v149 = UInt32.init(_:)(&v301);
      v150 = v149[9];
      v416[8] = v149[8];
      v416[9] = v150;
      v416[10] = v149[10];
      v151 = v149[5];
      v416[4] = v149[4];
      v416[5] = v151;
      v152 = v149[6];
      v416[7] = v149[7];
      v416[6] = v152;
      v153 = v149[1];
      v416[0] = *v149;
      v416[1] = v153;
      v154 = v149[2];
      v416[3] = v149[3];
      v416[2] = v154;
      LOBYTE(v320) = v357[312];
      v319 = *&v357[296];
      v318 = *&v357[280];
      v317 = *&v357[264];
      v316 = *&v357[248];
      v315 = *&v357[232];
      *&v314[64] = *&v357[216];
      *&v314[48] = *&v357[200];
      *&v314[16] = *&v357[168];
      *&v314[32] = *&v357[184];
      v313 = *&v357[136];
      *v314 = *&v357[152];
      if (sub_10000FE88(&v313) == 1)
      {
        UInt32.init(_:)(&v313);
        goto LABEL_228;
      }

      v155 = UInt32.init(_:)(&v313);
      v156 = v155[9];
      v417[8] = v155[8];
      v417[9] = v156;
      v417[10] = v155[10];
      v157 = v155[5];
      v417[4] = v155[4];
      v417[5] = v157;
      v158 = v155[6];
      v417[7] = v155[7];
      v417[6] = v158;
      v159 = v155[1];
      v417[0] = *v155;
      v417[1] = v159;
      v160 = v155[2];
      v417[3] = v155[3];
      v417[2] = v160;
      v140 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v416, v417);
LABEL_99:
      sub_1002599EC(v357);
      if ((v140 & 1) == 0)
      {
        goto LABEL_229;
      }

LABEL_100:
      if (v123 != *&v357[320])
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v108 >> 62 != 2)
      {
        goto LABEL_229;
      }

      v145 = (v107 & 0x3FFFFFFFFFFFFFFFLL);
      v146 = v145[4];
      v147 = (v108 & 0x3FFFFFFFFFFFFFFFLL);
      v148 = v147[4];
      if ((v145[2] != v147[2] || v145[3] != v147[3]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v146 != v148)
      {
        goto LABEL_229;
      }
    }
  }

  else
  {
    if (v108 >> 62)
    {
      goto LABEL_229;
    }

    v141 = *(v107 + 32);
    v142 = *(v107 + 40);
    v143 = *(v108 + 32);
    v144 = *(v108 + 40);
    if ((*(v107 + 16) != *(v108 + 16) || *(v107 + 24) != *(v108 + 24)) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }

    if ((v141 != v143 || v142 != v144) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  v161 = v105[2];
  v162 = v106[2];
  v163 = *(v161 + 16);
  if (v163 != *(v162 + 16))
  {
    goto LABEL_229;
  }

  v164 = v105[3];
  v165 = v105[5];
  v243 = v105[6];
  v259 = v105[7];
  v239 = v105[8];
  v257 = v105[9];
  v247 = v105[10];
  v166 = v106[3];
  v249 = v106[4];
  v251 = v105[4];
  v167 = v106[5];
  v241 = v106[6];
  v168 = v106[7];
  v238 = v106[8];
  v255 = v106[9];
  v245 = v106[10];
  if (!v163 || v161 == v162)
  {
LABEL_112:
    if ((sub_10020FB40(v164, v166) & 1) == 0)
    {
      goto LABEL_229;
    }

    if (v165)
    {
      if (!v167 || (v251 != v249 || v165 != v167) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v167)
    {
      goto LABEL_229;
    }

    if (v259)
    {
      if (!v168 || (v243 != v241 || v259 != v168) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v168)
    {
      goto LABEL_229;
    }

    if (v257)
    {
      if (!v255 || (v239 != v238 || v257 != v255) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v255)
    {
      goto LABEL_229;
    }

    if (v247 != v245)
    {
      goto LABEL_229;
    }

    v172 = v105[11];
    v173 = v105[12];
    v174 = (v105 + 11);
    v175 = v106[11];
    v176 = v106[12];
    v177 = (v106 + 11);
    v178 = *(v174 + 64);
    v303 = *(v174 + 48);
    v304 = v178;
    *&v305 = *(v174 + 80);
    v179 = *(v174 + 32);
    v301 = *(v174 + 16);
    v302 = v179;
    v180 = *(v177 + 16);
    v181 = *(v177 + 32);
    v182 = *(v177 + 48);
    v183 = *(v177 + 64);
    *&v293 = *(v177 + 80);
    v291 = v182;
    v292 = v183;
    v289 = v180;
    v290 = v181;
    if (v173 == 1)
    {
      v53 = v261;
      if (v176 != 1)
      {
        goto LABEL_224;
      }

      *v357 = v172;
      *&v357[8] = 1;
      v184 = *(v174 + 64);
      *&v357[48] = *(v174 + 48);
      *&v357[64] = v184;
      *&v357[80] = *(v174 + 80);
      v185 = *(v174 + 32);
      *&v357[16] = *(v174 + 16);
      *&v357[32] = v185;
      sub_10000E268(v177, &v313, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v174, &v313, &qword_1005DBCE8, &qword_1004FE600);
      sub_100025F40(v357, &qword_1005DBCE8, &qword_1004FE600);
      sub_1002599EC(__dst);
    }

    else
    {
      v53 = v261;
      if (v176 == 1)
      {
LABEL_224:
        sub_10000E268(v177, v357, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v174, v357, &qword_1005DBCE8, &qword_1004FE600);
        sub_1002599EC(__dst);
        *v357 = v172;
        *&v357[8] = v173;
        *&v357[48] = v303;
        *&v357[64] = v304;
        *&v357[32] = v302;
        *&v357[16] = v301;
        *&v357[80] = v305;
        *&v357[88] = v175;
        *&v357[104] = v289;
        *&v357[96] = v176;
        *&v357[168] = v293;
        *&v357[152] = v292;
        *&v357[136] = v291;
        *&v357[120] = v290;
        sub_100025F40(v357, &qword_1005DBCF0, &qword_1004FE608);
        goto LABEL_230;
      }

      *&v313 = v175;
      *(&v313 + 1) = v176;
      v186 = *(v177 + 64);
      *&v314[32] = *(v177 + 48);
      *&v314[48] = v186;
      v187 = *(v177 + 32);
      *v314 = *(v177 + 16);
      *&v314[16] = v187;
      *&v314[64] = *(v177 + 80);
      v414[1] = *v314;
      v414[0] = v313;
      v415 = *&v314[64];
      v414[4] = v186;
      v414[3] = *&v314[32];
      v414[2] = v187;
      v188 = *(v174 + 16);
      v189 = *(v174 + 32);
      v190 = *(v174 + 48);
      v191 = *(v174 + 64);
      v413 = *(v174 + 80);
      v411 = v190;
      v412 = v191;
      v409 = v188;
      v410 = v189;
      v408[0] = v172;
      v408[1] = v173;
      sub_10000E268(v177, &v321, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v177, &v321, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v174, &v321, &qword_1005DBCE8, &qword_1004FE600);
      v192 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v408, v414);
      sub_100025F40(&v313, &qword_1005DBCE8, &qword_1004FE600);
      sub_100025F40(v177, &qword_1005DBCE8, &qword_1004FE600);
      *v357 = v172;
      *&v357[8] = v173;
      *&v357[48] = v303;
      *&v357[64] = v304;
      *&v357[80] = v305;
      *&v357[16] = v301;
      *&v357[32] = v302;
      sub_100025F40(v357, &qword_1005DBCE8, &qword_1004FE600);
      sub_1002599EC(__dst);
      if (!v192)
      {
        goto LABEL_230;
      }
    }

    v73 = v253;
    goto LABEL_141;
  }

  v169 = (v161 + 40);
  v170 = (v162 + 40);
  while (1)
  {
    v171 = *(v169 - 1) == *(v170 - 1) && *v169 == *v170;
    if (!v171 && (sub_1004A6D34() & 1) == 0)
    {
      break;
    }

    v169 += 2;
    v170 += 2;
    if (!--v163)
    {
      goto LABEL_112;
    }
  }

LABEL_229:
  sub_1002599EC(__dst);
LABEL_230:
  sub_100051110(&v390);
  sub_100051110(v379);
  return 0;
}