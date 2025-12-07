double sub_10047A8AC()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

id sub_10047AA74(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

uint64_t type metadata accessor for ChapterScrubbingView(uint64_t a1)
{
  result = qword_100AE5480;
  if (!qword_100AE5480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047AC3C(uint64_t a1)
{
  sub_1002B3658(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for REActionMenuState(319);
    if (v2 <= 0x3F)
    {
      sub_10047AD48(319);
      if (v3 <= 0x3F)
      {
        sub_10024BC28();
        if (v4 <= 0x3F)
        {
          sub_10000A7C4(319, &qword_100AD7620, UIView_ptr);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGRect(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ChromeStyle(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10047AD48(uint64_t a1)
{
  if (!qword_100AE5490)
  {
    type metadata accessor for ChapterScrubbingState(255);
    sub_10047D9C0(&unk_100AE5498, type metadata accessor for ChapterScrubbingState, &protocol conformance descriptor for ChapterScrubbingState);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE5490);
    }
  }
}

double sub_10047ADF8@<D0>(uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079BE54();
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  result = *&v8;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_10047AE70()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE5410);
  sub_100008B98(v0, qword_100AE5410);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t sub_10047AEF4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = a1;
  v46 = sub_10079BED4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v4;
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChapterScrubbingView(0);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = v7;
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + *(v9 + 20));
  swift_getKeyPath();
  v49[0] = v10;
  sub_10047D9C0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v11 = *(v10 + 328);
  if (v11 >> 62)
  {
    v12 = (v11 & 0xC000000000000000) == 0x4000000000000000;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    swift_getKeyPath();
    v49[0] = v10;
    sub_100797A14();

    v13 = 312;
  }

  else
  {
    swift_getKeyPath();
    v49[0] = v10;
    sub_100797A14();

    v13 = 304;
  }

  v14 = *(v10 + v13);
  sub_10000E3E8((v2 + *(v6 + 28)), *(v2 + *(v6 + 28) + 24));
  if (BookActionMenuDataSource.isRightToLeft()())
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

  v16 = fabs(v14) / 0.3;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = sin(v16 * 3.14159265 * 0.5) * 35.0;
  if (v15 <= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = -v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v49);

  v19 = *(v49[0] + 16);

  sub_10079BEB4();
  v21 = v20;
  swift_getKeyPath();
  v49[0] = v10;
  sub_100797A14();

  v22 = *(v10 + 328);
  v23 = 0.0;
  if (v22 != 0x8000000000000008)
  {
    if (!(v22 >> 62) || (v22 & 0xC000000000000000) == 0x4000000000000000)
    {
      v26 = floor(v19 * 20.0 + v21);
      if (v15 <= 0.0)
      {
        v23 = v26;
      }

      else
      {
        v23 = -v26;
      }
    }

    else
    {
      swift_getKeyPath();
      v49[0] = v10;
      sub_1002B6C38(v22);
      sub_100797A14();

      v24 = *(v10 + 280);
      sub_1002B6C54(v22);
      v25 = floor(v18);
      if (v24 >= 2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v25;
      }
    }
  }

  swift_getKeyPath();
  v49[0] = v10;
  sub_100797A14();

  v27 = *(v10 + 328);
  if (!(v27 >> 62) || (v27 & 0xC000000000000000) == 0x4000000000000000)
  {
    v29 = 20.0;
    if (v15 >= 0.0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v29 = -v29;
    goto LABEL_33;
  }

  v28 = ceil(fabs(v23) / v19);
  if (v28 <= 5.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 5.0;
  }

  if (v15 < 0.0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v30 = sub_10079E474();
  v31 = v47;
  *v47 = v30;
  v31[1] = v32;
  v41[2] = *(sub_1001F1160(&qword_100AE54E0, &unk_100828430) + 44);
  v49[0] = 0;
  v49[1] = v19;
  v41[1] = swift_getKeyPath();
  v33 = v8;
  sub_10047D0C4(v3, v8);
  v34 = v44;
  v35 = v46;
  (*(v44 + 16))(v5, v48, v46);
  v36 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v37 = (v43 + *(v34 + 80) + v36) & ~*(v34 + 80);
  v38 = (v45 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10047D128(v33, v39 + v36);
  (*(v34 + 32))(v39 + v37, v5, v35);
  *(v39 + v38) = v23;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  sub_1001F1160(&qword_100AE54E8, &qword_100828458);
  sub_1001F1160(&qword_100AE54F0, &unk_100828460);
  sub_10047D31C();
  sub_10047D3A0();
  return sub_10079E264();
}

double sub_10047B508()
{
  v1 = *(v0 + *(type metadata accessor for ChapterScrubbingView(0) + 20));
  swift_getKeyPath();
  sub_10047D9C0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v2 = *(v1 + 328);
  result = 0.0;
  if (v2 != 0x8000000000000008)
  {
    result = 3.0;
    if (v2 >> 62)
    {
      v4 = (v2 & 0xC000000000000000) == 0x4000000000000000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      swift_getKeyPath();
      sub_1002B6C38(v2);
      sub_100797A14();
      sub_1002B6C54(v2);

      result = 0.0;
      if (*(v1 + 280) < 2u)
      {
        return 3.0;
      }
    }
  }

  return result;
}

void *sub_10047B644(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result[2] >= 3uLL)
  {
    sub_10047DA80();
    result = sub_1007A2064();
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_10047DA80();
    sub_1007A2064();
    sub_1007A2064();
    sub_10079E4C4();
    v6 = sub_10079E4D4();

    return v6;
  }

  return result;
}

uint64_t sub_10047B7C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>, double a5@<D1>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for ChapterScrubbingView(0);
  return sub_10047B834(v11, a3, a6, a4, a5, *(a2 + *(v12 + 36)), *(a2 + *(v12 + 36) + 8), *(a2 + *(v12 + 36) + 16), *(a2 + *(v12 + 36) + 24));
}

uint64_t sub_10047B834@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v153 = a2;
  v165 = a3;
  v145 = sub_1001F1160(&qword_100AE55B0, &qword_1008284E8);
  __chkstk_darwin(v145);
  v19 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v148 = &v139 - v21;
  __chkstk_darwin(v22);
  v147 = (&v139 - v23);
  __chkstk_darwin(v24);
  v146 = &v139 - v25;
  v26 = sub_1001F1160(&qword_100AE5560, &qword_100828498);
  __chkstk_darwin(v26);
  v152 = (&v139 - v27);
  v164 = sub_1001F1160(&qword_100AE55B8, &qword_1008284F0);
  __chkstk_darwin(v164);
  v163 = &v139 - v28;
  v29 = sub_1001F1160(&qword_100AE55C0, &qword_1008284F8);
  __chkstk_darwin(v29);
  v158 = &v139 - v30;
  v31 = sub_1001F1160(&qword_100AE5520, &qword_100828478);
  __chkstk_darwin(v31);
  v159 = &v139 - v32;
  v157 = sub_1001F1160(&qword_100AE5530, &qword_100828480);
  __chkstk_darwin(v157);
  v149 = &v139 - v33;
  v34 = sub_1001F1160(&qword_100AE5510, &qword_100828470);
  __chkstk_darwin(v34 - 8);
  v36 = &v139 - v35;
  v37 = type metadata accessor for ChapterScrubbingView(0);
  __chkstk_darwin(v37);
  v151 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v139 - v40;
  v167 = v42;
  v168 = v9;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v172);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v44 = v172;
  v45 = *(v172 + 16);
  if (v45 <= a1)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_13;
  }

  v144 = v19;
  v155 = v29;
  v161 = v31;
  v162 = v36;
  v46 = *(v172 + 8 * a1 + 32);
  v19 = (v45 - 1);
  v47 = v167;
  v48 = v168;
  KeyPath = &v168[v167[7]];
  sub_10000E3E8(KeyPath, *(KeyPath + 3));
  v49 = BookActionMenuDataSource.isRightToLeft()();
  v160 = v46;
  v142 = sub_10047D8D0(v46, v49);
  v143 = v50;
  v51 = *(v48 + v47[5]);
  swift_getKeyPath();
  v172 = v51;
  v154 = sub_10047D9C0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v51 + 328) == 0x8000000000000008)
  {

    v31 = sub_10079E4E4();
  }

  else
  {
    v31 = sub_10047B644(v44, a1, v19, v52, v53);
  }

  v36 = v41;
  v54 = a1 * a5 + a4;
  v166 = a1;
  v55 = v19 == a1;
  LODWORD(a1) = v19 == a1 || a1 == 0;
  if (v55)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v54;
  }

  if (qword_100AD16F0 != -1)
  {
    goto LABEL_29;
  }

LABEL_13:
  v56 = sub_10079ACE4();
  sub_100008B98(v56, qword_100AE5410);
  sub_10047D0C4(v168, v36);
  v57 = sub_10079ACC4();
  v58 = sub_1007A29A4();
  v59 = os_log_type_enabled(v57, v58);
  v156 = v26;
  if (v59)
  {
    v141 = v19 == v166;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v150 = v31;
    v62 = v61;
    v172 = v61;
    *v60 = 136315906;
    v63 = a1;
    a1 = *&v36[v167[5]];
    swift_getKeyPath();
    v170 = a1;
    sub_100797A14();

    v64 = *(a1 + 232);
    v65 = *(a1 + 240);
    v66 = *(a1 + 248);
    LODWORD(a1) = v63;
    v67 = BookMovementState.description.getter(v64, v65, v66);
    v69 = v68;
    sub_10047D964(v36);
    v70 = sub_1000070F4(v67, v69, &v172);

    *(v60 + 4) = v70;
    *(v60 + 12) = 2048;
    v71 = v160;
    *(v60 + 14) = v160;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v10;
    *(v60 + 32) = 1024;
    *(v60 + 34) = v141;
    _os_log_impl(&_mh_execute_header, v57, v58, "makePageView for movement %s page %ld @ x %f isLastPageOfExit? %{BOOL}d", v60, 0x26u);
    sub_1000074E0(v62);
    v31 = v150;
  }

  else
  {

    sub_10047D964(v36);
    v71 = v160;
  }

  v72 = sub_10047B508();
  sub_10000E3E8(KeyPath, *(KeyPath + 3));
  v73 = 0;
  v74 = 0.0;
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F6C4();
    v74 = v75;

    swift_unknownObjectRelease();
  }

  sub_10000E3E8(KeyPath, *(KeyPath + 3));
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F6A4();
    v73 = v76;

    swift_unknownObjectRelease();
  }

  if (v166)
  {
    sub_10000E3E8(KeyPath, *(KeyPath + 3));
    if (swift_weakLoadStrong() && (sub_10079F714(), swift_getObjectType(), v77 = sub_10079F684(), swift_unknownObjectRelease(), , v77 == 2))
    {
      v78 = a1;
      v140 = a1;
      v79 = v167;
      v80 = *&v168[v167[10]];
      v81 = v151;
      sub_10047D0C4(v168, v151);
      v82 = sub_1001F1160(&qword_100AE5580, &qword_1008284A8);
      v150 = v31;
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v83 = v80;
      v84 = v152;
      sub_1007A33F4();
      *v84 = v83;
      v84[1] = v72;
      v85 = v84 + *(v82 + 40);
      *v85 = sub_10079C8D4();
      *(v85 + 1) = 0;
      v85[16] = 0;
      v168 = &v85[*(sub_1001F1160(&qword_100AE55C8, &qword_100828500) + 44)];
      v86 = *(v81 + v79[10]);
      v167 = v79[7];
      v87 = v167 + v81;
      v88 = v81;
      v89 = v146;
      sub_100009864(v87, (v146 + 8));
      v90 = v86;
      sub_10047CCBC(v142, v78);
      *v89 = v90;
      type metadata accessor for PageSnapshotLoader(0);
      sub_10047D9C0(&unk_100AE2970, type metadata accessor for PageSnapshotLoader, &protocol conformance descriptor for PageSnapshotLoader);
      v166 = v90;
      v89[6] = sub_10079C024();
      v89[7] = v91;
      type metadata accessor for ScrubPageContentView(0);
      sub_1007A33F4();
      sub_10079DD64();
      v92 = sub_10079DE24();

      v93 = swift_getKeyPath();
      v94 = sub_1001F1160(&qword_100AE55D0, &qword_100828538);
      v95 = (v89 + *(v94 + 36));
      *v95 = v93;
      v95[1] = v92;
      v96 = v145;
      v97 = (v89 + *(v145 + 36));
      *v97 = 0.0;
      v97[1] = v74 + a7;
      sub_10079DD64();

      v98 = v167 + v88;
      v99 = v147;
      sub_100009864(v98, (v147 + 1));
      sub_10047CCBC(v143, v140);
      *v99 = v166;
      v99[6] = sub_10079C024();
      v99[7] = v100;
      sub_1007A33F4();
      sub_10079DD64();
      v101 = sub_10079DE24();

      v102 = swift_getKeyPath();
      v103 = (v99 + *(v94 + 36));
      *v103 = v102;
      v103[1] = v101;
      v104 = (v99 + *(v96 + 36));
      *v104 = 0.0;
      v104[1] = v74 + a7;
      sub_10079DDD4();

      v105 = v148;
      sub_1000077D8(v89, v148, &qword_100AE55B0, &qword_1008284E8);
      v106 = v144;
      sub_1000077D8(v99, v144, &qword_100AE55B0, &qword_1008284E8);
      v107 = v168;
      *v168 = v73;
      v108 = sub_1001F1160(&qword_100AE55D8, &qword_100828540);
      sub_1000077D8(v105, v107 + v108[12], &qword_100AE55B0, &qword_1008284E8);
      *(v107 + v108[16]) = v73;
      sub_1000077D8(v106, v107 + v108[20], &qword_100AE55B0, &qword_1008284E8);
      *(v107 + v108[24]) = v73;
      sub_100007840(v99, &qword_100AE55B0, &qword_1008284E8);
      sub_100007840(v89, &qword_100AE55B0, &qword_1008284E8);
      sub_100007840(v106, &qword_100AE55B0, &qword_1008284E8);
      sub_100007840(v105, &qword_100AE55B0, &qword_1008284E8);
      sub_10047D964(v151);
      v109 = sub_1001F1160(&qword_100AE5570, &qword_1008284A0);
      v110 = v152;
      v111 = v152 + *(v109 + 36);
      *v111 = v10;
      *(v111 + 1) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v150;
      v113 = (v110 + *(v156 + 36));
      *v113 = sub_10047DC18;
      v113[1] = v112;
      sub_1000077D8(v110, v158, &qword_100AE5560, &qword_100828498);
      swift_storeEnumTagMultiPayload();
      sub_10047D730(&qword_100AE5528, &qword_100AE5530, &qword_100828480, sub_10047D5C0);
      sub_10047D730(&qword_100AE5558, &qword_100AE5560, &qword_100828498, sub_10047D678);

      v114 = v159;
      sub_10079CCA4();
      sub_1000077D8(v114, v163, &qword_100AE5520, &qword_100828478);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE5590, &qword_1008284B0);
      sub_10047D4DC();
      sub_10047D730(&qword_100AE5588, &qword_100AE5590, &qword_1008284B0, sub_10047D7B4);
      v115 = v162;
      sub_10079CCA4();

      sub_100007840(v114, &qword_100AE5520, &qword_100828478);
      v116 = v110;
      v117 = &qword_100AE5560;
      v118 = &qword_100828498;
    }

    else
    {
      v119 = *&v168[v167[10]];
      sub_100009864(KeyPath, v173);
      v120 = v119;
      sub_10047CCBC(v71, a1);
      sub_10079BEB4();
      v122 = v121;
      v124 = v123;
      v172 = v120;
      type metadata accessor for PageSnapshotLoader(0);
      sub_10047D9C0(&unk_100AE2970, type metadata accessor for PageSnapshotLoader, &protocol conformance descriptor for PageSnapshotLoader);
      v173[5] = sub_10079C024();
      v173[6] = v125;
      v173[7] = v122;
      v173[8] = v124;
      *&v173[9] = a6;
      *&v173[10] = a7;
      *&v173[11] = a8;
      *&v173[12] = a9;
      *&v173[13] = v72;
      v170 = 112;
      v171 = 0xE100000000000000;
      v169 = v71;
      v174._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v174);

      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

      sub_10079E474();
      *&v173[14] = v10;
      v173[15] = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v31;
      v173[16] = sub_10047DA08;
      v173[17] = v126;
      sub_1000077D8(&v172, v163, &qword_100AE5590, &qword_1008284B0);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE5590, &qword_1008284B0);
      sub_10047D4DC();
      sub_10047D730(&qword_100AE5588, &qword_100AE5590, &qword_1008284B0, sub_10047D7B4);
      v115 = v162;
      sub_10079CCA4();
      v116 = &v172;
      v117 = &qword_100AE5590;
      v118 = &qword_1008284B0;
    }
  }

  else
  {
    v127 = v167;
    v128 = v168;
    v129 = *&v168[v167[10]];
    sub_1001F1160(&qword_100AE5550, &qword_100828490);
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v130 = v129;
    v131 = v149;
    sub_1007A33F4();
    *v131 = v130;
    v132 = *(v128 + v127[8]);
    *(v131 + 8) = v72;
    v172 = 112;
    v173[0] = 0xE100000000000000;
    v170 = v71;
    v133 = v132;
    v175._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v175);

    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

    sub_10079E474();
    *(v131 + 16) = v132;
    *(v131 + 24) = 0;
    *(v131 + 32) = a7;
    v134 = v131 + *(sub_1001F1160(&qword_100AE5540, &qword_100828488) + 36);
    *v134 = v10;
    *(v134 + 8) = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = v31;
    v136 = (v131 + *(v157 + 36));
    *v136 = sub_10047DC18;
    v136[1] = v135;
    sub_1000077D8(v131, v158, &qword_100AE5530, &qword_100828480);
    swift_storeEnumTagMultiPayload();
    sub_10047D730(&qword_100AE5528, &qword_100AE5530, &qword_100828480, sub_10047D5C0);
    sub_10047D730(&qword_100AE5558, &qword_100AE5560, &qword_100828498, sub_10047D678);

    v137 = v159;
    sub_10079CCA4();
    sub_1000077D8(v137, v163, &qword_100AE5520, &qword_100828478);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AE5590, &qword_1008284B0);
    sub_10047D4DC();
    sub_10047D730(&qword_100AE5588, &qword_100AE5590, &qword_1008284B0, sub_10047D7B4);
    v115 = v162;
    sub_10079CCA4();

    sub_100007840(v137, &qword_100AE5520, &qword_100828478);
    v116 = v131;
    v117 = &qword_100AE5530;
    v118 = &qword_100828480;
  }

  sub_100007840(v116, v117, v118);
  return sub_10047DA10(v115, v165);
}

char *sub_10047CCBC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for ChapterScrubbingView(0);
  v7 = *(v2 + *(v6 + 24) + 8);
  v8 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (*(v9 + 16) && (v10 = sub_1002F9CDC(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    sub_100009864(v3 + *(v6 + 28), v33);
    v13 = sub_10022569C(v33, v33[3]);
    v14 = __chkstk_darwin(v13);
    v16 = (&v32[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v19 = type metadata accessor for BookActionMenuDataSource();
    v32[3] = v19;
    v32[4] = &off_100A19810;
    v32[0] = v18;
    type metadata accessor for PageSnapshotLoader(0);
    v20 = swift_allocObject();
    v21 = sub_10022569C(v32, v19);
    v22 = __chkstk_darwin(v21);
    v24 = (&v32[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v12 = sub_100751964(*v24, a1, a2 & 1, v20);
    sub_1000074E0(v32);
    sub_1000074E0(v33);
    if (qword_100AD16F0 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AE5410);
    v27 = sub_10079ACC4();
    v28 = sub_1007A2994();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v27, v28, "created new loader for index %ld", v29, 0xCu);
    }
  }

  return v12;
}

uint64_t sub_10047CFD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10047D0C4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10047D128(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10047D18C;
  a2[1] = v7;
  return result;
}

uint64_t sub_10047D0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChapterScrubbingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047D128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChapterScrubbingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047D200@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChapterScrubbingView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10079BED4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10047B7C0(a1, v2 + v6, v2 + v9, v11, v12, a2);
}

unint64_t sub_10047D31C()
{
  result = qword_100AE54F8;
  if (!qword_100AE54F8)
  {
    sub_1001F1234(&qword_100AE54E8, &qword_100828458);
    sub_100258384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE54F8);
  }

  return result;
}

unint64_t sub_10047D3A0()
{
  result = qword_100AE5500;
  if (!qword_100AE5500)
  {
    sub_1001F1234(&qword_100AE54F0, &unk_100828460);
    sub_10047D424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5500);
  }

  return result;
}

unint64_t sub_10047D424()
{
  result = qword_100AE5508;
  if (!qword_100AE5508)
  {
    sub_1001F1234(&qword_100AE5510, &qword_100828470);
    sub_10047D4DC();
    sub_10047D730(&qword_100AE5588, &qword_100AE5590, &qword_1008284B0, sub_10047D7B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5508);
  }

  return result;
}

unint64_t sub_10047D4DC()
{
  result = qword_100AE5518;
  if (!qword_100AE5518)
  {
    sub_1001F1234(&qword_100AE5520, &qword_100828478);
    sub_10047D730(&qword_100AE5528, &qword_100AE5530, &qword_100828480, sub_10047D5C0);
    sub_10047D730(&qword_100AE5558, &qword_100AE5560, &qword_100828498, sub_10047D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5518);
  }

  return result;
}

unint64_t sub_10047D5C0()
{
  result = qword_100AE5538;
  if (!qword_100AE5538)
  {
    sub_1001F1234(&qword_100AE5540, &qword_100828488);
    sub_100005920(&qword_100AE5548, &qword_100AE5550, &qword_100828490, &unk_1008392F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5538);
  }

  return result;
}

unint64_t sub_10047D678()
{
  result = qword_100AE5568;
  if (!qword_100AE5568)
  {
    sub_1001F1234(&qword_100AE5570, &qword_1008284A0);
    sub_100005920(&qword_100AE5578, &qword_100AE5580, &qword_1008284A8, &unk_1008392F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5568);
  }

  return result;
}

uint64_t sub_10047D730(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10047D7B4()
{
  result = qword_100AE5598;
  if (!qword_100AE5598)
  {
    sub_1001F1234(&qword_100AE55A0, &qword_1008284B8);
    sub_10047D840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5598);
  }

  return result;
}

unint64_t sub_10047D840()
{
  result = qword_100AE55A8;
  if (!qword_100AE55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE55A8);
  }

  return result;
}

uint64_t sub_10047D894(void *a1, uint64_t a2)
{
  result = sub_10079BD34();
  if ((result & 1) == 0)
  {

    return sub_10079BD64();
  }

  return result;
}

uint64_t sub_10047D8D0(uint64_t a1, char a2)
{
  v3 = a1;
  if (_s5Books17REActionMenuStateC9pageCountSivpfi_0() == a1)
  {
    v4 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    return v4;
  }

  v6 = v3 & 0x8000000000000001;
  if ((v3 & 0x8000000000000001) == 1)
  {
    v6 = v3 - 1;
    if (v3 == 1)
    {
      v7 = 1;
      v3 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_9:
    v7 = v3;
    v3 = v6;
  }

LABEL_10:
  if (a2)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047D964(uint64_t a1)
{
  v2 = type metadata accessor for ChapterScrubbingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10047D9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10047DA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE5510, &qword_100828470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10047DA80()
{
  result = qword_100AE55E0;
  if (!qword_100AE55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE55E0);
  }

  return result;
}

unint64_t sub_10047DB00()
{
  result = qword_100AE55F8;
  if (!qword_100AE55F8)
  {
    sub_1001F1234(&qword_100AE5600, &qword_1008285F0);
    sub_10047DB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE55F8);
  }

  return result;
}

unint64_t sub_10047DB8C()
{
  result = qword_100AE5608;
  if (!qword_100AE5608)
  {
    sub_1001F1234(&qword_100AE5610, &qword_1008285F8);
    sub_1002AB07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5608);
  }

  return result;
}

double static RootBarItemsProvider.title(for:)@<D0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v6)
  {

    v7 = 14;
  }

  else
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v7 == 16)
    {
      v7 = 15;
    }
  }

  sub_10047E894(v7, v11);
  v8 = v11[1];
  *a3 = v11[0];
  a3[1] = v8;
  result = *&v12;
  v10 = v13;
  a3[2] = v12;
  a3[3] = v10;
  return result;
}

unint64_t static RootBarItemsProvider.itemIdentifier(forCollectionID:)(uint64_t a1, void *a2)
{
  v4 = sub_1007A2214();
  v5 = _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0(v4);
  v7 = v6;

  if (!v7)
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    sub_1007A23D4(v9);
    return 0x3A6D6F74737563;
  }

  return v5;
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.shortTabBarValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1007A3454();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.shortZoomedTabBarValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1007A3454();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.init(tabBar:sidebar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *(a3 - 8);
  v7 = *(v14 + 32);
  v7(a4, a1);
  v10 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a3, v8, v9);
  (v7)(a4 + v10[7], a2, a3);
  v13 = *(v14 + 56);
  v13(a4 + v10[8], 1, 1, a3);
  v11 = a4 + v10[9];

  return (v13)(v11, 1, 1, a3);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.init(tabBar:shortTabBar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *(a3 - 8);
  (*(v16 + 16))(a4, a1);
  v10 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a3, v8, v9);
  v11 = *(v16 + 32);
  v11(a4 + v10[7], a1, a3);
  v12 = v10[8];
  v11(a4 + v12, a2, a3);
  v15 = *(v16 + 56);
  v15(a4 + v12, 0, 1, a3);
  v13 = a4 + v10[9];

  return v15(v13, 1, 1, a3);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.init(tabBar:shortZoomedTabBar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *(a3 - 8);
  (*(v15 + 16))(a4, a1);
  v10 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a3, v8, v9);
  v11 = *(v15 + 32);
  v11(a4 + v10[7], a1, a3);
  v14 = *(v15 + 56);
  v14(a4 + v10[8], 1, 1, a3);
  v12 = v10[9];
  v11(a4 + v12, a2, a3);

  return (v14)(a4 + v12, 0, 1, a3);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, a2, v6);
  return RootBarItemsProvider.InterfaceDependentValue.init(tabBar:sidebar:)(v8, a1, a2, a3);
}

uint64_t RootBarItemsProvider.InterfaceDependentValue.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - v11;
  if ((*(v6 + 48))(v10) == 1)
  {
    v13 = sub_1007A3454();
    (*(*(v13 - 8) + 8))(a1, v13);
    v16 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a2, v14, v15);
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }

  else
  {
    v19 = *(v6 + 32);
    v19(v12, a1, a2);
    v19(v8, v12, a2);
    RootBarItemsProvider.InterfaceDependentValue.init(_:)(v8, a2, a3);
    v22 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a2, v20, v21);
    return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
  }
}

unint64_t sub_10047E6DC(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 0x736B6F6F62;
      break;
    case 2:
      result = 0x6F6F626F69647561;
      break;
    case 3:
      result = 0x61676E616DLL;
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x7972617262696CLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x467972617262696CLL;
      break;
    case 8:
      result = 0x427972617262696CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x507972617262696CLL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x656C6C6F4377656ELL;
      break;
    case 14:
      result = 0x6D6F74737563;
      break;
    case 15:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10047E894(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v95 = sub_100796CF4();
  v4 = *(v95 - 8);
  __chkstk_darwin(v95);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v83 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  switch(v3)
  {
    case 0:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v13, v16, v10);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_100796C94();
      v19 = sub_1007A22B4();
      v20 = v4;
      v21 = v19;
      v23 = v22;
      (*(v20 + 8))(v9, v95);
      goto LABEL_14;
    case 1:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v58 = swift_getObjCClassFromMetadata();
      v59 = [objc_opt_self() bundleForClass:v58];
      v26 = v95;
      (*(v4 + 16))(v6, v9, v95);
      v60 = "Book Store tab/sidebar item";
      goto LABEL_10;
    case 2:
      sub_1007A2154();
      sub_100796C94();
      v94 = v16;
      v29 = *(v11 + 16);
      v89 = (v11 + 16);
      v90 = v29;
      v29(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v30 = swift_getObjCClassFromMetadata();
      v88 = v30;
      v87 = objc_opt_self();
      v31 = [v87 bundleForClass:v30];
      v85 = *(v4 + 16);
      v86 = v4 + 16;
      v32 = v95;
      v85(v6, v9, v95);
      v33 = sub_1007A22D4(v13, 0, 0, v31, v6, "Audiobook Store floating tab item", 33, 2);
      v34 = v4;
      v21 = v33;
      v23 = v35;
      v84 = *(v34 + 8);
      v91 = (v34 + 8);
      v84(v9, v32);
      v93 = *(v11 + 8);
      v36 = v94;
      (v93)(v94, v10);
      sub_1007A2154();
      sub_100796C94();
      v90(v13, v36, v10);
      v37 = [v87 bundleForClass:v88];
      v38 = v95;
      v85(v6, v9, v95);
      v39 = sub_1007A22D4(v13, 0, 0, v37, v6, "Audiobook Store tab item", 24, 2);
      v41 = v40;
      v84(v9, v38);
      (v93)(v94, v10);

      goto LABEL_15;
    case 3:
      sub_1007A2154();
      sub_100796C94();
      v42 = *(v11 + 16);
      v90 = (v11 + 16);
      v91 = v42;
      v92 = v10;
      v42(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v43 = swift_getObjCClassFromMetadata();
      v88 = v43;
      v87 = objc_opt_self();
      v44 = [v87 bundleForClass:v43];
      v45 = v4;
      v46 = v95;
      (*(v4 + 16))(v6, v9, v95);
      v21 = sub_1007A22D4(v13, 0, 0, v44, v6, "Manga Store tab/sidebar item", 28, 2);
      v23 = v47;
      v89 = *(v45 + 8);
      v89(v9, v46);
      v48 = v11 + 8;
      v49 = *(v11 + 8);
      v93 = v48;
      v50 = v16;
      v51 = v16;
      v52 = v92;
      v49(v51, v92);
      v94 = v50;
      sub_1007A2154();
      sub_100796C94();
      v91(v13, v50, v52);
      v53 = [v87 bundleForClass:v88];
      sub_100796C94();
      v54 = sub_1007A22B4();
      v56 = v55;
      v89(v9, v95);
      v49(v94, v92);

      v39 = 0;
      v41 = 0;
      goto LABEL_16;
    case 4:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v24 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v24];
      v26 = v95;
      (*(v4 + 16))(v6, v9, v95);
      v27 = sub_1007A22D4(v13, 0, 0, v25, v6, "Search tab/sidebar item", 23, 2);
      goto LABEL_13;
    case 5:
      sub_1007A2154();
      sub_100796C94();
      v93 = v11;
      v61 = *(v11 + 16);
      v89 = (v11 + 16);
      v90 = v61;
      v61(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v62 = swift_getObjCClassFromMetadata();
      v88 = v62;
      v87 = objc_opt_self();
      v63 = [v87 bundleForClass:v62];
      v64 = v16;
      v85 = *(v4 + 16);
      v86 = v4 + 16;
      v65 = v95;
      v85(v6, v9, v95);
      v66 = sub_1007A22D4(v13, 0, 0, v63, v6, "Library tab item", 16, 2);
      v67 = v4;
      v21 = v66;
      v23 = v68;
      v69 = *(v67 + 8);
      v91 = (v67 + 8);
      v69(v9, v65);
      v70 = *(v93 + 8);
      v92 = v10;
      v93 += 8;
      v84 = v70;
      v70(v64, v10);
      v94 = v64;
      sub_1007A2154();
      sub_100796C94();
      v90(v13, v64, v10);
      v71 = [v87 bundleForClass:v88];
      v85(v6, v9, v95);
      v72 = sub_1007A22D4(v13, 0, 0, v71, v6, "Library sidebar item", 20, 2);
      v74 = v73;
      v69(v9, v95);
      v84(v94, v92);
      goto LABEL_19;
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v80 = swift_getObjCClassFromMetadata();
      v81 = [objc_opt_self() bundleForClass:v80];
      v26 = v95;
      (*(v4 + 16))(v6, v9, v95);
      v60 = "Library sidebar item";
      v76 = v13;
      v77 = v81;
      v78 = v6;
      v79 = 20;
      goto LABEL_12;
    case 7:
      sub_1007A2154();
      (*(v11 + 16))(v13, v16, v10);
      sub_100796C94();
      v21 = sub_1007A22B4();
      v23 = v57;
      goto LABEL_14;
    case 13:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v13, v16, v10);
      type metadata accessor for BundleFinder();
      v75 = swift_getObjCClassFromMetadata();
      v59 = [objc_opt_self() bundleForClass:v75];
      v26 = v95;
      (*(v4 + 16))(v6, v9, v95);
      v60 = "New Collection sidebar item";
LABEL_10:
      v76 = v13;
      v77 = v59;
      v78 = v6;
      v79 = 27;
LABEL_12:
      v27 = sub_1007A22D4(v76, 0, 0, v77, v78, v60, v79, 2);
LABEL_13:
      v82 = v4;
      v21 = v27;
      v23 = v28;
      (*(v82 + 8))(v9, v26);
LABEL_14:
      (*(v11 + 8))(v16, v10);

      v39 = 0;
      v41 = 0;
LABEL_15:
      v54 = 0;
      v56 = 0;
LABEL_16:
      v72 = v21;
      v74 = v23;
      break;
    default:
      v21 = 0;
      v23 = 0;
      v72 = 0;
      v74 = 0;
LABEL_19:
      v39 = 0;
      v41 = 0;
      v54 = 0;
      v56 = 0;
      break;
  }

  *a2 = v21;
  a2[1] = v23;
  a2[2] = v72;
  a2[3] = v74;
  a2[4] = v39;
  a2[5] = v41;
  a2[6] = v54;
  a2[7] = v56;
}

double sub_10047F800@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 0xE90000000000006CLL;
  v4 = 0x6C69662E656D6F68;
  v5 = 1701670760;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v2 = 0xE300000000000000;
      v3 = 0xE800000000000000;
      v4 = 0x6C6C69662E676162;
      v5 = 6775138;
      break;
    case 2:
    case 9:
      v3 = 0xEA00000000007365;
      v4 = 0x6E6F687064616568;
      goto LABEL_4;
    case 3:
      v3 = 0xEA00000000006C6CLL;
      v2 = 0xE500000000000000;
      v5 = 0x61676E616DLL;
      v4 = 0x69662E61676E616DLL;
      break;
    case 4:
      v3 = 0xEF7373616C67676ELL;
      v4 = 0x697966696E67616DLL;
      goto LABEL_11;
    case 5:
      v3 = 0x80000001008D6AE0;
      v4 = 0xD000000000000013;
      v2 = 0xEE006C6163697472;
      v5 = 0x65762E736B6F6F62;
      break;
    case 6:
      v3 = 0x80000001008C25E0;
      v4 = 0xD000000000000014;
      goto LABEL_11;
    case 7:
      v4 = 0xD000000000000010;
      v3 = 0x80000001008C2680;
      v5 = 0xD000000000000010;
      v2 = 0x80000001008C2680;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v4 = 1802465122;
      v5 = 1802465122;
      break;
    case 10:
      v3 = 0xE800000000000000;
      v4 = 0x747865742E636F64;
      v5 = 0x747865742E636F64;
      v2 = 0xE800000000000000;
      break;
    case 11:
      v3 = 0xEA00000000007365;
      v4 = 0x6761702E6B6F6F62;
LABEL_4:
      v5 = v4;
      v2 = 0xEA00000000007365;
      break;
    case 12:
      v3 = 0x80000001008C2920;
      v4 = 0xD000000000000015;
LABEL_11:
      v5 = v4;
      v2 = v3;
      break;
    case 13:
      v3 = 0xE400000000000000;
      v4 = 1937075312;
      v5 = 1937075312;
      break;
    default:
      v4 = 0;
      v3 = 0;
      v5 = 0;
      v2 = 0;
      break;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

uint64_t sub_10047FA38(unsigned __int8 a1)
{
  v68 = sub_100796CF4();
  v2 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v62 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = sub_100799234();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  if (a1 > 2u)
  {
    switch(a1)
    {
      case 3u:
        sub_1007A2154();
        v51 = v6;
        sub_100796C94();
        v52 = v8;
        v36 = v10;
        v54 = v13;
        v37 = v13;
        v56 = v7;
        (*(v8 + 16))(v36, v37, v7);
        type metadata accessor for BundleFinder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v40 = v67;
        v60 = v68;
        (*(v2 + 16))(v67, v51, v68);
        v25 = sub_1007A22D4(v36, 0, 0, v39, v40, "Action item to bring user back to the Manga tab", 47, 2);
        break;
      case 4u:
        sub_1007A2154();
        v51 = v6;
        sub_100796C94();
        v52 = v8;
        v46 = v10;
        v54 = v13;
        v47 = v13;
        v56 = v7;
        (*(v8 + 16))(v46, v47, v7);
        type metadata accessor for BundleFinder();
        v48 = swift_getObjCClassFromMetadata();
        v49 = [objc_opt_self() bundleForClass:v48];
        v50 = v67;
        v60 = v68;
        (*(v2 + 16))(v67, v51, v68);
        v25 = sub_1007A22D4(v46, 0, 0, v49, v50, "Action item to bring user back to the Search tab", 48, 2);
        break;
      case 5u:
        sub_1007A2154();
        v51 = v6;
        sub_100796C94();
        v52 = v8;
        v26 = v10;
        v54 = v13;
        v27 = v13;
        v56 = v7;
        (*(v8 + 16))(v26, v27, v7);
        type metadata accessor for BundleFinder();
        v28 = swift_getObjCClassFromMetadata();
        v29 = [objc_opt_self() bundleForClass:v28];
        v30 = v67;
        v60 = v68;
        (*(v2 + 16))(v67, v51, v68);
        v25 = sub_1007A22D4(v26, 0, 0, v29, v30, "Action item to bring user back to the Library tab", 49, 2);
        break;
      default:
        return v20;
    }

LABEL_17:
    v20 = v25;
    (*(v2 + 8))(v51, v60);
    (*(v52 + 8))(v54, v56);
    return v20;
  }

  switch(a1)
  {
    case 0u:
      sub_1007A2154();
      v51 = v6;
      sub_100796C94();
      v52 = v8;
      v31 = v10;
      v54 = v13;
      v32 = v13;
      v56 = v7;
      (*(v8 + 16))(v31, v32, v7);
      type metadata accessor for BundleFinder();
      v33 = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass:v33];
      v35 = v67;
      v60 = v68;
      (*(v2 + 16))(v67, v51, v68);
      v25 = sub_1007A22D4(v31, 0, 0, v34, v35, "Action item to bring user back to the Home tab", 46, 2);
      goto LABEL_17;
    case 1u:
      sub_1007A2154();
      v51 = v6;
      sub_100796C94();
      v52 = v8;
      v41 = v10;
      v54 = v13;
      v42 = v13;
      v56 = v7;
      (*(v8 + 16))(v41, v42, v7);
      type metadata accessor for BundleFinder();
      v43 = swift_getObjCClassFromMetadata();
      v44 = [objc_opt_self() bundleForClass:v43];
      v45 = v67;
      v60 = v68;
      (*(v2 + 16))(v67, v51, v68);
      v25 = sub_1007A22D4(v41, 0, 0, v44, v45, "Action item to bring user back to the Book Store tab", 52, 2);
      goto LABEL_17;
    case 2u:
      v65 = v7;
      v66 = v2;
      v21 = v16;
      v63 = *(v15 + 104);
      v63(v19, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v16, v17);
      v22 = sub_100799134();
      v23 = *(v15 + 8);
      v64 = v21;
      v23(v19, v21);
      if ((v22 & 1) == 0)
      {
        v24 = v64;
        (v63)(v19, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v64);
        sub_100799134();
        v23(v19, v24);
      }

      sub_1007A2154();
      v51 = v6;
      sub_100796C94();
      v52 = v8;
      v53 = v10;
      v54 = v13;
      v55 = v13;
      v56 = v65;
      (*(v8 + 16))(v53, v55, v65);
      type metadata accessor for BundleFinder();
      v57 = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass:v57];
      v2 = v66;
      v59 = v67;
      v60 = v68;
      (*(v66 + 16))(v67, v51, v68);
      v25 = sub_1007A22D4(v53, 0, 0, v58, v59, "Action item to bring user back to the Audiobooks tab", 52, 2);
      goto LABEL_17;
  }

  return v20;
}

uint64_t sub_100480324(uint64_t a1)
{
  v2 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(a1);
  v3 = v1;
  if (v2 == 0x736B6F6F62 && v1 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v4 = sub_1007A3AB4();

  if (v4)
  {
    return 1;
  }

  if (v2 == 0x6F6F626F69647561 && v3 == 0xEA0000000000736BLL)
  {
    goto LABEL_3;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    return 1;
  }

  if (v2 == 0x61676E616DLL && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = sub_1007A3AB4();

  if (v7)
  {
    return 1;
  }

  if (v2 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {
LABEL_3:

    return 1;
  }

  v8 = sub_1007A3AB4();

  return v8 & 1;
}

uint64_t sub_10048048C(uint64_t a1)
{
  v2 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(a1);
  v3 = v1;
  if (v2 == 0x686372616573 && v1 == 0xE600000000000000)
  {
    goto LABEL_3;
  }

  v4 = sub_1007A3AB4();

  if (v4)
  {
    return 1;
  }

  if (v2 == 1701670760 && v3 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    return 1;
  }

  if (v2 == 0x736B6F6F62 && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = sub_1007A3AB4();

  if (v7)
  {
    return 1;
  }

  if (v2 == 0x6F6F626F69647561 && v3 == 0xEA0000000000736BLL)
  {
    goto LABEL_3;
  }

  v8 = sub_1007A3AB4();

  if (v8)
  {
    return 1;
  }

  if (v2 == 0x61676E616DLL && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v9 = sub_1007A3AB4();

  if (v9)
  {
    return 1;
  }

  if (v2 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {
LABEL_3:

    return 1;
  }

  v10 = sub_1007A3AB4();

  return v10 & 1;
}

unint64_t sub_100480680(char a1)
{
  result = 0x6F6F626F69647561;
  switch(a1)
  {
    case 1:
      result = 0x726F74536B6F6F62;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61676E616DLL;
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x417972617262696CLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x467972617262696CLL;
      break;
    case 8:
      result = 0x427972617262696CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x507972617262696CLL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 1701670760;
      break;
  }

  return result;
}

uint64_t sub_100480858(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*a1);
  v5 = v4;
  if (v3 == _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

Swift::Int sub_1004808E0()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_100480944(uint64_t a1)
{
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_100480998(uint64_t a1)
{
  v2 = *v1;
  sub_1007A3C04();
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v2);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

unint64_t sub_1004809F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100480A28@<X0>(uint64_t *a1@<X8>)
{
  result = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t *sub_100480E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v5 = *a1;
  if (!*(*a1 + 16) || (v8 = sub_10000E53C(25705, 0xE200000000000000), (v9 & 1) == 0) || (sub_100007484(*(v5 + 56) + 32 * v8, v56), (swift_dynamicCast() & 1) == 0))
  {
    result = 0;
    goto LABEL_13;
  }

  v10 = v55;
  v57 = v55;
  if (a3 && (a2 == 28778 && a3 == 0xE200000000000000 || (v11 = sub_1007A3AB4(), v10 = v57, (v11 & 1) != 0)))
  {
    if (v54 == 0x7972617262696CLL && v10 == 0xE700000000000000)
    {
      v12 = 1;
      if (!*(v5 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = sub_1007A3AB4();
      if (!*(v5 + 16))
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_26;
    }
  }

  v14 = sub_10000E53C(7107189, 0xE300000000000000);
  if (v15)
  {
    sub_100007484(*(v5 + 56) + 32 * v14, v56);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v54;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v55;
    }

    else
    {
      v18 = 0;
    }

    v50 = v18;
    v51 = v17;
    if (!*(v5 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_26:
  v50 = 0;
  v51 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_36;
  }

LABEL_27:
  v19 = sub_10000E53C(0x656C746974, 0xE500000000000000);
  if (v20)
  {
    sub_100007484(*(v5 + 56) + 32 * v19, v56);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v54;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v55;
    }

    else
    {
      v23 = 0;
    }

    v48 = v23;
    v49 = v22;
    if (!*(v5 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

LABEL_36:
  v48 = 0;
  v49 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_46;
  }

LABEL_37:
  v24 = sub_10000E53C(0x656D614E6E6F6369, 0xE800000000000000);
  if (v25)
  {
    sub_100007484(*(v5 + 56) + 32 * v24, v56);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v54;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v55;
    }

    else
    {
      v28 = 0;
    }

    v46 = v28;
    v47 = v27;
    if (!*(v5 + 16))
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_46:
  v46 = 0;
  v47 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_56;
  }

LABEL_47:
  v29 = sub_10000E53C(0xD000000000000010, 0x80000001008D6D40);
  if (v30)
  {
    sub_100007484(*(v5 + 56) + 32 * v29, v56);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v54;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v55;
    }

    else
    {
      v33 = 0;
    }

    v44 = v33;
    v45 = v32;
    if ((v12 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_57:
    v52 = a2;
    v34 = v54;

    goto LABEL_58;
  }

LABEL_56:
  v44 = 0;
  v45 = 0;
  if (v12)
  {
    goto LABEL_57;
  }

LABEL_55:
  v34 = v54;
  v52 = 0;
  a3 = 0;
LABEL_58:
  v35 = type metadata accessor for RootBarItem();
  v36 = objc_allocWithZone(v35);
  v37 = v57;
  if (v34 == 0x5F676E6964616572 && v57 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || v34 == 0x776F6E5F64616572 && v37 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    v34 = 1701670760;

    v37 = 0xE400000000000000;
  }

  v38 = &v36[OBJC_IVAR___BKRootBarItem_identifier];
  *v38 = v34;
  v38[1] = v37;
  v36[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
  v39 = &v36[OBJC_IVAR___BKRootBarItem_url];
  *v39 = v51;
  v39[1] = v50;
  v40 = &v36[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v40 = v49;
  v40[1] = v48;
  v41 = &v36[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v41 = v47;
  v41[1] = v46;
  v42 = &v36[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v42 = v45;
  v42[1] = v44;
  v43 = &v36[OBJC_IVAR___BKRootBarItem_countryCode];
  *v43 = v52;
  v43[1] = a3;
  v36[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v53.receiver = v36;
  v53.super_class = v35;
  result = objc_msgSendSuper2(&v53, "init");
LABEL_13:
  *a4 = result;
  return result;
}

uint64_t static RootBarItemsProvider.isDefaultCollection(for:)(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    LOBYTE(v5) = 0;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    v5 = 0x1FE0u >> v6;
    if (v6 > 0x10u)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

uint64_t sub_100481554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1007A2254();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

uint64_t sub_1004815B0(void *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v5)
  {

    v6 = 14;
  }

  else
  {

    LODWORD(v6) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 == 16)
    {
      v6 = 15;
    }

    else
    {
      v6 = v6;
    }
  }

  return a3(v6);
}

uint64_t sub_10048164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1007A2254();
  v7 = v6;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v5, v6);
  if (v8)
  {

    v9 = 14;
  }

  else
  {
    LODWORD(v9) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v5, v7);
    if (v9 == 16)
    {
      v9 = 15;
    }

    else
    {
      v9 = v9;
    }
  }

  return a4(v9) & 1;
}

uint64_t static RootBarItemsProvider.requiresURL(for:)(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    LOBYTE(v5) = 1;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    v5 = 0x1E01Fu >> v6;
    if (v6 > 0x10u)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

double sub_100481A94()
{
  *&xmmword_100AE5618 = 0xD00000000000001CLL;
  *(&xmmword_100AE5618 + 1) = 0x80000001008D6AA0;
  qword_100AE5628 = 0xD000000000000017;
  unk_100AE5630 = 0x80000001008D6AC0;
  result = 0.0;
  xmmword_100AE5638 = 0u;
  unk_100AE5648 = 0u;
  return result;
}

double static RootBarItemsProvider.selectedIconName(for:countryCode:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  sub_1004838C0(a2, a3, a4, a5, v9);
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

uint64_t sub_100481C3C(void *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v5)
  {

    v6 = 14;
  }

  else
  {

    LODWORD(v6) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 == 16)
    {
      v6 = 15;
    }

    else
    {
      v6 = v6;
    }
  }

  return a3(v6);
}

id RootBarItemsProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBarItemsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id RootBarItemsProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RootBarItemsProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL static RootBarItemsProvider.InterfaceDependentValue<A>.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A3454();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  v65 = TupleTypeMetadata2;
  __chkstk_darwin(TupleTypeMetadata2);
  v63 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  if ((sub_1007A2124() & 1) == 0)
  {
    return 0;
  }

  v61 = v16;
  v24 = a2;
  v25 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue(0, a3, v22, v23);
  if ((sub_1007A2124() & 1) == 0)
  {
    return 0;
  }

  v55 = v10;
  v56 = a4;
  v58 = v25;
  v59 = v12;
  v26 = *(v25 + 32);
  v27 = *(v65 + 48);
  v28 = v12 + 16;
  v29 = *(v12 + 16);
  v57 = a1;
  v30 = a1 + v26;
  v31 = v27;
  v29(v21, v30, v11);
  v29(&v21[v31], v24 + v26, v11);
  v60 = v8;
  v32 = *(v8 + 48);
  v33 = v24;
  if (v32(v21, 1, a3) != 1)
  {
    v35 = v61;
    v29(v61, v21, v11);
    if (v32(&v21[v31], 1, a3) != 1)
    {
      v52 = v32;
      v53 = v28;
      v54 = v29;
      v36 = v60;
      v37 = v55;
      (*(v60 + 32))(v55, &v21[v31], a3);
      v38 = sub_1007A2124();
      v39 = *(v36 + 8);
      v39(v37, a3);
      v39(v35, a3);
      v34 = *(v59 + 8);
      v34(v21, v11);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v60 + 8))(v35, a3);
LABEL_8:
    (*(v64 + 8))(v21, v65);
    return 0;
  }

  v53 = v28;
  v54 = v29;
  if (v32(&v21[v31], 1, a3) != 1)
  {
    goto LABEL_8;
  }

  v52 = v32;
  v34 = *(v59 + 8);
  v34(v21, v11);
LABEL_10:
  v40 = *(v58 + 36);
  v41 = *(v65 + 48);
  v42 = v63;
  v43 = v54;
  v54(v63, v57 + v40, v11);
  v43(&v42[v41], v33 + v40, v11);
  v44 = v52;
  if (v52(v42, 1, a3) == 1)
  {
    if (v44(&v42[v41], 1, a3) == 1)
    {
      v34(v42, v11);
      return 1;
    }

    goto LABEL_15;
  }

  v45 = v62;
  v43(v62, v42, v11);
  if (v44(&v42[v41], 1, a3) == 1)
  {
    (*(v60 + 8))(v45, a3);
LABEL_15:
    (*(v64 + 8))(v42, v65);
    return 0;
  }

  v47 = v60;
  v48 = &v42[v41];
  v49 = v55;
  (*(v60 + 32))(v55, v48, a3);
  v50 = sub_1007A2124();
  v51 = *(v47 + 8);
  v51(v49, a3);
  v51(v45, a3);
  v34(v42, v11);
  return (v50 & 1) != 0;
}

void *_s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(void *a1, unint64_t a2)
{
  v11 = a1;
  v12 = a2;
  sub_1003A84C4();
  sub_100367368();
  if (sub_1007A20A4())
  {
    v12 = a2;

    v4 = sub_1007A23A4();
    sub_1003A56A8(v4);
    return a1;
  }

  else
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AE4D38);

    v7 = sub_10079ACC4();
    v8 = sub_1007A29A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000070F4(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "Can't extract collectionID from identifier: %s", v9, 0xCu);
      sub_1000074E0(v10);
    }

    return 0;
  }
}

unint64_t _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0BB08;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0()
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100811380;
  v1 = type metadata accessor for RootBarItem();
  v2 = objc_allocWithZone(v1);
  if ((sub_1007A3AB4() & 1) == 0)
  {
    sub_1007A3AB4();
  }

  v3 = 0x7972617262696CLL;
  v4 = &v2[OBJC_IVAR___BKRootBarItem_identifier];
  *v4 = 1701670760;
  v4[1] = 0xE400000000000000;
  v2[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v5 = &v2[OBJC_IVAR___BKRootBarItem_url];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR___BKRootBarItem_countryCode];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v50.receiver = v2;
  v50.super_class = v1;
  *(v0 + 32) = objc_msgSendSuper2(&v50, "init");
  v10 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v11 = 0xE700000000000000, (sub_1007A3AB4()))
  {
    v11 = 0xE400000000000000;
    v3 = 1701670760;
  }

  v12 = 0x736B6F6F62;
  v13 = &v10[OBJC_IVAR___BKRootBarItem_identifier];
  *v13 = v3;
  v13[1] = v11;
  v10[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v14 = &v10[OBJC_IVAR___BKRootBarItem_url];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v10[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v10[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v10[OBJC_IVAR___BKRootBarItem_countryCode];
  *v18 = 0;
  v18[1] = 0;
  v10[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v49.receiver = v10;
  v49.super_class = v1;
  *(v0 + 40) = objc_msgSendSuper2(&v49, "init");
  v19 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v20 = 0xE500000000000000, (sub_1007A3AB4()))
  {
    v20 = 0xE400000000000000;
    v12 = 1701670760;
  }

  v21 = 0xEA0000000000736BLL;
  v22 = 0x6F6F626F69647561;
  v23 = &v19[OBJC_IVAR___BKRootBarItem_identifier];
  *v23 = v12;
  v23[1] = v20;
  v19[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v24 = &v19[OBJC_IVAR___BKRootBarItem_url];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v19[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v19[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v19[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v19[OBJC_IVAR___BKRootBarItem_countryCode];
  *v28 = 0;
  v28[1] = 0;
  v19[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v48.receiver = v19;
  v48.super_class = v1;
  *(v0 + 48) = objc_msgSendSuper2(&v48, "init");
  v29 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (sub_1007A3AB4())
  {
    v21 = 0xE400000000000000;
    v22 = 1701670760;
  }

  v30 = 0x686372616573;
  v31 = &v29[OBJC_IVAR___BKRootBarItem_identifier];
  *v31 = v22;
  v31[1] = v21;
  v29[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v32 = &v29[OBJC_IVAR___BKRootBarItem_url];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v29[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v29[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v29[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v29[OBJC_IVAR___BKRootBarItem_countryCode];
  *v36 = 0;
  v36[1] = 0;
  v29[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v47.receiver = v29;
  v47.super_class = v1;
  *(v0 + 56) = objc_msgSendSuper2(&v47, "init");
  v37 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v38 = 0xE600000000000000, (sub_1007A3AB4()))
  {
    v38 = 0xE400000000000000;
    v30 = 1701670760;
  }

  v39 = &v37[OBJC_IVAR___BKRootBarItem_identifier];
  *v39 = v30;
  v39[1] = v38;
  v37[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v40 = &v37[OBJC_IVAR___BKRootBarItem_url];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v37[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v41 = 0;
  v41[1] = 0;
  v42 = &v37[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v37[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v37[OBJC_IVAR___BKRootBarItem_countryCode];
  *v44 = 0;
  v44[1] = 0;
  v37[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v46.receiver = v37;
  v46.super_class = v1;
  *(v0 + 64) = objc_msgSendSuper2(&v46, "init");
  return v0;
}

uint64_t _s5Books20RootBarItemsProviderC19isLibraryCollection3forSbSS_tFZ_0(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v7 > 0x10u || ((0x1E01Fu >> v7) & 1) == 0)
    {
      return 1;
    }

    v5 = byte_100828742[v7];
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x6D6F74737563 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  v9 = sub_1007A3AB4();

  return v9 & 1;
}

unint64_t _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0(uint64_t a1)
{
  v1 = 0x7972617262696CLL;
  v2 = sub_1007A2254();
  v4 = v3;
  if (v2 == sub_1007A2254() && v4 == v5)
  {
    goto LABEL_30;
  }

  v7 = sub_1007A3AB4();

  if (v7)
  {
    return v1;
  }

  v8 = sub_1007A2254();
  v10 = v9;
  if (v8 == sub_1007A2254() && v10 == v11)
  {

    return 0xD000000000000011;
  }

  v13 = sub_1007A3AB4();

  if (v13)
  {
    return 0xD000000000000011;
  }

  v1 = 0x467972617262696CLL;
  v14 = sub_1007A2254();
  v16 = v15;
  if (v14 == sub_1007A2254() && v16 == v17)
  {
    goto LABEL_30;
  }

  v19 = sub_1007A3AB4();

  if ((v19 & 1) == 0)
  {
    v1 = 0x427972617262696CLL;
    v20 = sub_1007A2254();
    v22 = v21;
    if (v20 == sub_1007A2254() && v22 == v23)
    {
      goto LABEL_30;
    }

    v24 = sub_1007A3AB4();

    if ((v24 & 1) == 0)
    {
      v25 = sub_1007A2254();
      v27 = v26;
      if (v25 == sub_1007A2254() && v27 == v28)
      {

        return 0xD000000000000011;
      }

      v29 = sub_1007A3AB4();

      if (v29)
      {
        return 0xD000000000000011;
      }

      v1 = 0x507972617262696CLL;
      v30 = sub_1007A2254();
      v32 = v31;
      if (v30 == sub_1007A2254() && v32 == v33)
      {
LABEL_30:

        return v1;
      }

      v34 = sub_1007A3AB4();

      if (v34)
      {
        return v1;
      }

      v35 = sub_1007A2254();
      v37 = v36;
      if (v35 == sub_1007A2254() && v37 == v38)
      {

        return 0xD000000000000010;
      }

      v39 = sub_1007A3AB4();

      if (v39)
      {
        return 0xD000000000000010;
      }

      v40 = sub_1007A2254();
      v42 = v41;
      if (v40 == sub_1007A2254() && v42 == v43)
      {
      }

      else
      {
        v44 = sub_1007A3AB4();

        if ((v44 & 1) == 0)
        {
          return 0;
        }
      }

      return 0xD000000000000011;
    }
  }

  return v1;
}

uint64_t _s5Books20RootBarItemsProviderC18isCustomCollection3forSbSS_tFZ_0(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    LODWORD(v5) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v5 == 16)
    {
      v5 = 15;
    }

    else
    {
      v5 = v5;
    }
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x6D6F74737563 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_1007A3AB4();

    return v8 & 1;
  }
}

id _s5Books20RootBarItemsProviderC19defaultCollectionID18fromItemIdentifierSo09BCDefaultgH0aSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultAll;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001008BF5F0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDWantToRead;
  }

  else if (a1 == 0x467972617262696CLL && a2 == 0xEF64656873696E69 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDFinished;
  }

  else if (a1 == 0x427972617262696CLL && a2 == 0xEC000000736B6F6FLL || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDBooks;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001008BF620 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDAudiobooks;
  }

  else if (a1 == 0x507972617262696CLL && a2 == 0xEA00000000004644 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDPDFs;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008BF640 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDSamples;
  }

  else
  {
    if ((a1 != 0xD000000000000011 || 0x80000001008BF660 != a2) && (sub_1007A3AB4() & 1) == 0)
    {
      return 0;
    }

    v4 = &kBKCollectionDefaultIDDownloaded;
  }

  v5 = *v4;
  v6 = *v4;
  return v5;
}

void _s5Books20RootBarItemsProviderC08standardD7FromBag4with11countryCodeSayAA0bC4ItemCGSayypG_SSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = a1 + 32;
    do
    {
      sub_100007484(v7, v15);
      sub_1000076D4(v15, v13);
      sub_1001F1160(&qword_100AD6710, &unk_10080B890);
      if (swift_dynamicCast())
      {
        v8 = v14;
        if (v14)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_10066B4D0(0, v6[2] + 1, 1, v6);
          }

          v10 = v6[2];
          v9 = v6[3];
          if (v10 >= v9 >> 1)
          {
            v6 = sub_10066B4D0((v9 > 1), v10 + 1, 1, v6);
          }

          v6[2] = v10 + 1;
          v6[v10 + 4] = v8;
        }
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }

  v15[0] = _swiftEmptyArrayStorage;
  v11 = v6[2];
  if (v11)
  {
    v12 = 0;
    while (v12 < v6[2])
    {
      v13[0] = v6[v12 + 4];

      sub_100480E6C(v13, a2, a3, &v14);

      if (v14)
      {
        sub_1007A25C4();
        if (*((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
      }

      if (v11 == ++v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

uint64_t _s5Books20RootBarItemsProviderC8isSearch3forSbSS_tFZ_0(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    LODWORD(v5) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v5 == 16)
    {
      v5 = 15;
    }

    else
    {
      v5 = v5;
    }
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x686372616573 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_1007A3AB4();

    return v8 & 1;
  }
}

uint64_t _s5Books20RootBarItemsProviderC11canBeHidden3forSbSS_tFZ_0(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (!v4)
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v7 < 0x11u && ((0x1E01Fu >> v7) & 1) != 0)
    {
      goto LABEL_3;
    }

    if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v7) != 0x7972617262696CLL || v8 != 0xE700000000000000)
    {
      v9 = sub_1007A3AB4();

      v5 = v9 ^ 1;
      return v5 & 1;
    }
  }

LABEL_3:
  v5 = 0;
  return v5 & 1;
}

double sub_1004838C0@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  if (a4 && (a3 == 28778 && a4 == 0xE200000000000000 || (sub_1007A3AB4() & 1) != 0) && (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0))
  {
    if (qword_100AD16F8 != -1)
    {
      swift_once();
    }

    v14[0] = xmmword_100AE5618;
    v14[1] = *&qword_100AE5628;
    v14[2] = xmmword_100AE5638;
    v14[3] = unk_100AE5648;
    v15 = xmmword_100AE5618;
    v16 = *&qword_100AE5628;
    v17 = xmmword_100AE5638;
    v18 = unk_100AE5648;
    sub_1003A8518(v14, &v13);
  }

  else
  {
    _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
    if (v8)
    {

      v9 = 14;
    }

    else
    {

      v9 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
      if (v9 == 16)
      {
        v9 = 15;
      }
    }

    sub_10047F800(v9, &v15);
  }

  v10 = v16;
  *a5 = v15;
  a5[1] = v10;
  result = *&v17;
  v12 = v18;
  a5[2] = v17;
  a5[3] = v12;
  return result;
}

uint64_t _s5Books20RootBarItemsProviderC7tabType3for13BookAnalytics010BridgedTabG0OSS_tFZ_0(void *a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    return 2;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 > 0xEu)
    {
      return 0;
    }

    else
    {
      return qword_100828758[v6];
    }
  }
}

unint64_t sub_100483AC4()
{
  result = qword_100AE5658;
  if (!qword_100AE5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5658);
  }

  return result;
}

uint64_t sub_100483B18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1007A3454();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100483BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  if (v6)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 <= v6)
  {
    return (*(v5 + 48))();
  }

  v10 = *(v5 + 80);
  v11 = ((v8 + v10 + ((v7 + v10 + ((v7 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_25:
      if (v6)
      {
        return (*(v5 + 48))();
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v6 + (v11 | v15) + 1;
}

char *sub_100483D10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = (v7 + v8 + ((v7 + v8) & ~v8)) & ~v8;
  if (!v6)
  {
    ++v7;
  }

  v10 = ((v7 + v8 + v9) & ~v8) + v7;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t getEnumTagSinglePayload for RootBarItemsProvider.ItemKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RootBarItemsProvider.ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1004840D0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1007A38D4();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100489F94(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1004841C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = sub_10066A980(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004842F0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1007A38D4();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100489F94(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_100484418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_10048452C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = sub_10066BB24(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100484624(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v4 + 3) >> 1, v8 < v6))
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    v8 = *(v4 + 3) >> 1;
  }

  v10 = v8 - *(v4 + 2);
  result = sub_1005D886C();
  if (result < v3)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v12 + 64) >> 6;
      do
      {
        v20 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_42;
        }

        if (v20 >= v19)
        {
          goto LABEL_13;
        }

        v21 = *(v11 + 8 * v20);
        ++v2;
      }

      while (!v21);
      v17 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      v2 = v20;
      goto LABEL_24;
    }

    *(v4 + 2) = v16;
  }

  result = v36;
  if (v13 != v10)
  {
LABEL_13:
    result = sub_10004DC54(result);
    *v1 = v4;
    return result;
  }

LABEL_16:
  v10 = *(v4 + 2);
  v11 = v37;
  v12 = v38;
  v2 = v39;
  v35 = v37;
  if (!v40)
  {
    goto LABEL_19;
  }

  v17 = (v40 - 1) & v40;
  v18 = __clz(__rbit64(v40)) | (v39 << 6);
  v19 = (v38 + 64) >> 6;
LABEL_24:
  v34 = result;
  v22 = (*(result + 48) + 16 * v18);
  v24 = *v22;
  v23 = v22[1];

  v25 = v35;
LABEL_26:
  while (1)
  {
    v26 = *(v4 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v10 + 1)
    {
      break;
    }

    if (v10 < v27)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v4 + 2) = v10;
  }

  v33 = sub_10000B3D8((v26 > 1), v10 + 1, 1, v4);
  v25 = v35;
  v4 = v33;
  v27 = *(v33 + 3) >> 1;
  if (v10 >= v27)
  {
    goto LABEL_25;
  }

LABEL_28:
  while (1)
  {
    v28 = &v4[16 * v10 + 32];
    *v28 = v24;
    *(v28 + 1) = v23;
    ++v10;
    if (!v17)
    {
      break;
    }

    result = v34;
LABEL_35:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v32 = (*(result + 48) + ((v2 << 10) | (16 * v31)));
    v24 = *v32;
    v23 = v32[1];

    v25 = v35;
    if (v10 == v27)
    {
      v10 = v27;
      *(v4 + 2) = v27;
      goto LABEL_26;
    }
  }

  v29 = v2;
  result = v34;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v4 + 2) = v10;
      goto LABEL_13;
    }

    v17 = *(v25 + 8 * v30);
    ++v29;
    if (v17)
    {
      v2 = v30;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1004848E0(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_1007A38D4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_100489F94(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = (*(v3 + 0x18) >> 1) - *(v3 + 0x10);
  result = sub_1005D8870();
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = *(v3 + 16);
    v7 = __OFADD__(v13, result);
    v14 = v13 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v18 = (v11 + 64) >> 6;
      while (1)
      {
        v19 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v19 >= v18)
        {
          goto LABEL_8;
        }

        v20 = *(v10 + 8 * v19);
        ++v3;
        if (v20)
        {
          v16 = (v20 - 1) & v20;
          v17 = __clz(__rbit64(v20)) | (v19 << 6);
          v3 = v19;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v14;
  }

  result = v33;
  if (v12 != v9)
  {
LABEL_8:
    result = sub_10004DC54(result);
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v10 = v34;
  v11 = v35;
  v3 = v36;
  v32 = v34;
  if (!v37)
  {
    goto LABEL_16;
  }

  v16 = (v37 - 1) & v37;
  v17 = __clz(__rbit64(v37)) | (v36 << 6);
  v18 = (v35 + 64) >> 6;
LABEL_21:
  v21 = result;
  v22 = *(*(result + 56) + 8 * v17);
  v23 = v22;
  v24 = v22;
  v25 = v32;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = v24;
      sub_1007A2614();
      v24 = v31;
      v25 = v32;
    }

    v2 = *v1;
    v26 = *v1 & 0xFFFFFFFFFFFFFF8;
    v27 = *(v26 + 0x18) >> 1;
    if (v4 < v27)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v26 + 32 + 8 * v4++) = v24;
    if (!v16)
    {
      break;
    }

    result = v21;
LABEL_33:
    v30 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v24 = *(*(result + 56) + ((v3 << 9) | (8 * v30)));
    v25 = v32;
    if (v4 == v27)
    {
      v4 = v27;
      *(v26 + 16) = v27;
      goto LABEL_23;
    }
  }

  v28 = v3;
  result = v21;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v18)
    {
      *(v26 + 16) = v4;
      goto LABEL_8;
    }

    v16 = *(v25 + 8 * v29);
    ++v28;
    if (v16)
    {
      v3 = v29;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_100484B94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100484CE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_100484EB0()
{
  result = qword_100AE5710;
  if (!qword_100AE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5710);
  }

  return result;
}

unint64_t sub_100484F08()
{
  result = qword_100AE5718;
  if (!qword_100AE5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5718);
  }

  return result;
}

uint64_t sub_100484F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

double sub_100485008(uint64_t a1, void *a2)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_1007A2CD4();

  return result;
}

void sub_10048509C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10048AB84;
  *(v2 + 24) = v1;
  v4[4] = sub_10048ABE0;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1004091A8;
  v4[3] = &unk_100A1E320;
  v3 = _Block_copy(v4);

  [v0 performBlockInUIContext:v3];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }
}

uint64_t sub_10048521C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004852B4(a1);
    sub_1004856A8(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_1004852B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC;
  if (!*&v1[OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC])
  {
    v4 = objc_allocWithZone(NSFetchRequest);
    v5 = sub_1007A2214();
    v6 = [v4 initWithEntityName:v5];

    v7 = [objc_opt_self() predicateForSelectableDefaultCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    sub_10000A7C4(0, &unk_100AE9A50, NSSortDescriptor_ptr);
    isa = sub_1007A25D4().super.isa;
    [v6 setSortDescriptors:isa];

    v9 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v6 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
    v28 = 0;
    if ([v9 performFetch:&v28])
    {
      v10 = v28;
      v11 = [v9 fetchedObjects];
      if (v11)
      {
        v12 = v11;
        sub_10000A7C4(0, &qword_100AE5840, BKCollection_ptr);
        v13 = sub_1007A25E4();

        v14 = sub_10048A5B4(v13);

        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v14;
        v15 = v1;
        sub_10079B9B4();
      }
    }

    else
    {
      v27 = v1;
      v16 = v28;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v17 = sub_10079ACE4();
      sub_100008B98(v17, qword_100AE7000);
      swift_errorRetain();
      v18 = sub_10079ACC4();
      v19 = sub_1007A29B4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_1007A3B84();
        v24 = sub_1000070F4(v22, v23, &v28);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to fetch default collections: %s", v20, 0xCu);
        sub_1000074E0(v21);
      }

      else
      {
      }

      v1 = v27;
    }

    v25 = *&v1[v2];
    *&v1[v2] = v9;
    v26 = v9;

    [v26 setDelegate:v1];
  }
}

void sub_1004856A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC;
  if (!*&v1[OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC])
  {
    v4 = objc_allocWithZone(NSFetchRequest);
    v5 = sub_1007A2214();
    v6 = [v4 initWithEntityName:v5];

    v7 = [objc_opt_self() predicateForNonDeletedUserCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100811390;
    v9 = objc_allocWithZone(NSSortDescriptor);
    v10 = sub_1007A2214();
    v11 = [v9 initWithKey:v10 ascending:1];

    *(v8 + 32) = v11;
    sub_10000A7C4(0, &unk_100AE9A50, NSSortDescriptor_ptr);
    isa = sub_1007A25D4().super.isa;

    [v6 setSortDescriptors:isa];

    v13 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v6 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
    v33 = 0;
    if ([v13 performFetch:&v33])
    {
      v14 = v33;
      v15 = [v13 fetchedObjects];
      if (v15)
      {
        v16 = v15;
        sub_10000A7C4(0, &qword_100AE5840, BKCollection_ptr);
        v17 = sub_1007A25E4();

        sub_100489930(v17);
        v19 = v18;

        swift_getKeyPath();
        swift_getKeyPath();
        v33 = v19;
        v20 = v1;
        sub_10079B9B4();
      }
    }

    else
    {
      v32 = v1;
      v21 = v33;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AE7000);
      swift_errorRetain();
      v23 = sub_10079ACC4();
      v24 = sub_1007A29B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_1007A3B84();
        v29 = sub_1000070F4(v27, v28, &v33);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Unable to fetch user collections: %s", v25, 0xCu);
        sub_1000074E0(v26);
      }

      else
      {
      }

      v1 = v32;
    }

    v30 = *&v1[v2];
    *&v1[v2] = v13;
    v31 = v13;

    [v31 setDelegate:v1];
  }
}

void sub_100485B20()
{
  v0 = sub_100796CF4();
  v71 = *(v0 - 8);
  __chkstk_darwin(v0);
  v74 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v64 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v64 - v10;
  v12 = sub_1007A1D04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v15 = sub_1007A2D74();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1007A1D34();
  v18 = *(v13 + 8);
  v17 = v13 + 8;
  v18(v15, v12);
  if (v16)
  {
    sub_1007A2154();
    sub_100796C94();
    v19 = v5;
    v75 = v5;
    v20 = v6;
    *&v70 = *(v6 + 16);
    (v70)(v8, v11, v19);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = ObjCClassFromMetadata;
    v68 = objc_opt_self();
    v22 = [v68 bundleForClass:ObjCClassFromMetadata];
    v23 = v71;
    v67 = *(v71 + 16);
    v24 = v74;
    v67(v74, v4, v0);
    v64 = sub_1007A22D4(v8, 0, 0, v22, v24, "Name for a new collection of books on the bookshelf.", 52, 2);
    v72 = v25;
    v66 = *(v23 + 8);
    v66(v4, v0);
    v65 = *(v20 + 8);
    v26 = v75;
    v65(v11, v75);
    sub_1007A2154();
    sub_100796C94();
    (v70)(v8, v11, v26);
    v27 = [v68 bundleForClass:v69];
    v67(v24, v4, v0);
    v71 = sub_1007A22D4(v8, 0, 0, v27, v24, "Name for a new collection of books on the bookshelf when multiple collections exist with the same 'Untitled Colleciton' name.", 125, 2);
    v74 = v28;
    v66(v4, v0);
    v65(v11, v75);
    v75 = [objc_allocWithZone(NSNumberFormatter) init];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v78);

    v16 = v78[0];
    v17 = v78[0] & 0xFFFFFFFFFFFFFF8;
    if (!(v78[0] >> 62))
    {
      v29 = *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_4;
      }

LABEL_24:
      v31 = _swiftEmptyArrayStorage;
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v29 = sub_1007A38D4();
  if (!v29)
  {
    goto LABEL_24;
  }

LABEL_4:
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  do
  {
    v32 = v30;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v33 = sub_1007A3784();
      }

      else
      {
        if (v32 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v33 = *(v16 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v35 = [v33 title];
      if (v35)
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_25;
      }
    }

    v36 = v35;
    v37 = sub_1007A2254();
    v73 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10000B3D8(0, *(v31 + 2) + 1, 1, v31);
    }

    v40 = *(v31 + 2);
    v39 = *(v31 + 3);
    if (v40 >= v39 >> 1)
    {
      v31 = sub_10000B3D8((v39 > 1), v40 + 1, 1, v31);
    }

    *(v31 + 2) = v40 + 1;
    v41 = &v31[16 * v40];
    v42 = v73;
    *(v41 + 4) = v37;
    *(v41 + 5) = v42;
  }

  while (v30 != v29);
LABEL_25:

  v43 = 0;
  v44 = *(v31 + 2);
  v73 = v31 + 40;
  v45 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  v46 = &selRef_keyboardWillShow_;
  v47 = &selRef_setUserInteractionEnabled_;
  v70 = xmmword_10080B690;
  while (2)
  {
    v78[0] = v43;
    v48 = sub_1007A3A74();
    v50 = v49;
    v51 = [objc_allocWithZone(v45[301]) v46[34]];
    v52 = [v75 v47[392]];

    if (v52)
    {

      v48 = sub_1007A2254();
      v50 = v53;
    }

    if (v43)
    {
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v54 = swift_allocObject();
      *(v54 + 16) = v70;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_10000E4C4();
      *(v54 + 32) = v48;
      *(v54 + 40) = v50;
      v55 = sub_1007A2284();
      v57 = v56;
    }

    else
    {

      v57 = v72;

      v55 = v64;
    }

    v58 = 0;
    v59 = v73;
    do
    {
      if (v44 == v58)
      {

        return;
      }

      if (v58 >= *(v31 + 2))
      {
        __break(1u);
        return;
      }

      ++v58;
      v60 = v59 + 16;
      v61 = *v59;
      v78[0] = *(v59 - 1);
      v78[1] = v61;
      v76 = v55;
      v77 = v57;
      sub_100206ECC();
      v62 = sub_1007A34B4();
      v59 = v60;
    }

    while (v62);

    v63 = v43++ == v44;
    v45 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    v46 = &selRef_keyboardWillShow_;
    v47 = &selRef_setUserInteractionEnabled_;
    if (!v63)
    {
      continue;
    }

    break;
  }
}

void sub_100486350(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048A368;
  *(v6 + 24) = v5;
  v9[4] = sub_10048ABE0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004091A8;
  v9[3] = &unk_100A1DFB0;
  v7 = _Block_copy(v9);
  v8 = a1;

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_1004864D4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 collectionController];

  v19 = 0;
  v7 = [v6 mutableCollectionWithCollectionID:a2 inManagedObjectContext:a1 error:&v19];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = v19;
    isa = sub_1007A2684().super.super.isa;
    [v7 setHidden:isa];
  }

  else
  {
    v10 = v19;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE7000);
    swift_errorRetain();
    v12 = sub_10079ACC4();
    v13 = sub_1007A29B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1007A3B84();
      v18 = sub_1000070F4(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to fetch and modify default collection: %s", v14, 0xCu);
      sub_1000074E0(v15);
    }

    else
    {
    }
  }
}

double sub_10048675C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_100486768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultManager];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10048A03C;
  *(v10 + 24) = v9;
  v12[4] = sub_10048ABE0;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1004091A8;
  v12[3] = &unk_100A1DF10;
  v11 = _Block_copy(v12);

  [v8 performBlockInUIContext:v11];

  _Block_release(v11);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

void sub_100486908(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_10048A2C0(255, a2, a3);

  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 collectionController];

  v10 = sub_1007A2214();
  v23 = 0;
  v11 = [v9 mutableCollectionWithCollectionID:v10 inManagedObjectContext:a1 error:&v23];
  swift_unknownObjectRelease();

  if (v11)
  {
    v12 = v23;
    sub_1007A2334();

    v13 = sub_1007A2214();

    [v11 setTitle:v13];
  }

  else
  {
    v14 = v23;

    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AE7000);
    swift_errorRetain();
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_1007A3B84();
      v22 = sub_1000070F4(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to fetch and modify user collections: %s", v18, 0xCu);
      sub_1000074E0(v19);
    }

    else
    {
    }
  }
}

void sub_100486C1C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048A034;
  *(v6 + 24) = v5;
  v8[4] = sub_1002C70B8;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1004091A8;
  v8[3] = &unk_100A1DE98;
  v7 = _Block_copy(v8);

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_100486DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = [v4 collectionController];

  v6 = sub_1007A2214();
  v18 = 0;
  LODWORD(a1) = [v5 deleteCollectionWithCollectionID:v6 inManagedObjectContext:a1 error:&v18];
  swift_unknownObjectRelease();

  v7 = v18;
  if (a1)
  {

    v8 = v7;
  }

  else
  {
    v9 = v18;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AE7000);
    swift_errorRetain();
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1007A3B84();
      v17 = sub_1000070F4(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to delete user collections: %s", v13, 0xCu);
      sub_1000074E0(v14);
    }

    else
    {
    }
  }
}

void sub_10048704C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = _swiftEmptyArrayStorage;
  v72 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v69);

  v6 = v69[0];
  if (v69[0] >> 62)
  {
LABEL_28:
    v7 = sub_1007A38D4();
    v64 = a2;
    v65 = v4;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_29:
    v9 = _swiftEmptyDictionarySingleton;
LABEL_30:

    v71 = v5;
    v32 = *(v64 + 16);
    if (v32)
    {
      v33 = (v64 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v36 = v9[2];

        if (v36 && (v37 = sub_10000E53C(v35, v34), (v38 & 1) != 0))
        {
          v39 = *(v9[7] + 8 * v37);
          sub_1007A25C4();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1007A2614();
          }

          sub_1007A2644();
          v40 = sub_10000E53C(v35, v34);
          v42 = v41;

          if (v42)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69[0] = v9;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1002F1F6C();
              v9 = v69[0];
            }

            sub_1002F9CFC();
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10000B3D8(0, *(v5 + 2) + 1, 1, v5);
          }

          v45 = *(v5 + 2);
          v44 = *(v5 + 3);
          if (v45 >= v44 >> 1)
          {
            v5 = sub_10000B3D8((v44 > 1), v45 + 1, 1, v5);
          }

          *(v5 + 2) = v45 + 1;
          v46 = &v5[16 * v45];
          *(v46 + 4) = v35;
          *(v46 + 5) = v34;
        }

        v33 += 2;
        --v32;
      }

      while (v32);
    }

    sub_100484624(v47);
    if (*(v5 + 2) || *(v71 + 2))
    {
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v48 = sub_10079ACE4();
      sub_100008B98(v48, qword_100AE7000);
      v49 = sub_10079ACC4();
      v50 = sub_1007A29C4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v51 = 136315394;

        v52 = sub_1007A25F4();
        v54 = v53;

        v55 = sub_1000070F4(v52, v54, &v70);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        swift_beginAccess();

        v56 = sub_1007A25F4();
        v58 = v57;

        v59 = sub_1000070F4(v56, v58, &v70);

        *(v51 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "The reordered collection ID list does not match the existing list. Only in reordered list: %s; only in original list: %s", v51, 0x16u);
        swift_arrayDestroy();
      }
    }

    sub_1004848E0(v60);
    if (v72 >> 62)
    {

      sub_1001F1160(&unk_100AE5800, &unk_100828A98);
      sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
    }

    v61 = objc_opt_self();
    sub_1001F1160(&unk_100AE5800, &unk_100828A98);
    isa = sub_1007A25D4().super.isa;

    v63 = [objc_opt_self() defaultManager];
    [v61 saveSortedCollectionsArray:isa inLibraryManager:v63];

    return;
  }

  v7 = *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v64 = a2;
  v65 = v4;
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_4:
  v8 = 0;
  v67 = v6 & 0xFFFFFFFFFFFFFF8;
  v68 = v6 & 0xC000000000000001;
  v9 = _swiftEmptyDictionarySingleton;
  v66 = v6;
  while (1)
  {
    if (v68)
    {
      v12 = sub_1007A3784();
    }

    else
    {
      if (v8 >= *(v67 + 16))
      {
        goto LABEL_25;
      }

      v12 = *(v6 + 8 * v8 + 32);
    }

    v13 = v12;
    a2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = v9;
    v15 = [v12 collectionID];
    if (!v15)
    {
      break;
    }

    v4 = v15;
    v6 = sub_1007A2254();
    v17 = v16;

    v5 = v13;
    v18 = v14;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = v14;
    v21 = sub_10000E53C(v6, v17);
    v22 = v18[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_26;
    }

    v4 = v20;
    if (v18[3] >= v24)
    {
      if (v19)
      {
        if (v20)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1002F1F6C();
        if (v4)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1003D5E90(v24, v19);
      v25 = sub_10000E53C(v6, v17);
      if ((v4 & 1) != (v26 & 1))
      {
        goto LABEL_60;
      }

      v21 = v25;
      if (v4)
      {
LABEL_5:

        v9 = v69[0];
        v10 = *(v69[0] + 56);
        v11 = *(v10 + 8 * v21);
        *(v10 + 8 * v21) = v5;

        goto LABEL_6;
      }
    }

    v27 = v69[0];
    *(v69[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v28 = (v27[6] + 16 * v21);
    *v28 = v6;
    v28[1] = v17;
    v9 = v27;
    *(v27[7] + 8 * v21) = v5;

    v29 = v9[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_27;
    }

    v9[2] = v31;
LABEL_6:
    ++v8;
    v5 = _swiftEmptyArrayStorage;
    v6 = v66;
    if (a2 == v7)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  sub_1007A3B24();
  __break(1u);
}

void sub_1004877A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v6;
    sub_10079B9A4(aBlock);

    v7 = aBlock[0];
    if (aBlock[0] >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1007A3784();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 collectionID];
        if (v13)
        {
          v14 = a3;
          v15 = v13;
          v16 = sub_1007A2254();
          v18 = v17;

          if (v16 == a2 && v18 == v14)
          {

LABEL_19:

            v21 = [objc_opt_self() defaultManager];
            v22 = [v21 collectionController];

            sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
            isa = sub_1007A25D4().super.isa;
            aBlock[4] = sub_100487BC0;
            aBlock[5] = 0;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1002D63C0;
            aBlock[3] = &unk_100A1DE20;
            v24 = _Block_copy(aBlock);
            v25 = v11;
            [v22 addBooks:isa toCollection:v25 forceToTop:1 completion:v24];
            _Block_release(v24);

            swift_unknownObjectRelease();
            return;
          }

          a3 = v14;
          v20 = sub_1007A3AB4();

          if (v20)
          {
            goto LABEL_19;
          }
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AE7000);

    v27 = sub_10079ACC4();
    v28 = sub_1007A29B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000070F4(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to add books to user collections: collection ID %s not found", v29, 0xCu);
      sub_1000074E0(v30);
    }
  }
}

void sub_100487BCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(aBlock);

  v8 = aBlock[0];
  v34 = a4;
  v35 = v7;
  if (aBlock[0] >> 62)
  {
LABEL_26:
    v9 = sub_1007A38D4();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_27:

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v29 = sub_10079ACE4();
    sub_100008B98(v29, qword_100AE7000);

    v30 = sub_10079ACC4();
    v31 = sub_1007A29B4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000070F4(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to add storeIDs to user collections: collection ID %s not found", v32, 0xCu);
      sub_1000074E0(v33);
    }

    goto LABEL_32;
  }

  v9 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_4:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = [v11 collectionID];
    if (!v14)
    {

      goto LABEL_6;
    }

    v15 = a3;
    v16 = v14;
    v17 = sub_1007A2254();
    v19 = v18;

    a3 = v15;
    if (v17 == a2 && v19 == v15)
    {
      break;
    }

    v21 = sub_1007A3AB4();

    if (v21)
    {

      goto LABEL_20;
    }

LABEL_6:
    ++v10;
    if (v13 == v9)
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 collectionController];

  v24 = *(v34 + 16);
  if (v24)
  {
    v25 = v34 + 40;
    do
    {

      v26 = sub_1007A2214();

      v27 = sub_1007A2214();
      aBlock[4] = sub_100488018;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D63C0;
      aBlock[3] = &unk_100A1DDF8;
      v28 = _Block_copy(aBlock);
      [v23 addStoreID:v26 toCollectionID:v27 forceToTop:1 completion:v28];
      _Block_release(v28);

      v25 += 16;
      --v24;
    }

    while (v24);
  }

  swift_unknownObjectRelease();
LABEL_32:
}

void sub_100488024(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AE7000);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1007A3B84();
      v10 = sub_1000070F4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, a3, v6, 0xCu);
      sub_1000074E0(v7);
    }

    else
    {
    }
  }
}

double sub_1004881E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = a8;
  v17[8] = sub_10048A378;
  v17[9] = v15;

  sub_1007A2CD4();

  return result;
}

void sub_100488338(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, NSString a5, uint64_t a6, void (*a7)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v34 = a7;
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      sub_100485B20();
      a2 = v15;
      v14 = v16;
    }

    sub_10048A2C0(255, a2, v14);

    v17 = sub_1007A2334();
    v19 = v18;

    v20 = [objc_opt_self() defaultManager];
    v21 = [v20 collectionController];

    if (a5)
    {
      a5 = sub_1007A2214();
    }

    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = v19;
    v22[4] = a6;
    v37 = sub_10048A3D0;
    v38 = v22;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_1002166B8;
    *(&v36 + 1) = &unk_100A1E0A0;
    v23 = _Block_copy(&aBlock);

    v24 = [v21 insertNewCollectionSyncOnMainQueueWithCollectionID:a5 newCollectionBlock:v23];
    swift_unknownObjectRelease();
    _Block_release(v23);

    if (v24)
    {
      v25 = [v24 collectionID];
      if (!v25)
      {
        __break(1u);
        return;
      }

      v26 = v25;
      v27 = sub_1007A2254();
      v29 = v28;

      *&aBlock = v27;
      *(&aBlock + 1) = v29;
      *&v36 = v17;
      *(&v36 + 1) = v19;
      LOBYTE(v37) = 0;
      v34(&aBlock);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v30 = sub_10079ACE4();
      sub_100008B98(v30, qword_100AE7000);
      v31 = sub_10079ACC4();
      v32 = sub_1007A29B4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create new collection", v33, 2u);
      }

      aBlock = 0u;
      v36 = 0u;
      LOBYTE(v37) = 1;
      v34(&aBlock);
    }
  }
}

void sub_1004886B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_1007A2214();
    [a1 setTitle:v5];

    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    isa = sub_1007A25D4().super.isa;
    [a1 addLibraryAssets:isa];
  }
}

void sub_100488768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_1007A2214();
  v7 = [v5 initWithEntityName:v6];

  v8 = objc_opt_self();
  v9 = sub_1007A2214();
  v10 = [v8 predicateForCollectionMembersInCollectionID:v9 hideUnownedItems:0];

  [v7 setPredicate:v10];
  sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr);
  v11 = sub_1007A2F24();

  *a4 = v11;
  *(a4 + 8) = 0;
}

uint64_t sub_100488B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v5);

  return v5;
}

uint64_t sub_100488BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001F1160(&qword_100AE5810, &qword_100828AF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  v13 = *v4;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100ADAA10, &qword_100828AF0);
  swift_allocObject();

  v15 = v13;

  v18[1] = sub_10079B954();
  sub_100005920(&qword_100AE5818, &qword_100ADAA10, &qword_100828AF0, &protocol conformance descriptor for Future<A, B>);
  sub_10079BA74();

  sub_100005920(&unk_100AE5820, &qword_100AE5810, &qword_100828AF8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = sub_10079BA14();
  (*(v10 + 8))(v12, v9);
  return v16;
}

double sub_100488E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1007A2CD4();

  return result;
}

double sub_100488EEC(uint64_t a1, uint64_t a2)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1007A2CD4();

  return result;
}

double sub_100488F8C(uint64_t a1)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_1007A2CD4();

  return result;
}

double sub_1004890A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a1;

  sub_1007A2CD4();

  return result;
}

uint64_t sub_100489194(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = a1;
  sub_1001F1160(&qword_100ADAA10, &qword_100828AF0);
  swift_allocObject();
  v5 = v3;

  return sub_10079B954();
}

void sub_100489254(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC);
  if (v3 && (sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr), v4 = v3, v5 = sub_1007A3184(), v4, (v5 & 1) != 0))
  {

    sub_100489350();
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC);
    if (v6)
    {
      sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
      v7 = v6;
      v8 = sub_1007A3184();

      if (v8)
      {

        sub_10048960C();
      }
    }
  }
}

void sub_100489350()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC);
  if (v1 && (v2 = [v1 fetchedObjects]) != 0)
  {
    v3 = v2;
    sub_10000A7C4(0, &qword_100AE5840, BKCollection_ptr);
    v4 = sub_1007A25E4();

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE7000);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got updated default collections", v8, 2u);
    }

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;

    sub_1007A2CD4();
  }

  else
  {
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE7000);
    oslog = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Can't get fetched objects from updated defaultCollectionsFRC", v13, 2u);
    }
  }
}

void sub_10048960C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC);
  if (v1 && (v2 = [v1 fetchedObjects]) != 0)
  {
    v3 = v2;
    sub_10000A7C4(0, &qword_100AE5840, BKCollection_ptr);
    v4 = sub_1007A25E4();

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE7000);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got updated user collections", v8, 2u);
    }

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;

    sub_1007A2CD4();
  }

  else
  {
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE7000);
    oslog = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Can't get fetched objects from updated userCollectionsFRC", v13, 2u);
    }
  }
}

void sub_100489930(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v8[1] = _swiftEmptyArrayStorage;
    sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v4 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = v5;
      sub_100489A90(&v7, v8);

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v4 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_100489A90(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 title];
  if (v4)
  {

    v5 = [v3 title];
    if (!v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = v5;
    v7 = sub_1007A2254();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_13;
    }
  }

  if (qword_100AD1768 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AE7000);
  v12 = v3;
  v13 = sub_10079ACC4();
  v14 = sub_1007A29B4();
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_12;
  }

  v24 = a2;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v25 = v16;
  *v15 = 136315138;
  v17 = [v12 collectionID];

  if (v17)
  {
    v18 = sub_1007A2254();
    v20 = v19;

    v21 = sub_1000070F4(v18, v20, &v25);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "User collection %s has empty title, use fallback instead", v15, 0xCu);
    sub_1000074E0(v16);

    a2 = v24;
LABEL_12:
    sub_100485B20();
    v22 = sub_1007A2214();

    [v12 setTitle:v22];

LABEL_13:
    *a2 = v3;
    v23 = v3;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100489CF8(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10048A5B4(a2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_100489D90(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100489930(a2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_100489E28(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_100489EA8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_100489F20(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_10079B9B4();
}

uint64_t sub_100489F94(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1007A38D4();
LABEL_9:
  result = sub_1007A3794();
  *v2 = result;
  return result;
}

double sub_10048A048(void *a1, char a2)
{
  v4 = _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0(a1);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v4, v5);
  if (v6 <= 0x10u && ((1 << v6) & 0x1E01F) != 0)
  {
    goto LABEL_6;
  }

  if (RootBarItemsProvider.ItemKind.rawValue.getter(v6) == 0x7972617262696CLL && v17 == 0xE700000000000000)
  {

LABEL_6:
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AE7000);
    v9 = a1;
    oslog = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = sub_1007A2254();
      v15 = sub_1000070F4(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Collection %s does not support setting isHidden", v11, 0xCu);
      sub_1000074E0(v12);
    }

    return result;
  }

  v18 = sub_1007A3AB4();

  if (v18)
  {
    goto LABEL_6;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2 & 1;
  v20 = a1;
  sub_1007A2CD4();

  return result;
}

uint64_t sub_10048A2C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1007A23C4();

    return sub_1007A24B4();
  }

  return result;
}

uint64_t sub_10048A378(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_10048A3DC()
{

  return swift_deallocObject();
}

uint64_t sub_10048A41C()
{

  return swift_deallocObject();
}

void *sub_10048A46C()
{
  sub_1001F1160(&qword_100AE5848, &qword_100828B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1008287D0;
  v1 = kBKCollectionDefaultAll;
  v2 = kBKCollectionDefaultIDWantToRead;
  *(inited + 32) = kBKCollectionDefaultAll;
  *(inited + 40) = v2;
  v3 = kBKCollectionDefaultIDFinished;
  v4 = kBKCollectionDefaultIDBooks;
  *(inited + 48) = kBKCollectionDefaultIDFinished;
  *(inited + 56) = v4;
  v5 = kBKCollectionDefaultIDAudiobooks;
  v6 = kBKCollectionDefaultIDPDFs;
  *(inited + 64) = kBKCollectionDefaultIDAudiobooks;
  *(inited + 72) = v6;
  v7 = kBKCollectionDefaultIDSamples;
  *(inited + 80) = kBKCollectionDefaultIDSamples;
  v8 = kBKCollectionDefaultIDDownloaded;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result = sub_10066BB64(1, 8, 1, inited);
  result[2] = 8;
  result[11] = v16;
  return result;
}

void *sub_10048A5B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_27:
    v4 = _swiftEmptyDictionarySingleton;
LABEL_28:
    v25 = sub_10048A46C();
    v26 = v25[2];
    if (!v26)
    {
      goto LABEL_40;
    }

    v27 = 0;
LABEL_30:
    v28 = v27;
    while (1)
    {
      if (v28 >= v26)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_42;
      }

      if (v4[2])
      {
        v29 = v25[v28 + 4];
        v30 = sub_1002F9CF4();
        if (v31)
        {
          v32 = *(v4[7] + 8 * v30);

          sub_1007A25C4();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1007A2614();
          }

          sub_1007A2644();
          if (v27 == v26)
          {
LABEL_40:

            return _swiftEmptyArrayStorage;
          }

          goto LABEL_30;
        }
      }

      ++v28;
      if (v27 == v26)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_3:
  v3 = 0;
  v4 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v2 = sub_1007A38D4();
      if (!v2)
      {
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    v10 = [v7 collectionID];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v4;
    v14 = sub_1002F9CF4();
    v16 = v4[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v4[3] < v19)
    {
      sub_1003D5BCC(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1002F9CF4();
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_44;
      }

LABEL_16:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v14;
    sub_1002F1E0C();
    v14 = v24;
    v4 = v34;
    if (v20)
    {
LABEL_4:
      v5 = v4[7];
      v6 = *(v5 + 8 * v14);
      *(v5 + 8 * v14) = v12;

      goto LABEL_5;
    }

LABEL_17:
    v4[(v14 >> 6) + 8] |= 1 << v14;
    *(v4[6] + 8 * v14) = v11;
    *(v4[7] + 8 * v14) = v12;

    v22 = v4[2];
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v23;
LABEL_5:
    ++v3;
    if (v9 == v2)
    {
      goto LABEL_28;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  type metadata accessor for BCDefaultCollectionID(0);
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_10048A8D8(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 1;
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048AAC4;
  *(v6 + 24) = v5;
  v9[4] = sub_10048ABE0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004091A8;
  v9[3] = &unk_100A1E208;
  v7 = _Block_copy(v9);

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    if (v11)
    {
      sub_10048AAD0();
      swift_allocError();
      *v8 = 1;
      swift_willThrow();
    }
  }
}

unint64_t sub_10048AAD0()
{
  result = qword_100AF4D80;
  if (!qword_100AF4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4D80);
  }

  return result;
}

uint64_t sub_10048AB2C()
{

  return swift_deallocObject();
}

uint64_t sub_10048ABE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F4960(v3);
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
    result = memmove((v3 + 32 * a1 + 32), (v3 + 32 * a1 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_10048AC84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F49B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_10048AD24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F4988(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10048ADB0()
{
  _s5Books18PropertyValueActorV9ActorTypeCMa_1();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100AE5858 = v0;
  return result;
}

uint64_t *NSNotificationName.markedAsFinished.unsafeMutableAddressor()
{
  if (qword_100AD1710 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.markedAsFinished;
}

id static NSNotificationName.markedAsFinished.getter()
{
  if (qword_100AD1710 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.markedAsFinished;

  return v1;
}

double PersonalizationEventDonor.donate(with:context:donationComplete:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1007998D4();
  if (a3)
  {
    if (v14 == a2 && v15 == a3)
    {
      goto LABEL_4;
    }

    v19 = sub_1007A3AB4();

    if (v19)
    {
      goto LABEL_10;
    }

    if (sub_1007998C4() == a2 && v27 == a3)
    {
LABEL_4:

LABEL_10:
      v20 = sub_1007A2744();
      (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
      v21 = qword_100AD1708;
      v22 = v5;
      v23 = a1;

      if (v21 != -1)
      {
        swift_once();
      }

      v24 = qword_100AE5858;
      v25 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1, &unk_100828C64);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v25;
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = a4;
      v26[7] = a5;

      sub_1003457A0(0, 0, v13, &unk_100828B70, v26);

      return result;
    }

    v28 = sub_1007A3AB4();

    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1007998C4();
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34 = -1;
  v16 = objc_allocWithZone(sub_1007997D4());
  v30 = sub_1007997C4();
  a4();
  v17 = v30;

  return result;
}

uint64_t sub_10048B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v8 = sub_100799754();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  if (qword_100AD1708 != -1)
  {
    swift_once();
  }

  v9 = qword_100AE5858;

  return _swift_task_switch(sub_10048B3A8, v9, 0);
}

uint64_t sub_10048B3A8(uint64_t a1)
{
  v2 = *(v1 + 248);
  v3 = sub_100799814();
  v5 = v4;
  v6 = OBJC_IVAR___BKPersonalizationEventDonor_cachedEnagagementPropertyValues;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_10000E53C(v3, v5);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);

      v56 = v11;

      v13 = sub_100401CC0(v12);
      v15 = v14;

      if (v15)
      {
        v54 = v15;
        v55 = v13;
        result = sub_1002EF384(v13, v15);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        v18 = *(v1 + 304);
        v19 = *(v1 + 288);
        v51 = *(v1 + 280);
        v20 = sub_100799814();
        v22 = v21;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v2 + v6);
        *(v2 + v6) = 0x8000000000000000;
        sub_1002F6130(v11, v20, v22, isUniquelyReferenced_nonNull_native);

        *(v2 + v6) = v57;
        swift_endAccess();
        v24 = enum case for CDProperty.SpecialPlistKeys.assetID(_:);
        v25 = v51;
        v53 = *(v19 + 104);
        v53(v18, enum case for CDProperty.SpecialPlistKeys.assetID(_:), v51);
        v26 = sub_100799744();
        v28 = v27;
        v52 = *(v19 + 8);
        v52(v18, v25);
        v29 = v17;
        if (*(v17 + 16))
        {
          v30 = sub_10000E53C(v26, v28);
          v32 = v31;

          if (v32)
          {
            sub_100007484(*(v17 + 56) + 32 * v30, v1 + 112);
            v33 = swift_dynamicCast();
            if (v33)
            {
              v34 = *(v1 + 224);
            }

            else
            {
              v34 = 0;
            }

            if (v33)
            {
              v35 = *(v1 + 232);
            }

            else
            {
              v35 = 0;
            }

LABEL_19:
            v40 = *(v1 + 296);
            v41 = *(v1 + 280);
            v50 = *(v1 + 264);
            v53(v40, v24, v41);
            v42 = sub_100799744();
            v44 = v43;
            v52(v40, v41);
            sub_1002EEBD0(v42, v44, (v1 + 144));

            sub_100007840(v1 + 144, &unk_100AD5B40, &unk_100811300);
            sub_100581680(v29);
            v46 = v45;

            *(v1 + 16) = v55;
            *(v1 + 24) = v54;
            *(v1 + 32) = v34;
            *(v1 + 40) = v35;
            *(v1 + 48) = v46;
            *(v1 + 56) = 2;
            v47 = objc_allocWithZone(sub_1007997D4());
            v48 = sub_1007997C4();
            v50();

            *(v1 + 240) = v56;
            sub_1001F1160(&qword_100AE5870, &qword_100828B80);
            sub_100005920(&qword_100AE59E8, &qword_100AE5870, &qword_100828B80, &protocol conformance descriptor for [A : B]);
            v49 = sub_1007A28A4();

            if (v49)
            {
              [*(v1 + 248) propertyDidChange:*(v1 + 248) propertyConfiguration:*(v1 + 256)];
            }

            goto LABEL_14;
          }
        }

        else
        {
        }

        v34 = 0;
        v35 = 0;
        goto LABEL_19;
      }
    }
  }

  v36 = *(v1 + 264);
  *(v1 + 96) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 104) = -1;
  v37 = objc_allocWithZone(sub_1007997D4());
  v38 = sub_1007997C4();
  v36();

LABEL_14:

  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_10048B844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10048B2A4(a1, v4, v5, v6, v7, v9, v8);
}

void PersonalizationEventDonor.dictPathValues(_:path:)(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return;
  }

  if (!a2[2])
  {
    return;
  }

  if (!*(a1 + 16))
  {
    return;
  }

  v3 = a2[4];
  v4 = a2[5];

  v6 = sub_10000E53C(v3, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return;
  }

  sub_100007484(*(a1 + 56) + 32 * v6, v33);
  sub_1000076D4(v33, v34);
  v32 = a2;

  sub_10048AD24(0);

  if (!a2[2])
  {

    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    sub_100007484(v34, v10 + 32);
    goto LABEL_9;
  }

  sub_100007484(v34, v33);
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  v9 = &type metadata for Any;
  if (swift_dynamicCast())
  {
    PersonalizationEventDonor.dictPathValues(_:path:)(v31[0], a2);

LABEL_9:
    sub_1000074E0(v34);
    return;
  }

  sub_100007484(v34, v33);
  sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    sub_1000074E0(v34);

    return;
  }

  if (!a2[2] || (a2[4] != 42 || a2[5] != 0xE100000000000000) && (sub_1007A3AB4() & 1) == 0)
  {

    goto LABEL_40;
  }

  sub_10048AD24(0);

  v11 = *(v31[0] + 16);
  if (!v11)
  {

LABEL_44:
    sub_1000074E0(v34);

    return;
  }

  v12 = v31[0] + 32;
  v13 = _swiftEmptyArrayStorage;
  v14 = &type metadata for String;
  while (1)
  {
    sub_100007484(v12, v33);
    sub_100007484(v33, v31);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_100007484(v33, v31);
    if (swift_dynamicCast())
    {
      v31[3] = v14;
      v31[0] = v29;
      v31[1] = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10066A640(0, *(v13 + 2) + 1, 1, v13);
      }

      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      if (v28 >= v27 >> 1)
      {
        v13 = sub_10066A640((v27 > 1), v28 + 1, 1, v13);
      }

      sub_1000074E0(v33);
      *(v13 + 2) = v28 + 1;
      sub_1000076D4(v31, &v13[32 * v28 + 32]);
      goto LABEL_19;
    }

LABEL_18:
    sub_1000074E0(v33);
LABEL_19:
    v12 += 32;
    if (!--v11)
    {

      goto LABEL_44;
    }
  }

  v15 = v9;
  v16 = v14;
  PersonalizationEventDonor.dictPathValues(_:path:)(v29, v32);
  v18 = v17;

  v19 = *(v18 + 16);
  v20 = *(v13 + 2);
  v21 = v20 + v19;
  if (!__OFADD__(v20, v19))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v21 > *(v13 + 3) >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v13 = sub_10066A640(isUniquelyReferenced_nonNull_native, v23, 1, v13);
    }

    v14 = v16;
    v9 = v15;
    if (*(v18 + 16))
    {
      if ((*(v13 + 3) >> 1) - *(v13 + 2) < v19)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v13 + 2);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_48;
        }

        *(v13 + 2) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t PersonalizationEventDonor.expressionWrapper(_:matches:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v4 = sub_10000E53C(0x6973736572707865, 0xEA00000000006E6FLL), (v5 & 1) != 0) && (sub_100007484(*(a1 + 56) + 32 * v4, v10), sub_1001F1160(&qword_100AD6710, &unk_10080B890), (swift_dynamicCast() & 1) != 0))
  {
    _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(v9, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void PersonalizationEventDonor.process<A>(processEvent:)(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100797B24();
  v139 = *(v4 - 8);
  __chkstk_darwin(v4);
  v142 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v119 - v7;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v119 - v13;
  __chkstk_darwin(v14);
  v143 = &v119 - v15;
  v138 = sub_100796BB4();
  v140 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100797B04();
  v18 = 0;
  v19 = sub_100797BD4();
  v144 = v8;
  v24 = v19;
  v26 = v25;

  v27 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  v149 = 0;
  v29 = [v27 JSONObjectWithData:isa options:0 error:&v149];

  if (v29)
  {
    v30 = v149;
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AD6710, &unk_10080B890);
    if (swift_dynamicCast())
    {
      v23 = v148[0];
    }

    else
    {
      v23 = sub_100019158(_swiftEmptyArrayStorage);
    }

    sub_10000ADCC(v24, v26);
  }

  else
  {
    v31 = v149;
    v32 = sub_1007967D4();

    swift_willThrow();
    sub_10000ADCC(v24, v26);
    v18 = 0;
    v33 = v144;
    sub_10079AC84();
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v136 = v32;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalid event JSON", v22, 2u);
      v18 = 0;
    }

    (*(v9 + 8))(v11, v33);
    v23 = _swiftEmptyDictionarySingleton;
  }

  v34 = sub_100797B14();
  sub_10048D520(v34, v35, v23);

  v36 = sub_100797B14();
  v38 = v37;
  v39 = *&v2[OBJC_IVAR___BKPersonalizationEventDonor_config];
  if (!*(v39 + 16))
  {
    goto LABEL_102;
  }

  v40 = v36;

  v41 = sub_10000E53C(v40, v38);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100007484(*(v39 + 56) + 32 * v41, &v149);

  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_103:

    return;
  }

  v129 = v2;
  v44 = v9;
  v45 = v148[0];
  v46 = "setupCollections";
  v47 = v148[0][2];
  v128 = "setupCollections";
  if (v47 && (v48 = sub_10000E53C(0xD000000000000013, 0x80000001008D7140), (v49 & 1) != 0))
  {
    sub_100007484(v45[7] + 32 * v48, &v149);
    v50 = swift_dynamicCast();
    v51 = v144;
    if (v50)
    {
      v136 = v148[1];
      v52 = v45[2];
      v135 = v44;
      if (v52 && (v46 = v148[0], v53 = sub_10000E53C(0x746E656D75677261, 0xE900000000000073), (v54 & 1) != 0) && (sub_100007484(v45[7] + 32 * v53, &v149), sub_1001F1160(&qword_100AE5870, &qword_100828B80), (swift_dynamicCast() & 1) != 0))
      {
        v127 = v148[0];
        v55 = [v129 eventConfigurations];
        sub_100799824();
        v44 = sub_1007A25E4();

        if (v44 >> 62)
        {
          goto LABEL_117;
        }

        v56 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v56)
        {
          goto LABEL_22;
        }

LABEL_118:
        v61 = v51;
LABEL_119:

        v51 = v61;
      }

      else
      {
      }

      v44 = v135;
      if (!v45[2])
      {
        goto LABEL_102;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v51 = v144;
  }

  if (!v45[2])
  {
LABEL_102:

    goto LABEL_103;
  }

LABEL_37:
  v62 = sub_10000E53C(1702060387, 0xE400000000000000);
  if ((v63 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100007484(v45[7] + 32 * v62, &v149);

  sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_103;
  }

  v136 = v148[0][2];
  if (!v136)
  {
    goto LABEL_102;
  }

  v65 = 0;
  v135 = v148[0] + 4;
  v125 = (v140 + 1);
  v134 = (v139 + 2);
  ++v139;
  v133 = v44 + 8;
  *&v64 = 136315138;
  v131 = v64;
  v45 = v143;
  v132 = v23;
  v66 = v148[0];
  v130 = a1;
  while (v65 < v66[2])
  {
    v140 = v65;
    v46 = v135[v65];
    if (*(v46 + 2))
    {

      v68 = sub_10000E53C(0x61567265746C6966, 0xEC0000007365756CLL);
      if (v69)
      {
        sub_100007484(*(v46 + 7) + 32 * v68, &v149);
        sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
        if (swift_dynamicCast())
        {
          v44 = v148[0];
          if (*(v46 + 2) && (v70 = sub_10000E53C(0x61507265746C6966, 0xEA00000000006874), (v71 & 1) != 0) && (sub_100007484(*(v46 + 7) + 32 * v70, &v149), sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0), (swift_dynamicCast() & 1) != 0))
          {
            PersonalizationEventDonor.dictPathValues(_:path:)(v23, v148[0]);
            v73 = v72;

            if (!*(v73 + 16))
            {

              v45 = v143;
              v51 = v144;
              v67 = v140;
              goto LABEL_42;
            }

            sub_100007484(v73 + 32, &v149);

            if (*(v46 + 2) && (v74 = sub_10000E53C(0xD000000000000013, v128 | 0x8000000000000000), (v75 & 1) != 0))
            {
              sub_100007484(*(v46 + 7) + 32 * v74, v148);
              v76 = swift_dynamicCast();
              v45 = v143;
              if (v76)
              {
                v127 = v147;
                v51 = v144;
                if (*(v46 + 2) && (v126 = v146, v77 = sub_10000E53C(0x746E656D75677261, 0xE900000000000073), (v78 & 1) != 0))
                {
                  sub_100007484(*(v46 + 7) + 32 * v77, v148);
                  sub_1001F1160(&qword_100AE5870, &qword_100828B80);
                  if (swift_dynamicCast())
                  {
                    v119 = v146;
                    v79 = [v129 eventConfigurations];
                    sub_100799824();
                    v80 = sub_1007A25E4();

                    v81 = v80;
                    if (v80 >> 62)
                    {
                      v82 = sub_1007A38D4();
                      if (!v82)
                      {
LABEL_98:
                        v88 = v144;
LABEL_99:

                        sub_1000074E0(&v149);
                        v45 = v143;
                        v67 = v140;
                        v51 = v88;
                        goto LABEL_42;
                      }
                    }

                    else
                    {
                      v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!v82)
                      {
                        goto LABEL_98;
                      }
                    }

                    v83 = 0;
                    v124 = v80 & 0xC000000000000001;
                    v123 = v80 & 0xFFFFFFFFFFFFFF8;
                    v122 = v44;
                    v121 = v80;
                    v120 = v82;
                    while (1)
                    {
                      if (v124)
                      {
                        v84 = sub_1007A3784();
                      }

                      else
                      {
                        if (v83 >= *(v123 + 16))
                        {
                          __break(1u);
LABEL_121:
                          __break(1u);
                          return;
                        }

                        v84 = *(v81 + 8 * v83 + 32);
                      }

                      v85 = v84;
                      v86 = v83 + 1;
                      if (__OFADD__(v83, 1))
                      {
                        goto LABEL_121;
                      }

                      if (sub_100799814() == v126 && v87 == v127)
                      {
                        v124 = v66;

                        goto LABEL_87;
                      }

                      v44 = sub_1007A3AB4();

                      if (v44)
                      {
                        break;
                      }

                      ++v83;
                      v60 = v86 == v120;
                      a1 = v130;
                      v88 = v144;
                      v44 = v122;
                      v81 = v121;
                      if (v60)
                      {
                        goto LABEL_99;
                      }
                    }

                    v124 = v66;
LABEL_87:

                    if (*(v46 + 2) && (v109 = sub_10000E53C(0x72416F6475657370, 0xEF73746E656D7567), (v110 & 1) != 0))
                    {
                      sub_100007484(*(v46 + 7) + 32 * v109, v148);

                      sub_1001F1160(&qword_100AE5878, &unk_100828B88);
                      if (swift_dynamicCast())
                      {
                        v46 = v146;
                      }

                      else
                      {
                        v46 = 0;
                      }
                    }

                    else
                    {

                      v46 = 0;
                    }

                    a1 = v130;
                    v111 = sub_100797B14();
                    v113 = _s5Books25PersonalizationEventDonorC5value_19matchesFilterValues05debugC4NameSbyp_SayypGSSSgtF_0(&v149, v122, v111, v112);

                    if (v113)
                    {
                      v114 = v137;
                      sub_100797AF4();
                      v23 = v132;
                      v44 = v127;
                      sub_10048D6DC(v132, v114, v126, v127, v119, v46, v85);

                      (*v125)(v114, v138);
                      sub_1000074E0(&v149);
                      v45 = v143;
                      v51 = v144;
                    }

                    else
                    {
                      sub_1000074E0(&v149);

                      v45 = v143;
                      v51 = v144;
                      v23 = v132;
                    }

                    v66 = v124;
                  }

                  else
                  {
                    sub_1000074E0(&v149);
                  }
                }

                else
                {

                  sub_1000074E0(&v149);
                }

                goto LABEL_78;
              }

              sub_1000074E0(&v149);
            }

            else
            {

              sub_1000074E0(&v149);
              v45 = v143;
            }

            v51 = v144;
          }

          else
          {
            v127 = v18;

            sub_10079AC84();
            v101 = v141;
            (*v134)(v141, a1, v4);
            v102 = v45;
            v103 = sub_10079ACC4();
            v104 = sub_1007A29B4();
            if (os_log_type_enabled(v103, v104))
            {
              v46 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v149 = v126;
              *v46 = v131;
              v105 = sub_100797B14();
              v107 = v106;
              (*v139)(v101, v4);
              v44 = sub_1000070F4(v105, v107, &v149);

              *(v46 + 4) = v44;
              v108 = v104;
              v51 = v144;
              _os_log_impl(&_mh_execute_header, v103, v108, "Filter path components for case in event %s missing or not strings", v46, 0xCu);
              sub_1000074E0(v126);

              (*v133)(v102, v51);
            }

            else
            {

              (*v139)(v101, v4);
              v51 = v144;
              (*v133)(v102, v144);
            }

            v45 = v102;
            v18 = v127;
            v23 = v132;
          }

LABEL_78:
          v67 = v140;
          goto LABEL_42;
        }
      }
    }

    v44 = v23;
    v89 = v66;
    v90 = v51;
    v91 = v145;
    sub_10079AC84();
    v46 = v142;
    (*v134)(v142, a1, v4);
    v92 = sub_10079ACC4();
    v93 = sub_1007A29B4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v46;
      v46 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v149 = v44;
      *v46 = v131;
      v95 = v18;
      v96 = sub_100797B14();
      v98 = v97;
      (*v139)(v94, v4);
      v99 = v96;
      v18 = v95;
      v66 = v89;
      v100 = sub_1000070F4(v99, v98, &v149);
      a1 = v130;
      v23 = v132;

      *(v46 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "Filter values for case in event %s missing", v46, 0xCu);
      sub_1000074E0(v44);
      v51 = v144;

      (*v133)(v145, v51);
      v45 = v143;
      goto LABEL_78;
    }

    (*v139)(v46, v4);
    v51 = v90;
    (*v133)(v91, v90);
    v45 = v143;
    v67 = v140;
    v66 = v89;
    v23 = v44;
LABEL_42:
    v65 = v67 + 1;
    if (v65 == v136)
    {
      goto LABEL_102;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v56 = sub_1007A38D4();
  if (!v56)
  {
    goto LABEL_118;
  }

LABEL_22:
  v51 = 0;
  v134 = (v44 & 0xC000000000000001);
  v133 = v44 & 0xFFFFFFFFFFFFFF8;
  v130 = a1;
  v132 = v44;
  *&v131 = v56;
  while (1)
  {
    if (v134)
    {
      v57 = sub_1007A3784();
    }

    else
    {
      if (v51 >= *(v133 + 16))
      {
        goto LABEL_116;
      }

      v57 = *(v44 + 8 * v51 + 32);
    }

    v44 = v57;
    a1 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_115;
    }

    if (sub_100799814() == v46 && v58 == v136)
    {
      break;
    }

    v59 = sub_1007A3AB4();

    if (v59)
    {
      goto LABEL_107;
    }

    ++v51;
    v60 = a1 == v131;
    a1 = v130;
    v61 = v144;
    v44 = v132;
    if (v60)
    {
      goto LABEL_119;
    }
  }

LABEL_107:

  if (v45[2] && (v115 = sub_10000E53C(0x72416F6475657370, 0xEF73746E656D7567), (v116 & 1) != 0))
  {
    sub_100007484(v45[7] + 32 * v115, &v149);

    sub_1001F1160(&qword_100AE5878, &unk_100828B88);
    if (swift_dynamicCast())
    {
      v117 = v148[0];
    }

    else
    {
      v117 = 0;
    }
  }

  else
  {

    v117 = 0;
  }

  v118 = v137;
  sub_100797AF4();
  sub_10048D6DC(v23, v118, v46, v136, v127, v117, v44);

  (v140[1])(v118, v138);
}

double sub_10048D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100493070(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((a1 != 0xD000000000000014 || 0x80000001008D73C0 != a2) && (sub_1007A3AB4() & 1) == 0 && (a1 == 0xD000000000000017 && 0x80000001008D73E0 == a2 || (sub_1007A3AB4() & 1) != 0 || (a1 != 0xD000000000000014 || 0x80000001008D7400 != a2) && (sub_1007A3AB4() & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    if (!v11 || (sub_100491ABC(v9, v11, v5, v7) & 1) == 0)
    {
      swift_beginAccess();

      sub_1005E912C(v9, v11, v5, v7);
      swift_endAccess();

      return result;
    }

    goto LABEL_11;
  }

LABEL_12:

  return result;
}

void sub_10048D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v176 = a7;
  v183 = a6;
  v182 = a4;
  v180 = a3;
  v172 = a2;
  v181 = a1;
  ObjectType = swift_getObjectType();
  v179 = sub_10079ACE4();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v11 - 8);
  v174 = &v164 - v12;
  v171 = sub_100796AD4();
  __chkstk_darwin(v171);
  v170 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5 + 64;
  v16 = 1 << *(a5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a5 + 64);
  v169 = OBJC_IVAR___BKPersonalizationEventDonor_finishingBookAutomatically;
  v19 = (v16 + 63) >> 6;
  v187 = "events-controller";
  v168 = (v13 + 8);
  v190 = a5;

  v20 = 0;
  v173 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyDictionarySingleton;
  v188 = _swiftEmptyArrayStorage;
  v184 = v7;
LABEL_4:
  v186 = v22;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_5:
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v23 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v20;
    if (v18)
    {
      v20 = v23;
      while (1)
      {
LABEL_9:
        v24 = __clz(__rbit64(v18)) | (v20 << 6);
        v25 = *(v190 + 56);
        v26 = (*(v190 + 48) + 16 * v24);
        v27 = v26[1];
        v191 = *v26;
        v28 = *(v25 + 8 * v24);
        v29 = *(v28 + 16);
        *&v192 = v27;

        if (!v29)
        {
          v189 = 0;
          if (!*(v28 + 16))
          {
            goto LABEL_28;
          }

LABEL_21:
          v34 = sub_10000E53C(0x746C694674736F70, 0xEA00000000007265);
          if (v35)
          {
            sub_100007484(*(v28 + 56) + 32 * v34, v199);
            if (swift_dynamicCast())
            {
              v36 = v196;
              v37 = v197;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v185 = v29;
              v39 = v21;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v188 = sub_10066BCBC(0, v188[2] + 1, 1, v188);
              }

              v41 = v188[2];
              v40 = v188[3];
              if (v41 >= v40 >> 1)
              {
                v188 = sub_10066BCBC((v40 > 1), v41 + 1, 1, v188);
              }

              v42 = v188;
              v188[2] = v41 + 1;
              v43 = &v42[4 * v41];
              v44 = v192;
              *(v43 + 4) = v191;
              *(v43 + 5) = v44;
              v43[6] = v36;
              *(v43 + 7) = v37;
              v21 = v39;
              v8 = v184;
              v29 = v185;
            }
          }

          goto LABEL_28;
        }

        v30 = sub_10000E53C(0xD000000000000012, v187 | 0x8000000000000000);
        if ((v31 & 1) == 0)
        {
          v189 = 0;
          v29 = 0;
          if (!*(v28 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        sub_100007484(*(v28 + 56) + 32 * v30, v199);
        v32 = swift_dynamicCast();
        v33 = *&v196;
        if (!v32)
        {
          v33 = 0;
        }

        v189 = v33;
        if (v32)
        {
          v29 = v197;
        }

        else
        {
          v29 = 0;
        }

        if (*(v28 + 16))
        {
          goto LABEL_21;
        }

LABEL_28:
        v18 &= v18 - 1;
        if (*(v28 + 16))
        {
          v45 = sub_10000E53C(1752457584, 0xE400000000000000);
          if (v46)
          {
            break;
          }
        }

LABEL_37:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
        }

        v51 = *(v21 + 2);
        v50 = *(v21 + 3);
        v52 = v51 + 1;
        if (v51 < v50 >> 1)
        {
          goto LABEL_40;
        }

LABEL_35:
        v21 = sub_10000B3D8((v50 > 1), v52, 1, v21);
LABEL_40:
        *(v21 + 2) = v52;
        v53 = &v21[16 * v51];
        v54 = v192;
        *(v53 + 4) = v191;
        *(v53 + 5) = v54;
        if (!v18)
        {
          goto LABEL_5;
        }
      }

      sub_100007484(*(v28 + 56) + 32 * v45, v199);

      sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      v185 = v29;
      v47 = v8;
      PersonalizationEventDonor.dictPathValues(_:path:)(v181, *&v196);
      v49 = v48;

      v199[0] = v49;
      sub_1001F1160(&qword_100ADEC60, &unk_10081EB80);
      sub_100005920(&qword_100AE59E0, &qword_100ADEC60, &unk_10081EB80, &protocol conformance descriptor for [A]);
      if ((sub_1007A28A4() & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
        }

        v8 = v47;
        v51 = *(v21 + 2);
        v50 = *(v21 + 3);
        v52 = v51 + 1;
        if (v51 < v50 >> 1)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      v55 = v185;
      v165 = *(v49 + 16);
      if (v165)
      {
        v56 = 0;
        v57 = v49 + 32;
        v164 = v49;
        while (1)
        {
          if (v56 >= *(v49 + 16))
          {
            goto LABEL_144;
          }

          v167 = v56;
          v166 = v57;
          sub_100007484(v57, v199);
          v198 = &type metadata for String;
          v196 = 0.0;
          v197 = 0xE000000000000000;
          sub_100007484(v199, v195);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_100007484(v199, v195);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

          sub_100007484(v199, v195);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

          sub_100007484(v199, v195);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

LABEL_53:
          if (!v55)
          {
            goto LABEL_88;
          }

          v59._rawValue = &off_100A0D260;
          v200._countAndFlagsBits = v189;
          v200._object = v55;
          v60 = sub_1007A3964(v59, v200);

          if (v60 > 1)
          {
            if (v60 == 2)
            {
              sub_100007484(v199, v195);
              if (!swift_dynamicCast())
              {
                goto LABEL_88;
              }

              v73 = *v194;
              sub_1000074E0(&v196);
              v74 = v73 / 100.0;
              v198 = &type metadata for Double;
              goto LABEL_87;
            }

            if (v60 == 3)
            {
              sub_1000074E0(&v196);
              v65 = v47[v169];
              v66 = 0x796C6C61756E616DLL;
              if (v65)
              {
                v66 = 0x6974616D6F747561;
              }

              v67 = 0xE800000000000000;
              if (v65)
              {
                v67 = 0xED0000796C6C6163;
              }

              v68 = v65 == 2;
              *&v69 = 1.35580621e-306;
              if (!v68)
              {
                v69 = v66;
              }

              v198 = &type metadata for String;
              v70 = 0xE700000000000000;
              if (!v68)
              {
                v70 = v67;
              }

              v196 = *&v69;
              v197 = v70;
              v47[v169] = 2;
            }
          }

          else
          {
            if (!v60)
            {
              sub_1000074E0(&v196);
              v71 = v170;
              sub_1007963F4();
              v198 = &type metadata for String;
              sub_100492E14(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
              v72 = v171;
              sub_100796B94();
              (*v168)(v71, v72);
              goto LABEL_88;
            }

            if (v60 == 1)
            {
              sub_100007484(v199, v195);
              v61 = swift_dynamicCast();
              if (v61)
              {
                v62 = v194[1];
                v194[0] = 0;
                __chkstk_darwin(v61);
                *(&v164 - 2) = v194;
                if ((v62 & 0x1000000000000000) != 0)
                {
                  goto LABEL_106;
                }

                if ((v62 & 0x2000000000000000) != 0)
                {
                  v195[0] = v63;
                  v195[1] = v62 & 0xFFFFFFFFFFFFFFLL;
                  if (v63 < 0x21u && ((0x100003E01uLL >> v63) & 1) != 0)
                  {
                    goto LABEL_80;
                  }

LABEL_81:
                  v76 = _swift_stdlib_strtod_clocale();
                  if (v76)
                  {
                    v75 = *v76 == 0;
                  }

                  else
                  {
                    v75 = 0;
                  }

LABEL_84:
                  v193 = v75;
                }

                else
                {
                  if ((v63 & 0x1000000000000000) != 0)
                  {
                    v64 = *((v62 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    if (v64 >= 0x21 || ((0x100003E01uLL >> v64) & 1) == 0)
                    {
                      goto LABEL_81;
                    }

LABEL_80:
                    v75 = 0;
                    goto LABEL_84;
                  }

LABEL_106:
                  v101 = v173;
                  sub_1007A3714();
                  v173 = v101;
                }

                if (!v193)
                {
                  goto LABEL_88;
                }

                v77 = *v194;
                sub_1000074E0(&v196);
                v74 = v77 / 5.0;
                v198 = &type metadata for Double;
LABEL_87:
                v196 = v74;
              }
            }
          }

LABEL_88:
          v78 = v186;
          if (v186[2])
          {
            v79 = v21;
            v80 = sub_10000E53C(v191, v192);
            if (v81)
            {
              v82 = *(*(v78 + 56) + 8 * v80);

              goto LABEL_93;
            }
          }

          else
          {
            v79 = v21;
          }

          v82 = _swiftEmptyArrayStorage;
LABEL_93:
          sub_100007484(&v196, v195);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_10066A640(0, *(v82 + 2) + 1, 1, v82);
          }

          v84 = *(v82 + 2);
          v83 = *(v82 + 3);
          if (v84 >= v83 >> 1)
          {
            v82 = sub_10066A640((v83 > 1), v84 + 1, 1, v82);
          }

          *(v82 + 2) = v84 + 1;
          sub_1000076D4(v195, &v82[32 * v84 + 32]);
          v85 = v186;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v195[0] = v85;
          v88 = sub_10000E53C(v191, v192);
          v89 = *(v85 + 16);
          v90 = (v87 & 1) == 0;
          v91 = v89 + v90;
          if (__OFADD__(v89, v90))
          {
            goto LABEL_145;
          }

          v92 = v87;
          if (*(v85 + 24) >= v91)
          {
            if ((v86 & 1) == 0)
            {
              sub_1002F1F80();
            }
          }

          else
          {
            sub_1003D5ECC(v91, v86);
            v93 = sub_10000E53C(v191, v192);
            if ((v92 & 1) != (v94 & 1))
            {
              goto LABEL_149;
            }

            v88 = v93;
          }

          v95 = v195[0];
          v186 = v195[0];
          if (v92)
          {
            *(*(v195[0] + 56) + 8 * v88) = v82;

            sub_1000074E0(v199);
          }

          else
          {
            *(v195[0] + 8 * (v88 >> 6) + 64) |= 1 << v88;
            v96 = (v95[6] + 16 * v88);
            v97 = v192;
            *v96 = v191;
            v96[1] = v97;
            *(v95[7] + 8 * v88) = v82;

            sub_1000074E0(v199);
            v98 = v95[2];
            v99 = __OFADD__(v98, 1);
            v100 = v98 + 1;
            if (v99)
            {
              goto LABEL_146;
            }

            v95[2] = v100;
          }

          v21 = v79;
          v55 = v185;
          v56 = v167 + 1;
          sub_1000074E0(&v196);
          v57 = v166 + 32;
          v47 = v184;
          v49 = v164;
          if (v165 == v56)
          {
            goto LABEL_107;
          }
        }

LABEL_52:
        sub_100492E5C(&v196, v199, v58);
        goto LABEL_53;
      }

LABEL_107:

      v22 = v186;
      v8 = v47;
      goto LABEL_4;
    }
  }

  if (v183)
  {
    v102 = v183;
  }

  else
  {
    v102 = sub_1001EEBD8(_swiftEmptyArrayStorage);
  }

  v103 = 1 << *(v102 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & *(v102 + 64);
  v106 = OBJC_IVAR___BKPersonalizationEventDonor_booksPersonalizationSectionIDs;
  v107 = (v103 + 63) >> 6;

  v108 = 0;
  v192 = xmmword_10080B690;
  if (!v105)
  {
LABEL_116:
    while (1)
    {
      v115 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        goto LABEL_143;
      }

      if (v115 >= v107)
      {

        if (*(v21 + 2))
        {

          v146 = v177;
          sub_10079AC84();
          v147 = v182;

          v148 = sub_10079ACC4();
          v149 = sub_1007A29B4();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v199[0] = swift_slowAlloc();
            *v150 = 136315394;
            *(v150 + 4) = sub_1000070F4(v180, v147, v199);
            *(v150 + 12) = 2080;

            v151 = sub_1007A25F4();
            v153 = v152;

            v154 = sub_1000070F4(v151, v153, v199);

            *(v150 + 14) = v154;
            _os_log_impl(&_mh_execute_header, v148, v149, "Event %s with missing arguments %s", v150, 0x16u);
            swift_arrayDestroy();
          }

          (*(v178 + 8))(v146, v179);
        }

        else
        {
          v155 = _s5Books25PersonalizationEventDonorC11listOfDicts08fromDictF5ListsSaySDySSypGGSDySSSayypGG_tF_0(v186);
          v156 = sub_1007A2744();
          v157 = v174;
          (*(*(v156 - 8) + 56))(v174, 1, 1, v156);
          v158 = swift_allocObject();
          v158[2] = 0;
          v158[3] = 0;
          v158[4] = v155;
          v158[5] = v8;
          v159 = v180;
          v158[6] = v188;
          v158[7] = v159;
          v160 = v8;
          v161 = v176;
          v158[8] = v182;
          v158[9] = v161;
          v158[10] = ObjectType;
          v162 = v160;

          v163 = v161;
          sub_1003457A0(0, 0, v157, &unk_100828CB8, v158);
        }

        return;
      }

      v105 = *(v102 + 64 + 8 * v115);
      ++v108;
      if (v105)
      {
        v108 = v115;
        goto LABEL_114;
      }
    }
  }

  while (1)
  {
LABEL_114:
    while (1)
    {
      v109 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v110 = (*(v102 + 48) + ((v108 << 10) | (16 * v109)));
      v111 = *v110;
      v112 = v110[1];

      v113._rawValue = &off_100A0D2E0;
      v201._countAndFlagsBits = v111;
      v201._object = v112;
      v114 = sub_1007A3964(v113, v201);

      if (!v114)
      {
        break;
      }

      if (!v105)
      {
        goto LABEL_116;
      }
    }

    v191 = v106;
    v190 = v21;
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v116 = swift_allocObject();
    *(v116 + 16) = v192;
    v117 = sub_100493070(v181);
    v121 = v120;
    if (v119)
    {
      v122 = v118;
      v123 = v119;

      v117 = v122;
      v121 = v123;
    }

    v124 = sub_100491970(v117, v121);
    v126 = v125;

    if (v126)
    {
      v187 = &v164;
      v189 = v116;
      v128 = *&v8[v191];
      v199[0] = v124;
      v199[1] = v126;
      __chkstk_darwin(v127);
      *(&v164 - 2) = v199;

      v129 = v173;
      v130 = sub_100580218(sub_100266288, (&v164 - 4), v128);
      v173 = v129;

      v116 = v189;
    }

    else
    {
      v130 = 0;
    }

    *(v116 + 56) = &type metadata for Bool;
    *(v116 + 32) = v130 & 1;
    v131 = v186;
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v199[0] = v131;
    v133 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
    v135 = *(v131 + 16);
    v136 = (v134 & 1) == 0;
    v99 = __OFADD__(v135, v136);
    v137 = v135 + v136;
    if (v99)
    {
      break;
    }

    v138 = v134;
    v8 = v184;
    if (*(v131 + 24) >= v137)
    {
      if ((v132 & 1) == 0)
      {
        v144 = v116;
        v145 = v133;
        sub_1002F1F80();
        v133 = v145;
        v116 = v144;
      }
    }

    else
    {
      sub_1003D5ECC(v137, v132);
      v133 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
      if ((v138 & 1) != (v139 & 1))
      {
        goto LABEL_149;
      }
    }

    v106 = v191;
    v140 = v199[0];
    v186 = v199[0];
    if (v138)
    {
      *(*(v199[0] + 56) + 8 * v133) = v116;
    }

    else
    {
      *(v199[0] + 8 * (v133 >> 6) + 64) |= 1 << v133;
      v141 = v140[6] + 16 * v133;
      strcpy(v141, "weRecommended");
      *(v141 + 14) = -4864;
      *(v140[7] + 8 * v133) = v116;
      v142 = v140[2];
      v99 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (v99)
      {
        goto LABEL_148;
      }

      v140[2] = v143;
    }

    v21 = v190;
    if (!v105)
    {
      goto LABEL_116;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_10048EB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = sub_100796AD4();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_100796BB4();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  if (qword_100AD1708 != -1)
  {
    swift_once();
  }

  v11 = qword_100AE5858;

  return _swift_task_switch(sub_10048EC5C, v11, 0);
}

uint64_t sub_10048EC5C(uint64_t a1)
{
  v3 = v1[20];
  v2 = v1[21];
  v5 = v1[18];
  v4 = v1[19];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[11];
  sub_100796BA4();
  sub_1007963F4();
  sub_100492E14(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
  sub_100796B94();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v10 = v1[8];
  v9 = v1[9];
  v11 = OBJC_IVAR___BKPersonalizationEventDonor_cachedEnagagementPropertyValues;
  swift_beginAccess();
  v12 = *(v8 + v11);
  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v14 = v1[12];
  v13 = v1[13];

  v15 = sub_10000E53C(v14, v13);
  if ((v16 & 1) == 0)
  {

LABEL_5:
    v17 = sub_1001EEBEC(_swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v17 = *(*(v12 + 56) + 8 * v15);

LABEL_6:
  v18 = v1[11];
  v19 = (v18 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedPropertyTimestamp);
  v20 = *(v18 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedPropertyTimestamp + 8);
  v35 = v17;
  if (v20 && ((result = *v19, *v19 == v10) ? (v22 = v20 == v9) : (v22 = 0), v22 || (result = sub_1007A3AB4(), v18 = v1[11], (result & 1) != 0)))
  {
    v23 = OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex;
    v24 = *(v18 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    *(v18 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex) = v26;
    v38._countAndFlagsBits = 45;
    v38._object = 0xE100000000000000;
    sub_1007A23D4(v38);
    v1[10] = *(v18 + v23);
    v39._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v39);
  }

  else
  {
    *(v18 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex) = 0;
    *v19 = v10;
    v19[1] = v9;
  }

  v27 = v1[14];
  v34 = v1[15];
  v28 = v1[12];
  v29 = v1[13];
  v30 = v1[11];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F616C(v27, v10, v9, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v8 + v11);
  *(v8 + v11) = 0x8000000000000000;
  sub_1002F6130(v35, v28, v29, v32);

  *(v8 + v11) = v36;
  swift_endAccess();
  [v30 propertyDidChange:v30 propertyConfiguration:v34];

  v33 = v1[1];

  return v33();
}

uint64_t sub_10048EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v12;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v9 = sub_10079ACE4();
  v8[57] = v9;
  v8[58] = *(v9 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();

  return _swift_task_switch(sub_10048F0C0, 0, 0);
}

void sub_10048F0C0()
{
  v78 = v0;
  v1 = *(*(v0 + 392) + 16);
  *(v0 + 488) = v1;
  if (v1)
  {
    v2 = 0x4165726F74537369;
    v3 = OBJC_IVAR___BKPersonalizationEventDonor_libraryAssetProvider;
    *(v0 + 496) = *(*(v0 + 408) + 16);
    *(v0 + 504) = v3;
    swift_beginAccess();
    for (i = 0; ; i = *(v0 + 512) + 1)
    {
      *(v0 + 512) = i;
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 400);
      *(v0 + 520) = *(*(v0 + 392) + 8 * i + 32);
      sub_1000077D8(v7 + v5, v0 + 16, &qword_100AE59C8, &unk_100828C98);

      if (v6)
      {
        break;
      }

LABEL_47:
      v35 = *(v0 + 448);
      v36 = *(v0 + 432);
      v37 = *(v0 + 400);
      v38 = sub_1007A2744();
      v74 = *(v38 - 8);
      (*(v74 + 56))(v35, 1, 1, v38);
      v39 = qword_100AD1708;

      v40 = v37;
      v41 = v36;
      if (v39 != -1)
      {
        swift_once();
      }

      v42 = *(v0 + 440);
      v70 = *(v0 + 520);
      v72 = *(v0 + 448);
      v43 = *(v0 + 424);
      v44 = *(v0 + 432);
      v45 = *(v0 + 416);
      v46 = *(v0 + 400);
      v47 = qword_100AE5858;
      v48 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1, &unk_100828C64);
      v49 = swift_allocObject();
      v49[2] = v47;
      v49[3] = v48;
      v49[4] = v46;
      v49[5] = v45;
      v49[6] = v43;
      v49[7] = v70;
      v49[8] = v44;
      sub_1000077D8(v72, v42, &qword_100AD67D0, &qword_100814660);
      LODWORD(v42) = (*(v74 + 48))(v42, 1, v38);

      v50 = *(v0 + 440);
      if (v42 == 1)
      {
        sub_100007840(*(v0 + 440), &qword_100AD67D0, &qword_100814660);
      }

      else
      {
        sub_1007A2734();
        (*(v74 + 8))(v50, v38);
      }

      v51 = v49[2];
      swift_unknownObjectRetain();

      v2 = 0x4165726F74537369;
      if (v51)
      {
        swift_getObjectType();
        v52 = sub_1007A2694();
        v54 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      sub_100007840(*(v0 + 448), &qword_100AD67D0, &qword_100814660);
      v55 = swift_allocObject();
      *(v55 + 16) = &unk_100828CC8;
      *(v55 + 24) = v49;
      if (v54 | v52)
      {
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v52;
        *(v0 + 232) = v54;
      }

      swift_task_create();

LABEL_59:
      v56 = *(v0 + 488);
      v57 = *(v0 + 512) + 1;
      sub_100007840(v0 + 16, &qword_100AE59C8, &unk_100828C98);
      if (v57 == v56)
      {
        goto LABEL_61;
      }
    }

    v8 = 0;
    v9 = 1;
    while (1)
    {
      while (1)
      {
        *(v0 + 568) = v9 & 1;
        v11 = (*(v0 + 408) + 32 * v8);
        v13 = v11[4];
        v12 = v11[5];
        v14 = v11[6];
        v15 = v11[7];
        v16 = __OFADD__(v8++, 1);
        *(v0 + 528) = v8;
        if (v16)
        {
          __break(1u);
          return;
        }

        if (*(*(v0 + 520) + 16))
        {

          v17 = sub_10000E53C(v13, v12);
          v19 = v18;

          if (v19)
          {
            sub_100007484(*(*(v0 + 520) + 56) + 32 * v17, v0 + 176);
          }

          else
          {
            *(v0 + 176) = 0u;
            *(v0 + 192) = 0u;
          }
        }

        else
        {
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
        }

        v20 = &unk_100AD5B40;
        v21 = v14 == 0x4165726F74537369 && v15 == 0xEE00444974657373;
        if (!v21 && (sub_1007A3AB4() & 1) == 0)
        {
          break;
        }

        sub_1000077D8(v0 + 176, v0 + 272, &unk_100AD5B40, &unk_100811300);
        if (*(v0 + 296))
        {
          if (swift_dynamicCast())
          {

            v22 = *(v0 + 344);
            v20 = *(v0 + 352);
            *(v0 + 536) = v20;
            sub_1000077D8(v0 + 16, v0 + 136, &qword_100AE59C8, &unk_100828C98);
            v23 = *(v0 + 160);
            if (v23)
            {
              v59 = *(v0 + 168);
              sub_10000E3E8((v0 + 136), *(v0 + 160));
              v75 = (*(v59 + 24) + **(v59 + 24));
              v60 = swift_task_alloc();
              *(v0 + 544) = v60;
              *v60 = v0;
              v60[1] = sub_10048FCA4;
              v61 = v22;
              v62 = v20;
              v63 = v23;
              v64 = v59;
              v65 = v75;

LABEL_66:
              v65(v61, v62, v63, v64);
              return;
            }

            sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

            sub_100007840(v0 + 136, &qword_100AE59C8, &unk_100828C98);
            if ((v9 & 1) == 0)
            {
              v8 = *(v0 + 528);
            }

            goto LABEL_29;
          }
        }

        else
        {
          sub_100007840(v0 + 272, &unk_100AD5B40, &unk_100811300);
        }

        sub_10079AC84();

        v20 = sub_10079ACC4();
        v24 = sub_1007A29B4();

        v25 = os_log_type_enabled(v20, v24);
        v26 = *(v0 + 480);
LABEL_25:
        v73 = *(v0 + 456);
        v27 = (*(v0 + 464) + 8);
        if (v25)
        {
          v28 = *(v0 + 416);
          v69 = *(v0 + 424);
          v71 = v26;
          v29 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v29 = 136315394;
          *(v29 + 4) = sub_1000070F4(v28, v69, &v77);
          *(v29 + 12) = 2080;
          v30 = sub_1000070F4(v14, v15, &v77);

          *(v29 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v20, v24, "Event %s with non-String for validation %s", v29, 0x16u);
          swift_arrayDestroy();
          v2 = 0x4165726F74537369;

          (*v27)(v71, v73);
        }

        else
        {

          (*v27)(v26, v73);
        }

        sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);
LABEL_29:
        v31 = *(v0 + 496);
        if (v8 == v31)
        {
          goto LABEL_51;
        }

LABEL_30:
        v9 = 0;
        if (v8 >= v31)
        {
LABEL_67:
          __break(1u);
LABEL_68:
          sub_100009864(v0 + 56, v0 + 96);
          sub_100007840(v0 + 56, &qword_100AE59C8, &unk_100828C98);
          v66 = *(v0 + 120);
          v67 = *(v0 + 128);
          sub_10000E3E8((v0 + 96), v66);
          v76 = (*(v67 + 16) + **(v67 + 16));
          v68 = swift_task_alloc();
          *(v0 + 560) = v68;
          *v68 = v0;
          v68[1] = sub_100490B20;
          v61 = v2;
          v62 = v20;
          v63 = v66;
          v64 = v67;
          v65 = v76;

          goto LABEL_66;
        }
      }

      v32 = v14 == 0xD000000000000016 && 0x80000001008D7380 == v15;
      if (v32 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1000077D8(v0 + 176, v0 + 240, &unk_100AD5B40, &unk_100811300);
        if (*(v0 + 264))
        {
          if (swift_dynamicCast())
          {
            v33 = *(v0 + 504);
            v34 = *(v0 + 400);

            v2 = *(v0 + 328);
            v20 = *(v0 + 336);
            *(v0 + 552) = v20;
            sub_1000077D8(v34 + v33, v0 + 56, &qword_100AE59C8, &unk_100828C98);
            if (*(v0 + 80))
            {
              goto LABEL_68;
            }

            sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

            sub_100007840(v0 + 56, &qword_100AE59C8, &unk_100828C98);
            if ((v9 & 1) == 0)
            {
              v8 = *(v0 + 528);
            }

            v31 = *(v0 + 496);
            v2 = 0x4165726F74537369;
            if (v8 == v31)
            {
              goto LABEL_51;
            }

            goto LABEL_30;
          }
        }

        else
        {
          sub_100007840(v0 + 240, &unk_100AD5B40, &unk_100811300);
        }

        sub_10079AC84();

        v20 = sub_10079ACC4();
        v24 = sub_1007A29B4();

        v25 = os_log_type_enabled(v20, v24);
        v26 = *(v0 + 472);
        goto LABEL_25;
      }

      sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

      v8 = *(v0 + 528);
      v10 = *(v0 + 496);
      if (v8 == v10)
      {
        if (v9)
        {
          goto LABEL_47;
        }

LABEL_51:

        goto LABEL_59;
      }

      if (v8 >= v10)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_61:

  v58 = *(v0 + 8);

  v58();
}