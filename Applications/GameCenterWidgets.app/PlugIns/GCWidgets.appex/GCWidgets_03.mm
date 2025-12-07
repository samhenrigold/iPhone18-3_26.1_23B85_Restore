unint64_t sub_10004F35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096780, &qword_100075C80);
    v3 = sub_100072F1C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10004DCC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10004F470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100094D18, &unk_100073E60);
    v3 = sub_100072F1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10004DCC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10004F574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096798, &qword_100075C98);
    v3 = sub_100072F1C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v7;
      result = sub_10004DCC0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_10004F688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096788, &qword_100075C88);
    v3 = sub_100072F1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004C94(v4, &v13, &qword_100096790, &qword_100075C90);
      v5 = v13;
      v6 = v14;
      result = sub_10004DCC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10003B36C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10004F7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_1000967A0, &qword_100075CA0);
    v3 = sub_100072F1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004C94(v4, v13, &qword_1000967A8, qword_100075CA8);
      result = sub_10004DD38(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10003B36C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10004F908(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071F9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004F988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071F9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ViewGeometryAnalyzer(uint64_t a1)
{
  result = qword_100096808;
  if (!qword_100096808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004FA44(uint64_t a1)
{
  result = sub_100071F9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10004FACC()
{
  result = 0.0;
  xmmword_100099A20 = 0u;
  *algn_100099A30 = 0u;
  return result;
}

double sub_10004FAE0@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100094730 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_100099A20;
  v2 = *algn_100099A30;
  *a1 = xmmword_100099A20;
  a1[1] = v2;
  return result;
}

double sub_10004FB48(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_10004FB90@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10004FC7C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10004FDAC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10004FE10;
  a2[1] = v7;
  return result;
}

uint64_t sub_10004FC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewGeometryAnalyzer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FCE0()
{
  v1 = *(type metadata accessor for ViewGeometryAnalyzer(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100071F9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004FDAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewGeometryAnalyzer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10004FE10(uint64_t a1@<X8>)
{
  type metadata accessor for ViewGeometryAnalyzer(0);
  v2 = sub_1000726DC();
  sub_100071F4C();
  *a1 = v2;
  *(a1 + 8) = 256;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

unint64_t sub_10004FEB8()
{
  result = qword_100096840;
  if (!qword_100096840)
  {
    sub_1000038D4(&qword_100096848, qword_100075D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096840);
  }

  return result;
}

uint64_t sub_10004FF1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657263;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0xD000000000000011;
    v12 = 0x80000001000775D0;
    if (a1 != 6)
    {
      v11 = 0xD00000000000001ALL;
      v12 = 0x80000001000775F0;
    }

    v13 = 0xE800000000000000;
    v14 = 0x656C746974627573;
    if (a1 != 4)
    {
      v14 = 0x7374726F70707573;
      v13 = 0xEE00656461637241;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x4449656C646E7562;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
      v5 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x44496D616461;
    if (!a1)
    {
      v8 = 0x6E6F697461657263;
      v7 = 0xEC00000065746144;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001000775D0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x80000001000775F0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x656C746974627573)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xEE00656461637241;
      if (v9 != 0x7374726F70707573)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x4449656C646E7562)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656C746974;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v9 != 0x44496D616461)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v9 != v3)
    {
LABEL_44:
      v15 = sub_100072FFC();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1000501A0(uint64_t a1, void (*a2)(char *, uint64_t), __n128 a3)
{
  v99 = a2;
  v3 = type metadata accessor for AppMetadata(0);
  __chkstk_darwin(v3);
  v97 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100071C9C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v98 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v90 - v9;
  __chkstk_darwin(v10);
  v12 = &v90 - v11;
  __chkstk_darwin(v13);
  v15 = &v90 - v14;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v103 = &v90 - v20;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 URLsForDirectory:13 inDomains:1];

  v24 = sub_100072C4C();
  if (!*(v24 + 16))
  {

    return 0;
  }

  v101 = v6;
  v26 = *(v6 + 16);
  v25 = v6 + 16;
  v27 = v24 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
  v94 = v26;
  v95 = v5;
  v93 = v25;
  v26(v103, v27, v5);

  sub_100071C4C();
  v28 = v3;
  v29 = v102;

  sub_100071C4C();

  v100 = v12;
  sub_100071C5C();
  v30 = [v21 defaultManager];
  sub_100071C7C();
  v31 = sub_100072B2C();

  v32 = [v30 fileExistsAtPath:v31];

  v33 = v29;
  v96 = v18;
  v91 = v15;
  if ((v32 & 1) == 0)
  {
    v34 = v21;
    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v35 = sub_100071E7C();
    v36 = sub_100007DE8(v35, qword_100099998);
    v37 = v92;
    v38 = v95;
    v94(v92, v15, v95);
    v90 = v36;
    v39 = sub_100071E5C();
    v40 = sub_100072CFC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v28;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v105 = v43;
      *v42 = 136315138;
      sub_1000546C0(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v44 = sub_100072FEC();
      v46 = v45;
      v99 = *(v101 + 8);
      v99(v37, v38);
      v47 = sub_100034D20(v44, v46, &v105);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Creating directory for app metadata at %s", v42, 0xCu);
      sub_100007F50(v43);

      v28 = v41;
      v15 = v91;
    }

    else
    {

      v99 = *(v101 + 8);
      v99(v37, v38);
    }

    v48 = [v34 defaultManager];
    sub_100071C3C(v49);
    v51 = v50;
    v105 = 0;
    v52 = [v48 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:&v105];

    v53 = v96;
    if (v52)
    {
      v54 = v105;
      v33 = v102;
      goto LABEL_11;
    }

    v79 = v105;
    v80 = sub_100071C1C();

    swift_willThrow();
    swift_errorRetain();
    v81 = sub_100071E5C();
    v82 = sub_100072CFC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v105 = v84;
      *v83 = 136315138;
      v104 = v80;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v85 = sub_100072B4C();
      v87 = sub_100034D20(v85, v86, &v105);

      *(v83 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Unable to create metadata directory %s.", v83, 0xCu);
      sub_100007F50(v84);
    }

    v88 = v99;
    v99(v100, v38);
    v88(v15, v38);
    v88(v53, v38);
    v88(v103, v38);
    return 0;
  }

LABEL_11:
  v56 = v97;
  v55 = v98;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v57 = sub_100071E7C();
  v58 = sub_100007DE8(v57, qword_100099998);
  sub_10005402C(v33, v56);
  v59 = v100;
  v60 = v95;
  v94(v55, v100, v95);
  v99 = v58;
  v61 = sub_100071E5C();
  v62 = sub_100072CFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v56;
    v64 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v64 = 136315394;
    v65 = (v63 + *(v28 + 20));
    v66 = *v65;
    v67 = v65[1];

    sub_100054090(v63);
    v68 = sub_100034D20(v66, v67, &v105);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    sub_1000546C0(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = sub_100072FEC();
    v71 = v70;
    v72 = *(v101 + 8);
    v72(v55, v60);
    v73 = sub_100034D20(v69, v71, &v105);
    v59 = v100;

    *(v64 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v61, v62, "Encoding %s's metadata and writing to %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v72 = *(v101 + 8);
    v72(v55, v60);
    sub_100054090(v56);
  }

  sub_100071BEC();
  swift_allocObject();
  sub_100071BDC();
  sub_1000546C0(&qword_100096850, type metadata accessor for AppMetadata, &unk_100075E88);
  v74 = sub_100071BCC();
  v75 = v91;
  v76 = v74;
  v78 = v77;

  sub_100071CDC();
  sub_1000086B8(v76, v78);
  v72(v59, v60);
  v72(v75, v60);
  v72(v96, v60);
  v72(v103, v60);
  return 1;
}

uint64_t sub_100050D68(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t), int a5, void (*a6)(void), uint64_t a7)
{
  v203 = a2;
  v208 = a5;
  v206 = a3;
  v207 = a4;
  v202 = a1;
  v9 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v9 - 8);
  v183 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v185 = &v182 - v12;
  __chkstk_darwin(v13);
  v189 = &v182 - v14;
  __chkstk_darwin(v15);
  v188 = &v182 - v16;
  __chkstk_darwin(v17);
  v191 = &v182 - v18;
  v19 = sub_100071C9C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v186 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v182 = &v182 - v23;
  __chkstk_darwin(v24);
  v184 = &v182 - v25;
  __chkstk_darwin(v26);
  v193 = &v182 - v27;
  __chkstk_darwin(v28);
  v190 = &v182 - v29;
  __chkstk_darwin(v30);
  v187 = &v182 - v31;
  __chkstk_darwin(v32);
  v196 = &v182 - v33;
  __chkstk_darwin(v34);
  v209 = &v182 - v35;
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  __chkstk_darwin(v39);
  v41 = &v182 - v40;
  __chkstk_darwin(v42);
  v44 = &v182 - v43;
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  v205 = objc_opt_self();
  v48 = [v205 defaultManager];
  v49 = [v48 URLsForDirectory:13 inDomains:1];

  v50 = sub_100072C4C();
  if (!*(v50 + 16))
  {

    return (a6)(0, 0);
  }

  v197 = a7;
  v198 = a6;
  v201 = v20;
  v52 = *(v20 + 16);
  v51 = v20 + 16;
  v53 = v50 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
  v192 = v19;
  v195 = v51;
  v194 = v52;
  v52(v47, v53, v19);

  v200 = v47;
  sub_100071C4C();
  v54 = type metadata accessor for AppMetadata(0);
  v55 = v204;

  v203 = v44;
  sub_100071C4C();

  sub_100071C4C();
  LOBYTE(v215) = v208;
  v215 = sub_100072B4C();
  v216 = v56;
  v218._countAndFlagsBits = 95;
  v218._object = 0xE100000000000000;
  sub_100072B7C(v218);
  v212 = v206;
  v219._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v219);

  v220._countAndFlagsBits = 120;
  v220._object = 0xE100000000000000;
  sub_100072B7C(v220);
  v212 = v207;
  v221._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v221);

  v222._countAndFlagsBits = 0x636965682ELL;
  v222._object = 0xE500000000000000;
  sub_100072B7C(v222);
  v57 = v209;
  sub_100071C4C();

  v58 = v205;
  v59 = [v205 defaultManager];
  sub_100071C7C();
  v60 = sub_100072B2C();

  v61 = [v59 fileExistsAtPath:v60];

  v199 = v38;
  if (v61)
  {
    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v205 = v41;
    v62 = sub_100071E7C();
    sub_100007DE8(v62, qword_100099998);
    v63 = v196;
    v64 = v57;
    v65 = v57;
    v66 = v192;
    v194(v196, v65, v192);
    v67 = sub_100071E5C();
    v68 = sub_100072CFC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v215 = v70;
      *v69 = 136315138;
      sub_1000546C0(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v71 = sub_100072FEC();
      v72 = v63;
      v74 = v73;
      v75 = *(v201 + 8);
      v75(v72, v66);
      v76 = sub_100034D20(v71, v74, &v215);

      *(v69 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "Fetching cached image from %s", v69, 0xCu);
      sub_100007F50(v70);
    }

    else
    {

      v75 = *(v201 + 8);
      v75(v63, v66);
    }

    v97 = sub_100071C7C();
    v198(v97);

    v75(v64, v66);
    v75(v199, v66);
    v75(v205, v66);
    v75(v203, v66);
    return (v75)(v200, v66);
  }

  v78 = [v58 defaultManager];
  sub_100071C7C();
  v79 = sub_100072B2C();

  v80 = [v78 fileExistsAtPath:v79];

  v81 = v192;
  if (v80)
  {
    goto LABEL_18;
  }

  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v82 = sub_100071E7C();
  v83 = sub_100007DE8(v82, qword_100099998);
  v84 = v187;
  v194(v187, v38, v81);
  v85 = sub_100071E5C();
  v86 = sub_100072CFC();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v201;
  if (v87)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v196 = v83;
    v91 = v90;
    v215 = v90;
    *v89 = 136315138;
    sub_1000546C0(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v92 = sub_100072FEC();
    v93 = v84;
    v95 = v94;
    v202 = *(v88 + 8);
    v202(v93, v81);
    v96 = sub_100034D20(v92, v95, &v215);

    *(v89 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v85, v86, "Creating directory for cached images at %s", v89, 0xCu);
    sub_100007F50(v91);
  }

  else
  {

    v202 = *(v88 + 8);
    v202(v84, v81);
  }

  v98 = v200;
  v99 = v198;
  v100 = [v205 defaultManager];
  v101 = v199;
  sub_100071C3C(&var18);
  v103 = v102;
  v215 = 0;
  v104 = [v100 createDirectoryAtURL:v102 withIntermediateDirectories:1 attributes:0 error:&v215];

  if (v104)
  {
    v105 = v215;
    v55 = v204;
LABEL_18:
    v205 = v41;
    v106 = [objc_opt_self() mainScreen];
    [v106 scale];

    v107 = v55;
    v108 = objc_allocWithZone(AMSMediaArtwork);
    isa = sub_100072ACC().super.isa;
    v110 = [v108 initWithDictionary:isa];

    v111 = v208;
    if (v208 && v208 == 1)
    {
      goto LABEL_30;
    }

    v123 = sub_100072FFC();

    if (v123)
    {
      goto LABEL_31;
    }

    if (v111 > 1u)
    {
LABEL_30:
    }

    else
    {
      v124 = sub_100072FFC();

      if ((v124 & 1) == 0)
      {
        if (!*&v107[*(v54 + 44)])
        {
          v125 = 1;
LABEL_40:
          v133 = v203;
          v134 = v205;
          goto LABEL_41;
        }

LABEL_32:
        v126 = v110;
        if (v111 != 1)
        {
          v129 = sub_100072FFC();

          if (v129)
          {
LABEL_39:
            v131 = objc_allocWithZone(AMSMediaArtwork);
            v132 = sub_100072ACC().super.isa;
            v110 = [v131 initWithDictionary:v132];

            v125 = 0;
            goto LABEL_40;
          }

          if (v111 < 2u)
          {
            v130 = sub_100072FFC();

            if ((v130 & 1) == 0)
            {
              v125 = 0;
              v133 = v203;
              v134 = v205;
              v110 = v126;
LABEL_41:
              v135 = v189;
              sub_100071DBC();
              v137 = v136;
              sub_100071DBC();
              v139 = [v110 URLWithSize:AMSMediaArtworkCropStyleBoundedBox cropStyle:AMSMediaArtworkFormatHEIC format:{v137, v138}];
              v140 = v191;
              v204 = v110;
              if (v139)
              {
                v141 = v188;
                v142 = v139;
                sub_100071C6C();

                v143 = 0;
              }

              else
              {
                v143 = 1;
                v141 = v188;
              }

              v144 = v201;
              (*(v201 + 56))(v141, v143, 1, v81);
              sub_100053F4C(v141, v140);
              sub_100053FBC(v140, v135);
              v207 = v144[6];
              if (v207(v135, 1, v81) == 1)
              {
                sub_100012BA4(v135);
                (v198)(0, 0);

                sub_100012BA4(v140);
                v127 = v144[1];
                v127(v209, v81);
                v127(v199, v81);
                v127(v134, v81);
                v128 = v133;
                goto LABEL_46;
              }

              v145 = v144[4];
              v146 = v190;
              v145(v190, v135, v81);
              v194(v193, v146, v81);
              if (v125)
              {
                goto LABEL_66;
              }

              v147 = v208;
              if (v208 && v208 == 1)
              {
              }

              else
              {
                v148 = sub_100072FFC();

                if ((v148 & 1) == 0)
                {
                  if (v147 < 2u)
                  {
                    v158 = sub_100072FFC();

                    if ((v158 & 1) == 0)
                    {
LABEL_66:
                      if (qword_1000946F8 != -1)
                      {
                        swift_once();
                      }

                      v164 = sub_100071E7C();
                      sub_100007DE8(v164, qword_100099998);
                      v165 = sub_100071E5C();
                      v166 = sub_100072CFC();
                      v167 = os_log_type_enabled(v165, v166);
                      v168 = v191;
                      v169 = v193;
                      if (v167)
                      {
                        v170 = swift_slowAlloc();
                        v171 = swift_slowAlloc();
                        v215 = v171;
                        *v170 = 136315138;
                        swift_beginAccess();
                        v172 = sub_100071C2C();
                        v174 = sub_100034D20(v172, v173, &v215);

                        *(v170 + 4) = v174;
                        v169 = v193;
                        _os_log_impl(&_mh_execute_header, v165, v166, "attempting download of image from %s", v170, 0xCu);
                        sub_100007F50(v171);
                      }

                      v175 = v205;
                      v176 = v186;
                      swift_beginAccess();
                      v194(v176, v169, v81);
                      v177 = sub_100071CAC();
                      v179 = v178;
                      v180 = *(v201 + 8);
                      v180(v176, v81);
                      sub_100071CDC();
                      v181 = sub_100071C7C();
                      v198(v181);

                      sub_1000086B8(v177, v179);

                      v180(v190, v81);
                      sub_100012BA4(v168);
                      v180(v209, v81);
                      v180(v199, v81);
                      v180(v175, v81);
                      v180(v203, v81);
                      v180(v200, v81);
                      return (v180)(v169, v81);
                    }
                  }

                  else
                  {
                  }

                  v159 = v190;
                  v215 = sub_100071C2C();
                  v216 = v160;
                  v212 = 0x636965682E6262;
                  v213 = 0xE700000000000000;
                  v210 = 0xD000000000000013;
                  v211 = 0x8000000100077DD0;
                  sub_100004A78();
                  sub_100072D8C();

                  v151 = v183;
                  sub_100071C8C();

                  v161 = v207;
                  v162 = v207(v151, 1, v81);
                  v154 = &v212;
                  if (v162 == 1)
                  {
                    v163 = v182;
                    v194(v182, v159, v81);
                    if (v161(v151, 1, v81) != 1)
                    {
                      sub_100012BA4(v151);
                    }

                    v155 = v163;
                    goto LABEL_64;
                  }

LABEL_63:
                  v155 = *(v154 - 32);
                  v145(v155, v151, v81);
LABEL_64:
                  v157 = v201;
LABEL_65:
                  (*(v157 + 40))(v193, v155, v81);
                  goto LABEL_66;
                }
              }

              v149 = v190;
              v215 = sub_100071C2C();
              v216 = v150;
              v212 = 0x636965682E6262;
              v213 = 0xE700000000000000;
              v210 = 0xD000000000000012;
              v211 = 0x8000000100077DF0;
              sub_100004A78();
              sub_100072D8C();

              v151 = v185;
              sub_100071C8C();

              v152 = v207;
              v153 = v207(v151, 1, v81);
              v154 = &v214;
              if (v153 == 1)
              {
                v155 = v184;
                v194(v184, v149, v81);
                v156 = v152(v151, 1, v81);
                v157 = v201;
                if (v156 != 1)
                {
                  sub_100012BA4(v151);
                }

                goto LABEL_65;
              }

              goto LABEL_63;
            }

            goto LABEL_39;
          }
        }

        goto LABEL_39;
      }
    }

LABEL_31:
    if (!*&v107[*(v54 + 44)])
    {
      (v198)(0, 0);

      v127 = *(v201 + 8);
      v127(v209, v81);
      v127(v199, v81);
      v127(v205, v81);
      v128 = v203;
LABEL_46:
      v127(v128, v81);
      return (v127)(v200, v81);
    }

    goto LABEL_32;
  }

  v112 = v215;
  v113 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v114 = sub_100071E5C();
  v115 = sub_100072CFC();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v215 = v117;
    *v116 = 136315138;
    v212 = v113;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v118 = sub_100072B4C();
    v120 = v41;
    v121 = sub_100034D20(v118, v119, &v215);

    *(v116 + 4) = v121;
    v41 = v120;
    v101 = v199;
    _os_log_impl(&_mh_execute_header, v114, v115, "Unable to create artwork directory %s.", v116, 0xCu);
    sub_100007F50(v117);

    v98 = v200;
  }

  (v99)(0, 0);

  v122 = v202;
  v202(v209, v81);
  v122(v101, v81);
  v122(v41, v81);
  v122(v203, v81);
  return (v122)(v98, v81);
}

uint64_t sub_10005288C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = 0x8000000100077550;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100077550;
  }

  else
  {
    v6 = 0x8000000100077570;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x8000000100077570;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6B726F77747261;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100072FFC();
  }

  return v11 & 1;
}

Swift::Int sub_10005296C()
{
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

uint64_t sub_100052A14(uint64_t a1)
{
  sub_100072B6C();
}

uint64_t sub_100052AA8(uint64_t a1, unsigned __int8 a2)
{
  sub_100072B6C();
}

Swift::Int sub_100052BE8(uint64_t a1)
{
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

Swift::Int sub_100052C8C(uint64_t a1, unsigned __int8 a2)
{
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

unint64_t sub_100052DE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054770(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100052E10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000015;
  v5 = 0x8000000100077550;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x8000000100077570;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t type metadata accessor for AppMetadata(uint64_t a1)
{
  result = qword_1000968B0;
  if (!qword_1000968B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100052EE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054A14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100052F18(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0x6E6F697461657263;
  v5 = 0xD000000000000011;
  v6 = 0x80000001000775D0;
  if (v2 != 6)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001000775F0;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C746974627573;
  if (v2 != 4)
  {
    v8 = 0x7374726F70707573;
    v7 = 0xEE00656461637241;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x4449656C646E7562;
  if (v2 != 2)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x44496D616461;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_100053028()
{
  v1 = *v0;
  v2 = 0x6E6F697461657263;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x7374726F70707573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x44496D616461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100053134@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100053168(uint64_t a1)
{
  v2 = sub_100054618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000531A4(uint64_t a1)
{
  v2 = sub_100054618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000531E0(void *a1)
{
  v3 = v1;
  v5 = sub_10000388C(&qword_100096918, &qword_100075EB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10003C138(a1, a1[3]);
  sub_100054618();
  sub_10007307C();
  LOBYTE(v27) = 0;
  sub_100071D4C();
  sub_1000546C0(&qword_100095C18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100072FDC();
  if (!v2)
  {
    v9 = type metadata accessor for AppMetadata(0);
    LOBYTE(v27) = 1;
    sub_100072FAC();
    LOBYTE(v27) = 2;
    sub_100072FAC();
    LOBYTE(v27) = 3;
    sub_100072FAC();
    LOBYTE(v27) = 4;
    sub_100072F9C();
    LOBYTE(v27) = 5;
    sub_100072FBC();
    v10 = objc_opt_self();
    isa = sub_100072ACC().super.isa;
    v27 = 0;
    v12 = [v10 dataWithJSONObject:isa options:0 error:&v27];

    v13 = v27;
    if (!v12)
    {
      goto LABEL_8;
    }

    v25 = v10;
    v14 = sub_100071CCC();
    v16 = v15;

    v27 = v14;
    v28 = v16;
    v26 = 6;
    sub_10005466C();
    sub_100072FDC();
    sub_1000086B8(v27, v28);
    if (*(v3 + *(v9 + 44)))
    {
      v17 = sub_100072ACC().super.isa;
      v27 = 0;
      v18 = [v25 dataWithJSONObject:v17 options:0 error:&v27];

      v13 = v27;
      if (v18)
      {
        v19 = sub_100071CCC();
        v21 = v20;

        v27 = v19;
        v28 = v21;
        v26 = 7;
        sub_100072FDC();
        sub_1000086B8(v27, v28);
        return (*(v6 + 8))(v8, v5);
      }

LABEL_8:
      v22 = v13;
      sub_100071C1C();

      swift_willThrow();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100053644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_100071D4C();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100096930, &qword_100075EB8);
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for AppMetadata(0);
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C138(a1, a1[3]);
  sub_100054618();
  v11 = v66;
  sub_10007306C();
  if (v11)
  {
    return sub_100007F50(a1);
  }

  v12 = v64;
  v66 = a1;
  v60 = v8;
  v61 = v10;
  LOBYTE(v68) = 0;
  sub_1000546C0(&qword_100095C20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v13 = v65;
  v14 = v7;
  sub_100072F8C();
  v15 = v5;
  v17 = v61;
  (*(v63 + 32))(v61, v13, v3);
  LOBYTE(v68) = 1;
  v18 = sub_100072F5C();
  v19 = 0;
  v59 = v3;
  v20 = v60;
  v21 = &v17[v60[5]];
  *v21 = v18;
  v21[1] = v22;
  LOBYTE(v68) = 2;
  v23 = sub_100072F5C();
  v24 = &v17[v20[6]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v68) = 3;
  v26 = sub_100072F5C();
  v27 = &v17[v20[7]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v68) = 4;
  v29 = sub_100072F3C();
  v30 = &v17[v20[8]];
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v68) = 5;
  v17[v20[9]] = sub_100072F6C() & 1;
  LOBYTE(v67) = 6;
  v32 = sub_100054708();
  sub_100072F8C();
  v56 = v32;
  v58 = v14;
  v65 = v15;
  v33 = v68;
  v34 = v69;
  v35 = objc_opt_self();
  v57 = v33;
  isa = sub_100071CBC().super.isa;
  v68 = 0;
  v55 = v35;
  v37 = [v35 JSONObjectWithData:isa options:0 error:&v68];

  v38 = v66;
  if (v37)
  {
    v54 = 0;
    v39 = v68;
    sub_100072D9C();
    swift_unknownObjectRelease();
    v53 = sub_10000388C(&qword_100095C58, &qword_1000750D8);
    if (swift_dynamicCast())
    {
      v40 = v67;
    }

    else
    {
      v40 = sub_10004F7B8(&_swiftEmptyArrayStorage);
    }

    *&v61[v20[10]] = v40;
    LOBYTE(v67) = 7;
    sub_100072F4C();
    if (v69 >> 60 == 15)
    {
      (*(v12 + 8))(v58, v65);
      sub_1000086B8(v57, v34);
      v45 = v61;
      *&v61[v20[11]] = 0;
LABEL_20:
      sub_10005402C(v45, v62);
      sub_100007F50(v66);
      return sub_100054090(v45);
    }

    v46 = v68;
    v56 = v69;
    v47 = sub_100071CBC().super.isa;
    v68 = 0;
    v48 = [v55 JSONObjectWithData:v47 options:0 error:&v68];

    if (v48)
    {
      v49 = v68;
      sub_100072D9C();
      sub_1000086B8(v57, v34);
      sub_10005475C(v46, v56);
      swift_unknownObjectRelease();
      (*(v12 + 8))(v58, v65);
      v50 = swift_dynamicCast();
      v51 = v67;
      if (!v50)
      {
        v51 = 0;
      }

      v45 = v61;
      *&v61[v60[11]] = v51;
      goto LABEL_20;
    }

    v52 = v68;
    sub_100071C1C();

    swift_willThrow();
    sub_1000086B8(v57, v34);
    sub_10005475C(v46, v56);
    (*(v12 + 8))(v58, v65);
    v42 = 1;
    v43 = v61;
    v44 = v66;
    v19 = v54;
  }

  else
  {
    v41 = v68;
    sub_100071C1C();

    swift_willThrow();
    sub_1000086B8(v57, v34);
    (*(v12 + 8))(v58, v65);
    v42 = 0;
    v43 = v61;
    v44 = v38;
  }

  sub_100007F50(v44);
  (*(v63 + 8))(v43, v59);
  if (!v19)
  {
  }

  if (v42)
  {
  }

  return result;
}

uint64_t sub_100053F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005402C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054090(uint64_t a1)
{
  v2 = type metadata accessor for AppMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppMetadata.AppArtworkType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppMetadata.AppArtworkType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100054250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
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

uint64_t sub_100054324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
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

void sub_1000543E0(uint64_t a1)
{
  sub_100071D4C();
  if (v1 <= 0x3F)
  {
    sub_1000544A8();
    if (v2 <= 0x3F)
    {
      sub_1000544F8();
      if (v3 <= 0x3F)
      {
        sub_10005455C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000544A8()
{
  if (!qword_100096168)
  {
    v0 = sub_100072D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100096168);
    }
  }
}

void sub_1000544F8()
{
  if (!qword_1000968C0)
  {
    v0 = sub_100072AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000968C0);
    }
  }
}

void sub_10005455C(uint64_t a1)
{
  if (!qword_1000968C8)
  {
    sub_1000038D4(&qword_100095C58, &qword_1000750D8);
    v1 = sub_100072D6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000968C8);
    }
  }
}

unint64_t sub_1000545C4()
{
  result = qword_100096910;
  if (!qword_100096910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096910);
  }

  return result;
}

unint64_t sub_100054618()
{
  result = qword_100096920;
  if (!qword_100096920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096920);
  }

  return result;
}

unint64_t sub_10005466C()
{
  result = qword_100096928;
  if (!qword_100096928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096928);
  }

  return result;
}

uint64_t sub_1000546C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100054708()
{
  result = qword_100096938;
  if (!qword_100096938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096938);
  }

  return result;
}

uint64_t sub_10005475C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000086B8(result, a2);
  }

  return result;
}

unint64_t sub_100054770(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100091E98;
  v6._object = a2;
  v4 = sub_100072F2C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for AppMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100054910()
{
  result = qword_100096940;
  if (!qword_100096940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096940);
  }

  return result;
}

unint64_t sub_100054968()
{
  result = qword_100096948;
  if (!qword_100096948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096948);
  }

  return result;
}

unint64_t sub_1000549C0()
{
  result = qword_100096950;
  if (!qword_100096950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096950);
  }

  return result;
}

unint64_t sub_100054A14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100091F00;
  v6._object = a2;
  v4 = sub_100072F2C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100054A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100054B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameCenterLogo(uint64_t a1)
{
  result = qword_1000969B0;
  if (!qword_1000969B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054BD0(uint64_t a1)
{
  sub_100019F3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100054C58@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_10007277C();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007297C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v31 = sub_10000388C(&qword_1000969E8, &qword_100076080);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - v11;
  v27 = sub_10000388C(&qword_1000969F0, &qword_100076088);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v30 = sub_10000388C(&qword_1000969F8, &qword_100076090);
  __chkstk_darwin(v30);
  v15 = &v26 - v14;
  sub_1000129F8(v10);
  sub_10007296C();
  sub_100055404(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if (v16)
  {
    sub_10007279C();
  }

  else
  {
    sub_1000727EC();
  }

  v18 = v32;
  (*(v1 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v32);
  v19 = sub_1000727DC();

  (*(v1 + 8))(v3, v18);
  *&v34 = v19;
  v20 = v28;
  sub_1000725FC();

  sub_1000726CC();
  v21 = sub_1000726FC();

  (*(v29 + 32))(v13, v20, v31);
  v22 = &v13[*(v27 + 36)];
  *v22 = v21;
  *(v22 + 8) = xmmword_1000756D0;
  *(v22 + 3) = 0x3FF0000000000000;
  sub_1000728AC();
  sub_100071F2C();
  sub_100055124(v13, v15);
  v23 = &v15[*(v30 + 36)];
  v24 = v35;
  *v23 = v34;
  *(v23 + 1) = v24;
  *(v23 + 2) = v36;
  sub_100055194();
  sub_10007261C();
  return sub_1000552DC(v15);
}

uint64_t sub_100055124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000969F0, &qword_100076088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100055194()
{
  result = qword_100096A00;
  if (!qword_100096A00)
  {
    sub_1000038D4(&qword_1000969F8, &qword_100076090);
    sub_100055220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A00);
  }

  return result;
}

unint64_t sub_100055220()
{
  result = qword_100096A08;
  if (!qword_100096A08)
  {
    sub_1000038D4(&qword_1000969F0, &qword_100076088);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A08);
  }

  return result;
}

uint64_t sub_1000552DC(uint64_t a1)
{
  v2 = sub_10000388C(&qword_1000969F8, &qword_100076090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100055348()
{
  result = qword_100096A10;
  if (!qword_100096A10)
  {
    sub_1000038D4(&qword_100096A18, &qword_100076098);
    sub_100055194();
    sub_100055404(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A10);
  }

  return result;
}

uint64_t sub_100055404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005544C@<X0>(char *a2@<X8>, double a3@<D0>)
{
  v29 = a2;
  v27 = sub_10000388C(&qword_100096A20, &qword_1000760A0) - 8;
  __chkstk_darwin(v27);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10000388C(&qword_1000956E8, &qword_100074AA8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_10007299C();
  v18 = sub_1000729BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 0, 1, v18);
  sub_1000727CC();
  sub_100055764(v10);
  sub_1000729AC();
  v19(v10, 0, 1, v18);
  sub_1000727CC();
  sub_100055764(v10);
  *&v7[*(v27 + 44)] = a3;
  v20 = *(v12 + 16);
  v20(v14, v17, v11);
  v21 = v28;
  sub_1000557CC(v7, v28);
  v22 = v29;
  v20(v29, v14, v11);
  v23 = sub_10000388C(&qword_100096A28, qword_1000760A8);
  sub_1000557CC(v21, &v22[*(v23 + 48)]);
  sub_10005583C(v7);
  v24 = *(v12 + 8);
  v24(v17, v11);
  sub_10005583C(v21);
  return (v24)(v14, v11);
}

uint64_t sub_100055764(uint64_t a1)
{
  v2 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000557CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100096A20, &qword_1000760A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005583C(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096A20, &qword_1000760A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000558B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000559C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPHeaderGradientView(uint64_t a1)
{
  result = qword_100096A88;
  if (!qword_100096A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000388C(&qword_1000951A0, &qword_100074538);
  __chkstk_darwin(v3 - 8);
  v5 = (&v38 - v4);
  v6 = sub_10000388C(&qword_1000951A8, &qword_100074540);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v41 = sub_10000388C(&qword_1000951B0, &qword_100074548);
  __chkstk_darwin(v41);
  v43 = &v38 - v9;
  v10 = sub_10000388C(&qword_1000951B8, &qword_100074550);
  __chkstk_darwin(v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = &v38 - v13;
  v14 = sub_10000388C(&qword_1000951C0, &qword_100074558);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = &v1[*(type metadata accessor for CPHeaderGradientView(0) + 24)];
  if (v17[*(type metadata accessor for CPTimelineEntry(0) + 32)] == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    return sub_10007230C();
  }

  else
  {
    v38 = v14;
    v39 = v10;
    v40 = a1;
    *v5 = sub_1000728AC();
    v5[1] = v19;
    v20 = sub_10000388C(&qword_1000951C8, &qword_100074560);
    sub_100056160(v1, v5 + *(v20 + 44));
    sub_1000728AC();
    sub_100071FFC();
    sub_100014DEC(v5, v8, &qword_1000951A0, &qword_100074538);
    v21 = &v8[*(v6 + 36)];
    v22 = v57;
    *(v21 + 4) = v56;
    *(v21 + 5) = v22;
    *(v21 + 6) = v58;
    v23 = v53;
    *v21 = v52;
    *(v21 + 1) = v23;
    v24 = v55;
    *(v21 + 2) = v54;
    *(v21 + 3) = v24;
    sub_1000728AC();
    sub_100071FFC();
    v25 = v8;
    v26 = v43;
    sub_100014DEC(v25, v43, &qword_1000951A8, &qword_100074540);
    v27 = (v26 + *(v41 + 36));
    v28 = v50;
    v27[4] = v49;
    v27[5] = v28;
    v27[6] = v51;
    v29 = v46;
    *v27 = v45;
    v27[1] = v29;
    v30 = v48;
    v27[2] = v47;
    v27[3] = v30;
    KeyPath = swift_getKeyPath();
    v32 = v42;
    v33 = &v42[*(v39 + 36)];
    v34 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v35 = enum case for ColorScheme.light(_:);
    v36 = sub_100071EAC();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = KeyPath;
    sub_100014DEC(v26, v32, &qword_1000951B0, &qword_100074548);
    v37 = v44;
    sub_100014DEC(v32, v44, &qword_1000951B8, &qword_100074550);
    sub_100004C94(v37, v16, &qword_1000951B8, &qword_100074550);
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    sub_10007230C();
    return sub_100004890(v37, &qword_1000951B8, &qword_100074550);
  }
}

uint64_t sub_100056160@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v105 = a1;
  v2 = sub_10000388C(&qword_100095200, &qword_1000745A8);
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin(v2);
  v97 = &v90 - v3;
  v94 = sub_10000388C(&qword_100095208, &qword_1000745B0);
  __chkstk_darwin(v94);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v90 - v6;
  v7 = sub_10007297C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_10000388C(&qword_100095210, &qword_1000745B8);
  __chkstk_darwin(v14 - 8);
  v101 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v90 - v17;
  v18 = sub_10000388C(&qword_100095218, &unk_1000745C0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v99 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v90 - v22;
  sub_10007287C();
  v24 = sub_1000723AC();
  v23[*(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)] = v24;
  sub_1000726CC();
  v25 = sub_1000726FC();

  v26 = sub_1000723AC();
  v27 = &v23[*(sub_10000388C(&qword_100095228, &qword_1000745D0) + 36)];
  *v27 = v25;
  v27[8] = v26;
  v93 = sub_10000388C(&qword_100095230, &qword_1000745D8);
  v28 = swift_allocObject();
  v92 = xmmword_100074490;
  *(v28 + 16) = xmmword_100074490;
  *(v28 + 32) = sub_1000726CC();
  sub_1000726CC();
  v29 = sub_1000726FC();

  *(v28 + 40) = v29;
  v30 = v105;
  sub_10007286C();
  sub_1000728EC();
  sub_1000728FC();
  sub_100071F8C();
  sub_1000728DC();
  v32 = v31;
  v34 = v33;
  sub_10007291C();
  v35 = &v23[*(v19 + 44)];
  v36 = v128;
  *v35 = v127;
  *(v35 + 1) = v36;
  *(v35 + 4) = v129;
  *(v35 + 5) = 0xBFD1DF46A2529D39;
  *(v35 + 6) = v32;
  *(v35 + 7) = v34;
  v98 = xmmword_1000744A0;
  *(v35 + 4) = xmmword_1000744A0;
  *(v35 + 10) = v37;
  *(v35 + 11) = v38;
  sub_1000129F8(v13);
  sub_10007296C();
  sub_10001B20C();
  LOBYTE(v19) = sub_100072B1C();
  v39 = *(v8 + 8);
  v39(v10, v7);
  v39(v13, v7);
  if (v19)
  {
    goto LABEL_16;
  }

  v40 = &v30[*(type metadata accessor for CPHeaderGradientView(0) + 24)];
  v41 = *&v40[*(type metadata accessor for CPTimelineEntry(0) + 20)];
  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    v85 = v100;
    (*(v102 + 56))(v100, 1, 1, v103);
LABEL_17:
    v86 = v99;
    sub_100004C94(v23, v99, &qword_100095218, &unk_1000745C0);
    v87 = v101;
    sub_100004C94(v85, v101, &qword_100095210, &qword_1000745B8);
    v88 = v104;
    sub_100004C94(v86, v104, &qword_100095218, &unk_1000745C0);
    v89 = sub_10000388C(&qword_100095248, &qword_1000745F0);
    sub_100004C94(v87, v88 + *(v89 + 48), &qword_100095210, &qword_1000745B8);
    sub_100004890(v85, &qword_100095210, &qword_1000745B8);
    sub_100004890(v23, &qword_100095218, &unk_1000745C0);
    sub_100004890(v87, &qword_100095210, &qword_1000745B8);
    return sub_100004890(v86, &qword_100095218, &unk_1000745C0);
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = sub_100072E6C();
LABEL_7:
    v44 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v44 || (v44 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor)) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }

    v46 = v45;

    v47 = v46;
    v48 = sub_1000726AC();
    v105 = v47;
    [v47 _luminance];
    if (v49 <= 0.8)
    {
      v50 = -0.2;
    }

    else
    {
      v50 = (v49 + -0.8) / -0.2 * 0.2 + -0.2;
    }

    v91 = v50;
    v51 = v94;
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100074190;
    *(v52 + 32) = v48;
    *(v52 + 40) = v48;
    swift_retain_n();
    *(v52 + 48) = sub_1000726FC();
    *(v52 + 56) = sub_1000726DC();
    sub_10007286C();
    sub_1000728EC();
    sub_1000728FC();
    sub_100071F8C();
    sub_1000728DC();
    v54 = v53;
    v56 = v55;
    sub_10007291C();
    v58 = v57;
    v60 = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = v92;
    *(v61 + 32) = v48;

    sub_1000726CC();
    v62 = sub_1000726FC();

    *(v61 + 40) = v62;
    sub_10007286C();
    sub_1000728EC();
    sub_1000728FC();
    sub_100071F8C();
    sub_1000728DC();
    v64 = v63;
    v66 = v65;
    sub_10007291C();
    v68 = v67;
    v70 = v69;
    v71 = *(v51 + 36);
    v72 = enum case for BlendMode.color(_:);
    v73 = sub_1000728BC();
    v74 = v95;
    (*(*(v73 - 8) + 104))(&v95[v71], v72, v73);
    v75 = v110;
    *v74 = v109;
    *(v74 + 16) = v75;
    *(v74 + 32) = v111;
    *(v74 + 40) = 0xBFD1DF46A2529D39;
    *(v74 + 48) = v64;
    *(v74 + 56) = v66;
    *(v74 + 64) = v98;
    *(v74 + 80) = v68;
    *(v74 + 88) = v70;
    v76 = v96;
    sub_100004C94(v74, v96, &qword_100095208, &qword_1000745B0);
    v78 = v106;
    v77 = v107;
    v112[0] = v106;
    v112[1] = v107;
    *&v113 = v108;
    *(&v113 + 1) = 0xBFD1DF46A2529D39;
    *&v114 = v54;
    *(&v114 + 1) = v56;
    v115 = v98;
    *&v116 = v58;
    *(&v116 + 1) = v60;
    v79 = v91;
    v117 = v91;
    v80 = v98;
    v81 = v116;
    v82 = v97;
    *(v97 + 12) = v91;
    v82[4] = v80;
    v82[5] = v81;
    v83 = v114;
    v82[2] = v113;
    v82[3] = v83;
    *v82 = v78;
    v82[1] = v77;
    v84 = sub_10000388C(&qword_100095238, &qword_1000745E0);
    sub_100004C94(v76, v82 + *(v84 + 48), &qword_100095208, &qword_1000745B0);
    sub_100004C94(v112, v118, &qword_100095240, &qword_1000745E8);

    sub_100004890(v74, &qword_100095208, &qword_1000745B0);
    sub_100004890(v76, &qword_100095208, &qword_1000745B0);
    v118[0] = v106;
    v118[1] = v107;
    v119 = v108;
    v120 = 0xBFD1DF46A2529D39;
    v121 = v54;
    v122 = v56;
    v123 = v98;
    v124 = v58;
    v125 = v60;
    v126 = v79;
    sub_100004890(v118, &qword_100095240, &qword_1000745E8);
    v85 = v100;
    sub_100014DEC(v82, v100, &qword_100095200, &qword_1000745A8);
    (*(v102 + 56))(v85, 0, 1, v103);
    goto LABEL_17;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(v41 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_100056B94()
{
  sub_10000388C(&qword_100096AC8, &qword_100076168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100073B50;
  *(inited + 32) = sub_100072B3C();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x8000000100077E30;
  sub_10004F688(inited);
  swift_setDeallocating();
  sub_100056CD8(inited + 32);
  v2 = objc_allocWithZone(NSError);
  v3 = sub_100072B2C();
  isa = sub_100072ACC().super.isa;

  v5 = [v2 initWithDomain:v3 code:404 userInfo:isa];

  return v5;
}

uint64_t sub_100056CD8(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096790, &qword_100075C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056D54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100056F2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPLargeContentView(uint64_t a1)
{
  result = qword_100096B28;
  if (!qword_100096B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPLargeContentView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100057350()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CPLargeContentView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100072CEC();
    v7 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1000574A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000388C(&qword_100096B88, &qword_100076228);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_100057618(&v15);
  v10 = v15;
  *v9 = sub_10007223C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v11 = sub_10000388C(&qword_100096B90, &qword_100076230);
  sub_1000578FC(a1, &v9[*(v11 + 44)]);
  sub_100004C94(v9, v6, &qword_100096B88, &qword_100076228);
  *a2 = v10;
  v12 = sub_10000388C(&qword_100096B98, &qword_100076238);
  sub_100004C94(v6, a2 + *(v12 + 48), &qword_100096B88, &qword_100076228);

  sub_100004890(v9, &qword_100096B88, &qword_100076228);
  sub_100004890(v6, &qword_100096B88, &qword_100076228);
}

uint64_t sub_100057618@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10007218C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for CPLargeContentView(0) + 24);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v22 = v10;
    v23 = v1;
    v16 = v11;
    v17 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v15, 0);
    (*(v16 + 8))(v13, v22);
    if (v24 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v9);
  sub_10007296C();
  sub_10001B20C();
  v18 = sub_100072B1C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  if (v18)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_1000578FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for CPAppGridView(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  __chkstk_darwin(v54);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v53 - v10;
  v53 = sub_10000388C(&qword_100096BA0, &qword_100076248);
  __chkstk_darwin(v53);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v53 - v13;
  __chkstk_darwin(v14);
  v58 = &v53 - v15;
  v16 = sub_10000388C(&qword_100096BA8, &qword_100076250);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  sub_100057FAC(&v53 - v20);
  v22 = &v21[*(v17 + 44)];
  sub_100058DA8(a1, v22);
  v23 = type metadata accessor for CPLargeContentView(0);
  v24 = *(v23 + 28);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v25 = (v22 + *(sub_10000388C(&qword_100096BB0, &qword_100076258) + 36));
  v26 = v62;
  *v25 = v61;
  v25[1] = v26;
  v25[2] = v63;
  v27 = sub_1000728AC();
  v29 = v28;
  v30 = (v22 + *(sub_10000388C(&qword_100096BB8, &qword_100076260) + 36));
  *v30 = v27;
  v30[1] = v29;
  sub_10005AF24(a1 + *(v23 + 32), v6, type metadata accessor for CPTimelineEntry);
  v31 = v4[7];
  v32 = sub_100071F5C();
  (*(*(v32 - 8) + 16))(&v6[v31], a1 + v24, v32);
  *&v6[v4[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v6[v4[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v6[v4[8]] = 1;
  *&v6[v4[9]] = 3;
  v6[v4[10]] = 0;
  v33 = v4[11];
  *&v6[v33] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v34 = v4[12];
  *&v6[v34] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v4) = sub_1000723FC();
  *(inited + 32) = v4;
  v36 = sub_1000723DC();
  *(inited + 33) = v36;
  v37 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v4)
  {
    v37 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v36)
  {
    v37 = sub_1000723EC();
  }

  sub_100041AB4(v6, v8);
  v38 = &v8[*(v54 + 36)];
  *v38 = v37;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  v39 = v56;
  sub_100014DEC(v8, v56, &qword_1000962C0, &qword_100076240);
  v40 = v55;
  v41 = &v55[*(v53 + 36)];
  sub_1000585A4(v41);
  v42 = sub_1000728AC();
  v44 = v43;
  v45 = (v41 + *(sub_10000388C(&qword_100096BC0, &qword_100076350) + 36));
  *v45 = v42;
  v45[1] = v44;
  sub_100014DEC(v39, v40, &qword_1000962C0, &qword_100076240);
  v46 = v40;
  v47 = v58;
  sub_100014DEC(v46, v58, &qword_100096BA0, &qword_100076248);
  v48 = v57;
  sub_100004C94(v21, v57, &qword_100096BA8, &qword_100076250);
  v49 = v59;
  sub_100004C94(v47, v59, &qword_100096BA0, &qword_100076248);
  v50 = v60;
  sub_100004C94(v48, v60, &qword_100096BA8, &qword_100076250);
  v51 = sub_10000388C(&qword_100096BC8, &qword_100076358);
  sub_100004C94(v49, v50 + *(v51 + 48), &qword_100096BA0, &qword_100076248);
  sub_100004890(v47, &qword_100096BA0, &qword_100076248);
  sub_100004890(v21, &qword_100096BA8, &qword_100076250);
  sub_100004890(v49, &qword_100096BA0, &qword_100076248);
  return sub_100004890(v48, &qword_100096BA8, &qword_100076250);
}

uint64_t sub_100057FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007234C();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100096C70, &qword_100076488);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - v6;
  v7 = sub_10000388C(&qword_100096C78, &unk_100076490);
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v40 = &v38 - v8;
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_100071C9C();
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v39 = &v38 - v20;
  v21 = v1;
  v22 = v1 + *(type metadata accessor for CPLargeContentView(0) + 32);
  v23 = *(v22 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (!(v23 >> 62))
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v27 = 1;
    goto LABEL_11;
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v38 = a1;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v23 + 32);

LABEL_6:
    sub_100057148(v12);
    sub_100005294(v12, v15);
    (*(v10 + 8))(v12, v9);
    v26 = v47;
    if ((*(v47 + 48))(v15, 1, v16) != 1)
    {
      v28 = v39;
      (*(v26 + 32))(v39, v15, v16);
      v29 = v28;
      v30 = (*(v26 + 16))(v18, v28, v16);
      __chkstk_darwin(v30);
      *(&v38 - 2) = v21;
      *(&v38 - 1) = v25;
      sub_10000388C(&qword_100096C80, &unk_1000764A0);
      sub_10005AE6C();
      v31 = v41;
      sub_10007254C();
      v32 = v44;
      sub_10007233C();
      sub_100004C3C(&qword_100096C90, &qword_100096C70, &qword_100076488, &protocol conformance descriptor for Link<A>);
      v33 = v40;
      v34 = v43;
      sub_10007266C();

      (*(v45 + 8))(v32, v46);
      (*(v42 + 8))(v31, v34);
      (*(v26 + 8))(v29, v16);
      v36 = v48;
      v35 = v49;
      a1 = v38;
      (*(v48 + 32))(v38, v33, v49);
      v37 = v35;
      v27 = 0;
      return (*(v36 + 56))(a1, v27, 1, v37);
    }

    sub_100004890(v15, &qword_100094E50, &qword_100074180);
    v27 = 1;
    a1 = v38;
LABEL_11:
    v36 = v48;
    v37 = v49;
    return (*(v36 + 56))(a1, v27, 1, v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000585A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_10000388C(&qword_100096BD0, &qword_100076360);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v36 = sub_10000388C(&qword_100096BD8, &qword_100076368);
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v35 - v10;
  v11 = sub_10007297C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_1000129F8(&v35 - v16);
  sub_10007296C();
  sub_10001B20C();
  v18 = sub_100072B1C();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  if (v18)
  {
    v20 = 1;
    v22 = v36;
    v21 = v37;
  }

  else
  {
    sub_10005A018(v2, v5);
    type metadata accessor for CPLargeContentView(0);
    sub_100071F3C();
    v24 = v23;
    sub_100071F3C();
    v26 = v25;
    sub_100071F3C();
    sub_100071F3C();
    sub_1000728AC();
    if (v24 > v26)
    {
      sub_100072CEC();
      v27 = sub_10007239C();
      sub_100071E4C();
    }

    sub_100071FFC();
    sub_100014DEC(v5, v8, &qword_100096BD0, &qword_100076360);
    v22 = v36;
    v28 = &v8[*(v36 + 36)];
    v29 = v43;
    *(v28 + 4) = v42;
    *(v28 + 5) = v29;
    *(v28 + 6) = v44;
    v30 = v39;
    *v28 = v38;
    *(v28 + 1) = v30;
    v31 = v41;
    *(v28 + 2) = v40;
    *(v28 + 3) = v31;
    v32 = v35;
    sub_100014DEC(v8, v35, &qword_100096BD8, &qword_100076368);
    v33 = v32;
    v21 = v37;
    sub_100014DEC(v33, v37, &qword_100096BD8, &qword_100076368);
    v20 = 0;
  }

  return (*(v6 + 56))(v21, v20, 1, v22);
}

double sub_1000589B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  sub_100058AB4(a1, a2, a3 + *(v6 + 44));
  type metadata accessor for CPLargeContentView(0);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v7 = (a3 + *(sub_10000388C(&qword_100096C80, &unk_1000764A0) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_100058AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v13 = type metadata accessor for CPLargeContentView(0);
  v14 = v13[7];
  v15 = v7[10];
  v16 = sub_100071F5C();
  (*(*(v16 - 8) + 16))(v12 + v15, a1 + v14, v16);
  sub_10005AF24(a1 + v13[8], v12 + v7[11], type metadata accessor for CPTimelineEntry);
  v17 = (a1 + v13[9]);
  v18 = *(v17 + 4);
  v19 = v17[1];
  v33 = *v17;
  v34 = v19;
  v35 = v18;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v20 = v29;
  v21 = v30;
  v27 = v32;
  v28 = v31;
  *(v12 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v12 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v22 = v7[7];
  *(v12 + v22) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[12]) = a2;
  v23 = v12 + v7[13];
  *v23 = v20;
  *(v23 + 1) = v21;
  v24 = v27;
  *(v23 + 1) = v28;
  *(v23 + 2) = v24;
  sub_10005AF24(v12, v9, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_10005AF24(v9, a3 + *(v25 + 48), type metadata accessor for CPTitleView);

  sub_10005AF8C(v12, type metadata accessor for CPTitleView);
  return sub_10005AF8C(v9, type metadata accessor for CPTitleView);
}

uint64_t sub_100058DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_10000388C(&qword_100096BE0, &qword_1000763E0);
  __chkstk_darwin(v24);
  v4 = (&v24 - v3);
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100096BE8, &qword_1000763E8);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1 + *(type metadata accessor for CPLargeContentView(0) + 32);
  v13 = type metadata accessor for CPTimelineEntry(0);
  if (*(v12 + *(v13 + 32)) == 1 && (sub_100057350() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100096C00, &qword_100096BE0, &qword_1000763E0, &protocol conformance descriptor for ZStack<A>);
    v19 = v25;
    sub_10007230C();
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v14 = *(v12 + *(v13 + 20));
  if (v14 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v18 = 1;
      v19 = v25;
LABEL_19:
      v23 = sub_10000388C(&qword_100096BF0, &qword_1000763F0);
      return (*(*(v23 - 8) + 56))(v19, v18, 1, v23);
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (*(sub_100072E6C() + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);

    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

LABEL_15:
    v20 = sub_10004D174(0xD000000000000019, 0x8000000100077CA0);
    if (v20)
    {
      v17 = v20;
LABEL_17:
      v19 = v25;
      *v4 = sub_1000728AC();
      v4[1] = v21;
      v22 = sub_10000388C(&qword_100096BF8, &qword_1000763F8);
      sub_1000591C4(v17, a1, v4 + *(v22 + 44));
      sub_100004C94(v4, v11, &qword_100096BE0, &qword_1000763E0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096C00, &qword_100096BE0, &qword_1000763E0, &protocol conformance descriptor for ZStack<A>);
      sub_10007230C();

      sub_100004890(v4, &qword_100096BE0, &qword_1000763E0);
      goto LABEL_18;
    }

LABEL_8:
    sub_100057148(v8);
    v17 = sub_10001D980(v8, 1);
    (*(v6 + 8))(v8, v5);
    if (!v17)
    {

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000591C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v98 = a3;
  v4 = sub_10007297C();
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v93 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v78 - v7;
  v95 = sub_1000728BC();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10000388C(&qword_100096C08, &qword_100076400);
  __chkstk_darwin(v85);
  v10 = &v78 - v9;
  v89 = sub_10000388C(&qword_100096C10, &qword_100076408);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v78 - v11;
  v84 = sub_10000388C(&qword_100096C18, &qword_100076410);
  __chkstk_darwin(v84);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v78 - v14;
  __chkstk_darwin(v15);
  v88 = &v78 - v16;
  v17 = sub_10007277C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000388C(&qword_100096C20, &qword_100076418);
  __chkstk_darwin(v21);
  v23 = &v78 - v22;
  v24 = sub_10000388C(&qword_100096C28, &qword_100076420);
  __chkstk_darwin(v24 - 8);
  v26 = &v78 - v25;
  v79 = sub_10000388C(&qword_100096C30, &qword_100076428);
  __chkstk_darwin(v79);
  v82 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v78 - v29;
  __chkstk_darwin(v31);
  v81 = &v78 - v32;
  v33 = a1;
  sub_10007275C();
  (*(v18 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v17);
  sub_1000727DC();

  (*(v18 + 8))(v20, v17);
  *v23 = sub_1000728AC();
  *(v23 + 1) = v34;
  v35 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v23[*(v35 + 44)], 0.3);

  v36 = &v23[*(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36)];
  *v36 = 0;
  *(v36 + 4) = 257;
  v37 = &v23[*(sub_10000388C(&qword_100094930, &qword_100076430) + 36)];
  v38 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v39 = enum case for ColorScheme.light(_:);
  v40 = sub_100071EAC();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  v41 = &v23[*(v21 + 36)];
  v42 = enum case for CoordinateSpace.global(_:);
  v43 = sub_100071F9C();
  (*(*(v43 - 8) + 104))(v41, v42, v43);
  v44 = sub_1000728AC();
  v46 = v45;
  v47 = &v41[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v47 = v44;
  v47[1] = v46;
  v48 = v80;
  sub_10005ADAC();
  sub_10007261C();
  sub_100004890(v23, &qword_100096C20, &qword_100076418);
  type metadata accessor for CPLargeContentView(0);
  sub_100071F3C();
  v50 = v49;
  sub_100071F3C();
  v52 = v51;
  sub_100071F3C();
  sub_1000728AC();
  if (v50 > v52)
  {
    sub_100072CEC();
    v53 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  sub_100014DEC(v26, v30, &qword_100096C28, &qword_100076420);
  v54 = &v30[*(v79 + 36)];
  v55 = v104;
  *(v54 + 4) = v103;
  *(v54 + 5) = v55;
  *(v54 + 6) = v105;
  v56 = v100;
  *v54 = v99;
  *(v54 + 1) = v56;
  v57 = v102;
  *(v54 + 2) = v101;
  *(v54 + 3) = v57;
  v58 = v81;
  sub_100014DEC(v30, v81, &qword_100096C30, &qword_100076428);
  *v10 = sub_10007223C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v59 = sub_10000388C(&qword_100096C48, &qword_100076468);
  sub_100059CD4(v48, &v10[*(v59 + 44)]);
  sub_100004C3C(&qword_100096C50, &qword_100096C08, &qword_100076400, &protocol conformance descriptor for VStack<A>);
  v60 = v86;
  sub_1000725AC();
  sub_100004890(v10, &qword_100096C08, &qword_100076400);
  v61 = v92;
  sub_1000129F8(v92);
  v62 = v93;
  sub_10007296C();
  v63 = sub_10007295C();
  v64 = *(v96 + 8);
  v65 = v62;
  v66 = v97;
  v64(v65, v97);
  v64(v61, v66);
  v67 = v94;
  v68 = &enum case for BlendMode.destinationOut(_:);
  if ((v63 & 1) == 0)
  {
    v68 = &enum case for BlendMode.normal(_:);
  }

  v69 = v91;
  v70 = v95;
  (*(v94 + 104))(v91, *v68, v95);
  v71 = v83;
  (*(v67 + 32))(&v83[*(v84 + 36)], v69, v70);
  (*(v87 + 32))(v71, v60, v89);
  v72 = v88;
  sub_100014DEC(v71, v88, &qword_100096C18, &qword_100076410);
  v73 = v82;
  sub_100004C94(v58, v82, &qword_100096C30, &qword_100076428);
  v74 = v90;
  sub_100004C94(v72, v90, &qword_100096C18, &qword_100076410);
  v75 = v98;
  sub_100004C94(v73, v98, &qword_100096C30, &qword_100076428);
  v76 = sub_10000388C(&qword_100096C58, &qword_100076470);
  sub_100004C94(v74, v75 + *(v76 + 48), &qword_100096C18, &qword_100076410);
  sub_100004890(v72, &qword_100096C18, &qword_100076410);
  sub_100004890(v58, &qword_100096C30, &qword_100076428);
  sub_100004890(v74, &qword_100096C18, &qword_100076410);
  return sub_100004890(v73, &qword_100096C30, &qword_100076428);
}

uint64_t sub_100059CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_10000388C(&qword_100096C60, &qword_100076478);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v34 - v7);
  v9 = type metadata accessor for CPHeaderGradientView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v34 - v13);
  v15 = type metadata accessor for CPLargeContentView(0);
  sub_100071F3C();
  v17 = v16;
  sub_100071F3C();
  v19 = v18 * 0.20625;
  v20 = *(v15 + 32);
  sub_10005AF24(a1 + v20, v14 + *(v10 + 32), type metadata accessor for CPTimelineEntry);
  *v14 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v21 = (v14 + *(v10 + 28));
  *v21 = v17;
  v21[1] = v19;
  sub_100071F3C();
  v23 = v22;
  sub_100071F3C();
  v25 = v24 * 0.2975;
  v26 = type metadata accessor for CPTitleGradientView(0);
  sub_10005AF24(a1 + v20, v8 + *(v26 + 24), type metadata accessor for CPTimelineEntry);
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = (v8 + *(v26 + 20));
  *v27 = v23;
  v27[1] = v25;
  *(v8 + *(v4 + 44)) = xmmword_100076170;
  v28 = v35;
  sub_10005AF24(v14, v35, type metadata accessor for CPHeaderGradientView);
  v29 = v36;
  sub_100004C94(v8, v36, &qword_100096C60, &qword_100076478);
  v30 = v37;
  sub_10005AF24(v28, v37, type metadata accessor for CPHeaderGradientView);
  v31 = sub_10000388C(&qword_100096C68, &qword_100076480);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 0;
  sub_100004C94(v29, v30 + *(v31 + 64), &qword_100096C60, &qword_100076478);
  sub_100004890(v8, &qword_100096C60, &qword_100076478);
  sub_10005AF8C(v14, type metadata accessor for CPHeaderGradientView);
  sub_100004890(v29, &qword_100096C60, &qword_100076478);
  return sub_10005AF8C(v28, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_10005A018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_10000388C(&qword_1000958C8, &unk_100076370);
  __chkstk_darwin(v24);
  v4 = (&v24 - v3);
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000958D0, &unk_100074DD0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1 + *(type metadata accessor for CPLargeContentView(0) + 32);
  v13 = type metadata accessor for CPTimelineEntry(0);
  if (*(v12 + *(v13 + 32)) == 1 && (sub_100057350() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370, &protocol conformance descriptor for ZStack<A>);
    v19 = v25;
    sub_10007230C();
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v14 = *(v12 + *(v13 + 20));
  if (v14 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v18 = 1;
      v19 = v25;
LABEL_19:
      v23 = sub_10000388C(&qword_1000958D8, &unk_100076380);
      return (*(*(v23 - 8) + 56))(v19, v18, 1, v23);
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = sub_100072E6C();
    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);

    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

LABEL_15:
    v20 = sub_10004D174(0xD000000000000019, 0x8000000100077CA0);
    if (v20)
    {
      v17 = v20;
LABEL_17:
      v19 = v25;
      *v4 = sub_1000728AC();
      v4[1] = v21;
      v22 = sub_10000388C(&qword_1000958E0, &unk_100074DE0);
      sub_10005A438(v17, a1, v16, v4 + *(v22 + 44));
      sub_100004C94(v4, v11, &qword_1000958C8, &unk_100076370);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370, &protocol conformance descriptor for ZStack<A>);
      sub_10007230C();

      sub_100004890(v4, &qword_1000958C8, &unk_100076370);
      goto LABEL_18;
    }

LABEL_8:
    sub_100057148(v8);
    v17 = sub_10001D980(v8, 1);
    (*(v6 + 8))(v8, v5);
    if (!v17)
    {

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A438@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v63 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  __chkstk_darwin(v63);
  v8 = (&v55 - v7);
  v56 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  __chkstk_darwin(v56);
  KeyPath = &v55 - v9;
  v58 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  __chkstk_darwin(v58);
  v61 = &v55 - v10;
  v64 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  __chkstk_darwin(v64);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v55 - v13;
  v14 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = sub_10007277C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_10007275C();
  (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
  v25 = sub_1000727DC();

  (*(v21 + 8))(v23, v20);
  sub_10007290C();
  v27 = v26;
  v29 = v28;
  v30 = a2 + *(type metadata accessor for CPLargeContentView(0) + 32);
  v31 = type metadata accessor for CPTimelineEntry(0);
  if (*(v30 + v31[6]) == 1 && (*(v30 + v31[7]) & 1) == 0 && (*(v30 + v31[8]) & 1) == 0 && *(v30 + v31[9]) == 1)
  {
    v32 = *(v30 + v31[5]);
    if (v32 >> 62)
    {
      if (sub_100072EDC() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_7:
      v33 = KeyPath;
      sub_10007287C();
      v34 = sub_1000723AC();
      *(v33 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v34;
      sub_1000726CC();
      v35 = sub_1000726FC();

      v36 = sub_1000723AC();
      v37 = v57;
      v38 = v33 + *(v56 + 36);
      *v38 = v35;
      *(v38 + 8) = v36;
      v39 = *(v37 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      if (!v39)
      {
        v40 = *(v37 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v40)
        {
          v41 = v40;
        }

        else
        {
          [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
        }
      }

      v42 = v39;
      sub_1000726AC();
      v43 = sub_1000726FC();

      v44 = sub_1000723AC();
      v45 = v61;
      sub_100014DEC(v33, v61, &qword_100095228, &qword_1000745D0);
      v46 = v45 + *(v58 + 36);
      *v46 = v43;
      *(v46 + 8) = v44;
      KeyPath = swift_getKeyPath();
      v47 = v60;
      v48 = &v60[*(v64 + 36)];
      v49 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v50 = enum case for ColorScheme.light(_:);
      v51 = sub_100071EAC();
      (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
      *v48 = KeyPath;
      sub_100014DEC(v45, v47, &qword_1000958F8, &unk_1000763A0);
      v52 = v62;
      sub_100014DEC(v47, v62, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v52, v8, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      sub_10007230C();
      sub_100004890(v52, &qword_100095900, &unk_100074DF0);
      goto LABEL_16;
    }
  }

  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v8 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  sub_10007230C();
LABEL_16:
  sub_100004C94(v19, v16, &qword_100095908, &unk_1000763B0);
  *a4 = v25;
  *(a4 + 8) = xmmword_100076180;
  *(a4 + 24) = 0xBFF0000000000000;
  *(a4 + 32) = v27;
  *(a4 + 40) = v29;
  v53 = sub_10000388C(&qword_100095958, &qword_100074E20);
  sub_100004C94(v16, a4 + *(v53 + 48), &qword_100095908, &unk_1000763B0);

  sub_100004890(v19, &qword_100095908, &unk_1000763B0);
  sub_100004890(v16, &qword_100095908, &unk_1000763B0);
}

uint64_t sub_10005AB8C()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100096B70, &qword_100076218);
  __chkstk_darwin(v5);
  v7 = (&v11 - v6);
  *v7 = sub_1000728AC();
  v7[1] = v8;
  v9 = sub_10000388C(&qword_100096B78, &qword_100076220);
  sub_1000574A8(v0, (v7 + *(v9 + 44)));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100096B80, &qword_100096B70, &qword_100076218, &protocol conformance descriptor for ZStack<A>);
  sub_10007265C();
  (*(v2 + 8))(v4, v1);
  return sub_100004890(v7, &qword_100096B70, &qword_100076218);
}

unint64_t sub_10005ADAC()
{
  result = qword_100096C38;
  if (!qword_100096C38)
  {
    sub_1000038D4(&qword_100096C20, &qword_100076418);
    sub_100004ACC();
    sub_100004C3C(&qword_100096C40, &qword_1000956A8, &qword_100077150, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C38);
  }

  return result;
}

unint64_t sub_10005AE6C()
{
  result = qword_100096C88;
  if (!qword_100096C88)
  {
    sub_1000038D4(&qword_100096C80, &unk_1000764A0);
    sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C88);
  }

  return result;
}

uint64_t sub_10005AF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AF8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005AFEC()
{
  sub_1000038D4(&qword_100096B70, &qword_100076218);
  sub_100004C3C(&qword_100096B80, &qword_100096B70, &qword_100076218, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005B0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10005B1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPEntryView(uint64_t a1)
{
  result = qword_100096CF0;
  if (!qword_100096CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005B310(uint64_t a1)
{
  sub_10000FADC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CPTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005B3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004C94(v2, &v14 - v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005B5B0()
{
  v0 = sub_100071DAC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for GKFeatureFlags.GameOverlayUI(_:), v0, v2);
  v5 = sub_100071D9C();
  (*(v1 + 8))(v4, v0);
  if ((v5 & 1) != 0 && (v6 = [objc_opt_self() currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, !v7))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_10005B710@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_100071F5C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CPTimelineEntry(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CPEntryView(0);
  sub_10005EFD8(v2 + *(v12 + 20), v11, type metadata accessor for CPTimelineEntry);
  (*(v6 + 16))(v8, a1, v5);
  sub_100071E3C();
  v13 = sub_100071E1C();
  v14 = sub_100071E2C();

  v15 = 0x8000000100077950;
  if (v14)
  {
    v16 = 0xD000000000000015;
  }

  else
  {
    v16 = 0x5F4E495F4E474953;
  }

  if ((v14 & 1) == 0)
  {
    v15 = 0xEF4547415353454DLL;
  }

  v29 = v15;
  v30 = v16;
  v17 = sub_100071E1C();
  v18 = sub_100071E2C();

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0xD000000000000016;
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x8000000100077930;
  }

  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for CPMessageView(0);
  *&a2[v22[5]] = KeyPath;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&a2[v22[6]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v24 = &a2[v22[7]];
  *v24 = v23;
  v24[8] = 0;
  sub_10005EB38(v11, &a2[v22[8]], type metadata accessor for CPTimelineEntry);
  result = (*(v6 + 32))(&a2[v22[9]], v8, v5);
  v26 = &a2[v22[10]];
  v27 = v29;
  *v26 = v30;
  *(v26 + 1) = v27;
  v28 = &a2[v22[11]];
  *v28 = v19;
  *(v28 + 1) = v20;
  return result;
}

uint64_t sub_10005BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v76 = a2;
  v83 = a3;
  v71 = type metadata accessor for CPExtraLargeContentView(0);
  __chkstk_darwin(v71);
  v66 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_10000388C(&qword_100096E10, &qword_100076650);
  __chkstk_darwin(v68);
  v70 = &v65 - v4;
  v79 = sub_10000388C(&qword_100096DF8, &qword_100076648);
  __chkstk_darwin(v79);
  v72 = &v65 - v5;
  v69 = type metadata accessor for CPLargeContentView(0);
  __chkstk_darwin(v69);
  v67 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for CPMediumContentView(0);
  __chkstk_darwin(v80);
  v73 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_10000388C(&qword_100096E18, &qword_100076658);
  __chkstk_darwin(v82);
  v81 = &v65 - v8;
  v77 = sub_10000388C(&qword_100096E20, &qword_100076660);
  __chkstk_darwin(v77);
  v10 = &v65 - v9;
  v74 = sub_10000388C(&qword_100096E28, &qword_100076668);
  __chkstk_darwin(v74);
  v12 = &v65 - v11;
  v78 = sub_10000388C(&qword_100096DD8, &qword_100076640);
  __chkstk_darwin(v78);
  v14 = &v65 - v13;
  v84 = sub_10000388C(&qword_100096DC8, &qword_100076638);
  __chkstk_darwin(v84);
  v16 = &v65 - v15;
  v17 = type metadata accessor for CPSmallContentView(0);
  __chkstk_darwin(v17);
  v19 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1000729DC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B3B0(v23);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for WidgetFamily.systemSmall(_:))
  {
    v25 = v17[7];
    v26 = sub_100071F5C();
    (*(*(v26 - 8) + 16))(v19 + v25, v75, v26);
    sub_10005EFD8(v76, v19 + v17[8], type metadata accessor for CPTimelineEntry);
    *(v19 + v17[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v19 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v28 = v19 + v17[6];
    *v28 = KeyPath;
    v28[8] = 0;
    v29 = v19 + v17[9];
    type metadata accessor for CGRect(0);
    v85 = 0u;
    v86 = 0u;
    sub_1000727FC();
    v30 = v89;
    v31 = v88;
    *v29 = v87;
    *(v29 + 1) = v31;
    *(v29 + 4) = v30;
    sub_10005EFD8(v19, v12, type metadata accessor for CPSmallContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView, &unk_1000738E4);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView, &unk_1000772A4);
    sub_10007230C();
    sub_100004C94(v14, v10, &qword_100096DD8, &qword_100076640);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v14, &qword_100096DD8, &qword_100076640);
    sub_100004C94(v16, v81, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v16, &qword_100096DC8, &qword_100076638);
    v32 = type metadata accessor for CPSmallContentView;
LABEL_5:
    v41 = v32;
    v42 = v19;
    return sub_10005F040(v42, v41);
  }

  if (v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    v33 = v80;
    v34 = *(v80 + 28);
    v35 = sub_100071F5C();
    v19 = v73;
    (*(*(v35 - 8) + 16))(v73 + v34, v75, v35);
    sub_10005EFD8(v76, v19 + v33[8], type metadata accessor for CPTimelineEntry);
    *(v19 + v33[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v36 = swift_getKeyPath();
    *v19 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v37 = v19 + v33[6];
    *v37 = v36;
    v37[8] = 0;
    v38 = v19 + v33[9];
    type metadata accessor for CGRect(0);
    v85 = 0u;
    v86 = 0u;
    sub_1000727FC();
    v39 = v89;
    v40 = v88;
    *v38 = v87;
    *(v38 + 1) = v40;
    *(v38 + 4) = v39;
    sub_10005EFD8(v19, v12, type metadata accessor for CPMediumContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView, &unk_1000738E4);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView, &unk_1000772A4);
    sub_10007230C();
    sub_100004C94(v14, v10, &qword_100096DD8, &qword_100076640);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v14, &qword_100096DD8, &qword_100076640);
    sub_100004C94(v16, v81, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v16, &qword_100096DC8, &qword_100076638);
    v32 = type metadata accessor for CPMediumContentView;
    goto LABEL_5;
  }

  if (v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    v44 = v69;
    v45 = *(v69 + 28);
    v46 = sub_100071F5C();
    v47 = v67;
    (*(*(v46 - 8) + 16))(v67 + v45, v75, v46);
    sub_10005EFD8(v76, v47 + v44[8], type metadata accessor for CPTimelineEntry);
    *(v47 + v44[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v48 = swift_getKeyPath();
    *v47 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v49 = v47 + v44[6];
    *v49 = v48;
    v49[8] = 0;
    v50 = v47 + v44[9];
    type metadata accessor for CGRect(0);
    v85 = 0u;
    v86 = 0u;
    sub_1000727FC();
    v51 = v89;
    v52 = v88;
    *v50 = v87;
    *(v50 + 1) = v52;
    *(v50 + 4) = v51;
    sub_10005EFD8(v47, v70, type metadata accessor for CPLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView, &unk_1000761C4);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView, &unk_100074C38);
    v53 = v72;
    sub_10007230C();
    sub_100004C94(v53, v10, &qword_100096DF8, &qword_100076648);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v53, &qword_100096DF8, &qword_100076648);
    sub_100004C94(v16, v81, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v16, &qword_100096DC8, &qword_100076638);
    v54 = type metadata accessor for CPLargeContentView;
LABEL_12:
    v41 = v54;
    v42 = v47;
    return sub_10005F040(v42, v41);
  }

  v55 = v81;
  if (v24 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v56 = v71;
    v57 = *(v71 + 28);
    v58 = sub_100071F5C();
    v47 = v66;
    (*(*(v58 - 8) + 16))(v66 + v57, v75, v58);
    sub_10005EFD8(v76, v47 + v56[8], type metadata accessor for CPTimelineEntry);
    *(v47 + v56[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v59 = swift_getKeyPath();
    *v47 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v60 = v47 + v56[6];
    *v60 = v59;
    v60[8] = 0;
    v61 = v47 + v56[9];
    type metadata accessor for CGRect(0);
    v85 = 0u;
    v86 = 0u;
    sub_1000727FC();
    v62 = v89;
    v63 = v88;
    *v61 = v87;
    *(v61 + 1) = v63;
    *(v61 + 4) = v62;
    sub_10005EFD8(v47, v70, type metadata accessor for CPExtraLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView, &unk_1000761C4);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView, &unk_100074C38);
    v64 = v72;
    sub_10007230C();
    sub_100004C94(v64, v10, &qword_100096DF8, &qword_100076648);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v64, &qword_100096DF8, &qword_100076648);
    sub_100004C94(v16, v55, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v16, &qword_100096DC8, &qword_100076638);
    v54 = type metadata accessor for CPExtraLargeContentView;
    goto LABEL_12;
  }

  if (v24 == enum case for WidgetFamily.accessoryCircular(_:) || v24 == enum case for WidgetFamily.accessoryRectangular(_:) || v24 == enum case for WidgetFamily.accessoryInline(_:))
  {
    LOBYTE(v85) = 0;
    sub_10007230C();
    *v55 = v87;
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    return sub_10007230C();
  }

  else
  {
    LOBYTE(v85) = 1;
    sub_10007230C();
    *v55 = v87;
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_10005CC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v84 = a1;
  v68 = sub_10000388C(&qword_100096D88, &qword_100076588);
  __chkstk_darwin(v68);
  v67[1] = v67 - v3;
  v4 = sub_1000729DC();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CPMessageView(0);
  __chkstk_darwin(v6);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10000388C(&qword_100096D90, &qword_100076590);
  __chkstk_darwin(v82);
  v10 = v67 - v9;
  v11 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v11 - 8);
  v70 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v67 - v14;
  v16 = sub_100071FCC();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v78 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CPTimelineEntry(0);
  __chkstk_darwin(v18);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10000388C(&qword_100096D98, &qword_100076598);
  __chkstk_darwin(v81);
  v69 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v67 - v23;
  v25 = sub_10000388C(&qword_100096DA0, &qword_1000765A0);
  v76 = *(v25 - 8);
  v77 = v25;
  __chkstk_darwin(v25);
  v27 = v67 - v26;
  v75 = sub_10000388C(&qword_100096DA8, &qword_1000765A8);
  __chkstk_darwin(v75);
  v74 = v67 - v28;
  v29 = v2 + *(type metadata accessor for CPEntryView(0) + 20);
  if (*(v29 + v18[6]) != 1)
  {
    sub_10005B710(v84, v8);
    sub_100071C8C();
    v35 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView, &unk_1000756F8);
    sub_1000725BC();
    sub_100004890(v15, &qword_100094E50, &qword_100074180);
    sub_10005F040(v8, type metadata accessor for CPMessageView);
    v85 = v6;
    v86 = v35;
    swift_getOpaqueTypeConformance2();
LABEL_7:
    result = sub_10007281C();
    *v83 = result;
    return result;
  }

  v67[0] = v10;
  if (*(v29 + v18[7]) == 1)
  {
    sub_100071D3C();
    if (qword_100094728 != -1)
    {
      swift_once();
    }

    *&v20[v18[5]] = qword_1000999E8;
    v20[v18[6]] = 1;
    v20[v18[7]] = 0;
    v20[v18[8]] = 1;
    v20[v18[9]] = 0;

    sub_10005BA38(v84, v20, v24);
    sub_10005F040(v20, type metadata accessor for CPTimelineEntry);
    v30 = v78;
    sub_100071FBC();
    v31 = sub_10005ECA0();
    v32 = v81;
    sub_10007268C();
    (*(v79 + 8))(v30, v80);
    sub_100004890(v24, &qword_100096D98, &qword_100076598);
    sub_10005B5B0();
    v85 = v32;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v77;
    sub_1000725BC();
    sub_100004890(v15, &qword_100094E50, &qword_100074180);
    (*(v76 + 8))(v27, v34);
    v85 = v34;
    v86 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  if ((*(v29 + v18[9]) & 1) == 0)
  {
    v45 = v8;
    sub_10005EFD8(v29, &v8[v6[8]], type metadata accessor for CPTimelineEntry);
    v46 = v6[9];
    v47 = sub_100071F5C();
    (*(*(v47 - 8) + 16))(&v8[v46], v84, v47);
    *&v8[v6[5]] = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *&v8[v6[6]] = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v8 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v49 = &v8[v6[7]];
    *v49 = KeyPath;
    v49[8] = 0;
    v50 = &v8[v6[10]];
    *v50 = 0xD000000000000019;
    *(v50 + 1) = 0x80000001000778F0;
    v51 = &v8[v6[11]];
    *v51 = 0;
    *(v51 + 1) = 0;
    v52 = v71;
    sub_10005B3B0(v71);
    sub_10005EF90(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v53 = v73;
    sub_100072FEC();
    (*(v72 + 8))(v52, v53);
    sub_100071DFC();

    v54 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView, &unk_1000756F8);
    sub_1000725BC();
    sub_100004890(v15, &qword_100094E50, &qword_100074180);
    sub_10005F040(v45, type metadata accessor for CPMessageView);
    v85 = v6;
    v86 = v54;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  v37 = *(v29 + v18[5]);
  v38 = v15;
  if (v37 >> 62)
  {
    v39 = sub_100072EDC();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v6;
  v41 = v8;
  v42 = v84;
  if (!v39)
  {
    sub_10005EFD8(v29, &v41[v40[8]], type metadata accessor for CPTimelineEntry);
    v55 = v40[9];
    v56 = sub_100071F5C();
    (*(*(v56 - 8) + 16))(&v41[v55], v42, v56);
    *&v41[v40[5]] = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *&v41[v40[6]] = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    v57 = swift_getKeyPath();
    *v41 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v58 = &v41[v40[7]];
    *v58 = v57;
    v58[8] = 0;
    v59 = &v41[v40[10]];
    *v59 = 0xD000000000000017;
    *(v59 + 1) = 0x8000000100077E50;
    v60 = &v41[v40[11]];
    *v60 = 0xD00000000000001ELL;
    *(v60 + 1) = 0x8000000100077E70;
    sub_10005B5B0();
    v61 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView, &unk_1000756F8);
    sub_1000725BC();
    sub_100004890(v38, &qword_100094E50, &qword_100074180);
    sub_10005F040(v41, type metadata accessor for CPMessageView);
    v85 = v40;
    v86 = v61;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  v43 = v69;
  sub_10005BA38(v84, v29, v69);
  if (*(v29 + v18[8]) == 1)
  {
    v44 = v70;
    sub_10005B5B0();
LABEL_25:
    v65 = sub_10005ECA0();
    v66 = v81;
    sub_1000725BC();
    sub_100004890(v44, &qword_100094E50, &qword_100074180);
    sub_100004890(v43, &qword_100096D98, &qword_100076598);
    v85 = v66;
    v86 = v65;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  if (v37 >> 62)
  {
    result = sub_100072EDC();
  }

  else
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v70;
  if (!result)
  {
    v64 = sub_100071C9C();
    (*(*(v64 - 8) + 56))(v44, 1, 1, v64);
    goto LABEL_25;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    sub_100072E6C();
    goto LABEL_23;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_23:
    v62 = v71;
    sub_10005B3B0(v71);
    sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v62, v44);

    (*(v72 + 8))(v62, v73);
    v63 = sub_100071C9C();
    (*(*(v63 - 8) + 56))(v44, 0, 1, v63);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_10000388C(&qword_100096D28, &qword_100076510);
  __chkstk_darwin(v25);
  v6 = &v23 - v5;
  v24 = sub_100071FCC();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000388C(&qword_100096D30, &qword_100076518);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000388C(&qword_100096D38, &qword_100076520);
  __chkstk_darwin(v14);
  v16 = (&v23 - v15);
  *v16 = sub_1000728AC();
  v16[1] = v17;
  v18 = sub_10000388C(&qword_100096D40, &qword_100076528);
  sub_10005DECC(a2, a1, (v16 + *(v18 + 44)));
  v19 = a2 + *(type metadata accessor for CPEntryView(0) + 20);
  if (*(v19 + *(type metadata accessor for CPTimelineEntry(0) + 32)) == 1)
  {
    sub_100071FBC();
    v20 = sub_100004C3C(&qword_100096D48, &qword_100096D38, &qword_100076520, &protocol conformance descriptor for ZStack<A>);
    sub_10007268C();
    (*(v7 + 8))(v9, v24);
    (*(v11 + 16))(v6, v13, v10);
    swift_storeEnumTagMultiPayload();
    v27 = v14;
    v28 = v20;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_100004C94(v16, v6, &qword_100096D38, &qword_100076520);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100004C3C(&qword_100096D48, &qword_100096D38, &qword_100076520, &protocol conformance descriptor for ZStack<A>);
    v27 = v14;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
  }

  return sub_100004890(v16, &qword_100096D38, &qword_100076520);
}

uint64_t sub_10005DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for CPTimelineEntry(0);
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100071F5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000388C(&qword_100096D50, &qword_100076530);
  __chkstk_darwin(v58);
  v51 = &v43 - v12;
  v55 = sub_10000388C(&qword_100096D58, &qword_100076538);
  __chkstk_darwin(v55);
  v57 = &v43 - v13;
  v50 = sub_100071FCC();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CPBackgroundView(0);
  __chkstk_darwin(v15);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = (&v43 - v19);
  v52 = sub_10000388C(&qword_100096D60, &qword_100076540);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v43 - v21;
  v22 = sub_10000388C(&qword_100096D68, &qword_100076548);
  __chkstk_darwin(v22 - 8);
  v56 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v53 = &v43 - v25;
  sub_10005CC80(a2, &v60);
  v54 = v60;
  v26 = a1 + *(type metadata accessor for CPEntryView(0) + 20);
  if (*(v26 + v5[6]) != 1)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_10005EFD8(v26, v7, type metadata accessor for CPTimelineEntry);
    goto LABEL_7;
  }

  v43 = v11;
  v44 = v7;
  v45 = v8;
  if (*(v26 + v5[7]) != 1)
  {
    v11 = v43;
    v8 = v45;
    (*(v9 + 16))(v43, a2, v45);
    v7 = v44;
    sub_10005EFD8(v26, v44, type metadata accessor for CPTimelineEntry);
    if ((*(v26 + v5[7]) & 1) == 0 && (*(v26 + v5[8]) & 1) == 0 && *(v26 + v5[9]) == 1)
    {
      v41 = *(v26 + v5[5]);
      if (v41 >> 62)
      {
        if (sub_100072EDC() < 1)
        {
          goto LABEL_23;
        }

        v42 = sub_100072EDC();
        v7 = v44;
        v8 = v45;
        v11 = v43;
        if (v42)
        {
LABEL_15:
          if ((v41 & 0xC000000000000001) != 0)
          {
            v34 = sub_100072E6C();
            goto LABEL_8;
          }

          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(v41 + 32);

            goto LABEL_8;
          }

          __break(1u);
LABEL_23:
          v34 = 0;
          v7 = v44;
          v8 = v45;
          v11 = v43;
          goto LABEL_8;
        }
      }

      else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

LABEL_7:
    v34 = 0;
LABEL_8:
    *v17 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 32))(v17 + v15[5], v11, v8);
    sub_10005EB38(v7, v17 + v15[6], type metadata accessor for CPTimelineEntry);
    *(v17 + v15[7]) = v34;
    v35 = sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView, &unk_100076F74);
    v36 = v51;
    sub_10007264C();
    sub_10005F040(v17, type metadata accessor for CPBackgroundView);
    sub_100004C94(v36, v57, &qword_100096D50, &qword_100076530);
    swift_storeEnumTagMultiPayload();
    v60 = v15;
    v61 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10005EBA0();
    v33 = v53;
    sub_10007230C();
    sub_100004890(v36, &qword_100096D50, &qword_100076530);
    goto LABEL_9;
  }

  (*(v9 + 16))(v20 + v15[5], a2, v45);
  v27 = v20 + v15[6];
  sub_100071D3C();
  if (qword_100094728 != -1)
  {
    swift_once();
  }

  *&v27[v5[5]] = qword_1000999E8;
  v27[v5[6]] = 1;
  v27[v5[7]] = 0;
  v27[v5[8]] = 1;
  v27[v5[9]] = 0;
  *v20 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v20 + v15[7]) = 0;

  v28 = v46;
  sub_100071FBC();
  v29 = sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView, &unk_100076F74);
  v30 = v47;
  sub_10007268C();
  (*(v48 + 8))(v28, v50);
  sub_10005F040(v20, type metadata accessor for CPBackgroundView);
  v31 = v49;
  v32 = v52;
  (*(v49 + 16))(v57, v30, v52);
  swift_storeEnumTagMultiPayload();
  v60 = v15;
  v61 = v29;
  swift_getOpaqueTypeConformance2();
  sub_10005EBA0();
  v33 = v53;
  sub_10007230C();
  (*(v31 + 8))(v30, v32);
LABEL_9:
  v37 = v56;
  sub_100004C94(v33, v56, &qword_100096D68, &qword_100076548);
  v38 = v59;
  *v59 = v54;
  v39 = sub_10000388C(&qword_100096D80, &qword_100076580);
  sub_100004C94(v37, v38 + *(v39 + 48), &qword_100096D68, &qword_100076548);

  sub_100004890(v33, &qword_100096D68, &qword_100076548);
  sub_100004890(v37, &qword_100096D68, &qword_100076548);
}

uint64_t sub_10005E838@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10005EFD8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CPEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10005EB38(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CPEntryView);
  *a2 = sub_10005EAB4;
  a2[1] = v7;
  return result;
}

uint64_t sub_10005E94C()
{
  v1 = type metadata accessor for CPEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000729DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  v7 = sub_100071D4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for CPTimelineEntry(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005EAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005DAD8(a1, v6, a2);
}

uint64_t sub_10005EB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005EBA0()
{
  result = qword_100096D78;
  if (!qword_100096D78)
  {
    sub_1000038D4(&qword_100096D50, &qword_100076530);
    sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView, &unk_100076F74);
    sub_10005EF90(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096D78);
  }

  return result;
}

unint64_t sub_10005ECA0()
{
  result = qword_100096DB8;
  if (!qword_100096DB8)
  {
    sub_1000038D4(&qword_100096D98, &qword_100076598);
    sub_10005ED2C();
    sub_10004B940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DB8);
  }

  return result;
}

unint64_t sub_10005ED2C()
{
  result = qword_100096DC0;
  if (!qword_100096DC0)
  {
    sub_1000038D4(&qword_100096DC8, &qword_100076638);
    sub_10005EDB8();
    sub_10005EEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DC0);
  }

  return result;
}

unint64_t sub_10005EDB8()
{
  result = qword_100096DD0;
  if (!qword_100096DD0)
  {
    sub_1000038D4(&qword_100096DD8, &qword_100076640);
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView, &unk_1000738E4);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView, &unk_1000772A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DD0);
  }

  return result;
}

unint64_t sub_10005EEA4()
{
  result = qword_100096DF0;
  if (!qword_100096DF0)
  {
    sub_1000038D4(&qword_100096DF8, &qword_100076648);
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView, &unk_1000761C4);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView, &unk_100074C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DF0);
  }

  return result;
}

uint64_t sub_10005EF90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005EFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005F040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10005F258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFSmallContentView(uint64_t a1)
{
  result = qword_100096E98;
  if (!qword_100096E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000155F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005F600@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_10000388C(&qword_100096ED8, &qword_1000766F8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v53 - v3);
  v5 = sub_10000388C(&qword_100096EE0, &qword_100076700);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_10000388C(&qword_100096EE8, &qword_100076708);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_1000729DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AFSmallContentView(0);
  sub_10005F418(v14);
  sub_1000084E0();
  (*(v12 + 8))(v14, v11);
  *v4 = sub_1000728AC();
  v4[1] = v15;
  v16 = sub_10000388C(&qword_100096EF0, &unk_100076710);
  sub_10005FA48(v1, v4 + *(v16 + 44));
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v12) = sub_1000723DC();
  *(inited + 32) = v12;
  v18 = sub_1000723FC();
  *(inited + 33) = v18;
  v19 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v12)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v19 = sub_1000723EC();
  }

  sub_100071E8C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100014DEC(v4, v7, &qword_100096ED8, &qword_1000766F8);
  v28 = &v7[*(v5 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_1000723CC();
  v30 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v29)
  {
    v30 = sub_1000723EC();
  }

  sub_100071E8C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100014DEC(v7, v10, &qword_100096EE0, &qword_100076700);
  v39 = &v10[*(v8 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1000723BC();
  v41 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v40)
  {
    v41 = sub_1000723EC();
  }

  sub_100071E8C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v53;
  sub_100014DEC(v10, v53, &qword_100096EE8, &qword_100076708);
  result = sub_10000388C(&qword_100096EF8, &qword_100076720);
  v52 = v50 + *(result + 36);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  return result;
}

uint64_t sub_10005FA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v3 - 8);
  v29 = &v29 - v4;
  v34 = sub_10000388C(&qword_100095548, &qword_100074950);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v29 - v5;
  v35 = sub_10000388C(&qword_100096F00, &qword_100076728);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v29 - v7;
  v32 = sub_10000388C(&qword_100096F08, qword_100076730);
  __chkstk_darwin(v32);
  v10 = &v29 - v9;
  v11 = sub_1000729DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10000388C(&qword_100095538, &qword_100074938);
  v15 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = &v29 - v16;
  v18 = a1 + *(type metadata accessor for AFSmallContentView(0) + 24);
  v19 = *(v18 + *(type metadata accessor for AFTimelineEntry(0) + 36));
  if (*(v19 + 16))
  {
    v20 = *(v19 + 32);

    sub_10005F418(v14);
    v21 = v29;
    sub_100071DCC();
    (*(v12 + 8))(v14, v11);
    sub_100012BA4(v21);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v23 = v34;
    sub_1000725FC();
    (*(v30 + 8))(v6, v23);
    v24 = v31;
    v25 = v35;
    (*(v31 + 16))(v10, v8, v35);
    swift_storeEnumTagMultiPayload();
    v37 = v23;
    v38 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10007230C();

    return (*(v24 + 8))(v8, v25);
  }

  else
  {
    sub_10005F418(v14);
    sub_100071DDC();
    (*(v12 + 8))(v14, v11);
    v27 = v33;
    (*(v15 + 16))(v10, v17, v33);
    swift_storeEnumTagMultiPayload();
    v28 = swift_getOpaqueTypeConformance2();
    v37 = v34;
    v38 = v28;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v15 + 8))(v17, v27);
  }
}

uint64_t sub_100060058(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006010C()
{
  result = qword_100096F28;
  if (!qword_100096F28)
  {
    sub_1000038D4(&qword_100096ED8, &qword_1000766F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F28);
  }

  return result;
}

uint64_t sub_100060184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100060260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_100060348(uint64_t a1)
{
  sub_100063E78(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_100024710();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100060404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004C94(v2, &v14 - v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100060604@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v44 = sub_10000388C(&qword_100097180, &qword_100076AB8);
  __chkstk_darwin(v44);
  v45 = (&v43 - v1);
  v52 = sub_10000388C(&qword_100097188, &qword_100076AC0);
  __chkstk_darwin(v52);
  v46 = &v43 - v2;
  v57 = sub_10000388C(&qword_100097190, &qword_100076AC8);
  __chkstk_darwin(v57);
  v58 = (&v43 - v3);
  v49 = sub_10000388C(&qword_100097198, &qword_100076AD0);
  __chkstk_darwin(v49);
  v51 = &v43 - v4;
  v47 = sub_10000388C(&qword_1000971A0, &qword_100076AD8);
  __chkstk_darwin(v47);
  v48 = &v43 - v5;
  v50 = sub_10000388C(&qword_1000971A8, &qword_100076AE0);
  __chkstk_darwin(v50);
  v55 = &v43 - v6;
  v56 = sub_10000388C(&qword_1000971B0, &qword_100076AE8);
  __chkstk_darwin(v56);
  v53 = &v43 - v7;
  v8 = sub_10007277C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_1000971B8, &qword_100076AF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_10000388C(&qword_1000971C0, &qword_100076AF8);
  __chkstk_darwin(v15);
  v54 = &v43 - v16;
  v17 = sub_1000729DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060404(v20);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000727EC();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v22 = sub_1000727DC();

    (*(v9 + 8))(v11, v8);
    v60 = v22;
    sub_1000725FC();

    *&v14[*(v12 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    v23 = v54;
    sub_10007261C();
    sub_100004890(v14, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v23, v48, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    v24 = v55;
    sub_10007230C();
    sub_100004C94(v24, v51, &qword_1000971A8, &qword_100076AE0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v25 = v53;
    sub_10007230C();
    sub_100004890(v24, &qword_1000971A8, &qword_100076AE0);
    sub_100004C94(v25, v58, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v25, &qword_1000971B0, &qword_100076AE8);
    v26 = v23;
LABEL_5:
    v32 = &qword_1000971C0;
LABEL_6:
    v33 = &qword_100076AF8;
    return sub_100004890(v26, v32, v33);
  }

  v27 = v8;
  v43 = v15;
  v29 = v54;
  v28 = v55;
  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000727EC();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v27);
    v30 = sub_1000727DC();

    (*(v9 + 8))(v11, v27);
    v60 = v30;
    sub_1000725FC();

    *&v14[*(v12 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    sub_10007261C();
    sub_100004890(v14, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v29, v48, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    sub_10007230C();
    sub_100004C94(v28, v51, &qword_1000971A8, &qword_100076AE0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v31 = v53;
    sub_10007230C();
    sub_100004890(v28, &qword_1000971A8, &qword_100076AE0);
    sub_100004C94(v31, v58, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v31, &qword_1000971B0, &qword_100076AE8);
    v26 = v29;
    goto LABEL_5;
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:) || v21 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000727EC();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v27);
    v38 = sub_1000727DC();

    (*(v9 + 8))(v11, v27);
    v60 = v38;
    sub_1000725FC();

    *&v14[*(v12 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    sub_10007261C();
    sub_100004890(v14, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v29, v45, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    v39 = v46;
    sub_10007230C();
    sub_100004C94(v39, v51, &qword_100097188, &qword_100076AC0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v40 = v53;
    sub_10007230C();
    sub_100004890(v39, &qword_100097188, &qword_100076AC0);
    sub_100004C94(v40, v58, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v40, &qword_1000971B0, &qword_100076AE8);
    v26 = v29;
    v32 = &qword_1000971C0;
    goto LABEL_6;
  }

  v35 = enum case for WidgetFamily.accessoryCircular(_:);
  v36 = v21;
  v37 = sub_1000727EC();
  if (v36 != v35 && v36 != enum case for WidgetFamily.accessoryRectangular(_:) && v36 != enum case for WidgetFamily.accessoryInline(_:))
  {
    *v58 = v37;
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    return (*(v18 + 8))(v20, v17);
  }

  *v45 = v37;
  swift_storeEnumTagMultiPayload();
  sub_1000640D0();

  v41 = v46;
  sub_10007230C();
  sub_100004C94(v41, v51, &qword_100097188, &qword_100076AC0);
  swift_storeEnumTagMultiPayload();
  sub_10006404C();
  sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
  v42 = v53;
  sub_10007230C();
  sub_100004890(v41, &qword_100097188, &qword_100076AC0);
  sub_100004C94(v42, v58, &qword_1000971B0, &qword_100076AE8);
  swift_storeEnumTagMultiPayload();
  sub_100063F94();
  sub_10007230C();

  v26 = v42;
  v32 = &qword_1000971B0;
  v33 = &qword_100076AE8;
  return sub_100004890(v26, v32, v33);
}

uint64_t sub_100061434()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AFBackgroundView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100072CEC();
    v7 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100061590@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = sub_10000388C(&qword_100096FD8, &qword_1000767C8);
  __chkstk_darwin(v2);
  v4 = &v29 - v3;
  v31 = sub_10000388C(&qword_100096FE0, &qword_1000767D0);
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000388C(&qword_100096FE8, &qword_1000767D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  sub_1000618D0(&v29 - v14);
  *v4 = sub_10007223C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v16 = sub_10000388C(&qword_100096FF0, &qword_1000767E0);
  sub_100061EE4(&v4[*(v16 + 44)]);
  sub_100004C3C(&qword_100096FF8, &qword_100096FD8, &qword_1000767C8, &protocol conformance descriptor for VStack<A>);
  sub_1000725AC();
  sub_100004890(v4, &qword_100096FD8, &qword_1000767C8);
  v17 = v12;
  v29 = v12;
  sub_100004C94(v15, v12, &qword_100096FE8, &qword_1000767D8);
  v18 = v5;
  v19 = *(v5 + 16);
  v20 = v30;
  v21 = v9;
  v22 = v9;
  v23 = v31;
  v19(v30, v21, v31);
  v24 = v17;
  v25 = v32;
  sub_100004C94(v24, v32, &qword_100096FE8, &qword_1000767D8);
  v26 = sub_10000388C(&qword_100097000, &qword_1000767E8);
  v19((v25 + *(v26 + 48)), v20, v23);
  v27 = *(v18 + 8);
  v27(v22, v23);
  sub_100004890(v15, &qword_100096FE8, &qword_1000767D8);
  v27(v20, v23);
  return sub_100004890(v29, &qword_100096FE8, &qword_1000767D8);
}

uint64_t sub_1000618D0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_10000388C(&qword_1000970C8, &qword_1000769E8);
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = (&v43 - v2);
  v3 = type metadata accessor for AFBackgroundImage(0);
  __chkstk_darwin(v3 - 8);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = (&v43 - v6);
  v7 = sub_10000388C(&qword_1000970D0, &qword_1000769F0);
  __chkstk_darwin(v7 - 8);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_10007297C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = sub_100071DAC();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for GKFeatureFlags.GameOverlayUI(_:), v19, v21);
  v24 = sub_100071D9C();
  (*(v20 + 8))(v23, v19);
  if (((v24 & 1) == 0 || (v25 = [objc_opt_self() currentDevice], v26 = objc_msgSend(v25, "userInterfaceIdiom"), v25, v26)) && (sub_100061434() & 1) != 0 && (sub_1000129F8(v18), sub_10007296C(), sub_100055404(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode), v27 = sub_100072B1C(), v28 = *(v13 + 8), v28(v15, v12), v28(v18, v12), (v27 & 1) == 0))
  {
    if (qword_1000946C8 != -1)
    {
      swift_once();
    }

    v31 = qword_100099960;
    *v11 = sub_10007223C();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v32 = &v11[*(sub_10000388C(&qword_1000970D8, &qword_1000769F8) + 44)];
    KeyPath = swift_getKeyPath();
    v34 = v44;
    *v44 = KeyPath;
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v35 = v45;
    sub_100063B9C(v34, v45, type metadata accessor for AFBackgroundImage);
    *v32 = 0;
    v32[8] = 0;
    v36 = sub_10000388C(&qword_1000970E0, &qword_100076A38);
    sub_100063B9C(v35, &v32[*(v36 + 48)], type metadata accessor for AFBackgroundImage);
    sub_100063C04(v34, type metadata accessor for AFBackgroundImage);
    sub_100063C04(v35, type metadata accessor for AFBackgroundImage);
    if (qword_1000946D0 != -1)
    {
      swift_once();
    }

    v37 = qword_100099968;
    v38 = v46;
    sub_100004C94(v11, v46, &qword_1000970D0, &qword_1000769F0);
    v39 = v47;
    *v47 = v31;
    v40 = sub_10000388C(&qword_1000970E8, &unk_100076A40);
    sub_100004C94(v38, v39 + *(v40 + 48), &qword_1000970D0, &qword_1000769F0);
    *(v39 + *(v40 + 64)) = v37;
    swift_retain_n();
    swift_retain_n();
    sub_100004890(v11, &qword_1000970D0, &qword_1000769F0);

    sub_100004890(v38, &qword_1000970D0, &qword_1000769F0);

    v41 = v50;
    sub_100063C64(v39, v50);
    v30 = v41;
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v30 = v50;
  }

  return (*(v48 + 56))(v30, v29, 1, v49);
}

uint64_t sub_100061EE4@<X0>(uint64_t a2@<X8>)
{
  v24 = a2;
  v2 = sub_10000388C(&qword_100097008, &qword_1000767F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_10000388C(&qword_100097010, &qword_1000767F8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  *v4 = sub_1000721CC();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v14 = sub_10000388C(&qword_100097018, &unk_100076800);
  sub_1000621F0(&v4[*(v14 + 44)]);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v16 = sub_1000723BC();
  *(inited + 32) = v16;
  v17 = sub_1000723FC();
  *(inited + 33) = v17;
  v18 = sub_1000723DC();
  *(inited + 34) = v18;
  v19 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v16)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v17)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v19 = sub_1000723EC();
  }

  sub_100014DEC(v4, v10, &qword_100097008, &qword_1000767F0);
  v20 = &v10[*(v5 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  sub_100014DEC(v10, v13, &qword_100097010, &qword_1000767F8);
  sub_100004C94(v13, v7, &qword_100097010, &qword_1000767F8);
  v21 = v24;
  sub_100004C94(v7, v24, &qword_100097010, &qword_1000767F8);
  v22 = v21 + *(sub_10000388C(&qword_100097020, &qword_100076810) + 48);
  *v22 = 0;
  *(v22 + 8) = 0;
  sub_100004890(v13, &qword_100097010, &qword_1000767F8);
  return sub_100004890(v7, &qword_100097010, &qword_1000767F8);
}

uint64_t sub_1000621F0@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = type metadata accessor for GameCenterLogo(0);
  __chkstk_darwin(v2 - 8);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = (&v36 - v5);
  v36 = sub_10007234C();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100097028, &qword_100076818);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10000388C(&qword_100097030, &qword_100076820);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_10000388C(&qword_100097038, &qword_100076828);
  __chkstk_darwin(v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  *v11 = sub_1000721CC();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v22 = sub_10000388C(&qword_100097040, &qword_100076830);
  sub_1000626F4(&v11[*(v22 + 44)]);
  sub_10007233C();
  v23 = sub_100004C3C(&qword_100097048, &qword_100097028, &qword_100076818, &protocol conformance descriptor for HStack<A>);
  sub_10007266C();
  (*(v6 + 8))(v8, v36);
  sub_100004890(v11, &qword_100097028, &qword_100076818);
  sub_1000721DC();
  v24 = sub_10007258C();
  v26 = v25;
  LOBYTE(v6) = v27;
  v42 = v9;
  v43 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  sub_10007263C();
  sub_100004C84(v24, v26, v6 & 1);

  (*(v38 + 8))(v15, v28);
  KeyPath = swift_getKeyPath();
  v30 = v39;
  *v39 = KeyPath;
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_100004C94(v21, v18, &qword_100097038, &qword_100076828);
  v31 = v40;
  sub_100063B9C(v30, v40, type metadata accessor for GameCenterLogo);
  v32 = v41;
  sub_100004C94(v18, v41, &qword_100097038, &qword_100076828);
  v33 = sub_10000388C(&qword_100097050, &unk_100076870);
  v34 = v32 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 0;
  sub_100063B9C(v31, v32 + *(v33 + 64), type metadata accessor for GameCenterLogo);
  sub_100063C04(v30, type metadata accessor for GameCenterLogo);
  sub_100004890(v21, &qword_100097038, &qword_100076828);
  sub_100063C04(v31, type metadata accessor for GameCenterLogo);
  return sub_100004890(v18, &qword_100097038, &qword_100076828);
}

uint64_t sub_1000626F4@<X0>(char *a1@<X8>)
{
  v99 = a1;
  v81 = sub_10000388C(&qword_100097058, &qword_100077080);
  __chkstk_darwin(v81);
  v80 = &v78 - v1;
  v83 = sub_10000388C(&qword_100097060, &qword_100076880);
  __chkstk_darwin(v83);
  v82 = &v78 - v2;
  v98 = sub_10000388C(&qword_100097068, &qword_100076888);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v79 = &v78 - v3;
  v91 = sub_100071DAC();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100097070, &qword_100076890);
  __chkstk_darwin(v5 - 8);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v78 - v8;
  v88 = sub_10007238C();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10000388C(&qword_100097078, &qword_100076898);
  __chkstk_darwin(v85);
  v11 = &v78 - v10;
  v94 = sub_10000388C(&qword_100097080, &qword_1000768A0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v78 - v14;
  sub_1000721DC();
  v15 = sub_10007258C();
  v17 = v16;
  v19 = v18;
  sub_10007248C();
  v20 = sub_10007255C();
  v22 = v21;
  v24 = v23;
  sub_100004C84(v15, v17, v19 & 1);

  sub_10007241C();
  v25 = sub_10007257C();
  v27 = v26;
  v29 = v28;

  sub_100004C84(v20, v22, v24 & 1);

  sub_10007270C();
  v30 = sub_10007256C();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;

  sub_100004C84(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v106 = v22 & 1;
  v105 = 0;
  *&v100 = v30;
  *(&v100 + 1) = v32;
  LOBYTE(v101) = v22 & 1;
  *(&v101 + 1) = v35;
  *&v102 = KeyPath;
  *(&v102 + 1) = 1;
  LOBYTE(v103) = 0;
  *(&v103 + 1) = v37;
  v104 = 0x3F847AE147AE147BLL;
  sub_10000388C(&qword_100097088, &qword_100076908);
  sub_100063578();
  sub_1000725FC();
  v107[2] = v102;
  v107[3] = v103;
  v108 = v104;
  v107[0] = v100;
  v107[1] = v101;
  sub_100004890(v107, &qword_100097088, &qword_100076908);
  sub_1000728AC();
  sub_100071F2C();
  v38 = &v11[*(v85 + 36)];
  v39 = v101;
  *v38 = v100;
  *(v38 + 1) = v39;
  *(v38 + 2) = v102;
  v40 = v86;
  sub_10007237C();
  sub_100063630();
  v41 = v84;
  sub_10007267C();
  (*(v87 + 8))(v40, v88);
  sub_100004890(v11, &qword_100097078, &qword_100076898);
  v42 = v90;
  v43 = v89;
  v44 = v91;
  (*(v90 + 104))(v89, enum case for GKFeatureFlags.GameOverlayUI(_:), v91);
  LOBYTE(v40) = sub_100071D9C();
  (*(v42 + 8))(v43, v44);
  if ((v40 & 1) != 0 && (v45 = [objc_opt_self() currentDevice], v46 = objc_msgSend(v45, "userInterfaceIdiom"), v45, !v46))
  {
    v66 = 1;
    v65 = v98;
    v62 = v97;
    v63 = v95;
  }

  else
  {
    v47 = sub_10007276C();
    v48 = sub_10000388C(&qword_1000970A0, &qword_100076928);
    v49 = v80;
    v50 = &v80[*(v48 + 36)];
    v51 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
    v52 = enum case for Image.Scale.small(_:);
    v53 = sub_1000727BC();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    *v49 = v47;
    *(v49 + 8) = 1;
    v54 = sub_10007271C();
    v55 = swift_getKeyPath();
    v56 = (v49 + *(v81 + 36));
    *v56 = v55;
    v56[1] = v54;
    sub_10007248C();
    sub_1000638BC();
    v57 = v82;
    sub_1000725EC();
    sub_100004890(v49, &qword_100097058, &qword_100077080);
    v58 = sub_10007241C();
    v59 = swift_getKeyPath();
    v60 = (v57 + *(v83 + 36));
    *v60 = v59;
    v60[1] = v58;
    sub_100063A84();
    v61 = v79;
    sub_1000725FC();
    sub_100004890(v57, &qword_100097060, &qword_100076880);
    v62 = v97;
    v63 = v95;
    v64 = v61;
    v65 = v98;
    (*(v97 + 32))(v95, v64, v98);
    v66 = 0;
  }

  (*(v62 + 56))(v63, v66, 1, v65);
  v67 = v93;
  v68 = *(v93 + 16);
  v69 = v92;
  v70 = v41;
  v71 = v41;
  v72 = v94;
  v68(v92, v71, v94);
  v73 = v96;
  sub_100004C94(v63, v96, &qword_100097070, &qword_100076890);
  v74 = v99;
  v68(v99, v69, v72);
  v75 = sub_10000388C(&qword_1000970C0, &qword_1000769E0);
  sub_100004C94(v73, &v74[*(v75 + 48)], &qword_100097070, &qword_100076890);
  sub_100004890(v63, &qword_100097070, &qword_100076890);
  v76 = *(v67 + 8);
  v76(v70, v72);
  sub_100004890(v73, &qword_100097070, &qword_100076890);
  return (v76)(v69, v72);
}

uint64_t sub_1000631AC()
{
  v0 = sub_10007236C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_100096FC0, &qword_1000767B8);
  __chkstk_darwin(v4);
  v6 = (&v10 - v5);
  *v6 = sub_1000728AC();
  v6[1] = v7;
  v8 = sub_10000388C(&qword_100096FC8, &qword_1000767C0);
  sub_100061590(v6 + *(v8 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100096FD0, &qword_100096FC0, &qword_1000767B8, &protocol conformance descriptor for ZStack<A>);
  sub_10007265C();
  (*(v1 + 8))(v3, v0);
  return sub_100004890(v6, &qword_100096FC0, &qword_1000767B8);
}

uint64_t sub_1000633B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007206C();
  *a1 = result;
  return result;
}

uint64_t sub_100063408@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007215C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10006343C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007215C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100063578()
{
  result = qword_100097090;
  if (!qword_100097090)
  {
    sub_1000038D4(&qword_100097088, &qword_100076908);
    sub_10004BC0C();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097090);
  }

  return result;
}

unint64_t sub_100063630()
{
  result = qword_100097098;
  if (!qword_100097098)
  {
    sub_1000038D4(&qword_100097078, &qword_100076898);
    sub_1000038D4(&qword_100097088, &qword_100076908);
    sub_100063578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097098);
  }

  return result;
}

uint64_t sub_1000636F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007210C();
  *a1 = result;
  return result;
}

uint64_t sub_100063798(uint64_t a1)
{
  v2 = sub_1000727BC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10007201C();
}

uint64_t sub_100063864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007206C();
  *a1 = result;
  return result;
}

unint64_t sub_1000638BC()
{
  result = qword_1000970A8;
  if (!qword_1000970A8)
  {
    sub_1000038D4(&qword_100097058, &qword_100077080);
    sub_100063974();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970A8);
  }

  return result;
}

unint64_t sub_100063974()
{
  result = qword_1000970B0;
  if (!qword_1000970B0)
  {
    sub_1000038D4(&qword_1000970A0, &qword_100076928);
    sub_10004C650();
    sub_100004C3C(&qword_1000964E0, &qword_100096498, &qword_100076930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B0);
  }

  return result;
}

uint64_t sub_100063A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007210C();
  *a1 = result;
  return result;
}

unint64_t sub_100063A84()
{
  result = qword_1000970B8;
  if (!qword_1000970B8)
  {
    sub_1000038D4(&qword_100097060, &qword_100076880);
    sub_1000038D4(&qword_100097058, &qword_100077080);
    sub_1000638BC();
    swift_getOpaqueTypeConformance2();
    sub_100004C3C(&qword_100095B28, &qword_100095B30, &unk_100074FE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B8);
  }

  return result;
}

uint64_t sub_100063B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100063C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100063C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000970C8, &qword_1000769E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100063D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100063DF0(uint64_t a1)
{
  sub_100063E78(319, &qword_100094858, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100063E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100063ECC()
{
  sub_1000038D4(&qword_100096FC0, &qword_1000767B8);
  sub_100004C3C(&qword_100096FD0, &qword_100096FC0, &qword_1000767B8, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100063F94()
{
  result = qword_1000971C8;
  if (!qword_1000971C8)
  {
    sub_1000038D4(&qword_1000971B0, &qword_100076AE8);
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971C8);
  }

  return result;
}

unint64_t sub_10006404C()
{
  result = qword_1000971D0;
  if (!qword_1000971D0)
  {
    sub_1000038D4(&qword_1000971A8, &qword_100076AE0);
    sub_1000640D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D0);
  }

  return result;
}

unint64_t sub_1000640D0()
{
  result = qword_1000971D8;
  if (!qword_1000971D8)
  {
    sub_1000038D4(&qword_1000971C0, &qword_100076AF8);
    sub_10006418C();
    sub_100055404(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D8);
  }

  return result;
}

unint64_t sub_10006418C()
{
  result = qword_1000971E0;
  if (!qword_1000971E0)
  {
    sub_1000038D4(&qword_1000971B8, &qword_100076AF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971E0);
  }

  return result;
}

uint64_t sub_10006428C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100064330(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100071F5C();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100064508(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_100095260, qword_100074600);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_100071F5C();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for MessageView(uint64_t a1)
{
  result = qword_100097258;
  if (!qword_100097258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064714(uint64_t a1)
{
  sub_100043980(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_100043980(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_100043980(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_100071F5C();
        if (v4 <= 0x3F)
        {
          sub_1000544A8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100064884(uint64_t a1)
{
  v2 = sub_10007222C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10007205C();
}

uint64_t sub_10006494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v29[2] = a1;
  v30 = a3;
  v29[1] = a2;
  v6 = sub_10007277C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000728AC();
  sub_100071F2C();
  v10 = v48;
  v35 = v47;
  v36 = v49;
  v11 = v50;
  v34 = v50;
  v32 = v51;
  v37 = v52;
  KeyPath = swift_getKeyPath();
  LOBYTE(v77) = v10;
  v33 = v10;
  LOBYTE(v61) = v11;

  sub_1000727EC();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v12 = sub_1000727DC();

  (*(v7 + 8))(v9, v6);
  sub_1000728AC();
  sub_100071F2C();
  v13 = v53;
  v14 = v54;
  v15 = v55;
  v16 = v56;
  v17 = v57;
  v18 = v58;
  LOBYTE(v77) = v54;
  *&v61 = v35;
  BYTE8(v61) = v10;
  *(&v61 + 9) = *v60;
  HIDWORD(v61) = *&v60[3];
  *&v62 = v36;
  BYTE8(v62) = v34;
  HIDWORD(v62) = *&v59[3];
  *(&v62 + 9) = *v59;
  v19 = KeyPath;
  v20 = v32;
  *&v63 = v32;
  *(&v63 + 1) = v37;
  v21 = v30;
  *&v64 = KeyPath;
  *(&v64 + 1) = v30;
  v40 = v63;
  v41 = v64;
  v38 = v61;
  v39 = v62;
  *&v65 = v12;
  *(&v65 + 1) = v53;
  LOBYTE(v66) = v54;
  DWORD1(v66) = *&v46[3];
  *(&v66 + 1) = *v46;
  *(&v66 + 1) = v55;
  LOBYTE(v67[0]) = v56;
  DWORD1(v67[0]) = *&v45[3];
  *(v67 + 1) = *v45;
  *(&v67[0] + 1) = v57;
  *&v67[1] = v58;
  WORD4(v67[1]) = 256;
  *(v44 + 10) = *(v67 + 10);
  v43 = v66;
  v44[0] = v67[0];
  v42 = v65;
  v22 = v61;
  v23 = v62;
  v24 = v64;
  a4[2] = v63;
  a4[3] = v24;
  *a4 = v22;
  a4[1] = v23;
  v25 = v42;
  v26 = v43;
  v27 = v44[0];
  *(a4 + 106) = *(v44 + 10);
  a4[5] = v26;
  a4[6] = v27;
  a4[4] = v25;
  v68[0] = v12;
  v68[1] = v13;
  v69 = v14;
  *&v70[3] = *&v46[3];
  *v70 = *v46;
  v71 = v15;
  v72 = v16;
  *&v73[3] = *&v45[3];
  *v73 = *v45;
  v74 = v17;
  v75 = v18;
  v76 = 256;
  sub_100004C94(&v61, &v77, &qword_100097450, &qword_100076F28);
  sub_100004C94(&v65, &v77, &qword_100097458, &qword_100076F30);
  sub_100004890(v68, &qword_100097458, &qword_100076F30);
  v77 = v35;
  v78 = v33;
  *v79 = *v60;
  *&v79[3] = *&v60[3];
  v80 = v36;
  v81 = v34;
  *v82 = *v59;
  *&v82[3] = *&v59[3];
  v83 = v20;
  v84 = v37;
  v85 = v19;
  v86 = v21;
  return sub_100004890(&v77, &qword_100097450, &qword_100076F28);
}

uint64_t sub_100064D34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MessageView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100064F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MessageView(0);
  sub_100004C94(v1 + *(v10 + 24), v9, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100071EAC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_100065144@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = sub_1000728AC();
  v9 = v8;
  sub_10006494C(v4, v5, v6, &v15);
  v26 = v19;
  v27 = v20;
  v28[0] = v21[0];
  *(v28 + 10) = *(v21 + 10);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v29[5] = v20;
  v30[0] = v21[0];
  *(v30 + 10) = *(v21 + 10);
  sub_100004C94(&v22, &v14, &qword_100097448, &qword_100076F20);
  sub_100004890(v29, &qword_100097448, &qword_100076F20);
  *a2 = v7;
  *(a2 + 8) = v9;
  v10 = v27;
  *(a2 + 80) = v26;
  *(a2 + 96) = v10;
  *(a2 + 112) = v28[0];
  *(a2 + 122) = *(v28 + 10);
  v11 = v23;
  *(a2 + 16) = v22;
  *(a2 + 32) = v11;
  result = *&v24;
  v13 = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = v13;
  return result;
}

uint64_t sub_100065260@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v26 = v1;
  sub_1000129F8(&v26 - v14);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = enum case for BlendMode.normal(_:);
    v19 = sub_1000728BC();
    return (*(*(v19 - 8) + 104))(v27, v18, v19);
  }

  else
  {
    v21 = v27;
    sub_100064F3C(v8);
    (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
    v22 = sub_100071E9C();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v23(v8, v2);
    v24 = sub_1000728BC();
    if (v22)
    {
      v25 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v25 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v24 - 8) + 104))(v21, *v25, v24);
  }
}

uint64_t sub_100065574()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  sub_100064D34(v9 - v5);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  if (v9[1] == v9[0])
  {
    return sub_1000724EC();
  }

  else
  {
    return sub_10007252C();
  }
}

uint64_t sub_100065714()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v13 = *(v0 + *(type metadata accessor for MessageView(0) + 36) + 8);
  sub_100064D34(v7);
  v8 = *(v2 + 104);
  v8(v4, enum case for WidgetFamily.systemSmall(_:), v1);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v15 == v14)
  {
    if (v13)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    sub_100064D34(v7);
    v8(v4, enum case for WidgetFamily.systemExtraLarge(_:), v1);
    sub_100072C1C();
    sub_100072C1C();
    v9(v4, v1);
    v9(v7, v1);
    if (v13)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    if (v15 == v14)
    {
      return 3;
    }

    else
    {
      return v11;
    }
  }
}

double sub_100065980()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  sub_100064D34(v11 - v5);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  v9 = v11[0];
  v8 = v11[1];
  sub_100071F3C();
  if (v8 == v9)
  {
    return result * 0.7;
  }

  return result;
}

double sub_100065B38()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageView(0);
  sub_100004C94(v0 + *(v11 + 20), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:) && v13 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  return 6.0;
}

double sub_100065E24()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageView(0);
  sub_100004C94(v0 + *(v11 + 20), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 2.0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    result = 4.0;
    if (v13 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      (*(v8 + 8))(v10, v7, 4.0);
      return 2.0;
    }
  }

  return result;
}

double sub_100066118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1000728AC();
  a3[1] = v6;
  v7 = sub_10000388C(&qword_1000972A8, &qword_100076BB8);
  sub_1000661E0(a2, a1, a3 + *(v7 + 44));
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v8 = (a3 + *(sub_10000388C(&qword_1000972B0, &qword_100076BC0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_1000661E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v109 = a3;
  v4 = sub_10000388C(&qword_1000972B8, &qword_100076BC8);
  __chkstk_darwin(v4 - 8);
  v94 = (&v91 - v5);
  v93 = sub_10000388C(&qword_1000972C0, &qword_100076BD0);
  __chkstk_darwin(v93);
  v96 = &v91 - v6;
  v95 = sub_10000388C(&qword_1000972C8, &qword_100076BD8);
  __chkstk_darwin(v95);
  v98 = &v91 - v7;
  v108 = sub_10000388C(&qword_1000972D0, &qword_100076BE0);
  __chkstk_darwin(v108);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v91 - v10;
  v106 = sub_10000388C(&qword_1000972D8, &qword_100076BE8);
  __chkstk_darwin(v106);
  v107 = &v91 - v11;
  v101 = sub_10000388C(&qword_1000972E0, &qword_100076BF0);
  __chkstk_darwin(v101);
  v13 = &v91 - v12;
  v102 = sub_10000388C(&qword_1000972E8, &qword_100076BF8);
  __chkstk_darwin(v102);
  v103 = &v91 - v14;
  v105 = sub_10000388C(&qword_1000972F0, &qword_100076C00);
  __chkstk_darwin(v105);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v104 = &v91 - v18;
  v19 = sub_1000729DC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v91 - v24;
  v92 = type metadata accessor for MessageView(0);
  if (*(a1 + *(v92 + 40)) != 1 || (v110 = a1, sub_100064D34(v25), v91 = *(v20 + 104), v91(v22, enum case for WidgetFamily.systemSmall(_:), v19), sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily), sub_100072C1C(), sub_100072C1C(), a1 = v110, v26 = *(v20 + 8), v26(v22, v19), v26(v25, v19), v112 == v111) || (sub_100064D34(v25), v91(v22, enum case for WidgetFamily.systemMedium(_:), v19), sub_100072C1C(), sub_100072C1C(), a1 = v110, v26(v22, v19), v26(v25, v19), v112 == v111))
  {
    v27 = sub_10007224C();
    sub_100065B38();
    *v13 = v27;
    *(v13 + 1) = 0x4018000000000000;
    v13[16] = 0;
    v28 = sub_10000388C(&qword_1000972F8, &unk_100076C08);
    sub_100067040(a1, &v13[*(v28 + 44)]);
    sub_10007288C();
    sub_100071FFC();
    v29 = &v13[*(v101 + 36)];
    v30 = v115;
    v31 = v117;
    v32 = v118;
    *(v29 + 4) = v116;
    *(v29 + 5) = v31;
    *(v29 + 6) = v32;
    v33 = v113;
    *v29 = v112;
    *(v29 + 1) = v33;
    *(v29 + 2) = v114;
    *(v29 + 3) = v30;
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100074030;
    v35 = sub_1000723DC();
    *(inited + 32) = v35;
    v36 = sub_1000723BC();
    *(inited + 33) = v36;
    v37 = sub_1000723FC();
    *(inited + 34) = v37;
    v38 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v35)
    {
      v38 = sub_1000723EC();
    }

    sub_1000723EC();
    if (sub_1000723EC() != v36)
    {
      v38 = sub_1000723EC();
    }

    v39 = v109;

    sub_1000723EC();
    if (sub_1000723EC() != v37)
    {
      v38 = sub_1000723EC();
    }

    v40 = v103;
    sub_100014DEC(v13, v103, &qword_1000972E0, &qword_100076BF0);
    v41 = v40 + *(v102 + 36);
    *v41 = v38;
    *(v41 + 8) = 0u;
    *(v41 + 24) = 0u;
    *(v41 + 40) = 1;
    v42 = sub_1000723CC();
    v43 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v42)
    {
      v43 = sub_1000723EC();
    }

    sub_100071E8C();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_100014DEC(v40, v16, &qword_1000972E8, &qword_100076BF8);
    v52 = &v16[*(v105 + 36)];
    *v52 = v43;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    v53 = &qword_1000972F0;
    v54 = &qword_100076C00;
    v55 = v104;
    sub_100014DEC(v16, v104, &qword_1000972F0, &qword_100076C00);
    sub_100004C94(v55, v107, &qword_1000972F0, &qword_100076C00);
    swift_storeEnumTagMultiPayload();
    sub_100069264();
    sub_100069434();
  }

  else
  {
    sub_100064D34(v25);
    v91(v22, enum case for WidgetFamily.systemLarge(_:), v19);
    sub_100072C1C();
    sub_100072C1C();
    v26(v22, v19);
    v26(v25, v19);
    if (v112 != v111)
    {
      sub_100064D34(v25);
      v91(v22, enum case for WidgetFamily.systemExtraLarge(_:), v19);
      sub_100072C1C();
      sub_100072C1C();
      v26(v22, v19);
      v26(v25, v19);
      if (v112 != v111)
      {
        v56 = 1;
        v39 = v109;
        goto LABEL_14;
      }
    }

    v59 = sub_10007223C();
    sub_100065B38();
    v60 = v94;
    *v94 = v59;
    *(v60 + 8) = 0x4018000000000000;
    *(v60 + 16) = 0;
    v61 = sub_10000388C(&qword_100097350, &qword_100076C28);
    sub_1000677B0(a1, v60 + *(v61 + 44));
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100074030;
    v63 = sub_1000723DC();
    *(v62 + 32) = v63;
    v64 = sub_1000723FC();
    *(v62 + 33) = v64;
    v65 = sub_1000723CC();
    *(v62 + 34) = v65;
    v66 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v63)
    {
      v66 = sub_1000723EC();
    }

    sub_1000723EC();
    v67 = sub_1000723EC();
    v68 = v98;
    if (v67 != v64)
    {
      v66 = sub_1000723EC();
    }

    v39 = v109;
    v69 = v96;

    sub_1000723EC();
    if (sub_1000723EC() != v65)
    {
      v66 = sub_1000723EC();
    }

    sub_100014DEC(v60, v69, &qword_1000972B8, &qword_100076BC8);
    v70 = v69 + *(v93 + 36);
    *v70 = v66;
    *(v70 + 8) = 0u;
    *(v70 + 24) = 0u;
    *(v70 + 40) = 1;
    v71 = sub_1000723BC();
    v72 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v71)
    {
      v72 = sub_1000723EC();
    }

    sub_100071F3C();
    sub_100071E8C();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_100014DEC(v69, v68, &qword_1000972C0, &qword_100076BD0);
    v81 = v68 + *(v95 + 36);
    *v81 = v72;
    *(v81 + 8) = v74;
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    *(v81 + 32) = v80;
    *(v81 + 40) = 0;
    v82 = sub_100065980();
    v83 = sub_100065980();
    sub_1000728AC();
    if (v82 > v83)
    {
      sub_100072CEC();
      v84 = sub_10007239C();
      sub_100071E4C();
    }

    sub_100071FFC();
    v85 = v99;
    sub_100014DEC(v68, v99, &qword_1000972C8, &qword_100076BD8);
    v86 = (v85 + *(v108 + 36));
    v87 = v115;
    v88 = v117;
    v89 = v118;
    v86[4] = v116;
    v86[5] = v88;
    v86[6] = v89;
    v90 = v113;
    *v86 = v112;
    v86[1] = v90;
    v86[2] = v114;
    v86[3] = v87;
    v53 = &qword_1000972D0;
    v54 = &qword_100076BE0;
    v55 = v100;
    sub_100014DEC(v85, v100, &qword_1000972D0, &qword_100076BE0);
    sub_100004C94(v55, v107, &qword_1000972D0, &qword_100076BE0);
    swift_storeEnumTagMultiPayload();
    sub_100069264();
    sub_100069434();
  }

  sub_10007230C();
  sub_100004890(v55, v53, v54);
  v56 = 0;
LABEL_14:
  v57 = sub_10000388C(&qword_100097348, &qword_100076C20);
  return (*(*(v57 - 8) + 56))(v39, v56, 1, v57);
}

uint64_t sub_100067040@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = sub_10000388C(&qword_100097358, &qword_100076C30);
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v58 = (&v57 - v4);
  v5 = sub_10000388C(&qword_100097360, &qword_100076C38);
  __chkstk_darwin(v5 - 8);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v57 - v8;
  v64 = sub_10000388C(&qword_100096400, &qword_100076E60);
  __chkstk_darwin(v64);
  v10 = &v57 - v9;
  v65 = sub_10000388C(&qword_100097420, &qword_100076E68) - 8;
  __chkstk_darwin(v65);
  v71 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  sub_1000728AC();
  sub_100071F2C();
  v68 = v78;
  v69 = v76;
  v67 = v80;
  v66 = v81;
  v84 = 1;
  v83 = v77;
  v82 = v79;
  v63 = type metadata accessor for MessageView(0);

  sub_1000721EC();
  v61 = sub_10007258C();
  v60 = v15;
  v59 = v16;
  v62 = v17;
  v18 = sub_100065574();
  v19 = &v10[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v20 = type metadata accessor for DynamicTypeFont(0);
  v21 = v20[6];
  v22 = enum case for ContentSizeCategory.extraLarge(_:);
  v23 = sub_10007222C();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v19 + v21, v22, v23);
  (*(v24 + 56))(v19 + v21, 0, 1, v23);
  sub_10007248C();
  v26 = v25;
  *v19 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[5]) = v18;
  *(v19 + v20[7]) = v26;
  v27 = v60;
  *v10 = v61;
  *(v10 + 1) = v27;
  v10[16] = v59 & 1;
  *(v10 + 3) = v62;
  sub_10007270C();
  v28 = sub_1000726FC();

  KeyPath = swift_getKeyPath();
  v30 = &v10[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_100065260(&v10[*(v31 + 36)]);
  v32 = sub_100065714();
  v33 = swift_getKeyPath();
  v34 = &v10[*(sub_10000388C(&qword_1000963F8, &qword_100075A90) + 36)];
  *v34 = v33;
  *(v34 + 1) = v32;
  v34[16] = 0;
  *&v10[*(v64 + 36)] = 256;
  sub_10004C024();
  sub_1000725FC();
  sub_100004890(v10, &qword_100096400, &qword_100076E60);
  v35 = swift_getKeyPath();
  v36 = &v14[*(sub_10000388C(&qword_100097428, &qword_100076E70) + 36)];
  *v36 = v35;
  v37 = 1;
  v36[8] = 1;
  v38 = swift_getKeyPath();
  v39 = &v14[*(v65 + 44)];
  *v39 = v38;
  v39[1] = 0x3FE3333333333333;
  if (*(a1 + *(v63 + 36) + 8))
  {
    v40 = sub_100065E24();
    v41 = sub_1000721CC();
    v42 = v58;
    *v58 = v41;
    *(v42 + 8) = v40;
    *(v42 + 16) = 0;
    v43 = sub_10000388C(&qword_1000973E8, &unk_100076DD0);
    sub_100068614(v42 + *(v43 + 44));
    v44 = v70;
    sub_100014DEC(v42, v70, &qword_100097358, &qword_100076C30);
    v37 = 0;
  }

  else
  {
    v44 = v70;
  }

  (*(v73 + 56))(v44, v37, 1, v74);
  v45 = v84;
  v46 = v83;
  v47 = v82;
  v48 = v14;
  v49 = v71;
  sub_100004C94(v14, v71, &qword_100097420, &qword_100076E68);
  v50 = v75;
  sub_100004C94(v44, v75, &qword_100097360, &qword_100076C38);
  v51 = v72;
  *v72 = 0;
  *(v51 + 8) = v45;
  v52 = v68;
  v51[2] = v69;
  *(v51 + 24) = v46;
  v51[4] = v52;
  *(v51 + 40) = v47;
  v53 = v66;
  v51[6] = v67;
  v51[7] = v53;
  v54 = sub_10000388C(&qword_100097430, &qword_100076E78);
  sub_100004C94(v49, v51 + v54[12], &qword_100097420, &qword_100076E68);
  sub_100004C94(v50, v51 + v54[16], &qword_100097360, &qword_100076C38);
  v55 = v51 + v54[20];
  *v55 = 0;
  v55[8] = 0;
  sub_100004890(v44, &qword_100097360, &qword_100076C38);
  sub_100004890(v48, &qword_100097420, &qword_100076E68);
  sub_100004890(v50, &qword_100097360, &qword_100076C38);
  return sub_100004890(v49, &qword_100097420, &qword_100076E68);
}

uint64_t sub_1000677B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_10000388C(&qword_100097358, &qword_100076C30);
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v80 = (&v80 - v4);
  v5 = sub_10000388C(&qword_100097360, &qword_100076C38);
  __chkstk_darwin(v5 - 8);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = &v80 - v8;
  v85 = sub_10000388C(&qword_100097368, &qword_100076C40);
  __chkstk_darwin(v85);
  v10 = &v80 - v9;
  v86 = sub_10000388C(&qword_100097370, &qword_100076C48);
  __chkstk_darwin(v86);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v80 - v13;
  v14 = sub_10000388C(&qword_100097378, &qword_100076C50);
  __chkstk_darwin(v14 - 8);
  v16 = &v80 - v15;
  v17 = sub_10000388C(&qword_100097380, &qword_100076C58);
  __chkstk_darwin(v17);
  v88 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  __chkstk_darwin(v22);
  v24 = &v80 - v23;
  *v16 = sub_1000721CC();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v25 = sub_10000388C(&qword_100097388, &unk_100076C60);
  sub_1000680BC(&v16[*(v25 + 44)]);
  v26 = sub_1000723CC();
  v27 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v26)
  {
    v27 = sub_1000723EC();
  }

  sub_100071E8C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100014DEC(v16, v21, &qword_100097378, &qword_100076C50);
  v36 = &v21[*(v17 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v87 = v24;
  sub_100014DEC(v21, v24, &qword_100097380, &qword_100076C58);
  v84 = type metadata accessor for MessageView(0);

  sub_1000721EC();
  v82 = sub_10007258C();
  v83 = v37;
  v39 = v38;
  v81 = v40;
  v41 = sub_100065574();
  v42 = &v10[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v43 = type metadata accessor for DynamicTypeFont(0);
  v44 = v43[6];
  v45 = enum case for ContentSizeCategory.extraLarge(_:);
  v46 = a1;
  v47 = sub_10007222C();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v42 + v44, v45, v47);
  v49 = 1;
  (*(v48 + 56))(v42 + v44, 0, 1, v47);
  sub_10007248C();
  v51 = v50;
  *v42 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v42 + v43[5]) = v41;
  *(v42 + v43[7]) = v51;
  *v10 = v82;
  *(v10 + 1) = v39;
  v10[16] = v81 & 1;
  *(v10 + 3) = v83;
  KeyPath = swift_getKeyPath();
  v53 = &v10[*(sub_10000388C(&qword_100097390, &qword_100076CD8) + 36)];
  *v53 = KeyPath;
  v53[8] = 1;
  sub_10007270C();
  v54 = sub_1000726FC();

  v55 = swift_getKeyPath();
  v56 = &v10[*(sub_10000388C(&qword_100097398, &qword_100076D10) + 36)];
  *v56 = v55;
  v56[1] = v54;
  v57 = sub_10000388C(&qword_1000973A0, &qword_100076D18);
  sub_100065260(&v10[*(v57 + 36)]);
  v58 = sub_100065714();
  v59 = swift_getKeyPath();
  v60 = &v10[*(sub_10000388C(&qword_1000973A8, &unk_100076D50) + 36)];
  *v60 = v59;
  *(v60 + 1) = v58;
  v60[16] = 0;
  *&v10[*(v85 + 36)] = 256;
  sub_10006973C();
  v61 = v95;
  sub_1000725FC();
  sub_100004890(v10, &qword_100097368, &qword_100076C40);
  v62 = swift_getKeyPath();
  v63 = v61 + *(sub_10000388C(&qword_1000973D8, &qword_100076D90) + 36);
  *v63 = v62;
  *(v63 + 8) = 1;
  v64 = swift_getKeyPath();
  v65 = (v61 + *(v86 + 36));
  *v65 = v64;
  v65[1] = 0x3FE3333333333333;
  if (*(v46 + *(v84 + 36) + 8))
  {
    v66 = sub_100065E24();
    v67 = sub_1000721CC();
    v68 = v80;
    *v80 = v67;
    *(v68 + 8) = v66;
    *(v68 + 16) = 0;
    v69 = sub_10000388C(&qword_1000973E8, &unk_100076DD0);
    sub_100068614(v68 + *(v69 + 44));
    v70 = v92;
    sub_100014DEC(v68, v92, &qword_100097358, &qword_100076C30);
    v49 = 0;
  }

  else
  {
    v70 = v92;
  }

  (*(v89 + 56))(v70, v49, 1, v90);
  v72 = v87;
  v71 = v88;
  sub_100004C94(v87, v88, &qword_100097380, &qword_100076C58);
  v73 = v95;
  v74 = v91;
  sub_100004C94(v95, v91, &qword_100097370, &qword_100076C48);
  v75 = v93;
  sub_100004C94(v70, v93, &qword_100097360, &qword_100076C38);
  v76 = v94;
  sub_100004C94(v71, v94, &qword_100097380, &qword_100076C58);
  v77 = sub_10000388C(&qword_1000973E0, &qword_100076DC8);
  sub_100004C94(v74, v76 + v77[12], &qword_100097370, &qword_100076C48);
  sub_100004C94(v75, v76 + v77[16], &qword_100097360, &qword_100076C38);
  v78 = v76 + v77[20];
  *v78 = 0;
  *(v78 + 8) = 0;
  sub_100004890(v70, &qword_100097360, &qword_100076C38);
  sub_100004890(v73, &qword_100097370, &qword_100076C48);
  sub_100004890(v72, &qword_100097380, &qword_100076C58);
  sub_100004890(v75, &qword_100097360, &qword_100076C38);
  sub_100004890(v74, &qword_100097370, &qword_100076C48);
  return sub_100004890(v71, &qword_100097380, &qword_100076C58);
}

uint64_t sub_1000680BC@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = sub_1000726BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100097408, &qword_100076E50);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v39 - v8;
  __chkstk_darwin(v9);
  v41 = &v39 - v10;
  __chkstk_darwin(v11);
  v40 = &v39 - v12;
  __chkstk_darwin(v13);
  v46 = &v39 - v14;
  __chkstk_darwin(v15);
  v39 = &v39 - v16;
  type metadata accessor for MessageView(0);
  sub_100071F3C();
  v18 = v17 * 0.291746641;
  sub_100071F3C();
  v20 = v19 * 0.199616123;
  v21 = enum case for Color.RGBColorSpace.sRGB(_:);
  v22 = *(v2 + 104);
  v22(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  v23 = sub_10007272C();
  v47 = v20;
  strcpy(v48, "Memoji-Left");
  v48[3] = -352321536;
  v49 = v23;
  sub_100069AE4();
  sub_1000725FC();

  v22(v4, v21, v1);
  v24 = sub_10007272C();
  v47 = v18;
  strcpy(v48, "Memoji-Center");
  HIWORD(v48[3]) = -4864;
  v49 = v24;
  v25 = v46;
  sub_1000725FC();

  v22(v4, v21, v1);
  v26 = sub_10007272C();
  v47 = v20;
  strcpy(v48, "Memoji-Right");
  BYTE1(v48[3]) = 0;
  HIWORD(v48[3]) = -5120;
  v49 = v26;
  v27 = v40;
  sub_1000725FC();

  v28 = *(v45 + 16);
  v29 = v41;
  v30 = v39;
  v28(v41, v39, v5);
  v31 = v42;
  v28(v42, v25, v5);
  v32 = v43;
  v33 = v27;
  v28(v43, v27, v5);
  v34 = v44;
  v35 = v29;
  v28(v44, v29, v5);
  v36 = sub_10000388C(&qword_100097418, &qword_100076E58);
  v28(&v34[*(v36 + 48)], v31, v5);
  v28(&v34[*(v36 + 64)], v32, v5);
  v37 = *(v45 + 8);
  v37(v33, v5);
  v37(v46, v5);
  v37(v30, v5);
  v37(v32, v5);
  v37(v31, v5);
  return (v37)(v35, v5);
}

uint64_t sub_100068614@<X0>(uint64_t a3@<X8>)
{
  v84 = a3;
  v81 = sub_10000388C(&qword_100096460, &qword_100075AC0);
  __chkstk_darwin(v81);
  v76 = &v67[-v3];
  v4 = sub_10000388C(&qword_100096468, &unk_100076DE0);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v80 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v86 = &v67[-v7];
  v78 = sub_10000388C(&qword_1000963F8, &qword_100075A90);
  __chkstk_darwin(v78);
  v9 = &v67[-v8];
  v77 = sub_10000388C(&qword_1000973F0, &qword_100076DF0) - 8;
  __chkstk_darwin(v77);
  v79 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v85 = &v67[-v12];

  sub_1000721EC();
  v13 = sub_10007258C();
  v69 = v14;
  v70 = v13;
  v68 = v15;
  v71 = v16;
  v17 = sub_100065574();
  v18 = &v9[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v19 = type metadata accessor for DynamicTypeFont(0);
  v20 = v19[6];
  v21 = enum case for ContentSizeCategory.extraLarge(_:);
  v75 = enum case for ContentSizeCategory.extraLarge(_:);
  v22 = sub_10007222C();
  v23 = *(v22 - 8);
  v74 = *(v23 + 104);
  v74(v18 + v20, v21, v22);
  v73 = *(v23 + 56);
  v73(v18 + v20, 0, 1, v22);
  sub_10007247C();
  v25 = v24;
  *v18 = swift_getKeyPath();
  v72 = sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v18 + v19[5]) = v17;
  *(v18 + v19[7]) = v25;
  v26 = v69;
  *v9 = v70;
  *(v9 + 1) = v26;
  v9[16] = v68 & 1;
  *(v9 + 3) = v71;
  v27 = sub_10007271C();
  KeyPath = swift_getKeyPath();
  v29 = &v9[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_100065260(&v9[*(v30 + 36)]);
  v31 = swift_getKeyPath();
  v32 = &v9[*(v78 + 36)];
  *v32 = v31;
  *(v32 + 1) = 1;
  v32[16] = 0;
  sub_10004C0B0();
  v33 = v85;
  sub_1000725FC();
  sub_100004890(v9, &qword_1000963F8, &qword_100075A90);
  v34 = swift_getKeyPath();
  v35 = &v33[*(sub_10000388C(&qword_1000973F8, &qword_100076DF8) + 36)];
  *v35 = v34;
  v35[8] = 1;
  v36 = swift_getKeyPath();
  v37 = &v33[*(v77 + 44)];
  *v37 = v36;
  v37[1] = 0x3FE8000000000000;
  v38 = sub_10007276C();
  v39 = sub_100065574();
  v40 = sub_10000388C(&qword_100096440, &unk_100076E00);
  v41 = v76;
  v42 = &v76[*(v40 + 36)];
  v43 = v19[6];
  v74(v42 + v43, v75, v22);
  v73(v42 + v43, 0, 1, v22);
  sub_10007248C();
  v45 = v44;
  *v42 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v42 + v19[5]) = v39;
  *(v42 + v19[7]) = v45;
  *v41 = v38;
  *(v41 + 8) = 1;
  v46 = sub_10007271C();
  v47 = swift_getKeyPath();
  v48 = (v41 + *(sub_10000388C(&qword_100096448, &qword_100075AB0) + 36));
  *v48 = v47;
  v48[1] = v46;
  v49 = sub_10000388C(&qword_100096450, &qword_100076E10);
  sub_100065260(v41 + *(v49 + 36));
  v50 = (v41 + *(sub_10000388C(&qword_100096458, &qword_100075AB8) + 36));
  v51 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v52 = enum case for Image.Scale.small(_:);
  v53 = sub_1000727BC();
  (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
  *v50 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = (v41 + *(v81 + 36));
  *v55 = v54;
  v55[1] = 0x3FE8000000000000;
  sub_10004C2E0();
  v56 = v86;
  sub_1000725FC();
  sub_100004890(v41, &qword_100096460, &qword_100075AC0);
  v57 = v85;
  v58 = v79;
  sub_100004C94(v85, v79, &qword_1000973F0, &qword_100076DF0);
  v60 = v82;
  v59 = v83;
  v61 = *(v82 + 16);
  v62 = v80;
  v61(v80, v56, v83);
  v63 = v84;
  sub_100004C94(v58, v84, &qword_1000973F0, &qword_100076DF0);
  v64 = sub_10000388C(&qword_100097400, &qword_100076E48);
  v61((v63 + *(v64 + 48)), v62, v59);
  v65 = *(v60 + 8);
  v65(v86, v59);
  sub_100004890(v57, &qword_1000973F0, &qword_100076DF0);
  v65(v62, v59);
  return sub_100004890(v58, &qword_1000973F0, &qword_100076DF0);
}

uint64_t sub_100068DD8@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100068EC4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100069180(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000691E4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100068EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F28()
{
  v1 = type metadata accessor for MessageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007297C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000729DC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100071EAC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  v12 = sub_100071F5C();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100069180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000691E4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MessageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100066118(a1, v6, a2);
}

unint64_t sub_100069264()
{
  result = qword_100097300;
  if (!qword_100097300)
  {
    sub_1000038D4(&qword_1000972F0, &qword_100076C00);
    sub_1000692F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097300);
  }

  return result;
}

unint64_t sub_1000692F0()
{
  result = qword_100097308;
  if (!qword_100097308)
  {
    sub_1000038D4(&qword_1000972E8, &qword_100076BF8);
    sub_10006937C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097308);
  }

  return result;
}

unint64_t sub_10006937C()
{
  result = qword_100097310;
  if (!qword_100097310)
  {
    sub_1000038D4(&qword_1000972E0, &qword_100076BF0);
    sub_100004C3C(&qword_100097318, &qword_100097320, &qword_100076C18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097310);
  }

  return result;
}

unint64_t sub_100069434()
{
  result = qword_100097328;
  if (!qword_100097328)
  {
    sub_1000038D4(&qword_1000972D0, &qword_100076BE0);
    sub_1000694C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097328);
  }

  return result;
}

unint64_t sub_1000694C0()
{
  result = qword_100097330;
  if (!qword_100097330)
  {
    sub_1000038D4(&qword_1000972C8, &qword_100076BD8);
    sub_10006954C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097330);
  }

  return result;
}

unint64_t sub_10006954C()
{
  result = qword_100097338;
  if (!qword_100097338)
  {
    sub_1000038D4(&qword_1000972C0, &qword_100076BD0);
    sub_100004C3C(&qword_100097340, &qword_1000972B8, &qword_100076BC8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097338);
  }

  return result;
}

uint64_t sub_10006962C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007208C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000720EC();
  *a1 = result;
  return result;
}

uint64_t sub_1000696B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000720EC();
  *a1 = result;
  return result;
}

unint64_t sub_10006973C()
{
  result = qword_1000973B0;
  if (!qword_1000973B0)
  {
    sub_1000038D4(&qword_100097368, &qword_100076C40);
    sub_1000697C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973B0);
  }

  return result;
}

unint64_t sub_1000697C8()
{
  result = qword_1000973B8;
  if (!qword_1000973B8)
  {
    sub_1000038D4(&qword_1000973A8, &unk_100076D50);
    sub_100069880();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973B8);
  }

  return result;
}

unint64_t sub_100069880()
{
  result = qword_1000973C0;
  if (!qword_1000973C0)
  {
    sub_1000038D4(&qword_1000973A0, &qword_100076D18);
    sub_10006990C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C0);
  }

  return result;
}

unint64_t sub_10006990C()
{
  result = qword_1000973C8;
  if (!qword_1000973C8)
  {
    sub_1000038D4(&qword_100097398, &qword_100076D10);
    sub_1000699C4();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C8);
  }

  return result;
}

unint64_t sub_1000699C4()
{
  result = qword_1000973D0;
  if (!qword_1000973D0)
  {
    sub_1000038D4(&qword_100097390, &qword_100076CD8);
    sub_10001D318();
    sub_100004C3C(&qword_100095400, &qword_100095408, &qword_1000747C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973D0);
  }

  return result;
}

uint64_t sub_100069A7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007208C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100069AE4()
{
  result = qword_100097410;
  if (!qword_100097410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097410);
  }

  return result;
}

uint64_t sub_100069B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100069B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100069C90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100069E10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100071F5C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for CPTimelineEntry(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPBackgroundView(uint64_t a1)
{
  result = qword_1000974C8;
  if (!qword_1000974C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069FB8(uint64_t a1)
{
  sub_10006A0CC(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100071F5C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CPTimelineEntry(319);
      if (v3 <= 0x3F)
      {
        sub_10006A0CC(319, &unk_1000974D8, type metadata accessor for AppDisplayData, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006A0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006A14C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004C94(v2, &v14 - v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10006A34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000388C(&qword_100097528, &qword_100076FD8);
  __chkstk_darwin(v3 - 8);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_10000388C(&qword_100097530, &qword_100076FE0);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v49 = (&v49 - v9);
  v10 = sub_10000388C(&qword_100097538, &qword_100076FE8);
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v50 = &v49 - v11;
  v12 = sub_1000729DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = sub_10000388C(&qword_100097540, &qword_100076FF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  sub_10006A14C(v18);
  (*(v13 + 104))(v15, enum case for WidgetFamily.systemSmall(_:), v12);
  sub_10006CA2C(&qword_100095380, &protocol conformance descriptor for WidgetFamily);
  v25 = sub_100072B1C();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v26(v18, v12);
  if ((v25 & 1) == 0)
  {
    v28 = type metadata accessor for CPBackgroundView(0);
    v29 = a1;
    v30 = *(v28 + 20);
    sub_10006A14C(v18);
    v31 = v29 + v30;
    v32 = v29;
    sub_100022F7C(v31, v18);
    v26(v18, v12);
    v33 = v29 + *(v28 + 24);
    v34 = type metadata accessor for CPTimelineEntry(0);
    if (*(v33 + v34[6]) == 1 && *(v33 + v34[9]) == 1)
    {
      v35 = *(v33 + v34[5]);
      if (v35 >> 62)
      {
        v47 = v34;
        v48 = sub_100072EDC();
        v34 = v47;
        if (v48)
        {
          goto LABEL_8;
        }
      }

      else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

    if (*(v33 + v34[8]) != 1)
    {
      v41 = 1;
      v40 = v50;
      goto LABEL_10;
    }

LABEL_8:
    v36 = sub_1000721AC();
    v37 = v49;
    *v49 = v36;
    v37[1] = 0;
    *(v37 + 16) = 0;
    v38 = sub_10000388C(&qword_100097558, &qword_100077008);
    sub_10006A94C(v32, v37 + *(v38 + 44));
    v39 = v37;
    v40 = v50;
    sub_100014DEC(v39, v50, &qword_100097530, &qword_100076FE0);
    v41 = 0;
LABEL_10:
    (*(v51 + 56))(v40, v41, 1, v52);
    sub_100014DEC(v40, v24, &qword_100097538, &qword_100076FE8);
    v27 = 0;
    goto LABEL_11;
  }

  v27 = 1;
LABEL_11:
  (*(v53 + 56))(v24, v27, 1, v54);
  *v7 = sub_10007223C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v42 = sub_10000388C(&qword_100097548, &qword_100076FF8);
  sub_10006C314(&v7[*(v42 + 44)]);
  sub_100004C94(v24, v21, &qword_100097540, &qword_100076FF0);
  v43 = v56;
  sub_100004C94(v7, v56, &qword_100097528, &qword_100076FD8);
  v44 = v55;
  sub_100004C94(v21, v55, &qword_100097540, &qword_100076FF0);
  v45 = sub_10000388C(&qword_100097550, &qword_100077000);
  sub_100004C94(v43, v44 + *(v45 + 48), &qword_100097528, &qword_100076FD8);
  sub_100004890(v7, &qword_100097528, &qword_100076FD8);
  sub_100004890(v24, &qword_100097540, &qword_100076FF0);
  sub_100004890(v43, &qword_100097528, &qword_100076FD8);
  return sub_100004890(v21, &qword_100097540, &qword_100076FF0);
}

uint64_t sub_10006A94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v3 = sub_10000388C(&qword_100097560, &qword_100077010);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_10000388C(&qword_100097568, &qword_100077018);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v39 = sub_10000388C(&qword_100097570, &qword_100077020);
  __chkstk_darwin(v39);
  v13 = &v38 - v12;
  v40 = sub_10000388C(&qword_100097578, &qword_100077028);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  *v11 = sub_1000721AC();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v22 = &v11[*(sub_10000388C(&qword_100097580, &qword_100077030) + 44)];
  *v8 = sub_10007224C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v23 = sub_10000388C(&qword_100097588, &qword_100077038);
  sub_10006AEDC(v38, &v8[*(v23 + 44)]);
  sub_100004C94(v8, v5, &qword_100097560, &qword_100077010);
  sub_100004C94(v5, v22, &qword_100097560, &qword_100077010);
  v24 = v22 + *(sub_10000388C(&qword_100097590, &unk_100077040) + 48);
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_100004890(v8, &qword_100097560, &qword_100077010);
  sub_100004890(v5, &qword_100097560, &qword_100077010);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v26 = sub_1000723DC();
  *(inited + 32) = v26;
  v27 = sub_1000723BC();
  *(inited + 33) = v27;
  v28 = sub_1000723FC();
  *(inited + 34) = v28;
  v29 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v26)
  {
    v29 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v27)
  {
    v29 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v28)
  {
    v29 = sub_1000723EC();
  }

  sub_100014DEC(v11, v13, &qword_100097568, &qword_100077018);
  v30 = &v13[*(v39 + 36)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  sub_1000728AC();
  sub_100071FFC();
  sub_100014DEC(v13, v18, &qword_100097570, &qword_100077020);
  v31 = &v18[*(v40 + 36)];
  v32 = v47;
  *(v31 + 4) = v46;
  *(v31 + 5) = v32;
  *(v31 + 6) = v48;
  v33 = v43;
  *v31 = v42;
  *(v31 + 1) = v33;
  v34 = v45;
  *(v31 + 2) = v44;
  *(v31 + 3) = v34;
  sub_100014DEC(v18, v21, &qword_100097578, &qword_100077028);
  sub_100004C94(v21, v15, &qword_100097578, &qword_100077028);
  v35 = v41;
  sub_100004C94(v15, v41, &qword_100097578, &qword_100077028);
  v36 = v35 + *(sub_10000388C(&qword_100097598, &unk_100077050) + 48);
  *v36 = 0;
  *(v36 + 8) = 0;
  sub_100004890(v21, &qword_100097578, &qword_100077028);
  return sub_100004890(v15, &qword_100097578, &qword_100077028);
}

uint64_t sub_10006AEDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000729DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000388C(&qword_1000975A0, &qword_100077060);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  sub_10006A14C(v6);
  sub_10006CA2C(&qword_100094E70, &protocol conformance descriptor for WidgetFamily);
  sub_100072FEC();
  (*(v4 + 8))(v6, v3);
  sub_100071DFC();

  v16 = sub_100071C9C();
  result = (*(*(v16 - 8) + 48))(v9, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v23 - 2) = v25;
    sub_10000388C(&qword_1000975A8, &qword_100077068);
    sub_100004C3C(&qword_1000975B0, &qword_1000975A8, &qword_100077068, &protocol conformance descriptor for HStack<A>);
    sub_10007254C();
    v18 = *(v11 + 16);
    v19 = v24;
    v18(v24, v15, v10);
    v20 = v26;
    v18(v26, v19, v10);
    v21 = &v20[*(sub_10000388C(&qword_1000975B8, &qword_100077070) + 48)];
    *v21 = 0;
    v21[8] = 0;
    v22 = *(v11 + 8);
    v22(v15, v10);
    return (v22)(v19, v10);
  }

  return result;
}

uint64_t sub_10006B29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000721CC();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10000388C(&qword_1000975C0, &qword_100077078);
  return sub_10006B2F4(a1, a2 + *(v4 + 44));
}

uint64_t sub_10006B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v138 = a2;
  v112 = sub_10000388C(&qword_100097058, &qword_100077080);
  __chkstk_darwin(v112);
  v111 = &v106 - v2;
  v118 = sub_10000388C(&qword_1000975C8, &unk_100077088);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v106 - v3;
  v116 = sub_10000388C(&qword_100097060, &qword_100076880);
  __chkstk_darwin(v116);
  v115 = &v106 - v4;
  v137 = sub_10000388C(&qword_100097068, &qword_100076888);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v113 = &v106 - v5;
  v131 = sub_100071DAC();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100097070, &qword_100076890);
  __chkstk_darwin(v7 - 8);
  v136 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = &v106 - v10;
  v121 = sub_1000724DC();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000729DC();
  v140 = *(v12 - 8);
  __chkstk_darwin(v12);
  v110 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v106 - v15;
  v127 = sub_10000388C(&qword_1000975D0, &qword_100077098);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v106 - v17;
  v123 = sub_10000388C(&qword_1000975D8, &qword_1000770A0);
  __chkstk_darwin(v123);
  v128 = &v106 - v18;
  v122 = sub_10000388C(&qword_1000975E0, &qword_1000770A8);
  __chkstk_darwin(v122);
  v133 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v106 - v21;
  __chkstk_darwin(v22);
  v132 = &v106 - v23;
  sub_1000721DC();
  v24 = sub_10007258C();
  v26 = v25;
  v28 = v27;
  sub_10007248C();
  v29 = sub_10007255C();
  v31 = v30;
  v33 = v32;
  sub_100004C84(v24, v26, v28 & 1);

  sub_10006A14C(v16);
  v35 = v140 + 88;
  v34 = *(v140 + 88);
  v139 = v12;
  v108 = v34;
  v36 = v34(v16, v12);
  v107 = enum case for WidgetFamily.systemSmall(_:);
  v109 = v35;
  v106 = enum case for WidgetFamily.systemMedium(_:);
  if (v36 == enum case for WidgetFamily.systemSmall(_:) || (v37 = v36, v36 == enum case for WidgetFamily.systemMedium(_:)))
  {
    sub_10007252C();
  }

  else if (v36 == enum case for WidgetFamily.systemLarge(_:) || v36 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000724EC();
  }

  else
  {
    v38 = enum case for WidgetFamily.accessoryCircular(_:);
    sub_10007252C();
    if (v37 != v38 && v37 != enum case for WidgetFamily.accessoryRectangular(_:) && v37 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v140 + 8))(v16, v139);
    }
  }

  v39 = v121;
  v40 = v120;
  v41 = v119;
  (*(v120 + 104))(v119, enum case for Font.Leading.tight(_:), v121);
  sub_10007250C();

  (*(v40 + 8))(v41, v39);
  v42 = sub_10007257C();
  v44 = v43;
  LOBYTE(v41) = v45;

  sub_100004C84(v29, v31, v33 & 1);

  type metadata accessor for CPBackgroundView(0);
  sub_100043050();
  v46 = sub_10007256C();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_100004C84(v42, v44, v41 & 1);

  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v151 = v50 & 1;
  v150 = 0;
  v55 = swift_getKeyPath();
  *&v142 = v46;
  *(&v142 + 1) = v48;
  LOBYTE(v143) = v50 & 1;
  *(&v143 + 1) = v52;
  *&v144 = KeyPath;
  *(&v144 + 1) = 1;
  LOBYTE(v145) = 0;
  *(&v145 + 1) = v54;
  LOBYTE(v146) = 1;
  *(&v146 + 1) = v55;
  v147 = 0x3FE8000000000000;
  sub_10000388C(&qword_1000975E8, &qword_100077140);
  sub_10006CA90();
  v56 = v124;
  sub_1000725FC();
  v148[2] = v144;
  v148[3] = v145;
  v148[4] = v146;
  v149 = v147;
  v148[0] = v142;
  v148[1] = v143;
  sub_100004890(v148, &qword_1000975E8, &qword_100077140);
  sub_1000726CC();
  v57 = sub_1000726FC();

  v58 = v128;
  (*(v126 + 32))(v128, v56, v127);
  v59 = v58 + *(v123 + 36);
  *v59 = v57;
  *(v59 + 8) = xmmword_1000756D0;
  *(v59 + 24) = 0x3FF0000000000000;
  v60 = v125;
  v61 = &v125[*(v122 + 36)];
  v62 = enum case for CoordinateSpace.global(_:);
  v63 = sub_100071F9C();
  (*(*(v63 - 8) + 104))(v61, v62, v63);
  v64 = sub_1000728AC();
  v66 = v65;
  v67 = &v61[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v67 = v64;
  v67[1] = v66;
  sub_100014DEC(v58, v60, &qword_1000975D8, &qword_1000770A0);
  v68 = v132;
  sub_100014DEC(v60, v132, &qword_1000975E0, &qword_1000770A8);
  v69 = v130;
  v70 = v129;
  v71 = v131;
  (*(v130 + 104))(v129, enum case for GKFeatureFlags.GameOverlayUI(_:), v131);
  LOBYTE(v61) = sub_100071D9C();
  (*(v69 + 8))(v70, v71);
  if (v61)
  {
    v72 = [objc_opt_self() currentDevice];
    v73 = [v72 userInterfaceIdiom];

    if (!v73)
    {
      v99 = 1;
      v98 = v137;
      v96 = v135;
      v87 = v134;
      goto LABEL_25;
    }
  }

  v74 = sub_10007276C();
  v75 = sub_10000388C(&qword_1000970A0, &qword_100076928);
  v76 = v111;
  v77 = &v111[*(v75 + 36)];
  v78 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v79 = enum case for Image.Scale.small(_:);
  v80 = sub_1000727BC();
  (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
  *v77 = swift_getKeyPath();
  *v76 = v74;
  *(v76 + 8) = 1;
  v81 = sub_100043208();
  v82 = swift_getKeyPath();
  v83 = (v76 + *(v112 + 36));
  *v83 = v82;
  v83[1] = v81;
  sub_10007248C();
  sub_1000638BC();
  v84 = v114;
  sub_1000725EC();
  sub_100004890(v76, &qword_100097058, &qword_100077080);
  v85 = v110;
  sub_10006A14C(v110);
  v86 = v108(v85, v139);
  v87 = v134;
  if (v86 == v107 || v86 == v106)
  {
    v91 = sub_10007252C();
  }

  else
  {
    if (v86 != enum case for WidgetFamily.systemLarge(_:) && v86 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v88 = enum case for WidgetFamily.accessoryCircular(_:);
      v89 = v86;
      v90 = sub_10007252C();
      if (v89 != v88 && v89 != enum case for WidgetFamily.accessoryRectangular(_:) && v89 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v140 + 8))(v85, v139);
      }

      goto LABEL_24;
    }

    v91 = sub_1000724EC();
  }

  v90 = v91;
LABEL_24:
  v92 = swift_getKeyPath();
  v93 = v115;
  (*(v117 + 32))(v115, v84, v118);
  v94 = (v93 + *(v116 + 36));
  *v94 = v92;
  v94[1] = v90;
  sub_100063A84();
  v95 = v113;
  sub_1000725FC();
  sub_100004890(v93, &qword_100097060, &qword_100076880);
  v96 = v135;
  v97 = v95;
  v98 = v137;
  (*(v135 + 32))(v87, v97, v137);
  v99 = 0;
LABEL_25:
  (*(v96 + 56))(v87, v99, 1, v98);
  v100 = v133;
  sub_100004C94(v68, v133, &qword_1000975E0, &qword_1000770A8);
  v101 = v136;
  sub_100004C94(v87, v136, &qword_100097070, &qword_100076890);
  v102 = v138;
  sub_100004C94(v100, v138, &qword_1000975E0, &qword_1000770A8);
  v103 = sub_10000388C(&qword_100097608, &qword_1000771F0);
  sub_100004C94(v101, v102 + *(v103 + 48), &qword_100097070, &qword_100076890);
  v104 = v102 + *(v103 + 64);
  *v104 = 0;
  *(v104 + 8) = 0;
  sub_100004890(v87, &qword_100097070, &qword_100076890);
  sub_100004890(v68, &qword_1000975E0, &qword_1000770A8);
  sub_100004890(v101, &qword_100097070, &qword_100076890);
  return sub_100004890(v100, &qword_1000975E0, &qword_1000770A8);
}

uint64_t sub_10006C314@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_10000388C(&qword_100097610, &qword_1000771F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v21 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_10006A14C(v4);
  sub_10006CA2C(&qword_100094E70, &protocol conformance descriptor for WidgetFamily);
  sub_100072FEC();
  (*(v2 + 8))(v4, v1);
  sub_100071DFC();

  v14 = sub_100071C9C();
  result = (*(*(v14 - 8) + 48))(v7, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000388C(&qword_100097618, &qword_100077200);
    sub_10006CC18();
    sub_10007254C();
    v16 = *(v9 + 16);
    v17 = v21;
    v16(v21, v13, v8);
    v18 = v22;
    v16(v22, v17, v8);
    v19 = &v18[*(sub_10000388C(&qword_100097638, &qword_100077210) + 48)];
    *v19 = 0;
    v19[8] = 0;
    v20 = *(v9 + 8);
    v20(v13, v8);
    return (v20)(v17, v8);
  }

  return result;
}

double sub_10006C674@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GameCenterLogo(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v20 - v6);
  v8 = sub_10000388C(&qword_100097630, &qword_100077208);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  *v10 = sub_1000721CC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = &v10[*(sub_10000388C(&qword_100097640, &qword_100077218) + 44)];
  *v7 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10006CCD8(v7, v4);
  *v11 = 0;
  v11[8] = 0;
  v12 = sub_10000388C(&qword_100097648, &qword_100077258);
  sub_10006CCD8(v4, &v11[*(v12 + 48)]);
  sub_10006CD3C(v7);
  sub_10006CD3C(v4);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v14 = sub_1000723DC();
  *(inited + 32) = v14;
  v15 = sub_1000723BC();
  *(inited + 33) = v15;
  v16 = sub_1000723FC();
  *(inited + 34) = v16;
  v17 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v14)
  {
    v17 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v15)
  {
    v17 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v16)
  {
    v17 = sub_1000723EC();
  }

  sub_10006CD98(v10, a1);
  v18 = a1 + *(sub_10000388C(&qword_100097618, &qword_100077200) + 36);
  *v18 = v17;
  result = 0.0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  return result;
}

uint64_t sub_10006C920()
{
  v1 = sub_10000388C(&qword_100097510, &qword_100076FC8);
  __chkstk_darwin(v1);
  v3 = (&v7 - v2);
  *v3 = sub_1000728AC();
  v3[1] = v4;
  v5 = sub_10000388C(&qword_100097518, &qword_100076FD0);
  sub_10006A34C(v0, v3 + *(v5 + 44));
  sub_100004C3C(&qword_100097520, &qword_100097510, &qword_100076FC8, &protocol conformance descriptor for ZStack<A>);
  sub_1000725AC();
  return sub_100004890(v3, &qword_100097510, &qword_100076FC8);
}

uint64_t sub_10006CA2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000729DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006CA90()
{
  result = qword_1000975F0;
  if (!qword_1000975F0)
  {
    sub_1000038D4(&qword_1000975E8, &qword_100077140);
    sub_10006CB48();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975F0);
  }

  return result;
}

unint64_t sub_10006CB48()
{
  result = qword_1000975F8;
  if (!qword_1000975F8)
  {
    sub_1000038D4(&qword_100097600, &qword_100077148);
    sub_10004BC0C();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975F8);
  }

  return result;
}

unint64_t sub_10006CC18()
{
  result = qword_100097620;
  if (!qword_100097620)
  {
    sub_1000038D4(&qword_100097618, &qword_100077200);
    sub_100004C3C(&qword_100097628, &qword_100097630, &qword_100077208, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097620);
  }

  return result;
}

uint64_t sub_10006CCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterLogo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CD3C(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterLogo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006CD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100097630, &qword_100077208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CE08()
{
  sub_1000038D4(&qword_100097510, &qword_100076FC8);
  sub_100004C3C(&qword_100097520, &qword_100097510, &qword_100076FC8, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006CEA0()
{
  sub_100071E3C();
  v0 = sub_100071E1C();
  v1 = sub_100071E2C();

  result = 0;
  if ((v1 & 1) == 0)
  {
    v3 = [objc_opt_self() authenticatedLocalPlayers];
    v4 = sub_100072C4C();

    if (*(v4 + 16))
    {
      sub_10000EA40(v4 + 32, v6);

      sub_10006CF88();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_10006CF88()
{
  result = qword_100094CE0;
  if (!qword_100094CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100094CE0);
  }

  return result;
}

uint64_t sub_10006CFE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10006D1C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPMediumContentView(uint64_t a1)
{
  result = qword_1000976A8;
  if (!qword_1000976A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPMediumContentView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10006D5E4()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CPMediumContentView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100072CEC();
    v7 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10006D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10000388C(&qword_100097718, &qword_100077310);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_10000388C(&qword_100097720, &qword_100077318);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_10006D9AC(&v22);
  v21 = v22;
  sub_10000388C(&qword_100097728, &qword_100077320);
  sub_10007107C();
  sub_10007264C();

  *v8 = sub_1000721CC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v15 = sub_10000388C(&qword_100097738, &qword_100077328);
  sub_10006DCC8(a1, &v8[*(v15 + 44)]);
  sub_100004C94(v14, v11, &qword_100097720, &qword_100077318);
  sub_100004C94(v8, v5, &qword_100097718, &qword_100077310);
  v16 = v20;
  sub_100004C94(v11, v20, &qword_100097720, &qword_100077318);
  v17 = sub_10000388C(&qword_100097740, &qword_100077330);
  sub_100004C94(v5, v16 + *(v17 + 48), &qword_100097718, &qword_100077310);
  sub_100004890(v8, &qword_100097718, &qword_100077310);
  sub_100004890(v14, &qword_100097720, &qword_100077318);
  sub_100004890(v5, &qword_100097718, &qword_100077310);
  return sub_100004890(v11, &qword_100097720, &qword_100077318);
}

uint64_t sub_10006D9AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10007218C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for CPMediumContentView(0) + 24);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v22 = v10;
    v23 = v1;
    v16 = v11;
    v17 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v15, 0);
    (*(v16 + 8))(v13, v22);
    if (v24 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v9);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v18 = sub_100072B1C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  if (v18)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_10006DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = sub_10000388C(&qword_100097748, &qword_100077338) - 8;
  __chkstk_darwin(v41);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v38 - v5;
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000388C(&qword_100097750, &qword_100077340);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_10000388C(&qword_100097758, &qword_100077348);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  sub_10006E0FC(&v38 - v17);
  sub_10006F3B4(a1, v12);
  v19 = *(type metadata accessor for CPMediumContentView(0) + 28);
  sub_10006D3DC(v9);
  sub_100022F7C(a1 + v19, v9);
  (*(v7 + 8))(v9, v6);
  sub_1000728AC();
  sub_100071F2C();
  v20 = &v12[*(v10 + 36)];
  v21 = v45;
  *v20 = v44;
  *(v20 + 1) = v21;
  *(v20 + 2) = v46;
  v22 = &v18[*(v14 + 44)];
  sub_1000710F8();
  sub_10007264C();
  sub_100004890(v12, &qword_100097750, &qword_100077340);
  v23 = sub_1000728AC();
  v25 = v24;
  v26 = &v22[*(sub_10000388C(&qword_1000977A8, &qword_100077370) + 36)];
  *v26 = v23;
  v26[1] = v25;
  v27 = v40;
  sub_10006E74C(v40);
  v28 = v27 + *(v41 + 44);
  sub_10006EC24(v28);
  v29 = sub_1000728AC();
  v31 = v30;
  v32 = (v28 + *(sub_10000388C(&qword_1000977B0, &qword_100077378) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = v39;
  sub_100004C94(v18, v39, &qword_100097758, &qword_100077348);
  v34 = v42;
  sub_100004C94(v27, v42, &qword_100097748, &qword_100077338);
  v35 = v43;
  sub_100004C94(v33, v43, &qword_100097758, &qword_100077348);
  v36 = sub_10000388C(&qword_1000977B8, &qword_100077380);
  sub_100004C94(v34, v35 + *(v36 + 48), &qword_100097748, &qword_100077338);
  sub_100004890(v27, &qword_100097748, &qword_100077338);
  sub_100004890(v18, &qword_100097758, &qword_100077348);
  sub_100004890(v34, &qword_100097748, &qword_100077338);
  return sub_100004890(v33, &qword_100097758, &qword_100077348);
}

uint64_t sub_10006E0FC@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_10007234C();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000388C(&qword_1000959E8, &unk_100077500);
  __chkstk_darwin(v47);
  v48 = &v44 - v4;
  v5 = sub_10000388C(&qword_1000959F0, &unk_100074EE0);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v46 = &v44 - v6;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v53 = sub_100071C9C();
  v14 = *(v53 - 8);
  __chkstk_darwin(v53);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v44 - v18;
  v19 = type metadata accessor for CPMediumContentView(0);
  v20 = v1;
  v21 = v1 + *(v19 + 32);
  v22 = *(v21 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (v22 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v45 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v22 + 32);

LABEL_6:
    sub_10006D3DC(v10);
    sub_100005294(v10, v13);
    v24 = *(v8 + 8);
    v24(v10, v7);
    v25 = v14;
    if ((*(v14 + 48))(v13, 1, v53) != 1)
    {
      v30 = v52;
      (*(v25 + 32))();
      v31 = *(v19 + 28);
      v32 = v25;
      sub_10006D3DC(v10);
      sub_100022F7C(v20 + v31, v10);
      v24(v10, v7);
      v33 = v30;
      v34 = v53;
      v35 = (*(v25 + 16))(v16, v33, v53);
      __chkstk_darwin(v35);
      v36 = v45;
      *(&v44 - 2) = v20;
      *(&v44 - 1) = v36;
      sub_10000388C(&qword_1000959F8, &unk_100074EF0);
      sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0, &protocol conformance descriptor for VStack<A>);
      v37 = v48;
      sub_10007254C();
      sub_1000728AC();
      sub_100071F2C();
      v38 = (v37 + *(v47 + 36));
      v39 = v58;
      *v38 = v57;
      v38[1] = v39;
      v38[2] = v59;
      v40 = v49;
      sub_10007233C();
      sub_1000286C8();
      v41 = v46;
      sub_10007266C();

      (*(v50 + 8))(v40, v51);
      sub_100004890(v37, &qword_1000959E8, &unk_100077500);
      (*(v32 + 8))(v52, v34);
      v29 = v54;
      v42 = v55;
      v43 = v56;
      (*(v54 + 32))(v56, v41, v55);
      v28 = v42;
      v27 = v43;
      v26 = 0;
      return (*(v29 + 56))(v27, v26, 1, v28);
    }

    sub_100004890(v13, &qword_100094E50, &qword_100074180);
LABEL_8:
    v26 = 1;
    v28 = v55;
    v27 = v56;
    v29 = v54;
    return (*(v29 + 56))(v27, v26, 1, v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006E74C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for CPAppGridView(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v46 = sub_10000388C(&qword_1000962C8, &qword_100077400);
  __chkstk_darwin(v46);
  v10 = &v45 - v9;
  v11 = type metadata accessor for CPMediumContentView(0);
  sub_100028780(v1 + *(v11 + 32), v5, type metadata accessor for CPTimelineEntry);
  v12 = *(v11 + 28);
  v13 = v3[7];
  v14 = sub_100071F5C();
  (*(*(v14 - 8) + 16))(&v5[v13], v1 + v12, v14);
  *&v5[v3[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[8]] = 1;
  *&v5[v3[9]] = 2;
  v5[v3[10]] = 0;
  v15 = v3[11];
  *&v5[v15] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v16 = v3[12];
  *&v5[v16] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v16) = sub_1000723FC();
  *(inited + 32) = v16;
  v18 = sub_1000723CC();
  *(inited + 33) = v18;
  v19 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v16)
  {
    v19 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v19 = sub_1000723EC();
  }

  sub_100041AB4(v5, v8);
  v20 = &v8[*(v6 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_1000723DC();
  v22 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v21)
  {
    v22 = sub_1000723EC();
  }

  sub_100071F3C();
  sub_100071E8C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100014DEC(v8, v10, &qword_1000962C0, &qword_100076240);
  v31 = &v10[*(v46 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_1000723BC();
  v33 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v32)
  {
    v33 = sub_1000723EC();
  }

  sub_100071E8C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v47;
  sub_100014DEC(v10, v47, &qword_1000962C8, &qword_100077400);
  result = sub_10000388C(&qword_1000962D0, &qword_1000774A0);
  v44 = v42 + *(result + 36);
  *v44 = v33;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  return result;
}

uint64_t sub_10006EC24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v30 = sub_10000388C(&qword_1000977C0, &qword_100077388);
  __chkstk_darwin(v30);
  v4 = (&v28 - v3);
  v5 = sub_10000388C(&qword_1000977C8, &qword_100077390);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v28 - v7;
  v8 = sub_10007297C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_1000129F8(&v28 - v13);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v15 = sub_100072B1C();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15)
  {
    goto LABEL_11;
  }

  v17 = v2 + *(type metadata accessor for CPMediumContentView(0) + 32);
  v18 = type metadata accessor for CPTimelineEntry(0);
  if (*(v17 + *(v18 + 32)) == 1 && (sub_10006D5E4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(v17 + *(v18 + 20));
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:
    v27 = 1;
    v26 = v31;
    return (*(v6 + 56))(v26, v27, 1, v5);
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = sub_100072E6C();
    goto LABEL_9;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);

LABEL_9:
    *v4 = sub_1000728AC();
    v4[1] = v22;
    v23 = sub_10000388C(&qword_1000977D0, &unk_100077398);
    sub_100070300(v21, v2, v4 + *(v23 + 44));
    sub_100004C3C(&qword_1000977D8, &qword_1000977C0, &qword_100077388, &protocol conformance descriptor for ZStack<A>);
    v24 = v29;
    sub_10007264C();

    sub_100004890(v4, &qword_1000977C0, &qword_100077388);
    v25 = v31;
    sub_100014DEC(v24, v31, &qword_1000977C8, &qword_100077390);
    v26 = v25;
    v27 = 0;
    return (*(v6 + 56))(v26, v27, 1, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006EFF4(uint64_t a1)
{
  sub_1000726DC();
  sub_10007264C();
}

uint64_t sub_10006F058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  return sub_10006F0C0(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10006F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v13 = type metadata accessor for CPMediumContentView(0);
  v14 = v13[7];
  v15 = v7[10];
  v16 = sub_100071F5C();
  (*(*(v16 - 8) + 16))(v12 + v15, a1 + v14, v16);
  sub_100028780(a1 + v13[8], v12 + v7[11], type metadata accessor for CPTimelineEntry);
  v17 = (a1 + v13[9]);
  v18 = *(v17 + 4);
  v19 = v17[1];
  v33 = *v17;
  v34 = v19;
  v35 = v18;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v20 = v29;
  v21 = v30;
  v27 = v32;
  v28 = v31;
  *(v12 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v12 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v22 = v7[7];
  *(v12 + v22) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[12]) = a2;
  v23 = v12 + v7[13];
  *v23 = v20;
  *(v23 + 1) = v21;
  v24 = v27;
  *(v23 + 1) = v28;
  *(v23 + 2) = v24;
  sub_100028780(v12, v9, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_100028780(v9, a3 + *(v25 + 48), type metadata accessor for CPTitleView);

  sub_1000287E8(v12, type metadata accessor for CPTitleView);
  return sub_1000287E8(v9, type metadata accessor for CPTitleView);
}

uint64_t sub_10006F3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_10000388C(&qword_1000977A0, &qword_100077368);
  __chkstk_darwin(v22);
  v4 = (&v22 - v3);
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100097818, &qword_1000774A8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = a1 + *(type metadata accessor for CPMediumContentView(0) + 32);
  v13 = type metadata accessor for CPTimelineEntry(0);
  if (*(v12 + *(v13 + 32)) == 1 && (sub_10006D5E4() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368, &protocol conformance descriptor for ZStack<A>);
    v19 = v23;
    sub_10007230C();
    v20 = 0;
    goto LABEL_13;
  }

  v14 = *(v12 + *(v13 + 20));
  if (v14 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_100072E6C();
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_8:
    sub_10006D3DC(v8);
    v16 = sub_10001D980(v8, 1);
    (*(v6 + 8))(v8, v5);
    if (v16)
    {
      *v4 = sub_1000728AC();
      v4[1] = v17;
      v18 = sub_10000388C(&qword_100097820, &qword_1000774B0);
      sub_10006F79C(v16, a1, v4 + *(v18 + 44));
      sub_100004C94(v4, v11, &qword_1000977A0, &qword_100077368);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368, &protocol conformance descriptor for ZStack<A>);
      v19 = v23;
      sub_10007230C();

      sub_100004890(v4, &qword_1000977A0, &qword_100077368);
      v20 = 0;
LABEL_13:
      v21 = sub_10000388C(&qword_100097790, &qword_100077360);
      return (*(*(v21 - 8) + 56))(v19, v20, 1, v21);
    }

LABEL_12:
    v20 = 1;
    v19 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006F79C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v73 = a3;
  v4 = sub_10007297C();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v68 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v58 - v7;
  v8 = sub_1000728BC();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000388C(&qword_100095988, &qword_100074E48);
  __chkstk_darwin(v61);
  v11 = &v58 - v10;
  v12 = sub_10000388C(&qword_100095990, &qword_100074E50);
  v63 = *(v12 - 8);
  v64 = v12;
  __chkstk_darwin(v12);
  v59 = &v58 - v13;
  v14 = sub_10000388C(&qword_100095998, &unk_100074E58);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  __chkstk_darwin(v20);
  v60 = &v58 - v21;
  v22 = sub_10007277C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000388C(&qword_100094930, &qword_100076430);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v58 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = a1;
  sub_10007275C();
  (*(v23 + 104))(v25, enum case for Image.ResizingMode.stretch(_:), v22);
  sub_1000727DC();

  (*(v23 + 8))(v25, v22);
  *v31 = sub_1000728AC();
  *(v31 + 1) = v33;
  v34 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v31[*(v34 + 44)], 0.3);

  v35 = &v31[*(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36)];
  *v35 = 0;
  *(v35 + 4) = 1;
  v36 = &v31[*(v27 + 44)];
  v37 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v38 = enum case for ColorScheme.light(_:);
  v39 = sub_100071EAC();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  *v11 = sub_10007223C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v40 = sub_10000388C(&qword_1000959C8, &qword_100074EC0);
  sub_10006FF10(v66, &v11[*(v40 + 44)]);
  sub_100004C3C(&qword_1000959D0, &qword_100095988, &qword_100074E48, &protocol conformance descriptor for VStack<A>);
  v41 = v59;
  sub_1000725AC();
  sub_100004890(v11, &qword_100095988, &qword_100074E48);
  v42 = v65;
  sub_1000129F8(v65);
  v43 = v68;
  sub_10007296C();
  v44 = v43;
  LOBYTE(v43) = sub_10007295C();
  v45 = *(v71 + 8);
  v46 = v44;
  v47 = v72;
  v45(v46, v72);
  v45(v42, v47);
  v48 = v69;
  v49 = &enum case for BlendMode.destinationOut(_:);
  if ((v43 & 1) == 0)
  {
    v49 = &enum case for BlendMode.normal(_:);
  }

  v50 = v67;
  v51 = v70;
  (*(v69 + 104))(v67, *v49, v70);
  (*(v48 + 32))(&v19[*(v15 + 44)], v50, v51);
  (*(v63 + 32))(v19, v41, v64);
  v52 = v60;
  sub_10007148C(v19, v60);
  v53 = v58;
  sub_100004C94(v31, v58, &qword_100094930, &qword_100076430);
  v54 = v62;
  sub_100004C94(v52, v62, &qword_100095998, &unk_100074E58);
  v55 = v73;
  sub_100004C94(v53, v73, &qword_100094930, &qword_100076430);
  v56 = sub_10000388C(&qword_100097828, &unk_1000774F0);
  sub_100004C94(v54, v55 + *(v56 + 48), &qword_100095998, &unk_100074E58);
  sub_100004890(v52, &qword_100095998, &unk_100074E58);
  sub_100004890(v31, &qword_100094930, &qword_100076430);
  sub_100004890(v54, &qword_100095998, &unk_100074E58);
  return sub_100004890(v53, &qword_100094930, &qword_100076430);
}

uint64_t sub_10006FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for CPTitleGradientView(0) - 8;
  __chkstk_darwin(v42);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = (&v37 - v5);
  v6 = sub_1000729DC();
  v39 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CPHeaderGradientView(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v37 - v14);
  v16 = type metadata accessor for CPMediumContentView(0);
  v17 = *(v16 + 28);
  sub_10006D3DC(v9);
  sub_100022F7C(a1 + v17, v9);
  v19 = v18;
  v38 = *(v7 + 8);
  v38(v9, v6);
  sub_100071F3C();
  v21 = v20 * 0.2867;
  v22 = *(v16 + 32);
  sub_100028780(a1 + v22, v15 + *(v11 + 32), type metadata accessor for CPTimelineEntry);
  *v15 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v23 = (v15 + *(v11 + 28));
  *v23 = v19;
  v23[1] = v21;
  sub_10006D3DC(v9);
  sub_100022F7C(a1 + v17, v9);
  v25 = v24;
  v38(v9, v39);
  sub_100071F3C();
  v27 = v26 * 0.5;
  v29 = v41;
  v28 = v42;
  sub_100028780(a1 + v22, v41 + *(v42 + 32), type metadata accessor for CPTimelineEntry);
  *v29 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = (v29 + *(v28 + 28));
  *v30 = v25;
  v30[1] = v27;
  v31 = v40;
  sub_100028780(v15, v40, type metadata accessor for CPHeaderGradientView);
  v32 = v43;
  sub_100028780(v29, v43, type metadata accessor for CPTitleGradientView);
  v33 = v44;
  sub_100028780(v31, v44, type metadata accessor for CPHeaderGradientView);
  v34 = sub_10000388C(&qword_1000959E0, &unk_100074ED0);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 0;
  sub_100028780(v32, v33 + *(v34 + 64), type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v29, type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v15, type metadata accessor for CPHeaderGradientView);
  sub_1000287E8(v32, type metadata accessor for CPTitleGradientView);
  return sub_1000287E8(v31, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_100070300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v77 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  __chkstk_darwin(v77);
  v6 = (&v67 - v5);
  v68 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  __chkstk_darwin(v68);
  KeyPath = &v67 - v7;
  v70 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  __chkstk_darwin(v70);
  v72 = &v67 - v8;
  v78 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  __chkstk_darwin(v78);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v67 - v11;
  v12 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  v17 = sub_10007277C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
  v69 = a1;
  if (v21)
  {
    v22 = v21;
    sub_10007275C();
    (*(v18 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v17);
    v23 = sub_1000727DC();

    (*(v18 + 8))(v20, v17);
    sub_10007290C();
    v81 = v23;
    *v82 = xmmword_100077260;
    *&v82[16] = 0x3FF0000000000000;
    *&v83 = v24;
    *(&v83 + 1) = v25;
    v84 = 0;

    sub_10000388C(&qword_1000977E0, &qword_1000773A8);
    sub_10000388C(&qword_1000977E8, &qword_1000773B0);
    sub_100071344();
    sub_1000713F0(&qword_100097808, &qword_1000977E8, &qword_1000773B0);
    sub_10007230C();
  }

  else
  {
    v26 = *(a1 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (!v26)
    {
      v27 = *(a1 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
      }
    }

    v29 = v26;
    v81 = sub_1000726AC();
    *v82 = 0xBFC3333333333333;
    *&v82[8] = 0u;
    v83 = 0u;
    v84 = 1;
    sub_10000388C(&qword_1000977E0, &qword_1000773A8);
    sub_10000388C(&qword_1000977E8, &qword_1000773B0);
    sub_100071344();
    sub_1000713F0(&qword_100097808, &qword_1000977E8, &qword_1000773B0);
    sub_10007230C();
  }

  v79 = v85;
  v80 = v86;
  v31 = v87;
  v30 = v88;
  v32 = v89;
  v33 = v75 + *(type metadata accessor for CPMediumContentView(0) + 32);
  v34 = type metadata accessor for CPTimelineEntry(0);
  v35 = v79;
  v36 = *(v33 + v34[6]) == 1;
  v75 = *(&v79 + 1);
  if (v36 && (*(v33 + v34[7]) & 1) == 0 && (*(v33 + v34[8]) & 1) == 0 && *(v33 + v34[9]) == 1)
  {
    v37 = *(v33 + v34[5]);
    if (v37 >> 62)
    {
      v61 = sub_100072EDC();
      v35 = v79;
      if (v61 >= 1)
      {
        goto LABEL_15;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_15:
      v38 = v31;
      v39 = v30;
      j__swift_retain(v35);
      v40 = KeyPath;
      sub_10007287C();
      v41 = sub_1000723AC();
      *(v40 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v41;
      sub_1000726CC();
      v42 = sub_1000726FC();

      v43 = sub_1000723AC();
      v44 = v40 + *(v68 + 36);
      *v44 = v42;
      *(v44 + 8) = v43;
      v45 = *(v69 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      v67 = v6;
      if (!v45)
      {
        v46 = *(v69 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v48 = objc_allocWithZone(UIColor);
          [v48 initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:{1.0, v67}];
        }
      }

      v49 = v45;
      sub_1000726AC();
      v50 = sub_1000726FC();

      v51 = sub_1000723AC();
      v52 = v72;
      sub_100014DEC(KeyPath, v72, &qword_100095228, &qword_1000745D0);
      v53 = v52 + *(v70 + 36);
      *v53 = v50;
      *(v53 + 8) = v51;
      KeyPath = swift_getKeyPath();
      v54 = v71;
      v55 = &v71[*(v78 + 36)];
      v70 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v56 = enum case for ColorScheme.light(_:);
      v57 = sub_100071EAC();
      (*(*(v57 - 8) + 104))(&v55[v70], v56, v57);
      *v55 = KeyPath;
      sub_100014DEC(v52, v54, &qword_1000958F8, &unk_1000763A0);
      v58 = v54;
      v59 = v73;
      sub_100014DEC(v58, v73, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v59, v67, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      v60 = v16;
      sub_10007230C();
      sub_100004890(v59, &qword_100095900, &unk_100074DF0);
      goto LABEL_24;
    }
  }

  v38 = v31;
  v39 = v30;
  j__swift_retain(v35);
  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v6 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  v60 = v16;
  sub_10007230C();
LABEL_24:
  v62 = v76;
  sub_100004C94(v60, v76, &qword_100095908, &unk_1000763B0);
  v63 = v80;
  *a3 = v79;
  *(a3 + 16) = v63;
  *(a3 + 32) = v38;
  *(a3 + 40) = v39;
  *(a3 + 48) = v32;
  v64 = sub_10000388C(&qword_100097810, &qword_1000773C0);
  sub_100004C94(v62, a3 + *(v64 + 48), &qword_100095908, &unk_1000763B0);
  v65 = v79;
  j__swift_retain(v79);
  j__swift_release(v65);
  sub_100004890(v60, &qword_100095908, &unk_1000763B0);
  sub_100004890(v62, &qword_100095908, &unk_1000763B0);
  return j__swift_release(v65);
}

uint64_t sub_100070DA8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_10007236C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_1000976F0, &qword_1000772F8);
  __chkstk_darwin(v6);
  v8 = (v12 - v7);
  *v8 = sub_1000728AC();
  v8[1] = v9;
  v10 = sub_10000388C(&qword_1000976F8, &qword_100077300);
  sub_10006D73C(v1, v8 + *(v10 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_10000388C(&qword_100097700, &qword_100077308);
  sub_100004C3C(&qword_100097708, &qword_1000976F0, &qword_1000772F8, &protocol conformance descriptor for ZStack<A>);
  sub_100070FC0();
  sub_10007265C();
  (*(v3 + 8))(v5, v2);
  return sub_100004890(v8, &qword_1000976F0, &qword_1000772F8);
}

unint64_t sub_100070FC0()
{
  result = qword_100097710;
  if (!qword_100097710)
  {
    sub_1000038D4(&qword_100097700, &qword_100077308);
    sub_100004DB8(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097710);
  }

  return result;
}

unint64_t sub_10007107C()
{
  result = qword_100097730;
  if (!qword_100097730)
  {
    sub_1000038D4(&qword_100097728, &qword_100077320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097730);
  }

  return result;
}

unint64_t sub_1000710F8()
{
  result = qword_100097760;
  if (!qword_100097760)
  {
    sub_1000038D4(&qword_100097750, &qword_100077340);
    sub_100071184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097760);
  }

  return result;
}

unint64_t sub_100071184()
{
  result = qword_100097768;
  if (!qword_100097768)
  {
    sub_1000038D4(&qword_100097770, &qword_100077350);
    sub_100071208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097768);
  }

  return result;
}

unint64_t sub_100071208()
{
  result = qword_100097778;
  if (!qword_100097778)
  {
    sub_1000038D4(&qword_100097780, &qword_100077358);
    sub_10007128C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097778);
  }

  return result;
}

unint64_t sub_10007128C()
{
  result = qword_100097788;
  if (!qword_100097788)
  {
    sub_1000038D4(&qword_100097790, &qword_100077360);
    sub_100004C3C(&qword_100097798, &qword_1000977A0, &qword_100077368, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097788);
  }

  return result;
}

unint64_t sub_100071344()
{
  result = qword_1000977F0;
  if (!qword_1000977F0)
  {
    sub_1000038D4(&qword_1000977E0, &qword_1000773A8);
    sub_1000713F0(&qword_1000977F8, &qword_100097800, &qword_1000773B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F0);
  }

  return result;
}

uint64_t sub_1000713F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007148C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100095998, &unk_100074E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071504()
{
  sub_1000038D4(&qword_1000976F0, &qword_1000772F8);
  sub_1000038D4(&qword_100097700, &qword_100077308);
  sub_100004C3C(&qword_100097708, &qword_1000976F0, &qword_1000772F8, &protocol conformance descriptor for ZStack<A>);
  sub_100070FC0();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000715E4(int a1, int a2, int a3)
{
  if (qword_100099948 == -1)
  {
    v3 = dword_100099938 < a1;
    if (dword_100099938 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_100071B6C();
    a2 = v6;
    a3 = v5;
    v3 = dword_100099938 < a1;
    if (dword_100099938 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10009993C > a2)
  {
    return 1;
  }

  if (dword_10009993C < a2)
  {
    return 0;
  }

  return dword_100099940 >= a3;
}

uint64_t sub_1000716A4(int a1, int a2, int a3, int a4)
{
  if (qword_100099950 == -1)
  {
    if (qword_100099958)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100071B84();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100099958)
    {
      return _availability_version_check();
    }
  }

  if (qword_100099948 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100071B6C();
    a3 = v10;
    a4 = v9;
    v8 = dword_100099938 < v11;
    if (dword_100099938 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10009993C > a3)
      {
        return 1;
      }

      if (dword_10009993C >= a3)
      {
        return dword_100099940 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100099938 < a2;
  if (dword_100099938 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100071838(uint64_t result)
{
  v1 = qword_100099958;
  if (qword_100099958)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100099958 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100099938, &dword_10009993C, &dword_100099940);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}