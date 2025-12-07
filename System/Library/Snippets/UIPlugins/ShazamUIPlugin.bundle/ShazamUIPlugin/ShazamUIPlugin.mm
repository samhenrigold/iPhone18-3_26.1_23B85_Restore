__n128 sub_14D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_14EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C78(&qword_100A8, &qword_8D40);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v5 = sub_82E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_82F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8324();
  swift_allocObject();
  sub_8314();
  (*(v10 + 104))(v12, enum case for MatchingFlowState.listening(_:), v9);
  sub_8304();

  sub_82D4();
  LOBYTE(v9) = sub_8394();
  sub_8364();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v6 + 16))(v4, v8, v5);
  v21 = &v4[*(v2 + 36)];
  *v21 = v9;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  sub_1CC0();
  v22 = sub_8404();

  result = (*(v6 + 8))(v8, v5);
  *a1 = v22;
  return result;
}

uint64_t sub_1880(uint64_t a1, id *a2)
{
  result = sub_8444();
  *a2 = 0;
  return result;
}

uint64_t sub_18F8(uint64_t a1, id *a2)
{
  v3 = sub_8454();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1978@<X0>(uint64_t *a1@<X8>)
{
  sub_8464();
  v2 = sub_8434();

  *a1 = v2;
  return result;
}

uint64_t sub_19BC()
{
  sub_8464();
  v0 = sub_84A4();

  return v0;
}

uint64_t sub_19F8(uint64_t a1)
{
  sub_8464();
  sub_8484();
}

Swift::Int sub_1A4C(uint64_t a1)
{
  sub_8464();
  sub_8624();
  sub_8484();
  v1 = sub_8644();

  return v1;
}

uint64_t sub_1AC0(void *a1, uint64_t *a2)
{
  v2 = sub_8464();
  v4 = v3;
  if (v2 == sub_8464() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_85C4();
  }

  return v7 & 1;
}

uint64_t sub_1B48@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_8434();

  *a2 = v3;
  return result;
}

uint64_t sub_1B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8464();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBC(uint64_t a1)
{
  v2 = sub_1EF8(&qword_100E0, type metadata accessor for SHMediaItemProperty, &unk_8C38);
  v3 = sub_1EF8(&qword_100E8, type metadata accessor for SHMediaItemProperty, &unk_8B8C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1C78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1CC0()
{
  result = qword_100B0;
  if (!qword_100B0)
  {
    sub_1D7C(&qword_100A8, &qword_8D40);
    sub_1EF8(&qword_100B8, &type metadata accessor for MatchingFlowView, &protocol conformance descriptor for MatchingFlowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100B0);
  }

  return result;
}

uint64_t sub_1D7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for SHMediaItemProperty()
{
  if (!qword_100C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100C0);
    }
  }
}

uint64_t sub_1EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C78(&qword_100F0, qword_8CB0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_203C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C78(&qword_100F0, qword_8CB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ShazamSuccessfulMatchView(uint64_t a1)
{
  result = qword_10150;
  if (!qword_10150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214C(uint64_t a1)
{
  sub_21D0(319);
  if (v1 <= 0x3F)
  {
    sub_2228(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21D0(uint64_t a1)
{
  if (!qword_10160)
  {
    type metadata accessor for ShazamSuccessfulMatchModel(255);
    v1 = sub_83F4();
    if (!v2)
    {
      atomic_store(v1, &qword_10160);
    }
  }
}

void sub_2228(uint64_t a1)
{
  if (!qword_10168)
  {
    sub_8414();
    sub_43F4(&unk_10170, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_8384();
    if (!v2)
    {
      atomic_store(v1, &qword_10168);
    }
  }
}

uint64_t sub_22D8@<X0>(uint64_t *a1@<X8>)
{
  v127 = a1;
  v126 = sub_1C78(&qword_100A8, &qword_8D40);
  __chkstk_darwin(v126);
  v125 = &v105 - v1;
  v2 = sub_82E4();
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_82F4();
  v120 = *(v4 - 8);
  v121 = v4;
  __chkstk_darwin(v4);
  v119 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_82C4();
  v129 = *(v118 - 8);
  __chkstk_darwin(v118);
  v128 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ShazamSuccessfulMatchModel(0) - 8;
  v7 = __chkstk_darwin(v110);
  v117 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v116 = &v105 - v10;
  v11 = __chkstk_darwin(v9);
  v114 = &v105 - v12;
  v13 = __chkstk_darwin(v11);
  v112 = &v105 - v14;
  v15 = __chkstk_darwin(v13);
  v111 = &v105 - v16;
  v17 = __chkstk_darwin(v15);
  v109 = &v105 - v18;
  v19 = __chkstk_darwin(v17);
  v108 = &v105 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v105 - v22;
  v23 = __chkstk_darwin(v21);
  v105 = &v105 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v105 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v105 - v29;
  __chkstk_darwin(v28);
  v32 = (&v105 - v31);
  v115 = sub_443C(0, &qword_101A0, SHMediaItem_ptr);
  sub_1C78(&qword_101A8, &qword_8D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8C80;
  *(inited + 32) = SHMediaItemShazamID;
  v113 = inited + 32;
  v34 = SHMediaItemShazamID;
  sub_1C78(&qword_100F0, qword_8CB0);
  sub_83E4();
  v36 = *v32;
  v35 = v32[1];

  sub_36B4(v32);
  v37 = sub_1C78(&qword_101B0, &qword_8D50);
  *(inited + 40) = v36;
  *(inited + 48) = v35;
  *(inited + 64) = v37;
  *(inited + 72) = SHMediaItemTitle;
  v38 = SHMediaItemTitle;
  sub_83E4();
  v40 = *(v30 + 2);
  v39 = *(v30 + 3);

  sub_36B4(v30);
  *(inited + 80) = v40;
  *(inited + 88) = v39;
  *(inited + 104) = v37;
  *(inited + 112) = SHMediaItemSubtitle;
  v41 = SHMediaItemSubtitle;
  sub_83E4();
  v43 = *(v27 + 4);
  v42 = *(v27 + 5);

  sub_36B4(v27);
  *(inited + 120) = v43;
  *(inited + 128) = v42;
  *(inited + 144) = v37;
  *(inited + 152) = SHMediaItemArtist;
  v44 = SHMediaItemArtist;
  v45 = v105;
  sub_83E4();
  v47 = *(v45 + 48);
  v46 = *(v45 + 56);

  sub_36B4(v45);
  *(inited + 160) = v47;
  *(inited + 168) = v46;
  *(inited + 184) = v37;
  *(inited + 192) = SHMediaItemGenres;
  v107 = v37;
  sub_1C78(&qword_101B8, &qword_8D58);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_8C90;
  v49 = SHMediaItemGenres;
  v50 = v106;
  sub_83E4();
  v52 = v50[8];
  v51 = v50[9];

  sub_36B4(v50);
  *(v48 + 32) = v52;
  *(v48 + 40) = v51;
  v53 = sub_1C78(&qword_101C0, &qword_8D60);
  *(inited + 200) = v48;
  *(inited + 224) = v53;
  *(inited + 232) = SHMediaItemAppleMusicID;
  v54 = SHMediaItemAppleMusicID;
  sub_83E4();
  v56 = v50[10];
  v55 = v50[11];

  sub_36B4(v50);
  *(inited + 240) = v56;
  *(inited + 248) = v55;
  *(inited + 264) = v37;
  *(inited + 272) = SHMediaItemAppleMusicURL;
  v57 = SHMediaItemAppleMusicURL;
  v58 = v108;
  sub_83E4();
  v59 = v110;
  v60 = *(v110 + 48);
  v61 = sub_1C78(&qword_101C8, &qword_8D68);
  *(inited + 304) = v61;
  v62 = sub_3710((inited + 280));
  sub_4488(v58 + v60, v62, &qword_101C8, &qword_8D68);
  sub_36B4(v58);
  *(inited + 312) = SHMediaItemWebURL;
  v63 = SHMediaItemWebURL;
  v64 = v109;
  sub_83E4();
  v65 = v59[13];
  *(inited + 344) = v61;
  v66 = sub_3710((inited + 320));
  sub_4488(v64 + v65, v66, &qword_101C8, &qword_8D68);
  sub_36B4(v64);
  *(inited + 352) = SHMediaItemArtworkURL;
  v67 = SHMediaItemArtworkURL;
  v68 = v111;
  sub_83E4();
  v69 = v59[14];
  *(inited + 384) = v61;
  v70 = sub_3710((inited + 360));
  sub_4488(v68 + v69, v70, &qword_101C8, &qword_8D68);
  sub_36B4(v68);
  *(inited + 392) = SHMediaItemVideoURL;
  v71 = SHMediaItemVideoURL;
  v72 = v112;
  sub_83E4();
  v73 = v59[15];
  *(inited + 424) = v61;
  v74 = sub_3710((inited + 400));
  sub_4488(v72 + v73, v74, &qword_101C8, &qword_8D68);
  sub_36B4(v72);
  *(inited + 432) = SHMediaItemExplicitContent;
  v75 = SHMediaItemExplicitContent;
  v76 = v114;
  sub_83E4();
  LOBYTE(v73) = *(v76 + v59[16]);
  sub_36B4(v76);
  v77 = sub_1C78(&qword_101D0, &qword_8D70);
  *(inited + 440) = v73;
  *(inited + 464) = v77;
  *(inited + 472) = SHMediaItemISRC;
  v78 = SHMediaItemISRC;
  v79 = v116;
  sub_83E4();
  v80 = (v79 + v59[17]);
  v82 = *v80;
  v81 = v80[1];

  sub_36B4(v79);
  *(inited + 504) = v107;
  *(inited + 480) = v82;
  *(inited + 488) = v81;
  v83 = sub_408C(inited);
  swift_setDeallocating();
  sub_1C78(&qword_101D8, &qword_8D78);
  swift_arrayDestroy();
  v84 = sub_2D08(v83);
  sub_8324();
  swift_allocObject();
  sub_8314();
  v85 = v117;
  sub_83E4();
  sub_36B4(v85);
  v86 = v84;
  v87 = v128;
  sub_82B4();
  sub_82A4();
  v89 = v118;
  v88 = v119;
  (*(v129 + 16))(v119, v87, v118);
  (*(v120 + 104))(v88, enum case for MatchingFlowState.match(_:), v121);
  sub_8304();

  v90 = v122;
  sub_82D4();
  LOBYTE(v88) = sub_8394();
  sub_8364();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v123;
  v99 = v124;
  v101 = v125;
  (*(v123 + 16))(v125, v90, v124);
  v102 = &v101[*(v126 + 36)];
  *v102 = v88;
  *(v102 + 1) = v92;
  *(v102 + 2) = v94;
  *(v102 + 3) = v96;
  *(v102 + 4) = v98;
  v102[40] = 0;
  sub_1CC0();
  v103 = sub_8404();

  (*(v100 + 8))(v90, v99);
  result = (*(v129 + 8))(v128, v89);
  *v127 = v103;
  return result;
}

id sub_2D08(void *a1)
{
  sub_1C78(&qword_101E0, &qword_8D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8CA0;
  *(inited + 32) = sub_84C4();
  *(inited + 40) = SHMediaItemTimeRanges;
  v3 = SHMediaItemTimeRanges;
  *(inited + 48) = sub_84D4();
  *(inited + 56) = SHMediaItemFrequencySkewRanges;
  v4 = SHMediaItemFrequencySkewRanges;
  v5 = sub_41C8(inited);
  swift_setDeallocating();
  sub_1C78(&qword_101E8, &qword_8D88);
  swift_arrayDestroy();
  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v10;
LABEL_10:
    v10 = (v12 - 1) & v12;
    if (a1[2])
    {
      v94 = (v12 - 1) & v12;
      v14 = (v6 << 9) | (8 * __clz(__rbit64(v12)));
      v15 = *(*(v5 + 56) + v14);
      v16 = *(*(v5 + 48) + v14);
      v17 = v15;
      v18 = sub_3FEC(v16, sub_3D8C);
      if (v19)
      {
        sub_42D4(a1[7] + 32 * v18, v98);
        sub_42D4(v98, &v96);
        sub_1C78(&qword_101F0, &qword_8D90);
        if (swift_dynamicCast())
        {
          v20 = *&v95[0];
          v21 = *(*&v95[0] + 16);
          if (v21)
          {
            v89 = v17;
            v91 = v5;
            *&v96 = &_swiftEmptyArrayStorage;
            sub_3E90(0, v21, 0);
            v22 = v96;
            v23 = (v20 + 40);
            do
            {
              v24 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v23 - 1) upperBound:*v23];
              *&v96 = v22;
              v26 = v22[2];
              v25 = v22[3];
              if (v26 >= v25 >> 1)
              {
                v87 = v24;
                sub_3E90((v25 > 1), v26 + 1, 1);
                v24 = v87;
                v22 = v96;
              }

              v22[2] = v26 + 1;
              v22[v26 + 4] = v24;
              v23 += 2;
              --v21;
            }

            while (v21);

            v17 = v89;
            v5 = v91;
          }

          else
          {

            v22 = &_swiftEmptyArrayStorage;
          }

          *(&v97 + 1) = sub_1C78(&qword_10208, &qword_8DA8);
          *&v96 = v22;
          sub_4330(&v96, v95);
          v45 = a1;
          v46 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = sub_3FEC(v46, sub_3D8C);
          v50 = v45[2];
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            goto LABEL_68;
          }

          v54 = v49;
          if (v45[3] >= v53)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_37;
            }

            v72 = v48;
            sub_3774();
            v48 = v72;
            if ((v54 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_38:
            v56 = v45;
            v57 = (v45[7] + 32 * v48);
            sub_4340(v57);
            sub_4330(v95, v57);
          }

          else
          {
            sub_38F4(v53, isUniquelyReferenced_nonNull_native);
            v48 = sub_3FEC(v46, sub_3D8C);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_74;
            }

LABEL_37:
            if (v54)
            {
              goto LABEL_38;
            }

LABEL_54:
            v45[(v48 >> 6) + 8] |= 1 << v48;
            *(v45[6] + 8 * v48) = v46;
            sub_4330(v95, (v45[7] + 32 * v48));
            v73 = v45[2];
            v52 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v52)
            {
              goto LABEL_71;
            }

            v56 = v45;
            v45[2] = v74;
          }

          v58 = v56;
          goto LABEL_60;
        }

        sub_42D4(v98, &v96);
        sub_1C78(&qword_101F8, &qword_8D98);
        if (swift_dynamicCast())
        {
          v27 = *&v95[0];
          v28 = *(*&v95[0] + 16);
          if (v28)
          {
            v90 = v17;
            v92 = v5;
            *&v95[0] = &_swiftEmptyArrayStorage;
            sub_3E90(0, v28, 0);
            v29 = *&v95[0];
            v30 = (v27 + 36);
            do
            {
              v31 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v30 - 1) upperBound:*v30];
              *&v95[0] = v29;
              v33 = v29[2];
              v32 = v29[3];
              if (v33 >= v32 >> 1)
              {
                v88 = v31;
                sub_3E90((v32 > 1), v33 + 1, 1);
                v31 = v88;
                v29 = *&v95[0];
              }

              v29[2] = v33 + 1;
              v29[v33 + 4] = v31;
              v30 += 2;
              --v28;
            }

            while (v28);

            v17 = v90;
            v5 = v92;
          }

          else
          {

            v29 = &_swiftEmptyArrayStorage;
          }

          *(&v97 + 1) = sub_1C78(&qword_10208, &qword_8DA8);
          *&v96 = v29;
          sub_4330(&v96, v95);
          v58 = a1;
          v62 = v17;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v64 = sub_3FEC(v62, sub_3D8C);
          v66 = v58[2];
          v67 = (v65 & 1) == 0;
          v52 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v52)
          {
            goto LABEL_69;
          }

          v69 = v65;
          if (v58[3] < v68)
          {
            sub_38F4(v68, v63);
            v64 = sub_3FEC(v62, sub_3D8C);
            if ((v69 & 1) != (v70 & 1))
            {
              goto LABEL_74;
            }

            goto LABEL_51;
          }

          if (v63)
          {
LABEL_51:
            if (v69)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v76 = v64;
            sub_3774();
            v64 = v76;
            if (v69)
            {
LABEL_52:
              v71 = (v58[7] + 32 * v64);
              sub_4340(v71);
              sub_4330(v95, v71);

              goto LABEL_60;
            }
          }

          v58[(v64 >> 6) + 8] |= 1 << v64;
          *(v58[6] + 8 * v64) = v62;
          sub_4330(v95, (v58[7] + 32 * v64));
          v77 = v58[2];
          v52 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v52)
          {
            goto LABEL_73;
          }

          v58[2] = v78;
          goto LABEL_60;
        }

        sub_42D4(v98, &v96);
        v34 = a1;
        v35 = v17;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v95[0] = v34;
        v38 = sub_3FEC(v35, sub_3D8C);
        v39 = v34[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_70;
        }

        if (v34[3] >= v41)
        {
          if ((v36 & 1) == 0)
          {
            v75 = v37;
            sub_3774();
            v37 = v75;
          }
        }

        else
        {
          v93 = v37;
          sub_38F4(v41, v36);
          v42 = sub_3FEC(v35, sub_3D8C);
          v44 = v43 & 1;
          v37 = v93;
          if ((v93 & 1) != v44)
          {
            goto LABEL_74;
          }

          v38 = v42;
        }

        v58 = *&v95[0];
        if (v37)
        {
          v59 = (*(*&v95[0] + 56) + 32 * v38);
          sub_4340(v59);
          sub_4330(&v96, v59);
        }

        else
        {
          *(*&v95[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
          *(v58[6] + 8 * v38) = v35;
          sub_4330(&v96, (v58[7] + 32 * v38));
          v60 = v58[2];
          v52 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v52)
          {
            goto LABEL_72;
          }

          v58[2] = v61;
        }

LABEL_60:
        v79 = sub_3FEC(v16, sub_3D8C);
        if (v80)
        {
          v81 = v79;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v95[0] = v58;
          if ((v82 & 1) == 0)
          {
            sub_3774();
            v58 = *&v95[0];
          }

          sub_4330((v58[7] + 32 * v81), &v96);
          a1 = v58;
          sub_3BC4(v81, v58);

          sub_4340(v98);
        }

        else
        {
          a1 = v58;
          sub_4340(v98);

          v96 = 0u;
          v97 = 0u;
        }

        sub_438C(&v96);
        v10 = v94;
      }

      else
      {

        v10 = v94;
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty();
      sub_43F4(&qword_100E0, type metadata accessor for SHMediaItemProperty, &unk_8C38);
      isa = sub_8424().super.isa;
      v85 = [ObjCClassFromMetadata mediaItemWithProperties:isa];

      return v85;
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_10;
    }
  }

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
LABEL_74:
  type metadata accessor for SHMediaItemProperty();
  result = sub_85D4();
  __break(1u);
  return result;
}

uint64_t sub_36B4(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t *sub_3710(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_3774()
{
  v1 = v0;
  sub_1C78(&qword_10220, &qword_8DB8);
  v2 = *v0;
  v3 = sub_8524();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_42D4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_4330(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_38F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C78(&qword_10220, &qword_8DB8);
  v35 = v4;
  result = sub_8534();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_4330(v22, v36);
      }

      else
      {
        sub_42D4(v22, v36);
        v23 = v21;
      }

      sub_8464();
      sub_8624();
      sub_8484();
      v24 = sub_8644();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_4330(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_3BC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_84F4() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_8464();
      sub_8624();
      v11 = v10;
      sub_8484();
      v12 = sub_8644();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_3D8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_8464();
      v8 = v7;
      if (v6 == sub_8464() && v8 == v9)
      {
        break;
      }

      v11 = sub_85C4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_3E90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3EB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C78(&qword_10210, &qword_8DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_443C(0, &qword_10218, SHRange_ptr);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_3FEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_8464();
  sub_8624();
  sub_8484();
  v3 = sub_8644();

  return a2(a1, v3);
}

unint64_t sub_408C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C78(&qword_10220, &qword_8DB8);
    v3 = sub_8544();
    v4 = a1 + 32;

    while (1)
    {
      sub_4488(v4, &v11, &qword_101D8, &qword_8D78);
      v5 = v11;
      result = sub_3FEC(v11, sub_3D8C);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_4330(&v12, (v3[7] + 32 * result));
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

unint64_t sub_41C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C78(&qword_10228, &unk_8DC0);
    v3 = sub_8544();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_3FEC(v6, sub_3D8C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_42D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4330(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_4340(void *a1)
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

uint64_t sub_438C(uint64_t a1)
{
  v2 = sub_1C78(&qword_10200, &qword_8DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_443C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_4488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_4528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C78(&qword_100A8, &qword_8D40);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v5 = sub_82E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_82F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_8324();
  swift_allocObject();
  sub_8314();
  *v12 = 0;
  (*(v10 + 104))(v12, enum case for MatchingFlowState.noMatch(_:), v9);
  sub_8304();

  sub_82D4();
  LOBYTE(v9) = sub_8394();
  sub_8364();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v6 + 16))(v4, v8, v5);
  v21 = &v4[*(v2 + 36)];
  *v21 = v9;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  sub_1CC0();
  v22 = sub_8404();

  result = (*(v6 + 8))(v8, v5);
  *a1 = v22;
  return result;
}

unint64_t sub_47B8()
{
  result = qword_100B8;
  if (!qword_100B8)
  {
    sub_82E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100B8);
  }

  return result;
}

uint64_t sub_481C()
{
  v0 = sub_8354();
  sub_5A28(v0, qword_11380);
  sub_573C(v0, qword_11380);
  return sub_8344();
}

Swift::Int sub_48B0()
{
  v1 = *v0;
  sub_8624();
  sub_8634(v1);
  return sub_8644();
}

Swift::Int sub_4924(uint64_t a1)
{
  v2 = *v1;
  sub_8624();
  sub_8634(v2);
  return sub_8644();
}

uint64_t sub_49AC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t sub_49F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4AC4(v11, 0, 0, 1, a1, a2);
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
    sub_42D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4340(v11);
  return v7;
}

unint64_t sub_4AC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4BD0(a5, a6);
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
    result = sub_8514();
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

char *sub_4BD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_4C1C(a1, a2);
  sub_4D4C(&off_C830);
  return v3;
}

char *sub_4C1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_4E38(v5, 0);
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

  result = sub_8514();
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
        v10 = sub_8494();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4E38(v10, 0);
        result = sub_8504();
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

uint64_t sub_4D4C(uint64_t result)
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

  result = sub_4EAC(result, v11, 1, v3);
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

void *sub_4E38(uint64_t a1, uint64_t a2)
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

  sub_1C78(&qword_10300, &qword_8ED8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4EAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C78(&qword_10300, &qword_8ED8);
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

uint64_t sub_4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  v7 = __chkstk_darwin(matched);
  v64 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v62 - v10;
  __chkstk_darwin(v9);
  v63 = v62 - v12;
  v66 = type metadata accessor for ShazamSuccessfulMatchView(0);
  __chkstk_darwin(v66);
  v65 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8354();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100A0 != -1)
  {
    swift_once();
  }

  v18 = sub_573C(v14, qword_11380);
  (*(v15 + 16))(v17, v18, v14);

  v19 = sub_8334();
  v73 = v14;
  v20 = v19;
  v21 = sub_84B4();

  v22 = os_log_type_enabled(v20, v21);
  v68 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v62[3] = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v62[2] = a3;
    v26 = v25;
    v70 = v25;
    *v24 = 136315138;
    v27 = sub_8474();
    v29 = sub_49F8(v27, v28, &v70);
    v62[1] = a2;
    v30 = v29;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_0, v20, v21, "ShazamUIPlugin#view %s", v24, 0xCu);
    sub_4340(v26);
  }

  (*(v15 + 8))(v17, v73);
  v32 = sub_8474();
  v33 = v31;
  if (v32 == 0x6E696E657473696CLL && v31 == 0xE900000000000067 || (sub_85C4() & 1) != 0)
  {

    sub_8254();
    swift_allocObject();
    v34 = sub_8244();
    sub_5980(v34, v35, v36);
    v37 = v69;
    sub_8234();

    if (v37)
    {
      return result;
    }

    sub_83D4();
    v39 = v70;
    sub_8414();
    sub_5890(&unk_10170, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v40 = sub_8374();
    v70 = v39;
    v71 = v40;
    v72 = v41;
    sub_59D4(v40, v41, v42);
    return sub_8404();
  }

  if (v32 == 0x686374616D6F6ELL && v33 == 0xE700000000000000 || (sub_85C4() & 1) != 0)
  {

    sub_8254();
    swift_allocObject();
    v43 = sub_8244();
    sub_58D8(v43, v44, v45);
    v46 = v69;
    sub_8234();

    if (!v46)
    {
      sub_83D4();
      v47 = v70;
      sub_8414();
      sub_5890(&unk_10170, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      v48 = sub_8374();
      v70 = v47;
      v71 = v48;
      v72 = v49;
      sub_592C(v48, v49, v50);
      return sub_8404();
    }
  }

  else
  {
    if (v32 == 0x6673736563637573 && v33 == 0xEF686374616D6C75)
    {

      v51 = v68;
    }

    else
    {
      v52 = sub_85C4();

      v51 = v68;
      if ((v52 & 1) == 0)
      {
        sub_5774(v53, v54, v55);
        swift_allocError();
        *v61 = 0;
        return swift_willThrow();
      }
    }

    sub_8254();
    swift_allocObject();
    sub_8244();
    sub_5890(&qword_102D0, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
    v56 = v69;
    sub_8234();

    if (!v56)
    {
      v57 = v63;
      sub_57C8(v51, v63);
      sub_582C(v57, v64);
      v58 = v65;
      sub_83D4();
      sub_36B4(v57);
      v59 = &v58[*(v66 + 20)];
      sub_8414();
      sub_5890(&unk_10170, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      *v59 = sub_8374();
      v59[1] = v60;
      sub_5890(&qword_102D8, type metadata accessor for ShazamSuccessfulMatchView, "M8");
      return sub_8404();
    }
  }

  return result;
}

uint64_t sub_573C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_5774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102C8;
  if (!qword_102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102C8);
  }

  return result;
}

uint64_t sub_57C8(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_582C(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_5890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_58D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102E0;
  if (!qword_102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E0);
  }

  return result;
}

unint64_t sub_592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102E8;
  if (!qword_102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E8);
  }

  return result;
}

unint64_t sub_5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102F0;
  if (!qword_102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F0);
  }

  return result;
}

unint64_t sub_59D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102F8;
  if (!qword_102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F8);
  }

  return result;
}

uint64_t *sub_5A28(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for Plugin.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Plugin.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10308;
  if (!qword_10308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10308);
  }

  return result;
}

uint64_t sub_5C90(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_5D18(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_8254();
  swift_allocObject();
  sub_8244();
  a3();
  sub_8234();
  sub_5C90(a1, a2);
}

uint64_t ShazamSuccessfulMatchModel.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_8254();
  swift_allocObject();
  sub_8244();
  type metadata accessor for ShazamSuccessfulMatchModel(0);
  sub_768C(&qword_102D0, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
  sub_8234();
  sub_5C90(a1, a2);
}

uint64_t type metadata accessor for ShazamSuccessfulMatchModel(uint64_t a1)
{
  result = qword_103C8;
  if (!qword_103C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5FF4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_5F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5FF4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_5FB0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_5FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10318;
  if (!qword_10318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10318);
  }

  return result;
}

unint64_t sub_60C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10320;
  if (!qword_10320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10320);
  }

  return result;
}

uint64_t sub_6114@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_632C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_632C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_620C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_1C78(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_5FB0(a1, a1[3]);
  a4();
  sub_8664();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10330;
  if (!qword_10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

uint64_t sub_63EC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_1C78(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_5FB0(a1, a1[3]);
  a6();
  sub_8664();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_6540(uint64_t (*a1)(void), uint64_t a2)
{
  sub_8284();
  swift_allocObject();
  sub_8274();
  a1();
  v3 = sub_8264();

  return v3;
}

unint64_t sub_65C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10338;
  if (!qword_10338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10338);
  }

  return result;
}

unint64_t sub_661C(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_67C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7DF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_67F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6C04(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6C04(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ShazamSuccessfulMatchModel.encode(to:)(void *a1)
{
  v3 = sub_1C78(&qword_10340, &unk_8FA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_5FB0(a1, a1[3]);
  sub_6C04(v7, v8, v9);
  sub_8664();
  v11[31] = 0;
  sub_8594();
  if (!v1)
  {
    v11[30] = 1;
    sub_8594();
    v11[29] = 2;
    sub_8594();
    v11[28] = 3;
    sub_8594();
    v11[27] = 4;
    sub_8594();
    v11[26] = 5;
    sub_8594();
    type metadata accessor for ShazamSuccessfulMatchModel(0);
    v11[25] = 6;
    sub_8294();
    sub_768C(&qword_10350, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_85B4();
    v11[24] = 7;
    sub_85B4();
    v11[15] = 8;
    sub_85B4();
    v11[14] = 9;
    sub_85B4();
    v11[13] = 10;
    sub_85A4();
    v11[12] = 11;
    sub_8594();
    v11[11] = 12;
    sub_85A4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_6C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10348;
  if (!qword_10348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10348);
  }

  return result;
}

uint64_t ShazamSuccessfulMatchModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1C78(&qword_101C8, &qword_8D68);
  v4 = __chkstk_darwin(v3 - 8);
  v60 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v55 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v55 - v10;
  __chkstk_darwin(v9);
  v13 = v55 - v12;
  v64 = sub_1C78(&qword_10358, &qword_8FB0);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v15 = v55 - v14;
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  __chkstk_darwin(matched);
  v18 = (v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v66 = a1;
  v20 = sub_5FB0(a1, v19);
  sub_6C04(v20, v21, v22);
  v63 = v15;
  v23 = v65;
  sub_8654();
  if (v23)
  {
    return sub_4340(v66);
  }

  v24 = v13;
  v58 = v8;
  v59 = v11;
  v26 = v61;
  v25 = v62;
  v65 = matched;
  v79 = 0;
  v27 = v63;
  v28 = v64;
  *v18 = sub_8564();
  v18[1] = v30;
  v78 = 1;
  v18[2] = sub_8564();
  v18[3] = v31;
  v77 = 2;
  v56 = 0;
  v18[4] = sub_8564();
  v18[5] = v32;
  v76 = 3;
  v18[6] = sub_8564();
  v18[7] = v33;
  v75 = 4;
  v18[8] = sub_8564();
  v18[9] = v34;
  v74 = 5;
  v35 = sub_8564();
  v57 = 0;
  v18[10] = v35;
  v18[11] = v36;
  v37 = sub_8294();
  v73 = 6;
  v38 = sub_768C(&qword_10360, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v55[0] = v37;
  v55[1] = v38;
  v39 = v57;
  sub_8584();
  v57 = v39;
  if (v39)
  {
    (*(v26 + 8))(v27, v28);
    v40 = 0;
    v41 = 0;
  }

  else
  {
    sub_752C(v24, v18 + v65[10]);
    v72 = 7;
    v42 = v59;
    v43 = v57;
    sub_8584();
    v57 = v43;
    if (v43)
    {
      (*(v26 + 8))(v27, v64);
      v41 = 0;
      v40 = 1;
    }

    else
    {
      sub_752C(v42, v18 + v65[11]);
      v71 = 8;
      v44 = v57;
      v45 = v58;
      v46 = v64;
      sub_8584();
      v57 = v44;
      if (!v44)
      {
        sub_752C(v45, v18 + v65[12]);
        v70 = 9;
        v49 = v57;
        sub_8584();
        if (v49)
        {
          (*(v26 + 8))(v63, v64);
          sub_4340(v66);

          v51 = v65;
          sub_74C4(v18 + v65[10]);
          sub_74C4(v18 + v51[11]);
          return sub_74C4(v18 + v51[12]);
        }

        else
        {
          sub_752C(v60, v18 + v65[13]);
          v69 = 10;
          *(v18 + v65[14]) = sub_8574();
          v68 = 11;
          v50 = sub_8564();
          v52 = (v18 + v65[15]);
          *v52 = v50;
          v52[1] = v53;
          v67 = 12;
          v54 = sub_8574();
          (*(v26 + 8))(v63, v64);
          *(v18 + v65[16]) = v54;
          sub_582C(v18, v25);
          sub_4340(v66);
          return sub_36B4(v18);
        }
      }

      (*(v26 + 8))(v27, v46);
      v40 = 1;
      v41 = 1;
    }
  }

  v47 = v56;
  sub_4340(v66);

  if (!v47)
  {
  }

  v48 = v65;
  if (v40)
  {
    result = sub_74C4(v18 + v65[10]);
    if ((v41 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v41)
  {
    return result;
  }

  return sub_74C4(v18 + v48[11]);
}

uint64_t sub_74C4(uint64_t a1)
{
  v2 = sub_1C78(&qword_101C8, &qword_8D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_752C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C78(&qword_101C8, &qword_8D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShazamSuccessfulMatchModel.serializedData.getter()
{
  sub_8284();
  swift_allocObject();
  sub_8274();
  type metadata accessor for ShazamSuccessfulMatchModel(0);
  sub_768C(&qword_10368, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
  v0 = sub_8264();

  return v0;
}

uint64_t sub_768C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C78(&qword_101C8, &qword_8D68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_77E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1C78(&qword_101C8, &qword_8D68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7894(uint64_t a1)
{
  sub_79C4(319, &qword_103D8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_796C(319);
    if (v2 <= 0x3F)
    {
      sub_79C4(319, &unk_103E8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_796C(uint64_t a1)
{
  if (!qword_103E0)
  {
    sub_8294();
    v1 = sub_84E4();
    if (!v2)
    {
      atomic_store(v1, &qword_103E0);
    }
  }
}

void sub_79C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_84E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10448;
  if (!qword_10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10448);
  }

  return result;
}

unint64_t sub_7BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10450;
  if (!qword_10450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10450);
  }

  return result;
}

unint64_t sub_7C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10458;
  if (!qword_10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10458);
  }

  return result;
}

unint64_t sub_7C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10460;
  if (!qword_10460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10460);
  }

  return result;
}

unint64_t sub_7CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10468;
  if (!qword_10468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10468);
  }

  return result;
}

unint64_t sub_7D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10470;
  if (!qword_10470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10470);
  }

  return result;
}

unint64_t sub_7D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10478;
  if (!qword_10478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10478);
  }

  return result;
}

uint64_t sub_7DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_85C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_85C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_85C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_85C4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_85C4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_85C4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_85C4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_85C4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_85C4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_85C4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_85C4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_85C4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000009D40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_85C4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}