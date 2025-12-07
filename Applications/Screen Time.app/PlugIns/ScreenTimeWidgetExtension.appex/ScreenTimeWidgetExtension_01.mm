uint64_t sub_100018840(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100049FF8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100014784(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t *sub_1000188D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_10001893C(uint64_t a1)
{

  v33 = sub_100016620(v1);
  sub_100015048(&v33);
  v2 = v33;
  LODWORD(v3) = v33 < 0 || (v33 & 0x4000000000000000) != 0;
  if (v3 == 1)
  {
    goto LABEL_33;
  }

  v4 = *(v33 + 16);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(v33 + 16);
  }

  if (v4 < v5)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0 && v5)
      {
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

        sub_10004A1E8(0);
        if (v5 != 1)
        {
          sub_10004A1E8(1);
          if (v5 != 2)
          {
            sub_10004A1E8(2);
          }
        }
      }

      else
      {
      }

      if (v3)
      {
        v6 = sub_10004A318();
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v5 = v12 >> 1;
        v2 = v6;
      }

      else
      {
        v10 = 0;
        v8 = v2 + 32;
      }

      v13 = v5 - v10;
      if (__OFSUB__(v5, v10))
      {
        break;
      }

      if (!v13)
      {
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }

      v33 = _swiftEmptyArrayStorage;
      sub_1000238C4(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_43;
      }

      if (v5 <= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v5;
      }

      v15 = v33;
      v16 = v14 - v10;
      v3 = (v8 + 8 * v10);
      while (v16)
      {
        v17 = *v3;
        v18 = [v17 localizedDisplayName];
        v19 = sub_100049E08();
        v21 = v20;

        [v17 quantity];
        v23 = v22;
        v24 = [v17 identifier];
        v2 = sub_100049E08();
        v26 = v25;

        v33 = v15;
        v28 = *(v15 + 16);
        v27 = *(v15 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1000238C4((v27 > 1), v28 + 1, 1);
          v15 = v33;
        }

        *(v15 + 16) = v28 + 1;
        v29 = v15 + 48 * v28;
        *(v29 + 32) = v19;
        *(v29 + 40) = v21;
        *(v29 + 48) = v23;
        *(v29 + 56) = v2;
        *(v29 + 64) = v26;
        *(v29 + 72) = 3;
        --v16;
        ++v3;
        if (!--v13)
        {
          swift_unknownObjectRelease();
          return v15;
        }
      }

      __break(1u);
LABEL_33:
      v31 = sub_10004A308();
      if (sub_10004A308() < 0)
      {
        goto LABEL_44;
      }

      if (v31 >= 3)
      {
        v32 = 3;
      }

      else
      {
        v32 = v31;
      }

      if (v31 >= 0)
      {
        v5 = v32;
      }

      else
      {
        v5 = 3;
      }

      if (sub_10004A308() < v5)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100018C4C(uint64_t a1, unint64_t a2)
{
  v2 = sub_10000AE58(a2);
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v7)
  {
LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  v8 = v3;
  v9 = v4;
  v32 = v2;
  sub_1000238E4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v9 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 - v9;
    v12 = (v8 + 8 * v9);
    while (v11)
    {
      v13 = *v12;
      v14 = [v13 identifier];
      v15 = sub_100049E08();
      v33 = v16;
      v34 = v15;

      v17 = [v13 type];
      v18 = &selRef_darkColorsMonogram;
      if (v17 == 1)
      {
        v18 = &selRef_iconImage;
      }

      v19 = [v13 *v18];
      v20 = [v13 type];
      v21 = &selRef_lightColorsMonogram;
      if (v20 == 1)
      {
        v21 = &selRef_iconImage;
      }

      v22 = [v13 *v21];
      [v13 quantity];
      v24 = v23;
      v25 = [v13 localizedDisplayName];
      v26 = sub_100049E08();
      v28 = v27;

      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000238E4((v29 > 1), v30 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v30 + 1;
      v31 = &_swiftEmptyArrayStorage[7 * v30];
      *(v31 + 4) = v34;
      *(v31 + 5) = v33;
      *(v31 + 6) = v19;
      *(v31 + 7) = v22;
      v31[8] = v24;
      *(v31 + 9) = v26;
      *(v31 + 10) = v28;
      --v11;
      ++v12;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100018E78(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v11 = result;
    v5 = sub_10004A308();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_10004A308();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = sub_10004A308();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      sub_10004A1E8(v9);
      v9 = v10;
    }

    while (v5 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_10004A318();
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_100019038(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = sub_100049F68();
      v4[2] = a2;
      bzero(v4 + 4, 8 * a2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_100018E78(a2, a1);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v8;
    if (!v12)
    {
LABEL_12:
      swift_unknownObjectRelease();
      return;
    }

    v13 = 0;
    if (v8 > v11)
    {
      v11 = v8;
    }

    v14 = v11 - v8;
    v15 = v6 + 8 * v8;
    while (v14 != v13)
    {
      v16 = *(v15 + 8 * v13);
      [v16 quantity];
      v18 = v17;

      if (v13 >= v4[2])
      {
        goto LABEL_14;
      }

      *&v4[v13++ + 4] = v18;
      if (v12 == v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100019170(char *a1, uint64_t a2, uint64_t a3)
{
  v129 = a2;
  v156 = a1;
  v162 = type metadata accessor for HourlyUsage(0);
  v159 = *(v162 - 8);
  __chkstk_darwin(v162);
  v149 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v144 = *(v140 - 8);
  v5 = __chkstk_darwin(v140);
  v139 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v138 = &v128 - v7;
  v155 = sub_100048E98();
  v131 = *(v155 - 1);
  v8 = __chkstk_darwin(v155);
  v161 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v141 = &v128 - v11;
  __chkstk_darwin(v10);
  v148 = &v128 - v12;
  *&v153 = sub_1000027D4(&qword_10005DE10, &qword_10004B8E0);
  __chkstk_darwin(v153);
  v14 = &v128 - v13;
  v152 = sub_1000027D4(&qword_10005DE18, &qword_10004B8E8);
  __chkstk_darwin(v152);
  v157 = &v128 - v15;
  v154 = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  v16 = __chkstk_darwin(v154);
  v18 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v128 - v19;
  v21 = sub_100049058();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v128 - v26;
  v147 = sub_1000027D4(&qword_10005DE28, &qword_10004B8F8);
  __chkstk_darwin(v147);
  v151 = &v128 - v28;
  v29 = sub_100049498();
  v130 = *(v29 - 8);
  __chkstk_darwin(v29);
  v150 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = _swiftEmptyArrayStorage;
  sub_100048E88();
  v158 = a3;
  sub_100048E68();
  sub_10001B1D0(&qword_10005DBF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = v21;
  result = sub_100049DD8();
  if ((result & 1) == 0)
  {
    goto LABEL_78;
  }

  v33 = *(v22 + 32);
  v136 = v27;
  v33(v20, v27, v31);
  v160 = v29;
  v34 = v18;
  v35 = v154;
  v36 = &v20[*(v154 + 48)];
  v137 = v25;
  v33(v36, v25, v31);
  sub_1000055FC(v20, v34, &qword_10005DE20, &qword_10004B8F0);
  v146 = *(v35 + 48);
  v37 = v151;
  v33(v151, v34, v31);
  v38 = *(v22 + 8);
  v38(v34 + v146, v31);
  sub_10001A570(v20, v34);
  v33(&v37[*(v147 + 36)], (v34 + *(v35 + 48)), v31);
  v38(v34, v31);
  v39 = v150;
  sub_100049488();
  sub_10001B1D0(&qword_10005DE30, &type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
  v40 = v160;
  sub_10004A018();
  sub_10004A038();
  v154 = sub_10004A028();
  sub_100019038(v156, v154);
  v151 = *(v41 + 16);
  if (v151)
  {
    v43 = 0;
    v128 = v41;
    v147 = v41 + 32;
    v145 = *(v130 + 16);
    v146 = v130 + 16;
    v135 = (v144 + 1);
    v144 = (v131 + 16);
    v143 = (v131 + 8);
    *&v42 = 134218498;
    v132 = v42;
    v44 = _swiftEmptyArrayStorage;
    do
    {
      v53 = v43;
      v54 = *(v147 + 8 * v43);
      v156 = v43 + 1;
      v55 = v157;
      v145(v157, v39, v40);
      v56 = v152;
      v57 = *(v152 + 36);
      sub_10004A018();
      sub_10004A038();
      sub_1000055FC(v55, v14, &qword_10005DE18, &qword_10004B8E8);
      v58 = *(v55 + v57);
      v59 = *(v153 + 36);
      *&v14[v59] = v58;
      v60 = *&v14[*(v56 + 40)];
      while (1)
      {
        v61 = *&v14[v59];
        if (v61 == v60)
        {
          break;
        }

        sub_10004A048();
        if (v61 == v53)
        {
          sub_100005664(v14, &qword_10005DE10, &qword_10004B8E0);
          sub_100005664(v157, &qword_10005DE18, &qword_10004B8E8);
          if (v54 > 3600.0)
          {
            v54 = 3600.0;
          }

          v62 = v138;
          sub_1000494A8();
          v63 = v140;
          sub_100049318();
          v142 = *v135;
          v142(v62, v63);
          v64 = v139;
          sub_1000494A8();
          sub_100049328();
          v142(v64, v63);
          v65 = v148;
          v39 = v150;
          sub_100048E78();
          v66 = v149;
          (*v144)(v149, v65, v155);
          v67 = v162;
          sub_1000494A8();
          *(v66 + *(v67 + 20)) = v54;
          *(v66 + *(v67 + 28)) = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1000233FC(0, v44[2] + 1, 1, v44);
          }

          v69 = v44[2];
          v68 = v44[3];
          v52 = v155;
          v40 = v160;
          if (v69 >= v68 >> 1)
          {
            v44 = sub_1000233FC((v68 > 1), v69 + 1, 1, v44);
          }

          (*v143)(v148, v52);
          v44[2] = v69 + 1;
          sub_10001A5E0(v149, v44 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v69, type metadata accessor for HourlyUsage);
          v164 = v44;
          goto LABEL_6;
        }
      }

      sub_100005664(v14, &qword_10005DE10, &qword_10004B8E0);
      sub_100005664(v157, &qword_10005DE18, &qword_10004B8E8);
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v70 = sub_1000492C8();
      sub_1000143C0(v70, qword_10005DC28);
      v71 = v141;
      v72 = v155;
      (*v144)(v141, v158, v155);
      v73 = sub_1000492A8();
      v74 = sub_10004A098();
      v75 = os_log_type_enabled(v73, v74);
      v39 = v150;
      if (v75)
      {
        v45 = swift_slowAlloc();
        v134 = v74;
        v46 = v45;
        v142 = swift_slowAlloc();
        v163 = v142;
        *v46 = v132;
        *(v46 + 4) = v53;
        *(v46 + 12) = 2048;
        *(v46 + 14) = v154;
        *(v46 + 22) = 2080;
        sub_10001B1D0(&qword_10005DE38, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
        v133 = v73;
        v47 = sub_10004A378();
        v49 = v48;
        (*v143)(v71, v72);
        v50 = sub_10003C4F8(v47, v49, &v163);

        *(v46 + 24) = v50;
        v51 = v133;
        _os_log_impl(&_mh_execute_header, v133, v134, "screenOnTime hourIndex %ld not in range. numberOfHours: %ld graphInterval %s", v46, 0x20u);
        sub_100002890(v142);
      }

      else
      {

        (*v143)(v71, v72);
      }

      v52 = v72;
LABEL_6:
      v43 = v156;
    }

    while (v156 != v151);
  }

  else
  {

    v44 = _swiftEmptyArrayStorage;
    v52 = v155;
  }

  v77 = v161;
  v149 = *(v129 + 16);
  if (!v149)
  {
LABEL_44:
    v102 = v160;
    v161 = v44[2];
    if (!v161)
    {
LABEL_73:
      (*(v130 + 8))(v150, v102);
      return v44;
    }

    v103 = 0;
    while (1)
    {
      if (v103 >= v44[2])
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v104 = v103 + 1;
      v105 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v106 = *(v159 + 72) * v103;
      while (1)
      {
        v107 = *(v44 + v105 + v106 + *(v162 + 28));
        v108 = *(v107 + 16);
        if (v108 > 2)
        {
          break;
        }

        swift_beginAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10001660C(v44);
          v44 = result;
        }

        if (v103 >= v44[2])
        {
          goto LABEL_75;
        }

        v109 = v44 + v105 + v106;
        v110 = *(v162 + 28);
        v111 = *&v109[v110];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v109[v110] = v111;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v111 = sub_1000232F8(0, *(v111 + 2) + 1, 1, v111);
          *&v109[v110] = v111;
        }

        v114 = *(v111 + 2);
        v113 = *(v111 + 3);
        if (v114 >= v113 >> 1)
        {
          v111 = sub_1000232F8((v113 > 1), v114 + 1, 1, v111);
          *&v109[v110] = v111;
        }

        v102 = v160;
        *(v111 + 2) = v114 + 1;
        *&v111[8 * v114 + 32] = 0;
        v164 = v44;
        result = swift_endAccess();
        if (v103 >= v44[2])
        {
          goto LABEL_74;
        }
      }

      if (v108 == 3)
      {
        break;
      }

      v115 = v108 & 0x7FFFFFFFFFFFFFFCLL;
      v117 = (v107 + 48);
      v116 = 0.0;
      v118 = v108 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v116 = v116 + *(v117 - 2) + *(v117 - 1) + *v117 + v117[1];
        v117 += 4;
        v118 -= 4;
      }

      while (v118);
      if (v108 != v115)
      {
        goto LABEL_63;
      }

LABEL_65:
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001660C(v44);
        v44 = result;
      }

      if (v103 >= v44[2])
      {
        goto LABEL_77;
      }

      v122 = v44 + v105 + v106;
      v123 = *(v162 + 28);
      v124 = *&v122[v123];
      v125 = swift_isUniquelyReferenced_nonNull_native();
      *&v122[v123] = v124;
      if ((v125 & 1) == 0)
      {
        v124 = sub_1000232F8(0, *(v124 + 2) + 1, 1, v124);
        *&v122[v123] = v124;
      }

      v127 = *(v124 + 2);
      v126 = *(v124 + 3);
      if (v127 >= v126 >> 1)
      {
        v124 = sub_1000232F8((v126 > 1), v127 + 1, 1, v124);
        *&v122[v123] = v124;
      }

      *(v124 + 2) = v127 + 1;
      *&v124[8 * v127 + 32] = fmax(1.0 - v116, 0.0);
      v164 = v44;
      result = swift_endAccess();
      v103 = v104;
      if (v104 == v161)
      {
        goto LABEL_73;
      }
    }

    v115 = 0;
    v116 = 0.0;
LABEL_63:
    v119 = v108 - v115;
    v120 = (v107 + 8 * v115 + 32);
    do
    {
      v121 = *v120++;
      v116 = v116 + v121;
      --v119;
    }

    while (v119);
    goto LABEL_65;
  }

  v78 = 0;
  v148 = (v129 + 32);
  v155 = (v131 + 8);
  v156 = (v131 + 16);
  *&v76 = 134218754;
  v153 = v76;
  while (1)
  {
    v152 = v78;

    sub_100019038(v79, v154);
    v81 = v80;

    v82 = v81;
    v83 = *(v81 + 2);
    v151 = v82;
    if (v83)
    {
      break;
    }

LABEL_25:
    v78 = v152 + 1;

    if (v78 == v149)
    {
      goto LABEL_44;
    }
  }

  v84 = 0;
  v157 = v82 + 32;
  while (1)
  {
    if (v84 >= v44[2])
    {
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v98 = sub_1000492C8();
      sub_1000143C0(v98, qword_10005DC28);
      (*v156)(v77, v158, v52);
      v99 = sub_1000492A8();
      v100 = v52;
      v101 = sub_10004A098();
      if (os_log_type_enabled(v99, v101))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v163 = v86;
        *v85 = v153;
        *(v85 + 4) = v84;
        *(v85 + 12) = 2048;
        *(v85 + 14) = v154;
        *(v85 + 22) = 2048;
        *(v85 + 24) = v44[2];
        *(v85 + 32) = 2080;
        sub_10001B1D0(&qword_10005DE38, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
        v87 = sub_10004A378();
        v89 = v88;
        (*v155)(v161, v100);
        v90 = sub_10003C4F8(v87, v89, &v163);
        v77 = v161;

        *(v85 + 34) = v90;
        _os_log_impl(&_mh_execute_header, v99, v101, "categoryRatiosPerHour hourIndex %ld not in range. numberOfHours: %ld result.count: %ld graphInterval: %s", v85, 0x2Au);
        sub_100002890(v86);
      }

      else
      {

        (*v155)(v77, v100);
      }

      v52 = v100;
      goto LABEL_30;
    }

    v91 = *&v157[8 * v84];
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001660C(v44);
      v44 = result;
    }

    if (v84 >= v44[2])
    {
      break;
    }

    v92 = v44 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v84;
    v93 = *(v162 + 28);
    v94 = *(v92 + v93);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *(v92 + v93) = v94;
    if ((v95 & 1) == 0)
    {
      v94 = sub_1000232F8(0, *(v94 + 2) + 1, 1, v94);
      *(v92 + v93) = v94;
    }

    v97 = *(v94 + 2);
    v96 = *(v94 + 3);
    if (v97 >= v96 >> 1)
    {
      v94 = sub_1000232F8((v96 > 1), v97 + 1, 1, v94);
      *(v92 + v93) = v94;
    }

    v77 = v161;
    *(v94 + 2) = v97 + 1;
    *&v94[8 * v97 + 32] = v91;
    v164 = v44;
    swift_endAccess();
LABEL_30:
    if (v83 == ++v84)
    {
      goto LABEL_25;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_10001A570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A65C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100049058();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10001A71C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100049058();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001A7C0(uint64_t a1)
{
  sub_10001A86C(319);
  if (v1 <= 0x3F)
  {
    sub_10001A8D4(319);
    if (v2 <= 0x3F)
    {
      sub_100049058();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A86C(uint64_t a1)
{
  if (!qword_10005DEA8)
  {
    sub_10001B134(255, &qword_10005DDB8, STUsageDetailItem_ptr);
    v1 = sub_100049F78();
    if (!v2)
    {
      atomic_store(v1, &qword_10005DEA8);
    }
  }
}

void sub_10001A8D4(uint64_t a1)
{
  if (!qword_10005DEB0)
  {
    sub_100003634(&qword_10005DDC0, &qword_10004B8B8);
    v1 = sub_100049F78();
    if (!v2)
    {
      atomic_store(v1, &qword_10005DEB0);
    }
  }
}

uint64_t sub_10001A938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001A99C()
{
  v1 = sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001AA30(uint64_t a1)
{
  sub_1000027D4(&qword_10005DEF0, &unk_10004B910);

  return sub_10000B78C(a1);
}

uint64_t sub_10001AAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001AB1C()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10001ABF4()
{
  v1 = *(sub_100049CB8() - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));
  v10 = *(v9 + *(v1 + 64));

  return sub_10000B840(v2, v3, v4, v7, v8, v9, v10, v5, v6);
}

uint64_t sub_10001AC84()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10001AD88()
{
  v1 = *(sub_100049CB8() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10000C3B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + v3), *(v0 + v3 + 8), v0 + v2, *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10001AE40()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10001AF4C(uint64_t a1, void *a2, int a3, __int16 a4)
{
  v9 = *(sub_100049CB8() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_10000E290(a1, a2, a3, a4 & 0x101, v4[2], *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), v4[3], v4[4], v4 + v10, *(v4 + v11), *(v4 + v12), *(v4 + v12 + 8), *(v4 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10001B048()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001B0D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B134(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10001B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005DF18;
  if (!qword_10005DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DF18);
  }

  return result;
}

uint64_t sub_10001B1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B2B8()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DF38);
  sub_1000143C0(v0, qword_10005DF38);
  return sub_1000492B8();
}

id sub_10001B42C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001B484(uint64_t a1)
{
  if (qword_10005D6A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000492C8();
  sub_1000143C0(v2, qword_10005DF38);
  v3 = sub_1000492A8();
  v4 = sub_10004A0A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "provide user options collection", v5, 2u);
  }

  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  v6 = qword_100060290;
  v7 = type metadata accessor for XPCPersistentStoreManager();
  v37[3] = v7;
  v37[4] = &off_10005AA70;
  v37[0] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = *sub_1000028DC(v37, v7);
  swift_retain_n();

  sub_1000345C4();
  if (*(v9 + 24) == 1)
  {
    v10 = [*(v9 + 16) newBackgroundContext];
    [v10 setAutomaticallyMergesChangesFromParent:1];
    [v10 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v11 = swift_allocObject();
    v11[2] = sub_10001C210;
    v11[3] = v8;
    v11[4] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10001C280;
    *(v12 + 24) = v11;
    aBlock[4] = sub_10001C278;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003BBCC;
    aBlock[3] = &unk_10005A520;
    v13 = _Block_copy(aBlock);

    v14 = v10;

    [v14 performBlockAndWait:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_1000406C8(v8);

LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 16);

  sub_100002890(v37);
  v16 = *(v15 + 16);
  if (v16)
  {
    v37[0] = _swiftEmptyArrayStorage;
    sub_10004A248();
    type metadata accessor for STUser();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = (v15 + 57);
    do
    {
      v28 = *(v17 - 25);
      v29 = *v17;
      v30 = *(v17 - 17) == 1701736270 && *(v17 - 9) == 0xE400000000000000;
      if (v30 || (sub_10004A398() & 1) != 0)
      {
        v18 = objc_opt_self();

        v19 = v28;
        v20 = [v18 mainBundle];
        v38._object = 0x80000001000539B0;
        v38._countAndFlagsBits = 0xD000000000000016;
        v39.value._countAndFlagsBits = 0;
        v39.value._object = 0;
        v21.super.isa = v20;
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        sub_100048EC8(v38, v39, v21, v40, 0, 0xE000000000000000);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v31 = v28;
      }

      v22 = [v28 stringValue];
      sub_100049E08();

      v23 = objc_allocWithZone(ObjCClassFromMetadata);
      v24 = sub_100049DF8();

      v25 = sub_100049DF8();

      v26 = [v23 initWithIdentifier:v24 displayString:v25];

      v27 = [objc_allocWithZone(NSNumber) initWithBool:v29];
      [v26 setIsRemote:v27];

      sub_10004A218();
      sub_10004A258();
      sub_10004A268();
      sub_10004A228();
      v17 += 32;
      --v16;
    }

    while (v16);
  }

  v32 = objc_allocWithZone(INObjectCollection);
  type metadata accessor for STUser();
  isa = sub_100049F48().super.isa;

  v34 = [v32 initWithItems:isa];

  (*(a1 + 16))(a1, v34, 0);
}

id sub_10001BAB8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2 == 1701736270 && a3 == 0xE400000000000000;
  if (v6 || (sub_10004A398() & 1) != 0)
  {
    v7 = [objc_opt_self() mainBundle];
    v16._object = 0x80000001000539B0;
    v16._countAndFlagsBits = 0xD000000000000016;
    v17.value._countAndFlagsBits = 0;
    v17.value._object = 0;
    v8.super.isa = v7;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_100048EC8(v16, v17, v8, v18, 0, 0xE000000000000000);
  }

  else
  {
  }

  type metadata accessor for STUser();
  v9 = [a1 stringValue];
  sub_100049E08();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_100049DF8();

  v12 = sub_100049DF8();

  v13 = [v10 initWithIdentifier:v11 displayString:v12];

  v14 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  [v13 setIsRemote:v14];

  return v13;
}

id sub_10001BC8C()
{
  if (qword_10005D6A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000492C8();
  sub_1000143C0(v0, qword_10005DF38);
  v1 = sub_1000492A8();
  v2 = sub_10004A0A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "get default user for widget. getting local user", v3, 2u);
  }

  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  v4 = qword_100060290;
  v5 = type metadata accessor for XPCPersistentStoreManager();
  v33[3] = v5;
  v33[4] = &off_10005AA70;
  v33[0] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v7 = *sub_1000028DC(v33, v5);
  swift_retain_n();

  sub_1000345C4();
  if (*(v7 + 24) == 1)
  {
    v8 = [*(v7 + 16) newBackgroundContext];
    [v8 setAutomaticallyMergesChangesFromParent:1];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v9 = swift_allocObject();
    v9[2] = sub_10001C138;
    v9[3] = v6;
    v9[4] = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10001B110;
    *(v10 + 24) = v9;
    v32[4] = sub_10001B12C;
    v32[5] = v10;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = sub_10003BBCC;
    v32[3] = &unk_10005A480;
    v11 = _Block_copy(v32);

    v12 = v8;

    [v12 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = sub_100040000();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  *(v6 + 16) = v13;
  *(v6 + 24) = v15;
  *(v6 + 32) = v17;
  *(v6 + 40) = v19;
  sub_10001C140(v20, v21, v22);

LABEL_11:
  swift_beginAccess();
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v25 = *(v6 + 32);
  v26 = *(v6 + 40);
  sub_10001C180(v23, v24, v25);

  sub_100002890(v33);
  if (v23)
  {
    v27 = sub_10001BAB8(v23, v24, v25, HIBYTE(v26) & 1);
  }

  else
  {
    v28 = sub_1000492A8();
    v29 = sub_10004A088();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "couldn't fetch local user to use as default user", v30, 2u);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_10001C0F4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 42, 7);
}

void *sub_10001C140(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *sub_10001C180(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

uint64_t sub_10001C1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C1D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C21C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = a1;
  v2 = sub_1000490D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100049058();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v26 = &v26 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v26 - v19;
  __chkstk_darwin(v18);
  v22 = &v26 - v21;
  sub_100049068();
  (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v2);
  sub_1000490A8();
  (*(v3 + 8))(v5, v2);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v20, v8, v9);
    sub_100049068();
    v24 = *(v10 + 16);
    v24(v26, v22, v9);
    v24(v27, v17, v9);
    sub_100048E78();
    v25 = *(v10 + 8);
    v25(v17, v9);
    v25(v20, v9);
    return (v25)(v22, v9);
  }

  return result;
}

uint64_t sub_10001C5E0(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = sub_10004A148();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = sub_100049EF8();
  v63 = sub_10004A288();
  v58 = sub_10004A298();
  sub_10004A238(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_100049EE8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_10004A168();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_10004A278();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_10004A168();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_10004A278();
      sub_10004A168();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_10001CCD4()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DF78);
  sub_1000143C0(v0, qword_10005DF78);
  return sub_1000492B8();
}

BOOL sub_10001CD54(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if (v3 == v7 && v4 == v8 || (sub_10004A398() & 1) != 0)
    {
      return v5 == v9;
    }

    return 0;
  }

  v10 = sub_10004A398();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_10001CE30()
{
  sub_10004A418();
  sub_10004A428(0);
  return sub_10004A448();
}

Swift::Int sub_10001CE9C(uint64_t a1)
{
  sub_10004A418();
  sub_10004A428(0);
  return sub_10004A448();
}

uint64_t sub_10001CEEC(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v10 + 352) = a9;
  *(v10 + 360) = v9;
  *(v10 + 81) = a8;
  *(v10 + 336) = a6;
  *(v10 + 344) = a7;
  *(v10 + 320) = a2;
  *(v10 + 328) = a3;
  *(v10 + 312) = a1;
  v11 = sub_100049548();
  *(v10 + 368) = v11;
  *(v10 + 376) = *(v11 - 8);
  *(v10 + 384) = swift_task_alloc();
  *(v10 + 392) = type metadata accessor for UsageTimelineEntry(0);
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  *(v10 + 416) = swift_task_alloc();
  *(v10 + 424) = swift_task_alloc();
  *(v10 + 432) = swift_task_alloc();
  sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  *(v10 + 440) = swift_task_alloc();
  *(v10 + 448) = swift_task_alloc();
  *(v10 + 456) = swift_task_alloc();
  *(v10 + 464) = swift_task_alloc();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  *(v10 + 496) = swift_task_alloc();
  *(v10 + 504) = swift_task_alloc();
  *(v10 + 512) = swift_task_alloc();
  sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  *(v10 + 520) = swift_task_alloc();
  *(v10 + 528) = swift_task_alloc();
  *(v10 + 536) = swift_task_alloc();
  *(v10 + 544) = swift_task_alloc();
  *(v10 + 552) = swift_task_alloc();
  *(v10 + 560) = swift_task_alloc();
  *(v10 + 568) = swift_task_alloc();
  *(v10 + 576) = swift_task_alloc();
  *(v10 + 584) = swift_task_alloc();
  *(v10 + 592) = swift_task_alloc();
  v12 = sub_100049CB8();
  *(v10 + 600) = v12;
  *(v10 + 608) = *(v12 - 8);
  *(v10 + 616) = swift_task_alloc();
  v13 = sub_100048E98();
  *(v10 + 624) = v13;
  *(v10 + 632) = *(v13 - 8);
  *(v10 + 640) = swift_task_alloc();
  *(v10 + 648) = swift_task_alloc();
  *(v10 + 656) = swift_task_alloc();
  *(v10 + 664) = swift_task_alloc();
  *(v10 + 672) = swift_task_alloc();
  *(v10 + 680) = swift_task_alloc();
  *(v10 + 688) = swift_task_alloc();
  *(v10 + 696) = swift_task_alloc();
  *(v10 + 704) = swift_task_alloc();
  *(v10 + 712) = swift_task_alloc();
  *(v10 + 720) = swift_task_alloc();
  *(v10 + 728) = swift_task_alloc();
  v14 = sub_1000490F8();
  *(v10 + 736) = v14;
  *(v10 + 744) = *(v14 - 8);
  *(v10 + 752) = swift_task_alloc();
  *(v10 + 760) = swift_task_alloc();
  *(v10 + 768) = swift_task_alloc();
  *(v10 + 776) = swift_task_alloc();
  *(v10 + 784) = swift_task_alloc();
  *(v10 + 792) = swift_task_alloc();
  v15 = sub_100049058();
  *(v10 + 800) = v15;
  *(v10 + 808) = *(v15 - 8);
  *(v10 + 816) = swift_task_alloc();
  *(v10 + 824) = swift_task_alloc();
  *(v10 + 832) = swift_task_alloc();
  *(v10 + 840) = swift_task_alloc();
  *(v10 + 848) = swift_task_alloc();
  *(v10 + 856) = swift_task_alloc();
  *(v10 + 864) = swift_task_alloc();
  *(v10 + 872) = swift_task_alloc();
  *(v10 + 880) = swift_task_alloc();
  *(v10 + 888) = swift_task_alloc();
  *(v10 + 896) = swift_task_alloc();
  *(v10 + 904) = swift_task_alloc();
  *(v10 + 912) = swift_task_alloc();
  *(v10 + 920) = swift_task_alloc();

  return _swift_task_switch(sub_10001D430, 0, 0);
}

uint64_t sub_10001D430(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);
  v5 = *(v1 + 352);
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 65) = 0u;
  sub_100049038();
  sub_1000490B8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    v7 = *(v1 + 920);
    v8 = *(v1 + 792);
    v9 = *(v1 + 728);
    v10 = 15;
    goto LABEL_5;
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:) || v6 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10001C284(*(v1 + 920), *(v1 + 728));
  }

  else
  {
    if (v6 == enum case for WidgetFamily.accessoryCircular(_:) || v6 == enum case for WidgetFamily.accessoryRectangular(_:) || v6 == enum case for WidgetFamily.accessoryInline(_:))
    {
LABEL_2:
      v7 = *(v1 + 920);
      v8 = *(v1 + 792);
      v9 = *(v1 + 728);
      v10 = 9;
LABEL_5:
      sub_100022910(v10, v7, v8, v9);
      goto LABEL_6;
    }

    v104 = *(v1 + 616);
    v105 = *(v1 + 608);
    v106 = *(v1 + 600);
    sub_10001C284(*(v1 + 920), *(v1 + 728));
    (*(v105 + 8))(v104, v106);
  }

LABEL_6:
  v11 = *(v1 + 360);
  if (*(*sub_1000028DC((v11 + 112), *(v11 + 136)) + 24))
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1000492C8();
    *(v1 + 928) = sub_1000143C0(v12, qword_10005DF78);
    v13 = sub_1000492A8();
    v14 = sub_10004A0A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully loaded persistent store.", v15, 2u);
    }

    v16 = *(v1 + 81);
    v18 = *(v1 + 336);
    v17 = *(v1 + 344);

    v19 = sub_1000028DC((v11 + 112), *(v11 + 136));
    sub_10002610C(v16, v18, v17, *v19, v1 + 88);
    sub_10002C508(v1 + 16);
    if (*(v1 + 152))
    {
      if (*(v1 + 88))
      {
        v21 = *(v1 + 112);
        v20 = *(v1 + 120);
        *(v1 + 936) = v20;
        v22 = *(v1 + 128);
        v23 = *(v1 + 136);
        *(v1 + 944) = v22;
        *(v1 + 952) = v23;
        v24 = *(v1 + 144);
        *(v1 + 960) = v24;
        v25 = *(v1 + 104);
        *(v1 + 968) = *(v1 + 96);
        *(v1 + 976) = v25;
        *(v1 + 984) = v21;

        if (v21)
        {
          v26 = [v21 integerValue] > 0;
        }

        else
        {
          v26 = 0;
        }

        *(v1 + 1000) = v24;
        *(v1 + 992) = v22;
        v148 = swift_task_alloc();
        *(v1 + 1008) = v148;
        *v148 = v1;
        v148[1] = sub_10001ECF0;

        return sub_10002625C((v24 != 0) & v26, v21, v20, v22, v23, v24);
      }

      v94 = sub_1000492A8();
      v95 = sub_10004A0A8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "ScreenTime is disabled.", v96, 2u);
      }

      v97 = *(v1 + 808);
      v98 = *(v1 + 800);
      v99 = *(v1 + 560);

      (*(v97 + 56))(v99, 1, 1, v98);
      v100 = *(v1 + 112);
      v232 = v100;
      if (v100)
      {
        v101 = [v100 stringValue];
        v102 = sub_100049E08();
        v223 = v103;
        v228 = v102;
      }

      else
      {
        v223 = 0;
        v228 = 0;
      }

      v150 = *(v1 + 808);
      v151 = *(v1 + 728);
      v152 = *(v1 + 688);
      v153 = *(v1 + 632);
      v154 = *(v1 + 624);
      v213 = *(v1 + 560);
      v219 = *(v1 + 800);
      v155 = *(v1 + 552);
      v156 = *(v1 + 416);
      (*(v153 + 56))(*(v1 + 480), 1, 1, v154);
      (*(v153 + 16))(v152, v151, v154);
      sub_100049038();
      sub_1000490B8();
      *v156 = 0;
      sub_1000055FC(v213, v155, &qword_10005DC10, &qword_10004B7C0);
      v157 = *(v150 + 48);
      if (v157(v155, 1, v219) == 1)
      {
        v158 = *(v1 + 800);
        v159 = *(v1 + 552);
        (*(*(v1 + 808) + 16))(*(v1 + 872), *(v1 + 880), v158);
        if (v157(v159, 1, v158) != 1)
        {
          sub_100005664(*(v1 + 552), &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(*(v1 + 808) + 32))(*(v1 + 872), *(v1 + 552), *(v1 + 800));
      }

      v160 = *(v1 + 632);
      v161 = *(v1 + 624);
      v163 = *(v1 + 472);
      v162 = *(v1 + 480);
      v164 = *(v1 + 416);
      v165 = *(v1 + 392);
      v167 = *(v1 + 320);
      v166 = *(v1 + 328);
      v168 = (v164 + v165[6]);
      v169 = (v164 + v165[8]);
      (*(*(v1 + 808) + 32))(v164 + v165[5], *(v1 + 872), *(v1 + 800));
      *v168 = 0;
      v168[1] = 0;
      v170 = (v164 + v165[7]);
      *v170 = v167;
      v170[1] = v166;
      *v169 = v228;
      v169[1] = v223;
      sub_1000055FC(v162, v163, &qword_10005DE00, &qword_10004B8D8);
      v196 = *(v160 + 48);
      v171 = v196(v163, 1, v161);
      v172 = *(v1 + 880);
      v173 = *(v1 + 808);
      v214 = *(v1 + 920);
      v220 = *(v1 + 792);
      v174 = *(v1 + 768);
      v175 = *(v1 + 744);
      v176 = *(v1 + 736);
      v209 = *(v1 + 728);
      v177 = *(v1 + 632);
      v201 = *(v1 + 800);
      v205 = *(v1 + 560);
      v178 = *(v1 + 480);
      v225 = *(v1 + 472);
      v229 = *(v1 + 624);
      if (v171 == 1)
      {
        sub_10001C284(v172, *(v1 + 680));
        v179 = *(v175 + 8);
        v179(v174, v176);
        v180 = *(v173 + 8);
        v180(v172, v201);
        sub_100005664(v178, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v205, &qword_10005DC10, &qword_10004B7C0);
        (*(v177 + 8))(v209, v229);
        v179(v220, v176);
        v180(v214, v201);
        if (v196(v225, 1, v229) != 1)
        {
          sub_100005664(*(v1 + 472), &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        v181 = *(v175 + 8);
        v197 = *(v1 + 680);
        v181(v174, v176);
        v182 = *(v173 + 8);
        v182(v172, v201);
        sub_100005664(v178, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v205, &qword_10005DC10, &qword_10004B7C0);
        (*(v177 + 8))(v209, v229);
        v181(v220, v176);
        v182(v214, v201);
        (*(v177 + 32))(v197, v225, v229);
      }

      v183 = *(v1 + 688);
      v184 = *(v1 + 624);
      v185 = *(v1 + 416);
      v186 = *(v1 + 392);
      v187 = *(v1 + 81);
      v188 = *(v1 + 312);
      v189 = v186[18];
      v190 = *(*(v1 + 632) + 32);
      v190(v185 + v186[9], *(v1 + 680), v184);
      v190(v185 + v186[10], v183, v184);
      *(v185 + v186[11]) = _swiftEmptyArrayStorage;
      *(v185 + v186[12]) = v187;
      *(v185 + v186[13]) = _swiftEmptyArrayStorage;
      *(v185 + v186[14]) = 0;
      *(v185 + v186[15]) = 0;
      *(v185 + v186[16]) = _swiftEmptyArrayStorage;
      *(v185 + v186[17]) = 0;
      *(v185 + v189) = 0;
      sub_10002C4A0(v185, v188, type metadata accessor for UsageTimelineEntry);
      v84 = 0;
      v91 = *(v1 + 136);
      v92 = *(v1 + 144);
      v89 = *(v1 + 120);
      v90 = *(v1 + 128);
      v86 = *(v1 + 96);
      v87 = *(v1 + 104);
      v93 = 1;
      v85 = *(v1 + 89);
      v88 = v232;
    }

    else
    {
      v226 = *(v1 + 88);
      v43 = sub_1000492A8();
      v44 = sub_10004A088();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed to fetch user. Returning placeholder timeline entry.", v45, 2u);
      }

      v46 = *(v1 + 808);
      v47 = *(v1 + 800);
      v48 = *(v1 + 576);

      (*(v46 + 56))(v48, 1, 1, v47);
      v49 = *(v1 + 112);
      v230 = v49;
      if (v49)
      {
        v50 = [v49 stringValue];
        v51 = sub_100049E08();
        v210 = v52;
        v216 = v51;
      }

      else
      {
        v210 = 0;
        v216 = 0;
      }

      v107 = *(v1 + 808);
      v108 = *(v1 + 728);
      v109 = *(v1 + 704);
      v110 = *(v1 + 632);
      v111 = *(v1 + 624);
      v203 = *(v1 + 576);
      v207 = *(v1 + 800);
      v112 = *(v1 + 568);
      v113 = *(v1 + 424);
      v114 = *(v1 + 81);
      (*(v110 + 56))(*(v1 + 496), 1, 1, v111);
      (*(v110 + 16))(v109, v108, v111);
      sub_100049038();
      sub_1000490B8();
      v224 = v114;
      *v113 = v114;
      sub_1000055FC(v203, v112, &qword_10005DC10, &qword_10004B7C0);
      v115 = *(v107 + 48);
      if (v115(v112, 1, v207) == 1)
      {
        v116 = *(v1 + 800);
        v117 = *(v1 + 568);
        (*(*(v1 + 808) + 16))(*(v1 + 888), *(v1 + 896), v116);
        if (v115(v117, 1, v116) != 1)
        {
          sub_100005664(*(v1 + 568), &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(*(v1 + 808) + 32))(*(v1 + 888), *(v1 + 568), *(v1 + 800));
      }

      v118 = *(v1 + 632);
      v119 = *(v1 + 624);
      v121 = *(v1 + 488);
      v120 = *(v1 + 496);
      v122 = *(v1 + 424);
      v123 = *(v1 + 392);
      v125 = *(v1 + 320);
      v124 = *(v1 + 328);
      v126 = (v122 + v123[6]);
      v127 = (v122 + v123[8]);
      (*(*(v1 + 808) + 32))(v122 + v123[5], *(v1 + 888), *(v1 + 800));
      *v126 = 0;
      v126[1] = 0;
      v128 = (v122 + v123[7]);
      *v128 = v125;
      v128[1] = v124;
      *v127 = v216;
      v127[1] = v210;
      sub_1000055FC(v120, v121, &qword_10005DE00, &qword_10004B8D8);
      v192 = *(v118 + 48);
      v129 = v192(v121, 1, v119);
      v130 = *(v1 + 896);
      v131 = *(v1 + 808);
      v204 = *(v1 + 920);
      v208 = *(v1 + 792);
      v132 = *(v1 + 776);
      v133 = *(v1 + 744);
      v134 = *(v1 + 736);
      v200 = *(v1 + 728);
      v135 = *(v1 + 632);
      v194 = *(v1 + 800);
      v195 = *(v1 + 576);
      v136 = *(v1 + 496);
      v212 = *(v1 + 488);
      v218 = *(v1 + 624);
      if (v129 == 1)
      {
        sub_10001C284(v130, *(v1 + 696));
        v137 = *(v133 + 8);
        v137(v132, v134);
        v138 = *(v131 + 8);
        v138(v130, v194);
        sub_100005664(v136, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v195, &qword_10005DC10, &qword_10004B7C0);
        (*(v135 + 8))(v200, v218);
        v137(v208, v134);
        v138(v204, v194);
        if (v192(v212, 1, v218) != 1)
        {
          sub_100005664(*(v1 + 488), &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        v139 = *(v133 + 8);
        v193 = *(v1 + 696);
        v139(v132, v134);
        v140 = *(v131 + 8);
        v140(v130, v194);
        sub_100005664(v136, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v195, &qword_10005DC10, &qword_10004B7C0);
        (*(v135 + 8))(v200, v218);
        v139(v208, v134);
        v140(v204, v194);
        (*(v135 + 32))(v193, v212, v218);
      }

      v141 = *(v1 + 704);
      v142 = *(v1 + 624);
      v143 = *(v1 + 424);
      v144 = *(v1 + 392);
      v145 = *(v1 + 312);
      v146 = v144[18];
      v147 = *(*(v1 + 632) + 32);
      v147(v143 + v144[9], *(v1 + 696), v142);
      v147(v143 + v144[10], v141, v142);
      *(v143 + v144[11]) = _swiftEmptyArrayStorage;
      *(v143 + v144[12]) = v224;
      *(v143 + v144[13]) = _swiftEmptyArrayStorage;
      *(v143 + v144[14]) = 0;
      *(v143 + v144[15]) = 0;
      *(v143 + v144[16]) = _swiftEmptyArrayStorage;
      *(v143 + v144[17]) = 0;
      *(v143 + v146) = 0;
      sub_10002C4A0(v143, v145, type metadata accessor for UsageTimelineEntry);
      v93 = 0;
      v91 = *(v1 + 136);
      v92 = *(v1 + 144);
      v89 = *(v1 + 120);
      v90 = *(v1 + 128);
      v86 = *(v1 + 96);
      v87 = *(v1 + 104);
      v85 = *(v1 + 89);
      v88 = v230;
      v84 = v226;
    }
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1000492C8();
    sub_1000143C0(v27, qword_10005DF78);
    v28 = sub_1000492A8();
    v29 = sub_10004A088();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to initialize persistent store. This prevented fetching user. Returning placeholder timeline entry", v30, 2u);
    }

    v31 = *(v1 + 808);
    v32 = *(v1 + 800);
    v33 = *(v1 + 720);
    v34 = *(v1 + 632);
    v35 = *(v1 + 624);
    v36 = *(v1 + 592);
    v37 = *(v1 + 584);
    v38 = *(v1 + 512);
    v215 = *(v1 + 728);
    v221 = *(v1 + 432);

    (*(v31 + 56))(v36, 1, 1, v32);
    (*(v34 + 56))(v38, 1, 1, v35);
    (*(v34 + 16))(v33, v215, v35);
    sub_100049038();
    sub_1000490B8();
    *v221 = 0;
    sub_1000055FC(v36, v37, &qword_10005DC10, &qword_10004B7C0);
    v39 = *(v31 + 48);
    if (v39(v37, 1, v32) == 1)
    {
      v40 = *(v1 + 800);
      v41 = *(v1 + 584);
      (*(*(v1 + 808) + 16))(*(v1 + 904), *(v1 + 912), v40);
      if (v39(v41, 1, v40) != 1)
      {
        sub_100005664(*(v1 + 584), &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(*(v1 + 808) + 32))(*(v1 + 904), *(v1 + 584), *(v1 + 800));
    }

    v53 = *(v1 + 632);
    v54 = *(v1 + 624);
    v56 = *(v1 + 504);
    v55 = *(v1 + 512);
    v57 = *(v1 + 432);
    v58 = *(v1 + 392);
    v60 = *(v1 + 320);
    v59 = *(v1 + 328);
    v61 = (v57 + v58[6]);
    v62 = (v57 + v58[8]);
    (*(*(v1 + 808) + 32))(v57 + v58[5], *(v1 + 904), *(v1 + 800));
    *v61 = 0;
    v61[1] = 0;
    v63 = (v57 + v58[7]);
    *v63 = v60;
    v63[1] = v59;
    *v62 = 0;
    v62[1] = 0;
    sub_1000055FC(v55, v56, &qword_10005DE00, &qword_10004B8D8);
    v198 = *(v53 + 48);
    v64 = v198(v56, 1, v54);
    v65 = *(v1 + 912);
    v66 = *(v1 + 808);
    v217 = *(v1 + 920);
    v222 = *(v1 + 792);
    v67 = *(v1 + 784);
    v68 = *(v1 + 744);
    v69 = *(v1 + 736);
    v211 = *(v1 + 728);
    v70 = *(v1 + 632);
    v202 = *(v1 + 800);
    v206 = *(v1 + 592);
    v71 = *(v1 + 512);
    v227 = *(v1 + 504);
    v231 = *(v1 + 624);
    if (v64 == 1)
    {
      sub_10001C284(v65, *(v1 + 712));
      v72 = *(v68 + 8);
      v72(v67, v69);
      v73 = *(v66 + 8);
      v73(v65, v202);
      sub_100005664(v71, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v206, &qword_10005DC10, &qword_10004B7C0);
      (*(v70 + 8))(v211, v231);
      v72(v222, v69);
      v73(v217, v202);
      if (v198(v227, 1, v231) != 1)
      {
        sub_100005664(*(v1 + 504), &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v74 = *(v68 + 8);
      v199 = *(v1 + 712);
      v74(v67, v69);
      v75 = *(v66 + 8);
      v75(v65, v202);
      sub_100005664(v71, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v206, &qword_10005DC10, &qword_10004B7C0);
      (*(v70 + 8))(v211, v231);
      v74(v222, v69);
      v75(v217, v202);
      (*(v70 + 32))(v199, v227, v231);
    }

    v76 = *(v1 + 720);
    v77 = *(v1 + 624);
    v78 = *(v1 + 432);
    v79 = *(v1 + 392);
    v80 = *(v1 + 81);
    v81 = *(v1 + 312);
    v82 = v79[18];
    v83 = *(*(v1 + 632) + 32);
    v83(v78 + v79[9], *(v1 + 712), v77);
    v83(v78 + v79[10], v76, v77);
    *(v78 + v79[11]) = _swiftEmptyArrayStorage;
    *(v78 + v79[12]) = v80;
    *(v78 + v79[13]) = _swiftEmptyArrayStorage;
    *(v78 + v79[14]) = 0;
    *(v78 + v79[15]) = 0;
    *(v78 + v79[16]) = _swiftEmptyArrayStorage;
    *(v78 + v79[17]) = 0;
    *(v78 + v82) = 0;
    sub_10002C4A0(v78, v81, type metadata accessor for UsageTimelineEntry);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
  }

  *(v1 + 160) = v84;
  *(v1 + 161) = v85;
  *(v1 + 168) = v86;
  *(v1 + 176) = v87;
  *(v1 + 184) = v88;
  *(v1 + 192) = v89;
  *(v1 + 200) = v90;
  *(v1 + 208) = v91;
  *(v1 + 216) = v92;
  *(v1 + 224) = v93;
  sub_10002C508(v1 + 160);

  v191 = *(v1 + 8);

  return v191();
}

uint64_t sub_10001ECF0(uint64_t a1)
{
  *(*v1 + 1016) = a1;

  return _swift_task_switch(sub_10001EE2C, 0, 0);
}

uint64_t sub_10001EE2C(uint64_t a1)
{
  v2 = sub_1000492A8();
  v3 = sub_10004A078();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch device activity started", v4, 2u);
  }

  v5 = *(v1 + 864);
  v21 = *(v1 + 920);
  v22 = *(v1 + 856);
  v6 = *(v1 + 808);
  v7 = *(v1 + 800);
  v23 = *(v1 + 848);
  v9 = *(v1 + 376);
  v8 = *(v1 + 384);
  v10 = *(v1 + 368);
  v24 = *(v1 + 360);
  v11 = *(v1 + 352);

  (*(v9 + 104))(v8, enum case for DynamicTypeSize.large(_:), v10);
  v12 = sub_10002053C(v11, v8);
  (*(v9 + 8))(v8, v10);
  *(v1 + 82) = sub_100020884();
  sub_100049068();
  v13 = *(v6 + 16);
  *(v1 + 1024) = v13;
  *(v1 + 1032) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v22, v5, v7);
  v13(v23, v21, v7);
  sub_100048E78();
  v14 = *(v6 + 8);
  *(v1 + 1040) = v14;
  *(v1 + 1048) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v5, v7);
  sub_10001A938(v24 + 16, v1 + 232);
  sub_10001A938(v24 + 72, v1 + 272);
  v15 = swift_task_alloc();
  *(v1 + 1056) = v15;
  *v15 = v1;
  v15[1] = sub_10001F0B0;
  v16 = *(v1 + 976);
  v17 = *(v1 + 968);
  v18 = *(v1 + 728);
  v19 = *(v1 + 672);

  return sub_1000218AC(v17, v16, v18, v19, v12);
}

uint64_t sub_10001F0B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v5;
  v7 = *(*v5 + 672);
  v8 = *(*v5 + 632);
  v9 = *(*v5 + 624);
  *(v6 + 1064) = a1;
  *(v6 + 1072) = a2;
  *(v6 + 1080) = a3;
  *(v6 + 1088) = a4;
  *(v6 + 1096) = v4;

  sub_100002890((v6 + 272));
  sub_100002890((v6 + 232));
  v10 = *(v8 + 8);
  *(v6 + 1104) = v10;
  *(v6 + 1112) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);
  if (v4)
  {
    v11 = sub_10001FBB0;
  }

  else
  {
    v11 = sub_10001F284;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10001F284()
{
  v1 = *(v0 + 984);
  (*(*(v0 + 808) + 56))(*(v0 + 544), 1, 1, *(v0 + 800));
  if (v1)
  {
    v2 = [*(v0 + 984) stringValue];
    v69 = sub_100049E08();
    v4 = v3;
  }

  else
  {
    v69 = 0;
    v4 = 0;
  }

  v5 = *(v0 + 82);
  v6 = *(v0 + 728);
  v7 = *(v0 + 664);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  (*(v8 + 56))(*(v0 + 464), 1, 1, v9);
  (*(v8 + 16))(v7, v6, v9);
  if (v5)
  {
    v72 = *(v0 + 1064);
  }

  else
  {

    v72 = _swiftEmptyArrayStorage;
  }

  v10 = *(v0 + 808);
  v11 = *(v0 + 800);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 408);
  sub_100049038();
  sub_1000490B8();
  *v14 = 0;
  sub_1000055FC(v12, v13, &qword_10005DC10, &qword_10004B7C0);
  v15 = *(v10 + 48);
  if (v15(v13, 1, v11) == 1)
  {
    v16 = *(v0 + 800);
    v17 = *(v0 + 536);
    (*(v0 + 1024))(*(v0 + 832), *(v0 + 840), v16);
    if (v15(v17, 1, v16) != 1)
    {
      sub_100005664(*(v0 + 536), &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(*(v0 + 808) + 32))(*(v0 + 832), *(v0 + 536), *(v0 + 800));
  }

  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  v21 = *(v0 + 456);
  v20 = *(v0 + 464);
  v22 = *(v0 + 408);
  v23 = *(v0 + 392);
  v25 = *(v0 + 320);
  v24 = *(v0 + 328);
  v26 = (v22 + v23[6]);
  v27 = (v22 + v23[8]);
  (*(*(v0 + 808) + 32))(v22 + v23[5], *(v0 + 832), *(v0 + 800));
  *v26 = 0;
  v26[1] = 0;
  v28 = (v22 + v23[7]);
  *v28 = v25;
  v28[1] = v24;
  *v27 = v69;
  v27[1] = v4;
  sub_1000055FC(v20, v21, &qword_10005DE00, &qword_10004B8D8);
  v29 = *(v18 + 48);
  v30 = v29(v21, 1, v19);
  v65 = *(v0 + 1104);
  v67 = *(v0 + 920);
  v70 = *(v0 + 1040);
  v31 = *(v0 + 840);
  v32 = *(v0 + 800);
  v33 = *(v0 + 760);
  v34 = *(v0 + 744);
  v35 = *(v0 + 736);
  v63 = *(v0 + 728);
  v64 = *(v0 + 792);
  if (v30 == 1)
  {
    v55 = *(v0 + 544);
    v57 = *(v0 + 624);
    v61 = v29;
    v36 = *(v0 + 464);
    v59 = *(v0 + 456);
    sub_10001C284(v31, *(v0 + 656));
    v37 = *(v34 + 8);
    v37(v33, v35);
    v70(v31, v32);
    sub_100005664(v36, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v55, &qword_10005DC10, &qword_10004B7C0);
    v65(v63, v57);
    v37(v64, v35);
    v70(v67, v32);
    if (v61(v59, 1, v57) != 1)
    {
      sub_100005664(*(v0 + 456), &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v38 = *(v0 + 632);
    v56 = *(v0 + 544);
    v58 = *(v0 + 624);
    v39 = *(v0 + 464);
    v60 = *(v0 + 656);
    v62 = *(v0 + 456);
    v40 = *(v34 + 8);
    v40(v33, v35);
    v70(v31, v32);
    sub_100005664(v39, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v56, &qword_10005DC10, &qword_10004B7C0);
    v65(v63, v58);
    v40(v64, v35);
    v70(v67, v32);
    (*(v38 + 32))(v60, v62, v58);
  }

  v41 = *(v0 + 1088);
  v42 = *(v0 + 1080);
  v43 = *(v0 + 1072);
  v44 = *(v0 + 664);
  v45 = *(v0 + 624);
  v46 = *(v0 + 408);
  v47 = *(v0 + 392);
  v48 = *(v0 + 81);
  v68 = *(v0 + 312);
  v71 = *(v0 + 1016);
  v66 = v47[18];
  v49 = *(*(v0 + 632) + 32);
  v49(v46 + v47[9], *(v0 + 656), v45);
  v49(v46 + v47[10], v44, v45);
  *(v46 + v47[11]) = v43;
  *(v46 + v47[12]) = v48;
  *(v46 + v47[13]) = v42;
  *(v46 + v47[14]) = 0;
  *(v46 + v47[15]) = 1;
  *(v46 + v47[16]) = v72;
  *(v46 + v47[17]) = v41;
  *(v46 + v66) = v71;
  sub_10002C4A0(v46, v68, type metadata accessor for UsageTimelineEntry);
  v50 = *(v0 + 984);
  *(v0 + 161) = *(v0 + 89);
  *(v0 + 184) = v50;
  v51 = *(v0 + 952);
  *(v0 + 168) = *(v0 + 968);
  v52 = *(v0 + 936);
  *(v0 + 160) = 1;
  *(v0 + 224) = 1;
  *(v0 + 192) = v52;
  *(v0 + 208) = v51;
  sub_10002C508(v0 + 160);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10001FBB0(uint64_t a1)
{
  v2 = sub_1000492A8();
  v3 = sub_10004A088();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get hourly usage. Returning placeholder timeline entry.", v4, 2u);
  }

  v5 = *(v1 + 984);
  v6 = *(v1 + 808);
  v7 = *(v1 + 800);
  v8 = *(v1 + 528);

  (*(v6 + 56))(v8, 1, 1, v7);
  if (v5)
  {
    v9 = [*(v1 + 984) stringValue];
    v10 = sub_100049E08();
    v69 = v11;
    v71 = v10;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v12 = *(v1 + 808);
  v74 = *(v1 + 800);
  v13 = *(v1 + 728);
  v14 = *(v1 + 648);
  v15 = *(v1 + 632);
  v16 = *(v1 + 624);
  v68 = *(v1 + 528);
  v17 = *(v1 + 520);
  v18 = *(v1 + 400);
  (*(v15 + 56))(*(v1 + 448), 1, 1, v16);
  (*(v15 + 16))(v14, v13, v16);
  sub_100049038();
  sub_1000490B8();
  *v18 = 0;
  sub_1000055FC(v68, v17, &qword_10005DC10, &qword_10004B7C0);
  v19 = *(v12 + 48);
  if (v19(v17, 1, v74) == 1)
  {
    v20 = *(v1 + 800);
    v21 = *(v1 + 520);
    (*(v1 + 1024))(*(v1 + 816), *(v1 + 824), v20);
    if (v19(v21, 1, v20) != 1)
    {
      sub_100005664(*(v1 + 520), &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(*(v1 + 808) + 32))(*(v1 + 816), *(v1 + 520), *(v1 + 800));
  }

  v22 = *(v1 + 632);
  v23 = *(v1 + 624);
  v25 = *(v1 + 440);
  v24 = *(v1 + 448);
  v27 = *(v1 + 392);
  v26 = *(v1 + 400);
  v29 = *(v1 + 320);
  v28 = *(v1 + 328);
  v30 = (v26 + v27[6]);
  v31 = (v26 + v27[8]);
  (*(*(v1 + 808) + 32))(v26 + v27[5], *(v1 + 816), *(v1 + 800));
  *v30 = 0;
  v30[1] = 0;
  v32 = (v26 + v27[7]);
  *v32 = v29;
  v32[1] = v28;
  *v31 = v71;
  v31[1] = v69;
  sub_1000055FC(v24, v25, &qword_10005DE00, &qword_10004B8D8);
  v33 = *(v22 + 48);
  v34 = v33(v25, 1, v23);
  v67 = *(v1 + 1104);
  v70 = *(v1 + 920);
  v72 = *(v1 + 1040);
  v35 = *(v1 + 824);
  v36 = *(v1 + 800);
  v37 = *(v1 + 752);
  v38 = *(v1 + 744);
  v39 = *(v1 + 736);
  v65 = *(v1 + 728);
  v66 = *(v1 + 792);
  if (v34 == 1)
  {
    v59 = *(v1 + 528);
    v61 = *(v1 + 624);
    v57 = *(v1 + 448);
    v63 = *(v1 + 440);
    sub_10001C284(v35, *(v1 + 640));

    v40 = *(v38 + 8);
    v40(v37, v39);
    v72(v35, v36);
    sub_100005664(v57, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v59, &qword_10005DC10, &qword_10004B7C0);
    v67(v65, v61);
    v40(v66, v39);
    v72(v70, v36);
    if (v33(v63, 1, v61) != 1)
    {
      sub_100005664(*(v1 + 440), &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v41 = *(v1 + 632);
    v58 = *(v1 + 528);
    v60 = *(v1 + 624);
    v42 = *(v1 + 448);
    v62 = *(v1 + 640);
    v64 = *(v1 + 440);

    v43 = *(v38 + 8);
    v43(v37, v39);
    v72(v35, v36);
    sub_100005664(v42, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v58, &qword_10005DC10, &qword_10004B7C0);
    v67(v65, v60);
    v43(v66, v39);
    v72(v70, v36);
    (*(v41 + 32))(v62, v64, v60);
  }

  v73 = *(v1 + 1016);
  v44 = *(v1 + 648);
  v45 = *(v1 + 624);
  v47 = *(v1 + 392);
  v46 = *(v1 + 400);
  v48 = *(v1 + 81);
  v49 = *(v1 + 312);
  v50 = v47[18];
  v51 = *(*(v1 + 632) + 32);
  v51(v46 + v47[9], *(v1 + 640), v45);
  v51(v46 + v47[10], v44, v45);
  *(v46 + v47[11]) = _swiftEmptyArrayStorage;
  *(v46 + v47[12]) = v48;
  *(v46 + v47[13]) = _swiftEmptyArrayStorage;
  *(v46 + v47[14]) = 0;
  *(v46 + v47[15]) = 1;
  *(v46 + v47[16]) = _swiftEmptyArrayStorage;
  *(v46 + v47[17]) = 0;
  *(v46 + v50) = v73;
  sub_10002C4A0(v46, v49, type metadata accessor for UsageTimelineEntry);
  v52 = *(v1 + 984);
  *(v1 + 161) = *(v1 + 89);
  *(v1 + 184) = v52;
  v53 = *(v1 + 952);
  *(v1 + 168) = *(v1 + 968);
  v54 = *(v1 + 936);
  *(v1 + 160) = 1;
  *(v1 + 224) = 1;
  *(v1 + 192) = v54;
  *(v1 + 208) = v53;
  sub_10002C508(v1 + 160);

  v55 = *(v1 + 8);

  return v55();
}

uint64_t sub_10002053C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049548();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049CB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 0;
  }

  if (v11 == enum case for WidgetFamily.systemMedium(_:))
  {
    (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
    sub_10002C538(&qword_10005E228, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v13 = sub_100049DC8();
    (*(v4 + 8))(v6, v3);
    if (v13)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (v11 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v11 != enum case for WidgetFamily.systemExtraLarge(_:) && v11 != enum case for WidgetFamily.accessoryCircular(_:) && v11 != enum case for WidgetFamily.accessoryRectangular(_:) && v11 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v10, v7);
      }

      return 0;
    }

    (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
    sub_10002C538(&qword_10005E228, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v14 = sub_100049DC8();
    (*(v4 + 8))(v6, v3);
    if (v14)
    {
      return 4;
    }

    else
    {
      return 6;
    }
  }
}

BOOL sub_100020884()
{
  v0 = sub_100049CB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, enum case for WidgetFamily.systemLarge(_:), v0);
  sub_10002C538(&qword_10005DE08, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v8 == v7)
  {
    return 1;
  }

  v4(v3, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_100049F38();
  sub_100049F38();
  v5(v3, v0);
  return v8 == v7;
}

void sub_100020A60(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 screenTimeEnabled];
    swift_beginAccess();
    *(a2 + 16) = v4;
    v5 = [v3 altDSID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_100049E08();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    swift_beginAccess();
    *(a2 + 24) = v7;
    *(a2 + 32) = v9;

    v13 = [v3 dsid];
    swift_beginAccess();
    v14 = *(a2 + 40);
    *(a2 + 40) = v13;

    v15 = [v3 localizedFullName];
    v16 = sub_100049E08();
    v18 = v17;

    swift_beginAccess();
    *(a2 + 48) = v16;
    *(a2 + 56) = v18;

    v19 = [v3 appleID];
    if (v19)
    {
      v20 = v19;
      v21 = sub_100049E08();
      v23 = v22;
    }

    else
    {

      v21 = 0;
      v23 = 0;
    }

    swift_beginAccess();
    *(a2 + 64) = v21;
    *(a2 + 72) = v23;
    *(a2 + 80) = 1;
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1000492C8();
    sub_1000143C0(v10, qword_10005DF78);
    oslog = sub_1000492A8();
    v11 = sub_10004A088();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "unable to fetch user properties", v12, 2u);
    }
  }
}

uint64_t sub_100020CF8(char a1, _WORD *a2, void *a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  if (*(*sub_1000028DC((v3 + 112), *(v3 + 136)) + 24) == 1)
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000492C8();
    sub_1000143C0(v9, qword_10005DF78);
    v10 = sub_1000492A8();
    v11 = sub_10004A0A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully loaded persistent store.", v12, 2u);
    }

    v13 = *sub_1000028DC((v4 + 112), *(v4 + 136));

    sub_10003E1EC(v13, a2, a3, a1 & 1, v8, v4);
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1000492C8();
    sub_1000143C0(v14, qword_10005DF78);
    v15 = sub_1000492A8();
    v16 = sub_10004A088();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to initialize persistent store; using DeviceActivity data", v17, 2u);
    }
  }

  swift_beginAccess();
  v18 = *(v8 + 16);

  return v18;
}

void sub_100020F60(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    v5 = [v4 altDSID];
    if (v5)
    {
      v6 = v5;
      sub_100049E08();
    }

    v10 = [v4 userDeviceStates];
    if (v10)
    {
      v11 = v10;
      sub_10002C454();
      sub_10002C538(&qword_10005E220, sub_10002C454, &protocol conformance descriptor for NSObject);
      sub_100049FE8();
    }

    v12 = sub_100049288();

    swift_beginAccess();
    *(a2 + 16) = v12 & 1;
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1000492C8();
    sub_1000143C0(v7, qword_10005DF78);
    oslog = sub_1000492A8();
    v8 = sub_10004A088();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to fetch user; using DeviceActivity data", v9, 2u);
    }
  }
}

uint64_t sub_1000211AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 0;
  }

  else
  {
    result = sub_10004A398();
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_100021204(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a3 + 40;
  v16 = a2[5];
  v21 = v14;
  v22 = v16;
  v20 = v13;
  while (1)
  {
    v19 = v3;
    v17 = *(v15 - 8);
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v16;

    v17(&v35, &v29, &v23);
    if (v35)
    {
      break;
    }

    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v26 = v7;
    v27 = v8;
    v28 = v9;
    v17(&v35, &v29, &v23);
    if (v35)
    {
      break;
    }

    v15 += 16;
    v3 = v19 - 1;
    v13 = v20;
    v14 = v21;
    v16 = v22;
    if (v19 == 1)
    {
      return 0;
    }
  }

  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v17(&v35, &v29, &v23);

  return v35;
}

uint64_t sub_1000213A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000028DC(a1, a1[3]);
  if (sub_100049F28())
  {
    return sub_10001A938(a1, a3);
  }

  v46 = a1;
  v47 = 0;
  v48 = a3;
  v53 = &_swiftEmptyDictionarySingleton;
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_17:
    v38 = v46[3];
    v39 = v46[4];
    v40 = sub_1000028DC(v46, v38);
    __chkstk_darwin(v40);
    v45[2] = &v53;
    v42 = sub_10001C5E0(sub_10002C3C8, v45, v38, &type metadata for UsageItem, &type metadata for Never, v39, &protocol witness table for Never, v41);
    v43 = sub_1000027D4(&qword_10005E1C0, &qword_10004BA48);
    v44 = v48;
    *(v48 + 24) = v43;
    v44[4] = sub_100005708(&qword_10005E1C8, &qword_10005E1C0, &qword_10004BA48, &protocol conformance descriptor for [A]);
    *v44 = v42;
  }

  v8 = (a2 + 80);
  v9 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v51 = v7;
    v14 = *(v8 - 6);
    v13 = *(v8 - 5);
    v15 = *(v8 - 4);
    v16 = *(v8 - 3);
    v17 = *(v8 - 2);
    v18 = *(v8 - 1);
    v19 = *v8;
    swift_bridgeObjectRetain_n();
    v20 = v15;
    v21 = v16;
    swift_bridgeObjectRetain_n();
    v22 = v20;
    v23 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v9;
    v25 = sub_100024340(v14, v13);
    v27 = v9[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v9[3] < v30)
    {
      sub_100024B0C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_100024340(v14, v13);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      v9 = v52;
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v37 = v25;
    sub_100025B44();
    v25 = v37;
    v9 = v52;
    if (v31)
    {
LABEL_5:
      v10 = (v9[7] + 56 * v25);
      v11 = v10[1];
      v49 = v10[2];
      v50 = v11;
      v12 = v10[3];
      *v10 = v14;
      v10[1] = v13;
      v10[2] = v22;
      v10[3] = v23;
      v10[4] = v17;
      v10[5] = v18;
      v10[6] = v19;

      goto LABEL_6;
    }

LABEL_13:
    v9[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v9[6] + 16 * v25);
    *v33 = v14;
    v33[1] = v13;
    v34 = (v9[7] + 56 * v25);
    *v34 = v14;
    v34[1] = v13;
    v34[2] = v22;
    v34[3] = v23;
    v34[4] = v17;
    v34[5] = v18;
    v34[6] = v19;

    v35 = v9[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_19;
    }

    v9[2] = v36;
LABEL_6:
    v8 += 7;
    v53 = v9;
    v7 = v51 - 1;
    if (v51 == 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

void sub_100021738(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(*a2 + 16);

  if (!v11 || (v12 = sub_100024340(v8, v7), (v13 & 1) == 0))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v18 = 0;
    v19 = 0;
LABEL_6:
    sub_10002C3E8(v22, 0, v23, v24, v25, v18, v19);

    v18 = v4;
    goto LABEL_7;
  }

  v26 = v9;
  v14 = (*(v10 + 56) + 56 * v12);
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = v14[5];
  v27 = v14[4];
  v28 = *v14;
  v19 = v14[6];

  v20 = v16;
  v21 = v17;

  if (!v15)
  {
    v25 = v27;
    v22 = v28;
    v24 = v17;
    v23 = v16;
    v9 = v26;
    goto LABEL_6;
  }

  sub_10002C3E8(v28, v15, v16, v17, v27, v18, v19);
  v5 = v19;
  v9 = v26;
LABEL_7:
  *a3 = v18;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v8;
  a3[4] = v7;
  a3[5] = v9;
}

uint64_t sub_1000218AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_100049228();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_100049248();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = sub_100049238();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v10 = sub_100049058();
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = sub_1000027D4(&qword_10005DE28, &qword_10004B8F8);
  v6[35] = swift_task_alloc();
  v11 = sub_100049498();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v12 = sub_1000490F8();
  v6[39] = v12;
  v6[40] = *(v12 - 8);
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_100021BD0, 0, 0);
}

uint64_t sub_100021BD0(uint64_t a1)
{
  sub_1000490B8();
  sub_100048E88();
  sub_100048E68();
  sub_10002C538(&qword_10005DBF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2 = sub_100049DD8();
  if (v2)
  {
    v6 = v1[35];
    v19 = v6;
    v20 = v1[34];
    v7 = v1[32];
    v9 = v1[30];
    v8 = v1[31];
    v11 = v1[28];
    v10 = v1[29];
    v12 = v1[27];
    v22 = v1[26];
    v23 = v1[25];
    v24 = v1[24];
    v25 = v1[22];
    v26 = v1[21];
    v27 = v1[23];
    v21 = v1[15];
    v13 = *(v8 + 32);
    v13(v10, v1[33], v9);
    v13(v10 + *(v12 + 48), v7, v9);
    sub_1000055FC(v10, v11, &qword_10005DE20, &qword_10004B8F0);
    v14 = *(v12 + 48);
    v13(v6, v11, v9);
    v15 = *(v8 + 8);
    v15(v11 + v14, v9);
    sub_100004DF8(v10, v11, &qword_10005DE20, &qword_10004B8F0);
    v13(v19 + *(v20 + 36), v11 + *(v12 + 48), v9);
    v15(v11, v9);
    sub_100049488();
    sub_100049278();
    v16 = sub_100048E98();
    (*(*(v16 - 8) + 16))(v22, v21, v16);
    (*(v23 + 104))(v22, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v24);
    (*(v25 + 104))(v27, enum case for _SegmentInterval.hourly(_:), v26);
    v17 = swift_task_alloc();
    v1[42] = v17;
    *v17 = v1;
    v17[1] = sub_100021ED0;
    v3 = v1[23];
    v4 = v1[12];
    v5 = v1[13];
    v2 = v1[26];
  }

  else
  {
    __break(1u);
  }

  return static STDeviceActivityDataSource.fetchData(segment:segmentInterval:userAltDSID:)(v2, v3, v4, v5);
}

uint64_t sub_100021ED0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *(*v2 + 184);
  v8 = *(*v2 + 176);
  v9 = *(*v2 + 168);
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v10 = sub_100022728;
  }

  else
  {
    v10 = sub_1000220A8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000220A8()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v0 + 128);
    v52 = sub_100026638(*(v0 + 344));
    v56 = sub_100028838(v52, v2);
    v54 = sub_100028C50(v1);
    v53 = sub_100029268(v54);
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v0 + 152);
      v7 = *(v4 + 16);
      v6 = v4 + 16;
      v5 = v7;
      v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v9 = *(v6 + 56);
      v10 = 0.0;
      do
      {
        v11 = *(v0 + 160);
        v12 = *(v0 + 144);
        v5(v11, v8, v12);
        sub_1000491F8();
        v14 = v13;
        (*(v6 - 8))(v11, v12);
        v10 = v10 + v14;
        v8 += v9;
        --v3;
      }

      while (v3);
    }

    else
    {
      v10 = 0.0;
    }

    v27 = *(v0 + 328);
    v28 = *(v0 + 304);
    *(v0 + 40) = sub_1000027D4(&qword_10005E148, &unk_10004B9E0);
    *(v0 + 48) = sub_100005708(&qword_10005E150, &qword_10005E148, &unk_10004B9E0, &protocol conformance descriptor for PrefixSequence<A>);
    v29 = sub_1000298D8(v52, 3);
    v31 = v30;

    *(v0 + 16) = v29;
    *(v0 + 24) = v31;
    sub_1000213A4((v0 + 16), v56, v0 + 56);
    sub_100002890((v0 + 16));
    sub_10001435C((v0 + 56), v0 + 16);
    v32 = sub_100029F60(v54, v53, (v0 + 16));

    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v35 = sub_1000028DC((v0 + 16), v33);
    v55 = sub_10002B7FC(v32, v35, 3, v53, v28, v27, v33, v34);

    if (v10 == 0.0)
    {
      if (qword_10005D6B0 != -1)
      {
        swift_once();
      }

      v36 = sub_1000492C8();
      sub_1000143C0(v36, qword_10005DF78);

      v37 = sub_1000492A8();
      v38 = sub_10004A078();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        v40 = *(v1 + 16);

        *(v39 + 4) = v40;

        _os_log_impl(&_mh_execute_header, v37, v38, "total screen on time was 0 from %ld activity segment(s)", v39, 0xCu);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
    }

    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v50 = *(v0 + 288);
    v51 = *(v0 + 312);
    v45 = *(v0 + 40);
    sub_1000028DC((v0 + 16), v45);
    v46 = *(v45 - 8);
    swift_task_alloc();
    (*(v46 + 16))();
    v47 = sub_100049F88();
    (*(v44 + 8))(v43, v50);
    (*(v41 + 8))(v42, v51);

    sub_100002890((v0 + 16));

    v48 = *(v0 + 8);
    v49.n128_f64[0] = v10;

    return v48(v47, v55, v56, v49);
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1000492C8();
    sub_1000143C0(v15, qword_10005DF78);
    v16 = sub_1000492A8();
    v17 = sub_10004A088();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "did not get any activity segments", v18, 2u);
    }

    sub_1000228BC(v19, v20, v21);
    swift_allocError();
    swift_willThrow();
    v23 = *(v0 + 320);
    v22 = *(v0 + 328);
    v24 = *(v0 + 312);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v23 + 8))(v22, v24);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100022728()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100022850()
{
  sub_100002890(v0 + 2);
  sub_100002890(v0 + 9);
  sub_100002890(v0 + 14);

  return _swift_deallocClassInstance(v0, 152, 7);
}

unint64_t sub_1000228BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005E140;
  if (!qword_10005E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E140);
  }

  return result;
}

uint64_t sub_100022910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a2;
  v7 = sub_1000490D8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v12 = __chkstk_darwin(v11 - 8);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v81 = &v68 - v15;
  v16 = __chkstk_darwin(v14);
  v83 = &v68 - v17;
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  v20 = sub_100049058();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v25 = __chkstk_darwin(v24);
  v82 = &v68 - v26;
  v27 = __chkstk_darwin(v25);
  v28 = __chkstk_darwin(v27);
  v88 = &v68 - v29;
  __chkstk_darwin(v28);
  v31 = __chkstk_darwin(&v68 - v30);
  v32 = __chkstk_darwin(v31);
  v39 = &v68 - v38;
  v89 = a1;
  if (a1 < 24)
  {
    v74 = v34;
    v79 = v33;
    v86 = v32;
    v69 = v37;
    v70 = v36;
    v71 = v35;
    v72 = a4;
    sub_100049068();
    v40 = v8 + 104;
    v87 = *(v8 + 104);
    v87(v10, enum case for Calendar.Component.day(_:), v7);
    v90 = v39;
    sub_1000490A8();
    v41 = *(v8 + 8);
    v91 = v8 + 8;
    v41(v10, v7);
    v84 = *(v21 + 48);
    v85 = v21 + 48;
    result = v84(v19, 1, v20);
    if (result != 1)
    {
      v43 = v21;
      v44 = v7;
      v77 = v43;
      v78 = *(v43 + 32);
      v78(v79, v19, v20);
      sub_100049068();
      v45 = enum case for Calendar.Component.hour(_:);
      v46 = v87;
      v87(v10, enum case for Calendar.Component.hour(_:), v44);
      v47 = sub_1000490E8();
      result = (v41)(v10, v44);
      if (__OFADD__(v47, 1))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v92) = v45;
        v46(v10, v45, v44);
        v48 = v83;
        v75 = a3;
        sub_1000490A8();
        v73 = v44;
        v76 = v41;
        v41(v10, v44);
        result = v84(v48, 1, v20);
        if (result == 1)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v68 = v40;
        v49 = v88;
        v50 = v78;
        v78(v88, v48, v20);
        v51 = v86;
        v52 = sub_100048FC8();
        v53 = v82;
        if (v52)
        {
          v54 = v77;
          (*(v77 + 8))(v49, v20);
          v55 = v74;
          (*(v54 + 16))(v74, v51, v20);
        }

        else
        {
          v55 = v74;
          v50(v74, v49, v20);
        }

        v57 = v89;
        v58 = v81;
        v59 = v73;
        v50(v49, v55, v20);
        result = (v87)(v10, v92, v59);
        if (!__OFSUB__(0, v57))
        {
          sub_1000490A8();
          v76(v10, v59);
          result = v84(v58, 1, v20);
          if (result != 1)
          {
            v50(v53, v58, v20);
            if (sub_100048FD8())
            {
              v60 = v77;
              (*(v77 + 8))(v53, v20);
              (*(v60 + 16))(v53, v90, v20);
            }

            v87(v10, v92, v59);
            v61 = v80;
            sub_1000490A8();
            v76(v10, v59);
            result = v84(v61, 1, v20);
            if (result != 1)
            {
              v62 = v69;
              v78(v69, v61, v20);
              v63 = v86;
              v64 = sub_100048FC8();
              v65 = v77;
              if (v64)
              {
                (*(v77 + 8))(v62, v20);
                v66 = *(v65 + 16);
                v66(v62, v63, v20);
              }

              else
              {
                v66 = *(v77 + 16);
              }

              v66(v70, v53, v20);
              v66(v71, v62, v20);
              sub_100048E78();
              v67 = *(v65 + 8);
              v67(v62, v20);
              v67(v53, v20);
              v67(v88, v20);
              v67(v63, v20);
              v67(v79, v20);
              return (v67)(v90, v20);
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v56 = v92;

  return sub_10001C284(v56, a4);
}

char *sub_1000231F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E200, &qword_10004BA80);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000232F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100023424(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000027D4(a5, a6);
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

char *sub_100023600(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023728(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E230, &qword_10004BAA0);
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

uint64_t sub_100023834@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100023864(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

char *sub_100023884(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100023904(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100023A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E238, &qword_10004BAA8);
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

char *sub_100023B14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E1D0, &qword_10004BA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100023D5C(char *__src, char *a2, char *a3, uint64_t *__dst, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 48;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 48;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[48 * v11] <= __dst)
    {
      v34 = __dst;
      memmove(__dst, a2, 48 * v11);
      __dst = v34;
    }

    v13 = &__dst[6 * v11];
    v12 = __dst;
    if (v10 < 48 || v6 <= __src)
    {
      v33 = v6;
      goto LABEL_47;
    }

    v66 = __dst;
    while (1)
    {
      v65 = v5;
      v35 = 0;
      v36 = v13;
      v63 = (v6 - 6);
      v68 = v13;
      while (1)
      {
        v37 = &v36[v35];
        v38 = &v36[v35 - 6];
        v39 = v36[v35 - 5];
        v40 = v36[v35 - 4];
        v41 = v36[v35 - 3];
        v42 = v36[v35 - 2];
        v43 = v36[v35 - 1];
        v76 = *v38;
        v77 = v39;
        v78 = v40;
        v79 = v41;
        v80 = v42;
        v81 = v43;
        v44 = *(v6 - 5);
        v45 = *(v6 - 4);
        v46 = *(v6 - 3);
        v47 = *(v6 - 2);
        v48 = *(v6 - 1);
        v70 = *(v6 - 6);
        v71 = v44;
        v72 = v45;
        v73 = v46;
        v74 = v47;
        v75 = v48;

        v49 = v82;
        v50 = sub_100021204(&v76, &v70, a5);
        v82 = v49;
        if (v49)
        {

          v59 = v66;
          v60 = (v68 - v66 + v35 * 8) / 48;
          if (v6 < v66 || v6 >= &v66[6 * v60])
          {
            v58 = 48 * v60;
            v33 = v6;
          }

          else
          {
            if (v6 == v66)
            {
              goto LABEL_53;
            }

            v58 = 48 * v60;
            v33 = v6;
          }

          goto LABEL_52;
        }

        v51 = v50;

        if (v51)
        {
          break;
        }

        v36 = v68;
        if (&v65[v35 * 8] != v37)
        {
          v52 = &v65[v35 * 8 - 48];
          v53 = *v38;
          v54 = *(v38 + 32);
          *(v52 + 1) = *(v38 + 16);
          *(v52 + 2) = v54;
          *v52 = v53;
        }

        v35 -= 6;
        v13 = &v68[v35];
        v12 = v66;
        if (&v68[v35] <= v66)
        {
          v33 = v6;
          goto LABEL_47;
        }
      }

      v5 = &v65[v35 * 8 - 48];
      v33 = v6 - 6;
      if (&v65[v35 * 8] != v6)
      {
        v55 = *v63;
        v56 = *(v6 - 1);
        *&v65[v35 * 8 - 32] = *(v6 - 2);
        *&v65[v35 * 8 - 16] = v56;
        *v5 = v55;
      }

      v13 = &v68[v35];
      v12 = v66;
      if (&v68[v35] > v66)
      {
        v6 -= 6;
        if (v63 > __src)
        {
          continue;
        }
      }

      v13 = &v68[v35];
LABEL_47:
      v61 = (v13 - v12) / 48;
      if (v33 >= v12 && v33 < &v12[6 * v61] && v33 == v12)
      {
        goto LABEL_53;
      }

      v58 = 48 * v61;
LABEL_51:
      v59 = v12;
LABEL_52:
      memmove(v33, v59, v58);
      goto LABEL_53;
    }
  }

  v12 = __dst;
  if (__dst != __src || &__src[48 * v9] <= __dst)
  {
    memmove(__dst, __src, 48 * v9);
  }

  v13 = &v12[6 * v9];
  if (v8 < 48)
  {
    v33 = __src;
    goto LABEL_47;
  }

  v14 = __src;
  if (v6 >= v5)
  {
    v33 = __src;
    goto LABEL_47;
  }

  v15 = v82;
  v67 = v13;
  while (1)
  {
    v16 = v5;
    v17 = v6[1];
    v18 = v6[2];
    v19 = v6[3];
    v20 = v6[4];
    v21 = v6[5];
    v76 = *v6;
    v77 = v17;
    v78 = v18;
    v79 = v19;
    v80 = v20;
    v81 = v21;
    v22 = v12[1];
    v23 = v12[2];
    v24 = v12[3];
    v25 = v12[4];
    v26 = v12[5];
    v70 = *v12;
    v71 = v22;
    v72 = v23;
    v73 = v24;
    v74 = v25;
    v75 = v26;

    v27 = sub_100021204(&v76, &v70, a5);
    v82 = v15;
    if (v15)
    {
      break;
    }

    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v29 = v12;
      v30 = v14 == v12;
      v12 += 6;
      v5 = v16;
      if (v30)
      {
        goto LABEL_15;
      }

LABEL_14:
      v31 = *v29;
      v32 = *(v29 + 2);
      *(v14 + 1) = *(v29 + 1);
      *(v14 + 2) = v32;
      *v14 = v31;
      goto LABEL_15;
    }

    v29 = v6;
    v30 = v14 == v6;
    v6 += 6;
    v5 = v16;
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_15:
    v14 += 48;
    v13 = v67;
    v15 = v82;
    if (v12 >= v67 || v6 >= v5)
    {
      v33 = v14;
      goto LABEL_47;
    }
  }

  v57 = (v67 - v12) / 48;
  if (v14 < v12 || v14 >= &v12[6 * v57])
  {
    v58 = 48 * v57;
    v33 = v14;
    v59 = v12;
    goto LABEL_52;
  }

  if (v14 != v12)
  {
    v58 = 48 * v57;
    v33 = v14;
    goto LABEL_51;
  }

LABEL_53:

  return 1;
}

uint64_t sub_1000242A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002432C(v3);
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

unint64_t sub_100024340(uint64_t a1, uint64_t a2)
{
  sub_10004A418();
  sub_100049E48();
  v4 = sub_10004A448();

  return sub_1000254B0(a1, a2, v4);
}

unint64_t sub_1000243B8(uint64_t a1)
{
  sub_100048E98();
  sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v2 = sub_100049DB8();

  return sub_100025568(a1, v2);
}

uint64_t sub_100024450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v38 = v4;
  result = sub_10004A338();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 48 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v26 = v24[2];
      v27 = v24[4];
      v39 = v24[5];
      v40 = v24[3];
      if ((v38 & 1) == 0)
      {
      }

      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 48 * v15);
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v26;
      v17[3] = v40;
      v17[4] = v27;
      v17[5] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100024748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100048E98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
  v39 = v4;
  result = sub_10004A338();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      result = sub_100049DB8();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100024B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000027D4(&qword_10005E210, &qword_10004BA90);
  v45 = v4;
  result = sub_10004A338();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
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
    v44 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = (*(v5 + 56) + 56 * v23);
      v27 = v26[1];
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[4];
      v31 = v26[6];
      v47 = v26[5];
      v48 = *v26;
      if ((v45 & 1) == 0)
      {

        v32 = v29;
        v33 = v28;
      }

      v7 = v44;
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v34 = -1 << *(v44 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v29;
        v17 = v28;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v29;
      v17 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = (*(v44 + 56) + 56 * v15);
      *v19 = v48;
      v19[1] = v27;
      v19[2] = v16;
      v19[3] = v17;
      v19[4] = v30;
      v19[5] = v47;
      v19[6] = v31;
      ++*(v44 + 16);
      v5 = v43;
      v12 = v46;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100024E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000027D4(&qword_10005E168, &qword_10004BA08);
  v33 = v4;
  result = sub_10004A338();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000250D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_100048E98();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000027D4(a3, a4);
  v43 = v8;
  result = sub_10004A338();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      result = sub_100049DB8();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

unint64_t sub_1000254B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004A398())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100025568(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_100048E98();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10002C538(&qword_10005E178, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v15 = sub_100049DE8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_100025728()
{
  v1 = v0;
  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v2 = *v0;
  v3 = sub_10004A328();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = v22[5];
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = (*(v4 + 56) + v17);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        v30[4] = v27;
        v30[5] = v28;
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

void *sub_1000258D0()
{
  v1 = v0;
  v29 = sub_100048E98();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
  v3 = *v0;
  v4 = sub_10004A328();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100025B44()
{
  sub_1000027D4(&qword_10005E210, &qword_10004BA90);
  v33 = v0;
  v1 = *v0;
  v2 = sub_10004A328();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 56;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = v21[6];
        v29 = (*(v3 + 48) + v17);
        *v29 = v20;
        v29[1] = v19;
        v30 = (*(v3 + 56) + v16);
        *v30 = v22;
        v30[1] = v23;
        v30[2] = v25;
        v30[3] = v24;
        v30[4] = v26;
        v30[5] = v27;
        v30[6] = v28;

        v31 = v25;
        v32 = v24;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v33 = v3;
  }

  return result;
}

void *sub_100025D04()
{
  v1 = v0;
  sub_1000027D4(&qword_10005E168, &qword_10004BA08);
  v2 = *v0;
  v3 = sub_10004A328();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_100025E6C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_100048E98();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(a1, a2);
  v7 = *v2;
  v8 = sub_10004A328();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

__n128 sub_10002610C@<Q0>(uint64_t a1@<X0>, _WORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = type metadata accessor for XPCPersistentStoreManager();
  v18[3] = v10;
  v18[4] = &off_10005AA70;
  v18[0] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 65) = 0u;
  v12 = *sub_1000028DC(v18, v10);

  sub_10003D4A4(v12, a2, a3, v8, v11);

  swift_beginAccess();
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  v21 = *(v11 + 48);
  v22 = v14;
  v23 = *(v11 + 80);
  v19 = *(v11 + 16);
  v20 = v13;
  sub_10002C5D0(&v19, v17);

  sub_100002890(v18);
  v15 = v22;
  *(a5 + 32) = v21;
  *(a5 + 48) = v15;
  *(a5 + 64) = v23;
  result = v20;
  *a5 = v19;
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_10002625C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 72) = a1;
  return _swift_task_switch(sub_100026288, 0, 0);
}

uint64_t sub_100026288()
{
  if (*(v0 + 72) == 1)
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v1 = sub_1000492C8();
    sub_1000143C0(v1, qword_10005DF78);
    v2 = sub_1000492A8();
    v3 = sub_10004A078();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch profile picture started", v4, 2u);
    }

    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    if (v6 && v5)
    {
      v7 = *(v0 + 32);
      v8 = *(v0 + 16);
      v9 = swift_task_alloc();
      *(v0 + 56) = v9;
      *v9 = v0;
      v9[1] = sub_1000264D0;
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);

      return sub_1000024B8(v8, v12, v7, v10, v11);
    }

    v14 = sub_1000492A8();
    v15 = sub_10004A088();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "couldn't fetch profile pic because dsid or full name was nil", v16, 2u);
    }
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_1000264D0(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000265D0, 0, 0);
}

uint64_t sub_1000265D0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_100026638(uint64_t a1)
{
  v266 = sub_1000491E8();
  v2 = *(v266 - 8);
  __chkstk_darwin(v266);
  v4 = &v220 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_100049158();
  v5 = *(v267 - 8);
  __chkstk_darwin(v267);
  v7 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000491B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v246 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v236 = &v220 - v12;
  v13 = sub_100049228();
  __chkstk_darwin(v13);
  v228 = *(a1 + 16);
  if (!v228)
  {
    v217 = 0;
    v218 = 0;
    v20 = &_swiftEmptyDictionarySingleton;
    goto LABEL_131;
  }

  v222 = 0;
  v221 = 0;
  v224 = 0;
  v223 = 0;
  v257 = 0;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  v252 = 0;
  v251 = 0;
  v254 = 0;
  v253 = 0;
  v17 = 0;
  v19 = *(v16 + 16);
  v18 = v16 + 16;
  v231 = v19;
  v230 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v245 = v9 + 16;
  v244 = (v9 + 8);
  v235 = CTCategoryIdentifierSystemUnblockable;
  v234 = CTCategoryIdentifierSystemBlockable;
  v240 = CTCategoryIdentifierSystemHidden;
  v261 = v5 + 16;
  v263 = v5;
  v256 = (v5 + 8);
  v255 = v2 + 16;
  v262 = v2;
  v250 = (v2 + 8);
  v225 = (v18 - 8);
  v229 = *(v18 + 56);
  v20 = &_swiftEmptyDictionarySingleton;
  v268 = &_swiftEmptyDictionarySingleton;
  v264 = v7;
  v265 = v4;
  v21 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = v8;
  v241 = v9;
  v227 = v15;
  v226 = v18;
  v233 = v21;
  while (1)
  {
    v232 = v17;
    v231(v21, v230 + v229 * v17, v15);
    v24 = sub_100049218();
    v25 = v24;
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = 0;
      v249 = v24 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
      v28 = v236;
      v29 = v268;
      v247 = v24;
      v248 = v26;
      while (1)
      {
        if (v27 >= *(v25 + 16))
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v30 = v243;
        (*(v241 + 16))(v28, v249 + *(v241 + 72) * v27, v243);
        sub_100049168();
        if (v31 > 0.0)
        {
          break;
        }

        (*v244)(v28, v30);
LABEL_7:
        if (v26 == ++v27)
        {
          goto LABEL_43;
        }
      }

      v32 = sub_100049E08();
      v34 = v33;
      v35 = sub_100049E08();
      v37 = v36;
      v38 = sub_100049E08();
      v40 = v39;
      if (sub_100049178() == v32 && v41 == v34)
      {

LABEL_14:
        v28 = v236;
        (*v244)(v236, v243);

LABEL_15:
        v7 = v264;
        v4 = v265;
LABEL_16:
        v25 = v247;
        v26 = v248;
        goto LABEL_7;
      }

      v42 = sub_10004A398();

      if (v42)
      {
        goto LABEL_14;
      }

      if (sub_100049178() == v35 && v43 == v37)
      {

        v7 = v264;
        v4 = v265;
LABEL_21:
        v28 = v236;
        (*v244)(v236, v243);

        goto LABEL_16;
      }

      v44 = sub_10004A398();

      v7 = v264;
      v4 = v265;
      if (v44)
      {
        goto LABEL_21;
      }

      v28 = v236;
      v45 = sub_100049178();
      v26 = v248;
      if (v45 == v38 && v46 == v40)
      {

LABEL_26:
        (*v244)(v28, v243);
        v25 = v247;
        goto LABEL_7;
      }

      v47 = sub_10004A398();

      if (v47)
      {
        goto LABEL_26;
      }

      v48 = sub_100049178();
      v50 = v49;
      v51 = sub_100049198();
      if (v52)
      {
        v53 = v51;
        v54 = v52;
      }

      else
      {

        v53 = v48;
        v54 = v50;
      }

      v55 = v224;
      v56 = v223;
      v57 = v222;
      v58 = swift_allocObject();
      v58[2] = v53;
      v58[3] = v54;
      v58[4] = v48;
      v58[5] = v50;

      sub_10002C258(v57, v221);
      sub_100049168();
      v60 = v59;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_10002C374;
      *(v61 + 24) = v58;
      sub_10002C258(v55, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v269 = v29;
      v64 = sub_100024340(v48, v50);
      v65 = v29[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_140;
      }

      v68 = v63;
      if (v29[3] < v67)
      {
        sub_100024450(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_100024340(v48, v50);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_142;
        }

        v64 = v69;
        v29 = v269;
        if ((v68 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_38:

LABEL_39:
        *(v29[7] + 48 * v64 + 16) = v60 + *(v29[7] + 48 * v64 + 16);
        v81 = v236;
        (*v244)(v236, v243);
        v224 = sub_10002C924;
        v222 = sub_10002C374;
        v221 = v58;
        v223 = v61;
        v28 = v81;
        v20 = v29;
        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v269;
        if (v63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_100025728();
        v29 = v269;
        if (v68)
        {
          goto LABEL_38;
        }
      }

LABEL_34:
      (*(v61 + 16))(&v269);
      v71 = v269;
      v72 = v270;
      v73 = v271;
      v74 = v272;
      v75 = v273;
      v29[(v64 >> 6) + 8] |= 1 << v64;
      v76 = (v29[6] + 16 * v64);
      *v76 = v48;
      v76[1] = v50;
      v77 = v29[7] + 48 * v64;
      *v77 = v71;
      *(v77 + 8) = v72;
      *(v77 + 16) = v73;
      *(v77 + 24) = v74;
      *(v77 + 40) = v75;
      v78 = v29[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_141;
      }

      v29[2] = v80;
      goto LABEL_39;
    }

    v29 = v268;
LABEL_43:
    v268 = v29;

    v82 = sub_100049218();
    v239 = *(v82 + 16);
    if (v239)
    {
      break;
    }

LABEL_3:

    v22 = v232 + 1;
    v21 = v233;
    v23 = v227;
    (*v225)(v233, v227);
    v17 = v22;
    v15 = v23;
    if (v22 == v228)
    {
      goto LABEL_130;
    }
  }

  v83 = 0;
  v84 = v241;
  v238 = v82 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
  v85 = v243;
  v237 = v82;
  while (1)
  {
    if (v83 >= *(v82 + 16))
    {
      goto LABEL_137;
    }

    v87 = *(v84 + 72);
    v242 = v83;
    (*(v84 + 16))(v246, v238 + v87 * v83, v85);
    v88 = sub_100049E08();
    v90 = v89;
    if (sub_100049178() != v88 || v91 != v90)
    {
      break;
    }

LABEL_51:

LABEL_46:
    v86 = v242 + 1;
    (*v244)(v246, v85);
    v83 = v86;
    v82 = v237;
    if (v86 == v239)
    {
      goto LABEL_3;
    }
  }

  v92 = sub_10004A398();

  if (v92)
  {
    goto LABEL_46;
  }

  v93 = sub_1000491A8();
  v94 = v93;
  v95 = *(v93 + 16);
  if (!v95)
  {

    goto LABEL_92;
  }

  v96 = 0;
  v97 = v93 + ((*(v263 + 80) + 32) & ~*(v263 + 80));
  v249 = v93;
  v248 = v95;
  v247 = v97;
  while (1)
  {
    if (v96 >= *(v94 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      sub_10002C258(v222, v221);
      sub_10002C258(v224, v223);
      sub_10002C258(v258, v257);
      sub_10002C258(v260, v259);
      sub_10002C258(v252, v251);
      v217 = v254;
      v218 = v253;
LABEL_131:
      sub_10002C258(v217, v218);
      return v20;
    }

    (*(v263 + 16))(v7, v97 + *(v263 + 72) * v96, v267);
    sub_100049128();
    if (v98 <= 0.0)
    {
      goto LABEL_57;
    }

    v99 = sub_100049138();
    v101 = v100;
    v102 = sub_100049148();
    if (v103)
    {
      v104 = v102;
      v105 = v103;
    }

    else
    {

      v104 = v99;
      v105 = v101;
    }

    v106 = swift_allocObject();
    v106[2] = v104;
    v106[3] = v105;
    v106[4] = v99;
    v106[5] = v101;

    sub_10002C258(v258, v257);
    sub_100049128();
    v108 = v107;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_10002C32C;
    *(v109 + 24) = v106;
    sub_10002C258(v260, v259);
    v110 = v268;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v269 = v110;
    v113 = sub_100024340(v99, v101);
    v114 = v110[2];
    v115 = (v112 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v117 = v112;
    if (v110[3] >= v116)
    {
      break;
    }

    sub_100024450(v116, v111);
    v20 = v269;
    v118 = sub_100024340(v99, v101);
    if ((v117 & 1) != (v119 & 1))
    {
      goto LABEL_142;
    }

    v113 = v118;
    if ((v117 & 1) == 0)
    {
LABEL_70:
      (*(v109 + 16))(&v269);
      v120 = v269;
      v121 = v270;
      v122 = v271;
      v123 = v272;
      v124 = v273;
      v20[(v113 >> 6) + 8] |= 1 << v113;
      v125 = (v20[6] + 16 * v113);
      *v125 = v99;
      v125[1] = v101;
      v126 = v20[7] + 48 * v113;
      *v126 = v120;
      *(v126 + 8) = v121;
      *(v126 + 16) = v122;
      *(v126 + 24) = v123;
      *(v126 + 40) = v124;
      v127 = v20[2];
      v79 = __OFADD__(v127, 1);
      v128 = v127 + 1;
      if (v79)
      {
        goto LABEL_135;
      }

      v20[2] = v128;
      goto LABEL_56;
    }

LABEL_55:

LABEL_56:
    *(v20[7] + 48 * v113 + 16) = v108 + *(v20[7] + 48 * v113 + 16);
    v259 = v109;
    v260 = sub_10002C924;
    v257 = v106;
    v258 = sub_10002C32C;
    v268 = v20;
    v7 = v264;
    v4 = v265;
    v94 = v249;
    v95 = v248;
    v97 = v247;
LABEL_57:
    ++v96;
    (*v256)(v7, v267);
    if (v96 == v95)
    {

      v85 = v243;
      v84 = v241;
LABEL_92:
      v157 = sub_100049188();
      v158 = v157;
      v159 = *(v157 + 16);
      if (!v159)
      {
        goto LABEL_51;
      }

      v160 = 0;
      v161 = v157 + ((*(v262 + 80) + 32) & ~*(v262 + 80));
      v249 = *(v157 + 16);
      v248 = v161;
      while (1)
      {
        if (v160 >= *(v158 + 16))
        {
          goto LABEL_129;
        }

        (*(v262 + 16))(v4, v161 + *(v262 + 72) * v160, v266);
        sub_1000491C8();
        if (v162 > 0.0)
        {
          break;
        }

LABEL_96:
        ++v160;
        (*v250)(v4, v266);
        if (v160 == v159)
        {

          v85 = v243;
          v84 = v241;
          goto LABEL_46;
        }
      }

      v163 = sub_1000491D8();
      v165 = v164;
      v166 = swift_allocObject();
      *(v166 + 16) = v163;
      *(v166 + 24) = v165;

      sub_10002C258(v252, v251);
      sub_1000491C8();
      v168 = v167;
      v169 = swift_allocObject();
      *(v169 + 16) = sub_10002C2A0;
      *(v169 + 24) = v166;
      sub_10002C258(v254, v253);
      v170 = v268;
      v171 = swift_isUniquelyReferenced_nonNull_native();
      v269 = v170;
      v173 = sub_100024340(v163, v165);
      v174 = v170[2];
      v175 = (v172 & 1) == 0;
      v176 = v174 + v175;
      if (__OFADD__(v174, v175))
      {
        goto LABEL_133;
      }

      v177 = v172;
      if (v170[3] >= v176)
      {
        if (v171)
        {
          v20 = v170;
          if ((v172 & 1) == 0)
          {
LABEL_106:
            (*(v169 + 16))(&v269);
            v180 = v269;
            v181 = v270;
            v182 = v271;
            v183 = v272;
            v184 = v273;
            v20[(v173 >> 6) + 8] |= 1 << v173;
            v185 = (v20[6] + 16 * v173);
            *v185 = v163;
            v185[1] = v165;
            v186 = v20[7] + 48 * v173;
            *v186 = v180;
            *(v186 + 8) = v181;
            *(v186 + 16) = v182;
            *(v186 + 24) = v183;
            *(v186 + 40) = v184;
            v187 = v20[2];
            v79 = __OFADD__(v187, 1);
            v188 = v187 + 1;
            if (v79)
            {
              goto LABEL_136;
            }

            v20[2] = v188;
            goto LABEL_95;
          }
        }

        else
        {
          sub_1000027D4(&qword_10005E208, &qword_10004BA88);
          v189 = sub_10004A328();
          v190 = v268;
          v20 = v189;
          if (v268[2])
          {
            v191 = (v189 + 64);
            v192 = (v268 + 8);
            v193 = ((1 << *(v20 + 32)) + 63) >> 6;
            v247 = (v268 + 8);
            if (v20 != v268 || v191 >= &v192[8 * v193])
            {
              memmove(v191, v192, 8 * v193);
              v190 = v268;
            }

            v194 = 0;
            v20[2] = v190[2];
            v195 = 1 << *(v190 + 32);
            if (v195 < 64)
            {
              v196 = ~(-1 << v195);
            }

            else
            {
              v196 = -1;
            }

            v197 = v196 & v190[8];
            v198 = (v195 + 63) >> 6;
            v251 = v198;
            if (v197)
            {
              do
              {
                v254 = (v197 - 1) & v197;
                v199 = __clz(__rbit64(v197)) | (v194 << 6);
                v200 = v268;
LABEL_122:
                v203 = 16 * v199;
                v204 = (v200[6] + 16 * v199);
                v206 = *v204;
                v205 = v204[1];
                v207 = 48 * v199;
                v208 = (v200[7] + v207);
                v209 = *v208;
                v252 = v208[1];
                v210 = v252;
                v211 = v208[2];
                v212 = v208[3];
                v253 = v208[4];
                v213 = v253;
                v214 = v208[5];
                v215 = (v20[6] + v203);
                *v215 = v206;
                v215[1] = v205;
                v216 = (v20[7] + v207);
                *v216 = v209;
                v216[1] = v210;
                v216[2] = v211;
                v216[3] = v212;
                v216[4] = v213;
                v216[5] = v214;

                v198 = v251;
                v197 = v254;
              }

              while (v254);
            }

            v201 = v194;
            v200 = v268;
            while (1)
            {
              v194 = v201 + 1;
              if (__OFADD__(v201, 1))
              {
                goto LABEL_139;
              }

              if (v194 >= v198)
              {
                break;
              }

              v202 = *&v247[8 * v194];
              ++v201;
              if (v202)
              {
                v254 = (v202 - 1) & v202;
                v199 = __clz(__rbit64(v202)) | (v194 << 6);
                goto LABEL_122;
              }
            }
          }

          if ((v177 & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
        sub_100024450(v176, v171);
        v20 = v269;
        v178 = sub_100024340(v163, v165);
        if ((v177 & 1) != (v179 & 1))
        {
          goto LABEL_142;
        }

        v173 = v178;
        if ((v177 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

LABEL_95:
      *(v20[7] + 48 * v173 + 16) = v168 + *(v20[7] + 48 * v173 + 16);
      v254 = sub_10002C2E0;
      v252 = sub_10002C2A0;
      v268 = v20;
      v251 = v166;
      v253 = v169;
      v7 = v264;
      v4 = v265;
      v159 = v249;
      v161 = v248;
      goto LABEL_96;
    }
  }

  if (v111)
  {
    v20 = v110;
    if ((v112 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v129 = sub_10004A328();
  v130 = v268;
  v20 = v129;
  if (!v268[2])
  {
LABEL_88:

    if ((v117 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  v131 = (v129 + 64);
  v132 = (v268 + 8);
  v133 = ((1 << *(v20 + 32)) + 63) >> 6;
  if (v20 != v268 || v131 >= v132 + 8 * v133)
  {
    memmove(v131, v268 + 8, 8 * v133);
    v130 = v268;
  }

  v134 = 0;
  v20[2] = v130[2];
  v135 = 1 << *(v130 + 32);
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  else
  {
    v136 = -1;
  }

  v137 = v136 & v130[8];
  v138 = ((v135 + 63) >> 6);
  v257 = v132;
  v258 = v138;
  if (v137)
  {
    do
    {
      v260 = (v137 - 1) & v137;
      v139 = __clz(__rbit64(v137)) | (v134 << 6);
      v140 = v268;
LABEL_86:
      v143 = 16 * v139;
      v144 = (v140[6] + 16 * v139);
      v146 = *v144;
      v145 = v144[1];
      v147 = 48 * v139;
      v148 = (v140[7] + v147);
      v149 = *v148;
      v259 = v148[1];
      v150 = v259;
      v151 = v148[2];
      v152 = v148[3];
      v153 = v148[4];
      v154 = v148[5];
      v155 = (v20[6] + v143);
      *v155 = v146;
      v155[1] = v145;
      v156 = (v20[7] + v147);
      *v156 = v149;
      v156[1] = v150;
      v156[2] = v151;
      v156[3] = v152;
      v156[4] = v153;
      v156[5] = v154;

      v132 = v257;
      v138 = v258;
      v137 = v260;
    }

    while (v260);
  }

  v141 = v134;
  v140 = v268;
  while (1)
  {
    v134 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v134 >= v138)
    {
      goto LABEL_88;
    }

    v142 = *(v132 + 8 * v134);
    ++v141;
    if (v142)
    {
      v260 = (v142 - 1) & v142;
      v139 = __clz(__rbit64(v142)) | (v134 << 6);
      goto LABEL_86;
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

uint64_t sub_100027B60(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = _swiftEmptyArrayStorage;
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v28 = v8 + 1;
    }

    else
    {
      v146 = v7;
      v10 = *a3;
      v11 = (*a3 + 48 * (v8 + 1));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      v17 = v11[5];
      v157 = v12;
      v158 = v13;
      v159 = v14;
      v160 = v15;
      v161 = v16;
      v162 = v17;
      v18 = (v10 + 48 * v8);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v151 = v19;
      v152 = v20;
      v153 = v21;
      v154 = v22;
      v155 = v23;
      v156 = v24;

      LODWORD(__dst) = sub_100021204(&v157, &v151, a5);
      if (v6)
      {
        swift_bridgeObjectRelease_n();
      }

      v25 = v8;
      v26 = v8 + 2;
      v140 = v25;
      v142 = 48 * v25;
      v27 = (v10 + 48 * v25 + 136);
      while (1)
      {
        v28 = v146;
        if (v146 == v26)
        {
          break;
        }

        v29 = *(v27 - 4);
        v30 = *(v27 - 3);
        v31 = *(v27 - 2);
        v32 = *(v27 - 1);
        v33 = *v27;
        v35 = *(v27 - 7);
        v34 = *(v27 - 6);
        v157 = *(v27 - 5);
        v158 = v29;
        v159 = v30;
        v160 = v31;
        v161 = v32;
        v162 = v33;
        v36 = *(v27 - 10);
        v37 = *(v27 - 9);
        v38 = *(v27 - 8);
        v151 = *(v27 - 11);
        v152 = v36;
        v153 = v37;
        v154 = v38;
        v155 = v35;
        v156 = v34;

        v39 = sub_100021204(&v157, &v151, a5);

        ++v26;
        v27 += 6;
        if ((__dst ^ v39))
        {
          v28 = v26 - 1;
          break;
        }
      }

      v8 = v140;
      if (__dst)
      {
        if (v28 < v140)
        {
          goto LABEL_125;
        }

        if (v140 < v28)
        {
          v40 = 48 * v28 - 24;
          v41 = v142 + 40;
          v42 = v28;
          v43 = v140;
          do
          {
            if (v43 != --v42)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v45 = (v44 + v41);
              v46 = v44 + v40;
              v47 = *(v45 - 5);
              v48 = *(v45 - 4);
              v49 = *(v45 - 3);
              v50 = *(v45 - 1);
              v51 = *v45;
              v52 = *(v46 + 8);
              v53 = *(v46 - 8);
              *(v45 - 5) = *(v46 - 24);
              *(v45 - 3) = v53;
              *(v45 - 1) = v52;
              *(v46 - 24) = v47;
              *(v46 - 16) = v48;
              *(v46 - 8) = v49;
              *v46 = v50;
              *(v46 + 16) = v51;
            }

            ++v43;
            v40 -= 48;
            v41 += 48;
          }

          while (v43 < v42);
        }
      }
    }

    v54 = a3[1];
    if (v28 >= v54)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v28, v8))
    {
      goto LABEL_121;
    }

    if (v28 - v8 >= a4)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = v8 + a4;
    }

    if (v55 < v8)
    {
      goto LABEL_124;
    }

    if (v28 == v55)
    {
LABEL_28:
      v56 = v28;
      if (v28 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      __dst = v6;
      v108 = *a3;
      v109 = *a3 + 48 * v28 - 48;
      v141 = v8;
      v144 = v55;
      v110 = v8 - v28;
      do
      {
        v147 = v28;
        v111 = (v108 + 48 * v28);
        v112 = *v111;
        v113 = v111[1];
        v114 = v111[2];
        v115 = v111[3];
        v116 = v111[4];
        v117 = v111[5];
        v137 = v110;
        v138 = v109;
        v118 = v109;
        do
        {
          v157 = v112;
          v158 = v113;
          v159 = v114;
          v160 = v115;
          v161 = v116;
          v162 = v117;
          v119 = v118[1];
          v120 = v118[2];
          v121 = v118[3];
          v122 = v118[4];
          v123 = v118[5];
          v151 = *v118;
          v152 = v119;
          v153 = v120;
          v154 = v121;
          v155 = v122;
          v156 = v123;

          v124 = sub_100021204(&v157, &v151, a5);
          if (__dst)
          {
            swift_bridgeObjectRelease_n();
          }

          v125 = v124;

          if ((v125 & 1) == 0)
          {
            break;
          }

          if (!v108)
          {
            goto LABEL_127;
          }

          v112 = v118[6];
          v113 = v118[7];
          v114 = v118[8];
          v115 = v118[9];
          v116 = v118[10];
          v117 = v118[11];
          v126 = *(v118 + 1);
          *(v118 + 3) = *v118;
          *(v118 + 4) = v126;
          *(v118 + 5) = *(v118 + 2);
          *v118 = v112;
          v118[1] = v113;
          v118[2] = v114;
          v118[3] = v115;
          v118[4] = v116;
          v118[5] = v117;
          v118 -= 6;
        }

        while (!__CFADD__(v110++, 1));
        v28 = v147 + 1;
        v109 = v138 + 48;
        v110 = v137 - 1;
        v56 = v144;
      }

      while (v147 + 1 != v144);
      v8 = v141;
      v6 = 0;
      if (v144 < v141)
      {
        goto LABEL_120;
      }
    }

    v57 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1000231F4(0, *(v9 + 2) + 1, 1, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1000231F4((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = &v9[16 * v59];
    *(v61 + 4) = v57;
    *(v61 + 5) = v56;
    v143 = v56;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v59)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v143;
    if (v143 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v62 = v60 - 1;
    if (v60 >= 4)
    {
      v67 = &v9[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_107;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_108;
      }

      v74 = &v9[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_110;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_113;
      }

      if (v78 >= v70)
      {
        v96 = &v9[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_119;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v60 == 3)
    {
      v63 = *(v9 + 4);
      v64 = *(v9 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_48:
      if (v66)
      {
        goto LABEL_109;
      }

      v79 = &v9[16 * v60];
      v81 = *v79;
      v80 = *(v79 + 1);
      v82 = __OFSUB__(v80, v81);
      v83 = v80 - v81;
      v84 = v82;
      if (v82)
      {
        goto LABEL_112;
      }

      v85 = &v9[16 * v62 + 32];
      v87 = *v85;
      v86 = *(v85 + 1);
      v73 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v73)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v83, v88))
      {
        goto LABEL_116;
      }

      if (v83 + v88 >= v65)
      {
        if (v65 < v88)
        {
          v62 = v60 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v89 = &v9[16 * v60];
    v91 = *v89;
    v90 = *(v89 + 1);
    v73 = __OFSUB__(v90, v91);
    v83 = v90 - v91;
    v84 = v73;
LABEL_62:
    if (v84)
    {
      goto LABEL_111;
    }

    v92 = &v9[16 * v62];
    v94 = *(v92 + 4);
    v93 = *(v92 + 5);
    v73 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (v73)
    {
      goto LABEL_114;
    }

    if (v95 < v83)
    {
      goto LABEL_3;
    }

LABEL_69:
    v100 = v62 - 1;
    if (v62 - 1 >= v60)
    {
      break;
    }

    v101 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v102 = *&v9[16 * v100 + 32];
    v103 = *&v9[16 * v62 + 40];
    v104 = (v101 + 48 * v102);
    v105 = (v101 + 48 * *&v9[16 * v62 + 32]);
    v106 = (v101 + 48 * v103);

    sub_100023D5C(v104, v105, v106, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v103 < v102)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10002432C(v9);
    }

    if (v100 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v107 = &v9[16 * v100];
    *(v107 + 4) = v102;
    *(v107 + 5) = v103;
    v163 = v9;
    sub_1000242A0(v62);
    v9 = v163;
    v60 = *(v163 + 2);
    if (v60 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  v9 = sub_10002432C(v9);
LABEL_91:
  v163 = v9;
  v128 = *(v9 + 2);
  if (v128 < 2)
  {
LABEL_99:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v129 = *a3;
      if (!*a3)
      {
        break;
      }

      v130 = *&v9[16 * v128];
      v131 = *&v9[16 * v128 + 24];
      v132 = (v129 + 48 * v130);
      v133 = (v129 + 48 * *&v9[16 * v128 + 16]);
      v134 = (v129 + 48 * v131);

      sub_100023D5C(v132, v133, v134, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v131 < v130)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10002432C(v9);
      }

      if (v128 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v135 = &v9[16 * v128];
      *v135 = v130;
      *(v135 + 1) = v131;
      v163 = v9;
      sub_1000242A0(v128 - 1);
      v9 = v163;
      v128 = *(v163 + 2);
      if (v128 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000284CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 48 * a3 - 48);
    v8 = result - a3;
LABEL_4:
    v26 = v7;
    v27 = a3;
    v9 = (v6 + 48 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v25 = v8;
    while (1)
    {
      v29[0] = v10;
      v29[1] = v11;
      v29[2] = v12;
      v29[3] = v13;
      v29[4] = v14;
      v29[5] = v15;
      v16 = v7[1];
      v17 = v7[2];
      v18 = v7[3];
      v19 = v7[4];
      v20 = v7[5];
      v28[0] = *v7;
      v28[1] = v16;
      v28[2] = v17;
      v28[3] = v18;
      v28[4] = v19;
      v28[5] = v20;

      v21 = sub_100021204(v29, v28, v30);

      if (v5)
      {
        break;
      }

      if (v21)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v7[6];
        v11 = v7[7];
        v12 = v7[8];
        v13 = v7[9];
        v14 = v7[10];
        v15 = v7[11];
        v22 = *(v7 + 1);
        *(v7 + 3) = *v7;
        *(v7 + 4) = v22;
        *(v7 + 5) = *(v7 + 2);
        *v7 = v10;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v7[4] = v14;
        v7[5] = v15;
        v7 -= 6;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v27 + 1;
      v7 = v26 + 6;
      v8 = v25 - 1;
      if (v27 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

Swift::Int sub_10002864C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_10004A368(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_100049F68();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_100027B60(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1000284CC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100028794(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1000260F8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_10002864C(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *sub_100028838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 56) + 48 * (v10 | (v8 << 6)));
        v12 = v11[5];
        if (v12 != 3)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v48 = *v11;
      v14 = v11[2];
      v15 = v11[4];
      v45 = v11[3];
      v52 = v11[1];

      v50 = v15;

      v54 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000238C4(0, *(v9 + 2) + 1, 1);
        v9 = v54;
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v44 = v17 + 1;
        sub_1000238C4((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        v9 = v54;
      }

      *(v9 + 2) = v18;
      v19 = &v9[48 * v17];
      *(v19 + 4) = v48;
      *(v19 + 5) = v52;
      *(v19 + 6) = v14;
      *(v19 + 7) = v45;
      *(v19 + 8) = v50;
      *(v19 + 9) = v12;
    }

    while (v6);
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        v54 = v9;

        sub_100028794(&v54, &off_100059BC8);
        sub_1000027D4(&qword_10005E1B8, &qword_10004BA40);
        swift_arrayDestroy();

        if ((a2 & 0x8000000000000000) == 0)
        {
          v20 = v54;
          v54 = _swiftEmptyArrayStorage;
          sub_1000238E4(0, 0, 0);
          v21 = 0;
          v46 = v20;
          v22 = (v20 + 72);
          v23 = v54;
          do
          {
            v24 = *(v46 + 2);
            if (v21 == v24)
            {
              break;
            }

            if (v21 >= v24)
            {
              goto LABEL_31;
            }

            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = objc_allocWithZone(STUsageDetailItem);

            v28 = sub_100049DF8();
            v29 = [v27 initWithType:v26 identifier:v28];

            v30 = [v29 localizedDisplayName];
            v31 = sub_100049E08();
            v51 = v32;
            v53 = v31;

            v33 = &selRef_darkColorsMonogram;
            if (v26 == 2)
            {
              v34 = &selRef_lightColorsMonogram;
            }

            else
            {
              v33 = &selRef_iconImage;
              v34 = &selRef_iconImage;
            }

            v49 = [v29 *v33];
            v35 = [v29 *v34];
            v36 = [v29 identifier];
            v37 = sub_100049E08();
            v39 = v38;

            v54 = v23;
            v41 = *(v23 + 2);
            v40 = *(v23 + 3);
            if (v41 >= v40 >> 1)
            {
              sub_1000238E4((v40 > 1), v41 + 1, 1);
              v23 = v54;
            }

            ++v21;
            *(v23 + 2) = v41 + 1;
            v42 = &v23[56 * v41];
            *(v42 + 4) = v37;
            *(v42 + 5) = v39;
            *(v42 + 6) = v49;
            *(v42 + 7) = v35;
            *(v42 + 8) = v25;
            *(v42 + 9) = v53;
            *(v42 + 10) = v51;
            v22 += 6;
          }

          while (a2 != v21);

          return v23;
        }

LABEL_32:
        __break(1u);

        __break(1u);
        return result;
      }

      v6 = *(v3 + 8 * v13);
      ++v8;
      if (v6)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100028C50(uint64_t a1)
{
  v2 = sub_100049228();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100048E98();
  __chkstk_darwin(v44);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v10 = 0;
  v41 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = a1 + v41;
  v12 = *(v3 + 72);
  v43 = (v3 + 16);
  v36 = v6 + 16;
  v37 = v6;
  v39 = (v6 + 8);
  v40 = v12;
  v13 = &_swiftEmptyDictionarySingleton;
  v38 = (v3 + 32);
  v42 = v2;
  while (1)
  {
    sub_100049208();
    v14 = v5;
    (*v43)(v5, v11, v2);
    sub_10002C258(v10, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    v17 = sub_1000243B8(v8);
    v18 = v13[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v13[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_100025E6C(&qword_10005E1E8, &qword_10004BA68);
        v13 = v45;
        if (v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1000250D4(v20, isUniquelyReferenced_nonNull_native, &qword_10005E1E8, &qword_10004BA68);
      v13 = v45;
      v22 = sub_1000243B8(v8);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

      v17 = v22;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    v13[(v17 >> 6) + 8] |= 1 << v17;
    (*(v37 + 16))(v13[6] + *(v37 + 72) * v17, v8, v44);
    *(v13[7] + 8 * v17) = _swiftEmptyArrayStorage;
    v24 = v13[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_23;
    }

    v13[2] = v26;
LABEL_12:
    v27 = v13[7];
    v28 = *(v27 + 8 * v17);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 8 * v17) = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_100023424(0, v28[2] + 1, 1, v28, &qword_10005E1F0, &unk_10004BA70, &type metadata accessor for _DeviceActivityData.ActivitySegment);
      *(v27 + 8 * v17) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      *(v27 + 8 * v17) = sub_100023424((v30 > 1), v31 + 1, 1, v28, &qword_10005E1F0, &unk_10004BA70, &type metadata accessor for _DeviceActivityData.ActivitySegment);
    }

    (*v39)(v8, v44);
    v32 = *(v27 + 8 * v17);
    *(v32 + 16) = v31 + 1;
    v33 = v40;
    v34 = v32 + v41 + v31 * v40;
    v5 = v14;
    v2 = v42;
    (*v38)(v34, v14, v42);
    v11 += v33;
    v10 = sub_10002189C;
    if (!--v9)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

unint64_t sub_100029080(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005E1E0, &qword_10004BA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
    v7 = sub_10004A348();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_10005E1E0, &qword_10004BA60);
      result = sub_1000243B8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100048E98();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_100029268(uint64_t a1)
{
  v65 = sub_100049228();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100048E98();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v64 - v10;
  v11 = sub_1000027D4(&qword_10005E180, &qword_10004BA10);
  v12 = __chkstk_darwin(v11 - 8);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v64 - v14;
  v15 = sub_100029080(_swiftEmptyArrayStorage);
  v16 = *(a1 + 64);
  v72 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v64 = (v17 + 63) >> 6;
  v74 = v6 + 16;
  v75 = v6;
  v78 = (v6 + 32);
  v66 = v2 + 16;
  v67 = v2;
  v20 = (v2 + 8);
  v21 = v5;
  v69 = a1;
  v70 = (v6 + 8);
  v22 = v9;

  v23 = 0;
  v76 = v9;
  v81 = v21;
  while (1)
  {
    v80 = v15;
    if (!v19)
    {
      break;
    }

    v24 = v23;
LABEL_16:
    v79 = (v19 - 1) & v19;
    v28 = __clz(__rbit64(v19)) | (v24 << 6);
    v30 = v68;
    v29 = v69;
    v31 = v75;
    v32 = v81;
    (*(v75 + 16))(v68, *(v69 + 48) + *(v75 + 72) * v28, v81);
    v77 = *(*(v29 + 56) + 8 * v28);
    v33 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    v34 = *(v33 + 48);
    v35 = *(v31 + 32);
    v27 = v73;
    v35(v73, v30, v32);
    *(v27 + v34) = v77;
    (*(*(v33 - 8) + 56))(v27, 0, 1, v33);

    v22 = v76;
LABEL_17:
    v36 = v71;
    sub_100004DF8(v27, v71, &qword_10005E180, &qword_10004BA10);
    v37 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {

      return v80;
    }

    v38 = *(v36 + *(v37 + 48));
    (*v78)(v22, v36, v81);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v77 = v38;
      v41 = v38 + v40;
      v42 = *(v67 + 72);
      v43 = *(v67 + 16);
      v44 = 0.0;
      v45 = v65;
      do
      {
        v43(v4, v41, v45);
        sub_1000491F8();
        v47 = v46;
        (*v20)(v4, v45);
        v44 = v44 + v47;
        v41 += v42;
        --v39;
      }

      while (v39);

      v22 = v76;
    }

    else
    {

      v44 = 0.0;
    }

    v48 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v48;
    v51 = sub_1000243B8(v22);
    v52 = v48[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_35;
    }

    v55 = v50;
    if (v48[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000258D0();
      }
    }

    else
    {
      sub_100024748(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_1000243B8(v22);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_37;
      }

      v51 = v56;
    }

    v58 = v81;
    v15 = v82;
    v19 = v79;
    if (v55)
    {
      *(v82[7] + 8 * v51) = v44;
    }

    else
    {
      v82[(v51 >> 6) + 8] |= 1 << v51;
      (*(v75 + 16))(v15[6] + *(v75 + 72) * v51, v22, v58);
      *(v15[7] + 8 * v51) = v44;
      v59 = v15[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_36;
      }

      v15[2] = v61;
    }

    (*v70)(v22, v58);
  }

  if (v64 <= v23 + 1)
  {
    v25 = v23 + 1;
  }

  else
  {
    v25 = v64;
  }

  v26 = v25 - 1;
  v27 = v73;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v64)
    {
      v62 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      (*(*(v62 - 8) + 56))(v27, 1, 1, v62);
      v79 = 0;
      v23 = v26;
      goto LABEL_17;
    }

    v19 = *(v72 + 8 * v24);
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

uint64_t sub_1000298D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  while (v8)
  {
    v9 = v4;
LABEL_10:
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(result + 56) + 48 * (v10 | (v9 << 6)) + 40) == 3)
    {
      v11 = 1 << *(result + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(result + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      if (!v13)
      {
        goto LABEL_16;
      }

      do
      {
LABEL_14:
        while (1)
        {
          v16 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v17 = (*(v3 + 56) + 48 * (v16 | (v15 << 6)));
          if (v17[5] == 3)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_16;
          }
        }

        v19 = v17[2];
        v20 = v17[4];
        v28 = v17[3];
        v29 = *v17;
        v30 = v17[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000238C4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = sub_1000238C4((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
        }

        _swiftEmptyArrayStorage[2] = v23;
        v24 = &_swiftEmptyArrayStorage[6 * v22];
        v24[4] = v29;
        v24[5] = v30;
        v24[6] = v19;
        v24[7] = v28;
        v24[8] = v20;
        v24[9] = 3;
      }

      while (v13);
LABEL_16:
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= v14)
        {

          v25 = sub_1000027D4(&qword_10005E1C0, &qword_10004BA48);
          v32 = v25;
          v33 = sub_100005708(&qword_10005E1C8, &qword_10005E1C0, &qword_10004BA48, &protocol conformance descriptor for [A]);
          v31[0] = _swiftEmptyArrayStorage;
          goto LABEL_27;
        }

        v13 = *(v5 + 8 * v18);
        ++v15;
        if (v13)
        {
          v15 = v18;
          goto LABEL_14;
        }
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v9 >= ((v6 + 63) >> 6))
    {
      break;
    }

    v8 = *(v5 + 8 * v9);
    ++v4;
    if (v8)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  v25 = sub_1000027D4(&qword_10005E1A8, &qword_10004BA38);
  v32 = v25;
  v33 = sub_100005708(&qword_10005E1B0, &qword_10005E1A8, &qword_10004BA38, &protocol conformance descriptor for [A : B].Values);
  v31[0] = v3;

LABEL_27:
  v26 = sub_1000028DC(v31, v25);
  __chkstk_darwin(v26);
  v27 = sub_100049F18();
  sub_1000027D4(&qword_10005E1B8, &qword_10004BA40);
  result = swift_arrayDestroy();
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100002890(v31);
    return v27;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100029C74(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005E1A0, &qword_10004BA30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000027D4(&qword_10005E190, &qword_10004BA20);
    v7 = sub_10004A348();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_10005E1A0, &qword_10004BA30);
      result = sub_1000243B8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100048E98();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100029E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000027D4(&qword_10005E168, &qword_10004BA08);
    v3 = sub_10004A348();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100024340(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100029F60(uint64_t a1, uint64_t a2, void *a3)
{
  v257 = a2;
  v290 = sub_1000491E8();
  v295 = *(v290 - 8);
  __chkstk_darwin(v290);
  v289 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_100049158();
  v6 = *(v294 - 8);
  __chkstk_darwin(v294);
  v293 = &v245 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000491B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v265 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v250 = &v245 - v13;
  __chkstk_darwin(v12);
  v15 = &v245 - v14;
  v282 = sub_100049228();
  v16 = *(v282 - 8);
  __chkstk_darwin(v282);
  v281 = &v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_100048E98();
  v18 = *(v269 - 8);
  v19 = __chkstk_darwin(v269);
  v266 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v268 = &v245 - v22;
  __chkstk_darwin(v21);
  v253 = &v245 - v23;
  v24 = sub_1000027D4(&qword_10005E180, &qword_10004BA10);
  v25 = __chkstk_darwin(v24 - 8);
  v259 = &v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v258 = &v245 - v27;
  v267 = sub_100029C74(_swiftEmptyArrayStorage);
  sub_1000028DC(a3, a3[3]);
  v251 = sub_100049F28();
  v248 = 0;
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(a1 + 64);
  v249 = (v29 + 63) >> 6;
  v264 = (v18 + 16);
  v263 = (v18 + 32);
  v280 = v16 + 16;
  v252 = v16;
  v279 = (v16 + 8);
  v272 = v9;
  v277 = (v9 + 8);
  v274 = CTCategoryIdentifierSystemHidden;
  v297 = v6;
  v291 = v6 + 8;
  v292 = v6 + 16;
  v288 = v295 + 16;
  v287 = v295 + 8;
  v271 = CTCategoryIdentifierSystemUnblockable;
  v270 = CTCategoryIdentifierSystemBlockable;
  v260 = v18;
  v32 = (v18 + 8);
  v33 = v31;
  v255 = v32;
  v254 = a1;

  v34 = 0;
  v284 = v8;
  v283 = v15;
  v256 = a1 + 64;
  v286 = v9 + 16;
  while (1)
  {
    if (v33)
    {
      v261 = v34;
      v37 = v34;
LABEL_17:
      v262 = (v33 - 1) & v33;
      v41 = __clz(__rbit64(v33)) | (v37 << 6);
      v42 = v254;
      v43 = v260;
      v44 = v253;
      v45 = v269;
      (*(v260 + 16))(v253, *(v254 + 48) + *(v260 + 72) * v41, v269);
      v46 = *(*(v42 + 56) + 8 * v41);
      v47 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      v48 = *(v47 + 48);
      v49 = *(v43 + 32);
      v50 = v259;
      v49(v259, v44, v45);
      *&v50[v48] = v46;
      v40 = v50;
      (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
    }

    else
    {
      v38 = v249 <= v34 + 1 ? v34 + 1 : v249;
      v39 = v38 - 1;
      v40 = v259;
      while (1)
      {
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_191;
        }

        if (v37 >= v249)
        {
          break;
        }

        v33 = *(v28 + 8 * v37);
        ++v34;
        if (v33)
        {
          v261 = v37;
          goto LABEL_17;
        }
      }

      v242 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      (*(*(v242 - 8) + 56))(v40, 1, 1, v242);
      v262 = 0;
      v261 = v39;
    }

    v51 = v258;
    sub_100004DF8(v40, v258, &qword_10005E180, &qword_10004BA10);
    v52 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {

      return v267;
    }

    v53 = *(v51 + *(v52 + 48));
    (*v263)(v268, v51, v269);
    v54 = sub_100029E5C(_swiftEmptyArrayStorage);
    v55 = *(v53 + 16);
    if (v55)
    {
      v56 = *(v252 + 80);
      v299 = v53;
      v57 = v53 + ((v56 + 32) & ~v56);
      v58 = *(v252 + 72);
      v59 = *(v252 + 16);
      v60 = _swiftEmptyArrayStorage;
      do
      {
        v61 = v281;
        v62 = v282;
        v59(v281, v57, v282);
        v63 = sub_100049218();
        (*v279)(v61, v62);
        v64 = *(v63 + 16);
        v65 = v60[2];
        v66 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_183;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v60;
        if (!isUniquelyReferenced_nonNull_native || v66 > v60[3] >> 1)
        {
          if (v65 <= v66)
          {
            v69 = v65 + v64;
          }

          else
          {
            v69 = v65;
          }

          v68 = sub_100023424(isUniquelyReferenced_nonNull_native, v69, 1, v60, &qword_10005E198, &qword_10004BA28, &type metadata accessor for _DeviceActivityData.CategoryActivity);
        }

        v15 = v283;
        if (*(v63 + 16))
        {
          if ((v68[3] >> 1) - v68[2] < v64)
          {
            goto LABEL_187;
          }

          v60 = v68;
          swift_arrayInitWithCopy();

          if (v64)
          {
            v70 = v60[2];
            v71 = __OFADD__(v70, v64);
            v72 = v70 + v64;
            if (v71)
            {
              goto LABEL_189;
            }

            v60[2] = v72;
          }
        }

        else
        {
          v60 = v68;

          if (v64)
          {
            goto LABEL_184;
          }
        }

        v57 += v58;
        --v55;
      }

      while (v55);

      v8 = v284;
    }

    else
    {

      v60 = _swiftEmptyArrayStorage;
    }

    v73 = v257;
    v74 = *(v257 + 16);
    v75 = 0.0;
    v278 = v60;
    if (v74)
    {
      v76 = sub_1000243B8(v268);
      v60 = v278;
      if (v77)
      {
        v75 = *(*(v73 + 56) + 8 * v76);
      }
    }

    v78 = v60[2];
    if (v78)
    {
      break;
    }

LABEL_80:

LABEL_168:
    v227 = *v264;
    v228 = v266;
    (*v264)(v266, v268, v269);
    v229 = v267;
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v300 = v229;
    v231 = sub_1000243B8(v228);
    v233 = *(v229 + 16);
    v234 = (v232 & 1) == 0;
    v71 = __OFADD__(v233, v234);
    v235 = v233 + v234;
    if (v71)
    {
      goto LABEL_192;
    }

    v236 = v232;
    if (*(v229 + 24) >= v235)
    {
      if ((v230 & 1) == 0)
      {
        v243 = v231;
        sub_100025E6C(&qword_10005E190, &qword_10004BA20);
        v231 = v243;
      }
    }

    else
    {
      sub_1000250D4(v235, v230, &qword_10005E190, &qword_10004BA20);
      v231 = sub_1000243B8(v266);
      if ((v236 & 1) != (v237 & 1))
      {
        goto LABEL_199;
      }
    }

    v267 = v300;
    if (v236)
    {
      *(*(v300 + 56) + 8 * v231) = v54;
    }

    else
    {
      *(v300 + 8 * (v231 >> 6) + 64) |= 1 << v231;
      v238 = v231;
      v227(*(v267 + 48) + *(v260 + 72) * v231, v266, v269);
      v239 = v267;
      *(*(v267 + 56) + 8 * v238) = v54;
      v240 = *(v239 + 16);
      v71 = __OFADD__(v240, 1);
      v241 = v240 + 1;
      if (v71)
      {
        goto LABEL_193;
      }

      *(v239 + 16) = v241;
    }

    v35 = *v255;
    v36 = v269;
    (*v255)(v266, v269);
    v35(v268, v36);
    v28 = v256;
    v33 = v262;
    v34 = v261;
  }

  v79 = v60 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
  v80 = *(v272 + 72);
  v81 = *(v272 + 16);
  v82 = 0.0;
  v285 = v79;
  v276 = v78;
  v83 = v277;
  v298 = v80;
  v299 = v81;
  do
  {
    v299(v15, v79, v8);
    sub_100049168();
    v85 = v84;
    v86 = *v83;
    (*v83)(v15, v8);
    v87 = v298;
    v88 = v299;
    v82 = v82 + v85;
    v79 += v298;
    --v78;
  }

  while (v78);
  v275 = v86;
  if (v251)
  {
    v89 = 0;
    v90 = v250;
    v91 = v278;
    v92 = v285;
    while (1)
    {
      if (v89 >= v91[2])
      {
        goto LABEL_188;
      }

      v285 = v92;
      v88(v90);
      v93 = sub_100049E08();
      v95 = v94;
      v96 = sub_100049E08();
      v98 = v97;
      v99 = sub_100049E08();
      v101 = v100;
      if (sub_100049178() == v93 && v102 == v95)
      {
        break;
      }

      v103 = sub_10004A398();

      if (v103)
      {
        goto LABEL_50;
      }

      if (sub_100049178() == v96 && v104 == v98)
      {
      }

      else
      {
        v105 = sub_10004A398();

        if ((v105 & 1) == 0)
        {
          v106 = sub_100049178();
          v8 = v284;
          if (v106 == v99 && v107 == v101)
          {

LABEL_79:
            v275(v90, v8);
            goto LABEL_52;
          }

          v108 = sub_10004A398();

          if (v108)
          {
            goto LABEL_79;
          }

          v109 = sub_100049178();
          v111 = v110;
          sub_100049168();
          v113 = 0.0;
          if (v75 >= v82)
          {
            if (v75 != 0.0)
            {
              v113 = v112 / v75;
            }
          }

          else if (v82 != 0.0)
          {
            v113 = v112 / v82;
          }

          v114 = swift_isUniquelyReferenced_nonNull_native();
          v300 = v54;
          v115 = sub_100024340(v109, v111);
          v117 = *(v54 + 16);
          v118 = (v116 & 1) == 0;
          v71 = __OFADD__(v117, v118);
          v119 = v117 + v118;
          if (v71)
          {
            goto LABEL_196;
          }

          v120 = v116;
          if (*(v54 + 24) >= v119)
          {
            if (v114)
            {
              goto LABEL_73;
            }

            v123 = v115;
            sub_100025D04();
            v115 = v123;
            v54 = v300;
            if ((v120 & 1) == 0)
            {
              goto LABEL_76;
            }

LABEL_74:
            v122 = v115;

            v115 = v122;
          }

          else
          {
            sub_100024E30(v119, v114);
            v115 = sub_100024340(v109, v111);
            if ((v120 & 1) != (v121 & 1))
            {
              goto LABEL_198;
            }

LABEL_73:
            v54 = v300;
            if (v120)
            {
              goto LABEL_74;
            }

LABEL_76:
            *(v54 + 8 * (v115 >> 6) + 64) |= 1 << v115;
            v124 = (*(v54 + 48) + 16 * v115);
            *v124 = v109;
            v124[1] = v111;
            *(*(v54 + 56) + 8 * v115) = 0;
            v125 = *(v54 + 16);
            v71 = __OFADD__(v125, 1);
            v126 = v125 + 1;
            if (v71)
            {
              goto LABEL_197;
            }

            *(v54 + 16) = v126;
          }

          *(*(v54 + 56) + 8 * v115) = v113 + *(*(v54 + 56) + 8 * v115);
          v90 = v250;
          goto LABEL_79;
        }
      }

      v8 = v284;
      v275(v90, v284);
LABEL_51:

LABEL_52:
      ++v89;
      v88 = v299;
      v92 = &v285[v298];
      v91 = v278;
      if (v276 == v89)
      {

        v15 = v283;
        goto LABEL_168;
      }
    }

LABEL_50:
    v8 = v284;
    v275(v90, v284);

    goto LABEL_51;
  }

  v127 = 0;
  v128 = v265;
  v129 = v278;
  while (1)
  {
    if (v127 >= v129[2])
    {
      goto LABEL_190;
    }

    v273 = v127;
    (v88)(v128, &v285[v127 * v87], v8);
    v131 = sub_100049E08();
    v133 = v132;
    if (sub_100049178() == v131 && v134 == v133)
    {

      goto LABEL_83;
    }

    v135 = sub_10004A398();

    if (v135)
    {
      goto LABEL_83;
    }

    v136 = sub_1000491A8();
    v137 = v136;
    v138 = *(v136 + 16);
    if (v138)
    {
      break;
    }

LABEL_128:
    v181 = sub_100049188();
    v182 = v181;
    v183 = *(v181 + 16);
    if (v183)
    {
      v184 = 0;
      v185 = v181 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
      while (1)
      {
        if (v184 >= *(v182 + 16))
        {
          goto LABEL_181;
        }

        v188 = v295;
        v189 = v289;
        v190 = v290;
        (*(v295 + 16))(v289, v185 + *(v295 + 72) * v184, v290);
        v191 = sub_1000491D8();
        v193 = v192;
        sub_1000491C8();
        v195 = v194;
        (*(v188 + 8))(v189, v190);
        v196 = 0.0;
        if (v75 >= v82)
        {
          if (v75 != 0.0)
          {
            v196 = v195 / v75;
          }
        }

        else if (v82 != 0.0)
        {
          v196 = v195 / v82;
        }

        v197 = swift_isUniquelyReferenced_nonNull_native();
        v300 = v54;
        v187 = sub_100024340(v191, v193);
        v199 = *(v54 + 16);
        v200 = (v198 & 1) == 0;
        v71 = __OFADD__(v199, v200);
        v201 = v199 + v200;
        if (v71)
        {
          goto LABEL_182;
        }

        v202 = v198;
        if (*(v54 + 24) < v201)
        {
          break;
        }

        if (v197)
        {
          goto LABEL_143;
        }

        v246 = v187;
        sub_1000027D4(&qword_10005E168, &qword_10004BA08);
        v207 = sub_10004A328();
        v208 = v207;
        if (*(v54 + 16))
        {
          v209 = (v207 + 64);
          v210 = (v54 + 64);
          v211 = ((1 << *(v208 + 32)) + 63) >> 6;
          v245 = v54 + 64;
          if (v208 != v54 || v209 >= &v210[8 * v211])
          {
            memmove(v209, v210, 8 * v211);
          }

          v212 = 0;
          v213 = *(v54 + 16);
          v247 = v208;
          *(v208 + 16) = v213;
          v214 = 1 << *(v54 + 32);
          if (v214 < 64)
          {
            v215 = ~(-1 << v214);
          }

          else
          {
            v215 = -1;
          }

          v216 = v215 & *(v54 + 64);
          v217 = (v214 + 63) >> 6;
          if (v216)
          {
            do
            {
              v218 = __clz(__rbit64(v216));
              v296 = (v216 - 1) & v216;
LABEL_160:
              v221 = v218 | (v212 << 6);
              v222 = (*(v54 + 48) + 16 * v221);
              v223 = v222[1];
              v224 = *(*(v54 + 56) + 8 * v221);
              v225 = v247;
              v226 = (*(v247 + 48) + 16 * v221);
              *v226 = *v222;
              v226[1] = v223;
              *(*(v225 + 56) + 8 * v221) = v224;

              v216 = v296;
            }

            while (v296);
          }

          v219 = v212;
          while (1)
          {
            v212 = v219 + 1;
            if (__OFADD__(v219, 1))
            {
              goto LABEL_195;
            }

            if (v212 >= v217)
            {
              break;
            }

            v220 = *(v245 + 8 * v212);
            ++v219;
            if (v220)
            {
              v218 = __clz(__rbit64(v220));
              v296 = (v220 - 1) & v220;
              goto LABEL_160;
            }
          }

          v208 = v247;
        }

        v54 = v208;
        v187 = v246;
        if ((v202 & 1) == 0)
        {
LABEL_144:
          *(v54 + 8 * (v187 >> 6) + 64) |= 1 << v187;
          v204 = (*(v54 + 48) + 16 * v187);
          *v204 = v191;
          v204[1] = v193;
          *(*(v54 + 56) + 8 * v187) = 0;
          v205 = *(v54 + 16);
          v71 = __OFADD__(v205, 1);
          v206 = v205 + 1;
          if (v71)
          {
            goto LABEL_186;
          }

          *(v54 + 16) = v206;
          goto LABEL_131;
        }

LABEL_130:
        v186 = v187;

        v187 = v186;
LABEL_131:
        ++v184;
        *(*(v54 + 56) + 8 * v187) = v196 + *(*(v54 + 56) + 8 * v187);
        if (v184 == v183)
        {

          v8 = v284;
          v128 = v265;
          goto LABEL_167;
        }
      }

      sub_100024E30(v201, v197);
      v54 = v300;
      v187 = sub_100024340(v191, v193);
      if ((v202 & 1) != (v203 & 1))
      {
        goto LABEL_198;
      }

LABEL_143:
      if ((v202 & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_130;
    }

    v8 = v284;
LABEL_167:
    v15 = v283;
LABEL_83:
    v130 = v273 + 1;
    v275(v128, v8);
    v127 = v130;
    v129 = v278;
    v87 = v298;
    v88 = v299;
    if (v130 == v276)
    {
      goto LABEL_80;
    }
  }

  v139 = 0;
  v296 = v136 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
  while (v139 < *(v137 + 16))
  {
    v140 = v297;
    v141 = v293;
    v142 = v294;
    (*(v297 + 16))(v293, v296 + *(v297 + 72) * v139, v294);
    v143 = sub_100049138();
    v145 = v144;
    sub_100049128();
    v147 = v146;
    (*(v140 + 8))(v141, v142);
    v148 = 0.0;
    if (v75 >= v82)
    {
      if (v75 != 0.0)
      {
        v148 = v147 / v75;
      }
    }

    else if (v82 != 0.0)
    {
      v148 = v147 / v82;
    }

    v149 = swift_isUniquelyReferenced_nonNull_native();
    v300 = v54;
    v151 = sub_100024340(v143, v145);
    v152 = *(v54 + 16);
    v153 = (v150 & 1) == 0;
    v154 = v152 + v153;
    if (__OFADD__(v152, v153))
    {
      goto LABEL_180;
    }

    v155 = v150;
    if (*(v54 + 24) >= v154)
    {
      if (v149)
      {
        if ((v150 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        sub_1000027D4(&qword_10005E168, &qword_10004BA08);
        v161 = sub_10004A328();
        v162 = v161;
        if (*(v54 + 16))
        {
          v163 = (v161 + 64);
          v164 = (v54 + 64);
          v165 = ((1 << *(v162 + 32)) + 63) >> 6;
          v245 = v54 + 64;
          if (v162 != v54 || v163 >= &v164[8 * v165])
          {
            memmove(v163, v164, 8 * v165);
          }

          v166 = 0;
          v167 = *(v54 + 16);
          v246 = v162;
          *(v162 + 16) = v167;
          v168 = 1 << *(v54 + 32);
          if (v168 < 64)
          {
            v169 = ~(-1 << v168);
          }

          else
          {
            v169 = -1;
          }

          v170 = v169 & *(v54 + 64);
          v171 = (v168 + 63) >> 6;
          if (v170)
          {
            do
            {
              v172 = __clz(__rbit64(v170));
              v247 = (v170 - 1) & v170;
LABEL_121:
              v175 = v172 | (v166 << 6);
              v176 = (*(v54 + 48) + 16 * v175);
              v177 = v176[1];
              v178 = *(*(v54 + 56) + 8 * v175);
              v179 = v246;
              v180 = (*(v246 + 48) + 16 * v175);
              *v180 = *v176;
              v180[1] = v177;
              *(*(v179 + 56) + 8 * v175) = v178;

              v170 = v247;
            }

            while (v247);
          }

          v173 = v166;
          while (1)
          {
            v166 = v173 + 1;
            if (__OFADD__(v173, 1))
            {
              goto LABEL_194;
            }

            if (v166 >= v171)
            {
              break;
            }

            v174 = *(v245 + 8 * v166);
            ++v173;
            if (v174)
            {
              v172 = __clz(__rbit64(v174));
              v247 = (v174 - 1) & v174;
              goto LABEL_121;
            }
          }

          v162 = v246;
        }

        v54 = v162;
        if ((v155 & 1) == 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      sub_100024E30(v154, v149);
      v54 = v300;
      v156 = sub_100024340(v143, v145);
      if ((v155 & 1) != (v157 & 1))
      {
        goto LABEL_198;
      }

      v151 = v156;
      if ((v155 & 1) == 0)
      {
LABEL_105:
        *(v54 + 8 * (v151 >> 6) + 64) |= 1 << v151;
        v158 = (*(v54 + 48) + 16 * v151);
        *v158 = v143;
        v158[1] = v145;
        *(*(v54 + 56) + 8 * v151) = 0;
        v159 = *(v54 + 16);
        v71 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v71)
        {
          goto LABEL_185;
        }

        *(v54 + 16) = v160;
        goto LABEL_91;
      }
    }

LABEL_91:
    ++v139;
    *(*(v54 + 56) + 8 * v151) = v148 + *(*(v54 + 56) + 8 * v151);
    if (v139 == v138)
    {

      v128 = v265;
      goto LABEL_128;
    }
  }

  __break(1u);
LABEL_180:
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
  sub_10004A3C8();
  __break(1u);
LABEL_199:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}