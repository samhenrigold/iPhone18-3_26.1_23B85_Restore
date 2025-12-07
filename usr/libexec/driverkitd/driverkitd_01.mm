unint64_t sub_100016A9C()
{
  v1 = v0;
  v2 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v58 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003E208(_swiftEmptyArrayStorage);
  v12 = *v1;
  v13 = v1[1];
  v62 = &type metadata for String;
  *&v61 = v12;
  *(&v61 + 1) = v13;
  sub_10000B48C(&v61, v60);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v11;
  sub_100038954(v60, 0xD00000000000001ALL, 0x80000001001034D0, isUniquelyReferenced_nonNull_native);
  v15 = v59;
  v16 = v1[3];
  if (v16)
  {
    v17 = v1[2];
    v62 = &type metadata for String;
    *&v61 = v17;
    *(&v61 + 1) = v16;
    sub_10000B48C(&v61, v60);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000019, 0x80000001001034F0, v18);
    v15 = v59;
  }

  v19 = v1[5];
  if (v19)
  {
    v20 = v1[4];
    v62 = &type metadata for String;
    *&v61 = v20;
    *(&v61 + 1) = v19;
    sub_10000B48C(&v61, v60);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103510, v21);
    v15 = v59;
  }

  v22 = v1[7];
  if (v22)
  {
    v23 = v1[6];
    v62 = &type metadata for String;
    *&v61 = v23;
    *(&v61 + 1) = v22;
    sub_10000B48C(&v61, v60);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103530, v24);
    v15 = v59;
  }

  v25 = v1[9];
  if (v25)
  {
    v26 = v1[8];
    v62 = &type metadata for String;
    *&v61 = v26;
    *(&v61 + 1) = v25;
    sub_10000B48C(&v61, v60);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ELL, 0x8000000100103550, v27);
    v15 = v59;
  }

  v28 = *(v1 + 80);
  if (v28 != 2)
  {
    v62 = &type metadata for Bool;
    LOBYTE(v61) = v28 & 1;
    sub_10000B48C(&v61, v60);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x8000000100103570, v30);
    v15 = v59;
    v29 = v1[12];
    if (!v29)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v29 = v1[12];
  if (v29)
  {
LABEL_13:
    v31 = v1[11];
    v62 = &type metadata for String;
    *&v61 = v31;
    *(&v61 + 1) = v29;
    sub_10000B48C(&v61, v60);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000016, 0x8000000100103590, v32);
    v15 = v59;
  }

LABEL_14:
  v33 = v1[14];
  if (v33)
  {
    v34 = v1[13];
    v62 = &type metadata for String;
    *&v61 = v34;
    *(&v61 + 1) = v33;
    sub_10000B48C(&v61, v60);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000018, 0x80000001001035B0, v35);
    v15 = v59;
  }

  v36 = v1[16];
  if (v36)
  {
    v37 = v1[15];
    v62 = &type metadata for String;
    *&v61 = v37;
    *(&v61 + 1) = v36;
    sub_10000B48C(&v61, v60);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001BLL, 0x80000001001035D0, v38);
    v15 = v59;
  }

  v39 = v1[18];
  if (v39)
  {
    v40 = v1[17];
    v62 = &type metadata for String;
    *&v61 = v40;
    *(&v61 + 1) = v39;
    sub_10000B48C(&v61, v60);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ALL, 0x80000001001035F0, v41);
    v15 = v59;
  }

  v42 = type metadata accessor for TelemetryReportExtension(0);
  sub_100014894(v1 + v42[14], v5, &qword_1001343C0, &unk_1000F3C90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000A184(v5, &qword_1001343C0, &unk_1000F3C90);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v62 = v6;
    v43 = sub_1000193A4(&v61);
    (*(v7 + 16))(v43, v10, v6);
    sub_10000B48C(&v61, v60);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001DLL, 0x8000000100103610, v44);
    (*(v7 + 8))(v10, v6);
    v15 = v59;
  }

  v45 = (v1 + v42[15]);
  v46 = v45[1];
  if (v46)
  {
    v47 = *v45;
    v62 = &type metadata for String;
    *&v61 = v47;
    *(&v61 + 1) = v46;
    sub_10000B48C(&v61, v60);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001FLL, 0x8000000100103630, v48);
    v15 = v59;
  }

  v49 = *(v1 + v42[16]);
  if (v49 != 2)
  {
    v62 = &type metadata for Bool;
    LOBYTE(v61) = v49 & 1;
    sub_10000B48C(&v61, v60);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000015, 0x8000000100103650, v50);
    v15 = v59;
  }

  v51 = (v1 + v42[17]);
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v62 = &type metadata for String;
    *&v61 = v53;
    *(&v61 + 1) = v52;
    sub_10000B48C(&v61, v60);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD00000000000001ELL, 0x8000000100103670, v54);
    v15 = v59;
  }

  v55 = *(v1 + v42[18]);
  if (v55)
  {
    v62 = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    *&v61 = v55;
    sub_10000B48C(&v61, v60);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v15;
    sub_100038954(v60, 0xD000000000000022, 0x8000000100103690, v56);
    return v59;
  }

  return v15;
}

uint64_t sub_100017268(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100134600, &qword_1000F3E18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8];
  sub_100003C4C(a1, a1[3]);
  sub_100019408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for TelemetryReportExtension(0);
    LOBYTE(v13) = 10;
    type metadata accessor for Date();
    sub_1000194C8(&qword_100134608, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + *(v10 + 72));
    v12[7] = 14;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001768C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v57 - v6;
  v64 = sub_100003CDC(&qword_1001345E0, &qword_1000F3E10);
  v8 = *(v64 - 8);
  __chkstk_darwin(v64, v9);
  v11 = &v57 - v10;
  v12 = type metadata accessor for TelemetryReportExtension(0);
  __chkstk_darwin(v12, v13);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v65 = a1;
  sub_100003C4C(a1, v16);
  sub_100019408();
  v63 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(v65);
  }

  v60 = v12;
  v61 = v15;
  LOBYTE(v67) = 0;
  v17 = v62;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v61;
  *v61 = v18;
  v20[1] = v21;
  LOBYTE(v67) = 1;
  v20[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[3] = v22;
  LOBYTE(v67) = 2;
  v58 = 0;
  v20[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[5] = v23;
  LOBYTE(v67) = 3;
  v20[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[7] = v24;
  LOBYTE(v67) = 4;
  v20[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[9] = v25;
  LOBYTE(v67) = 5;
  *(v20 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v67) = 6;
  v20[11] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[12] = v29;
  LOBYTE(v67) = 7;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v61;
  v61[13] = v30;
  v31[14] = v32;
  LOBYTE(v67) = 8;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = 0;
  v35 = v61;
  v61[15] = v33;
  v35[16] = v34;
  LOBYTE(v67) = 9;
  v36 = v59;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = v36;
  if (v36)
  {
    (*(v8 + 8))(v63, v64);
    v39 = 0;
    LODWORD(v64) = 0;
  }

  else
  {
    v40 = v61;
    v61[17] = v37;
    v40[18] = v38;
    type metadata accessor for Date();
    LOBYTE(v67) = 10;
    sub_1000194C8(&qword_1001345F0, &protocol conformance descriptor for Date);
    v41 = v59;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v59 = v41;
    if (v41)
    {
      (*(v8 + 8))(v63, v64);
      LODWORD(v64) = 0;
      v39 = 1;
    }

    else
    {
      sub_100018524(v7, v61 + v60[14]);
      LOBYTE(v67) = 11;
      v42 = v59;
      v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v59 = v42;
      if (!v42)
      {
        v45 = (v61 + v60[15]);
        *v45 = v43;
        v45[1] = v44;
        LOBYTE(v67) = 12;
        v46 = v59;
        v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        if (v46)
        {
          (*(v8 + 8))(v63, v64);
          sub_100003C90(v65);
          v49 = v61;

          sub_10000A184(v49 + v60[14], &qword_1001343C0, &unk_1000F3C90);
        }

        else
        {
          *(v61 + v60[16]) = v47;
          LOBYTE(v67) = 13;
          v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v50 = (v61 + v60[17]);
          *v50 = v48;
          v50[1] = v51;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          v66 = 14;
          sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          *(v61 + v60[18]) = v67;
          LOBYTE(v67) = 15;
          v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v54 = v53;
          (*(v8 + 8))(v63, v64);
          v55 = v61;
          v56 = (v61 + v60[19]);
          *v56 = v52;
          v56[1] = v54;
          sub_100018328(v55, v17);
          sub_100003C90(v65);
          return sub_10001838C(v55);
        }
      }

      (*(v8 + 8))(v63, v64);
      v39 = 1;
      LODWORD(v64) = 1;
    }
  }

  v26 = v58;
  sub_100003C90(v65);
  v27 = v61;

  if (!v26)
  {
  }

  if (v39)
  {

    v28 = v60;
    if ((v64 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v28 = v60;
    if (!v64)
    {
      return result;
    }
  }

  return sub_10000A184(v27 + v28[14], &qword_1001343C0, &unk_1000F3C90);
}

uint64_t ApprovalSettingsStateEntry.usageText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_100018080()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3C80;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001001034D0;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x8000000100103530;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v6 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_100018188(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1000181C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = &type metadata for DriverInstallEvent;
  v15[4] = &off_100127120;
  v12 = swift_allocObject();
  v15[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = 0xD00000000000001ELL;
  v12[7] = 0x80000001001045A0;
  v13 = *(a6 + 8);

  v13(v15, a5, a6);
  return sub_100003C90(v15);
}

uint64_t sub_1000182A0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100018328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TelemetryReportExtension(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001838C(uint64_t a1)
{
  v2 = type metadata accessor for TelemetryReportExtension(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000183E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TelemetryReportExtension(0);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10001610C(a1, a2, a3, v13);
  v14 = type metadata accessor for DriverLaunchEvent(0);
  v19[3] = v14;
  v19[4] = &off_1001270F0;
  v15 = sub_1000193A4(v19);
  sub_100018328(v13, v15);
  v16 = (v15 + *(v14 + 20));
  *v16 = 0xD00000000000001DLL;
  v16[1] = 0x80000001001046A0;
  (*(a5 + 8))(v19, a4, a5);
  sub_10001838C(v13);
  return sub_100003C90(v19);
}

uint64_t sub_100018524(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100018594()
{
  result = qword_100134288;
  if (!qword_100134288)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134288);
  }

  return result;
}

uint64_t sub_100018618(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TelemetryReportExtension(0);
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

uint64_t sub_10001876C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TelemetryReportExtension(0);
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

uint64_t sub_100018828(uint64_t a1)
{
  result = type metadata accessor for TelemetryReportExtension(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000188B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100018980(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100018A30(uint64_t a1)
{
  sub_100018B3C(319, &qword_100134558, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100018B3C(319, &qword_100134560, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100018B88(319);
      if (v3 <= 0x3F)
      {
        sub_100018BE0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100018B3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100018B88(uint64_t a1)
{
  if (!qword_100134568)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100134568);
    }
  }
}

void sub_100018BE0(uint64_t a1)
{
  if (!qword_100134570)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100134570);
    }
  }
}

__n128 sub_100018C44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100018C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100018CA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_100018CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v62 - v11;
  v13 = sub_100003CDC(&qword_100134618, &qword_1000F3E20);
  __chkstk_darwin(v13, v14);
  v16 = &v62 - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (v17)
  {
    if (!v18 || (*(a1 + 16) != *(a2 + 16) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 40);
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (*(a1 + 32) != *(a2 + 32) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22 || (*(a1 + 48) != *(a2 + 48) || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 72);
  v24 = *(a2 + 72);
  if (v23)
  {
    if (!v24 || (*(a1 + 64) != *(a2 + 64) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 80);
  v26 = *(a2 + 80);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      return result;
    }
  }

  v28 = *(a1 + 96);
  v29 = *(a2 + 96);
  if (v28)
  {
    if (!v29 || (*(a1 + 88) != *(a2 + 88) || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = *(a1 + 112);
  v31 = *(a2 + 112);
  if (v30)
  {
    if (!v31 || (*(a1 + 104) != *(a2 + 104) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = *(a1 + 128);
  v33 = *(a2 + 128);
  if (v32)
  {
    if (!v33 || (*(a1 + 120) != *(a2 + 120) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 144);
  v35 = *(a2 + 144);
  if (v34)
  {
    if (!v35 || (*(a1 + 136) != *(a2 + 136) || v34 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v63 = type metadata accessor for TelemetryReportExtension(0);
  v36 = v63[14];
  v37 = *(v13 + 48);
  sub_100014894(a1 + v36, v16, &qword_1001343C0, &unk_1000F3C90);
  sub_100014894(a2 + v36, &v16[v37], &qword_1001343C0, &unk_1000F3C90);
  v38 = *(v5 + 48);
  if (v38(v16, 1, v4) != 1)
  {
    sub_100014894(v16, v12, &qword_1001343C0, &unk_1000F3C90);
    if (v38(&v16[v37], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v37], v4);
      sub_1000194C8(&qword_100134620, &protocol conformance descriptor for Date);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v5 + 8);
      v40(v8, v4);
      v40(v12, v4);
      sub_10000A184(v16, &qword_1001343C0, &unk_1000F3C90);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_73;
    }

    (*(v5 + 8))(v12, v4);
LABEL_69:
    sub_10000A184(v16, &qword_100134618, &qword_1000F3E20);
    return 0;
  }

  if (v38(&v16[v37], 1, v4) != 1)
  {
    goto LABEL_69;
  }

  sub_10000A184(v16, &qword_1001343C0, &unk_1000F3C90);
LABEL_73:
  v41 = v63[15];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v63[16];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47 == 2)
  {
    if (v48 != 2)
    {
      return 0;
    }

    goto LABEL_85;
  }

  result = 0;
  if (v48 != 2 && ((v48 ^ v47) & 1) == 0)
  {
LABEL_85:
    v49 = v63[17];
    v50 = (a1 + v49);
    v51 = *(a1 + v49 + 8);
    v52 = (a2 + v49);
    v53 = v52[1];
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v53)
    {
      return 0;
    }

    v54 = v63[18];
    v55 = *(a1 + v54);
    v56 = *(a2 + v54);
    if (v55)
    {
      if (!v56 || (sub_10001A6CC(v55, v56) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v56)
    {
      return 0;
    }

    v57 = v63[19];
    v58 = (a1 + v57);
    v59 = *(a1 + v57 + 8);
    v60 = (a2 + v57);
    v61 = v60[1];
    if (v59)
    {
      return v61 && (*v58 == *v60 && v59 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v61;
  }

  return result;
}

uint64_t *sub_1000193A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100019408()
{
  result = qword_1001345E8;
  if (!qword_1001345E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001345E8);
  }

  return result;
}

uint64_t sub_10001945C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000194C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryReportExtension.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryReportExtension.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019668()
{
  result = qword_100134628;
  if (!qword_100134628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134628);
  }

  return result;
}

unint64_t sub_1000196C0()
{
  result = qword_100134630;
  if (!qword_100134630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134630);
  }

  return result;
}

unint64_t sub_100019718()
{
  result = qword_100134638;
  if (!qword_100134638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134638);
  }

  return result;
}

unint64_t sub_10001976C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100126618, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000197E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019854(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100019898()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0xD000000000000017;
  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100019938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001D7D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001996C(uint64_t a1)
{
  v2 = sub_10001D4F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000199A8(uint64_t a1)
{
  v2 = sub_10001D4F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000199E4()
{
  v27 = *v0;

  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = type metadata accessor for ApplicationRecord(0);
  type metadata accessor for URL();
  sub_10001D548(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3A4C525520202020;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);

  v6._object = 0x80000001001047D0;
  v6._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v6);
  v7 = *(v0 + v2[6]);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 10;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0x2020202020202020;
      v14._object = 0xE800000000000000;
      String.append(_:)(v14);

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  _StringGuts.grow(_:)(33);

  sub_10005BD44(*(v0 + v2[7]), *(v0 + v2[7] + 8));
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0x80000001001047F0;
  String.append(_:)(v20);

  _StringGuts.grow(_:)(23);

  sub_10005BD44(*(v0 + v2[8]), *(v0 + v2[8] + 8));
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000100104820;
  String.append(_:)(v25);

  return v27;
}

uint64_t sub_100019D24()
{
  _StringGuts.grow(_:)(24);
  v1 = *v0;

  v2._countAndFlagsBits = 2108704;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  type metadata accessor for ApplicationRecord(0);
  type metadata accessor for URL();
  sub_10001D548(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2112041;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7372657669726420;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  return v1;
}

uint64_t sub_100019EBC(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100134988, &qword_1000F4180);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v16 - v8;
  sub_100003C4C(a1, a1[3]);
  sub_10001D4F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for ApplicationRecord(0);
    LOBYTE(v17) = 1;
    type metadata accessor for URL();
    sub_10001D548(&qword_100134990, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + v10[6]);
    v19 = 2;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + v10[7]);
    v12 = v11[1];
    v17 = *v11;
    v18 = v12;
    v19 = 3;
    sub_1000146C4(v17, v12);
    sub_10001D6A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000128D8(v17, v18);
    v13 = (v3 + v10[8]);
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 4;
    sub_1000146C4(v17, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000128D8(v17, v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001A19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for URL();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003CDC(&qword_100134968, &qword_1000F4178);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24, v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for ApplicationRecord(0);
  __chkstk_darwin(v10, v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003C4C(a1, a1[3]);
  sub_10001D4F4();
  v23 = v9;
  v14 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100003C90(a1);
  }

  v15 = v21;
  LOBYTE(v26) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v16;
  v25 = v16;
  LOBYTE(v26) = 1;
  sub_10001D548(&qword_100134978, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[0] = v10;
  (*(v15 + 32))(v13 + *(v10 + 20), v6, v3);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  v27 = 2;
  sub_10001945C(&qword_1001345F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v19[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v19[0];
  *(v13 + *(v19[0] + 24)) = v26;
  v27 = 3;
  sub_10001D590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + *(v17 + 28)) = v26;
  v27 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v23, v24);
  *(v13 + *(v17 + 32)) = v26;
  sub_10001D5E4(v13, v20);
  sub_100003C90(a1);
  return sub_10001D648(v13);
}

uint64_t sub_10001A6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10001A75C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = sub_10003D670(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 8))();
  if (!v7)
  {
    v13 = 0x8000000100104890;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000028;
    goto LABEL_7;
  }

  v8 = v7;
  v33 = v6;
  v9 = (*(a2 + 32))(a1, a2);
  if (!v9)
  {

    v13 = 0x80000001001048C0;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000034;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = (*(a2 + 40))(a1, a2);
  if (v12 >> 60 == 15)
  {

    v13 = 0x8000000100104900;
    sub_10001449C();
    swift_allocError();
    v15 = 0xD000000000000038;
LABEL_7:
    *v14 = v15;
    *(v14 + 8) = v13;
    *(v14 + 16) = v29;
    *(v14 + 32) = v30;
    *(v14 + 48) = v31;
    *(v14 + 64) = v32;
    *(v14 + 72) = 10;
    return swift_willThrow();
  }

  v17 = v11;
  v18 = v12;
  v19 = (*(a2 + 24))(a1, a2);
  if (v20 >> 60 == 15)
  {

    sub_10001449C();
    swift_allocError();
    *v21 = 0xD000000000000037;
    *(v21 + 8) = 0x8000000100104940;
    *(v21 + 16) = v29;
    *(v21 + 32) = v30;
    *(v21 + 48) = v31;
    *(v21 + 64) = v32;
    *(v21 + 72) = 10;
    swift_willThrow();
    return sub_100014988(v17, v18);
  }

  else
  {
    v28 = v19;
    v25 = *(a2 + 16);
    v27 = v20;
    v26 = v18;
    v22 = type metadata accessor for ApplicationRecord(0);
    result = v25(a1, a2);
    *a3 = v33;
    a3[1] = v8;
    *(a3 + v22[6]) = v10;
    v23 = (a3 + v22[7]);
    *v23 = v17;
    v23[1] = v26;
    v24 = (a3 + v22[8]);
    *v24 = v28;
    v24[1] = v27;
  }

  return result;
}

uint64_t sub_10001AC14()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_10001AC48(v0);
    *(v0 + 96) = v1 & 1;
  }

  return v1 & 1;
}

BOOL sub_10001AC48(uint64_t a1)
{
  sub_100003C4C((a1 + 16), *(a1 + 40));
  sub_1000DFB90(v13);
  sub_100003C4C(v13, v13[3]);
  v12[3] = &type metadata for SupportsThirdPartyDriversDeviceProperty;
  v12[4] = &off_10012D9F8;
  v1 = swift_allocObject();
  v12[0] = v1;
  v1[2] = 0xD000000000000015;
  v1[3] = 0x80000001001049A0;
  v1[4] = 0xD00000000000001CLL;
  v1[5] = 0x80000001001049C0;
  sub_1000EBACC(v12, &v14);
  sub_100003C90(v12);
  sub_100003C90(v13);
  v2 = *(&v15 + 1) != 0;
  sub_10000A184(&v14, &qword_1001343C8, &unk_1000F3CA0);
  if (qword_100133AC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000144F0(v3, qword_10014E998);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 0x7374726F70707573;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (v2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0x80000001001049E0;
    }

    v10 = sub_1000E3AF8(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Hardware %s third party drivers", v6, 0xCu);
    sub_100003C90(v7);
  }

  return v2;
}

uint64_t sub_10001AEC0()
{
  v1 = *(v0 + 97);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_10001AEF4(v0);
    *(v0 + 97) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_10001AEF4(uint64_t a1)
{
  sub_100003C4C((a1 + 16), *(a1 + 40));
  sub_1000DF65C(v13);
  sub_100003C4C(v13, v13[3]);
  v1 = sub_100068DB8(0xD000000000000014, 0x8000000100104980) == 1;
  v3 = v1 & ~v2;
  sub_100003C90(v13);
  if (qword_100133AC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000144F0(v4, qword_10014E998);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 29545;
    }

    else
    {
      v9 = 0x746F6E207369;
    }

    if (v3)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_1000E3AF8(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Third party driver boot arg %s enabled", v7, 0xCu);
    sub_100003C90(v8);
  }

  return v3;
}

void sub_10001B0B4()
{
  v1 = v0;
  v2 = v0[9];
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3 == 2)
    {

      v4 = sub_10009E624();
      *(v2 + 72) = v4 & 1;

      if ((v4 & 1) == 0)
      {
LABEL_4:
        if (qword_100133AC8 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000144F0(v5, qword_10014E998);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Using cached application list", v8, 2u);
        }

        v9 = v1[10];
        v10 = OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached;
        if (*(v9 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached))
        {

          return;
        }

        *(v9 + v10) = sub_10001CB28();

        goto LABEL_25;
      }
    }

    else if ((v3 & 1) == 0)
    {
      goto LABEL_4;
    }

    v11 = sub_10003E650(_swiftEmptyArrayStorage);
    v24 = v11;
    if (sub_10001AC14() & 1) != 0 || (sub_10001AEC0())
    {
      if (qword_100133AC8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000144F0(v12, qword_10014E998);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Retrieving applications from LaunchServices", v15, 2u);
      }

      sub_100003C4C(v1 + 2, v1[5]);
      sub_1000DFD4C(v23);
      v16 = v23[4];
      v17 = sub_100003C4C(v23, v23[3]);
      __chkstk_darwin(v17, v18);
      (*(v16 + 16))(sub_10001DED4);
      sub_100003C90(v23);
      v11 = v24;
    }

    else
    {
      if (qword_100133AC8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000144F0(v19, qword_10014E998);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Third party drivers are disabled", v22, 2u);
      }
    }

    swift_bridgeObjectRetain_n();
    sub_10001C2F4(v11);
LABEL_25:

    return;
  }

  __break(1u);
}

uint64_t sub_10001B474(void *a1, uint64_t *a2)
{
  v77 = a2;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = (&v72 - v8);
  v80 = type metadata accessor for ApplicationRecord(0);
  v78 = *(v80 - 8);
  v11 = __chkstk_darwin(v80, v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v72 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v72 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v72 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v72 - v27;
  v30 = a1[3];
  v29 = a1[4];
  sub_100003C4C(a1, v30);
  v31 = v79;
  sub_10001A918(v30, v29, v9);
  if (v31)
  {

    (*(v78 + 56))(v9, 1, 1, v80);
    return sub_10000A184(v9, &qword_1001342D8, &unk_100101820);
  }

  else
  {
    v34 = v76;
    v33 = v77;
    v72 = v21;
    v73 = v17;
    v74 = v13;
    v35 = v25;
    v79 = 0;
    v36 = v78;
    v37 = *(v78 + 56);
    v38 = v80;
    v37(v9, 0, 1, v80);
    sub_10001DE00(v9, v28);
    v39 = v28;
    if (*(*&v28[*(v38 + 24)] + 16))
    {
      v40 = *(v38 + 32);
      v75 = v28;
      v41 = &v28[v40];
      v42 = *v33;
      if (*(v42 + 16) && (v43 = sub_1000618A8(*v41, v41[1]), (v44 & 1) != 0))
      {
        v45 = v35;
        sub_10001D5E4(*(v42 + 56) + *(v36 + 72) * v43, v35);
        if (qword_100133AC8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_1000144F0(v46, qword_10014E998);
        v47 = v75;
        v48 = v72;
        sub_10001D5E4(v75, v72);
        v49 = v73;
        sub_10001D5E4(v47, v73);
        v50 = v74;
        sub_10001D5E4(v45, v74);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v82 = v78;
          *v53 = 136315650;
          v54 = v79;
          v55 = sub_10005BD44(*(v48 + *(v38 + 32)), *(v48 + *(v38 + 32) + 8));
          v79 = v54;
          v81 = v55;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          LODWORD(v80) = v52;
          sub_100018594();
          v56 = BidirectionalCollection<>.joined(separator:)();
          v58 = v57;

          sub_10001D648(v48);
          v59 = sub_1000E3AF8(v56, v58, &v82);

          *(v53 + 4) = v59;
          *(v53 + 12) = 2080;
          v60 = sub_100019D24();
          v62 = v61;
          sub_10001D648(v49);
          v63 = sub_1000E3AF8(v60, v62, &v82);

          *(v53 + 14) = v63;
          *(v53 + 22) = 2080;
          v64 = sub_100019D24();
          v66 = v65;
          sub_10001D648(v50);
          v67 = sub_1000E3AF8(v64, v66, &v82);

          *(v53 + 24) = v67;
          _os_log_impl(&_mh_execute_header, v51, v80, "Found two applications with the same unique identifier %s:\n%s\n%s", v53, 0x20u);
          swift_arrayDestroy();

          v68 = v45;
        }

        else
        {

          sub_10001D648(v50);
          sub_10001D648(v49);
          sub_10001D648(v45);
          v68 = v48;
        }

        sub_10001D648(v68);
        v39 = v75;
      }

      else
      {
        v69 = *v41;
        v70 = v41[1];
        v71 = v75;
        sub_10001D5E4(v75, v34);
        v37(v34, 0, 1, v38);
        sub_1000146C4(v69, v70);
        sub_100048438(v34, v69, v70);
        v39 = v71;
      }
    }

    return sub_10001D648(v39);
  }
}

_UNKNOWN **sub_10001BA20()
{
  sub_10001B0B4();
  v2 = v1;
  v3 = *(v0 + 88);
  if (v3 && (, , v4 = sub_1000451F8(v2, v3), , , (v4 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    *(v0 + 88) = v2;
    v5 = &off_100126050;
  }

  return v5;
}

void sub_10001BAB8()
{
  v1 = type metadata accessor for ApplicationRecord(0);
  v45 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v2);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v42 - v10;
  v49 = 0xD000000000000017;
  v50 = 0x8000000100104870;
  if (*(v0 + 88))
  {
    v12 = *(v0 + 88);
  }

  else
  {
    sub_10001B0B4();
    v12 = v13;
    *(v0 + 88) = v13;
  }

  v46 = v12;
  v16 = *(v12 + 64);
  v15 = v12 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v43 = v11;
  v44 = v8;
  v22 = &qword_1001349F8;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_15:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v47;
      v29 = (*(v46 + 48) + 16 * v27);
      v30 = *v29;
      v31 = v29[1];
      sub_10001D5E4(*(v46 + 56) + *(v45 + 72) * v27, v47);
      v32 = sub_100003CDC(v22, &qword_1000F41A0);
      v33 = *(v32 + 48);
      v34 = v44;
      *v44 = v30;
      v34[1] = v31;
      v35 = v28;
      v8 = v34;
      sub_10001DE00(v35, v34 + v33);
      (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
      sub_1000146C4(v30, v31);
      v25 = v23;
      v36 = v22;
      v11 = v43;
LABEL_16:
      sub_10001DE64(v8, v11);
      v37 = sub_100003CDC(v36, &qword_1000F41A0);
      if ((*(*(v37 - 8) + 48))(v11, 1, v37) == 1)
      {
        break;
      }

      sub_1000128D8(*v11, *(v11 + 1));
      v38 = v47;
      sub_10001DE00(&v11[*(v37 + 48)], v47);
      v48._countAndFlagsBits = sub_1000199E4();
      v48._object = v39;
      v40._countAndFlagsBits = 10;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      String.append(_:)(v48);

      sub_10001D648(v38);
      v21 = v25;
      v22 = v36;
      if (!v19)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v20 <= v21 + 1)
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v36 = v22;
        v41 = sub_100003CDC(v22, &qword_1000F41A0);
        (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
        v19 = 0;
        goto LABEL_16;
      }

      v19 = *(v15 + 8 * v23);
      ++v21;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10001BE94()
{
  sub_100003C90((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_10001BF18()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10001BF54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = sub_100003CDC(&qword_1001349C8, &qword_1000F4198);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_100003C4C(a1, a1[3]);
  sub_10001DB8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_100003CDC(&qword_1001349B0, &qword_1000F4190);
    sub_10001DC9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10001C110()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_10001C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_10001C22C(uint64_t a1)
{
  v2 = sub_10001DB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C268(uint64_t a1)
{
  v2 = sub_10001DB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C2A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001D988(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_10001C2F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached;
  v10 = *(v1 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached);
  if (v10)
  {
    swift_bridgeObjectRetain_n();

    v11 = sub_1000451F8(a1, v10);

    if (v11)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
  }

  v67 = v9;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  *&v68 = 0xD000000000000024;
  *(&v68 + 1) = 0x80000001001038C0;
  *&v69 = a1;
  sub_10001DDAC();

  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v12;

  if (qword_100133B00 != -1)
  {
    swift_once();
  }

  v65 = v5;
  v66 = v4;
  v16 = type metadata accessor for Logger();
  v61 = sub_1000144F0(v16, qword_10014EA40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Writing new application cache contents", v19, 2u);
  }

  v62 = OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath;
  URL.appendingPathExtension(_:)();
  v20 = *(v2 + 40);
  v63 = v2;
  sub_100003C4C((v2 + 16), v20);
  sub_1000DF9D4(&v68);
  v21 = *(&v69 + 1);
  v22 = v70;
  sub_100003C4C(&v68, *(&v69 + 1));
  v64 = v8;
  v23 = URL.path.getter();
  v25 = v24;
  v26 = v15;
  sub_1000146C4(v15, v14);
  v27 = sub_10003E834(_swiftEmptyArrayStorage);
  LOBYTE(v23) = (*(v22 + 40))(v23, v25, v15, v14, v27, v21, v22);

  sub_1000128D8(v15, v14);

  sub_100003C90(&v68);

  if (v23)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Replacing old application cache contents", v30, 2u);
    }

    v31 = v63;
    sub_100003C4C((v63 + 16), *(v63 + 40));
    sub_1000DF9D4(&v68);
    v32 = *(&v69 + 1);
    v33 = v70;
    sub_100003C4C(&v68, *(&v69 + 1));
    v34 = v64;
    (*(v33 + 88))(v31 + v62, v64, 0, 0, 0, 0, v32, v33);
    sub_100003C90(&v68);
    sub_100003C4C((v31 + 16), *(v31 + 40));
    sub_1000DF9D4(&v68);
    v58 = *(&v69 + 1);
    v59 = v70;
    sub_100003C4C(&v68, *(&v69 + 1));
    (*(v59 + 104))(v34, v58, v59);
    (*(v65 + 8))(v34, v66);
    sub_1000128D8(v26, v14);
    v60 = v67;
    sub_100003C90(&v68);
    *(v31 + v60) = a1;
  }

  else
  {
    v35 = errno.getter();
    if (strerror(v35))
    {

      v36 = String.init(cString:)();
      v38 = v37;
      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      *&v68 = 0x6946657461657263;
      *(&v68 + 1) = 0xEB0000000020656CLL;
      sub_10001D548(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v39 = v64;
      v40 = v66;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0x3A64656C69616620;
      v42._object = 0xEF206F6E72726520;
      String.append(_:)(v42);
      v43._countAndFlagsBits = v36;
      v43._object = v38;
      String.append(_:)(v43);

      v44 = v68;
      sub_10001449C();
      v45 = swift_allocError();
      *v46 = v44;
      v47 = v71;
      v48 = v70;
      v49 = v69;
      *(v46 + 16) = v68;
      *(v46 + 32) = v49;
      *(v46 + 48) = v48;
      *(v46 + 64) = v47;
      *(v46 + 72) = 19;
      swift_willThrow();
      sub_1000128D8(v26, v14);
      (*(v65 + 8))(v39, v40);
      if (qword_100133B00 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000144F0(v50, qword_10014EA40);
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v68 = v54;
        *v53 = 136315138;
        v72 = v45;
        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        v55 = String.init<A>(describing:)();
        v57 = sub_1000E3AF8(v55, v56, &v68);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to write application cache: %s", v53, 0xCu);
        sub_100003C90(v54);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_10001CB28()
{
  if (qword_100133B00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000144F0(v1, qword_10014EA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v41 = v5;
    *v4 = 136315138;
    v6 = URL.path.getter();
    v8 = sub_1000E3AF8(v6, v7, &v41);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading application cache from %s", v4, 0xCu);
    sub_100003C90(v5);
  }

  sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF9D4(&v41);
  v9 = v43;
  sub_100003C4C(&v41, *(&v42 + 1));
  v10 = URL.path.getter();
  v11 = (*(v9 + 16))(v10);
  v13 = v12;

  sub_100003C90(&v41);
  if (v13 >> 60 == 15)
  {
    v14 = errno.getter();
    result = strerror(v14);
    if (result)
    {
      v16 = String.init(cString:)();
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v41 = v22;
        *v21 = 136315138;
        v23 = sub_1000E3AF8(v16, v18, &v41);

        *(v21 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "contentsOfFile failed to read application cache: %s", v21, 0xCu);
        sub_100003C90(v22);
      }

      else
      {
      }

      return sub_10003E650(_swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Loading application cache, decoding data", v26, 2u);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10001DD58();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v35 = v42;
    if (__PAIR128__(0x80000001001038C0, 0xD000000000000024) == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100014988(v11, v13);

      return v35;
    }

    else
    {

      sub_10001449C();
      v36 = swift_allocError();
      *v37 = 0xD000000000000023;
      *(v37 + 8) = 0x8000000100104840;
      v38 = v44;
      v39 = v43;
      v40 = v42;
      *(v37 + 16) = v41;
      *(v37 + 32) = v40;
      *(v37 + 48) = v39;
      *(v37 + 64) = v38;
      *(v37 + 72) = 9;
      swift_willThrow();
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v41 = v30;
        *v29 = 136315138;
        v45 = v36;
        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        v31 = String.init<A>(describing:)();
        v33 = sub_1000E3AF8(v31, v32, &v41);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "invalid application cache, failed to read plist: %s", v29, 0xCu);
        sub_100003C90(v30);
      }

      v34 = sub_10003E650(_swiftEmptyArrayStorage);

      sub_100014988(v11, v13);
      return v34;
    }
  }

  return result;
}

uint64_t sub_10001D0E8()
{
  sub_100003C90((v0 + 16));
  v1 = OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10001D1C4(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10001D27C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001D33C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001D400(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10001D4A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001D4A4()
{
  if (!qword_100134928)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100134928);
    }
  }
}

unint64_t sub_10001D4F4()
{
  result = qword_100134970;
  if (!qword_100134970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134970);
  }

  return result;
}

uint64_t sub_10001D548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001D590()
{
  result = qword_100134980;
  if (!qword_100134980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134980);
  }

  return result;
}

uint64_t sub_10001D5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D648(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D6A4()
{
  result = qword_100134998;
  if (!qword_100134998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134998);
  }

  return result;
}

BOOL sub_10001D6F8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ApplicationRecord(0);
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_10001A6CC(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0 || !sub_10006475C(*(a1 + v5[7]), *(a1 + v5[7] + 8), *(a2 + v5[7]), *(a2 + v5[7] + 8)))
  {
    return 0;
  }

  v6 = v5[8];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_10006475C(v7, v8, v10, v11);
}

uint64_t sub_10001D7D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100104A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100104A20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100104A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100104A60 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001D988(void *a1)
{
  v3 = sub_100003CDC(&qword_1001349A0, &qword_1000F4188);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_10001DB8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100003CDC(&qword_1001349B0, &qword_1000F4190);
    v10[15] = 1;
    sub_10001DBE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_10001DB8C()
{
  result = qword_1001349A8;
  if (!qword_1001349A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349A8);
  }

  return result;
}

unint64_t sub_10001DBE0()
{
  result = qword_1001349B8;
  if (!qword_1001349B8)
  {
    sub_100009FA4(&qword_1001349B0, &qword_1000F4190);
    sub_10001D590();
    sub_10001D548(&qword_1001349C0, type metadata accessor for ApplicationRecord, &unk_1000F40F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349B8);
  }

  return result;
}

unint64_t sub_10001DC9C()
{
  result = qword_1001349D0;
  if (!qword_1001349D0)
  {
    sub_100009FA4(&qword_1001349B0, &qword_1000F4190);
    sub_10001D6A4();
    sub_10001D548(&qword_1001349D8, type metadata accessor for ApplicationRecord, &unk_1000F40CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349D0);
  }

  return result;
}

unint64_t sub_10001DD58()
{
  result = qword_1001349E0;
  if (!qword_1001349E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E0);
  }

  return result;
}

unint64_t sub_10001DDAC()
{
  result = qword_1001349E8;
  if (!qword_1001349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E8);
  }

  return result;
}

uint64_t sub_10001DE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DEF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for ApplicationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10001E090(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001E0A4(uint64_t a1, int a2)
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

uint64_t sub_10001E0EC(uint64_t result, int a2, int a3)
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

unint64_t sub_10001E140()
{
  result = qword_100134A00;
  if (!qword_100134A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A00);
  }

  return result;
}

unint64_t sub_10001E198()
{
  result = qword_100134A08;
  if (!qword_100134A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A08);
  }

  return result;
}

unint64_t sub_10001E1F0()
{
  result = qword_100134A10;
  if (!qword_100134A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A10);
  }

  return result;
}

unint64_t sub_10001E248()
{
  result = qword_100134A18;
  if (!qword_100134A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A18);
  }

  return result;
}

unint64_t sub_10001E2A0()
{
  result = qword_100134A20;
  if (!qword_100134A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A20);
  }

  return result;
}

unint64_t sub_10001E2F8()
{
  result = qword_100134A28;
  if (!qword_100134A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A28);
  }

  return result;
}

uint64_t sub_10001E34C()
{
  _StringGuts.grow(_:)(22);

  strcpy(v5, "Active Driver ");
  HIBYTE(v5[1]) = -18;
  v1 = *(v0 + *(type metadata accessor for ActiveDriverInfo(0) + 20));
  String.append(_:)(v1);
  v2._countAndFlagsBits = 544497952;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v3);

  return v5[0];
}

uint64_t sub_10001E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001E490()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_10001E664();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10001E664()
{
  v2 = v1;
  v3 = sub_100003CDC(&qword_100134BE0, &qword_1000F44E8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = (&v32 - v5);
  v40 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v35 = *(v40 - 8);
  v8 = __chkstk_darwin(v40, v7);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v34 = &v32 - v11;
  sub_100003C4C((v0 + 24), *(v0 + 48));
  sub_1000DF65C(v39);
  sub_100003C4C(v39, v39[3]);
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000100104B00;
  v38[0] = &off_100125FC0;
  sub_100030728(&off_100125FF0);
  v13 = v38[0];
  *(inited + 72) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(inited + 48) = v13;
  v14 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(inited + 32, &unk_1001372D0, &unk_1000F4500);
  v15 = sub_100020580(v14, 0x7478654420746547, 0xE900000000000073);
  v38[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v38[0] = v15;
  v16 = sub_10009C698(v38);
  v18 = v17;
  sub_100003C90(v38);
  if (v18 >> 60 == 15)
  {
    sub_10001449C();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0;
    *(v19 + 72) = 75;
    swift_willThrow();

    return sub_100003C90(v39);
  }

  v20 = sub_10009CBAC(v16, v18);
  if (v1)
  {

    sub_100014988(v16, v18);
    return sub_100003C90(v39);
  }

  v22 = v20;
  sub_100014988(v16, v18);

  sub_100003C90(v39);
  v23 = v22[2];
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 4;
    v26 = (v35 + 48);
    v27 = _swiftEmptyArrayStorage;
    v33 = v22 + 4;
    while (v24 < v22[2])
    {
      v39[0] = v25[v24];
      sub_10001EBC4(v39, v6);
      if ((*v26)(v6, 1, v40) == 1)
      {
        sub_10000A184(v6, &qword_100134BE0, &qword_1000F44E8);
      }

      else
      {
        v36 = v2;
        v28 = v34;
        sub_100020D24(v6, v34, &qword_100134BE8, &unk_1000F44F0);
        sub_100020D24(v28, v37, &qword_100134BE8, &unk_1000F44F0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100031640(0, v27[2] + 1, 1, v27);
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_100031640((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        sub_100020D24(v37, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, &qword_100134BE8, &unk_1000F44F0);
        v25 = v33;
        v2 = v36;
      }

      if (v23 == ++v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_18:

    if (v27[2])
    {
      sub_100003CDC(&qword_100134BF0, &unk_1000F4510);
      v31 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v31 = &_swiftEmptyDictionarySingleton;
    }

    v39[0] = v31;
    sub_100020864(v27, 1, v39);
    if (!v2)
    {
      return v39[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (!*(*a1 + 16) || (v10 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60), (v11 & 1) == 0) || (sub_10000B430(*(v9 + 56) + 32 * v10, v55), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100133AF0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000144F0(v24, qword_10014EA10);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v27 = 136315394;
      v28 = Dictionary.description.getter();
      v30 = sub_1000E3AF8(v28, v29, v55);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1000E3AF8(0xD00000000000001DLL, 0x8000000100104B60, v55);
      _os_log_impl(&_mh_execute_header, v25, v26, "Codeless info %s did not contain data for key %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_17;
  }

  v12 = v54;
  v56 = v53;
  if (!*(v9 + 16) || (v13 = sub_100061588(0xD000000000000016, 0x8000000100103270), (v14 & 1) == 0) || (sub_10000B430(*(v9 + 56) + 32 * v13, v55), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100133AF0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000144F0(v34, qword_10014EA10);

    v25 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v12;
      v55[0] = v37;
      *v36 = 136315394;
      v38 = Dictionary.description.getter();
      v40 = sub_1000E3AF8(v38, v39, v55);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1000E3AF8(0xD000000000000016, 0x8000000100103270, v55);
      _os_log_impl(&_mh_execute_header, v25, v35, "Codeless info %s did not contain path for key %s", v36, 0x16u);
      swift_arrayDestroy();

      sub_1000128D8(v56, v52);
    }

    else
    {
      sub_1000128D8(v56, v12);
    }

LABEL_17:

    v31 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
    v32 = *(*(v31 - 8) + 56);
    v33 = a2;
    return v32(v33, 1, 1, v31);
  }

  v52 = a2;
  if (qword_100133A50 != -1)
  {
    swift_once();
  }

  v15 = *(v9 + 16);
  v50 = qword_10014E8C0;
  v51 = *algn_10014E8C8;
  if (v15)
  {
    v16 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v17)
    {
      sub_10000B430(*(v9 + 56) + 32 * v16, v55);
      if (swift_dynamicCast())
      {
        v50 = v54;
        v51 = v53;
        URL.init(fileURLWithPath:isDirectory:)();

        v18 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
        v19 = v52;
        v20 = v52 + *(v18 + 48);
        *v52 = v56;
        v19[1] = v12;
        (*(v5 + 32))(v20, v8, v4);
        v21 = &v20[*(type metadata accessor for ActiveDriverInfo(0) + 20)];
        v22 = v50;
        *v21 = v51;
        *(v21 + 1) = v22;
        return (*(*(v18 - 8) + 56))(v19, 0, 1, v18);
      }
    }
  }

  if (qword_100133AF0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000144F0(v41, qword_10014EA10);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v44 = 136315394;
    v45 = Dictionary.description.getter();
    v47 = sub_1000E3AF8(v45, v46, v55);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1000E3AF8(v50, v51, v55);
    _os_log_impl(&_mh_execute_header, v42, v43, "Codeless info %s did not contain identifier for key %s", v44, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000128D8(v56, v12);

  v48 = v52;
  v31 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v32 = *(*(v31 - 8) + 56);
  v33 = v48;
  return v32(v33, 1, 1, v31);
}

uint64_t sub_10001F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  __chkstk_darwin(v6 - 8, v7);
  v60 = &v56[-v8];
  active = type metadata accessor for ActiveDriverInfo(0);
  v11 = __chkstk_darwin(active, v10);
  v13 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v56[-v16];
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v56[-v20];
  __chkstk_darwin(v19, v22);
  v24 = &v56[-v23];
  if (qword_100133AF0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000144F0(v25, qword_10014EA10);
  sub_100020494(a1, v24);
  v61 = a1;
  sub_100020494(a1, v21);
  sub_100020494(a2, v17);
  v62 = a2;
  sub_100020494(a2, v13);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v59 = v3;
    v29 = v28;
    v58 = swift_slowAlloc();
    v65[0] = v58;
    *v29 = 136315906;
    v30 = active;
    v31 = &v24[*(active + 20)];
    v57 = v27;
    v32 = *v31;
    v33 = v31[1];

    sub_100020808(v24);
    v34 = sub_1000E3AF8(v32, v33, v65);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = URL.path.getter();
    v37 = v36;
    sub_100020808(v21);
    v38 = sub_1000E3AF8(v35, v37, v65);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = &v17[*(v30 + 20)];
    v40 = *v39;
    v41 = v39[1];

    sub_100020808(v17);
    v42 = sub_1000E3AF8(v40, v41, v65);

    *(v29 + 24) = v42;
    *(v29 + 32) = 2080;
    v43 = URL.path.getter();
    v45 = v44;
    sub_100020808(v13);
    v46 = sub_1000E3AF8(v43, v45, v65);

    *(v29 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v26, v57, "Drivers with identifiers %s (%s), %s (%s) have the same unique identifier", v29, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100020808(v13);
    sub_100020808(v17);
    sub_100020808(v21);
    sub_100020808(v24);
  }

  v47 = v61;
  v65[0] = URL.path.getter();
  v65[1] = v48;
  v49 = v62;
  v63 = URL.path.getter();
  v64 = v50;
  v51 = type metadata accessor for Locale();
  v52 = v60;
  (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
  sub_100012814();
  v53 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_10000A184(v52, &qword_100134BF8, &qword_1000F4520);

  if (v53 == -1)
  {
    v54 = v47;
  }

  else
  {
    v54 = v49;
  }

  return sub_100020494(v54, v66);
}

_UNKNOWN **sub_10001F840()
{
  v1 = sub_10001E664();

  v2 = *(v0 + 72);
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = sub_100045A08(v1, v2);

  if ((v3 & 1) == 0)
  {
LABEL_5:
    *(v0 + 72) = v1;
    v4 = &off_100126110;
    goto LABEL_6;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

unint64_t sub_10001F904()
{
  active = type metadata accessor for ActiveDriverInfo(0);
  v74 = *(active - 8);
  v2 = __chkstk_darwin(active, v1);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2, v5);
  v73 = &v70 - v6;
  v7 = sub_100003CDC(&qword_100134BD0, &qword_1000F44D8);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v12);
  v14 = (&v70 - v13);
  v93 = 0xD000000000000010;
  v94 = 0x8000000100104AE0;
  v15 = sub_10001E490();
  v16 = 0;
  v18 = v15 + 64;
  v17 = *(v15 + 64);
  v75 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v86 = xmmword_1000F3160;
  v72 = v11;
  v77 = v15 + 64;
  v76 = v22;
  v71 = active;
  v70 = v4;
  v78 = v14;
  while (1)
  {
    if (v21)
    {
      v80 = v16;
      v31 = v16;
LABEL_16:
      v79 = (v21 - 1) & v21;
      v34 = __clz(__rbit64(v21)) | (v31 << 6);
      v35 = (*(v75 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = v73;
      sub_100020494(*(v75 + 56) + *(v74 + 72) * v34, v73);
      v39 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
      v40 = *(v39 + 48);
      *v11 = v36;
      v11[1] = v37;
      sub_1000204F8(v38, v11 + v40);
      (*(*(v39 - 8) + 56))(v11, 0, 1, v39);
      sub_1000146C4(v36, v37);
    }

    else
    {
      v32 = v22 <= v16 + 1 ? v16 + 1 : v22;
      v33 = v32 - 1;
      while (1)
      {
        v31 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_61;
        }

        if (v31 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v31);
        ++v16;
        if (v21)
        {
          v80 = v31;
          goto LABEL_16;
        }
      }

      v52 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
      (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
      v79 = 0;
      v80 = v33;
    }

    sub_100020D24(v11, v14, &qword_100134BD0, &qword_1000F44D8);
    v41 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
    if ((*(*(v41 - 8) + 48))(v14, 1, v41) == 1)
    {
      break;
    }

    v42 = v14;
    v44 = *v14;
    v43 = v14[1];
    sub_1000204F8(v42 + *(v41 + 48), v4);
    v92._countAndFlagsBits = 538976288;
    v92._object = 0xE400000000000000;
    v45 = v43 >> 62;
    v85 = HIDWORD(v44);
    if ((v43 >> 62) > 1)
    {
      if (v45 != 2)
      {
        v51 = _swiftEmptyArrayStorage;
        goto LABEL_5;
      }

      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      v46 = v47 - v48;
      if (__OFSUB__(v47, v48))
      {
        goto LABEL_69;
      }

      if (!v46)
      {
        goto LABEL_30;
      }
    }

    else if (v45)
    {
      v50 = v85 - v44;
      if (__OFSUB__(v85, v44))
      {
        goto LABEL_70;
      }

      v46 = v50;
      if (!v50)
      {
LABEL_30:
        v51 = _swiftEmptyArrayStorage;
        goto LABEL_4;
      }
    }

    else
    {
      v46 = BYTE6(v43);
      if (!BYTE6(v43))
      {
        goto LABEL_30;
      }
    }

    v91 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v46 & ~(v46 >> 63), 0);
    v84 = v44;
    if (v45)
    {
      if (v45 == 2)
      {
        v49 = *(v44 + 16);
      }

      else
      {
        v49 = v84;
      }
    }

    else
    {
      v49 = 0;
    }

    v89 = v49;
    if (v46 < 0)
    {
      goto LABEL_68;
    }

    v53 = 0;
    v51 = v91;
    v82 = v44 >> 32;
    v83 = BYTE6(v43);
    v81 = &v90 + v89;
    v87 = v43 >> 62;
    v88 = v44;
    do
    {
      if (v53 >= v46)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
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
        __break(1u);
      }

      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_60;
      }

      v55 = v89 + v53;
      if (v45 == 2)
      {
        if (v55 < *(v44 + 16))
        {
          goto LABEL_63;
        }

        if (v55 >= *(v44 + 24))
        {
          goto LABEL_65;
        }

        v60 = __DataStorage._bytes.getter();
        if (!v60)
        {
          goto LABEL_72;
        }

        v57 = v60;
        v61 = __DataStorage._offset.getter();
        v59 = v55 - v61;
        if (__OFSUB__(v55, v61))
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (v45 == 1)
      {
        if (v55 < v84 || v55 >= v82)
        {
          goto LABEL_64;
        }

        v56 = __DataStorage._bytes.getter();
        if (!v56)
        {
          goto LABEL_71;
        }

        v57 = v56;
        v58 = __DataStorage._offset.getter();
        v59 = v55 - v58;
        if (__OFSUB__(v55, v58))
        {
          goto LABEL_66;
        }

LABEL_51:
        v62 = *(v57 + v59);
        goto LABEL_54;
      }

      if (v55 >= v83)
      {
        goto LABEL_62;
      }

      LOWORD(v90._countAndFlagsBits) = v44;
      BYTE2(v90._countAndFlagsBits) = BYTE2(v44);
      BYTE3(v90._countAndFlagsBits) = BYTE3(v44);
      BYTE4(v90._countAndFlagsBits) = v85;
      BYTE5(v90._countAndFlagsBits) = BYTE5(v44);
      BYTE6(v90._countAndFlagsBits) = BYTE6(v44);
      HIBYTE(v90._countAndFlagsBits) = HIBYTE(v44);
      LOWORD(v90._object) = v43;
      BYTE2(v90._object) = BYTE2(v43);
      BYTE3(v90._object) = BYTE3(v43);
      BYTE4(v90._object) = BYTE4(v43);
      BYTE5(v90._object) = BYTE5(v43);
      v62 = v81[v53];
LABEL_54:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v63 = swift_allocObject();
      *(v63 + 16) = v86;
      *(v63 + 56) = &type metadata for UInt8;
      *(v63 + 64) = &protocol witness table for UInt8;
      *(v63 + 32) = v62;
      v64 = String.init(format:_:)();
      v45 = v65;
      v91 = v51;
      v67 = v51[2];
      v66 = v51[3];
      if (v67 >= v66 >> 1)
      {
        sub_1000635A4((v66 > 1), v67 + 1, 1);
        v51 = v91;
      }

      v51[2] = v67 + 1;
      v68 = &v51[2 * v67];
      v68[4] = v64;
      v68[5] = v45;
      ++v53;
      LODWORD(v45) = v87;
      v44 = v88;
    }

    while (v54 != v46);
    active = v71;
    v4 = v70;
LABEL_4:
    v11 = v72;
LABEL_5:
    v90._countAndFlagsBits = v51;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v23 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    strcpy(&v90, "Active Driver ");
    HIBYTE(v90._object) = -18;
    String.append(_:)(*&v4[*(active + 20)]);
    v28._countAndFlagsBits = 544497952;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);
    v29._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v29);

    String.append(_:)(v90);

    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    String.append(_:)(v92);

    sub_1000128D8(v44, v43);
    sub_100020808(v4);
    v14 = v78;
    v21 = v79;
    v18 = v77;
    v22 = v76;
    v16 = v80;
  }

  return v93;
}

uint64_t sub_100020180()
{

  sub_100003C90((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100020208(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000202DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ActiveDriverInfo(uint64_t a1)
{
  result = qword_100134B98;
  if (!qword_100134B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000203E4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100020458()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100020494(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1000204F8(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

unint64_t sub_100020580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v7 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v8 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v7, &unk_1001372D0, &unk_1000F4500);
  if (a1)
  {
    v13 = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    *&v12 = a1;
    sub_10000B48C(&v12, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v11, 0xD000000000000016, 0x8000000100104BA0, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

unint64_t sub_1000206CC(uint64_t a1)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x8000000100104BC0;
  v4 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v3, &unk_1001372D0, &unk_1000F4500);
  if (a1)
  {
    v9 = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    *&v8 = a1;
    sub_10000B48C(&v8, v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v7, 0xD000000000000016, 0x8000000100104BA0, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

uint64_t sub_100020808(uint64_t a1)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_100020864(uint64_t a1, char a2, void *a3)
{
  v62 = a3;
  active = type metadata accessor for ActiveDriverInfo(0);
  v59 = *(active - 8);
  v8 = __chkstk_darwin(active - 8, v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v51 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v51 - v16;
  v18 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v60 = (&v51 - v22);
  v58 = *(a1 + 16);
  if (!v58)
  {
  }

  v53 = v14;
  v54 = v10;
  v61 = v3;
  v23 = 0;
  v24 = *(v21 + 48);
  v56 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v57 = v24;
  v55 = a1;
  v52 = v19;
  while (1)
  {
    if (v23 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v25 = v60;
    sub_100020D8C(v56 + *(v19 + 72) * v23, v60);
    v26 = v25[1];
    v65 = *v25;
    v27 = v65;
    v66 = v26;
    v28 = v17;
    sub_1000204F8(v25 + v57, v17);
    v29 = *v62;
    v31 = sub_1000618A8(v27, v26);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_21;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if ((a2 & 1) == 0)
      {
        sub_10003A0C4();
      }
    }

    else
    {
      sub_1000332D4(v34, a2 & 1);
      v36 = sub_1000618A8(v27, v26);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_23;
      }

      v31 = v36;
    }

    v38 = *v62;
    if (v35)
    {
      break;
    }

    v38[(v31 >> 6) + 8] |= 1 << v31;
    v43 = (v38[6] + 16 * v31);
    *v43 = v27;
    v43[1] = v26;
    v44 = v38[7] + *(v59 + 72) * v31;
    v17 = v28;
    sub_1000204F8(v28, v44);
    v45 = v38[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_22;
    }

    v38[2] = v47;
LABEL_3:
    ++v23;
    a2 = 1;
    a1 = v55;
    if (v58 == v23)
    {
    }
  }

  v39 = *(v59 + 72) * v31;
  v40 = v54;
  sub_100020494(v38[7] + v39, v54);
  v41 = v53;
  v17 = v28;
  v42 = v61;
  sub_10001F3A4(v40, v28, v53);
  v61 = v42;
  if (!v42)
  {
    sub_100020808(v40);
    sub_100020808(v28);
    sub_1000128D8(v27, v26);
    sub_100020DFC(v41, v38[7] + v39);
    v19 = v52;
    goto LABEL_3;
  }

  sub_100020808(v40);
  v67 = v61;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100020808(v28);
    sub_1000128D8(v27, v26);
  }

LABEL_24:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v49._object = 0x8000000100104B40;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v49);
  _print_unlocked<A, B>(_:_:)();
  v50._countAndFlagsBits = 39;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100020D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100020D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020DFC(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  (*(*(active - 8) + 40))(a2, a1, active);
  return a2;
}

uint64_t getEnumTagSinglePayload for CollectionKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CollectionKind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020FB4()
{
  result = qword_100138990;
  if (!qword_100138990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100138990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExceptionList.ExceptionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExceptionList.ExceptionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100021164()
{
  result = qword_100134C00;
  if (!qword_100134C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C00);
  }

  return result;
}

unint64_t sub_100021218()
{
  result = qword_100134CA0;
  if (!qword_100134CA0)
  {
    sub_100009FA4(&qword_100134CA8, qword_1000F46A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA0);
  }

  return result;
}

Swift::Int sub_10002127C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10002133C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000213F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "OSKextExcludeList";
  v4 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v2 == 1)
  {
    v6 = "OSKextExcludeList";
  }

  else
  {
    v6 = "OSKextSigExceptionHashList";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.message.bundlePath";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "OSKextSigExceptionHashList";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.message.bundlePath";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000214D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002156C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000215F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002168C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023728(*a1);
  *a2 = result;
  return result;
}

void sub_1000216BC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "OSKextExcludeList";
  v4 = 0xD00000000000001ALL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "OSKextSigExceptionHashList";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.message.bundlePath";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_10002172C()
{
  result = qword_100134CB0;
  if (!qword_100134CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CB0);
  }

  return result;
}

void sub_100021780(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  if (*(v1 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int sub_10002188C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (*(v0 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1000219B0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100021A60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100022BC0(*a1);
  *a2 = result;
  return result;
}

void sub_100021A90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958081;
  v5 = 20805;
  v6 = 21575;
  if (v2 != 4)
  {
    v6 = 17735;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 21580;
  if (v2 != 1)
  {
    v7 = 17740;
  }

  if (*v1)
  {
    v4 = v7;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v8;
  a1[1] = v3;
}

Swift::Int sub_100021B10(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL sub_100021C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100022A04(v5, v7);
}

uint64_t sub_100021C70(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000D7374();
  if (!*(a3 + 16))
  {
    goto LABEL_53;
  }

  v8 = sub_100061588(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v43 = *(*(a3 + 56) + 8 * v8);

  result = sub_1000D7614();
  if (!v12)
  {
LABEL_53:

    return 0;
  }

  v13 = v12;
  if (a2)
  {
    v14 = result;
    sub_100014894(a1 + 32, v44, &unk_100137390, &unk_1000F4E70);
    if (v46)
    {
      v15 = sub_100003C4C(v44, v46);
      v16 = *(*v15 + 40);
      v17 = *(*v15 + 48);
      sub_1000146C4(v16, v17);
      sub_100003C90(v44);
      v44[0] = v14;
      v44[1] = v13;
      v45 = 3;
      v46 = v16;
      v47 = v17;
      v18 = sub_1000815E0(v44, v43);

      sub_100014528(v16, v17);
      if (v18)
      {
        return 1;
      }
    }

    else
    {

      sub_10000A184(v44, &unk_100137390, &unk_1000F4E70);
    }

    return 0;
  }

  v19 = 0;
  v20 = 1 << *(v43 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v43 + 56);
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
LABEL_19:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v26 = *(v43 + 48) + 40 * (v25 | (v19 << 6));
    v27 = *(v26 + 16);
    v29 = *(v26 + 24);
    v28 = *(v26 + 32);
    if (v27 <= 2)
    {
      if (v27 == 1)
      {
        String.utf8CString.getter();

        sub_1000146B0(v29, v28);
        v36 = OSKextParseVersionString();

        if (v36 > 0)
        {
          String.utf8CString.getter();
          v37 = OSKextParseVersionString();

          result = sub_100014528(v29, v28);
          v32 = v37 < 1 || v36 >= v37;
          goto LABEL_36;
        }
      }

      else
      {
        if (v27 != 2)
        {
          goto LABEL_51;
        }

        String.utf8CString.getter();

        sub_1000146B0(v29, v28);
        v33 = OSKextParseVersionString();

        if (v33 > 0)
        {
          String.utf8CString.getter();
          v34 = OSKextParseVersionString();

          result = sub_100014528(v29, v28);
          v35 = v34 >= 1 && v34 >= v33;
          goto LABEL_49;
        }
      }

LABEL_13:

      result = sub_100014528(v29, v28);
    }

    else if (v27 == 3)
    {
      String.utf8CString.getter();

      sub_1000146B0(v29, v28);
      v38 = OSKextParseVersionString();

      if (v38 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v39 = OSKextParseVersionString();

      result = sub_100014528(v29, v28);
      if (v39 >= 1 && v38 == v39)
      {
LABEL_51:

        return 1;
      }
    }

    else if (v27 == 4)
    {
      String.utf8CString.getter();

      sub_1000146B0(v29, v28);
      v30 = OSKextParseVersionString();

      if (v30 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v31 = OSKextParseVersionString();

      result = sub_100014528(v29, v28);
      v32 = v31 < 1 || v31 >= v30;
LABEL_36:
      if (!v32)
      {
        goto LABEL_51;
      }
    }

    else
    {
      String.utf8CString.getter();

      sub_1000146B0(v29, v28);
      v41 = OSKextParseVersionString();

      if (v41 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v42 = OSKextParseVersionString();

      result = sub_100014528(v29, v28);
      v35 = v42 >= 1 && v41 >= v42;
LABEL_49:
      if (v35)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      goto LABEL_53;
    }

    v22 = *(v43 + 56 + 8 * v24);
    ++v19;
    if (v22)
    {
      v19 = v24;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000221B8(void *a1, unint64_t *a2)
{
  v43 = *a2;
  v56 = a2[1];
  v2 = a2[2];
  v3 = a2[3];
  *&v48 = 9;
  *(&v48 + 1) = 0xE100000000000000;
  v46 = &v48;

  v5 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100023AE0, v45, v2, v3, v4);
  v6 = v5[2];
  if (!v6)
  {

    v9 = _swiftEmptyArrayStorage;
LABEL_9:
    v17 = v56;
    if (v9[2] == 2)
    {
      v19 = v9[4];
      v18 = v9[5];
      v20 = v9[6];
      v21 = v9[7];

      v22 = sub_100015088(v43, v17);
      if (v23 >> 60 != 15)
      {
        v33 = v22;
        v34 = v23;
        if (!*(*a1 + 16) || (sub_100061588(v19, v18), (v35 & 1) == 0))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v48 = *a1;
          sub_100039468(&_swiftEmptySetSingleton, v19, v18, isUniquelyReferenced_nonNull_native);

          *a1 = v48;
        }

        v37 = sub_100025464(v47, v19, v18);
        if (*v38)
        {
          v52[0] = v20;
          v52[1] = v21;
          v53 = 3;
          v54 = v33;
          v55 = v34;
          sub_1000146C4(v33, v34);
          sub_1000E5304(&v48, v52);
          v39 = *(&v49 + 1);
          v40 = v50;

          sub_100014528(v39, v40);
        }

        else
        {
        }

        (v37)(v47, 0);
        sub_100014528(v33, v34);
      }

      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      *&v48 = 0xD000000000000016;
      *(&v48 + 1) = 0x8000000100104CA0;
      v24._countAndFlagsBits = v43;
      v24._object = v17;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 0x20726F662027;
      v25._object = 0xE600000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = v19;
      v26._object = v18;
      String.append(_:)(v26);
    }

    else
    {

      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      *&v48 = 0xD00000000000001FLL;
      *(&v48 + 1) = 0x8000000100104C80;
      v27._countAndFlagsBits = v2;
      v27._object = v3;
      String.append(_:)(v27);
    }

    v28 = v48;
    sub_10001449C();
    swift_allocError();
    *v29 = v28;
    v30 = v51;
    v31 = v50;
    v32 = v49;
    *(v29 + 16) = v48;
    *(v29 + 32) = v32;
    *(v29 + 48) = v31;
    *(v29 + 64) = v30;
    *(v29 + 72) = 44;
    return swift_willThrow();
  }

  v41 = v3;
  v42 = v2;
  *&v48 = _swiftEmptyArrayStorage;
  result = sub_1000635A4(0, v6, 0);
  v8 = 0;
  v9 = v48;
  v10 = v5 + 7;
  while (v8 < v5[2])
  {

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    *&v48 = v9;
    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_1000635A4((v14 > 1), v15 + 1, 1);
      v9 = v48;
    }

    ++v8;
    v9[2] = v15 + 1;
    v16 = &v9[2 * v15];
    v16[4] = v11;
    v16[5] = v13;
    v10 += 4;
    if (v6 == v8)
    {

      v3 = v41;
      v2 = v42;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000225EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100031B10(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100031B10((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100031B10(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100031B10(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100031B10((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000229AC(uint64_t *a1, void *a2)
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

BOOL sub_100022A04(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10008239C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v11 = *(a2 + 24);
  v12 = v5;
  v6 = v5;
  v7 = v11;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v11 + 1) >> 60 == 15)
    {
      sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
      sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
      sub_100014528(v6, *(&v6 + 1));
      return 1;
    }

    goto LABEL_11;
  }

  if (*(&v11 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
    sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
    sub_100014528(v6, *(&v6 + 1));
    sub_100014528(v7, *(&v7 + 1));
    return 0;
  }

  sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
  sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
  v9 = sub_10006475C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_100014528(v7, *(&v7 + 1));
  sub_100014528(v6, *(&v6 + 1));
  return v9;
}

unint64_t sub_100022BC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100126540, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100022C0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v24[0] = 32;
  v24[1] = 0xE100000000000000;
  v23[2] = v24;
  v4 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100023774, v23, a1, a2, v24);
  v5 = v4[2];
  if (!v5)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_9:
    v16 = v8[2];
    if (v16 == 1)
    {
      v20 = v8[4];
      v19 = v8[5];

      result = 3;
    }

    else if (v16 != 2 || (v18 = v8[4], v17 = v8[5], v20 = v8[6], v19 = v8[7], , , , v25._countAndFlagsBits = v18, v25._object = v17, result = sub_100022BC0(v25), result == 6))
    {

      v20 = 0;
      v19 = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_16;
    }

    v21 = result;
    v22 = 0xF000000000000000;
LABEL_16:
    *a3 = v20;
    a3[1] = v19;
    a3[2] = v21;
    a3[3] = 0;
    a3[4] = v22;
    return result;
  }

  v24[0] = _swiftEmptyArrayStorage;
  result = sub_1000635A4(0, v5, 0);
  v7 = 0;
  v8 = v24[0];
  v9 = v4 + 7;
  while (v7 < v4[2])
  {

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v24[0] = v8;
    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      result = sub_1000635A4((v13 > 1), v14 + 1, 1);
      v8 = v24[0];
    }

    ++v7;
    v8[2] = v14 + 1;
    v15 = &v8[2 * v14];
    v15[4] = v10;
    v15[5] = v12;
    v9 += 4;
    if (v5 == v7)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100022E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100133A70 != -1)
  {
    swift_once();
  }

  if (!*(a1 + 16) || (v6 = sub_100061588(qword_10014E900, *algn_10014E908), (v7 & 1) == 0) || (sub_10000B430(*(a1 + 56) + 32 * v6, &v94), (swift_dynamicCast() & 1) == 0) || (String.utf8CString.getter(), , v8 = OSKextParseVersionString(), , v8 <= 0))
  {

    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v93[0] = v94;
    if (a2)
    {
      if (a2 == 1)
      {
        v33 = 0xD00000000000001ALL;
      }

      else
      {
        v33 = 0xD00000000000001DLL;
      }

      if (a2 == 1)
      {
        v34 = "OSKextExcludeList";
      }

      else
      {
        v34 = "OSKextSigExceptionHashList";
      }
    }

    else
    {
      v33 = 0xD000000000000011;
      v34 = "com.apple.message.bundlePath";
    }

    v35 = v34 | 0x8000000000000000;
    String.append(_:)(*&v33);

    v36 = "17EmbeddedSIPStatus";
    v37 = 0xD000000000000023;
LABEL_37:
    v38 = v36 | 0x8000000000000000;
    String.append(_:)(*&v37);
    a2 = *(&v93[0] + 1);
    sub_10001449C();
    swift_allocError();
    *v39 = v93[0];
    v40 = v97;
    v42 = v95;
    v41 = v96;
    *(v39 + 16) = v94;
    *(v39 + 32) = v42;
    *(v39 + 48) = v41;
    *(v39 + 64) = v40;
    *(v39 + 72) = 44;
    swift_willThrow();
    return a2;
  }

  v9 = 0xD000000000000011;
  v10 = "com.apple.message.bundlePath";
  if (!a2)
  {
    v11 = 0xD000000000000011;
    v12 = "com.apple.message.bundlePath";
    if (*(a1 + 16))
    {
      goto LABEL_15;
    }

LABEL_40:

LABEL_43:
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v93[0] = v94;
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0xD00000000000001ALL;
      }

      else
      {
        v9 = 0xD00000000000001DLL;
      }

      if (a2 == 1)
      {
        v10 = "OSKextExcludeList";
      }

      else
      {
        v10 = "OSKextSigExceptionHashList";
      }
    }

    v44._object = (v10 | 0x8000000000000000);
    v44._countAndFlagsBits = v9;
    String.append(_:)(v44);

    v36 = "or missing version.";
    v37 = 0xD000000000000017;
    goto LABEL_37;
  }

  if (a2 == 1)
  {
    v11 = 0xD00000000000001ALL;
  }

  else
  {
    v11 = 0xD00000000000001DLL;
  }

  if (a2 == 1)
  {
    v12 = "OSKextExcludeList";
  }

  else
  {
    v12 = "OSKextSigExceptionHashList";
  }

  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

LABEL_15:
  v13 = sub_100061588(v11, v12 | 0x8000000000000000);
  v15 = v14;

  if ((v15 & 1) == 0)
  {

    goto LABEL_42;
  }

  sub_10000B430(*(a1 + 56) + 32 * v13, &v94);

  sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v9 = 0xD000000000000011;
    goto LABEL_43;
  }

  v16 = *&v93[0];
  v17 = sub_1000410A8(_swiftEmptyArrayStorage);
  v18 = *&v93[0] + 64;
  v91 = *&v93[0] + 64;
  if (a2)
  {
    *&v93[0] = v17;
    v19 = 1 << *(v16 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v16 + 64);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    v24 = v16;
    if (!v21)
    {
LABEL_22:
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          goto LABEL_51;
        }

        v21 = *(v18 + 8 * v25);
        ++v23;
        if (v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_82;
    }

    while (1)
    {
      v25 = v23;
LABEL_25:
      v26 = (v25 << 10) | (16 * __clz(__rbit64(v21)));
      v27 = (*(v24 + 48) + v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = (*(v24 + 56) + v26);
      v31 = *v30;
      v32 = v30[1];
      *&v94 = v28;
      *(&v94 + 1) = v29;
      *&v95 = v31;
      *(&v95 + 1) = v32;

      sub_1000221B8(v93, &v94);
      if (v3)
      {
        break;
      }

      v21 &= v21 - 1;

      v23 = v25;
      v18 = v91;
      if (!v21)
      {
        goto LABEL_22;
      }
    }

LABEL_80:

    return a2;
  }

  v105 = v17;
  v45 = 1 << *(*&v93[0] + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(*&v93[0] + 64);
  v48 = (v45 + 63) >> 6;
  v87 = *&v93[0];

  v49 = 0;
  v86 = v48;
  while (v47)
  {
    v52 = v49;
LABEL_62:
    v53 = (v52 << 10) | (16 * __clz(__rbit64(v47)));
    v54 = (*(v87 + 48) + v53);
    v55 = v54[1];
    v92 = *v54;
    v56 = (*(v87 + 56) + v53);
    v58 = *v56;
    v57 = v56[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_100022C0C(v58, v57, &v98);
    if (!v99)
    {

      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      *&v94 = 0xD00000000000001DLL;
      *(&v94 + 1) = 0x8000000100104C60;
      v79._countAndFlagsBits = v58;
      v79._object = v57;
      String.append(_:)(v79);

      v80._countAndFlagsBits = 39;
      v80._object = 0xE100000000000000;
      String.append(_:)(v80);
      a2 = *(&v94 + 1);
      v81 = v94;
      sub_10001449C();
      swift_allocError();
      *v82 = v81;
      *(v82 + 8) = a2;
      v83 = v97;
      v85 = v95;
      v84 = v96;
      *(v82 + 16) = v94;
      *(v82 + 32) = v85;
      *(v82 + 48) = v84;
      *(v82 + 64) = v83;
      *(v82 + 72) = 44;
      swift_willThrow();

      goto LABEL_80;
    }

    v88 = *(&v100 + 1);
    v89 = v101;
    v102[0] = v98;
    v102[1] = v99;
    v103 = v100;
    v104 = v101;

    v59 = v105;
    v90 = v55;
    if (!v105[2] || (sub_100061588(v92, v55), (v60 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v55;
      v63 = isUniquelyReferenced_nonNull_native;
      *&v94 = v59;
      v64 = sub_100061588(v92, v62);
      v66 = v59[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_83;
      }

      v70 = v65;
      if (v59[3] < v69)
      {
        sub_1000353C4(v69, v63);
        v64 = sub_100061588(v92, v90);
        if ((v70 & 1) != (v71 & 1))
        {
          goto LABEL_85;
        }

        goto LABEL_70;
      }

      if (v63)
      {
LABEL_70:
        v72 = v94;
        if (v70)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v73 = v64;
        sub_10003B2A4();
        v64 = v73;
        v72 = v94;
        if (v70)
        {
LABEL_71:
          *(v72[7] + 8 * v64) = &_swiftEmptySetSingleton;

          v105 = v72;
          v55 = v90;
          goto LABEL_75;
        }
      }

      v72[(v64 >> 6) + 8] |= 1 << v64;
      v74 = (v72[6] + 16 * v64);
      *v74 = v92;
      v74[1] = v90;
      *(v72[7] + 8 * v64) = &_swiftEmptySetSingleton;
      v75 = v72[2];
      v68 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v68)
      {
        goto LABEL_84;
      }

      v72[2] = v76;
      v105 = v72;
      v55 = v90;
    }

LABEL_75:
    v47 &= v47 - 1;
    v77 = sub_100025464(v93, v92, v55);
    if (*v78)
    {

      sub_1000146B0(v88, v89);
      sub_1000E5304(&v94, v102);
      v50 = *(&v95 + 1);
      v51 = v96;

      sub_100014528(v50, v51);
    }

    (v77)(v93, 0);
    sub_10000A184(&v98, &qword_100134CC0, &qword_1000F4790);

    swift_bridgeObjectRelease_n();
    v49 = v52;
    v18 = v91;
    v48 = v86;
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v52 >= v48)
    {
LABEL_51:

      return a2;
    }

    v47 = *(v18 + 8 * v52);
    ++v49;
    if (v47)
    {
      goto LABEL_62;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100023728(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001267B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023790(uint64_t *a1)
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

uint64_t sub_1000237E8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100023804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10002382C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100023840(uint64_t a1, int a2)
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

uint64_t sub_100023888(uint64_t result, int a2, int a3)
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

unint64_t sub_1000238E4()
{
  result = qword_100134CC8;
  if (!qword_100134CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodeSignatureType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100023A8C()
{
  result = qword_100134CD0;
  if (!qword_100134CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CD0);
  }

  return result;
}

void *sub_100023AFC(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v101 = a3;
  v100 = a2;
  v99 = a1;
  v92 = type metadata accessor for URL();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92, v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  __chkstk_darwin(v7 - 8, v8);
  v94 = &v89 - v9;
  v96 = type metadata accessor for UUID();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96, v10);
  v93 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v3 + 24);
  v12 = *(v97 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v98 = "ith devid+ certificate";
  v102 = v12;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v16)
    {
      goto LABEL_12;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v20 >= v17)
      {

        if (v19[2] && (v47 = sub_100061588(0xD000000000000010, 0x8000000100105020), (v48 & 1) != 0))
        {
          sub_10000B430(v19[7] + 32 * v47, &v110);
          sub_10000A184(&v110, &qword_1001343C8, &unk_1000F3CA0);
          v49 = v97;
        }

        else
        {
          v110 = 0u;
          v111 = 0u;
          sub_10000A184(&v110, &qword_1001343C8, &unk_1000F3CA0);
          v49 = v97;
          v50 = *(v97 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest);
          v51 = *(v97 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest + 8);
          *(&v111 + 1) = &type metadata for Data;
          if (v51 >> 60 == 15)
          {
            v52 = 0;
          }

          else
          {
            v52 = v50;
          }

          v53 = 0xC000000000000000;
          if (v51 >> 60 != 15)
          {
            v53 = v51;
          }

          *&v110 = v52;
          *(&v110 + 1) = v53;
          sub_10000B48C(&v110, &v108);
          sub_1000146B0(v50, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v19;
          sub_100038954(&v108, 0xD000000000000010, 0x8000000100105020, isUniquelyReferenced_nonNull_native);
          v19 = v106;
        }

        v55 = v94;
        sub_100014894(v4 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, v94, &qword_100134FB0, &qword_1000F4E60);
        v56 = v95;
        v57 = v96;
        if ((*(v95 + 48))(v55, 1, v96) == 1)
        {
          sub_10000A184(v55, &qword_100134FB0, &qword_1000F4E60);
          if ((*(v4 + 18) & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_48:
          *(&v111 + 1) = &type metadata for Bool;
          LOBYTE(v110) = 1;
          sub_10000B48C(&v110, &v108);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v19;
          sub_100038954(&v108, 0xD00000000000001BLL, 0x8000000100105080, v69);
          v19 = v106;
        }

        else
        {
          v58 = v93;
          (*(v56 + 32))(v93, v55, v57);
          *&v110 = UUID.uuid.getter();
          WORD4(v110) = v59;
          BYTE10(v110) = v60;
          BYTE11(v110) = v61;
          BYTE12(v110) = v62;
          BYTE13(v110) = v63;
          BYTE14(v110) = v64;
          HIBYTE(v110) = v65;
          v66 = sub_10003F210(&v110, 0x10uLL);
          *(&v111 + 1) = &type metadata for Data;
          *&v110 = v66;
          *(&v110 + 1) = v67;
          sub_10000B48C(&v110, &v108);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v19;
          sub_100038954(&v108, 0x656C646E7542534FLL, 0xEC00000044495555, v68);
          (*(v56 + 8))(v58, v57);
          v19 = v106;
          if (*(v4 + 18))
          {
            goto LABEL_48;
          }
        }

LABEL_49:
        if ((sub_1000D790C() & 1) != 0 || *v49 == _TtC10driverkitd15DriverExtension)
        {
          sub_1000138F8((v49 + 3), &v110);
          if (v113)
          {
            sub_100013954(&v110);
          }

          else
          {
            sub_100009F34(&v110, &v108);
            sub_100009F34(&v108, &v110);
            v70 = *(&v111 + 1);
            v71 = v112;
            sub_100003C4C(&v110, *(&v111 + 1));
            v72 = v90;
            (*(v71 + 64))(v70, v71);
            v73 = URL.path.getter();
            v75 = v74;
            (*(v91 + 8))(v72, v92);
            v109[1] = &type metadata for String;
            *&v108 = v73;
            *(&v108 + 1) = v75;
            sub_10000B48C(&v108, &v106);
            v76 = swift_isUniquelyReferenced_nonNull_native();
            *&v105[0] = v19;
            sub_100038954(&v106, 0xD000000000000017, 0x8000000100105060, v76);
            v19 = *&v105[0];
            sub_100003C90(&v110);
          }

          v77 = sub_100024C38();
          *(&v111 + 1) = &type metadata for Data;
          *&v110 = v77;
          *(&v110 + 1) = v78;
          sub_10000B48C(&v110, &v108);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v19;
          sub_100038954(&v108, 0xD00000000000001DLL, 0x8000000100104B60, v79);
          v80 = v106;
          sub_100014894(v4 + 32, &v110, &unk_100137390, &unk_1000F4E70);
          if (!*(&v111 + 1))
          {
            sub_10000A184(&v110, &unk_100137390, &unk_1000F4E70);
            goto LABEL_59;
          }

          v81 = sub_100003C4C(&v110, *(&v111 + 1));
          v82 = *(*v81 + 24);
          v83 = *(*v81 + 32);
          sub_10003E104(v82, v83);
          sub_100003C90(&v110);
          if (v83)
          {
            if (v83 != 1)
            {
              *(&v111 + 1) = &type metadata for String;
              *&v110 = v82;
              *(&v110 + 1) = v83;
              sub_10000B48C(&v110, &v108);

              v84 = swift_isUniquelyReferenced_nonNull_native();
              *&v106 = v80;
              sub_100038954(&v108, 0xD000000000000016, 0x8000000100105040, v84);
              sub_10003E118(v82, v83);
              return v106;
            }

LABEL_59:
            *(&v111 + 1) = &type metadata for String;
            v85 = 1701736270;
            v86 = 0xE400000000000000;
          }

          else
          {
            *(&v111 + 1) = &type metadata for String;
            v85 = 0x656C707041;
            v86 = 0xE500000000000000;
          }

          *&v110 = v85;
          *(&v110 + 1) = v86;
          sub_10000B48C(&v110, &v108);
          v87 = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v80;
          sub_100038954(&v108, 0xD000000000000016, 0x8000000100105040, v87);
          return v106;
        }

        return v19;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_12:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = (*(v102 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_10000B430(*(v102 + 56) + 32 * v21, &v111);
    *&v110 = v24;
    *(&v110 + 1) = v23;
    sub_100014894(&v110, &v108, &qword_1001350B8, &qword_1000F4F90);
    v25 = *(&v108 + 1);
    v103 = v108;

    v26._countAndFlagsBits = 0xD000000000000012;
    v26._object = (v98 | 0x8000000000000000);
    if (!String.hasPrefix(_:)(v26))
    {
      break;
    }

    sub_100027B1C(v99, v100, v24, v23, v4, v101 & 1, &v106);
    if (!*(&v107 + 1))
    {
      sub_10000A184(&v106, &qword_1001343C8, &unk_1000F3CA0);
LABEL_27:
      v106 = 0u;
      v107 = 0u;
      goto LABEL_28;
    }

    v27 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    *&v105[0] = v104;
    sub_1000265DC(v105, v101 & 1);
    *(&v107 + 1) = v27;
    *&v106 = *&v105[0];
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_28:
    sub_10000A184(&v106, &qword_1001343C8, &unk_1000F3CA0);
    v39 = sub_100061588(v103, v25);
    v41 = v40;

    if (v41)
    {
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v19;
      if (!v42)
      {
        sub_100039F20();
        v19 = v104;
      }

      sub_10000B48C((v19[7] + 32 * v39), v105);
      sub_10003706C(v39, v19);
    }

    else
    {
      memset(v105, 0, sizeof(v105));
    }

    sub_10000A184(v105, &qword_1001343C8, &unk_1000F3CA0);
LABEL_6:
    v16 &= v16 - 1;
    sub_100003C90(v109);
    sub_10000A184(&v110, &qword_1001350B8, &qword_1000F4F90);
  }

  sub_100027B1C(v99, v100, v24, v23, v4, v101 & 1, &v106);
  if (!*(&v107 + 1))
  {
    goto LABEL_28;
  }

LABEL_18:
  sub_10000B48C(&v106, v105);
  v28 = v19;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v104 = v28;
  v31 = sub_100061588(v103, v25);
  v32 = v28[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_65;
  }

  v35 = v30;
  if (v28[3] >= v34)
  {
    if (v29)
    {
      if (v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_100039F20();
      if (v35)
      {
        goto LABEL_25;
      }
    }

LABEL_33:
    v19 = v104;
    v104[(v31 >> 6) + 8] |= 1 << v31;
    v43 = (v19[6] + 16 * v31);
    *v43 = v103;
    v43[1] = v25;
    sub_10000B48C(v105, (v19[7] + 32 * v31));
    v44 = v19[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      v19[2] = v46;
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
  }

  sub_10003301C(v34, v29);
  v36 = sub_100061588(v103, v25);
  if ((v35 & 1) == (v37 & 1))
  {
    v31 = v36;
    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_25:

    v19 = v104;
    v38 = (v104[7] + 32 * v31);
    sub_100003C90(v38);
    sub_10000B48C(v105, v38);
    goto LABEL_6;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100024758()
{
  v1 = v0;
  v2 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v46 - v4;
  v6 = *(v0 + 24);
  v46 = sub_1000D7374();
  v47 = v7;
  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v46;
  v10 = v47;
  v46 = 118;
  v47 = 0xE100000000000000;
  v11 = sub_1000D7614();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0x73726576206F6E3CLL;
    v13 = 0xEC0000003E6E6F69;
  }

  v14 = v13;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v49 = v9;
  v50 = v10;
  v49 = String.init<A>(_:)();
  v50 = v16;
  String.append<A>(contentsOf:)();

  v17 = v49;
  v18 = v50;
  v46 = 40;
  v47 = 0xE100000000000000;
  sub_100014894(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, v5, &qword_100134FB0, &qword_1000F4E60);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    sub_10000A184(v5, &qword_100134FB0, &qword_1000F4E60);
    v21 = 0xE700000000000000;
    v22 = 0x64697575206F6ELL;
  }

  else
  {
    v23 = UUID.uuidString.getter();
    v21 = v24;
    (*(v20 + 8))(v5, v19);
    v22 = v23;
  }

  v25 = v21;
  String.append(_:)(*&v22);

  v26._countAndFlagsBits = 8233;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v49 = v17;
  v50 = v18;
  v49 = String.init<A>(_:)();
  v50 = v27;
  String.append<A>(contentsOf:)();

  v28 = v49;
  v29 = v50;
  v49 = 2125417;
  v50 = 0xE300000000000000;
  sub_1000138F8(v6 + 24, &v46);
  v30._countAndFlagsBits = sub_1000DAD64();
  String.append(_:)(v30);

  sub_100013954(&v46);
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v46 = v49;
  v47 = v50;
  v49 = v28;
  v50 = v29;
  v49 = String.init<A>(_:)();
  v50 = v32;
  String.append<A>(contentsOf:)();

  v33 = v49;
  v34 = v50;
  v49 = 0x2064656E676973;
  v50 = 0xE700000000000000;
  sub_100014894(v1 + 32, &v46, &unk_100137390, &unk_1000F4E70);
  if (v48)
  {
    sub_100003C4C(&v46, v48);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_100003C90(&v46);
  }

  else
  {
    sub_10000A184(&v46, &unk_100137390, &unk_1000F4E70);
    v37 = 0xE600000000000000;
    v35 = 0x3E656E6F6E3CLL;
  }

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 32;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v46 = v49;
  v47 = v50;
  v49 = v33;
  v50 = v34;
  v49 = String.init<A>(_:)();
  v50 = v40;
  String.append<A>(contentsOf:)();

  v41 = v49;
  v42 = v50;
  v46 = 0x207367616C66;
  v47 = 0xE600000000000000;
  v43._countAndFlagsBits = sub_100030434(*(v1 + 16));
  String.append(_:)(v43);

  v49 = v41;
  v50 = v42;
  v49 = String.init<A>(_:)();
  v50 = v44;
  String.append<A>(contentsOf:)();

  return v49;
}

uint64_t sub_100024C38()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000138F8(*(v0 + 24) + 24, v26);
  if (v27)
  {
    sub_100013954(v26);
    *&v26[0] = sub_1000D7374();
    *(&v26[0] + 1) = v11;
    v12._countAndFlagsBits = 0x6E7562206F6E2820;
    v12._object = 0xEC00000029656C64;
    String.append(_:)(v12);
    static String.Encoding.utf8.getter();
    v13 = String.data(using:allowLossyConversion:)();
    v15 = v14;
    result = (*(v2 + 8))(v5, v1);
    if (v15 >> 60 != 15)
    {

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v17 = __DataStorage.init(length:)();
      *&v26[0] = 0x2000000000;
      *(&v26[0] + 1) = v17;
      sub_10003CEB8(v26, 0);
      *(&v26[0] + 1) |= 0x4000000000000000uLL;
      sub_1000146C4(v13, v15);
      sub_10003ED1C(v26, v13, v15);
      sub_100014528(v13, v15);
      sub_100014528(v13, v15);
      return *&v26[0];
    }

    __break(1u);
  }

  else
  {
    sub_100009F34(v26, v28);
    sub_100009F34(v28, v29);
    v19 = v30;
    v20 = v31;
    sub_100003C4C(v29, v30);
    (*(v20 + 64))(v19, v20);
    URL.path.getter();
    (*(v7 + 8))(v10, v6);
    static String.Encoding.utf8.getter();
    v21 = String.data(using:allowLossyConversion:)();
    v23 = v22;
    result = (*(v2 + 8))(v5, v1);
    if (v23 >> 60 != 15)
    {

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v24 = __DataStorage.init(length:)();
      *&v26[0] = 0x2000000000;
      *(&v26[0] + 1) = v24;
      sub_10003CEB8(v26, 0);
      *(&v26[0] + 1) |= 0x4000000000000000uLL;
      sub_1000146C4(v21, v23);
      sub_10003ED1C(v26, v21, v23);
      sub_100014528(v21, v23);
      sub_100014528(v21, v23);
      v18 = *&v26[0];
      sub_100003C90(v29);
      return v18;
    }
  }

  __break(1u);
  return result;
}

double sub_100024FF4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11._object = 0x8000000100104610;
  v11._countAndFlagsBits = 0xD000000000000012;
  if (String.hasPrefix(_:)(v11))
  {
    sub_100027B1C(a1, a2, a3, a4, v5, 0, &v16);
    if (v17)
    {
      v12 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
      if (swift_dynamicCast())
      {
        v18 = v15;
        sub_1000265DC(&v18, 0);
        v14 = v18;
        *(a5 + 24) = v12;
        *a5 = v14;
        return result;
      }
    }

    else
    {
      sub_10000A184(&v16, &qword_1001343C8, &unk_1000F3CA0);
    }

    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {

    return sub_100027B1C(a1, a2, a3, a4, v5, 0, a5);
  }

  return result;
}

uint64_t (*sub_100025148(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003BF70(v6, a2, a3);
  return sub_100041D4C;
}

uint64_t (*sub_1000251D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for URL();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10003BD9C(v3, v8);
  return sub_1000252E8;
}

void sub_1000252E8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_100025360(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10003BCF4(v4, a2);
  return sub_1000253D8;
}

uint64_t (*sub_1000253DC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C01C(v6, a2, a3);
  return sub_100041D4C;
}

uint64_t (*sub_100025464(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C0C8(v6, a2, a3);
  return sub_100041D4C;
}

uint64_t (*sub_1000254EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C174(v6, a2, a3);
  return sub_100041D4C;
}

void sub_100025574(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000255C0(int a1)
{
  if (a1)
  {
    v2 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100030EA0((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x64696C6176;
    *(v5 + 5) = 0xE500000000000000;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100030EA0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x65746164696C6176;
    *(v8 + 5) = 0xE900000000000064;
  }

  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100030EA0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000011;
    *(v11 + 5) = 0x8000000100105000;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100030EA0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000015;
    *(v14 + 5) = 0x8000000100104FE0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100030EA0((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x69746E6568747561;
    *(v17 + 5) = 0xE900000000000063;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100030EA0((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, "authenticated");
  *(v20 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100030EA0((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000015;
  *(v23 + 5) = 0x8000000100104FC0;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100030EA0((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000019;
  *(v26 + 5) = 0x8000000100104FA0;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100030EA0((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x6465766F72707061;
  *(v29 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100030EA0((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x6C61766F72707061;
  *(v32 + 5) = 0xEF64656B63656843;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100030EA0((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  strcpy(v35 + 32, "inExcludeList");
  *(v35 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100030EA0((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000018;
  *(v38 + 5) = 0x8000000100104F80;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100030EA0((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD00000000000001ELL;
  *(v41 + 5) = 0x8000000100104F60;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100030EA0((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x656C707061;
  *(v44 + 5) = 0xE500000000000000;
  if ((a1 & 0x4000) == 0)
  {
LABEL_35:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_100030EA0((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  strcpy(v47 + 32, "sipProtected");
  v47[45] = 0;
  *(v47 + 23) = -5120;
  if ((a1 & 0x8000) == 0)
  {
LABEL_36:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_100030EA0((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0x64616F4C72657375;
  *(v50 + 5) = 0xEF6465776F6C6C41;
  if ((a1 & 0x10000) == 0)
  {
LABEL_37:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_100030EA0((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000014;
  *(v53 + 5) = 0x8000000100104F40;
  if ((a1 & 0x20000) == 0)
  {
LABEL_38:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_100030EA0((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000014;
  *(v56 + 5) = 0x8000000100104F20;
  if ((a1 & 0x40000) == 0)
  {
LABEL_39:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_100030EA0((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000013;
  *(v59 + 5) = 0x8000000100104F00;
  if ((a1 & 0x80000) == 0)
  {
LABEL_40:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_100030EA0((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "appleAuxiliary");
  v62[47] = -18;
  if ((a1 & 0x100000) == 0)
  {
LABEL_41:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_100030EA0((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000011;
  *(v65 + 5) = 0x8000000100104EE0;
  if ((a1 & 0x200000) != 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_100030EA0((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    strcpy(v68 + 32, "appleExcluded");
    *(v68 + 23) = -4864;
  }

LABEL_133:
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v69 = BidirectionalCollection<>.joined(separator:)();

  return v69;
}

BOOL sub_100026228(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100026258@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100026284@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100026370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000263A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10006FA34();

  *a2 = v3;
  return result;
}

uint64_t sub_1000263E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 && *(v2 + 16))
  {
    v3 = a1;
    v4 = sub_100061588(0x656C646E7542534FLL, 0xEC00000044495555);
    v6 = v5;
    v7 = 0xF000000000000000;
    if (v6)
    {
      sub_10000B430(*(v2 + 56) + 32 * v4, v14);
      v8 = swift_dynamicCast();
      v7 = 0xF000000000000000;
      v9 = v8 == 0;
      if (v8)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v7 = v13;
      }
    }

    else
    {
      v10 = 0;
    }

    a1 = v3;
  }

  else
  {
    v10 = 0;
    v7 = 0xF000000000000000;
  }

  return sub_1000C68A4(v10, v7, a1);
}

uint64_t sub_1000264A8()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  if (qword_100133A70 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_100061588(qword_10014E900, *algn_10014E908);
  if (v3)
  {
    sub_10000B430(*(v1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v4 = OSKextParseVersionString();

      if (v4 >= 1)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_1000265A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000265DC(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v198 = (v6 + 63) >> 6;
  v197 = v4;

  v9 = 0;
  for (i = v5; ; v5 = i)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      if (v11 >= v198)
      {
      }

      v8 = *(v5 + 8 * v11);
      ++v9;
    }

    while (!v8);
    v9 = v11;
LABEL_12:
    v200 = v8;
    v12 = __clz(__rbit64(v8)) | (v9 << 6);
    v13 = (*(v197 + 48) + 16 * v12);
    v14 = *v13;
    v15 = *(*(v197 + 56) + 8 * v12);
    v199 = *(v3 + 24);
    v16 = *v199;
    v206 = v13[1];

    v205 = v15;
    if (v16 == _TtC10driverkitd15DriverExtension)
    {
      break;
    }

LABEL_126:
    if (*(v15 + 16))
    {
      goto LABEL_141;
    }

LABEL_148:

    v215 = 0u;
    v216 = 0u;
    sub_10000A184(&v215, &qword_1001343C8, &unk_1000F3CA0);
    v148 = sub_1000253DC(&v215, v14, v206);
    if (*v155)
    {
      v149 = v155;
      v156 = *(v199 + 16);
      if (qword_100133A50 == -1)
      {
        if (*(v156 + 16))
        {
LABEL_151:
          v157 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
          if (v158)
          {
            sub_10000B430(*(v156 + 56) + 32 * v157, &v219);
            if (swift_dynamicCast())
            {
              v160 = *(&v217 + 1);
              v159 = v217;
              goto LABEL_156;
            }
          }
        }
      }

      else
      {
        swift_once();
        if (*(v156 + 16))
        {
          goto LABEL_151;
        }
      }

      v159 = 0xD000000000000014;
      v160 = 0x8000000100104280;
LABEL_156:
      v220 = &type metadata for String;
      *&v219 = v159;
      *(&v219 + 1) = v160;
      sub_10000B48C(&v219, &v217);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162 = *v149;
      v213 = *v149;
      *v149 = 0x8000000000000000;
      v163 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
      v165 = v162[2];
      v166 = (v164 & 1) == 0;
      v52 = __OFADD__(v165, v166);
      v167 = v165 + v166;
      if (v52)
      {
        goto LABEL_189;
      }

      v168 = v164;
      if (v162[3] < v167)
      {
        sub_10003301C(v167, isUniquelyReferenced_nonNull_native);
        v163 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
        if ((v168 & 1) != (v169 & 1))
        {
          goto LABEL_208;
        }

LABEL_161:
        v170 = v213;
        if ((v168 & 1) == 0)
        {
          goto LABEL_162;
        }

LABEL_4:
        v10 = (v170[7] + 32 * v163);
        sub_100003C90(v10);
        sub_10000B48C(&v217, v10);
LABEL_5:
        *v149 = v170;

        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_161;
      }

      v174 = v163;
      sub_100039F20();
      v163 = v174;
      v170 = v213;
      if (v168)
      {
        goto LABEL_4;
      }

LABEL_162:
      v170[(v163 >> 6) + 8] |= 1 << v163;
      v171 = (v170[6] + 16 * v163);
      *v171 = 0xD000000000000012;
      v171[1] = 0x8000000100104E40;
      sub_10000B48C(&v217, (v170[7] + 32 * v163));
      v172 = v170[2];
      v52 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      if (v52)
      {
        goto LABEL_192;
      }

LABEL_176:
      v170[2] = v173;
      goto LABEL_5;
    }

LABEL_6:
    (v148)(&v215, 0);
    v8 = (v200 - 1) & v200;
  }

  v17 = sub_1000253DC(&v219, v14, v206);
  v191 = v18;
  v201 = v14;
  if (*v18)
  {
    v189 = v17;
    sub_100014894(v3 + 32, &v215, &unk_100137390, &unk_1000F4E70);
    if (!*(&v216 + 1))
    {
      sub_10000A184(&v215, &unk_100137390, &unk_1000F4E70);
      v217 = 0u;
      v218 = 0u;
      goto LABEL_63;
    }

    v19 = sub_100003C4C(&v215, *(&v216 + 1));
    v21 = *(*v19 + 40);
    v20 = *(*v19 + 48);
    v22 = v20 >> 62;
    v195 = HIDWORD(v21);
    if ((v20 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_58;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v23 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
        goto LABEL_205;
      }
    }

    else
    {
      if (!v22)
      {
        v23 = BYTE6(v20);
        if (!BYTE6(v20))
        {
          goto LABEL_58;
        }

LABEL_29:
        sub_1000635A4(0, v23 & ~(v23 >> 63), 0);
        v194 = v21;
        if (v22)
        {
          if (v22 == 2)
          {
            v26 = *(v21 + 16);
          }

          else
          {
            v26 = v21;
          }
        }

        else
        {
          v26 = 0;
        }

        v204 = v26;
        if ((v23 & 0x8000000000000000) == 0)
        {
          v188 = v3;
          v27 = 0;
          v193 = v21 >> 32;
          v192 = &v217 + v26;
          v203 = v21;
          v202 = v23;
          while (1)
          {
            if (v27 >= v23)
            {
              goto LABEL_181;
            }

            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_182;
            }

            v29 = v204 + v27;
            if (v22 == 2)
            {
              if (v29 < *(v21 + 16))
              {
                goto LABEL_184;
              }

              if (v29 >= *(v21 + 24))
              {
                goto LABEL_186;
              }

              v34 = __DataStorage._bytes.getter();
              if (!v34)
              {
                goto LABEL_207;
              }

              v31 = v34;
              v35 = __DataStorage._offset.getter();
              v33 = v29 - v35;
              if (__OFSUB__(v29, v35))
              {
                goto LABEL_188;
              }
            }

            else
            {
              if (v22 != 1)
              {
                if (v29 >= BYTE6(v20))
                {
                  goto LABEL_183;
                }

                LOWORD(v217) = v21;
                BYTE2(v217) = BYTE2(v21);
                BYTE3(v217) = BYTE3(v21);
                BYTE4(v217) = v195;
                BYTE5(v217) = BYTE5(v21);
                BYTE6(v217) = BYTE6(v21);
                BYTE7(v217) = HIBYTE(v21);
                WORD4(v217) = v20;
                BYTE10(v217) = BYTE2(v20);
                BYTE11(v217) = BYTE3(v20);
                BYTE12(v217) = BYTE4(v20);
                BYTE13(v217) = BYTE5(v20);
                v36 = v192[v27];
                goto LABEL_54;
              }

              if (v29 < v194 || v29 >= v193)
              {
                goto LABEL_185;
              }

              v30 = __DataStorage._bytes.getter();
              if (!v30)
              {
                goto LABEL_206;
              }

              v31 = v30;
              v32 = __DataStorage._offset.getter();
              v33 = v29 - v32;
              if (__OFSUB__(v29, v32))
              {
                goto LABEL_187;
              }
            }

            v36 = *(v31 + v33);
LABEL_54:
            sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_1000F3160;
            *(v37 + 56) = &type metadata for UInt8;
            *(v37 + 64) = &protocol witness table for UInt8;
            *(v37 + 32) = v36;
            v22 = String.init(format:_:)();
            v39 = v38;
            v41 = _swiftEmptyArrayStorage[2];
            v40 = _swiftEmptyArrayStorage[3];
            if (v41 >= v40 >> 1)
            {
              sub_1000635A4((v40 > 1), v41 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v41 + 1;
            v42 = &_swiftEmptyArrayStorage[2 * v41];
            v42[4] = v22;
            v42[5] = v39;
            ++v27;
            v23 = v202;
            LODWORD(v22) = v20 >> 62;
            v21 = v203;
            if (v28 == v202)
            {
              v3 = v188;
              goto LABEL_58;
            }
          }
        }

LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
      }

      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_204;
      }

      v23 = HIDWORD(v21) - v21;
    }

    sub_1000146C4(v21, v20);
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_58:
    *&v217 = _swiftEmptyArrayStorage;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v43 = BidirectionalCollection<>.joined(separator:)();
    v45 = v44;
    sub_1000128D8(v21, v20);

    *(&v218 + 1) = &type metadata for String;
    *&v217 = v43;
    *(&v217 + 1) = v45;
    sub_100003C90(&v215);
    if (*(&v218 + 1))
    {
      sub_10000B48C(&v217, &v215);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v191;
      v207 = v47;
      *v191 = 0x8000000000000000;
      v48 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
      v50 = v47[2];
      v51 = (v49 & 1) == 0;
      v52 = __OFADD__(v50, v51);
      v53 = v50 + v51;
      if (v52)
      {
        goto LABEL_198;
      }

      v54 = v49;
      if (v47[3] >= v53)
      {
        if ((v46 & 1) == 0)
        {
          v186 = v48;
          sub_100039F20();
          v48 = v186;
        }
      }

      else
      {
        sub_10003301C(v53, v46);
        v48 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_208;
        }
      }

      if (v54)
      {
        v60 = (v47[7] + 32 * v48);
        sub_100003C90((v207[7] + 32 * v48));
        sub_10000B48C(&v215, v60);
      }

      else
      {
        v47[(v48 >> 6) + 8] |= 1 << v48;
        v61 = (v47[6] + 16 * v48);
        *v61 = 0xD000000000000012;
        v61[1] = 0x8000000100104E80;
        sub_10000B48C(&v215, (v47[7] + 32 * v48));
        v62 = v47[2];
        v52 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v52)
        {
          goto LABEL_203;
        }

        v47[2] = v63;
      }

      v14 = v201;
      *v191 = v207;

      (v189)(&v219, 0);
LABEL_76:
      if ((a2 & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_77:
      v65 = sub_1000253DC(&v215, v14, v206);
      if (!*v64)
      {
        (v65)(&v215, 0);
LABEL_90:
        v14 = v201;
        goto LABEL_91;
      }

      v66 = v64;
      v220 = &type metadata for Bool;
      LOBYTE(v219) = 1;
      sub_10000B48C(&v219, &v217);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = *v66;
      v209 = *v66;
      *v66 = 0x8000000000000000;
      v69 = sub_100061588(0x44686374614D4F49, 0xEC00000072656665);
      v71 = v68[2];
      v72 = (v70 & 1) == 0;
      v52 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      if (v52)
      {
        goto LABEL_195;
      }

      v74 = v70;
      if (v68[3] >= v73)
      {
        if ((v67 & 1) == 0)
        {
          v78 = v69;
          sub_100039F20();
          v69 = v78;
          v76 = v209;
          if (v74)
          {
            goto LABEL_85;
          }

          goto LABEL_87;
        }
      }

      else
      {
        sub_10003301C(v73, v67);
        v69 = sub_100061588(0x44686374614D4F49, 0xEC00000072656665);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_208;
        }
      }

      v76 = v209;
      if (v74)
      {
LABEL_85:
        v77 = (v76[7] + 32 * v69);
        sub_100003C90(v77);
        sub_10000B48C(&v217, v77);
LABEL_89:
        *v66 = v76;

        (v65)(&v215, 0);
        goto LABEL_90;
      }

LABEL_87:
      v76[(v69 >> 6) + 8] |= 1 << v69;
      v79 = v76[6] + 16 * v69;
      strcpy(v79, "IOMatchDefer");
      *(v79 + 13) = 0;
      *(v79 + 14) = -5120;
      sub_10000B48C(&v217, (v76[7] + 32 * v69));
      v80 = v76[2];
      v52 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v52)
      {
        goto LABEL_202;
      }

      v76[2] = v81;
      goto LABEL_89;
    }

LABEL_63:
    sub_10000A184(&v217, &qword_1001343C8, &unk_1000F3CA0);
    v56 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
    if (v57)
    {
      v58 = v56;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v208 = *v191;
      *v191 = 0x8000000000000000;
      if (!v59)
      {
        sub_100039F20();
      }

      sub_10000B48C((*(v208 + 56) + 32 * v58), &v215);
      sub_10003706C(v58, v208);
      *v191 = v208;
    }

    else
    {
      v215 = 0u;
      v216 = 0u;
    }

    sub_10000A184(&v215, &qword_1001343C8, &unk_1000F3CA0);
    v14 = v201;
    (v189)(&v219, 0);
    goto LABEL_76;
  }

  (v17)(&v219, 0);
  if (a2)
  {
    goto LABEL_77;
  }

LABEL_91:
  v83 = sub_1000253DC(&v215, v14, v206);
  if (!*v82)
  {
    goto LABEL_103;
  }

  v84 = v82;
  v85 = sub_100024C38();
  v220 = &type metadata for Data;
  *&v219 = v85;
  *(&v219 + 1) = v86;
  sub_10000B48C(&v219, &v217);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v84;
  v210 = *v84;
  *v84 = 0x8000000000000000;
  v89 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
  v91 = v88[2];
  v92 = (v90 & 1) == 0;
  v52 = __OFADD__(v91, v92);
  v93 = v91 + v92;
  if (v52)
  {
    goto LABEL_190;
  }

  v94 = v90;
  if (v88[3] >= v93)
  {
    if ((v87 & 1) == 0)
    {
      v98 = v89;
      sub_100039F20();
      v89 = v98;
      v96 = v210;
      if (v94)
      {
        goto LABEL_98;
      }

LABEL_100:
      v96[(v89 >> 6) + 8] |= 1 << v89;
      v99 = (v96[6] + 16 * v89);
      *v99 = 0xD00000000000001DLL;
      v99[1] = 0x8000000100104B60;
      sub_10000B48C(&v217, (v96[7] + 32 * v89));
      v100 = v96[2];
      v52 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v52)
      {
        goto LABEL_196;
      }

      v96[2] = v101;
      goto LABEL_102;
    }
  }

  else
  {
    sub_10003301C(v93, v87);
    v89 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
    if ((v94 & 1) != (v95 & 1))
    {
      goto LABEL_208;
    }
  }

  v96 = v210;
  if ((v94 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_98:
  v97 = (v96[7] + 32 * v89);
  sub_100003C90(v97);
  sub_10000B48C(&v217, v97);
LABEL_102:
  *v84 = v96;

LABEL_103:
  (v83)(&v215, 0);
  v103 = sub_1000253DC(&v215, v201, v206);
  if (*v102)
  {
    v104 = v102;
    v105 = *(v199 + 16);
    if (qword_100133A50 == -1)
    {
      if (!*(v105 + 16))
      {
        goto LABEL_111;
      }
    }

    else
    {
      swift_once();
      if (!*(v105 + 16))
      {
        goto LABEL_111;
      }
    }

    v106 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v107)
    {
      sub_10000B430(*(v105 + 56) + 32 * v106, &v219);
      if (swift_dynamicCast())
      {
        v109 = *(&v217 + 1);
        v108 = v217;
        goto LABEL_112;
      }
    }

LABEL_111:
    v108 = 0xD000000000000014;
    v109 = 0x8000000100104280;
LABEL_112:
    v220 = &type metadata for String;
    *&v219 = v108;
    *(&v219 + 1) = v109;
    sub_10000B48C(&v219, &v217);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *v104;
    v211 = *v104;
    *v104 = 0x8000000000000000;
    v112 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
    v114 = v111[2];
    v115 = (v113 & 1) == 0;
    v52 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v52)
    {
      goto LABEL_191;
    }

    v117 = v113;
    if (v111[3] >= v116)
    {
      if ((v110 & 1) == 0)
      {
        v121 = v112;
        sub_100039F20();
        v112 = v121;
        v119 = v211;
        if (v117)
        {
          goto LABEL_118;
        }

        goto LABEL_120;
      }
    }

    else
    {
      sub_10003301C(v116, v110);
      v112 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_208;
      }
    }

    v119 = v211;
    if (v117)
    {
LABEL_118:
      v120 = (v119[7] + 32 * v112);
      sub_100003C90(v120);
      sub_10000B48C(&v217, v120);
LABEL_122:
      *v104 = v119;

      (v103)(&v215, 0);
      goto LABEL_123;
    }

LABEL_120:
    v119[(v112 >> 6) + 8] |= 1 << v112;
    v122 = (v119[6] + 16 * v112);
    *v122 = 0xD000000000000012;
    v122[1] = 0x8000000100104E40;
    sub_10000B48C(&v217, (v119[7] + 32 * v112));
    v123 = v119[2];
    v52 = __OFADD__(v123, 1);
    v124 = v123 + 1;
    if (v52)
    {
      goto LABEL_197;
    }

    v119[2] = v124;
    goto LABEL_122;
  }

  (v103)(&v215, 0);
LABEL_123:
  v14 = v201;
  if (*(v205 + 16))
  {
    v125 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
    v15 = v205;
    if (v126)
    {
      sub_10000B430(*(v205 + 56) + 32 * v125, &v215);
      sub_10000A184(&v215, &qword_1001343C8, &unk_1000F3CA0);
      goto LABEL_126;
    }
  }

  v215 = 0u;
  v216 = 0u;
  sub_10000A184(&v215, &qword_1001343C8, &unk_1000F3CA0);
  v128 = sub_1000253DC(&v215, v201, v206);
  if (*v127)
  {
    v129 = v127;
    v220 = &type metadata for String;
    *&v219 = 0xD000000000000013;
    *(&v219 + 1) = 0x8000000100104EC0;
    sub_10000B48C(&v219, &v217);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v131 = *v129;
    v212 = *v129;
    *v129 = 0x8000000000000000;
    v132 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
    v134 = v131[2];
    v135 = (v133 & 1) == 0;
    v52 = __OFADD__(v134, v135);
    v136 = v134 + v135;
    if (v52)
    {
      goto LABEL_193;
    }

    v137 = v133;
    if (v131[3] >= v136)
    {
      if (v130)
      {
        goto LABEL_134;
      }

      v141 = v132;
      sub_100039F20();
      v132 = v141;
      v139 = v212;
      if ((v137 & 1) == 0)
      {
        goto LABEL_137;
      }

LABEL_135:
      v140 = (v139[7] + 32 * v132);
      sub_100003C90(v140);
      sub_10000B48C(&v217, v140);
    }

    else
    {
      sub_10003301C(v136, v130);
      v132 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
      if ((v137 & 1) != (v138 & 1))
      {
        goto LABEL_208;
      }

LABEL_134:
      v139 = v212;
      if (v137)
      {
        goto LABEL_135;
      }

LABEL_137:
      v139[(v132 >> 6) + 8] |= 1 << v132;
      v142 = (v139[6] + 16 * v132);
      *v142 = 0xD000000000000018;
      v142[1] = 0x8000000100104EA0;
      sub_10000B48C(&v217, (v139[7] + 32 * v132));
      v143 = v139[2];
      v52 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v52)
      {
        goto LABEL_199;
      }

      v139[2] = v144;
    }

    *v129 = v139;
  }

  (v128)(&v215, 0);
  v14 = v201;
  if (!*(v205 + 16))
  {
    goto LABEL_148;
  }

LABEL_141:
  v145 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
  if ((v146 & 1) == 0)
  {
    goto LABEL_148;
  }

  sub_10000B430(*(v205 + 56) + 32 * v145, &v215);

  sub_10000A184(&v215, &qword_1001343C8, &unk_1000F3CA0);
  v148 = sub_1000253DC(&v215, v14, v206);
  if (!*v147)
  {
    goto LABEL_6;
  }

  v149 = v147;
  v150 = *(v199 + 16);
  if (qword_100133A50 == -1)
  {
    if (*(v150 + 16))
    {
LABEL_145:
      v151 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v152)
      {
        sub_10000B430(*(v150 + 56) + 32 * v151, &v219);
        if (swift_dynamicCast())
        {
          v154 = *(&v217 + 1);
          v153 = v217;
          goto LABEL_169;
        }
      }
    }
  }

  else
  {
    swift_once();
    if (*(v150 + 16))
    {
      goto LABEL_145;
    }
  }

  v153 = 0xD000000000000014;
  v154 = 0x8000000100104280;
LABEL_169:
  v220 = &type metadata for String;
  *&v219 = v153;
  *(&v219 + 1) = v154;
  sub_10000B48C(&v219, &v217);
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v149;
  v214 = *v149;
  *v149 = 0x8000000000000000;
  v163 = sub_100061588(0xD000000000000016, 0x8000000100104E60);
  v178 = v176[2];
  v179 = (v177 & 1) == 0;
  v52 = __OFADD__(v178, v179);
  v180 = v178 + v179;
  if (v52)
  {
    goto LABEL_194;
  }

  v181 = v177;
  if (v176[3] >= v180)
  {
    if ((v175 & 1) == 0)
    {
      v185 = v163;
      sub_100039F20();
      v163 = v185;
      v170 = v214;
      if (v181)
      {
        goto LABEL_4;
      }

      goto LABEL_175;
    }

LABEL_174:
    v170 = v214;
    if (v181)
    {
      goto LABEL_4;
    }

LABEL_175:
    v170[(v163 >> 6) + 8] |= 1 << v163;
    v183 = (v170[6] + 16 * v163);
    *v183 = 0xD000000000000016;
    v183[1] = 0x8000000100104E60;
    sub_10000B48C(&v217, (v170[7] + 32 * v163));
    v184 = v170[2];
    v52 = __OFADD__(v184, 1);
    v173 = v184 + 1;
    if (v52)
    {
      goto LABEL_200;
    }

    goto LABEL_176;
  }

  sub_10003301C(v180, v175);
  v163 = sub_100061588(0xD000000000000016, 0x8000000100104E60);
  if ((v181 & 1) == (v182 & 1))
  {
    goto LABEL_174;
  }

LABEL_208:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_100027B1C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v14 = sub_10003EB54(&off_100126080);
  sub_100003CDC(&qword_100134FE8, &qword_1000F4E98);
  swift_arrayDestroy();
  if (!a2)
  {
    goto LABEL_17;
  }

  v15._countAndFlagsBits = 20297;
  v15._object = 0xE200000000000000;
  if (!String.hasPrefix(_:)(v15))
  {
    v16._countAndFlagsBits = 21327;
    v16._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v16))
    {
      goto LABEL_17;
    }
  }

  v37 = a6;
  *&v40 = 95;
  *(&v40 + 1) = 0xE100000000000000;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v18))
  {

    if (!*(v14 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v36 = a7;
    v19 = *(*(a5 + 24) + 16);
    *&v40 = a3;
    *(&v40 + 1) = a4;

    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);

    if (*(v19 + 16))
    {
      v21 = sub_100061588(v40, *(&v40 + 1));
      v23 = v22;

      if (v23)
      {

        sub_10000B430(*(v19 + 56) + 32 * v21, &v40);

        sub_10000B48C(&v40, v36);
        return result;
      }
    }

    else
    {
    }

    a7 = v36;
    if (!*(v14 + 16))
    {
      goto LABEL_17;
    }
  }

  v25 = sub_100061588(a1, a2);
  if (v26)
  {
    v27 = (*(v14 + 56) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];

    v30._object = 0x8000000100104610;
    v30._countAndFlagsBits = 0xD000000000000012;
    if (!String.hasPrefix(_:)(v30))
    {
      sub_100027B1C(v29, v28, a3, a4, a5, v37 & 1, a7);
      goto LABEL_20;
    }

    sub_100027B1C(v29, v28, a3, a4, a5, v37 & 1, &v40);

    if (v41)
    {
      v31 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
      if (swift_dynamicCast())
      {
        v39 = v38;
        sub_1000265DC(&v39, v37 & 1);
        v32 = v39;
        *(a7 + 3) = v31;
        *a7 = v32;
        return result;
      }
    }

    else
    {
      sub_10000A184(&v40, &qword_1001343C8, &unk_1000F3CA0);
    }

LABEL_24:
    result = 0.0;
    *a7 = 0u;
    a7[1] = 0u;
    return result;
  }

LABEL_17:

  v33 = *(*(a5 + 24) + 16);
  if (!*(v33 + 16))
  {
    goto LABEL_24;
  }

  v34 = sub_100061588(a3, a4);
  if ((v35 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_10000B430(*(v33 + 56) + 32 * v34, a7);
LABEL_20:

  return result;
}

uint64_t sub_100027EB0()
{

  sub_10000A184(v0 + 32, &unk_100137390, &unk_1000F4E70);
  sub_10000A184(v0 + 80, &qword_100135090, &qword_1000F4F58);

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);

  return swift_deallocClassInstance();
}

void sub_100027FCC(uint64_t a1)
{
  sub_100028120(319, &qword_100134D10, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_100028120(319, &qword_100134D18, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100028120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100028198()
{
  v1 = OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, &qword_100134FB0, &qword_1000F4E60);

  return swift_deallocClassInstance();
}

void sub_1000282C4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100028120(319, &qword_100134D10, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000283E8()
{
  result = qword_100134F68;
  if (!qword_100134F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F68);
  }

  return result;
}

unint64_t sub_100028440()
{
  result = qword_100134F70;
  if (!qword_100134F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F70);
  }

  return result;
}

unint64_t sub_100028498()
{
  result = qword_100134F78;
  if (!qword_100134F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F78);
  }

  return result;
}

unint64_t sub_1000284F0()
{
  result = qword_100134F80;
  if (!qword_100134F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F80);
  }

  return result;
}

unint64_t sub_100028548()
{
  result = qword_100134F88;
  if (!qword_100134F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F88);
  }

  return result;
}