id sub_100D2663C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandDeleteScenes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D266FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100D26778(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -64;
  }

  return result;
}

uint64_t sub_100D267B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100D269E0(unsigned __int8 a1, double a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 3u)
  {
    if (a1 <= 2u)
    {
      goto LABEL_7;
    }

    v23 = [objc_opt_self() mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10146C6B0;
    *(v27 + 56) = &type metadata for Int;
    *(v27 + 64) = &protocol witness table for Int;
    *(v27 + 32) = 7;
    goto LABEL_13;
  }

  if (a1 > 5u)
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        v29 = [objc_opt_self() mainBundle];
        v30 = String._bridgeToObjectiveC()();
        v31 = String._bridgeToObjectiveC()();
        v20 = [v29 localizedStringForKey:v30 value:v31 table:0];

        goto LABEL_11;
      }

LABEL_7:
      v8 = [objc_opt_self() mainBundle];
      v9 = String._bridgeToObjectiveC()();
      v10 = String._bridgeToObjectiveC()();
      v20 = [v8 localizedStringForKey:v9 value:v10 table:0];

LABEL_11:
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v21;
    }

    v16 = v5;
    Date.init(timeIntervalSinceReferenceDate:)();
    v17 = &unk_1019F2068;
    v18 = qword_101A1C6A0;
    v19 = sub_100D27A90;
    goto LABEL_16;
  }

  if (a1 == 4)
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10146C6B0;
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = 30;
LABEL_13:
    v28 = static String.localizedStringWithFormat(_:_:)();

    return v28;
  }

  v16 = v5;
  Date.init(timeIntervalSinceReferenceDate:)();
  v17 = &unk_1019F2060;
  v18 = qword_101A1C688;
  v19 = sub_100D27A48;
LABEL_16:
  v32 = sub_100D27278(v17, v18, v19);
  (*(v4 + 8))(v7, v16);
  return v32;
}

uint64_t sub_100D27010(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return sub_100D27DE4(v5, v7) & 1;
}

BOOL sub_100D2706C(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = a1[2];
  v8 = a1[3].i8[0];
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return (sub_100D27DE4(v5, v7) & 1) == 0;
}

BOOL sub_100D270CC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return (sub_100D27DE4(v5, v7) & 1) == 0;
}

uint64_t sub_100D2712C(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = a1[2];
  v8 = a1[3].i8[0];
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return sub_100D27DE4(v5, v7) & 1;
}

Swift::Int sub_100D27190(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100068D24(v2);
  return Hasher._finalize()();
}

unint64_t sub_100D271D0()
{
  result = qword_101A1C6F0;
  if (!qword_101A1C6F0)
  {
    result = swift_getWitnessTable("A_8", &type metadata for CRLBoardLibraryFolderViewModel.SortStyle, v0, v1);
    atomic_store(result, &qword_101A1C6F0);
  }

  return result;
}

unint64_t sub_100D27224()
{
  result = qword_101A1C6F8;
  if (!qword_101A1C6F8)
  {
    result = swift_getWitnessTable(byte_1014AD660, &type metadata for CRLBoardLibraryFolderViewModel.SortStyle, v0, v1);
    atomic_store(result, &qword_101A1C6F8);
  }

  return result;
}

uint64_t sub_100D27278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v37 = sub_1005B981C(&qword_1019FE1F0, &unk_1014799E8);
  __chkstk_darwin(v37);
  v5 = &v33 - v4;
  v6 = type metadata accessor for TimeZone();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date.FormatStyle();
  v18 = a1;
  v19 = *(v17 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  if (*v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1005EB3DC(v17, v36);
  (*(v19 + 16))(v24, v26, v17);
  if (qword_1019F2070 != -1)
  {
    swift_once();
  }

  v27 = sub_1005EB3DC(v10, qword_101A1C6B8);
  sub_10000BE14(v27, v12, &qword_1019F69B8, &unk_101492880);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CAAC(v12, &qword_1019F69B8, &unk_101492880);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    Date.FormatStyle.locale(_:)();
    (*(v14 + 8))(v16, v13);
    (*(v19 + 8))(v24, v17);
    (*(v19 + 32))(v24, v21, v17);
  }

  v29 = v38;
  v28 = v39;
  if (qword_1019F2078 != -1)
  {
    swift_once();
  }

  v30 = sub_1005EB3DC(v37, qword_101A1C6D0);
  sub_10000BE14(v30, v5, &qword_1019FE1F0, &unk_1014799E8);
  if ((*(v29 + 48))(v5, 1, v28) == 1)
  {
    sub_10000CAAC(v5, &qword_1019FE1F0, &unk_1014799E8);
  }

  else
  {
    v31 = v34;
    (*(v29 + 32))(v34, v5, v28);
    (*(v29 + 16))(v35, v31, v28);
    Date.FormatStyle.timeZone.setter();
    (*(v29 + 8))(v31, v28);
  }

  sub_100D2C72C(&qword_101A1C700, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  (*(v19 + 8))(v24, v17);
  return v40;
}

void sub_100D277FC(double a1, uint64_t a2, unsigned __int8 a3, Swift::UInt64 a4, char a5)
{
  Hasher._combine(_:)(a3);
  v8 = 0.0;
  if (a1 != 0.0)
  {
    v8 = a1;
  }

  Hasher._combine(_:)(*&v8);
  if (a5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }
}

Swift::Int sub_100D27878(unsigned __int8 a1, Swift::UInt64 a2, char a3, double a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = 0.0;
  if (a4 != 0.0)
  {
    v8 = a4;
  }

  Hasher._combine(_:)(*&v8);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100D27948(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  Hasher._combine(_:)(*&v6);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  return Hasher._finalize()();
}

uint64_t sub_100D279F0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (a1[3])
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (a1[2] != a2[2])
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100D27AD8(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t *a3, void (*a4)(uint64_t), void (*a5)(char *))
{
  v9 = type metadata accessor for FormatStyleCapitalizationContext();
  v10 = __chkstk_darwin(v9 - 8);
  v11 = a2(0, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v15 = type metadata accessor for Date.FormatStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10061655C(v19, a3);
  sub_1005EB3DC(v15, a3);
  v20 = static ParseableFormatStyle<>.dateTime.getter();
  a4(v20);
  a5(v14);
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  static FormatStyleCapitalizationContext.beginningOfSentence.getter();
  return Date.FormatStyle.capitalizationContext.setter();
}

uint64_t sub_100D27D40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_1005B981C(a2, a3);
  sub_10061655C(v7, a4);
  v8 = sub_1005EB3DC(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t sub_100D27DE4(double *a1, int8x16_t *a2)
{
  v4 = type metadata accessor for Calendar.Component();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Calendar();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = *(a1 + 1);
  v20 = *(a1 + 2);
  v19 = *(a1 + 3);
  v22 = *(a1 + 4);
  v21 = *(a1 + 5);
  v23 = *(a1 + 48);
  v24 = v23 >> 6;
  if (v23 >> 6 <= 1)
  {
    if (!v24)
    {
LABEL_3:
      LOBYTE(v23) = 1;
      return v23 & 1;
    }

    v25 = a2[3].u8[0];
    if ((v25 & 0xC0) == 0x40)
    {
      static Calendar.current.getter();
      Date.init(timeIntervalSinceReferenceDate:)();
      Date.init(timeIntervalSinceReferenceDate:)();
      v27 = v37;
      (*(v37 + 104))(v6, enum case for Calendar.Component.day(_:), v4);
      v28 = Calendar.compare(_:to:toGranularity:)();
      (*(v27 + 8))(v6, v4);
      v29 = *(v36 + 8);
      v29(v9, v7);
      v29(v12, v7);
      (*(v14 + 8))(v16, v13);
      LOBYTE(v23) = v28 == -1;
      return v23 & 1;
    }

    goto LABEL_11;
  }

  if (v24 != 2)
  {
    v25 = a2[3].u8[0];
    goto LABEL_11;
  }

  v25 = a2[3].u8[0];
  if ((v25 & 0xC0) != 0x80)
  {
LABEL_11:
    if (v25 >= 0x40)
    {
      if (v23 >= 0xC0 && !(v20 | v17 | v18 | v19 | v22 | v21) && v23 == 192)
      {
        goto LABEL_3;
      }

      if (v25 != 192 || (v31 = vorrq_s8(a2[1], a2[2]), *&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | a2->i64[1] | a2->i64[0]))
      {
        if (v23 == 192 && v18 == 1 && !(v20 | v17 | v19 | v22 | v21))
        {
          goto LABEL_3;
        }

        if (v25 >= 0xC0)
        {
          v32 = a2->i64[0];
          v33 = vorrq_s8(a2[1], a2[2]);
          v34 = *&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | a2->i64[1];
          if (v25 == 192 && v32 == 1 && !v34)
          {
            goto LABEL_12;
          }

          if (v25 == 192 && v32 == 2 && !v34)
          {
            goto LABEL_3;
          }
        }

        if (v23 != 192 || v18 != 2 || v20 | v17 | v19 | v22 | v21)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_12:
    LOBYTE(v23) = 0;
    return v23 & 1;
  }

  v38[0] = *a1;
  v38[1] = v17;
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v22;
  v38[5] = v21;
  v39 = v23 & 1;
  v26 = a2[1];
  v40[0] = *a2;
  v40[1] = v26;
  v40[2] = a2[2];
  v41 = v25 & 1;
  if (((v23 | v25) & 1) == 0)
  {
    LOBYTE(v23) = sub_10130302C(v38, v40);
  }

  return v23 & 1;
}

uint64_t sub_100D28240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v422 = a3;
  v420 = a2;
  v414 = a1;
  v3 = sub_1005B981C(&qword_1019FE1F0, &unk_1014799E8);
  __chkstk_darwin(v3 - 8);
  v418 = &v337 - v4;
  v5 = sub_1005B981C(&qword_1019FE230, &qword_101479A38);
  __chkstk_darwin(v5 - 8);
  v417 = &v337 - v6;
  v423 = type metadata accessor for DateComponents();
  v425 = *(v423 - 8);
  __chkstk_darwin(v423);
  v378 = &v337 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v377 = &v337 - v9;
  __chkstk_darwin(v10);
  v421 = &v337 - v11;
  v12 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v12 - 8);
  v357 = &v337 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v356 = &v337 - v15;
  __chkstk_darwin(v16);
  v361 = &v337 - v17;
  __chkstk_darwin(v18);
  v362 = &v337 - v19;
  __chkstk_darwin(v20);
  v368 = &v337 - v21;
  __chkstk_darwin(v22);
  v367 = &v337 - v23;
  __chkstk_darwin(v24);
  v354 = &v337 - v25;
  __chkstk_darwin(v26);
  v353 = &v337 - v27;
  __chkstk_darwin(v28);
  v358 = &v337 - v29;
  __chkstk_darwin(v30);
  v359 = &v337 - v31;
  __chkstk_darwin(v32);
  v364 = &v337 - v33;
  __chkstk_darwin(v34);
  v363 = &v337 - v35;
  __chkstk_darwin(v36);
  v376 = &v337 - v37;
  __chkstk_darwin(v38);
  v375 = &v337 - v39;
  __chkstk_darwin(v40);
  v385 = &v337 - v41;
  __chkstk_darwin(v42);
  v390 = &v337 - v43;
  __chkstk_darwin(v44);
  v388 = &v337 - v45;
  __chkstk_darwin(v46);
  v389 = &v337 - v47;
  __chkstk_darwin(v48);
  v387 = &v337 - v49;
  __chkstk_darwin(v50);
  v392 = &v337 - v51;
  __chkstk_darwin(v52);
  v397 = &v337 - v53;
  __chkstk_darwin(v54);
  v401 = &v337 - v55;
  __chkstk_darwin(v56);
  v396 = &v337 - v57;
  __chkstk_darwin(v58);
  v395 = &v337 - v59;
  __chkstk_darwin(v60);
  v400 = &v337 - v61;
  __chkstk_darwin(v62);
  v406 = &v337 - v63;
  __chkstk_darwin(v64);
  v405 = &v337 - v65;
  __chkstk_darwin(v66);
  v404 = &v337 - v67;
  __chkstk_darwin(v68);
  v403 = &v337 - v69;
  __chkstk_darwin(v70);
  v411 = &v337 - v71;
  __chkstk_darwin(v72);
  v410 = &v337 - v73;
  __chkstk_darwin(v74);
  v412 = &v337 - v75;
  __chkstk_darwin(v76);
  *&v413 = &v337 - v77;
  __chkstk_darwin(v78);
  v415 = &v337 - v79;
  __chkstk_darwin(v80);
  v82 = &v337 - v81;
  v83 = type metadata accessor for Date();
  v424 = *(v83 - 8);
  __chkstk_darwin(v83);
  v355 = &v337 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v365 = &v337 - v86;
  __chkstk_darwin(v87);
  v369 = &v337 - v88;
  __chkstk_darwin(v89);
  v352 = &v337 - v90;
  __chkstk_darwin(v91);
  v360 = &v337 - v92;
  __chkstk_darwin(v93);
  v366 = &v337 - v94;
  __chkstk_darwin(v95);
  v374 = &v337 - v96;
  __chkstk_darwin(v97);
  v393 = &v337 - v98;
  __chkstk_darwin(v99);
  v391 = &v337 - v100;
  __chkstk_darwin(v101);
  v386 = &v337 - v102;
  __chkstk_darwin(v103);
  v398 = &v337 - v104;
  __chkstk_darwin(v105);
  v399 = &v337 - v106;
  __chkstk_darwin(v107);
  v394 = &v337 - v108;
  __chkstk_darwin(v109);
  v407 = &v337 - v110;
  __chkstk_darwin(v111);
  v408 = &v337 - v112;
  __chkstk_darwin(v113);
  v402 = &v337 - v114;
  __chkstk_darwin(v115);
  v409 = &v337 - v116;
  __chkstk_darwin(v117);
  v416 = &v337 - v118;
  __chkstk_darwin(v119);
  v419 = &v337 - v120;
  v121 = sub_1005B981C(&qword_1019F5528, &qword_10146D680);
  v122 = type metadata accessor for Calendar.Component();
  v123 = *(v122 - 8);
  v124 = *(v123 + 72);
  v125 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v382 = *(v123 + 80);
  v384 = v121;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_10146C4D0;
  v371 = v125;
  v127 = v126 + v125;
  v128 = *(v123 + 104);
  v381 = enum case for Calendar.Component.year(_:);
  v128(v127);
  v383 = v124;
  v379 = enum case for Calendar.Component.month(_:);
  v128(v127 + v124);
  v380 = 2 * v124;
  v372 = v123 + 104;
  v370 = v128;
  (v128)(v127 + 2 * v124, enum case for Calendar.Component.day(_:), v122);
  sub_10001644C(v126);
  swift_setDeallocating();
  v373 = v122;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v129 = v421;
  Calendar.dateComponents(_:from:)();

  Calendar.date(from:)();
  v130 = *(v425 + 8);
  v131 = v129;
  v425 += 8;
  v130(v129, v423);
  v132 = v424 + 48;
  v133 = *(v424 + 48);
  v134 = v83;
  if (v133(v82, 1, v83) == 1)
  {
    v135 = v82;
LABEL_5:
    sub_10000CAAC(v135, &qword_101A0A320, &qword_10146D650);
    return 8;
  }

  v136 = v419;
  v351 = *(v424 + 32);
  v350 = v424 + 32;
  v351(v419, v82, v134);
  v137 = type metadata accessor for Calendar();
  v138 = *(v137 - 8);
  v139 = *(v138 + 56);
  v347 = v137;
  v346 = v139;
  v349 = v138 + 56;
  (v139)(v417, 1, 1);
  v140 = type metadata accessor for TimeZone();
  v141 = *(v140 - 8);
  v142 = *(v141 + 56);
  v344 = v140;
  v348 = v142;
  v345 = v141 + 56;
  (v142)(v418, 1, 1);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v143 = v415;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v130(v131, v423);
  if (v133(v143, 1, v134) == 1)
  {
    (*(v424 + 8))(v136, v134);
    v135 = v143;
    goto LABEL_5;
  }

  v338 = v130;
  v145 = v416;
  v351(v416, v143, v134);
  v146 = v424;
  v147 = *(v424 + 16);
  v148 = v413;
  v339 = v424 + 16;
  v340 = v147;
  v147(v413, v145, v134);
  v149 = *(v146 + 56);
  v342 = v146 + 56;
  v341 = v149;
  v149(v148, 0, 1, v134);
  Date.timeIntervalSinceReferenceDate.getter();
  v151 = v150;
  v152 = v412;
  sub_10000BE14(v148, v412, &qword_101A0A320, &qword_10146D650);
  v415 = v133;
  v343 = v132;
  if (v133(v152, 1, v134) == 1)
  {
    v153 = v134;
    v154 = v424;
    sub_10000CAAC(v152, &qword_101A0A320, &qword_10146D650);
    v155 = INFINITY;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v155 = v156;
    v154 = v424;
    v153 = v134;
    (*(v424 + 8))(v152, v134);
  }

  v157 = v348;
  Date.timeIntervalSinceReferenceDate.getter();
  v159 = v158;
  sub_10000CAAC(v148, &qword_101A0A320, &qword_10146D650);
  if (v151 <= v159 && v159 < v155)
  {
    v160 = v409;
    v161 = v419;
    v162 = v153;
    v163 = v340;
    v340(v409, v419, v153);
    v164 = v410;
    v165 = v416;
    v163(v410, v416, v162);
    v341(v164, 0, 1, v162);
    Date.timeIntervalSinceReferenceDate.getter();
    v166 = v411;
    sub_10000BE14(v164, v411, &qword_101A0A320, &qword_10146D650);
    if ((v415)(v166, 1, v162) == 1)
    {
      sub_10000CAAC(v164, &qword_101A0A320, &qword_10146D650);
      v167 = *(v154 + 8);
      v167(v160, v162);
      v167(v165, v162);
      v167(v161, v162);
      sub_10000CAAC(v166, &qword_101A0A320, &qword_10146D650);
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      sub_10000CAAC(v164, &qword_101A0A320, &qword_10146D650);
      v181 = *(v154 + 8);
      v181(v160, v162);
      v181(v165, v162);
      v181(v161, v162);
      v181(v166, v162);
    }

    return 1;
  }

  sub_100D2C72C(&qword_101A1C708, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v168 = v416;
  v169 = v153;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v346(v417, 1, 1, v347);
    v157(v418, 1, 1, v344);
    v170 = v421;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v171 = v405;
    v172 = v419;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v173 = v171;
    v338(v170, v423);
    v174 = v415;
    v175 = v154;
    if ((v415)(v171, 1, v169) == 1)
    {
      v176 = *(v154 + 8);
      v176(v416, v169);
      v176(v172, v169);
      v135 = v173;
      goto LABEL_5;
    }

    v351(v408, v171, v169);
    v182 = v407;
    v183 = v340;
    v340(v407, v172, v169);
    v184 = v406;
    v183(v406, v182, v169);
    v341(v184, 0, 1, v169);
    Date.timeIntervalSinceReferenceDate.getter();
    v186 = v185;
    v187 = v400;
    sub_10000BE14(v184, v400, &qword_101A0A320, &qword_10146D650);
    v188 = v169;
    if (v174(v187, 1, v169) == 1)
    {
      sub_10000CAAC(v187, &qword_101A0A320, &qword_10146D650);
      v189 = INFINITY;
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v189 = v191;
      (*(v175 + 8))(v187, v169);
    }

    v192 = v347;
    v193 = v346;
    v194 = v401;
    Date.timeIntervalSinceReferenceDate.getter();
    v196 = v195;
    sub_10000CAAC(v406, &qword_101A0A320, &qword_10146D650);
    v197 = v351;
    if (v186 <= v196 && v196 < v189)
    {
      v198 = v394;
      v199 = v408;
      v200 = v340;
      v340(v394, v408, v169);
      v201 = v395;
      v202 = v407;
      v200(v395, v407, v188);
      v341(v201, 0, 1, v188);
      Date.timeIntervalSinceReferenceDate.getter();
      v203 = v396;
      sub_10000BE14(v201, v396, &qword_101A0A320, &qword_10146D650);
      if ((v415)(v203, 1, v188) == 1)
      {
        sub_10000CAAC(v201, &qword_101A0A320, &qword_10146D650);
        v204 = *(v175 + 8);
        v204(v198, v188);
        v204(v202, v188);
        v204(v199, v188);
        v204(v416, v188);
        v204(v419, v188);
        sub_10000CAAC(v203, &qword_101A0A320, &qword_10146D650);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        sub_10000CAAC(v201, &qword_101A0A320, &qword_10146D650);
        v221 = *(v175 + 8);
        v221(v198, v188);
        v221(v202, v188);
        v221(v199, v188);
        v221(v416, v188);
        v221(v419, v188);
        v221(v203, v188);
      }

      return 2;
    }

    v193(v417, 1, 1, v192);
    v348(v418, 1, 1, v344);
    v205 = v421;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v206 = v408;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v338(v205, v423);
    v207 = v415;
    if ((v415)(v194, 1, v188) == 1)
    {
      v208 = *(v175 + 8);
      v208(v407, v188);
      v208(v206, v188);
      v208(v416, v188);
      v208(v419, v188);
      v135 = v194;
      goto LABEL_5;
    }

    v197(v399, v194, v188);
    v209 = v398;
    v210 = v206;
    v211 = v340;
    v340(v398, v210, v188);
    v212 = v397;
    v211(v397, v209, v188);
    v341(v212, 0, 1, v188);
    Date.timeIntervalSinceReferenceDate.getter();
    v214 = v213;
    v215 = v392;
    sub_10000BE14(v212, v392, &qword_101A0A320, &qword_10146D650);
    if (v207(v215, 1, v188) == 1)
    {
      sub_10000CAAC(v215, &qword_101A0A320, &qword_10146D650);
      v216 = INFINITY;
      v217 = v393;
      v218 = v347;
      v219 = v346;
      v220 = v424;
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v216 = v222;
      v220 = v424;
      (*(v424 + 8))(v215, v188);
      v217 = v393;
      v218 = v347;
      v219 = v346;
    }

    Date.timeIntervalSinceReferenceDate.getter();
    v224 = v223;
    sub_10000CAAC(v397, &qword_101A0A320, &qword_10146D650);
    v225 = v351;
    if (v214 <= v224 && v224 < v216)
    {
      v226 = v386;
      v227 = v399;
      v228 = v340;
      v340(v386, v399, v188);
      v229 = v387;
      v230 = v398;
      v228(v387, v398, v188);
      v341(v229, 0, 1, v188);
      Date.timeIntervalSinceReferenceDate.getter();
      v231 = v389;
      sub_10000BE14(v229, v389, &qword_101A0A320, &qword_10146D650);
      if ((v415)(v231, 1, v188) == 1)
      {
        sub_10000CAAC(v229, &qword_101A0A320, &qword_10146D650);
        v232 = *(v220 + 8);
        v232(v226, v188);
        v232(v230, v188);
        v232(v227, v188);
        v232(v407, v188);
        v232(v408, v188);
        v232(v416, v188);
        v232(v419, v188);
        sub_10000CAAC(v231, &qword_101A0A320, &qword_10146D650);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        sub_10000CAAC(v229, &qword_101A0A320, &qword_10146D650);
        v247 = *(v220 + 8);
        v247(v226, v188);
        v247(v230, v188);
        v247(v227, v188);
        v247(v407, v188);
        v247(v408, v188);
        v247(v416, v188);
        v247(v419, v188);
        v247(v231, v188);
      }

      return 3;
    }

    v219(v417, 1, 1, v218);
    v348(v418, 1, 1, v344);
    v233 = v421;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v234 = v388;
    v235 = v399;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v236 = v233;
    v237 = v234;
    v338(v236, v423);
    v238 = v234;
    v239 = v415;
    if ((v415)(v238, 1, v188) == 1)
    {
      v240 = *(v220 + 8);
      v240(v398, v188);
      v240(v235, v188);
      v240(v407, v188);
      v240(v408, v188);
      v240(v416, v188);
      v240(v419, v188);
      v135 = v237;
      goto LABEL_5;
    }

    v225(v391, v237, v188);
    v241 = v340;
    v340(v217, v235, v188);
    v242 = v390;
    v241(v390, v217, v188);
    v341(v242, 0, 1, v188);
    Date.timeIntervalSinceReferenceDate.getter();
    v244 = v243;
    v245 = v385;
    sub_10000BE14(v242, v385, &qword_101A0A320, &qword_10146D650);
    if (v239(v245, 1, v188) == 1)
    {
      sub_10000CAAC(v245, &qword_101A0A320, &qword_10146D650);
      v246 = INFINITY;
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v246 = v248;
      (*(v220 + 8))(v245, v188);
    }

    Date.timeIntervalSinceReferenceDate.getter();
    v250 = v249;
    sub_10000CAAC(v390, &qword_101A0A320, &qword_10146D650);
    if (v244 <= v250 && v250 < v246)
    {
      v251 = v374;
      v252 = v391;
      v253 = v340;
      v340(v374, v391, v188);
      v254 = v375;
      v253(v375, v217, v188);
      v341(v254, 0, 1, v188);
      Date.timeIntervalSinceReferenceDate.getter();
      v255 = v376;
      sub_10000BE14(v254, v376, &qword_101A0A320, &qword_10146D650);
      if ((v415)(v255, 1, v188) == 1)
      {
        sub_10000CAAC(v254, &qword_101A0A320, &qword_10146D650);
        v256 = *(v220 + 8);
        v256(v251, v188);
        v256(v217, v188);
        v256(v252, v188);
        v256(v398, v188);
        v256(v399, v188);
        v256(v407, v188);
        v256(v408, v188);
        v256(v416, v188);
        v256(v419, v188);
        sub_10000CAAC(v255, &qword_101A0A320, &qword_10146D650);
      }

      else
      {
        Date.timeIntervalSinceReferenceDate.getter();
        sub_10000CAAC(v254, &qword_101A0A320, &qword_10146D650);
        v274 = *(v220 + 8);
        v274(v251, v188);
        v274(v217, v188);
        v274(v252, v188);
        v274(v398, v188);
        v274(v399, v188);
        v274(v407, v188);
        v274(v408, v188);
        v274(v416, v188);
        v274(v419, v188);
        v274(v255, v188);
      }

      return 4;
    }

    v257 = v371;
    v258 = swift_allocObject();
    v413 = xmmword_10146BDE0;
    *(v258 + 16) = xmmword_10146BDE0;
    v259 = v373;
    v260 = v370;
    (v370)(v258 + v257, v379, v373);
    (v260)(v258 + v257 + v383, v381, v259);
    sub_10001644C(v258);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v261 = v377;
    Calendar.dateComponents(_:from:)();

    v262 = swift_allocObject();
    *(v262 + 16) = v413;
    (v260)(v262 + v257, v379, v259);
    (v260)(v262 + v257 + v383, v381, v259);
    v263 = v261;
    sub_10001644C(v262);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v264 = v378;
    Calendar.dateComponents(_:from:)();

    DateComponents.month.getter();
    if (v265 & 1) != 0 || (v266 = DateComponents.year.getter(), (v267) || (v268 = v266, v269 = DateComponents.year.getter(), (v270))
    {
      v271 = v423;
      v272 = v338;
      v338(v264, v423);
      v272(v263, v271);
      v273 = *(v220 + 8);
      v273(v393, v188);
      v273(v391, v188);
      v273(v398, v188);
      v273(v399, v188);
      v273(v407, v188);
      v273(v408, v188);
      v273(v416, v188);
      v273(v419, v188);
      return 8;
    }

    if (v268 == v269)
    {
      v346(v417, 1, 1, v347);
      v348(v418, 1, 1, v344);
      v275 = v421;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v276 = v363;
      Calendar.date(from:)();
      v338(v275, v423);
      if ((v415)(v276, 1, v188) == 1)
      {
        sub_10000CAAC(v276, &qword_101A0A320, &qword_10146D650);
      }

      else
      {
        v351(v366, v276, v188);
        v346(v417, 1, 1, v347);
        v348(v418, 1, 1, v344);
        v277 = v421;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v278 = v364;
        Calendar.date(byAdding:to:wrappingComponents:)();
        v338(v277, v423);
        if ((v415)(v278, 1, v188) == 1)
        {
          (*(v220 + 8))(v366, v188);
          sub_10000CAAC(v364, &qword_101A0A320, &qword_10146D650);
        }

        else
        {
          v279 = v360;
          v351(v360, v364, v188);
          v280 = v359;
          v340(v359, v279, v188);
          v341(v280, 0, 1, v188);
          Date.timeIntervalSinceReferenceDate.getter();
          v282 = v281;
          v283 = v280;
          v284 = v358;
          sub_10000BE14(v283, v358, &qword_101A0A320, &qword_10146D650);
          if ((v415)(v284, 1, v188) == 1)
          {
            sub_10000CAAC(v358, &qword_101A0A320, &qword_10146D650);
            v285 = INFINITY;
          }

          else
          {
            v286 = v358;
            Date.timeIntervalSinceReferenceDate.getter();
            v285 = v287;
            (*(v220 + 8))(v286, v188);
          }

          Date.timeIntervalSinceReferenceDate.getter();
          v289 = v288;
          sub_10000CAAC(v359, &qword_101A0A320, &qword_10146D650);
          if (v282 <= v289 && v289 < v285)
          {
            v290 = v340;
            v340(v352, v366, v188);
            v291 = v353;
            v290(v353, v360, v188);
            v341(v291, 0, 1, v188);
            Date.timeIntervalSinceReferenceDate.getter();
            v422 = v292;
            v293 = v354;
            sub_10000BE14(v291, v354, &qword_101A0A320, &qword_10146D650);
            if ((v415)(v293, 1, v188) == 1)
            {
              sub_10000CAAC(v353, &qword_101A0A320, &qword_10146D650);
              v294 = *(v220 + 8);
              v294(v352, v188);
              v294(v360, v188);
              v294(v366, v188);
              v295 = v423;
              v296 = v338;
              v338(v378, v423);
              v296(v377, v295);
              v294(v393, v188);
              v294(v391, v188);
              v294(v398, v188);
              v294(v399, v188);
              v294(v407, v188);
              v294(v408, v188);
              v294(v416, v188);
              v294(v419, v188);
              sub_10000CAAC(v354, &qword_101A0A320, &qword_10146D650);
            }

            else
            {
              v333 = v354;
              Date.timeIntervalSinceReferenceDate.getter();
              sub_10000CAAC(v353, &qword_101A0A320, &qword_10146D650);
              v334 = *(v220 + 8);
              v334(v352, v188);
              v334(v360, v188);
              v334(v366, v188);
              v335 = v423;
              v336 = v338;
              v338(v378, v423);
              v336(v377, v335);
              v334(v393, v188);
              v334(v391, v188);
              v334(v398, v188);
              v334(v399, v188);
              v334(v407, v188);
              v334(v408, v188);
              v334(v416, v188);
              v334(v419, v188);
              v334(v333, v188);
            }

            return 5;
          }

          v297 = *(v220 + 8);
          v297(v360, v188);
          v297(v366, v188);
        }
      }

      v263 = v377;
    }

    v346(v417, 1, 1, v347);
    v298 = v344;
    v348(v418, 1, 1, v344);
    v299 = v421;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v300 = v367;
    Calendar.date(from:)();
    v301 = v338;
    v338(v299, v423);
    if ((v415)(v300, 1, v188) == 1)
    {
      v302 = v423;
      v301(v378, v423);
      v301(v263, v302);
      v303 = *(v220 + 8);
      v303(v393, v188);
      v303(v391, v188);
      v303(v398, v188);
      v303(v399, v188);
      v303(v407, v188);
      v303(v408, v188);
      v303(v416, v188);
      v303(v419, v188);
      v304 = v300;
LABEL_76:
      sub_10000CAAC(v304, &qword_101A0A320, &qword_10146D650);
      return 7;
    }

    v351(v369, v300, v188);
    v346(v417, 1, 1, v347);
    v348(v418, 1, 1, v298);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v305 = v368;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v301(v299, v423);
    if ((v415)(v305, 1, v188) == 1)
    {
      v306 = *(v220 + 8);
      v306(v369, v188);
      v307 = v423;
      v308 = v338;
      v338(v378, v423);
      v308(v377, v307);
      v306(v393, v188);
      v306(v391, v188);
      v306(v398, v188);
      v306(v399, v188);
      v306(v407, v188);
      v306(v408, v188);
      v306(v416, v188);
      v306(v419, v188);
      v304 = v368;
      goto LABEL_76;
    }

    v309 = v365;
    v351(v365, v368, v188);
    v310 = v362;
    v340(v362, v309, v188);
    v341(v310, 0, 1, v188);
    Date.timeIntervalSinceReferenceDate.getter();
    v312 = v311;
    v313 = v361;
    sub_10000BE14(v310, v361, &qword_101A0A320, &qword_10146D650);
    if ((v415)(v313, 1, v188) == 1)
    {
      sub_10000CAAC(v361, &qword_101A0A320, &qword_10146D650);
      v314 = INFINITY;
    }

    else
    {
      v315 = v361;
      Date.timeIntervalSinceReferenceDate.getter();
      v314 = v316;
      (*(v220 + 8))(v315, v188);
    }

    Date.timeIntervalSinceReferenceDate.getter();
    v318 = v317;
    sub_10000CAAC(v362, &qword_101A0A320, &qword_10146D650);
    if (v312 > v318 || v318 >= v314)
    {
      v326 = *(v220 + 8);
      v326(v365, v188);
      v326(v369, v188);
      v327 = v423;
      v328 = v338;
      v338(v378, v423);
      v328(v377, v327);
      v326(v393, v188);
      v326(v391, v188);
      v326(v398, v188);
      v326(v399, v188);
      v326(v407, v188);
      v326(v408, v188);
      v326(v416, v188);
      v326(v419, v188);
      return 7;
    }

    v319 = v340;
    v340(v355, v369, v188);
    v320 = v356;
    v319(v356, v365, v188);
    v341(v320, 0, 1, v188);
    Date.timeIntervalSinceReferenceDate.getter();
    v422 = v321;
    v322 = v357;
    sub_10000BE14(v320, v357, &qword_101A0A320, &qword_10146D650);
    if ((v415)(v322, 1, v188) == 1)
    {
      sub_10000CAAC(v356, &qword_101A0A320, &qword_10146D650);
      v323 = *(v220 + 8);
      v323(v355, v188);
      v323(v365, v188);
      v323(v369, v188);
      v324 = v423;
      v325 = v338;
      v338(v378, v423);
      v325(v377, v324);
      v323(v393, v188);
      v323(v391, v188);
      v323(v398, v188);
      v323(v399, v188);
      v323(v407, v188);
      v323(v408, v188);
      v323(v416, v188);
      v323(v419, v188);
      sub_10000CAAC(v357, &qword_101A0A320, &qword_10146D650);
    }

    else
    {
      v329 = v357;
      Date.timeIntervalSinceReferenceDate.getter();
      sub_10000CAAC(v356, &qword_101A0A320, &qword_10146D650);
      v330 = *(v220 + 8);
      v330(v355, v188);
      v330(v365, v188);
      v330(v369, v188);
      v331 = v423;
      v332 = v338;
      v338(v378, v423);
      v332(v377, v331);
      v330(v393, v188);
      v330(v391, v188);
      v330(v398, v188);
      v330(v399, v188);
      v330(v407, v188);
      v330(v408, v188);
      v330(v416, v188);
      v330(v419, v188);
      v330(v329, v188);
    }

    return 6;
  }

  else
  {
    v177 = v402;
    v340(v402, v168, v153);
    v178 = v403;
    v341(v403, 1, 1, v153);
    Date.timeIntervalSinceReferenceDate.getter();
    v179 = v404;
    sub_10000BE14(v178, v404, &qword_101A0A320, &qword_10146D650);
    if ((v415)(v179, 1, v169) == 1)
    {
      sub_10000CAAC(v178, &qword_101A0A320, &qword_10146D650);
      v180 = *(v154 + 8);
      v180(v177, v169);
      v180(v168, v169);
      v180(v419, v169);
      sub_10000CAAC(v179, &qword_101A0A320, &qword_10146D650);
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      sub_10000CAAC(v178, &qword_101A0A320, &qword_10146D650);
      v190 = *(v154 + 8);
      v190(v177, v169);
      v190(v168, v169);
      v190(v419, v169);
      v190(v179, v169);
    }

    return 0;
  }
}

void *sub_100D2C0A8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v72 = type metadata accessor for Calendar();
  v3 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v70 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F6DC8, &qword_10146FBB8);
  __chkstk_darwin(v12);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v68 = &v59 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v18 + 80);
    v67 = *(v12 + 48);
    v22 = a1 + ((v21 + 32) & ~v21);
    v60 = *(v18 + 72);
    v66 = (v6 + 32);
    v65 = (v3 + 8);
    v77 = _swiftEmptyDictionarySingleton;
    v59 = (v6 + 8);
    v63 = xmmword_10146C6B0;
    v76 = v12;
    v62 = v5;
    v61 = v8;
    v64 = v16;
    while (1)
    {
      v74 = v22;
      v75 = v20;
      v23 = v68;
      sub_10000BE14(v22, v68, &qword_1019F6DC8, &qword_10146FBB8);
      v24 = v5;
      v25 = *(v12 + 48);
      sub_100AC6E64(v23, v16);
      v26 = v11;
      v27 = *v66;
      (*v66)(&v16[v25], v23 + v67, v24);
      v28 = v69;
      sub_10000BE14(v16, v69, &qword_1019F6DC8, &qword_10146FBB8);
      v29 = *(v76 + 48);
      sub_100AC6E64(v28, v11);
      v27(v8, v28 + v29, v24);
      v30 = v71;
      static Calendar.current.getter();
      LOBYTE(v29) = sub_100D28240(v8, v73, v30);
      v32 = v31;
      v34 = v33;
      LOBYTE(v24) = v35;
      (*v65)(v30, v72);
      v79.i64[0] = v29;
      v79.i64[1] = v32;
      *&v80 = v34;
      *(&v80 + 1) = v24 & 1;
      v81 = 0uLL;
      v82 = 64;
      v36 = v77;
      if (v77[2] && (v37 = sub_10002D980(&v79), (v38 & 1) != 0))
      {
        v39 = *(v36[7] + 8 * v37);
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
      }

      v16 = v64;
      sub_1005B981C(&qword_101A23C10, &unk_10146F210);
      v40 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v63;
      sub_10075ABD8(v11, v41 + v40);
      v78 = v39;
      sub_10079ADBC(v41);
      v42 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v36;
      v45 = sub_10002D980(&v79);
      v46 = v36[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        break;
      }

      v49 = v44;
      if (v36[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AA8130();
        }

        v11 = v26;
      }

      else
      {
        sub_100A8FD00(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_10002D980(&v79);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_23;
        }

        v45 = v50;
        v11 = v26;
      }

      v52 = v78;
      v12 = v76;
      v77 = v78;
      if (v49)
      {
        *(v78[7] + 8 * v45) = v42;
      }

      else
      {
        v78[(v45 >> 6) + 8] |= 1 << v45;
        v53 = v52[6] + 56 * v45;
        v54 = v80;
        *v53 = v79;
        *(v53 + 16) = v54;
        *(v53 + 32) = v81;
        *(v53 + 48) = v82;
        *(v52[7] + 8 * v45) = v42;
        v55 = v52[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_22;
        }

        v52[2] = v57;
      }

      v8 = v61;
      v5 = v62;
      (*v59)(v61, v62);
      sub_100AC6F38(v11);
      sub_10000CAAC(v16, &qword_1019F6DC8, &qword_10146FBB8);
      v22 = v74 + v60;
      v20 = v75 - 1;
      if (v75 == 1)
      {
        return v77;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100D2C72C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100D2C774(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[25])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100D2C7B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_100D2C814()
{
  result = qword_101A1C710;
  if (!qword_101A1C710)
  {
    result = swift_getWitnessTable(byte_1014AD6E4, &type metadata for CRLBoardLibraryFolderViewModel.TimeBucket, v0, v1);
    atomic_store(result, &qword_101A1C710);
  }

  return result;
}

unint64_t sub_100D2C87C()
{
  result = qword_101A1C718;
  if (!qword_101A1C718)
  {
    result = swift_getWitnessTable("A^8", &type metadata for CRLBoardLibraryFolderViewModel.TimeBucket.BucketType, v0, v1);
    atomic_store(result, &qword_101A1C718);
  }

  return result;
}

__n128 sub_100D2C8D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = [v1 activityType];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_100080A80(v4, v6);
  if (sub_100080930(v7) == 0xD000000000000027 && 0x8000000101551880 == v8)
  {

    v11 = sub_100D2CEC4();
    if (v22)
    {
LABEL_7:
      v14 = sub_100D2D0C8();
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 2;
      }

      else
      {
        v16 = v14;
        v24 = sub_100D2CEC4();
        v21 = 2;
        if (v26)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
        }

        else
        {
          v17 = v24;
          v18 = v25;
          v19 = 1;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0;
          v62 = 2;
          sub_10000CAAC(&v57, &qword_1019FE618, &qword_1014B6B70);
          v21 = 0;
          v20 = 0xF000000000000000;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = sub_100D2CEC4();
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v17 = v11;
  v18 = v12;
  v19 = 1;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v62 = 2;
  sub_10000CAAC(&v57, &qword_1019FE618, &qword_1014B6B70);
  sub_100D2D0C8();
  if (v23)
  {
    v21 = 1;
    v20 = 0xF000000000000000;
    v16 = 0x3FF0000000000000;
  }

  else
  {
    v51 = objc_opt_self();
    v27 = [v51 _atomicIncrementAssertCount];
    *&v53 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v53, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("crl_boardViewState", 18, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController_UserActivity.swift", 113, 2);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10146CA70;
    *(v32 + 56) = &type metadata for Int32;
    *(v32 + 64) = &protocol witness table for Int32;
    *(v32 + 32) = v27;
    v33 = sub_1005CF000();
    *(v32 + 96) = v33;
    v34 = sub_100D2D5D8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v32 + 104) = v34;
    *(v32 + 72) = v50;
    *(v32 + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(v32 + 112) = v48;
    *(v32 + 120) = v31;
    *(v32 + 176) = &type metadata for UInt;
    *(v32 + 184) = &protocol witness table for UInt;
    *(v32 + 144) = v35;
    *(v32 + 152) = 26;
    v36 = v53;
    *(v32 + 216) = v33;
    *(v32 + 224) = v34;
    *(v32 + 192) = v36;
    v37 = v50;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v32);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v40, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter("crl_boardViewState", 18, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController_UserActivity.swift", 113, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v45 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v43 file:v44 lineNumber:26 isFatal:0 format:v45 args:v42];

    v21 = 1;
    v20 = 0xF000000000000000;
    v16 = 0x3FF0000000000000;
  }

LABEL_18:
  *&v53 = v16;
  *(&v53 + 1) = v17;
  v54 = v18;
  LOBYTE(v55) = v19;
  BYTE7(v55) = 0;
  *(&v55 + 5) = 0;
  *(&v55 + 1) = 0;
  *(&v55 + 1) = 0;
  *v56 = v20;
  *&v56[16] = v20;
  v56[24] = v21;
  *&v57 = v16;
  *(&v57 + 1) = v17;
  v58 = v18;
  LOBYTE(v59) = v19;
  BYTE7(v59) = 0;
  *(&v59 + 5) = 0;
  *(&v59 + 1) = 0;
  *(&v59 + 1) = 0;
  v60 = v20;
  v61 = v20;
  v62 = v21;
  sub_100D2D568(&v53, v52);
  sub_10000CAAC(&v57, &qword_1019FE618, &qword_1014B6B70);
  v46 = *v56;
  *(a1 + 32) = v55;
  *(a1 + 48) = v46;
  *(a1 + 57) = *&v56[9];
  result = v54;
  *a1 = v53;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100D2CEC4()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000640CC(v9), (v5 & 1) == 0))
  {

    sub_100064234(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_100064288(*(v3 + 56) + 32 * v4, &v10);
  sub_100064234(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_10000CAAC(&v10, &unk_1019F4D00, &unk_10146E7F0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v6 = v9[0];
    v7 = v9[1];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for CGPoint(0);
    sub_100D2D5D8(&qword_1019FB5A8, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10002640C(v6, v7);

    return v9[0];
  }

  return 0;
}

uint64_t sub_100D2D0C8()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = xmmword_101A1C720;

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000640CC(v7), (v5 & 1) == 0))
  {

    sub_100064234(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100064288(*(v3 + 56) + 32 * v4, &v8);
  sub_100064234(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_10000CAAC(&v8, &unk_1019F4D00, &unk_10146E7F0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return 0;
}

uint64_t sub_100D2D20C(void *a1)
{
  v2 = v1;
  v4 = [a1 activityType];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_100080A80(v5, v7);
  if (sub_100080930(v8) == 0xD000000000000033 && 0x8000000101551800 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;

  AnyHashable.init<A>(_:)();
  [v2 viewScale];
  *(inited + 96) = &type metadata for CGFloat;
  *(inited + 72) = v13;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addUserInfoEntriesFromDictionary:isa];

LABEL_9:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  [v2 contentOffset];
  type metadata accessor for CGPoint(0);
  sub_100D2D5D8(&qword_1019FB5C0, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;

  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10146C6B0;

  AnyHashable.init<A>(_:)();
  *(v18 + 96) = &type metadata for Data;
  *(v18 + 72) = v15;
  *(v18 + 80) = v17;
  sub_100024E98(v15, v17);
  sub_100078EA4(v18);
  swift_setDeallocating();
  sub_10000CAAC(v18 + 32, &unk_1019FB8B0, &unk_101471280);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addUserInfoEntriesFromDictionary:v19];

  return sub_10002640C(v15, v17);
}

uint64_t sub_100D2D568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FE618, &qword_1014B6B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D2D5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id sub_100D2D620(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_100D2E2EC(a1, a2);

  return v6;
}

void sub_100D2D880(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (!v9)
  {
    goto LABEL_8;
  }

  type metadata accessor for CRLShapeItem(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

LABEL_8:
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v66 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v66, "Unable to retrieve shape item.", 30, 2u);
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetPathSource.swift", 95, 2);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 29;
    v33 = v66;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Unable to retrieve shape item.", 30, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve shape item.");
    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetPathSource.swift", 95, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to retrieve shape item.", 30, 2);
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:29 isFatal:1 format:v42 args:v39];
    goto LABEL_14;
  }

  v11 = OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_pathSource;
  v12 = *(v5 + OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_pathSource);
  if (!v12)
  {
    v43 = objc_opt_self();
    v44 = [v43 _atomicIncrementAssertCount];
    v66 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v66, "Should have path source in commit.", 34, 2u);
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetPathSource.swift", 95, 2);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v52 + 96) = v53;
    v54 = sub_1005CF04C();
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 32;
    v56 = v66;
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v56;
    v57 = v45;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);

    v60 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v60, "Should have path source in commit.", 34, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should have path source in commit.");
    type metadata accessor for __VaListBuilder();
    v61 = swift_allocObject();
    v61[2] = 8;
    v61[3] = 0;
    v61[4] = 0;
    v61[5] = 0;
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetPathSource.swift", 95, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Should have path source in commit.", 34, 2);
    v42 = String._bridgeToObjectiveC()();

    [v43 handleFailureInFunction:v40 file:v41 lineNumber:32 isFatal:1 format:v42 args:v62];
LABEL_14:

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v63, v64);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v12;
  v15 = v9;
  sub_1012E0400(v13, &off_10188FE10);
  if (v4)
  {
  }

  else
  {

    v65 = a3;
    v16 = *((swift_isaMask & *v13) + 0x538);
    v17 = v14;
    v16();
    v18 = *(v5 + v11);
    *(v5 + v11) = 0;

    v19 = v15;
    sub_1012CF6CC(v13, &off_10188FE10, v65);
  }
}

void sub_100D2E0D4()
{
  v1 = OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_pathSource);
}

id sub_100D2E14C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetPathSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetPathSource(uint64_t a1)
{
  result = qword_101A1C778;
  if (!qword_101A1C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D2E254(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

id sub_100D2E2EC(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_pathSource;
  *&v2[OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_pathSource] = 0;
  v6 = OBJC_IVAR____TtC8Freeform23CRLCommandSetPathSource_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8, off_10182F908);
  swift_dynamicCast();
  v9 = *&v2[v5];
  *&v2[v5] = v13;

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CRLCommandSetPathSource(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v8 + 8))(a1, v7);
  return v10;
}

id sub_100D2E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v58 = a6;
  v59 = a7;
  v57 = a2;
  v10 = a4(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v55 = a3;
    v56 = a5;
    v19 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v54 = a1;
    (*(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
    v21 = v19;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v16, v13);
    v23 = [v21 containsObject:isa];

    if (v23)
    {
      sub_100D31418(v57, v12, v56);
      v24 = sub_1005B981C(v58, v59);
      v25 = objc_allocWithZone(v24);
      v26 = &v25[*((swift_isaMask & *v25) + 0xF0)];
      *v26 = 0;
      *(v26 + 1) = 0xE000000000000000;
      (*(**(v54 + v20) + 264))();
      (*(v14 + 32))(&v25[*((swift_isaMask & *v25) + 0xD8)], v16, v13);
      v27 = v56;
      sub_100D31418(v12, &v25[*((swift_isaMask & *v25) + 0xE0)], v56);
      *&v25[*((swift_isaMask & *v25) + 0xE8)] = v55;
      v60.receiver = v25;
      v60.super_class = v24;

      v28 = objc_msgSendSuper2(&v60, "init");

      sub_100D31480(v12, v27);
      return v28;
    }
  }

  else
  {
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandToSetItemValue(item:value:keyPath:)", 42, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardCommandProvider.swift", 95, 2);
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_1005CF000();
    *(inited + 96) = v40;
    v41 = sub_1005CF04C();
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 37;
    v43 = v61;
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandToSetItemValue(item:value:keyPath:)", 42, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardCommandProvider.swift", 95, 2);
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:37 isFatal:0 format:v52 args:v49];
  }

  return 0;
}

uint64_t sub_100D2EAFC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for URL();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  v3[12] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v6;
  v3[19] = v5;

  return _swift_task_switch(sub_100D2EC80, v6, v5);
}

uint64_t sub_100D2EC80()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[9];
  sub_10001ACF0(v0[6], v2);
  sub_10001ACF0(v2, v1);
  v5 = *(v4 + 48);
  LODWORD(v2) = v5(v1, 1, v3);
  result = sub_100686028(v1);
  if (v2 == 1)
  {
    if (**(v0[5] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A1C108)
    {
      __break(1u);
      return result;
    }

    v7 = v0[16];
    v8 = v0[14];
    v9 = v0[12];
    v20 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100686028(v7);
    (*(v11 + 16))(v8, v9 + *(v20 + 20), v10);
    sub_100D31480(v9, type metadata accessor for CRLURLItemAtomicDataStruct);
    (*(v11 + 56))(v8, 0, 1, v10);
    sub_100044B68(v8, v7);
  }

  v12 = v0[13];
  v13 = v0[8];
  sub_10001ACF0(v0[16], v12);
  if (v5(v12, 1, v13) == 1)
  {
    v14 = v0[13];

    sub_100686028(v14);
    sub_100D313C4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    sub_100686028(v0[16]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[13], v0[8]);
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_100D2EFD8;
    v18 = v0[10];
    v19 = v0[5];

    return sub_100D2F2D4(v19, v18, 1);
  }
}

uint64_t sub_100D2EFD8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100D2F1F0;
  }

  else
  {
    v5 = sub_100D2F114;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D2F114()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  sub_100686028(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D2F1F0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);
  sub_100686028(v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D2F2D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  *(v4 + 384) = a3;
  *(v4 + 200) = a1;
  v7 = type metadata accessor for CancellationError();
  *(v4 + 224) = v7;
  *(v4 + 232) = *(v7 - 8);
  *(v4 + 240) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 248) = v8;
  *(v4 + 256) = *(v8 - 8);
  *(v4 + 264) = swift_task_alloc();
  type metadata accessor for CRLURLItemAtomicDataStruct(0);
  *(v4 + 272) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 280) = v9;
  *(v4 + 288) = type metadata accessor for MainActor();
  *(v4 + 296) = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  *(v4 + 304) = v10;
  *v10 = v4;
  v10[1] = sub_100D2F4A8;

  return sub_100D2FF60(v9, a2, a1);
}

uint64_t sub_100D2F4A8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    *(v2 + 320) = v3;
    *(v2 + 328) = v4;
    v5 = sub_100D2F75C;
  }

  else
  {
    v5 = sub_100D2F60C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100D2F60C()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 384);
  v6 = *(v0 + 200);

  (*(**(v6 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v7);
  sub_100D30E14(v1, v2, v5 & 1);
  (*(v3 + 8))(v2, v4);
  sub_100D31480(v1, type metadata accessor for CRLURLItemAtomicDataStruct);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D2F75C()
{
  v0[22] = v0[39];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v2 = v0[29];
    v1 = v0[30];
    v3 = v0[28];
    v4 = static OS_os_log.crlDefault;
    v5 = static os_log_type_t.info.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "Task cancelled. Not an error.", 29, 2, _swiftEmptyArrayStorage);
    (*(v2 + 8))(v1, v3);

    v6 = v0[1];

    return v6();
  }

  else
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v10 = Error.publicDescription.getter(v0[17], v0[18]);
    v12 = v11;
    *(inited + 56) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 64) = v13;
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    swift_getErrorValue();
    v14 = Error.fullDescription.getter(v0[20]);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v13;
    *(inited + 72) = v14;
    *(inited + 80) = v15;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v16, "Error loading URL metadata: %{public}@ <%@>", 43, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v0[42] = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[43] = v18;
    v0[44] = v17;

    return _swift_task_switch(sub_100D2FA9C, v18, v17);
  }
}

uint64_t sub_100D2FA9C()
{
  v1 = sub_100F17268();
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_100D2FB48;
  v3 = v0[34];
  v4 = v0[25];

  return sub_100D30668(v3, v1, v4);
}

uint64_t sub_100D2FB48()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_100D2FE54;
  }

  else
  {
    v5 = sub_100D2FC84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D2FC84()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 384);
  v7 = *(v0 + 200);

  (*(**(v7 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v8);
  sub_100D30E14(v2, v3, v6 & 1);

  (*(v5 + 8))(v3, v4);
  sub_100D31480(v2, type metadata accessor for CRLURLItemAtomicDataStruct);
  v9 = *(v0 + 320);
  v10 = *(v0 + 328);

  return _swift_task_switch(sub_100D2FDB0, v9, v10);
}

uint64_t sub_100D2FDB0()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D2FE54()
{
  v1 = v0[45];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_100D2FEC0, v2, v3);
}

uint64_t sub_100D2FEC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D2FF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100D30058, v7, v6);
}

uint64_t sub_100D30058()
{
  v1 = v0[8];
  (*(v0[7] + 16))(v1, v0[3], v0[6]);
  v2 = objc_allocWithZone(type metadata accessor for CRLRemoteURLMetadataProvider(0));
  v3 = sub_100FC85B8(v1);
  v0[12] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100D3018C;

  return sub_100FC6E1C();
}

uint64_t sub_100D3018C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = sub_100D30574;
  }

  else
  {

    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = sub_100D302A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100D302A8(uint64_t a1)
{
  v2 = v1[15];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[12];

    v5 = v1[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v1[16] = v7;
    *v7 = v1;
    v7[1] = sub_100D303B0;
    v8 = v1[14];
    v9 = v1[4];
    v10 = v1[2];

    return sub_100D30668(v10, v8, v9);
  }
}

uint64_t sub_100D303B0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_100D305EC;
  }

  else
  {
    v5 = sub_100D304EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D304EC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D30574()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D305EC()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D30668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for CRLAssetData(0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return _swift_task_switch(sub_100D30798, v6, v5);
}

uint64_t sub_100D30798()
{
  v1 = [*(v0 + 24) URL];
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v5 + 32);
    *(v0 + 104) = v7;
    *(v0 + 112) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v3, v2, v4);
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_100D30908, 0, 0);
  }

  else
  {

    sub_100D313C4();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100D30908(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = sub_1009DCA30();
  v1[15] = v2;
  v1[16] = v3;
  v4 = aLinkMetadata[0];
  v5 = aLinkMetadata[1];
  v6 = v2;
  v7 = v3;

  swift_getObjectType();
  v1[17] = sub_1009F7A0C(v6, v7, v4, v5);

  static Task<>.checkCancellation()();
  v8 = swift_task_alloc();
  v1[18] = v8;
  *v8 = v1;
  v8[1] = sub_100D30A7C;
  v9 = v1[5];

  return sub_100CF18DC(v9);
}

uint64_t sub_100D30A7C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100D30CF0;
  }

  else
  {
    v2 = sub_100D30B90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D30B90()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  sub_10002640C(v2, v1);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  return _swift_task_switch(sub_100D30C04, v3, v4);
}

uint64_t sub_100D30C04()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  swift_unknownObjectRelease();

  sub_1006008F0(v4, v5);
  v6 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  v1(v5 + *(v6 + 20), v2, v3);
  *(v5 + *(v6 + 24)) = _swiftEmptyDictionarySingleton;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D30CF0()
{
  v1 = *(v0 + 152);
  sub_10002640C(*(v0 + 120), *(v0 + 128));
  *(v0 + 160) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return _swift_task_switch(sub_100D30D64, v2, v3);
}

uint64_t sub_100D30D64()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_100D30E14(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6 && (v7 = v6, v8 = *(v6 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController), v7, v9 = *&v8[OBJC_IVAR____TtC8Freeform20CRLCommandController_board], v8, isa = UUID._bridgeToObjectiveC()().super.isa, v11 = [v9 getBoardItemForUUID:isa], v9, isa, v11))
    {
      type metadata accessor for CRLURLItem(0);
      v12 = swift_dynamicCastClass();
      if (v12 && (v13 = sub_100D30F94(a1, v12)) != 0)
      {
        v14 = v13;
        sub_100888700(v13, 0, 0, 4uLL, 0);

        v15 = v11;
        v11 = v14;
      }

      else
      {
        v15 = v17;
      }

      v16 = v11;
    }

    else
    {
      v16 = v17;
    }
  }
}

void *sub_100D30F94(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_100D2E47C(a2, a1, KeyPath, type metadata accessor for CRLURLItemAtomicDataStruct, type metadata accessor for CRLURLItemAtomicDataStruct, &qword_101A1C8B8, &unk_1014AD860);

  if (!v5)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(type metadata accessor for CRLCommandGroup());
  v8 = v5;
  v9 = [v7 init];
  v10 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  *(v9 + v10) = v6;

  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  (*((swift_isaMask & *v9) + 0x110))(v16, v18);
  return v9;
}

void sub_100D3122C(void *a1)
{
  if (**(*a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D31300(uint64_t a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D31418(a1, v4, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A7BC24(v4);
}

unint64_t sub_100D313C4()
{
  result = qword_101A1C8C0;
  if (!qword_101A1C8C0)
  {
    result = swift_getWitnessTable(byte_1014AD8F0, &type metadata for CRLURLItemCommandProvider.ProviderError, v0, v1);
    atomic_store(result, &qword_101A1C8C0);
  }

  return result;
}

uint64_t sub_100D31418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D31480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100D314F4()
{
  result = qword_101A1C8D0;
  if (!qword_101A1C8D0)
  {
    result = swift_getWitnessTable(byte_1014AD8C8, &type metadata for CRLURLItemCommandProvider.ProviderError, v0, v1);
    atomic_store(result, &qword_101A1C8D0);
  }

  return result;
}

void sub_100D31548()
{
  v0 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for CRLCalculateResultAttributionHandler();
  inited = swift_initStaticObject();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_100642244(0, 0, v2, &unk_1014AD978, v6);

  qword_101AD7C38 = inited;
}

uint64_t sub_100D31678(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100D31710, v3, v2);
}

uint64_t sub_100D31710()
{
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 48) = static StocksKitCurrencyCache.shared.getter();
  v3 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh() + async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100D317C8;

  return v3();
}

uint64_t sub_100D317C8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return _swift_task_switch(sub_100D31910, v5, v4);
}

uint64_t sub_100D31910()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100D31978()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100D319DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100D31678(a1);
}

uint64_t sub_100D31A88(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100D31B50()
{
  v1[2] = v0;
  v1[3] = sub_1005B981C(&qword_101A1C980, &qword_1014AD988);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  sub_1005B981C(&unk_101A0A328, &unk_101489F00);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_100D31C68, v3, v2);
}

uint64_t sub_100D31C68()
{
  if (*(v0[2] + 16))
  {

    v1 = *(v0[2] + 16);

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    type metadata accessor for StocksKitCurrencyCache();
    v0[10] = static StocksKitCurrencyCache.shared.getter();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_100D31D90;
    v5 = v0[6];

    return StocksKitCurrencyCache.provider.getter(v5);
  }
}

uint64_t sub_100D31D90()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100D31ED0, v4, v3);
}

uint64_t sub_100D31ED0()
{
  v1 = v0[6];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_10000CAAC(v0[6], &unk_101A0A328, &unk_101489F00);
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.logo.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v10 = (v7 + *(v0[3] + 36));
      v11 = *(sub_1005B981C(&qword_101A10E08, &qword_1014955D0) + 28);
      v12 = enum case for ColorScheme.light(_:);
      v13 = type metadata accessor for ColorScheme();
      (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
      *v10 = swift_getKeyPath();
      *v7 = v6;
      sub_100D32740(v7, v8);
      sub_1005B981C(&qword_101A1C988, &qword_1014AD9C0);
      swift_allocObject();
      ImageRenderer.init(content:)();
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];

      ImageRenderer.scale.setter();
      v15 = ImageRenderer.uiImage.getter();

      sub_10000CAAC(v7, &qword_101A1C980, &qword_1014AD988);
      v16 = *(v9 + 16);
      *(v9 + 16) = v15;
    }
  }

  v17 = *(v0[2] + 16);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100D32148()
{
  v1[2] = v0;
  v1[3] = sub_1005B981C(&qword_101A1C980, &qword_1014AD988);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  sub_1005B981C(&unk_101A0A328, &unk_101489F00);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_100D32260, v3, v2);
}

uint64_t sub_100D32260()
{
  if (*(v0[2] + 24))
  {

    v1 = *(v0[2] + 24);

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    type metadata accessor for StocksKitCurrencyCache();
    v0[10] = static StocksKitCurrencyCache.shared.getter();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_100D32388;
    v5 = v0[6];

    return StocksKitCurrencyCache.provider.getter(v5);
  }
}

uint64_t sub_100D32388()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100D324C8, v4, v3);
}

uint64_t sub_100D324C8()
{
  v1 = v0[6];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_10000CAAC(v0[6], &unk_101A0A328, &unk_101489F00);
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.logo.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v10 = (v7 + *(v0[3] + 36));
      v11 = *(sub_1005B981C(&qword_101A10E08, &qword_1014955D0) + 28);
      v12 = enum case for ColorScheme.dark(_:);
      v13 = type metadata accessor for ColorScheme();
      (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
      *v10 = swift_getKeyPath();
      *v7 = v6;
      sub_100D32740(v7, v8);
      sub_1005B981C(&qword_101A1C988, &qword_1014AD9C0);
      swift_allocObject();
      ImageRenderer.init(content:)();
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];

      ImageRenderer.scale.setter();
      v15 = ImageRenderer.uiImage.getter();

      sub_10000CAAC(v7, &qword_101A1C980, &qword_1014AD988);
      v16 = *(v9 + 24);
      *(v9 + 24) = v15;
    }
  }

  v17 = *(v0[2] + 24);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100D32740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1C980, &qword_1014AD988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100D3290C(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [(objc_class *)isa crl_dispatchData];

  v8 = v4[2];
  v9 = v7;
  v8(v4, 1, v9, 0);

  _Block_release(v4);
}

void sub_100D32A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + OBJC_IVAR____TtC8Freeform20CRLMemoryReadChannel_data);
  v13 = *(a3 + OBJC_IVAR____TtC8Freeform20CRLMemoryReadChannel_data + 8);
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v13);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v14 != 2)
  {
    if (a1 < 0 && a2 > 0)
    {
      v15 = 0;
      goto LABEL_19;
    }

LABEL_15:
    static DispatchData.empty.getter();
    v20 = DispatchData._bridgeToObjectiveC()();
    (*(v9 + 8))(v11, v8);
    (*(a4 + 16))(a4, 1, v20, 0);

    return;
  }

  v17 = *(v12 + 16);
  v16 = *(v12 + 24);
  v18 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (v18)
  {
    __break(1u);
LABEL_8:
    LODWORD(v15) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_30:
      __break(1u);
      return;
    }

    v15 = v15;
  }

LABEL_10:
  if (v15 <= a1 || a2 <= 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v18 = __OFSUB__(v15, a1);
  v21 = v15 - a1;
  if (v18)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v21 >= a2)
  {
    v21 = a2;
  }

  if (__OFADD__(a1, v21))
  {
    goto LABEL_28;
  }

  if (a1 + v21 < a1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = Data.subdata(in:)();
  v24 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v22, v24);
  v28 = [(objc_class *)isa crl_dispatchData];

  (*(a4 + 16))(a4, 1, v28, 0);
  v26 = v28;
}

uint64_t sub_100D32C8C()
{
  v0 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD7C40);
  sub_1005EB3DC(v10, qword_101AD7C40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100D32F88()
{
  v0 = sub_1005B981C(&qword_1019F8B00, "Ι%");
  __chkstk_darwin(v0 - 8);
  v35 = &v24 - v1;
  v2 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v2 - 8);
  v34 = &v24 - v3;
  v31 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v36 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v24 = v8;
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_1005B981C(&qword_101A1CA30, &qword_1014ADCB0);
  v9 = sub_1005B981C(&qword_101A14758, &qword_10149EC98);
  v37 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v27 = v12;
  *(v12 + 16) = xmmword_10146BDE0;
  v28 = *(v9 + 48);
  *(v12 + v11) = 0;
  v13 = v12 + v11;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v4 + 104);
  v30 = v4 + 104;
  v32 = v14;
  v14(v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = *(v38 + 56);
  v38 += 56;
  v25 = v15;
  v16 = v34;
  v15(v34, 1, 1, v8);
  v17 = type metadata accessor for DisplayRepresentation.Image();
  v18 = *(*(v17 - 8) + 56);
  v19 = v35;
  v18(v35, 1, 1, v17);
  v26 = v13;
  v20 = v19;
  DisplayRepresentation.init(title:subtitle:image:)();
  v21 = (v13 + v33);
  v33 = *(v37 + 48);
  *v21 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v36, v29, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25(v16, 1, 1, v24);
  v18(v20, 1, 1, v17);
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = sub_100BD9204(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD7C58 = v22;
  return result;
}

uint64_t sub_100D33524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4E796B63697473;
  }

  else
  {
    v3 = 0x786F6274786574;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x6F4E796B63697473;
  }

  else
  {
    v5 = 0x786F6274786574;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE700000000000000;
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

unint64_t sub_100D335D4()
{
  result = qword_101A1C9C0;
  if (!qword_101A1C9C0)
  {
    result = swift_getWitnessTable(byte_1014AD9F0, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9C0);
  }

  return result;
}

Swift::Int sub_100D33628()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D336B0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100D33724(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D337A8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101876B10, *a1);

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

void sub_100D33808(uint64_t *a1@<X8>)
{
  v2 = 0x786F6274786574;
  if (*v1)
  {
    v2 = 0x6F4E796B63697473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100D33850()
{
  result = qword_101A1C9C8;
  if (!qword_101A1C9C8)
  {
    result = swift_getWitnessTable(aQ_96, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9C8);
  }

  return result;
}

unint64_t sub_100D338A8()
{
  result = qword_101A1C9D0;
  if (!qword_101A1C9D0)
  {
    result = swift_getWitnessTable("ً8", &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9D0);
  }

  return result;
}

unint64_t sub_100D33900()
{
  result = qword_101A1C9D8;
  if (!qword_101A1C9D8)
  {
    result = swift_getWitnessTable(byte_1014ADA58, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9D8);
  }

  return result;
}

unint64_t sub_100D33958()
{
  result = qword_101A1C9E0;
  if (!qword_101A1C9E0)
  {
    result = swift_getWitnessTable("1f8", &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9E0);
  }

  return result;
}

unint64_t sub_100D339AC()
{
  result = qword_101A1C9E8;
  if (!qword_101A1C9E8)
  {
    result = swift_getWitnessTable(byte_1014ADB60, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9E8);
  }

  return result;
}

unint64_t sub_100D33A00()
{
  result = qword_101A1C9F0;
  if (!qword_101A1C9F0)
  {
    result = swift_getWitnessTable(asc_1014ADB88, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9F0);
  }

  return result;
}

unint64_t sub_100D33A58()
{
  result = qword_101A1C9F8;
  if (!qword_101A1C9F8)
  {
    result = swift_getWitnessTable(asc_1014ADBE0, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1C9F8);
  }

  return result;
}

uint64_t sub_100D33AAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2088 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7C40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100D33BA4()
{
  result = qword_101A1CA00;
  if (!qword_101A1CA00)
  {
    result = swift_getWitnessTable(asc_1014ADA90, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1CA00);
  }

  return result;
}

uint64_t sub_100D33BF8(uint64_t a1)
{
  v2 = sub_100D33BA4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100D33C48()
{
  result = qword_101A1CA08;
  if (!qword_101A1CA08)
  {
    result = swift_getWitnessTable(byte_1014ADC20, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1CA08);
  }

  return result;
}

unint64_t sub_100D33CA0()
{
  result = qword_101A1CA10;
  if (!qword_101A1CA10)
  {
    result = swift_getWitnessTable(")b8", &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1CA10);
  }

  return result;
}

unint64_t sub_100D33CF8()
{
  result = qword_101A1CA18;
  if (!qword_101A1CA18)
  {
    result = swift_getWitnessTable(byte_1014ADA18, &type metadata for CRLSupportedTextContainerEntity, v0, v1);
    atomic_store(result, &qword_101A1CA18);
  }

  return result;
}

double sub_100D33D4C()
{
  if (qword_1019F2090 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100D33DA8(uint64_t a1)
{
  v2 = sub_100D33A58();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100D33DF8()
{
  result = qword_101A1CA20;
  if (!qword_101A1CA20)
  {
    v3 = sub_1005C4E5C(&qword_101A1CA28, &qword_1014ADC48);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A1CA20);
  }

  return result;
}

void sub_100D33EA8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = [objc_opt_self() defaultDisabledShadow];
  }

  v9 = a1;
  if (![v8 isEnabled])
  {
    goto LABEL_13;
  }

  v10 = [v8 color];
  sub_100758F90(v10, v43, v45);
  if (v3)
  {
    v11 = v43[0];
    v12 = v43[1];
    v41 = v44;

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v41;
    return;
  }

  v40 = v45[1];
  v42 = v45[0];
  v13 = v46;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      [v8 angle];
      v39 = v24;
      [v8 opacity];
      v35 = v25;
      [v8 offset];
      v37 = v26;
      [v8 radius];
      v33 = v27;
      [v23 curve];
      v4 = v28;
      v54 = v39;
      v55 = v35;
      v56 = v42;
      v57 = v40;
      v58 = v13;
      v59 = v37;
      v60 = v33;
      v61 = v28;
      TSContentLanguage.Models.CurvedShadow.validate()();
      if (!v29)
      {

        *&v20 = v37;
        *&v19 = v39;
        *(&v19 + 1) = v35;
        *(&v20 + 1) = v33;
        v21 = v13 | 0x4000000000000000;
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  [v8 angle];
  v38 = v14;
  [v8 opacity];
  v34 = v15;
  [v8 offset];
  v36 = v16;
  [v8 radius];
  v47 = v38;
  v48 = v34;
  v49 = v42;
  v50 = v40;
  v51 = v13;
  v52 = v36;
  v53 = v17;
  v32 = v17;
  TSContentLanguage.Models.DropShadow.validate()();
  if (!v18)
  {

    *&v20 = v36;
    *&v19 = v38;
    *(&v19 + 1) = v34;
    *(&v20 + 1) = v32;
    v21 = v13 | 0x8000000000000000;
LABEL_17:
    v31 = v40;
    v30 = v42;
    goto LABEL_15;
  }

LABEL_12:

LABEL_14:
  v19 = 0uLL;
  v4 = 0;
  v21 = 0xFFFFFFFF00;
  v20 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
LABEL_15:
  *a3 = v19;
  *(a3 + 16) = v30;
  *(a3 + 32) = v31;
  *(a3 + 48) = v21;
  *(a3 + 56) = v20;
  *(a3 + 72) = v4;
}

const char *sub_100D34228()
{
  if (*v0)
  {
    return "DrawingDataDetectors";
  }

  else
  {
    return "MathPaper";
  }
}

uint64_t sub_100D34400(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v10 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v11 = sub_10067BFD0();
  LOBYTE(v9[0]) = a3;
  v6 = isFeatureEnabled(_:)();
  sub_100005070(v9);
  if (v6)
  {
    v10 = &type metadata for CRLFeatureFlags;
    v11 = sub_100004D60();
    LOBYTE(v9[0]) = a4;
    v7 = isFeatureEnabled(_:)();
    sub_100005070(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100D344D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6[3] = a3;
  v6[4] = a4(a1, a2);
  v4 = isFeatureEnabled(_:)();
  sub_100005070(v6);
  return v4 & 1;
}

uint64_t sub_100D34564(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for CRLFeatureFlags;
  v6[4] = sub_100004D60();
  LOBYTE(v6[0]) = a3;
  v4 = isFeatureEnabled(_:)();
  sub_100005070(v6);
  return v4 & 1;
}

id sub_100D34618(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100D34670()
{
  v0 = type metadata accessor for OSEligibilityAnswer();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for OSEligibilityDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A1CB00, "x8$");
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for OSEligibilityResult();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for OSEligibilityDomain.aiLabeling(_:), v6, v15);
  static OSEligibilityResult.result(for:)();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v17, v12, v13);
  OSEligibilityResult.answer.getter();
  v19 = v23;
  v18 = v24;
  (*(v23 + 104))(v2, enum case for OSEligibilityAnswer.eligible(_:), v24);
  LOBYTE(v6) = static OSEligibilityAnswer.== infix(_:_:)();
  v20 = *(v19 + 8);
  v20(v2, v18);
  v20(v5, v18);
  (*(v14 + 8))(v17, v13);
  return v6 & 1;
}

uint64_t sub_100D349FC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A1CB00, "x8$");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D34A64()
{
  v6 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v7 = sub_10067BFD0();
  LOBYTE(v5[0]) = 0;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = sub_100004D60();
  LOBYTE(v5[0]) = 15;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (qword_1019F2000 != -1)
  {
    swift_once();
  }

  v2 = qword_101A1AB00;
  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v2 + v3);
}

unint64_t sub_100D34B50()
{
  result = qword_101A1CB08;
  if (!qword_101A1CB08)
  {
    result = swift_getWitnessTable(byte_1014ADF98, &type metadata for CRLAppleAccountUIFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100D34D38()
{
  result = qword_101A1CB10;
  if (!qword_101A1CB10)
  {
    result = swift_getWitnessTable("\tX8", &type metadata for CRLFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB10);
  }

  return result;
}

unint64_t sub_100D34D90()
{
  result = qword_101A1CB18;
  if (!qword_101A1CB18)
  {
    result = swift_getWitnessTable(byte_1014ADE38, &type metadata for CRLPencilAndPaperFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB18);
  }

  return result;
}

unint64_t sub_100D34DE8()
{
  result = qword_101A1CB20;
  if (!qword_101A1CB20)
  {
    result = swift_getWitnessTable("9W8", &type metadata for CRLUIKitFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB20);
  }

  return result;
}

unint64_t sub_100D34E40()
{
  result = qword_101A1CB28;
  if (!qword_101A1CB28)
  {
    result = swift_getWitnessTable(byte_1014ADF08, &type metadata for CRLAppleAccountFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB28);
  }

  return result;
}

unint64_t sub_100D34E98()
{
  result = qword_101A1CB30;
  if (!qword_101A1CB30)
  {
    result = swift_getWitnessTable("iV8", &type metadata for CRLAppleAccountUIFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A1CB30);
  }

  return result;
}

uint64_t sub_100D34EEC()
{
  v1[10] = v0;
  sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  v2 = swift_task_alloc();
  v1[11] = v2;
  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v1;
  v3[1] = sub_100D34FC4;

  return sub_100D369FC(v2, 0);
}

uint64_t sub_100D34FC4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100D35698;
  }

  else
  {
    sub_10000CAAC(*(v2 + 88), &qword_1019F8DA8, qword_101471FA8);
    v3 = sub_100D350F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D350F0()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100D35180;

  return sub_100D37028();
}

uint64_t sub_100D35180()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100D352D0, 0, 0);
  }
}

uint64_t sub_100D352D0()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v2[5];
  v4 = v2[6];
  sub_100020E58(v2 + 2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v0[16] = v5;
  if (v1)
  {
LABEL_2:

    v6 = v0[1];

    return v6();
  }

  if (!v5)
  {
    sub_1006B305C();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    goto LABEL_2;
  }

  v8 = v0[10];
  v10 = v8[7];
  v9 = v8[8];
  v11 = v8[9];
  v12 = v8[10];
  v13 = v5;
  type metadata accessor for CRLSerializableObjectReader();
  inited = swift_initStackObject();
  v0[17] = inited;
  inited[7] = _swiftEmptyDictionarySingleton;
  type metadata accessor for CRLReadChannelHelper();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = 0;
  inited[2] = v15;
  inited[3] = v12;
  inited[4] = v10;
  inited[5] = v9;
  inited[6] = v11;
  swift_unknownObjectRetain();
  v16 = v12;
  v17 = v10;
  v18 = v9;
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_100D354A4;

  return sub_10125E6F0();
}

uint64_t sub_100D354A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_100D356FC;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_100D355D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D355D8()
{
  v1 = v0[16];
  v2 = v0[17];
  swift_setDeallocating();

  [v1 close];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v5 = v0[20];
  v4 = v0[21];

  return v3(v4, v5);
}

uint64_t sub_100D35698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D356FC()
{
  v1 = v0[16];
  v2 = v0[17];
  swift_setDeallocating();

  [v1 close];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D357AC()
{
  sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v2 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100D358DC;

  return sub_100D369FC(v1, 1);
}

uint64_t sub_100D358DC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100D35BCC;
  }

  else
  {
    v2 = sub_100D359F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D359F0()
{
  v1 = v0[2];
  if ((*(v0[4] + 48))(v1, 1, v0[3]) == 1)
  {
    sub_10000CAAC(v1, &qword_1019F8DA8, qword_101471FA8);
    sub_1006B305C();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
LABEL_5:

    v8 = v0[1];

    return v8();
  }

  sub_100D3A4C4(v1, v0[5], type metadata accessor for CRLProto_ObjectMetadata);

  v4 = sub_101286364(v3);
  v5 = v0[5];
  if (v6)
  {
    sub_1006B305C();
    swift_allocError();
    *v7 = 11;
    swift_willThrow();
    sub_100D3A450(v5, type metadata accessor for CRLProto_ObjectMetadata);
    goto LABEL_5;
  }

  v10 = v4;
  sub_100D3A450(v0[5], type metadata accessor for CRLProto_ObjectMetadata);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100D35BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D35C3C(uint64_t a1)
{
  v1[2] = a1;
  sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for CRLProto_Data(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  v3 = swift_task_alloc();
  v1[7] = v3;
  v4 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_100D35E04;

  return sub_100D369FC(v3, 1);
}

uint64_t sub_100D35E04()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100D361B8;
  }

  else
  {
    v2 = sub_100D35F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D35F18()
{
  v1 = v0[8];
  v2 = v0[7];
  if ((*(v0[9] + 48))(v2, 1, v1) == 1)
  {
    sub_10000CAAC(v2, &qword_1019F8DA8, qword_101471FA8);
    sub_1006B305C();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
  }

  else
  {
    v4 = v0[10];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];
    sub_100D3A4C4(v2, v4, type metadata accessor for CRLProto_ObjectMetadata);
    sub_10000BE14(v4 + *(v1 + 28), v7, &qword_1019F67C0, &unk_10146F3E0);
    v8 = *(v6 + 48);
    v9 = v8(v7, 1, v5);
    v10 = v0[6];
    if (v9 == 1)
    {
      v11 = v0[3];
      v12 = v0[4];
      *v10 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v8(v11, 1, v12) != 1)
      {
        sub_10000CAAC(v0[3], &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      sub_100D3A4C4(v0[3], v10, type metadata accessor for CRLProto_Data);
    }

    v13 = v0[10];
    v14 = v0[6];
    v15 = *v14;
    v16 = v14[1];
    sub_100024E98(*v14, v16);
    sub_100D3A450(v14, type metadata accessor for CRLProto_Data);
    UUID.init(crl_data:)(v15, v16);
    sub_100D3A450(v13, type metadata accessor for CRLProto_ObjectMetadata);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D361B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100D36244(uint64_t a1, void *a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v36 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v7 = *(v32 - 8);
  v31 = *(v7 + 64);
  __chkstk_darwin(v32);
  v30 = v29 - v8;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v13;
  v33 = v14;
  v16[4] = v15;
  v16[5] = a3;
  v47 = sub_100D3A52C;
  v48 = v16;
  aBlock = _NSConcreteStackBlock;
  v44 = *"";
  v29[1] = &v45;
  v45 = sub_10087279C;
  v46 = &unk_1018A2328;
  v17 = _Block_copy(&aBlock);

  v18 = v15;
  v19 = a3;

  [v34 readWithHandler:v17];
  _Block_release(v17);
  sub_100618868();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v21 = v30;
  v22 = v32;
  (*(v7 + 16))(v30, v35, v32);
  v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v13;
  (*(v7 + 32))(v24 + v23, v21, v22);
  v47 = sub_100874120;
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = *"";
  v45 = sub_100007638;
  v46 = &unk_1018A2378;
  v25 = _Block_copy(&aBlock);

  v26 = v36;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100006688(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10000D494();
  v28 = v37;
  v27 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v25);

  (*(v41 + 8))(v28, v27);
  (*(v39 + 8))(v26, v40);
}

void sub_100D367D8(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      swift_beginAccess();
      *(a5 + 16) = a3;
      swift_errorRetain();
      swift_errorRetain();

      dispatch_group_leave(a6);
    }

    else if (a2)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = a2;
      dispatch_group_enter(a6);
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = a5;
      v16[4] = a6;
      aBlock[4] = sub_100874190;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_10087351C;
      aBlock[3] = &unk_1018A23C8;
      v17 = _Block_copy(aBlock);

      v18 = a6;

      [a7 writeData:v15 handler:v17];
      _Block_release(v17);
    }

    if (a1)
    {
      swift_beginAccess();
      if ((*(a4 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a4 + 16) = 1;
        dispatch_group_leave(a6);
      }
    }
  }
}

uint64_t sub_100D369FC(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100D36AA8, 0, 0);
}

uint64_t sub_100D36AA8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata;
  *(v0 + 128) = OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata;
  swift_beginAccess();
  sub_10000BE14(v2 + v3, v1, &qword_1019F8DA8, qword_101471FA8);
  v4 = type metadata accessor for CRLProto_ObjectMetadata(0);
  *(v0 + 136) = v4;
  v5 = *(v4 - 8);
  *(v0 + 144) = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 120);
  if (v6 != 1)
  {
    v13 = *(v0 + 96);
    sub_100D3A4C4(v7, v13, type metadata accessor for CRLProto_ObjectMetadata);
    (*(v5 + 56))(v13, 0, 1, v4);
LABEL_6:

    v14 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = *(v0 + 184);
  sub_10000CAAC(v7, &qword_1019F8DA8, qword_101471FA8);
  v9 = *(v0 + 104);
  if ((v8 & 1) == 0 && (*(v9 + 72) & 3) == 0)
  {
    (*(v5 + 56))(*(v0 + 96), 1, 1, v4);
    goto LABEL_6;
  }

  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  sub_100020E58((v9 + 16), v10);
  v12 = (*(v11 + 8))(v10, v11);
  *(v0 + 152) = v12;
  if (v12)
  {
    v16 = v12;
    type metadata accessor for CRLReadChannelHelper();
    inited = swift_initStackObject();
    *(v0 + 160) = inited;
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    swift_unknownObjectRetain();
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_100D36D88;
    v19 = *(v0 + 112);

    return sub_100D39704(v19, inited);
  }

  sub_1006B305C();
  swift_allocError();
  *v20 = 3;
  swift_willThrow();

  v14 = *(v0 + 8);
LABEL_7:

  return v14();
}

uint64_t sub_100D36D88()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100D36FA0;
  }

  else
  {
    v2 = sub_100D36E9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D36E9C()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  (*(v0[18] + 56))(v3, 0, 1, v0[17]);
  swift_beginAccess();
  sub_100D3A538(v3, v4 + v2);
  swift_endAccess();
  sub_10000BE14(v4 + v2, v5, &qword_1019F8DA8, qword_101471FA8);
  [v1 close];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100D36FA0()
{
  [*(v0 + 152) close];
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D37028()
{
  v1[17] = v0;
  v1[18] = sub_1005B981C(&qword_101A1B428, &qword_1014AE150);
  v1[19] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v1[26] = swift_task_alloc();
  sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for CRLProto_Data(0);
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  v1[39] = swift_task_alloc();
  v6 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v1[40] = v6;
  v1[41] = *(v6 - 8);
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_100D373A4, 0, 0);
}

uint64_t sub_100D373A4()
{
  if ((*(v0[17] + 72) & 2) != 0)
  {
    v3 = swift_task_alloc();
    v0[43] = v3;
    *v3 = v0;
    v3[1] = sub_100D3758C;
    v4 = v0[39];

    return sub_100D369FC(v4, 0);
  }

  else
  {

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_100D3758C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_100D395BC;
  }

  else
  {
    v2 = sub_100D376CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D376CC()
{
  v1 = *(v0 + 312);
  if ((*(*(v0 + 328) + 48))(v1, 1, *(v0 + 320)) == 1)
  {
    sub_10000CAAC(v1, &qword_1019F8DA8, qword_101471FA8);
LABEL_17:

    v39 = *(v0 + 8);
LABEL_22:

    return v39();
  }

  v2 = *(v0 + 336);
  sub_100D3A4C4(v1, v2, type metadata accessor for CRLProto_ObjectMetadata);
  v3 = *(v2 + 8);
  *(v0 + 360) = v3;
  if (!*(v3 + 16))
  {
    v14 = *(v0 + 336);
LABEL_16:
    sub_100D3A450(v14, type metadata accessor for CRLProto_ObjectMetadata);
    goto LABEL_17;
  }

  v4 = objc_allocWithZone(CRLTemporaryDirectory);
  *(v0 + 128) = 0;
  v5 = [v4 initWithError:v0 + 128];
  *(v0 + 368) = v5;
  v6 = *(v0 + 128);
  if (!v5)
  {
    v15 = *(v0 + 336);
    v16 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_21:
    sub_100D3A450(v15, type metadata accessor for CRLProto_ObjectMetadata);

    v39 = *(v0 + 8);
    goto LABEL_22;
  }

  v7 = *(*(v0 + 136) + 56);
  v8 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v9 = *(v8 + 16);
  v10 = v6;
  os_unfair_lock_lock(v9);
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v12 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v12)
  {
    v13 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v17 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v18 = v7;
    v19 = sub_10001F1A0(v18);

    v20 = *&v7[v11];
    *&v7[v11] = v19;
    v13 = v19;

    v12 = 0;
  }

  *(v0 + 376) = v13;
  v21 = *(v8 + 16);
  v22 = v12;
  os_unfair_lock_unlock(v21);
  v23 = *(v3 + 16);
  *(v0 + 384) = v23;
  if (!v23)
  {
    v37 = *(v0 + 376);
    v38 = *(v0 + 336);

    v14 = v38;
    goto LABEL_16;
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 288);
  v26 = *(v0 + 224);
  v27 = *(v0 + 232);
  v28 = *(*(v0 + 296) + 80);
  *(v0 + 512) = v28;
  *(v0 + 392) = 0;
  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  if (!*(v29 + 16))
  {
    __break(1u);
  }

  v31 = *(v0 + 216);
  sub_100AD55F8(v29 + ((v28 + 32) & ~v28), v24);
  sub_10000BE14(v24 + *(v25 + 28), v31, &qword_1019F67C0, &unk_10146F3E0);
  v32 = *(v27 + 48);
  v33 = v32(v31, 1, v26);
  v34 = *(v0 + 240);
  if (v33 == 1)
  {
    v35 = *(v0 + 216);
    v36 = *(v0 + 224);
    *v34 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v32(v35, 1, v36) != 1)
    {
      sub_10000CAAC(*(v0 + 216), &qword_1019F67C0, &unk_10146F3E0);
    }
  }

  else
  {
    sub_100D3A4C4(*(v0 + 216), v34, type metadata accessor for CRLProto_Data);
  }

  v40 = *(v0 + 240);
  v41 = *v40;
  v42 = v40[1];
  sub_100024E98(*v40, v42);
  sub_100D3A450(v40, type metadata accessor for CRLProto_Data);
  UUID.init(crl_data:)(v41, v42);
  *(v0 + 400) = v30;
  if (v30)
  {
    v43 = *(v0 + 376);
    v15 = *(v0 + 336);
    v44 = *(v0 + 304);

    sub_100D3A450(v44, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    goto LABEL_21;
  }

  v46 = swift_task_alloc();
  *(v0 + 408) = v46;
  *v46 = v0;
  v46[1] = sub_100D37CC0;
  v47 = *(v0 + 280);
  v48 = *(v0 + 208);

  return sub_10108D4EC(v48, v47, 0, 0, 3);
}

uint64_t sub_100D37CC0()
{

  return _swift_task_switch(sub_100D37DE8, 0, 0);
}

uint64_t sub_100D37DE8()
{
  v4 = *(v0 + 208);
  if ((*(*(v0 + 168) + 48))(v4, 1, *(v0 + 160)) != 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
    sub_10000CAAC(v4, &unk_1019F33C0, &unk_101468A60);
    v17 = *(v0 + 400);
    goto LABEL_5;
  }

  v5 = *(v0 + 400);
  v6 = *(v0 + 304);
  v7 = *(v0 + 136);
  sub_10000CAAC(v4, &unk_1019F33C0, &unk_101468A60);
  v1 = UUID.uuidString.getter();
  v9 = v8;
  v10 = v7[5];
  v11 = v7[6];
  sub_100020E58(v7 + 2, v10);
  v3 = *v6;
  *(v0 + 416) = *v6;
  v2 = v6[1];
  *(v0 + 424) = v2;
  v12 = (*(v11 + 24))(v1, v9, v3, v2, v10, v11);
  *(v0 + 432) = v12;
  if (v5)
  {
    v14 = *(v0 + 368);
    v13 = *(v0 + 376);
    v15 = *(v0 + 336);
    v16 = *(v0 + 304);
    (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
  }

  else
  {
    if (v12)
    {
      v34 = *(v0 + 368);
      v35 = *(v0 + 192);
      v61 = *(v0 + 200);
      v62 = v12;
      v36 = *(v0 + 184);
      v64 = *(v0 + 176);
      v37 = *(v0 + 168);
      v60 = *(v0 + 160);
      v38 = String._bridgeToObjectiveC()();
      v39 = [v38 pathExtension];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = [v34 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.appendingPathComponent(_:)();

      v41 = *(v37 + 8);
      *(v0 + 440) = v41;
      *(v0 + 448) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41(v36, v60);
      URL.appendingPathExtension(_:)();

      v41(v35, v60);
      (*(v37 + 16))(v64, v61, v60);
      v42 = objc_allocWithZone(CRLFileIOChannel);
      v43 = sub_100D3A1A4(v64);
      *(v0 + 456) = v43;
      v57 = v43;
      v58 = swift_task_alloc();
      *(v0 + 464) = v58;
      *(v58 + 16) = v62;
      *(v58 + 24) = v57;
      v59 = swift_task_alloc();
      *(v0 + 472) = v59;
      *v59 = v0;
      v59[1] = sub_100D38770;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v59, 0, 0, 0xD000000000000012, 0x800000010156FD00, sub_100D3A4B0, v58, &type metadata for () + 8);
    }

    if (qword_1019F20E8 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v52 = *(v0 + 256);
      v63 = *(v0 + 248);
      v65 = *(v0 + 280);
      v53 = static OS_os_log.crlSerializableObject;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      *(inited + 56) = &type metadata for String;
      v55 = sub_1000053B0();
      *(inited + 32) = v1;
      *(inited + 40) = v9;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v55;
      *(inited + 64) = v55;
      *(inited + 72) = v3;
      *(inited + 80) = v2;

      v56 = static os_log_type_t.default.getter();
      sub_100005404(v53, &_mh_execute_header, v56, "Skipping reading asset without backing read channel. assetID=%@, assetFilename=%@", 81, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      (*(v52 + 8))(v65, v63);
      v17 = 0;
LABEL_5:
      v18 = *(v0 + 384);
      v9 = *(v0 + 392) + 1;
      sub_100D3A450(*(v0 + 304), type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
      if (v9 == v18)
      {
        v19 = *(v0 + 376);
        v20 = *(v0 + 336);

        sub_100D3A450(v20, type metadata accessor for CRLProto_ObjectMetadata);

        v21 = *(v0 + 8);
        goto LABEL_17;
      }

      v22 = *(v0 + 392) + 1;
      *(v0 + 392) = v22;
      v23 = *(v0 + 360);
      if (v22 < *(v23 + 16))
      {
        break;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }

    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    sub_100AD55F8(v23 + ((*(v0 + 512) + 32) & ~*(v0 + 512)) + *(*(v0 + 296) + 72) * v22, v24);
    sub_10000BE14(v24 + *(v25 + 28), v28, &qword_1019F67C0, &unk_10146F3E0);
    v29 = *(v27 + 48);
    v30 = v29(v28, 1, v26);
    v31 = *(v0 + 240);
    if (v30 == 1)
    {
      v32 = *(v0 + 216);
      v33 = *(v0 + 224);
      *v31 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v29(v32, 1, v33) != 1)
      {
        sub_10000CAAC(*(v0 + 216), &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      sub_100D3A4C4(*(v0 + 216), v31, type metadata accessor for CRLProto_Data);
    }

    v44 = *(v0 + 240);
    v45 = *v44;
    v46 = v44[1];
    sub_100024E98(*v44, v46);
    sub_100D3A450(v44, type metadata accessor for CRLProto_Data);
    UUID.init(crl_data:)(v45, v46);
    *(v0 + 400) = v17;
    if (!v17)
    {
      v49 = swift_task_alloc();
      *(v0 + 408) = v49;
      *v49 = v0;
      v49[1] = sub_100D37CC0;
      v50 = *(v0 + 280);
      v51 = *(v0 + 208);

      return sub_10108D4EC(v51, v50, 0, 0, 3);
    }

    v47 = *(v0 + 376);
    v15 = *(v0 + 336);
    v16 = *(v0 + 304);
  }

  sub_100D3A450(v16, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  sub_100D3A450(v15, type metadata accessor for CRLProto_ObjectMetadata);

  v21 = *(v0 + 8);
LABEL_17:

  return v21();
}

uint64_t sub_100D38770()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100D38B44;
  }

  else
  {

    v2 = sub_100D388C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D388C0()
{
  v1 = v0;
  v2 = v0[53];
  v3 = v1[52];
  v4 = v1[47];
  v5 = v1[25];
  v6 = swift_task_alloc();
  v1[61] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v1[62] = v7;
  *v7 = v1;
  v7[1] = sub_100D389F4;
  v9 = v1[18];
  v8 = v1[19];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x800000010159D4C0, sub_100D3A4B8, v6, v9);
}

uint64_t sub_100D389F4()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_100D393B0;
  }

  else
  {

    v2 = sub_100D38D50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D38B44()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[54];
  v4 = v0[46];
  v13 = v0[38];
  v14 = v0[42];
  v12 = v0[35];
  v5 = v0[32];
  v10 = v0[47];
  v11 = v0[31];
  v6 = v0[25];
  v7 = v0[20];

  [v1 close];

  v2(v6, v7);
  [v3 close];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v12, v11);
  sub_100D3A450(v13, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  sub_100D3A450(v14, type metadata accessor for CRLProto_ObjectMetadata);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100D38D50()
{
  v47 = *(v0 + 440);
  v1 = *(v0 + 272);
  v50 = *(v0 + 280);
  v52 = *(v0 + 504);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);

  v8 = *(v7 + 64);
  v9 = *(v3 + 32);
  v9(v2, v6, v4);
  v47(v6 + v8, v5);
  v9(v1, v2, v4);
  sub_100C046E4(v50, v1);
  v10 = *(v0 + 456);
  v11 = *(v0 + 432);
  v12 = *(v0 + 440);
  if (v52)
  {
    v46 = *(v0 + 368);
    v48 = *(v0 + 376);
    v45 = *(v0 + 336);
    v49 = *(v0 + 280);
    v51 = *(v0 + 304);
    v13 = *(v0 + 248);
    v14 = *(v0 + 200);
    v15 = *(v0 + 160);
    v16 = *(*(v0 + 256) + 8);
    v16(*(v0 + 272), v13);
    [v10 close];

    v12(v14, v15);
    [v11 close];

    swift_unknownObjectRelease();
    v16(v49, v13);
    sub_100D3A450(v51, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100D3A450(v45, type metadata accessor for CRLProto_ObjectMetadata);

    v17 = *(v0 + 8);
LABEL_5:

    return v17();
  }

  v53 = *(v0 + 280);
  v18 = *(v0 + 248);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  v21 = *(*(v0 + 256) + 8);
  v21(*(v0 + 272), v18);
  [v10 close];

  v12(v19, v20);
  [v11 close];
  swift_unknownObjectRelease();
  v21(v53, v18);
  v22 = *(v0 + 384);
  v23 = *(v0 + 392) + 1;
  sub_100D3A450(*(v0 + 304), type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  if (v23 == v22)
  {
    v24 = *(v0 + 376);
    v25 = *(v0 + 336);

    sub_100D3A450(v25, type metadata accessor for CRLProto_ObjectMetadata);

    v17 = *(v0 + 8);
    goto LABEL_5;
  }

  v27 = *(v0 + 392) + 1;
  *(v0 + 392) = v27;
  v28 = *(v0 + 360);
  if (v27 >= *(v28 + 16))
  {
    __break(1u);
  }

  v29 = *(v0 + 304);
  v30 = *(v0 + 288);
  v31 = *(v0 + 224);
  v32 = *(v0 + 232);
  v33 = *(v0 + 216);
  sub_100AD55F8(v28 + ((*(v0 + 512) + 32) & ~*(v0 + 512)) + *(*(v0 + 296) + 72) * v27, v29);
  sub_10000BE14(v29 + *(v30 + 28), v33, &qword_1019F67C0, &unk_10146F3E0);
  v34 = *(v32 + 48);
  v35 = v34(v33, 1, v31);
  v36 = *(v0 + 240);
  if (v35 == 1)
  {
    v37 = *(v0 + 216);
    v38 = *(v0 + 224);
    *v36 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v34(v37, 1, v38) != 1)
    {
      sub_10000CAAC(*(v0 + 216), &qword_1019F67C0, &unk_10146F3E0);
    }
  }

  else
  {
    sub_100D3A4C4(*(v0 + 216), v36, type metadata accessor for CRLProto_Data);
  }

  v39 = *(v0 + 240);
  v40 = *v39;
  v41 = v39[1];
  sub_100024E98(*v39, v41);
  sub_100D3A450(v39, type metadata accessor for CRLProto_Data);
  UUID.init(crl_data:)(v40, v41);
  *(v0 + 400) = 0;
  v42 = swift_task_alloc();
  *(v0 + 408) = v42;
  *v42 = v0;
  v42[1] = sub_100D37CC0;
  v43 = *(v0 + 280);
  v44 = *(v0 + 208);

  return sub_10108D4EC(v44, v43, 0, 0, 3);
}

uint64_t sub_100D393B0()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[46];
  v13 = v0[38];
  v14 = v0[42];
  v12 = v0[35];
  v5 = v0[32];
  v10 = v0[47];
  v11 = v0[31];
  v6 = v0[25];
  v7 = v0[20];

  [v1 close];

  v2(v6, v7);
  [v3 close];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v12, v11);
  sub_100D3A450(v13, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  sub_100D3A450(v14, type metadata accessor for CRLProto_ObjectMetadata);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100D395BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D39704(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for BinaryDecodingOptions();
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for CRLProto_ObjectMetadata(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100D397C4, 0, 0);
}

uint64_t sub_100D397C4(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *v4 = _swiftEmptyArrayStorage;
  *(v4 + 1) = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v5 = *(v2 + 28);
  v6 = type metadata accessor for CRLProto_Data(0);
  result = (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  v8 = *(v3 + 24);
  if (__OFADD__(v8, 8))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = v8 + 8;
    ObjectType = swift_getObjectType();
    v10 = swift_task_alloc();
    v1[7] = v10;
    *v10 = v1;
    v10[1] = sub_100D398F8;

    return sub_100872830(v8, 8, 1, ObjectType);
  }

  return result;
}

uint64_t sub_100D398F8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_100D39CE4;
  }

  else
  {
    v5 = sub_100D39A10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D39A10(uint64_t a1)
{
  v2 = v1 + 8;
  v3 = v1[9] >> 62;
  if (v3 <= 1)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = *v2;
    if (v4 > *v2 >> 32)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = __DataStorage._bytes.getter();
    if (!v5)
    {
LABEL_25:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v6 = v5;
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(v4, v7))
    {
      goto LABEL_22;
    }

    v2 = (v4 - v7 + v6);
    __DataStorage._length.getter();
    if (v2)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v8 = *(*v2 + 16);
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_23:
    __DataStorage._length.getter();
    goto LABEL_24;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  if (__OFSUB__(v8, v11))
  {
    goto LABEL_21;
  }

  v2 = (v8 - v11 + v10);
  __DataStorage._length.getter();
  if (!v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_12:
  v12 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v12 = 0;
LABEL_15:
  v13 = v1[3];
  v14 = *(v13 + 24);
  if (__OFADD__(v14, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v13 + 24) = v14 + v12;
  ObjectType = swift_getObjectType();
  v16 = swift_task_alloc();
  v1[11] = v16;
  *v16 = v1;
  v16[1] = sub_100D39BB0;

  return sub_100872830(v14, v12, 1, ObjectType);
}

uint64_t sub_100D39BB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_100D39F08;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_100D39D78;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D39CE4()
{

  sub_100D3A450(*(v0 + 16), type metadata accessor for CRLProto_ObjectMetadata);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D39D78(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[8];
  v7 = v1[9];
  v4 = v1[2];
  BinaryDecodingOptions.init()();
  sub_100006688(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata, byte_1014B3BE0);
  Message.init(serializedData:extensions:partial:options:)();
  sub_100D3A450(v4, type metadata accessor for CRLProto_ObjectMetadata);
  sub_10002640C(v3, v7);

  if (!v2)
  {
    sub_100D3A4C4(v1[6], v1[2], type metadata accessor for CRLProto_ObjectMetadata);
  }

  v5 = v1[1];

  return v5();
}

uint64_t sub_100D39F08()
{
  sub_10002640C(v0[8], v0[9]);

  sub_100D3A450(v0[2], type metadata accessor for CRLProto_ObjectMetadata);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100D39FA8()
{
  sub_100005070((v0 + 16));

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata, &qword_1019F8DA8, qword_101471FA8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLSerializableObjectReadCoordinator(uint64_t a1)
{
  result = qword_101A1CB68;
  if (!qword_101A1CB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D3A090(uint64_t a1)
{
  sub_100D3A14C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D3A14C(uint64_t a1)
{
  if (!qword_101A1CB78)
  {
    type metadata accessor for CRLProto_ObjectMetadata(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A1CB78);
    }
  }
}

id sub_100D3A1A4(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForStreamWritingURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

char *sub_100D3A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[3] = a6;
  v21[4] = a7;
  v12 = sub_10002C58C(v21);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata;
  v15 = type metadata accessor for CRLProto_ObjectMetadata(0);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  sub_10000630C(v21, (v13 + 16));
  *(v13 + 7) = a2;
  *(v13 + 8) = a3;
  *(v13 + 9) = a4;
  v16 = type metadata accessor for CRLUUIDRemapHelper();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v17[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v17[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = (a4 & 4) != 0;
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = objc_msgSendSuper2(&v20, "init");
  sub_100005070(v21);
  *(v13 + 10) = v18;
  return v13;
}

uint64_t sub_100D3A450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D3A4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D3A538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F8DA8, qword_101471FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D3A64C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v2[33] = swift_getObjectType();
  v3 = type metadata accessor for DispatchData();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_100D3A718, 0, 0);
}

uint64_t sub_100D3A718()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *&v2[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_store];
  *(v0 + 296) = v4;
  v5 = *&v2[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_context];
  *(v0 + 304) = v5;
  *(v0 + 144) = v1;
  *(v0 + 152) = &off_1018A23F0;
  *(v0 + 120) = v2;
  type metadata accessor for CRLSerializableObjectWriteCoordinator();
  inited = swift_initStackObject();
  *(v0 + 312) = inited;
  inited[12] = 0;
  inited[2] = v3;
  inited[3] = &off_10188A428;
  sub_100050F74((v0 + 120), (inited + 4));
  inited[9] = v4;
  inited[10] = v5;
  inited[11] = 5;
  v7 = v4;
  v8 = v5;
  v9 = v3;
  v10 = v2;
  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_100D3A844;

  return sub_100AD1538();
}

uint64_t sub_100D3A844()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100D3ABFC;
  }

  else
  {
    v2 = sub_100D3A958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D3A958()
{
  v1 = v0[36];
  v31 = v0[37];
  v32 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[32];
  v29 = v0[39];
  v30 = v0[31];
  sub_10000630C(v4 + OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_pasteboardDataManaging, (v0 + 20));
  v28 = *(v4 + OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_itemMaxSize);
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_metadataWriteChannel);
  v25 = objc_opt_self();
  v6 = OBJC_IVAR____TtC8Freeform21CRLMemoryWriteChannel_dispatchData;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v1, v5 + v6, v2);
  v8 = DispatchData._bridgeToObjectiveC()();
  v9 = *(v3 + 8);
  v9(v1, v2);
  v10 = [v25 crl_dataFromDispatchData:v8];

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v12;
  v27 = v11;

  v13 = *(v4 + OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_objectsWriteChannel);
  v14 = OBJC_IVAR____TtC8Freeform21CRLMemoryWriteChannel_dispatchData;
  swift_beginAccess();
  v7(v1, v13 + v14, v2);
  v15 = DispatchData._bridgeToObjectiveC()();
  v9(v1, v2);
  v16 = [v25 crl_dataFromDispatchData:v15];

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_100AD48B8();
  v21 = objc_allocWithZone(type metadata accessor for CRLPasteboardNativeDataProvider());
  v22 = sub_100D3D264(v0 + 20, v28, v27, v26, v17, v19, v20);
  sub_10002640C(v17, v19);
  sub_10002640C(v27, v26);

  swift_setDeallocating();
  sub_100005070((v29 + 32));

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_100D3ABFC()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);

  swift_setDeallocating();
  sub_100005070((v1 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100D3AE20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100D3AEE4;

  return sub_100D3A64C(v6);
}

uint64_t sub_100D3AEE4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100D3B238()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D3D4;

  return sub_100D3AE20(v2, v3, v4);
}

id sub_100D3B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = sub_1008DE424();
  v16[4] = &off_1018AC3D0;
  v16[0] = a1;
  v8 = type metadata accessor for CRLPasteboardObjectWriteAssistant();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_metadataWriteChannel;
  v11 = type metadata accessor for CRLMemoryWriteChannel(0);
  *&v9[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_objectsWriteChannel;
  *&v9[v12] = [objc_allocWithZone(v11) init];
  sub_10000630C(v16, &v9[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_pasteboardDataManaging]);
  *&v9[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_itemMaxSize] = a2;
  *&v9[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_store] = a3;
  *&v9[OBJC_IVAR____TtC8Freeform33CRLPasteboardObjectWriteAssistant_context] = a4;
  v15.receiver = v9;
  v15.super_class = v8;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_100005070(v16);
  return v13;
}

void sub_100D3B45C()
{
  v87 = type metadata accessor for URL();
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_101A1CCE0, &qword_1014AE208);
  __chkstk_darwin(v2 - 8);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  if (*(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize) < 1)
  {
    return;
  }

  v84 = (&v75 - v6);
  v7 = OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider__promisedDataTypes;
  if (*(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider__promisedDataTypes))
  {

    return;
  }

  v88 = _swiftEmptyArrayStorage;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_metadataData);
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_metadataData + 8);
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(v11);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v15 = v10 + 16;
  v10 = *(v10 + 16);
  v14 = *(v15 + 8);
  v13 = v14 - v10;
  if (__OFSUB__(v14, v10))
  {
    __break(1u);
LABEL_11:
    v16 = __OFSUB__(HIDWORD(v10), v10);
    v17 = HIDWORD(v10) - v10;
    if (v16)
    {
      goto LABEL_64;
    }

    v13 = v17;
  }

LABEL_14:
  v18 = sub_100D3BB08(v8, v9, v13);

  sub_100798D48(v18);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_objectsData);
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_objectsData + 8);
  v23 = v22 >> 62;
  v76 = v7;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_24;
    }

    v26 = v21 + 16;
    v21 = *(v21 + 16);
    v25 = *(v26 + 8);
    v24 = v25 - v21;
    if (!__OFSUB__(v25, v21))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_21:
    v16 = __OFSUB__(HIDWORD(v21), v21);
    v27 = HIDWORD(v21) - v21;
    if (v16)
    {
      goto LABEL_65;
    }

    v24 = v27;
    goto LABEL_24;
  }

  if (v23)
  {
    goto LABEL_21;
  }

  v24 = BYTE6(v22);
LABEL_24:
  v28 = sub_100D3BB08(v19, v20, v24);

  sub_100798D48(v28);
  v29 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_assetPasteboardTypeToURLMap);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v77 = v80 + 16;
  v85 = (v80 + 32);
  v82 = (v80 + 8);
  v83 = v0;
  v79 = v29;

  v35 = v30;
  v36 = 0;
  v78 = v4;
  v81 = v30;
  while (v33)
  {
    v37 = v36;
LABEL_39:
    v40 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v41 = v40 | (v37 << 6);
    v42 = v80;
    v43 = (*(v79 + 48) + 16 * v41);
    v45 = *v43;
    v44 = v43[1];
    v46 = v86;
    v47 = v87;
    (*(v80 + 16))(v86, *(v79 + 56) + *(v80 + 72) * v41, v87);
    v48 = sub_1005B981C(&qword_101A1CCE8, &unk_1014AE210);
    v49 = *(v48 + 48);
    v50 = v78;
    *v78 = v45;
    *(v50 + 1) = v44;
    v51 = v46;
    v4 = v50;
    (*(v42 + 32))(&v50[v49], v51, v47);
    (*(*(v48 - 8) + 56))(v4, 0, 1, v48);

LABEL_40:
    v52 = v84;
    sub_10003DFF8(v4, v84, &qword_101A1CCE0, &qword_1014AE208);
    v53 = sub_1005B981C(&qword_101A1CCE8, &unk_1014AE210);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {

      *(v83 + v76) = v88;

      return;
    }

    v54 = v52;
    v56 = *v52;
    v55 = v52[1];
    v57 = *(v53 + 48);
    v58 = v86;
    v59 = v87;
    (*v85)(v86, v54 + v57, v87);
    URL._bridgeToObjectiveC()(v60);
    v62 = v61;
    (*v82)(v58, v59);
    v63 = [v62 crl_fileSize];

    if (v63 < 0)
    {
      goto LABEL_59;
    }

    v64 = sub_100D3BB08(v56, v55, v63);

    v65 = *(v64 + 2);
    v66 = v88;
    v67 = *(v88 + 2);
    v68 = v67 + v65;
    if (__OFADD__(v67, v65))
    {
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v70 = *(v66 + 3) >> 1, v70 >= v68))
    {
      if (*(v64 + 2))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v67 <= v68)
      {
        v71 = v67 + v65;
      }

      else
      {
        v71 = v67;
      }

      v66 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v71, 1, v66);
      v70 = *(v66 + 3) >> 1;
      if (*(v64 + 2))
      {
LABEL_51:
        if (v70 - *(v66 + 2) < v65)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();

        v35 = v81;
        if (v65)
        {
          v72 = *(v66 + 2);
          v16 = __OFADD__(v72, v65);
          v73 = v72 + v65;
          if (v16)
          {
            goto LABEL_63;
          }

          *(v66 + 2) = v73;
        }

        goto LABEL_28;
      }
    }

    v35 = v81;
    if (v65)
    {
      goto LABEL_61;
    }

LABEL_28:
    v88 = v66;
  }

  if (v34 <= v36 + 1)
  {
    v38 = v36 + 1;
  }

  else
  {
    v38 = v34;
  }

  v39 = v38 - 1;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v74 = sub_1005B981C(&qword_101A1CCE8, &unk_1014AE210);
      (*(*(v74 - 8) + 56))(v4, 1, 1, v74);
      v33 = 0;
      v36 = v39;
      goto LABEL_40;
    }

    v33 = *(v35 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_59:
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
}

char *sub_100D3BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize);
  if (v4 < 1 || a3 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = a3;
  sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
  v10 = swift_allocObject();
  v6 = v10;
  *(v10 + 16) = xmmword_10146C6B0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (v4 >= v7)
  {
  }

  else
  {

    do
    {

      v11._countAndFlagsBits = 46;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100024CBC((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = a1;
      *(v15 + 5) = a2;
      v7 -= v4;
    }

    while (v4 < v7);
  }

  return v6;
}

char *sub_100D3BC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v68 - v11;
  v13 = OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_fulfilledPromises;
  swift_beginAccess();
  v75 = v13;
  v14 = *(v3 + v13);

  v15 = sub_10079E9A8(a1, a2, v14);

  if (v15)
  {
    return 0;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v17 == a2)
  {

    goto LABEL_18;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_18:
    v29 = OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_metadataData;
LABEL_19:
    v28 = sub_100D3C4D8(*(v3 + v29), *(v3 + v29 + 8), a1, a2);
LABEL_20:
    swift_beginAccess();

    sub_100E6DE34(v77, a1, a2);
    swift_endAccess();

    return v28;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v20 == a2)
  {

    goto LABEL_22;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_22:
    v29 = OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_objectsData;
    goto LABEL_19;
  }

  v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String.hasPrefix(_:)(v23);

  if (v24)
  {
    v25 = *(v3 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_assetPasteboardTypeToURLMap);
    if (*(v25 + 16) && (v26 = sub_10000BE7C(a1, a2), (v27 & 1) != 0))
    {
      (*(v7 + 16))(v9, *(v25 + 56) + *(v7 + 72) * v26, v6);
      (*(v7 + 32))(v12, v9, v6);
      v28 = sub_100D3C738(v12, a1, a2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_20;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  v31 = sub_1000053B0();
  v70 = a1;
  *(inited + 32) = a1;
  v73 = inited + 32;
  v74 = v31;
  *(inited + 64) = v31;
  *(inited + 40) = a2;
  v32 = objc_opt_self();

  v69 = v32;
  LODWORD(v72) = [v32 _atomicIncrementAssertCount];
  v76 = [objc_allocWithZone(NSString) init];
  v71 = inited;
  sub_100604538(inited, &v76, "Unexpected pasteboard type: %{public}@", 38, 2u);
  StaticString.description.getter("fulfillPromises(forPasteboardType:)", 35, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardNativeDataProvider.swift", 98, 2);
  v34 = String._bridgeToObjectiveC()();

  v35 = [v34 lastPathComponent];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (qword_1019F20A0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v39 = static OS_os_log.crlAssert;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146CA70;
  *(v40 + 56) = &type metadata for Int32;
  *(v40 + 64) = &protocol witness table for Int32;
  *(v40 + 32) = v72;
  v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v40 + 96) = v41;
  v42 = sub_1005CF04C();
  *(v40 + 72) = v33;
  v43 = v74;
  *(v40 + 136) = &type metadata for String;
  *(v40 + 144) = v43;
  *(v40 + 104) = v42;
  *(v40 + 112) = v36;
  *(v40 + 120) = v38;
  *(v40 + 176) = &type metadata for UInt;
  *(v40 + 184) = &protocol witness table for UInt;
  *(v40 + 152) = 123;
  v44 = v76;
  *(v40 + 216) = v41;
  *(v40 + 224) = v42;
  *(v40 + 192) = v44;
  v33 = v33;
  v45 = v44;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
  swift_setDeallocating();
  v68[1] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v47 = static os_log_type_t.error.getter();
  v48 = v71;
  sub_100005404(v39, &_mh_execute_header, v47, "Unexpected pasteboard type: %{public}@", 38, 2, v71);

  type metadata accessor for __VaListBuilder();
  v49 = swift_allocObject();
  v49[2] = 8;
  v49[3] = 0;
  v36 = v49 + 3;
  v49[4] = 0;
  v49[5] = 0;
  v74 = v49;
  v72 = *(v48 + 16);
  if (!v72)
  {
LABEL_48:
    v64 = __VaListBuilder.va_list()();
    StaticString.description.getter("fulfillPromises(forPasteboardType:)", 35, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardNativeDataProvider.swift", 98, 2);
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected pasteboard type: %{public}@", 38, 2);
    v67 = String._bridgeToObjectiveC()();

    [v69 handleFailureInFunction:v65 file:v66 lineNumber:123 isFatal:0 format:v67 args:v64];

    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = 0;
    a1 = v70;
    goto LABEL_20;
  }

  v38 = 0;
  while (1)
  {
    sub_100020E58((v73 + 40 * v38), *(v73 + 40 * v38 + 24));
    v50 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v51 = *v36;
    v52 = *(v50 + 16);
    v53 = __OFADD__(*v36, v52);
    v54 = *v36 + v52;
    if (v53)
    {
      goto LABEL_51;
    }

    v55 = v50;
    v56 = v74;
    v33 = v74[4];
    if (v33 >= v54)
    {
      goto LABEL_41;
    }

    if (v33 + 0x4000000000000000 < 0)
    {
      goto LABEL_52;
    }

    v57 = v74[5];
    if (2 * v33 > v54)
    {
      v54 = 2 * v33;
    }

    v74[4] = v54;
    if ((v54 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_53;
    }

    v58 = v56;
    result = swift_slowAlloc();
    v58[5] = result;
    if (v57)
    {
      if (result != v57 || result >= &v57[8 * v51])
      {
        memmove(result, v57, 8 * v51);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v56 = v74;
LABEL_41:
      result = v56[5];
    }

    if (!result)
    {
      break;
    }

    v60 = *(v55 + 16);
    if (v60)
    {
      v61 = (v55 + 32);
      v62 = *v36;
      while (1)
      {
        v63 = *v61++;
        *&result[8 * v62] = v63;
        v62 = *v36 + 1;
        if (__OFADD__(*v36, 1))
        {
          break;
        }

        *v36 = v62;
        if (!--v60)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_26:

    if (++v38 == v72)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D3C4D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
      v6 = v7 - v8;
      if (__OFSUB__(v7, v8))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v6 < 1)
      {
        return 0;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (!v5)
  {
    v6 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return 0;
    }

    goto LABEL_11;
  }

  v9 = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v6 = v9;
  if (v9 < 1)
  {
    return 0;
  }

LABEL_11:
  v30 = *(v4 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize);
  if (v30 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_pasteboardDataManaging;
  if (v30 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize);
  }

  v27 = Data.subdata(in:)();
  v13 = v6 - v11;
  if (v6 - v11 >= 1)
  {
    result = v11;
    v26 = (v4 + v10);
    v14 = 1;
    v15 = v12;
    while (1)
    {
      v16 = v30 >= v13 ? v13 : v30;
      v17 = result + v16;
      if (__OFADD__(result, v16))
      {
        goto LABEL_34;
      }

      if (v17 < result)
      {
        goto LABEL_33;
      }

      result = Data.subdata(in:)();
      v19 = result;
      v20 = v18;
      if (v15 >> 60 == 15)
      {
        v27 = result;
        v15 = v18;
      }

      else
      {

        v21._countAndFlagsBits = 46;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23 = v26[3];
        v24 = v26[4];
        sub_100020E58(v26, v23);
        (*(v24 + 16))(v19, v20, a3, a4, v23, v24);
        sub_10002640C(v19, v20);
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_35;
      }

      ++v14;
      result = v17;
      v25 = v13 <= v16;
      v13 -= v16;
      if (v25)
      {
        goto LABEL_30;
      }
    }
  }

  v15 = v12;
LABEL_30:
  result = v27;
  if (v15 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100D3C738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_101A1CCD8, NSFileHandle_ptr);
  (*(v9 + 16))(v11, a1, v8);
  v12 = sub_1010895F4(v11);
  v13 = *(v4 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize);
  result = NSFileHandle.read(upToCount:)();
  if (v15 >> 60 == 15)
  {
    v16 = result;
    [v12 closeFile];

    return v16;
  }

  v17 = v15 >> 62;
  v35 = v15;
  v34 = result;
  if ((v15 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v15);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v17 != 2)
  {
LABEL_28:
    if (v13 <= 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    [v12 closeFile];

    return v34;
  }

  v20 = *(result + 16);
  v19 = *(result + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_10:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_34;
    }

    v18 = v18;
  }

LABEL_12:
  if (v18 < v13)
  {
    goto LABEL_29;
  }

LABEL_13:
  v38 = a3;
  v39 = v12;
  v37 = a2;
  v33 = a1;
  v36 = (v4 + OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_pasteboardDataManaging);
  v22 = 1;
  while (1)
  {
    v12 = v13;
    result = NSFileHandle.read(upToCount:)();
    v24 = v23;
    if (v23 >> 60 == 15)
    {
      goto LABEL_31;
    }

    a1 = result;
    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      break;
    }

    if (v25)
    {
      LODWORD(v26) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_33;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v23);
    }

LABEL_24:
    if (v26 < 1)
    {
LABEL_30:
      sub_100025870(result, v23);
LABEL_31:
      v32 = v39;
      [v39 closeFile];

      return v34;
    }

    v41 = v37;
    v42 = v38;

    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v40 = v22;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31 = v41;
    a2 = v42;
    a3 = v36[3];
    v4 = v36[4];
    sub_100020E58(v36, a3);
    (*(v4 + 16))(a1, v24, v31, a2, a3, v4);
    sub_100025870(a1, v24);

    v21 = __OFADD__(v22++, 1);
    v13 = v12;
    if (v21)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v25 != 2)
  {
    goto LABEL_30;
  }

  v28 = *(result + 16);
  v27 = *(result + 24);
  v21 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (!v21)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_100D3CE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  Channel = type metadata accessor for CRLMemoryReadChannel();
  v8 = objc_allocWithZone(Channel);
  v9 = &v8[OBJC_IVAR____TtC8Freeform20CRLMemoryReadChannel_data];
  *v9 = v5;
  v9[1] = v6;
  sub_100024E98(v5, v6);
  v11.receiver = v8;
  v11.super_class = Channel;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100D3CEC4()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24, "Should not attempt to read assets to pasteboard.", 48, 2u);
  StaticString.description.getter("readChannelForAsset(_:filename:)", 32, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardNativeDataProvider.swift", 98, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 207;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Should not attempt to read assets to pasteboard.", 48, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("readChannelForAsset(_:filename:)", 32, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardNativeDataProvider.swift", 98, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Should not attempt to read assets to pasteboard.", 48, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:207 isFatal:0 format:v22 args:v19];

  return 0;
}

void *sub_100D3D264(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (**a6)(char *, uint64_t, uint64_t), uint64_t a7)
{
  v8 = v7;
  v122 = a5;
  v123 = a6;
  v119 = a2;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v121 = &ObjectType - v18;
  __chkstk_darwin(v19);
  v105 = &ObjectType - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v120 = &ObjectType - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &ObjectType - v25;
  v26 = sub_1005B981C(&qword_101A1CCF0, &qword_1014AE220);
  __chkstk_darwin(v26 - 8);
  v114 = &ObjectType - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v113 = &ObjectType - v29;
  *&v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider__promisedDataTypes] = 0;
  *&v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_fulfilledPromises] = _swiftEmptySetSingleton;
  v99 = a1;
  sub_10000630C(a1, &v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_pasteboardDataManaging]);
  *&v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_itemMaxSize] = v119;
  v30 = &v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_metadataData];
  *v30 = a3;
  *(v30 + 1) = a4;
  v31 = a4;
  v98 = v8;
  v32 = &v8[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_objectsData];
  v33 = v122;
  v34 = v123;
  *v32 = v122;
  *(v32 + 1) = v34;
  v106 = a7;
  v35 = *(a7 + 64);
  v100 = a7 + 64;
  v36 = *(a7 + 32);
  v37 = v21;
  v38 = 1 << v36;
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  sub_100024E98(a3, v31);
  sub_100024E98(v33, v34);
  v41 = 0;
  v42 = (v38 + 63) >> 6;
  v102 = v22 + 16;
  v117 = (v22 + 32);
  v118 = (v14 + 16);
  v123 = (v14 + 32);
  v111 = @"com.apple.freeform.CRLAsset.";
  v109 = v14 + 8;
  v104 = v22;
  v108 = (v22 + 8);
  v116 = v14;
  v101 = v14 + 40;
  v43 = _swiftEmptyDictionarySingleton;
  v107 = v42;
  v110 = v37;
  v112 = v16;
  while (1)
  {
    v122 = v43;
    if (!v40)
    {
      break;
    }

    v45 = v13;
    v46 = v41;
LABEL_16:
    v50 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v51 = v50 | (v46 << 6);
    v52 = v106;
    v53 = v104;
    v54 = v103;
    (*(v104 + 16))(v103, *(v106 + 48) + *(v104 + 72) * v51, v37);
    v55 = v37;
    v56 = v116;
    v57 = v105;
    (*(v116 + 16))(v105, *(v52 + 56) + *(v116 + 72) * v51, v45);
    v58 = sub_1005B981C(&qword_101A1CCF8, &unk_1014B1C70);
    v59 = *(v58 + 48);
    v60 = *(v53 + 32);
    v49 = v114;
    v61 = v54;
    v62 = v55;
    v60(v114, v61, v55);
    v63 = v57;
    v64 = v45;
    (*(v56 + 32))(v49 + v59, v63, v45);
    (*(*(v58 - 8) + 56))(v49, 0, 1, v58);
    v48 = v46;
LABEL_17:
    v65 = v113;
    sub_10003DFF8(v49, v113, &qword_101A1CCF0, &qword_1014AE220);
    v66 = sub_1005B981C(&qword_101A1CCF8, &unk_1014B1C70);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {

      v94 = v98;
      *&v98[OBJC_IVAR____TtC8Freeform31CRLPasteboardNativeDataProvider_assetPasteboardTypeToURLMap] = v122;
      v126.receiver = v94;
      v126.super_class = ObjectType;
      v95 = objc_msgSendSuper2(&v126, "init");
      sub_100005070(v99);
      return v95;
    }

    v119 = v48;
    v67 = *(v66 + 48);
    (*v117)(v120, v65, v62);
    v115 = *v123;
    v115(v121, v65 + v67, v64);
    v68 = UUID.uuidString.getter();
    v70 = v69;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v71;

    v72._countAndFlagsBits = v68;
    v72._object = v70;
    String.append(_:)(v72);

    v74 = v124;
    v73 = v125;
    v75 = v112;
    v13 = v64;
    (*v118)();
    v76 = v122;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = v76;
    v79 = sub_10000BE7C(v74, v73);
    v80 = v76[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_30;
    }

    v83 = v78;
    if (v76[3] >= v82)
    {
      v86 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100AABB7C();
      }
    }

    else
    {
      sub_100A960A8(v82, isUniquelyReferenced_nonNull_native);
      v84 = sub_10000BE7C(v74, v73);
      v86 = v119;
      if ((v83 & 1) != (v85 & 1))
      {
        goto LABEL_32;
      }

      v79 = v84;
    }

    v87 = v75;
    v37 = v110;
    if (v83)
    {

      v43 = v124;
      v44 = v116;
      (*(v116 + 40))(*(v124 + 56) + *(v116 + 72) * v79, v87, v13);
      (*(v44 + 8))(v121, v13);
      (*v108)(v120, v37);
    }

    else
    {
      v43 = v124;
      *(v124 + 8 * (v79 >> 6) + 64) |= 1 << v79;
      v88 = (v43[6] + 16 * v79);
      *v88 = v74;
      v88[1] = v73;
      v89 = v116;
      v115((v43[7] + *(v116 + 72) * v79), v87, v13);
      (*(v89 + 8))(v121, v13);
      (*v108)(v120, v37);
      v90 = v43[2];
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (v91)
      {
        goto LABEL_31;
      }

      v43[2] = v92;
    }

    v41 = v86;
    v42 = v107;
  }

  if (v42 <= v41 + 1)
  {
    v47 = v41 + 1;
  }

  else
  {
    v47 = v42;
  }

  v48 = v47 - 1;
  v49 = v114;
  while (1)
  {
    v46 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v46 >= v42)
    {
      v64 = v13;
      v62 = v37;
      v93 = sub_1005B981C(&qword_101A1CCF8, &unk_1014B1C70);
      (*(*(v93 - 8) + 56))(v49, 1, 1, v93);
      v40 = 0;
      goto LABEL_17;
    }

    v40 = *(v100 + 8 * v46);
    ++v41;
    if (v40)
    {
      v45 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100D3DB54(void *a1, unint64_t a2, uint64_t a3)
{
  v30 = a3;
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v24 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = v3 & 0xC000000000000001;
    v23 = v3;
    do
    {
      v7 = a1;
      if (v25)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v24 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      sub_10000630C(v30, v26);
      a1 = v9;
      sub_100D3DDD4(v26, v27);
      sub_100005070(v26);
      v11 = v28;
      if (v28)
      {
        v12 = v29;
        a1 = sub_100020E58(v27, v28);
        v13 = (*(v12 + 32))(v11, v12);
        sub_100005070(v27);
      }

      else
      {
        sub_10000CAAC(v27, &unk_101A09F70, &qword_101482EA0);
        v13 = _swiftEmptyArrayStorage;
      }

      v3 = v13[2];
      v14 = v7[2];
      v15 = v14 + v3;
      if (__OFADD__(v14, v3))
      {
        goto LABEL_31;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v17 = v7[3] >> 1, a1 = v7, v17 >= v15))
      {
        if (v13[2])
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v18 = v14 + v3;
        }

        else
        {
          v18 = v14;
        }

        a1 = sub_100B36A2C(isUniquelyReferenced_nonNull_native, v18, 1, v7);
        v17 = a1[3] >> 1;
        if (v13[2])
        {
LABEL_23:
          if (v17 - a1[2] < v3)
          {
            goto LABEL_33;
          }

          sub_1005B981C(&qword_1019F5870, &qword_101470360);
          swift_arrayInitWithCopy();

          if (v3)
          {
            v19 = a1[2];
            v20 = __OFADD__(v19, v3);
            v21 = v19 + v3;
            if (v20)
            {
              goto LABEL_34;
            }

            a1[2] = v21;
          }

          goto LABEL_6;
        }
      }

      if (v3)
      {
        goto LABEL_32;
      }

LABEL_6:

      ++v6;
      v3 = v23;
    }

    while (v10 != v5);
  }

  return a1;
}

double sub_100D3DDD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000630C(a1, v58);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x12CuLL);
    v4 = type metadata accessor for CRLBasicLayerAnimation(0);
    *(a2 + 24) = v4;
    *(a2 + 32) = &off_1018816E0;
    v5 = sub_10002C58C(a2);
    sub_1005F8AB8(__dst, v5);
    UUID.init()();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + 28);
    v7 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
    v8 = *(*(v7 - 8) + 56);
    v8(v5 + v6, 1, 1, v7);
    v8(v5 + *(v4 + 32), 1, 1, v7);
    swift_unknownObjectWeakAssign();
    sub_1005F8B14(__dst);
    return result;
  }

  memset(__src, 0, 300);
  sub_10000CAAC(__src, &qword_1019FA4B8, &unk_10147CA90);
  sub_10000630C(a1, v58);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x13CuLL);
    v10 = type metadata accessor for CRLSpringLayerAnimation(0);
    *(a2 + 24) = v10;
    *(a2 + 32) = &off_1018B87B8;
    v11 = sub_10002C58C(a2);
    sub_1008DA1EC(__dst, v11);
    UUID.init()();
    swift_unknownObjectWeakInit();
    v12 = *(v10 + 28);
    v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
    v14 = *(*(v13 - 8) + 56);
    v14(v11 + v12, 1, 1, v13);
    v14(v11 + *(v10 + 32), 1, 1, v13);
    swift_unknownObjectWeakAssign();
    sub_1007D0604(__dst);
    return result;
  }

  v55 = a2;
  memset(__src, 0, 304);
  *&__src[19] = 1;
  DWORD2(__src[19]) = 0;
  sub_10000CAAC(__src, &qword_101A00A20, &qword_1014D4600);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C6B0;
  sub_10000630C(a1, __dst);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_1000053B0();
  *(v15 + 32) = v16;
  v20 = v15 + 32;
  *(v15 + 64) = v19;
  *(v15 + 40) = v18;
  v54 = objc_opt_self();
  LODWORD(a2) = [v54 _atomicIncrementAssertCount];
  __dst[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v15, __dst, "Unknown CRLLayerAnimationDef type %@", 36, 2u);
  StaticString.description.getter("animation(def:)", 15, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimatable.swift", 104, 2);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_36;
  }

LABEL_6:
  v27 = static OS_os_log.crlAssert;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146CA70;
  *(v28 + 56) = &type metadata for Int32;
  *(v28 + 64) = &protocol witness table for Int32;
  *(v28 + 32) = a2;
  v29 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v28 + 96) = v29;
  v30 = sub_1005CF04C();
  *(v28 + 72) = v21;
  *(v28 + 136) = &type metadata for String;
  *(v28 + 144) = v19;
  *(v28 + 104) = v30;
  *(v28 + 112) = v24;
  *(v28 + 120) = v26;
  *(v28 + 176) = &type metadata for UInt;
  *(v28 + 184) = &protocol witness table for UInt;
  *(v28 + 152) = 93;
  v19 = __dst[0];
  *(v28 + 216) = v29;
  *(v28 + 224) = v30;
  *(v28 + 192) = v19;
  v31 = v21;
  v32 = v19;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v34, "Unknown CRLLayerAnimationDef type %@", 36, 2, v15);

  type metadata accessor for __VaListBuilder();
  v21 = swift_allocObject();
  v21[2] = 8;
  v21[3] = 0;
  v35 = v21 + 3;
  v21[4] = 0;
  v21[5] = 0;
  v26 = *(v15 + 16);
  if (v26)
  {
    v36 = 0;
    v15 = 40;
    while (1)
    {
      v37 = (v20 + 40 * v36);
      v24 = v37[3];
      sub_100020E58(v37, v24);
      v38 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      a2 = *v35;
      v39 = *(v38 + 16);
      v40 = __OFADD__(*v35, v39);
      v41 = *v35 + v39;
      if (v40)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_6;
      }

      v42 = v21[4];
      if (v42 >= v41)
      {
        goto LABEL_23;
      }

      if (v42 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v24 = v21[5];
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      v21[4] = v41;
      if ((v41 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v19 = v38;
      v43 = swift_slowAlloc();
      v44 = v43;
      v21[5] = v43;
      if (v24)
      {
        break;
      }

      v38 = v19;
      if (!v44)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_24:
      v46 = *(v38 + 16);
      if (v46)
      {
        v47 = (v38 + 32);
        v48 = *v35;
        while (1)
        {
          v49 = *v47++;
          *&v44[8 * v48] = v49;
          v48 = *v35 + 1;
          if (__OFADD__(*v35, 1))
          {
            break;
          }

          *v35 = v48;
          if (!--v46)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_8:

      if (++v36 == v26)
      {
        goto LABEL_31;
      }
    }

    if (v43 != v24 || v43 >= &v24[8 * a2])
    {
      memmove(v43, v24, 8 * a2);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v38 = v19;
LABEL_23:
    v44 = v21[5];
    if (!v44)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_31:
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter("animation(def:)", 15, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimatable.swift", 104, 2);
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown CRLLayerAnimationDef type %@", 36, 2);
  v53 = String._bridgeToObjectiveC()();

  [v54 handleFailureInFunction:v51 file:v52 lineNumber:93 isFatal:0 format:v53 args:v50];

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55[4] = 0;
  result = 0.0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  return result;
}

double sub_100D3E62C()
{
  v1 = v0;
  if (*(v0 + 64) == 1)
  {
    sub_10000630C(v0 + 24, v9);
    v2 = 0.0;
  }

  else
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_100020E58((v1 + 24), *(v1 + 48));
    v2 = (*(*(v3 + 32) + 8))(v4);
    sub_10000630C(v1 + 24, v9);
    v6 = v10;
    v5 = v11;
    sub_10002A948(v9, v10);
    (*(*(v5 + 32) + 16))(v6, 0.0);
  }

  v7 = sub_1005C3FB8();
  sub_100D3DB54(_swiftEmptyArrayStorage, v7, v9);

  sub_100005070(v9);
  return v2;
}

void *sub_100D3E738()
{
  v1 = v0;
  v2 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C4D90(v1, &v80);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005C4DC8(&v80);
  if (Strong)
  {
    sub_100D3F330(v1, v4);
    v4[64] = 1;
    sub_10000630C((v4 + 24), &v80);
    v6 = sub_1005C3FB8();
    v7 = sub_100D3DB54(_swiftEmptyArrayStorage, v6, &v80);
    *&v54 = 0;

    sub_100005070(&v80);
    sub_100D3F394(v4);

    v8 = [Strong allPlatformViews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v80 = _swiftEmptyArrayStorage;
    v53 = v1;
    *&v56 = v7;
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_52:
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v55 = _swiftEmptyArrayStorage;
    while (v11 != v12)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_48;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v16 = [v13 layer];

      ++v12;
      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v55 = v80;
        v12 = v15;
      }
    }

    v17 = v56;
    v18 = *(v56 + 16);

    v55 = v18;
    if (v18)
    {
      v51 = Strong;
      v19 = 0;
      v10 = 32;
      Strong = v53;
      while (1)
      {
        if (v19 >= v17[2])
        {
          goto LABEL_49;
        }

        sub_10000630C(v17 + v10, v92);
        v20 = Strong[6];
        v21 = Strong[7];
        sub_100020E58(Strong + 3, v20);
        (*(v21 + 56))(&v80, v20, v21);
        if (v91 == 74)
        {
          *&v56 = v17;
          v22 = v80;
          v23 = v81;
          v24 = v82;
          v25 = *(&v82 + 1);
          v26 = v83;
          v27 = *(&v82 + 1);
          if (!*(&v82 + 1))
          {
            v52 = v81;
            v54 = v80;
            sub_1005C4D90(v53, &v80);
            v27 = swift_unknownObjectWeakLoadStrong();
            sub_1005C4DC8(&v80);
            if (v27)
            {
              v28 = [v27 renderableForRep:v51];

              if (v28)
              {
                v27 = [v28 layer];
              }

              else
              {
                v27 = 0;
              }
            }

            v22 = v54;
            v23 = v52;
          }

          if (v26 == 2)
          {
            v40 = 0;
          }

          else
          {
            v40 = v26;
          }

          v80 = v22;
          v81 = v23;
          LOBYTE(v82) = v24;
          *(&v82 + 1) = v27;
          LOBYTE(v83) = v40;
          v91 = 74;
          v41 = v93;
          v42 = v94;
          sub_10002A948(v92, v93);
          v43 = *(v42 + 104);
          *&v54 = v27;
          v44 = v25;
          v45 = v43(v58, v41, v42);
          v47 = *(v46 + 24);
          v9 = *(v46 + 32);
          sub_10002A948(v46, v47);
          (*(v9 + 64))(&v80, v47, v9);
          v45(v58, 0);

          Strong = v53;
          v17 = v56;
        }

        else
        {
          sub_100687CF4(&v80);
          v29 = Strong[6];
          v30 = Strong[7];
          sub_100020E58(Strong + 3, v29);
          (*(v30 + 56))(&v80, v29, v30);
          if (v91 == 75)
          {
            v54 = v81;
            v56 = v80;
            v78[6] = v88;
            v78[7] = v89;
            v79 = v90;
            v78[2] = v84;
            v78[3] = v85;
            v78[4] = v86;
            v78[5] = v87;
            v78[0] = v82;
            v78[1] = v83;
            if (sub_1006A42F0(v78) != 1 || (v31 = v93, v32 = v94, sub_100020E58(v92, v93), (v33 = (*(v32 + 64))(v31, v32)) == 0))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_10113CE44(v17);
              }

              if (v19 >= v17[2])
              {
                goto LABEL_51;
              }

              goto LABEL_17;
            }

            v34 = v33;
            [v33 transform];
            v73 = v65;
            v74 = v66;
            v75 = v67;
            v76 = v68;
            v69 = v61;
            v70 = v62;
            v71 = v63;
            v72 = v64;
            sub_100D3F3F0(&v69);
            v58[8] = v75;
            v58[9] = v76;
            v59 = v77;
            v58[4] = v71;
            v58[5] = v72;
            v58[6] = v73;
            v58[7] = v74;
            v58[2] = v69;
            v58[3] = v70;
            v58[1] = v54;
            v58[0] = v56;
            v60 = 75;
            v35 = v93;
            v36 = v94;
            sub_10002A948(v92, v93);
            v37 = (*(v36 + 104))(v57, v35, v36);
            v9 = *(v38 + 24);
            v39 = *(v38 + 32);
            sub_10002A948(v38, v9);
            (*(v39 + 64))(v58, v9, v39);
            v37(v57, 0);
          }

          else
          {
            sub_100687CF4(&v80);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10113CE44(v17);
        }

        if (v19 >= v17[2])
        {
          goto LABEL_50;
        }

LABEL_17:
        sub_100774FCC((v17 + v10), v92);
        v19 = (v19 + 1);
        sub_100005070(v92);
        v10 += 40;
        if (v55 == v19)
        {

          return v17;
        }
      }
    }
  }

  else
  {
    sub_100CCF5B0(_swiftEmptyArrayStorage, 0.0);
    return v48;
  }

  return v17;
}

BOOL sub_100D3EE5C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = v0[6];
  v9 = v0[7];
  sub_100020E58(v0 + 3, v8);
  if ((*(v9 + 184))(v8, v9))
  {
    return 1;
  }

  v11 = type metadata accessor for CRLRepAnimation(0);
  sub_100D3F4BC(v1 + *(v11 + 28), v7);
  v12 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v13 = *(*(v12 - 8) + 48);
  v10 = 1;
  v14 = v13(v7, 1, v12);
  sub_10000CAAC(v7, &qword_1019F57A8, &unk_101470220);
  if (v14 == 1)
  {
    sub_100D3F4BC(v1 + *(v11 + 32), v4);
    v10 = v13(v4, 1, v12) != 1;
    sub_10000CAAC(v4, &qword_1019F57A8, &unk_101470220);
  }

  return v10;
}

uint64_t sub_100D3F048()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    sub_100020E58((v0 + 24), v1);
    return (*(*(v2 + 32) + 8))(v1);
  }

  return result;
}

uint64_t sub_100D3F0AC(double a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_10002A948(v1 + 24, v3);
  return (*(*(v4 + 32) + 16))(v3, a1);
}

uint64_t (*sub_100D3F110(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  v3 = 0.0;
  if ((*(v1 + 64) & 1) == 0)
  {
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    sub_100020E58((v1 + 24), v4);
    v3 = (*(*(v5 + 32) + 8))(v4);
  }

  *a1 = v3;
  return sub_100D3F198;
}

uint64_t sub_100D3F198(double *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_10002A948(v1 + 24, v3);
  return (*(*(v4 + 32) + 16))(v3, v2);
}

uint64_t sub_100D3F1F8()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_100020E58(v0 + 3, v1);
  return (*(*(v2 + 32) + 32))(v1);
}

double sub_100D3F24C()
{
  v1 = v0;
  v3 = v0[6];
  v2 = v0[7];
  sub_100020E58(v1 + 3, v3);
  v4 = (*(*(v2 + 32) + 8))(v3);
  v6 = v1[6];
  v5 = v1[7];
  sub_100020E58(v1 + 3, v6);
  return v4 + (*(*(v5 + 32) + 32))(v6);
}

uint64_t type metadata accessor for CRLRepAnimation(uint64_t a1)
{
  result = qword_101A1CD58;
  if (!qword_101A1CD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D3F330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLRepAnimation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D3F394(uint64_t a1)
{
  v2 = type metadata accessor for CRLRepAnimation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100D3F420(uint64_t a1)
{
  sub_100687698();
  if (v1 <= 0x3F)
  {
    sub_1005F8CFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100D3F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D3F530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D3F578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100D3F5D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001DLL;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001CLL;
    }

    v5 = 0xD00000000000001ELL;
    if (a1)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73697370696C6C65;
    if (a1 == 7)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 == 6)
    {
      v1 = 0xD00000000000001FLL;
    }

    v2 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v2 = 0xD00000000000001CLL;
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

uint64_t sub_100D3F704()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

unint64_t sub_100D3FA68(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C63726963;
    v6 = 0x656C676E61697274;
    if (a1 != 2)
    {
      v6 = 0x6E6F67796C6F70;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6C656C6C61726170;
    if (a1 != 7)
    {
      v2 = 0x726568746FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657261757173;
    if (a1 != 4)
    {
      v3 = 0x646E6F6D616964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id sub_100D3FB8C(unsigned __int8 a1, double a2, double a3)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        return [objc_opt_self() pathSourceForShapeType:6 naturalSize:{a2, a3}];
      }

      else
      {
        return [objc_opt_self() pathSourceWithType:1 scalar:5.0 naturalSize:{a2, a3}];
      }
    }

    else if (a1)
    {
      return [objc_opt_self() pathSourceForShapeType:5 naturalSize:{a2, a3}];
    }

    else
    {
      return [objc_allocWithZone(CRLScalarPathSource) initWithType:0 scalar:1 naturalSize:(a2 + a3) * 0.075 continuousCurve:{a2, a3}];
    }
  }

  else
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        sub_100006370(0, &qword_1019FF3E0, NSNumber_ptr);
        v3.super.super.isa = NSNumber.init(integerLiteral:)(982).super.super.isa;
        v7 = [objc_opt_self() sharedLibrary];
        v5 = [v7 shapeWithID:v3.super.super.isa];

        if (v5)
        {
LABEL_15:
          v8 = [v5 bezierPathString];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v9 = String.utf8CString.getter();

          v10 = [objc_allocWithZone(CRLBezierPath) initWithCString:v9 + 32];

          if (v10)
          {
            v11 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v10];

            return v11;
          }

          return 0;
        }

        v12 = objc_opt_self();
        v13 = [v12 _atomicIncrementAssertCount];
        v55[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v55, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("pathSource(withNaturalSize:)", 28, 2);
        v14 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLMiniShapePickerSupport.swift", 101, 2);
        v15 = String._bridgeToObjectiveC()();

        v16 = [v15 lastPathComponent];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v20 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v13;
        v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v22;
        v23 = sub_1005CF04C();
        *(inited + 104) = v23;
        *(inited + 72) = v14;
        *(inited + 136) = &type metadata for String;
        v24 = sub_1000053B0();
        *(inited + 112) = v17;
        *(inited + 120) = v19;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v24;
        *(inited + 152) = 108;
        v25 = v55[0];
        *(inited + 216) = v22;
        *(inited + 224) = v23;
        *(inited + 192) = v25;
        v26 = v14;
        v27 = v25;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v30 = swift_allocObject();
        v30[2] = 8;
        v30[3] = 0;
        v30[4] = 0;
        v30[5] = 0;
        v31 = __VaListBuilder.va_list()();
        StaticString.description.getter("pathSource(withNaturalSize:)", 28, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLMiniShapePickerSupport.swift", 101, 2);
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v34 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v32 file:v33 lineNumber:108 isFatal:0 format:v34 args:v31];
      }

      else
      {
        if (a1 != 7)
        {
          return 0;
        }

        sub_100006370(0, &qword_1019FF3E0, NSNumber_ptr);
        v3.super.super.isa = NSNumber.init(integerLiteral:)(950).super.super.isa;
        v4 = [objc_opt_self() sharedLibrary];
        v5 = [v4 shapeWithID:v3.super.super.isa];

        if (v5)
        {
          goto LABEL_15;
        }

        v35 = objc_opt_self();
        v36 = [v35 _atomicIncrementAssertCount];
        v55[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v55, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("pathSource(withNaturalSize:)", 28, 2);
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLMiniShapePickerSupport.swift", 101, 2);
        v38 = String._bridgeToObjectiveC()();

        v39 = [v38 lastPathComponent];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v43 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_10146CA70;
        *(v44 + 56) = &type metadata for Int32;
        *(v44 + 64) = &protocol witness table for Int32;
        *(v44 + 32) = v36;
        v45 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v44 + 96) = v45;
        v46 = sub_1005CF04C();
        *(v44 + 104) = v46;
        *(v44 + 72) = v37;
        *(v44 + 136) = &type metadata for String;
        v47 = sub_1000053B0();
        *(v44 + 112) = v40;
        *(v44 + 120) = v42;
        *(v44 + 176) = &type metadata for UInt;
        *(v44 + 184) = &protocol witness table for UInt;
        *(v44 + 144) = v47;
        *(v44 + 152) = 116;
        v48 = v55[0];
        *(v44 + 216) = v45;
        *(v44 + 224) = v46;
        *(v44 + 192) = v48;
        v49 = v37;
        v50 = v48;
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v53 = swift_allocObject();
        v53[2] = 8;
        v53[3] = 0;
        v53[4] = 0;
        v53[5] = 0;
        v54 = __VaListBuilder.va_list()();
        StaticString.description.getter("pathSource(withNaturalSize:)", 28, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLMiniShapePickerSupport.swift", 101, 2);
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v34 = String._bridgeToObjectiveC()();

        [v35 handleFailureInFunction:v32 file:v33 lineNumber:116 isFatal:0 format:v34 args:v54];
      }

      return 0;
    }

    if (a1 == 4)
    {
      return [objc_opt_self() pathSourceForShapeType:3 naturalSize:{a2, a3}];
    }

    else
    {
      return [objc_opt_self() pathSourceForShapeType:10 naturalSize:{a2, a3}];
    }
  }
}

uint64_t sub_100D40590(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 13;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 10;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (!a1)
    {
      return 4;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 6;
      }

      return 0;
    }

    return 5;
  }
}

char *sub_100D407C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems] = 0;
  *&v13[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController] = 0;
  v14 = sub_100FBD5E4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v14;
}

char *sub_100D40888(char a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = &v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
  *v9 = 0.0;
  v9[1] = 0.0;
  v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator] = 0;
  v10 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  *&v4[v10] = sub_100BD7F38(_swiftEmptyArrayStorage);
  if (a3 != 0.0 && a4 != 0.0)
  {
    v51 = a2;
    v50 = objc_opt_self();
    v11 = [v50 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56, "One dimension of defaultSize should be 0 to indicate autosizing.", 64, 2u);
    StaticString.description.getter("init(defaultSize:showScrollIndicators:content:)", 47, 2);
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSAutoSizingHostingController.swift", 108, 2);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 110;
    v23 = v56[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "One dimension of defaultSize should be 0 to indicate autosizing.", 64, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(defaultSize:showScrollIndicators:content:)", 47, 2);
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSAutoSizingHostingController.swift", 108, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("One dimension of defaultSize should be 0 to indicate autosizing.", 64, 2);
    v32 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v30 file:v31 lineNumber:110 isFatal:0 format:v32 args:v29];

    a2 = v51;
  }

  type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy(0);
  swift_allocObject();
  v33 = sub_100FB89DC();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v56[0]) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v56[0] = *&a3;
  v56[1] = *&a4;

  static Published.subscript.setter();
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostProxy] = v33;
  sub_100D42E84(&qword_101A1CE28, type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy, "Ui7");
  swift_retain_n();
  v34 = ObservedObject.init(wrappedValue:)();
  v36 = v35;
  sub_100C537F4(a2, v56);
  v56[8] = v34;
  v56[9] = v36;
  v57 = 0;
  sub_10000BE14(v56, v55, &qword_101A1CE30, &qword_1014AE3F0);
  v37 = objc_allocWithZone(sub_1005B981C(&qword_101A1CE38, &qword_1014AE3F8));
  *&v37[*((swift_isaMask & *v37) + qword_101A25C40 + 16)] = 0;
  sub_10000BE14(v55, v54, &qword_101A1CE30, &qword_1014AE3F0);
  v38 = UIHostingController.init(rootView:)();
  sub_10000CAAC(v55, &qword_101A1CE30, &qword_1014AE3F0);
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController] = v38;
  v39 = &v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize];
  *v39 = a3;
  v39[1] = a4;
  *v9 = a3;
  v9[1] = a4;
  sub_100C537F4(a2, v55);
  v40 = swift_allocObject();
  v41 = v55[1];
  *(v40 + 1) = v55[0];
  *(v40 + 2) = v41;
  v42 = v55[3];
  *(v40 + 3) = v55[2];
  *(v40 + 4) = v42;
  v43 = &v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_calculatePreliminaryFittingSize];
  *v43 = sub_100D42ECC;
  v43[1] = v40;
  v44 = [objc_allocWithZone(UIScrollView) init];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAlwaysBounceHorizontal:0];
  [v44 setAlwaysBounceVertical:0];
  if (a1 == 2)
  {
    v45 = a4 == 0.0;
  }

  else
  {
    v45 = a1;
  }

  if (a1 == 2)
  {
    v46 = a3 == 0.0;
  }

  else
  {
    v46 = a1;
  }

  [v44 setShowsVerticalScrollIndicator:v45 & 1];
  [v44 setShowsHorizontalScrollIndicator:v46 & 1];
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView] = v44;
  v53.receiver = v5;
  v53.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  v47 = v44;
  v48 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  swift_unknownObjectWeakAssign();

  [v48 setPreferredContentSize:{*&v48[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize], *&v48[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8]}];

  sub_100D42E30(a2);
  sub_10000CAAC(v56, &qword_101A1CE30, &qword_1014AE3F0);
  return v48;
}

void sub_100D410E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController);
  if (v3)
  {
    v4 = [v3 changeNotifier];
    if (v4)
    {
      v5 = v4;
      if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems))
      {

        v7 = sub_100BC17C8(v6);

        v8 = [v7 parentContainerItem];
      }

      else
      {
        v8 = 0;
      }

      v30 = v8;
      sub_1005B981C(&unk_101A1CE10, &unk_1014AE350);
      v9 = Optional._bridgeToObjectiveC()();

      [v5 addObserver:v1 forChangeSource:v9];
      swift_unknownObjectRelease();
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems);
  if (!v10)
  {
    v16 = 0;
    v17 = *(v1 + v2);
    if (!v17)
    {
LABEL_32:

      return;
    }

LABEL_30:
    v26 = [v17 changeNotifier];
    if (v26)
    {
      v27 = v26;
      sub_1005B981C(&qword_101A1CE08, &qword_1014AE348);
      [v27 addObserver:v1 forChangeSource:Optional._bridgeToObjectiveC()()];

      swift_unknownObjectRelease();
    }

    goto LABEL_32;
  }

  v28 = v2;
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100D42E84(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v12 = v30;
    v11 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
  }

  else
  {
    v18 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v15 = v20 & *(v10 + 56);
    swift_bridgeObjectRetain_n();
    v14 = 0;
    v12 = v10;
  }

  v21 = (v13 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_21:
    v25 = (v23 - 1) & v23;
    v16 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v16)
    {
      do
      {
        type metadata accessor for CRLConnectionLineItem(0);
        if (swift_dynamicCastClass())
        {
          break;
        }

        v14 = v24;
        v15 = v25;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_23:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_28;
        }

        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v16 = v29;
        v24 = v14;
        v25 = v15;
      }

      while (v29);
    }

LABEL_29:
    sub_100035F90(v12);

    v17 = *(v1 + v28);
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
LABEL_28:
      v16 = 0;
      goto LABEL_29;
    }

    v23 = *(v11 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_100D41460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38.receiver = v3;
  v38.super_class = type metadata accessor for CRLiOSMiniShapePickerHostingController();
  objc_msgSendSuper2(&v38, "viewDidDisappear:", v4 & 1);
  v5 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController;
  v6 = *&v3[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController];
  if (v6)
  {
    [v6 removeDecorator:v3];
    v7 = *&v3[v5];
    if (v7)
    {
      v8 = [v7 changeNotifier];
      if (v8)
      {
        v9 = v8;
        if (*&v3[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems])
        {

          v11 = sub_100BC17C8(v10);

          v12 = [v11 parentContainerItem];
        }

        else
        {
          v12 = 0;
        }

        v39 = v12;
        sub_1005B981C(&unk_101A1CE10, &unk_1014AE350);
        v13 = Optional._bridgeToObjectiveC()();

        [v9 removeObserver:v3 forChangeSource:v13];
        swift_unknownObjectRelease();
      }
    }
  }

  v14 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems;
  v15 = *&v3[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems];
  if (!v15)
  {
    v21 = 0;
    v22 = *&v3[v5];
    if (!v22)
    {
LABEL_33:

      *&v3[v14] = 0;

      v33 = *&v3[v5];
      *&v3[v5] = 0;

      return;
    }

LABEL_31:
    v31 = [v22 changeNotifier];
    if (v31)
    {
      v32 = v31;
      sub_1005B981C(&qword_101A1CE08, &qword_1014AE348);
      [v32 removeObserver:v3 forChangeSource:Optional._bridgeToObjectiveC()()];

      swift_unknownObjectRelease();
    }

    goto LABEL_33;
  }

  v35 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems;
  v36 = v5;
  if ((v15 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100D42E84(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v17 = v39;
    v16 = v40;
    v18 = v41;
    v19 = v42;
    v20 = v43;
  }

  else
  {
    v23 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v18 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v20 = v25 & *(v15 + 56);
    swift_bridgeObjectRetain_n();
    v19 = 0;
    v17 = v15;
  }

  v34 = v18;
  v26 = (v18 + 64) >> 6;
  if (v17 < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v27 = v19;
  v28 = v20;
  v29 = v19;
  if (v20)
  {
LABEL_22:
    v30 = (v28 - 1) & v28;
    v21 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (v21)
    {
      do
      {
        type metadata accessor for CRLConnectionLineItem(0);
        if (swift_dynamicCastClass())
        {
          break;
        }

        v19 = v29;
        v20 = v30;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_29;
        }

        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v21 = v37;
        v29 = v19;
        v30 = v20;
      }

      while (v37);
    }

LABEL_30:
    sub_100035F90(v17);

    v14 = v35;
    v5 = v36;
    v22 = *&v3[v36];
    if (!v22)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
LABEL_29:
      v21 = 0;
      goto LABEL_30;
    }

    v28 = *(v16 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}