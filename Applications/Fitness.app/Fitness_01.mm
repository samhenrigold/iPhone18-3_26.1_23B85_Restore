uint64_t sub_10001AA08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for DashboardCardCellViewCache(uint64_t a1)
{
  result = qword_1008E0178;
  if (!qword_1008E0178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10001AA8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100140278(a5, a6);
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

uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10001ACC8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DE590, &qword_1006D7D10);
  __chkstk_darwin(v2 - 8);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  __chkstk_darwin(v7);
  v43 = v37 - v8;
  v44 = type metadata accessor for Date();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001599C(a1);
  v13 = v12[2];
  if (v13)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10001E734(0, v13, 0);
    v14 = v45;
    v16 = *(v9 + 16);
    v15 = v9 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v39 = (v15 - 8);
    v40 = v16;
    v18 = *(v15 + 56);
    v37[1] = v12;
    v38 = v18;
    v41 = v15;
    do
    {
      v40(v11, v17, v44);
      v19.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (qword_1008DA540 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Calendar();
      sub_10001AC90(v20, qword_100924FE8);
      isa = Calendar._bridgeToObjectiveC()().super.isa;
      v22 = _HKActivityCacheDateComponentsFromDate();

      if (v22)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = type metadata accessor for DateComponents();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v6, v23, 1, v24);
      v26 = v6;
      v27 = v43;
      sub_100015E80(v6, v43, &qword_1008DE590, &qword_1006D7D10);
      v28 = v27;
      v29 = v42;
      sub_10001B104(v28, v42, &qword_1008DE590, &qword_1006D7D10);
      v30 = (*(v25 + 48))(v29, 1, v24);
      v31 = 0;
      if (v30 != 1)
      {
        v32 = v42;
        v31 = DateComponents._bridgeToObjectiveC()().super.isa;
        (*(v25 + 8))(v32, v24);
      }

      v33 = _HKCacheIndexFromDateComponents();

      sub_10000EA04(v43, &qword_1008DE590, &qword_1006D7D10);
      (*v39)(v11, v44);
      v45 = v14;
      v35 = v14[2];
      v34 = v14[3];
      if (v35 >= v34 >> 1)
      {
        sub_10001E734((v34 > 1), v35 + 1, 1);
        v14 = v45;
      }

      v14[2] = v35 + 1;
      v14[v35 + 4] = v33;
      v17 += v38;
      --v13;
      v6 = v26;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

uint64_t sub_10001B104(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100140278(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = type metadata accessor for Calendar.Component();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v6 - 8);
  v34 = v32 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = v32 - v12;
  __chkstk_darwin(v13);
  v15 = v32 - v14;
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Calendar();
  v33 = sub_10001AC90(v19, qword_100924FE8);
  DateInterval.start.getter();
  v35 = v18;
  Calendar.startOfDay(for:)();
  v20 = *(v9 + 8);
  v20(v15, v8);
  (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v39);
  v21 = v40;
  v32[1] = a1;
  DateInterval.end.getter();
  Calendar.startOfDay(for:)();
  v20(v21, v8);
  v22 = v34;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v33 = v20;
  v20(v15, v8);
  (*(v3 + 8))(v5, v39);
  v23 = *(v9 + 48);
  v24 = v23(v22, 1, v8);
  v36 = v9;
  if (v24 == 1)
  {
    v25 = v37;
    DateInterval.end.getter();
    v26 = v23(v22, 1, v8);
    v27 = v25;
    if (v26 != 1)
    {
      sub_10000EA04(v22, &unk_1008F73A0, &unk_1006DB450);
    }
  }

  else
  {
    v27 = v37;
    (*(v9 + 32))(v37, v22, v8);
  }

  v28 = v35;
  v29 = *(v36 + 16);
  v29(v15, v35, v8);
  v29(v40, v27, v8);
  DateInterval.init(start:end:)();
  v30 = v33;
  v33(v27, v8);
  return v30(v28, v8);
}

void sub_10001B5CC(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[394];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() kilocalorieUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_10001C204@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = result;
    v7 = (a4 - a3) / result;
    v8 = _swiftEmptyArrayStorage;
    if (result)
    {
      v9 = _swiftEmptyArrayStorage;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10001C378(0, *(v8 + 2) + 1, 1, v8);
        }

        v11 = *(v8 + 2);
        v10 = *(v8 + 3);
        if (v11 >= v10 >> 1)
        {
          v8 = sub_10001C378((v10 > 1), v11 + 1, 1, v8);
        }

        *(v8 + 2) = v11 + 1;
        *&v8[8 * v11 + 32] = v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10001C47C(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_10001C47C((v12 > 1), v13 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v13 + 1;
        v14 = &v9[24 * v13];
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        v14[48] = 1;
        v4 = v7 + v4;
        --v5;
      }

      while (v5);
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = xmmword_1006E8D80;
  }

  return result;
}

char *sub_10001C378(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE480, &unk_1006D8E10);
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

char *sub_10001C47C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE418, &qword_1006D7B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_10001C59C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Calendar();
  sub_10001AC90(v11, qword_100924FE8);
  v12 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = Calendar.isDateInToday(_:)();
  result = (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    if ((a3 & 0x10) != 0)
    {
      v15 = [a1 sumQuantity];
    }

    else
    {
      v15 = [a1 averageQuantity];
    }

    v16 = v15;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*(a4 + 16) + 16) >= *(*(a4 + 16) + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

void *sub_10001C794(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100140278(a5, a6);
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

void *sub_10001C970(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100140278(&qword_1008E5C78, ".V\v");
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000216FC(&qword_1008E5C80, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000216FC(&qword_1008E5C88, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10001CC90()
{
  v1 = v0;
  v2 = 0;
  v3 = *v0;
  v4 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_friendListSectionManager);
  if (![v12 hasInitializedFriendData])
  {
    return;
  }

  v13 = [v12 allFriends];
  if (!v13)
  {
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v14 = v13;
  v64 = v6;
  v60 = v8;
  sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
  sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0, ASFriend_ptr);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v62 = v3;
  v63 = v11;
  v61 = v7;
  if ((v15 & 0xC000000000000001) == 0)
  {
    v33 = *(v15 + 32);
    v57 = ((1 << v33) + 63) >> 6;
    if ((v33 & 0x3Fu) <= 0xD)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

  v59 = 0;
  v17 = &_swiftEmptySetSingleton;
  v67 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v18 = __CocoaSet.Iterator.next()();
  if (!v18)
  {
LABEL_24:

    v11 = v63;
    v6 = v64;
    v2 = v59;
    goto LABEL_45;
  }

  v2 = &selRef_initWithLayer_;
  while (1)
  {
    v65 = v18;
    swift_dynamicCast();
    v19 = v66;
    if ([v66 isMe] & 1) == 0 && objc_msgSend(v19, "isFriendshipCurrentlyActive") && (objc_msgSend(v19, "isActivityDataCurrentlyVisibleToMe"))
    {
      break;
    }

LABEL_7:
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  v20 = v66;
  v21 = v17[2];
  if (v17[3] <= v21)
  {
    sub_100066904(v21 + 1);
  }

  v17 = v67;
  v15 = v20;
  v22 = NSObject._rawHashValue(seed:)(v67[5]);
  v23 = (v17 + 7);
  v24 = -1 << *(v17 + 32);
  v25 = v22 & ~v24;
  v26 = v25 >> 6;
  if (((-1 << v25) & ~v17[(v25 >> 6) + 7]) != 0)
  {
    v27 = __clz(__rbit64((-1 << v25) & ~v17[(v25 >> 6) + 7])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
    *(v17[6] + 8 * v27) = v20;
    ++v17[2];
    goto LABEL_7;
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *&v23[8 * v26];
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_54:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_27:
    v56 = &v56;
    __chkstk_darwin(v16);
    v58 = &v56 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v58, v34);
    v59 = 0;
    v35 = 0;
    v36 = 1 << *(v15 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v15 + 56);
    v39 = (v36 + 63) >> 6;
    while (v38)
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_38:
      v6 = v40 | (v35 << 6);
      v43 = *(*(v15 + 48) + 8 * v6);
      if (([v43 isMe] & 1) != 0 || !objc_msgSend(v43, "isFriendshipCurrentlyActive"))
      {
      }

      else
      {
        v11 = [v43 isActivityDataCurrentlyVisibleToMe];

        if (v11)
        {
          *&v58[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          v44 = __OFADD__(v59, 1);
          v59 = (v59 + 1);
          if (v44)
          {
            __break(1u);
LABEL_44:
            v17 = sub_1004C0D28(v58, v57, v59, v15);
            goto LABEL_45;
          }
        }
      }
    }

    v41 = v35;
    v11 = v63;
    v6 = v64;
    while (1)
    {
      v35 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v35 >= v39)
      {
        goto LABEL_44;
      }

      v42 = *(v15 + 56 + 8 * v35);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v38 = (v42 - 1) & v42;
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  v55 = swift_slowAlloc();
  v17 = sub_1004C0C98(v55, v57, v15, sub_10035323C);

  v11 = v63;
  v6 = v64;
LABEL_45:

  v32 = sub_10002C98C(v17);

  v7 = v61;
  v3 = v62;
  v8 = v60;
LABEL_46:
  v45 = Date.init()();
  __chkstk_darwin(v45);
  *(&v56 - 2) = v11;
  sub_10002E4C0(sub_10002E774, (&v56 - 4), v32);
  v67 = v46;

  sub_10002E8E0(&v67);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v47 = v67;
    if (v67[2] >= 0xA)
    {
      v48 = 10;
    }

    else
    {
      v48 = v67[2];
    }

    v49 = *(type metadata accessor for ActivitySharingHighlight(0) - 8);
    v50 = v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v51 = (2 * v48) | 1;
    v52 = type metadata accessor for TaskPriority();
    (*(*(v52 - 8) + 56))(v6, 1, 1, v52);
    type metadata accessor for MainActor();

    v53 = static MainActor.shared.getter();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = &protocol witness table for MainActor;
    v54[4] = v47;
    v54[5] = v50;
    v54[6] = 0;
    v54[7] = v51;
    v54[8] = v1;
    v54[9] = v3;
    sub_10026E198(0, 0, v6, &unk_1006EAF40, v54);

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_10001D460()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001D4A8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000059F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D4F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10001D510(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10001D528(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_10001D544(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v38 - v6;

  v8 = sub_100049B38(v7);

  v52 = &_swiftEmptySetSingleton;
  v46 = &v52;
  v47 = v1;
  v44 = v1;
  UnfairLock.acquire<A>(_:)();
  v9 = v52;
  v10 = v52 + 56;
  v11 = 1 << v52[32];
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v52 + 7);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 56;

  v16 = 0;
  v43 = v4;
LABEL_5:
  while (v13)
  {
    v17 = v13;
LABEL_11:
    v13 = (v17 - 1) & v17;
    if (*(v8 + 16))
    {
      v19 = *(*(v9 + 6) + (__clz(__rbit64(v17)) | (v16 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      if ((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (*(*(v8 + 48) + v22) != v19)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v40 = v13;
        v41 = v9;
        v42 = v8;
        v24 = type metadata accessor for TaskPriority();
        v25 = *(v24 - 8);
        v26 = v45;
        (*(v25 + 56))(v45, 1, 1, v24);
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        v28 = v44;
        *(v27 + 32) = v44;
        *(v27 + 40) = v19;
        v29 = v26;
        v30 = v43;
        sub_10001B104(v29, v43, &qword_1008E1760, &qword_1006D4490);
        v39 = v25;
        v31 = (*(v25 + 48))(v30, 1, v24);
        v32 = v28;

        if (v31 == 1)
        {
          sub_10000EA04(v30, &qword_1008E1760, &qword_1006D4490);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v39 + 8))(v30, v24);
        }

        v33 = *(v27 + 16);
        swift_unknownObjectRetain();

        v13 = v40;
        if (v33)
        {
          swift_getObjectType();
          v34 = dispatch thunk of Actor.unownedExecutor.getter();
          v36 = v35;
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        sub_10000EA04(v45, &qword_1008E1760, &qword_1006D4490);
        v37 = swift_allocObject();
        *(v37 + 16) = &unk_1006ED838;
        *(v37 + 24) = v27;
        sub_100140278(&qword_1008DC408, &qword_1006D4870);
        if (v36 | v34)
        {
          v48 = 0;
          v49 = 0;
          v50 = v34;
          v51 = v36;
        }

        v8 = v42;
        swift_task_create();

        v9 = v41;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v17 = *&v10[8 * v18];
    ++v16;
    if (v17)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10001D9FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001DA3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DA74(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_10001D510(*v2, *(v2 + 8), *(v2 + 16));
  return v3;
}

uint64_t type metadata accessor for MetricDetailViewModel(uint64_t a1)
{
  result = qword_1008ECE48;
  if (!qword_1008ECE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10001DB1C(void *a1, uint64_t a2, double a3)
{
  v6 = sub_100140278(&qword_1008DCC58, &unk_1006D5620);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 + -40.0 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a3 + -40.0;
  }

  v17 = floor((v16 + -10.0) * 0.5);
  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_1000066AC(a1, v19);
  if ((*(v20 + 24))(v19, v20))
  {
    return v16;
  }

  sub_10001B104(a2, v8, &qword_1008DCC58, &unk_1006D5620);
  v21 = *(v13 + 48);
  if (v21(v8, 1, v12) == 1)
  {
    v22 = [objc_opt_self() sharedApplication];
    v23 = [v22 preferredContentSizeCategory];

    DynamicTypeSize.init(_:)();
    if (v21(v8, 1, v12) != 1)
    {
      sub_10000EA04(v8, &qword_1008DCC58, &unk_1006D5620);
    }
  }

  else
  {
    (*(v13 + 32))(v11, v8, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v21(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008DCC58, &unk_1006D5620);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v24 = a1[3];
    v25 = a1[4];
    sub_1000066AC(a1, v24);
    v26 = (*(v25 + 16))(v24, v25);
    v28 = v27;
    LOBYTE(v24) = v29;
    LOBYTE(v25) = sub_10001DEC8(v15, v26, v27, v29);
    sub_10001D4F8(v26, v28, v24);
    (*(v13 + 8))(v15, v12);
    if ((v25 & 0xFE) != 0)
    {
      return v16;
    }
  }

  return v18;
}

uint64_t sub_10001DEC8(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v18 = a3;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 104);
  v11(v10, enum case for DynamicTypeSize.large(_:), v6, v8);
  sub_10001E0D8(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v10, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (a4 - 1 >= 2)
  {
    if (!a4)
    {
LABEL_6:
      v14 = &enum case for DynamicTypeSize.xxxLarge(_:);
      goto LABEL_10;
    }

    if (a4 != 3)
    {
      return 1;
    }

    if (__PAIR128__((a2 >= 2) + v18 - 1, a2 - 2) < 2)
    {
      goto LABEL_6;
    }

    if (a2 ^ 7 | v18)
    {
      return 1;
    }
  }

  v14 = &enum case for DynamicTypeSize.accessibility1(_:);
LABEL_10:
  (v11)(v10, *v14, v6);
  v16 = static DynamicTypeSize.< infix(_:_:)();
  v13(v10, v6);
  if (v16)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10001E0D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E120(uint64_t a1, uint64_t a2, double a3)
{
  v39 = a1;
  v5 = sub_100140278(&qword_1008DCC58, &unk_1006D5620);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 preferredContentSizeCategory];

  sub_10001B104(a2, v7, &qword_1008DCC58, &unk_1006D5620);
  v17 = *(v12 + 48);
  if (v17(v7, 1, v11) == 1)
  {
    v18 = v16;
    DynamicTypeSize.init(_:)();
    v19 = v16;
    if (v17(v7, 1, v11) != 1)
    {
      sub_10000EA04(v7, &qword_1008DCC58, &unk_1006D5620);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v7, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v19 = v16;
  }

  if (v17(v10, 1, v11) == 1)
  {

    v20 = &qword_1008DCC58;
    v21 = &unk_1006D5620;
    v22 = v10;
LABEL_11:
    sub_10000EA04(v22, v20, v21);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_10001B104(v39, &v40, &qword_1008DCC60, &qword_1006DEBC0);
  if (!v41)
  {
    (*(v12 + 8))(v14, v11);

    v20 = &qword_1008DCC60;
    v21 = &qword_1006DEBC0;
    v22 = &v40;
    goto LABEL_11;
  }

  sub_100006260(&v40, v42);
  v23 = v43;
  v24 = v44;
  sub_1000066AC(v42, v43);
  if ((*(v24 + 24))(v23, v24))
  {
    (*(v12 + 8))(v14, v11);

    sub_100005A40(v42);
    return 0;
  }

  v26 = v43;
  v27 = v44;
  sub_1000066AC(v42, v43);
  v28 = (*(v27 + 16))(v26, v27);
  v30 = v29;
  LOBYTE(v27) = v31;
  v32 = sub_10001DEC8(v14, v28, v29, v31);
  sub_10001D4F8(v28, v30, v27);
  if (!v32)
  {
    v33 = 1.05;
    goto LABEL_17;
  }

  if (v32 == 1)
  {
    v33 = 1.15;
LABEL_17:
    v34 = v33 * a3;
    if (qword_1008DAB10 != -1)
    {
      swift_once();
    }

    if (byte_100925960)
    {
      v34 = v34 * 1.15;
    }

    if (qword_1008DAB18 != -1)
    {
      swift_once();
    }

    v35 = byte_100925961;

    (*(v12 + 8))(v14, v11);
    v36 = v34 * 1.15;
    if (!v35)
    {
      v36 = v34;
    }

    v37 = v36;
    goto LABEL_27;
  }

  (*(v12 + 8))(v14, v11);
  v37 = 0.0;
LABEL_27:
  sub_100005A40(v42);
  return *&v37;
}

char *sub_10001E638(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100140278(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_10001E734(char *a1, int64_t a2, char a3)
{
  result = sub_10001E638(a1, a2, a3, *v3, &qword_1008DE5B8, &qword_1006D7D38);
  *v3 = result;
  return result;
}

void *sub_10001E764(void *result, int64_t a2, char a3, void *a4)
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
    sub_100140278(&qword_1008DE5A8, &qword_1006D7D28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE5B0, &qword_1006D7D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001E898(void *a1, int64_t a2, char a3)
{
  result = sub_10001E764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10001E8B8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = v11 + v10;
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 223) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v12 + 239) & 0xFFFFFFFFFFFFFFF8;
  sub_10001668C(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v9), v3 + v11, *(v3 + v13), *(v3 + v13 + 8), (v3 + v14), *(v3 + v15), *(v3 + v15 + 8), *(v3 + v16), *(v3 + v16 + 8), *(v3 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_10001E9E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t type metadata accessor for FitnessPlusSampleContentTip(uint64_t a1)
{
  result = qword_1008EBC58;
  if (!qword_1008EBC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadTrackingTip(uint64_t a1)
{
  result = qword_1008F28B0;
  if (!qword_1008F28B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CustomizeSummaryTip(uint64_t a1)
{
  result = qword_1008F0220;
  if (!qword_1008F0220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityDashboardViewController(uint64_t a1)
{
  result = qword_1008EE618;
  if (!qword_1008EE618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001EB9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001EC80()
{
  v0 = sub_100140278(&qword_1008E5718, &unk_1006E3CB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notification();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_10001FF10();
  return sub_10000EA04(v2, &qword_1008E5718, &unk_1006E3CB0);
}

char *sub_10001ED54(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_dataProvider] = a1;
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_healthStore] = a2;
  v15 = type metadata accessor for TrendsAvailabilityManager();
  v34.receiver = v2;
  v34.super_class = v15;
  v28 = a1;
  v27 = a2;
  v16 = objc_msgSendSuper2(&v34, "init");
  if (qword_1008DAFA0 != -1)
  {
    swift_once();
  }

  if ((byte_1008F8688 & 1) == 0)
  {
    if (qword_1008DAFA8 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8689 & 1) == 0)
    {
      v17 = [objc_opt_self() standardUserDefaults];
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 integerForKey:v18];

      if (v19 <= 3 && *&v16[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] != v19)
      {
        *&v16[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] = v19;
        v20 = [objc_opt_self() defaultCenter];
        if (qword_1008DAD60 != -1)
        {
          swift_once();
        }

        [v20 postNotificationName:qword_100925E00 object:v16];
      }

      v21 = [objc_opt_self() defaultCenter];
      if (qword_1008DAE08 != -1)
      {
        swift_once();
      }

      [v21 addObserver:v16 selector:? name:? object:?];
    }
  }

  sub_1000078CC();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  aBlock[4] = sub_100546840;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085FDF8;
  v24 = _Block_copy(aBlock);
  v25 = v16;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v31 + 8))(v7, v5);
  (*(v29 + 8))(v10, v30);

  return v25;
}

uint64_t sub_10001F2F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F328(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1000059F8(0, &qword_1008E04E8, HKWorkoutEffortRelationship_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

void sub_10001F490()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v89 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v90 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v27 = &v73 - v24;
  if (qword_1008DAFA0 != -1)
  {
    v85 = v26;
    v86 = v25;
    v82 = v1;
    v88 = &v73 - v24;
    v71 = v23;
    swift_once();
    v26 = v85;
    v25 = v86;
    v23 = v71;
    v27 = v88;
    v1 = v82;
  }

  if (byte_1008F8688)
  {
    goto LABEL_7;
  }

  if (qword_1008DAFA8 != -1)
  {
    v85 = v26;
    v86 = v25;
    v82 = v1;
    v88 = v27;
    v72 = v23;
    swift_once();
    v26 = v85;
    v25 = v86;
    v23 = v72;
    v27 = v88;
    v1 = v82;
  }

  if (byte_1008F8689)
  {
LABEL_7:
    v28 = static os_log_type_t.default.getter();
    v29 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "TrendsAvailabilityManager - shouldBypassAvailabilityCheck is true", 65, 2, _swiftEmptyArrayStorage);

    v30 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
    v31 = 3;
LABEL_8:
    *(v0 + v30) = v31;
    return;
  }

  v85 = v26;
  v86 = v25;
  v84 = v2;
  v87 = v23;
  v88 = v27;
  v32 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_healthStore);
  if (FIExperienceTypeWithHealthStore() != 1)
  {
    v41 = static os_log_type_t.default.getter();
    v40 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v40, "TrendsAvailabilityManager - unavailable due experience type", 59, 2, _swiftEmptyArrayStorage);
    goto LABEL_16;
  }

  v82 = v1;
  v83 = v14;
  v81 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_dataProvider);
  v33 = *(v81 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache);
  v34 = [v33 activitySummaryForCacheIndex:{objc_msgSend(v33, "latestActivitySummaryIndex")}];

  if (!v34)
  {
    v91 = 0;
    v35 = [v32 activityMoveModeWithError:&v91];
    if (!v35)
    {
      v50 = v91;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v51 = static os_log_type_t.default.getter();
      v52 = HKLogActivity;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "TrendsAvailabilityManager - activityMoveMode not available", 58, 2, _swiftEmptyArrayStorage);

      return;
    }

    v34 = v35;
    v36 = v91;
  }

  v37 = [v34 activityMoveMode];

  v38 = v90;
  if (v37 == 2)
  {
    v39 = static os_log_type_t.default.getter();
    v40 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "TrendsAvailabilityManager - unavailable due to move mode", 56, 2, _swiftEmptyArrayStorage);
LABEL_16:

    v30 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
    v31 = 1;
    goto LABEL_8;
  }

  v76 = v0;
  Date.init()();
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Calendar();
  sub_10001AC90(v42, qword_100925018);
  v43 = *(v38 + 104);
  v80 = enum case for Calendar.Component.day(_:);
  v79 = v43;
  v43(v6);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v44 = *(v38 + 8);
  v90 = v38 + 8;
  v78 = v44;
  v44(v6, v4);
  v45 = v83;
  v77 = *(v83 + 48);
  if (v77(v12, 1, v87) == 1)
  {
    v9 = v12;
LABEL_23:
    sub_10000EA04(v9, &unk_1008F73A0, &unk_1006DB450);
    v48 = static os_log_type_t.default.getter();
    v49 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "TrendsAvailabilityManager - failed to calculate date for last year/90 days", 74, 2, _swiftEmptyArrayStorage);

    (*(v45 + 8))(v88, v87);
    return;
  }

  v46 = v12;
  v47 = v87;
  v74 = *(v45 + 32);
  v75 = v45 + 32;
  v74(v86, v46, v87);
  v79(v6, v80, v4);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v78(v6, v4);
  if (v77(v9, 1, v47) == 1)
  {
    (*(v45 + 8))(v86, v87);
    goto LABEL_23;
  }

  v53 = v9;
  v54 = v87;
  v74(v85, v53, v87);
  v55 = *(v45 + 16);
  v55(v19, v86, v54);
  v55(v16, v88, v54);
  v56 = v89;
  DateInterval.init(start:end:)();
  v90 = sub_10000E0B8();
  v57 = *(v84 + 8);
  v58 = v82;
  v57(v56, v82);
  v55(v19, v85, v54);
  v55(v16, v88, v54);
  DateInterval.init(start:end:)();
  v59 = sub_10000E0B8();
  v60 = v56;
  v61 = v90;
  v57(v60, v58);
  v62 = sub_100011DC8();
  if (v61 < 180 || v59 < 45)
  {
    v65 = static os_log_type_t.default.getter();
    v66 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1006D1F70;
    *(v67 + 56) = &type metadata for Int;
    *(v67 + 64) = &protocol witness table for Int;
    *(v67 + 32) = v61;
    *(v67 + 96) = &type metadata for Int;
    *(v67 + 104) = &protocol witness table for Int;
    *(v67 + 72) = v59;
    v68 = v66;
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v68, "TrendsAvailabilityManager - more data required yearSummaryCount=%d ninetyDaySummaryCount=%d", v73, v74);

    v69 = *(v83 + 8);
    v70 = v87;
    v69(v85, v87);
    v69(v86, v70);
    v69(v88, v70);
    if (v62)
    {
      *(v76 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 3;
    }

    else
    {
      *(v76 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 2;
    }
  }

  else
  {
    v63 = *(v83 + 8);
    v64 = v87;
    v63(v85, v87);
    v63(v86, v64);
    v63(v88, v64);
    *(v76 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 3;
  }
}

void sub_10001FF10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability);
  sub_10001F490();
  if (qword_1008DAFA0 != -1)
  {
    swift_once();
  }

  if ((byte_1008F8688 & 1) == 0)
  {
    if (qword_1008DAFA8 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8689 & 1) == 0)
    {
      v26 = objc_opt_self();
      v11 = [v26 standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v27 = v3;
      v13 = v12;
      v14 = [v11 integerForKey:v12];

      v3 = v27;
      if (v14 <= 3 && *(v0 + v9) != v14)
      {
        v15 = [v26 standardUserDefaults];
        v16 = *(v0 + v9);
        v17 = String._bridgeToObjectiveC()();
        [v15 setInteger:v16 forKey:v17];

        v3 = v27;
      }
    }
  }

  if (*(v0 + v9) != v10)
  {
    v18 = static os_log_type_t.default.getter();
    v19 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006D1F70;
    *(v20 + 56) = &type metadata for Int;
    *(v20 + 64) = &protocol witness table for Int;
    *(v20 + 32) = v10;
    v21 = *(v1 + v9);
    *(v20 + 96) = &type metadata for Int;
    *(v20 + 104) = &protocol witness table for Int;
    *(v20 + 72) = v21;
    v22 = v19;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v22, "TrendsAvailabilityManager - availability changed from %d->%d", v26, v27);

    sub_1000078CC();
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100546734;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085FD58;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v3 + 8))(v5, v2);
    (*(v28 + 8))(v8, v29);
  }
}

uint64_t sub_1000203A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100020F7C(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &unk_1008E51C0, &qword_1006D8E40, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

unint64_t sub_100020FC0()
{
  result = qword_1008E8760;
  if (!qword_1008E8760)
  {
    sub_100141EEC(&unk_1008E99C0, &unk_1006D2070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8760);
  }

  return result;
}

uint64_t sub_100021024(void *a1, char a2)
{
  v4 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  v14 = type metadata accessor for DateComponents();
  __chkstk_darwin(v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17).n128_u64[0];
  v21 = v52 - v20;
  if (a2)
  {
    return 34;
  }

  v53 = v8;
  v54 = v18;
  v55 = 0;
  v23 = [a1 dateOfBirthComponentsWithError:{&v55, v19}];
  v24 = v55;
  v25 = &unk_1006D4000;
  if (!v23)
  {
    v34 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_13:
    v36 = static os_log_type_t.error.getter();
    v37 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v38 = swift_allocObject();
    *(v38 + 16) = v25[108];
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_10000A788();
    *(v38 + 32) = 0xD00000000000003DLL;
    *(v38 + 40) = 0x8000000100753AF0;
    v39 = v37;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v39, "%@ failed to fetch trends user characteristics", 46, 2, v38);

    return 0;
  }

  v26 = v23;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v24;

  v55 = 0;
  v28 = [a1 biologicalSexWithError:&v55];
  if (!v28)
  {
    v35 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v55;
  v52[2] = [v29 biologicalSex];

  Date.init()();
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Calendar();
  v32 = sub_10001AC90(v31, qword_100924FE8);
  Calendar.date(from:)();
  v33 = v53;
  if ((*(v53 + 48))(v6, 1, v7) == 1)
  {
    sub_1001F145C(v6);
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    (*(v33 + 8))(v13, v7);
LABEL_11:
    (*(v54 + 8))(v21, v14);
LABEL_12:
    v25 = &unk_1006D4000;
    goto LABEL_13;
  }

  (*(v33 + 32))(v10, v6, v7);
  sub_100140278(&unk_1008E51B0, &unk_1006D8360);
  v40 = type metadata accessor for Calendar.Component();
  v41 = *(v40 - 8);
  v52[1] = v32;
  v42 = v41;
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006D46C0;
  (*(v42 + 104))(v44 + v43, enum case for Calendar.Component.year(_:), v40);
  v52[0] = sub_10001C970(v44);
  swift_setDeallocating();
  (*(v42 + 8))(v44 + v43, v40);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v45 = DateComponents.year.getter();
  if (v46)
  {
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    v47 = *(v54 + 8);
    v47(v16, v14);
    v48 = *(v53 + 8);
    v48(v10, v7);
    v48(v13, v7);
    v47(v21, v14);
    goto LABEL_12;
  }

  v49 = *(v54 + 8);
  v50 = v45;
  v49(v16, v14);
  v51 = *(v53 + 8);
  v51(v10, v7);
  v51(v13, v7);
  v49(v21, v14);
  return v50;
}

uint64_t sub_1000216FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100021744(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v27 = v2;
  v25 = v4;
  v5 = sub_100140278(&qword_1008E9FF0, &qword_1006EAF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v24 = type metadata accessor for ActivitySharingHighlight(0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v26 = a1;
  v28 = sub_100022B64();

  sub_100022664(&v28);

  v12 = v28;
  v13 = v28[2];
  if (v13)
  {
    v14 = 0;
    v15 = (v22 + 48);
    v16 = v28 + 5;
    v17 = _swiftEmptyArrayStorage;
    while (v14 < v12[2])
    {
      v18 = *v16;
      v19 = *(v16 - 1);
      sub_100021A38(v19, v18, v26, v27, v25, v7);

      if ((*v15)(v7, 1, v24) == 1)
      {
        sub_10000EA04(v7, &qword_1008E9FF0, &qword_1006EAF28);
      }

      else
      {
        sub_100042910(v7, v11);
        sub_100042910(v11, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100043614(0, v17[2] + 1, 1, v17);
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v17 = sub_100043614((v20 > 1), v21 + 1, 1, v17);
        }

        v17[2] = v21 + 1;
        sub_100042910(v23, v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21);
      }

      ++v14;
      v16 += 2;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

id sub_100021A38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v89 = a4;
  v99 = a3;
  v97 = a6;
  v8 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v8 - 8);
  v92 = &v83 - v9;
  v10 = type metadata accessor for Date();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v91 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v83 - v24;
  __chkstk_darwin(v26);
  v98 = &v83 - v27;
  v95 = a1;
  result = sub_100022E90(a1, v28);
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v90 = v18;
      v86 = v16;
      v87 = v15;
      v85 = result;
      [result setEarnedInstanceCount:{a2, v83}];
      v84 = objc_opt_self();
      v30 = [v84 hk_gregorianCalendar];
      v31 = v98;
      static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v99 timeZone];
      if (result)
      {
        v32 = result;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.timeZone.setter();
        (*(v21 + 16))(v25, v31, v20);
        sub_100140278(&unk_1008E51B0, &unk_1006D8360);
        v33 = type metadata accessor for Calendar.Component();
        v34 = *(v33 - 8);
        v35 = v34;
        v96 = v20;
        v36 = *(v34 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1006D64F0;
        v39 = v38 + v37;
        v40 = *(v35 + 104);
        v40(v39, enum case for Calendar.Component.year(_:), v33);
        v40(v39 + v36, enum case for Calendar.Component.month(_:), v33);
        v40(v39 + 2 * v36, enum case for Calendar.Component.day(_:), v33);
        sub_10001C970(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v41 = v95;
        result = [v95 completedDate];
        if (result)
        {
          v42 = result;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = v90;
          Calendar.dateComponents(_:from:)();

          v45 = v93;
          v44 = v94;
          v93[1](v14, v94);
          v48 = *(v21 + 8);
          v47 = (v21 + 8);
          v46 = v48;
          v49 = v25;
          v50 = v96;
          (v48)(v49, v96);
          v51 = [v84 hk_gregorianCalendarWithLocalTimeZone];
          v52 = v91;
          static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = v92;
          Calendar.date(from:)();
          (v48)(v52, v50);
          v54 = (v45[6])(v53, 1, v44);
          v55 = v86;
          if (v54 == 1)
          {
            sub_10000EA04(v53, &unk_1008F73A0, &unk_1006DB450);
            v56 = static os_log_type_t.error.getter();
            v57 = HKLogActivity;
            if (os_log_type_enabled(HKLogActivity, v56))
            {
              v58 = v57;
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v91 = v47;
              v62 = v61;
              v100 = v61;
              *v59 = 136315394;
              v63 = _typeName(_:qualified:)();
              v65 = sub_10000AFDC(v63, v64, &v100);

              *(v59 + 4) = v65;
              *(v59 + 12) = 2112;
              v66 = v85;
              *(v59 + 14) = v85;
              *v60 = v66;
              v67 = v66;
              _os_log_impl(&_mh_execute_header, v58, v56, "%s Failed to convert date for friend achievement %@", v59, 0x16u);
              sub_10000EA04(v60, &unk_1008DB8B0, &unk_1006DBD30);

              sub_100005A40(v62);
            }

            else
            {
            }

            (*(v55 + 8))(v43, v87);
            (v46)(v98, v96);
            v82 = type metadata accessor for ActivitySharingHighlight(0);
            return (*(*(v82 - 8) + 56))(v97, 1, 1, v82);
          }

          else
          {
            v91 = v47;
            v72 = v45[4];
            v93 = v46;
            v73 = v88;
            (v72)(v88, v53, v44);
            v74 = v85;
            v75 = v85;
            v76 = [v41 UUID];
            v77 = v44;
            v78 = type metadata accessor for ActivitySharingHighlight(0);
            v79 = v97;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v55 + 8))(v90, v87);
            (v93)(v98, v96);
            (v72)(v79 + v78[6], v73, v77);
            v80 = *(v89 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
            *v79 = v74;
            *(v79 + 8) = 0;
            *(v79 + v78[7]) = v99;
            *(v79 + v78[8]) = v80;
            (*(*(v78 - 1) + 56))(v79, 0, 1, v78);
            v81 = v99;

            return v81;
          }
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v68 = type metadata accessor for ActivitySharingHighlight(0);
  v69 = *(*(v68 - 8) + 56);
  v70 = v68;
  v71 = v97;

  return v69(v71, 1, 1, v70);
}

void *sub_1000223C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100140278(&qword_1008DE4C0, &qword_1006D7C28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE4C8, &unk_1006D7C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002250C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100022664(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000224F8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_100022A5C(v4);
  *a1 = v2;
}

void *sub_1000226D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022E70(0, v1, 0);
    v3 = a1 + 40;
    do
    {
      v4 = *(v3 - 8);
      sub_100140278(&qword_1008DF160, &unk_1006D8EE0);
      sub_100140278(&qword_1008DE4C8, &unk_1006D7C30);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100022E70((v5 > 1), v6 + 1, 1);
      }

      v3 += 16;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000227FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for Date();
  __chkstk_darwin(v40);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v34 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v38 = (v10 + 8);
    v41 = v13;
    v14 = v13 + 16 * a3 - 16;
    v15 = a1 - a3;
    p_ivars = &ResourceBundleClass.ivars;
LABEL_5:
    v36 = v14;
    v37 = a3;
    v17 = *(v41 + 16 * a3);
    v35 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v17;
      v20 = v18;
      v21 = [v19 p_ivars[426]];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 p_ivars[426]];
      if (!v23)
      {
        goto LABEL_14;
      }

      v24 = v23;
      v43 = v19;
      v25 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = static Date.> infix(_:_:)();
      v26 = p_ivars;
      v27 = v12;
      v28 = *v38;
      v29 = v25;
      v30 = v40;
      (*v38)(v29, v40);
      v28(v27, v30);
      v12 = v27;
      p_ivars = v26;

      if (v42)
      {
        if (!v41)
        {
          goto LABEL_15;
        }

        v17 = *(v14 + 16);
        v31 = *(v14 + 24);
        *(v14 + 16) = *v14;
        *v14 = v17;
        *(v14 + 8) = v31;
        v14 -= 16;
        if (!__CFADD__(v15++, 1))
        {
          continue;
        }
      }

      a3 = v37 + 1;
      v14 = v36 + 16;
      v15 = v35 - 1;
      if (v37 + 1 == v34)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100022A5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&qword_1008DE4C8, &unk_1006D7C30);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100353DC0(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000227FC(0, v2, 1, a1);
  }
}

void *sub_100022B64()
{
  v1 = [v0 friendAchievements];
  if (v1)
  {
    v0 = v1;
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    sub_100140278(&qword_1008E0518, qword_1006E3620);
    sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750, NSNumber_ptr);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = sub_1004C9F78(_swiftEmptyArrayStorage);
  }

  v19 = &_swiftEmptyDictionarySingleton;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; i = v8)
  {
    v8 = i;
LABEL_11:
    v9 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v10 = *(*(v2 + 56) + v9);
    v18[0] = *(*(v2 + 48) + v9);
    v18[1] = v10;
    v0 = v18[0];

    sub_100066918(&v19, v18);
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v11 = v19;
      v12 = v19[2];
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = sub_1000679B8(v19[2], 0);
      v14 = sub_10002250C(v18, v13 + 4, v12, v11);
      v15 = v18[0];

      sub_100022DEC(v15);
      if (v14 != v12)
      {
        __break(1u);
LABEL_16:
        v13 = _swiftEmptyArrayStorage;
      }

      v16 = sub_1000226D0(v13);

      return v16;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++i;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_100022DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_100022E70(void *a1, int64_t a2, char a3)
{
  result = sub_1000223C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100022E90(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DateComponents();
  v74 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA9F8 != -1)
  {
    swift_once();
  }

  v12 = qword_1008EB6A0;
  v13 = [a1 templateUniqueName];
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  v77 = 0;
  v15 = [v12 ephemeralAchievementWithTemplateUniqueName:v13 error:&v77];

  if (v77)
  {
    v16 = v77;

    swift_willThrow();
    v17 = static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v17))
    {
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10000AFDC(0xD00000000000001DLL, 0x800000010075A9B0, &v79);
      *(v20 + 12) = 2080;
      v22 = [a1 templateUniqueName];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v77 = v24;
      v78 = v26;
      sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
      v56 = Optional.description.getter();
      v58 = v57;

      v59 = sub_10000AFDC(v56, v58, &v79);

      *(v20 + 14) = v59;
      *(v20 + 22) = 2112;
      v60 = v16;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v61;
      *v21 = v61;
      _os_log_impl(&_mh_execute_header, v19, v17, "%s failed to fetch ephemeral achievement for %s with error %@", v20, 0x20u);
      sub_1001F3454(v21);

      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  if (!v15 || ![v15 hasClientRequiredURLs])
  {
    v47 = static os_log_type_t.default.getter();
    v48 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v47))
    {
      v49 = v48;
      v50 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_10000AFDC(0xD00000000000001DLL, 0x800000010075A9B0, &v79);
      *(v50 + 12) = 2080;
      v51 = [a1 templateUniqueName];
      if (v51)
      {
        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v77 = v53;
      v78 = v55;
      sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
      v62 = Optional.description.getter();
      v64 = v63;

      v65 = sub_10000AFDC(v62, v64, &v79);

      *(v50 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v49, v47, "%s Friend Achievement %s does not have required URLs, filtering out.", v50, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v73 = a1;
  v27 = [v15 relevantEarnedInstance];
  if (v27)
  {
    v67 = v3;
    v68 = v27;
    static Calendar.current.getter();
    sub_100140278(&unk_1008E51B0, &unk_1006D8360);
    v28 = type metadata accessor for Calendar.Component();
    v29 = *(v28 - 8);
    v70 = *(v29 + 72);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v72 = 2 * v70;
    v31 = swift_allocObject();
    v71 = v31;
    *(v31 + 16) = xmmword_1006D64F0;
    v69 = v31 + v30;
    v32 = *(v29 + 104);
    v33 = v28;
    v32();
    v34 = v69;
    (v32)(v69 + v70, enum case for Calendar.Component.month(_:), v33);
    (v32)(v34 + v72, enum case for Calendar.Component.day(_:), v33);
    sub_10001C970(v71);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    result = [v73 completedDate];
    if (!result)
    {
      __break(1u);
      goto LABEL_31;
    }

    v36 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Calendar.dateComponents(_:from:)();

    (*(v76 + 8))(v5, v67);
    (*(v75 + 8))(v8, v6);
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v74 + 8))(v11, v9);
    v38 = v68;
    [v68 setEarnedDateComponents:isa];
  }

  v39 = [v15 template];
  v40 = [v39 canonicalUnit];

  if (!v40)
  {
    return v15;
  }

  v41 = [v15 relevantEarnedInstance];
  if (!v41)
  {
LABEL_17:

    return v15;
  }

  v42 = v41;
  result = [v73 value];
  if (result)
  {
    v43 = result;
    [result doubleValue];
    v45 = v44;

    v46 = [objc_opt_self() quantityWithUnit:v40 doubleValue:v45];
    [v42 setValue:v46];

    goto LABEL_17;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000237AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100023A68(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  v134 = a7;
  v135 = a8;
  v140 = a16;
  v132 = a15;
  v129 = a14;
  v126 = a13;
  v133 = a12;
  v138 = a11;
  v125 = a10;
  v139 = sub_100140278(&qword_1008E0398, "f\a\v");
  v131 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v112 - v22;
  type metadata accessor for ScrollToTopCoordinator(0);
  v23 = swift_allocObject();
  v137 = v23;
  v24 = OBJC_IVAR____TtC10FitnessApp22ScrollToTopCoordinator_scrollViewProxy;
  v25 = type metadata accessor for ScrollViewProxy();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  type metadata accessor for FriendsSetupCoordinator(0);
  sub_100024890(&qword_1008DC078, type metadata accessor for FriendsSetupCoordinator, &unk_100701788);
  v128 = a1;
  v136 = a2;
  v127 = a3;
  v26 = a4;
  v124 = a5;
  v123 = a6;
  v27 = v134;
  v28 = v135;
  v29 = a9;
  v30 = ObservedObject.init(wrappedValue:)();
  v134 = v31;
  v135 = v30;
  type metadata accessor for ActivitySharingHighlightDataProvider(0);
  swift_allocObject();
  v32 = v138;
  v33 = v28;
  v34 = v32;
  v138 = v34;
  v35 = v125;
  v133 = v133;
  v121 = v126;
  v120 = v129;
  v118 = v132;
  v36 = v140;
  v132 = sub_100024924(v33, v34);

  type metadata accessor for ActivitySharingFriendListDataProvider(0);
  swift_allocObject();
  v37 = v26;
  v129 = v37;
  v38 = v27;
  v39 = v33;
  v40 = v35;
  v41 = v36;
  v140 = v41;
  sub_100024EC0(v37, v38, v39, v40, v41);

  v42 = v38;
  v112 = v38;

  v43 = v40;
  v114 = v40;

  sub_100024890(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider, &unk_1006D8268);
  v44 = ObservedObject.init(wrappedValue:)();
  v125 = v45;
  v126 = v44;
  type metadata accessor for ReachableContactsDataSource(0);
  swift_allocObject();
  v46 = v39;
  v113 = v46;
  v122 = sub_100025C2C(v46);
  type metadata accessor for ActivitySharingNavigationCoordinator();
  v47 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_100024890(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator, &unk_1006E8E38);
  *(v47 + 112) = 0u;
  *(v47 + 128) = 0u;
  *(v47 + 144) = 0;
  v119 = ObservedObject.init(wrappedValue:)();
  v49 = v48;
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator(0);
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  v51 = OBJC_IVAR____TtC10FitnessApp43ActivitySharingFriendDetailAlertCoordinator__presentedAlertType;
  v159 = 0u;
  v160 = 0u;
  LOBYTE(v161) = -1;
  sub_100140278(&qword_1008E03A0, qword_1006DBA70);
  v52 = v130;
  Published.init(initialValue:)();
  (*(v131 + 32))(v50 + v51, v52, v139);
  sub_100024890(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator, &unk_1006F67D0);
  v131 = ObservedObject.init(wrappedValue:)();
  v54 = v53;
  v139 = v53;
  v55 = swift_allocObject();
  v57 = v127;
  v56 = v128;
  v55[2] = v128;
  v55[3] = v57;
  v55[4] = v54;
  v59 = v123;
  v58 = v124;
  v55[5] = v124;
  v55[6] = v59;
  v55[7] = v42;
  v55[8] = v46;
  v60 = v138;
  v55[9] = v43;
  v55[10] = v60;
  v62 = v120;
  v61 = v121;
  v55[11] = v49;
  v55[12] = v61;
  v63 = v118;
  v55[13] = v62;
  v55[14] = v63;
  v55[15] = v140;
  v64 = v49[14];
  v115 = v49[15];
  v116 = v64;
  v117 = sub_1001D3B90;
  v49[14] = sub_1001D3B90;
  v49[15] = v55;
  swift_retain_n();
  v128 = v56;
  v127 = v57;
  v130 = v58;
  v65 = v59;
  v66 = v112;
  v67 = v113;
  v124 = v138;
  v68 = v114;
  v113 = v68;
  v138 = v61;
  v69 = v62;
  v114 = v69;
  v70 = v63;
  v120 = v70;
  v140 = v140;

  sub_1000245E0(v116, v115);

  v71 = swift_allocObject();
  v71[2] = v67;
  v71[3] = v68;
  v73 = v127;
  v72 = v128;
  v71[4] = v127;
  v71[5] = v69;
  v71[6] = v70;
  v71[7] = v66;
  v74 = v124;
  v71[8] = v72;
  v71[9] = v74;
  v75 = v117;
  v71[10] = v65;
  v71[11] = v75;
  v71[12] = v55;
  v76 = v49[17];
  v123 = v49[16];
  v121 = v76;
  v49[16] = sub_1001D3BDC;
  v49[17] = v71;
  v128 = v72;
  v77 = v73;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  v81 = v74;
  v82 = v113;
  v83 = v114;
  v84 = v120;

  sub_1000245E0(v123, v121);

  *&v145 = v128;
  *(&v145 + 1) = v77;
  *&v146 = v136;
  *(&v146 + 1) = v129;
  *&v147 = v130;
  *(&v147 + 1) = v78;
  *&v148 = v79;
  *(&v148 + 1) = v80;
  *&v149 = v82;
  *(&v149 + 1) = v122;
  *&v150 = v81;
  *(&v150 + 1) = v122;
  *&v151 = v133;
  *(&v151 + 1) = v138;
  *&v152 = v83;
  *(&v152 + 1) = v84;
  *&v153 = v140;
  *(&v153 + 1) = v119;
  *&v154 = v49;
  *(&v154 + 1) = v132;
  *&v155 = v126;
  *(&v155 + 1) = v125;
  *&v156 = v131;
  *(&v156 + 1) = v139;
  *&v157 = v135;
  *(&v157 + 1) = v134;
  v158 = v137;
  *&v159 = v128;
  *(&v159 + 1) = v77;
  *&v160 = v136;
  *(&v160 + 1) = v129;
  v161 = v130;
  v162 = v78;
  v163 = v79;
  v164 = v80;
  v165 = v82;
  v166 = v122;
  v167 = v81;
  v168 = v122;
  v169 = v133;
  v170 = v138;
  v171 = v83;
  v172 = v84;
  v173 = v140;
  v174 = v119;
  v175 = v49;
  v176 = v132;
  v177 = v126;
  v178 = v125;
  v179 = v131;
  v180 = v139;
  v181 = v135;
  v182 = v134;
  v183 = v137;
  sub_1000262F0(&v145, v143);
  sub_100026328(&v159);
  v85 = objc_allocWithZone(type metadata accessor for ActivitySharingTabViewHostingController(0));
  *&v85[qword_1008E0F78] = 0;
  v86 = &v85[qword_1008E0F80];
  v87 = v146;
  *v86 = v145;
  *(v86 + 1) = v87;
  v88 = v150;
  v89 = v148;
  v90 = v147;
  *(v86 + 4) = v149;
  *(v86 + 5) = v88;
  *(v86 + 2) = v90;
  *(v86 + 3) = v89;
  v91 = v154;
  v92 = v152;
  v93 = v151;
  *(v86 + 8) = v153;
  *(v86 + 9) = v91;
  *(v86 + 6) = v93;
  *(v86 + 7) = v92;
  v94 = v155;
  v95 = v156;
  v96 = v157;
  *(v86 + 26) = v158;
  *(v86 + 11) = v95;
  *(v86 + 12) = v96;
  *(v86 + 10) = v94;
  v143[10] = v155;
  v143[11] = v156;
  v143[12] = v157;
  v144 = v158;
  v143[6] = v151;
  v143[7] = v152;
  v143[8] = v153;
  v143[9] = v154;
  v143[2] = v147;
  v143[3] = v148;
  v143[4] = v149;
  v143[5] = v150;
  v143[0] = v145;
  v143[1] = v146;
  sub_1000262F0(&v145, v142);
  sub_1000262F0(&v145, v142);
  v97 = UIHostingController.init(rootView:)();
  result = [v97 tabBarItem];
  if (result)
  {
    v99 = result;
    v100 = [objc_opt_self() mainBundle];
    v101 = String._bridgeToObjectiveC()();
    v102 = [v100 localizedStringForKey:v101 value:0 table:0];

    if (!v102)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = String._bridgeToObjectiveC()();
    }

    [v99 setTitle:v102];
    result = [v97 tabBarItem];
    if (result)
    {
      v103 = result;
      v104 = [objc_opt_self() smm_systemImageNamed:@"person.2.fill"];
      [v103 setImage:v104];

      v105 = [v97 navigationItem];
      [v105 setLargeTitleDisplayMode:3];

      v106 = type metadata accessor for ActivitySharingNavigationController();
      v107 = objc_allocWithZone(v106);
      *&v107[OBJC_IVAR____TtC10FitnessApp35ActivitySharingNavigationController_viewController] = v97;
      v141.receiver = v107;
      v141.super_class = v106;
      v108 = objc_msgSendSuper2(&v141, "initWithRootViewController:", v97);
      v109 = v154;

      sub_100026328(&v145);
      v110 = *(v109 + 144);
      *(v109 + 144) = v108;
      v111 = v108;

      return v111;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1000245E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000245F0()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100024690()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t type metadata accessor for ScrollToTopCoordinator(uint64_t a1)
{
  result = qword_1008DBF48;
  if (!qword_1008DBF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002475C(uint64_t a1)
{
  if (!qword_1008DBF58)
  {
    type metadata accessor for ScrollViewProxy();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DBF58);
    }
  }
}

void sub_1000247B4(uint64_t a1)
{
  sub_10002475C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FriendsSetupCoordinator(uint64_t a1)
{
  result = qword_1008F6F38;
  if (!qword_1008F6F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ActivitySharingHighlightDataProvider(uint64_t a1)
{
  result = qword_1008E9EC8;
  if (!qword_1008E9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024924(void *a1, void *a2)
{
  v5 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - v6;
  v8 = sub_100140278(&qword_1008E9FE8, &qword_1006EAF00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider__state;
  aBlock[0] = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType) = 1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_friendListSectionManager) = a1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_healthStore) = a2;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v15 = a1;
  v16 = a2;

  sub_10026E198(0, 0, v7, &unk_1006EAF10, v14);

  v17 = [objc_opt_self() defaultCenter];
  v18 = kASFriendListChangedNotificationKey;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainQueue];
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100355134;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026F8C;
  aBlock[3] = &unk_100854028;
  v23 = _Block_copy(aBlock);

  v24 = [v17 addObserverForName:v20 object:0 queue:v21 usingBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_100024C84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for ActivitySharingFriendListDataProvider(uint64_t a1)
{
  result = qword_1008DE7B8;
  if (!qword_1008DE7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024D14()
{
  if (!qword_1008DE7C8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DE7C8);
    }
  }
}

void sub_100024D64(uint64_t a1)
{
  sub_100024D14();
  if (v1 <= 0x3F)
  {
    sub_100024E68(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100024E68(uint64_t a1)
{
  if (!qword_1008DE7D0)
  {
    type metadata accessor for ASFriendListDisplayMode(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DE7D0);
    }
  }
}

char *sub_100024EC0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v52 = *v6;
  v12 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v12 - 8);
  v51 = &v50 - v13;
  v14 = sub_100140278(&qword_1008DE930, &qword_1006D8328);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider__state;
  aBlock = 0;
  v54 = 0;
  v55 = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(&v6[v18], v17, v14);
  v19 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_invitationDestinationCoordinator;
  *&v6[v19] = [objc_allocWithZone(type metadata accessor for InvitationDestinationCoordinator(0)) init];
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_activitySharingClient] = a1;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager] = a2;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager] = a3;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendManager] = a4;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_pauseRingsCoordinator] = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = sub_100025974();
  swift_beginAccess();
  v59 = v25;
  type metadata accessor for ASFriendListDisplayMode(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v26 = type metadata accessor for TaskPriority();
  v27 = v51;
  (*(*(v26 - 8) + 56))(v51, 1, 1, v26);
  type metadata accessor for MainActor();

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v6;
  sub_10026E198(0, 0, v27, &unk_1006D8338, v29);

  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  v32 = kASFriendListChangedNotificationKey;
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 mainQueue];
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v52;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  v57 = sub_100193EA4;
  v58 = v37;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100026F8C;
  v56 = &unk_100849810;
  v39 = _Block_copy(&aBlock);

  v40 = [v31 addObserverForName:v34 object:0 queue:v35 usingBlock:v39];
  _Block_release(v39);
  swift_unknownObjectRelease();

  v41 = [v30 defaultCenter];
  v42 = [objc_opt_self() didUpdatePauseStateNotification];
  v43 = [v33 mainQueue];
  v44 = swift_allocObject();
  swift_weakInit();

  v45 = swift_allocObject();
  v46 = v52;
  *(v45 + 16) = v44;
  *(v45 + 24) = v46;
  v57 = sub_100193EAC;
  v58 = v45;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100026F8C;
  v56 = &unk_100849860;
  v47 = _Block_copy(&aBlock);

  v48 = [v41 addObserverForName:v42 object:0 queue:v43 usingBlock:v47];
  _Block_release(v47);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_100025484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 initializeBufferWithCopyOfBuffer for TrendsCoachingAverageInformation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for InvitationDestinationCoordinator(uint64_t a1)
{
  result = qword_1008F3CC8;
  if (!qword_1008F3CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002556C(uint64_t a1)
{
  result = type metadata accessor for InvitationDestinationService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SecureCloudClient();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_100025638()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for InvitationDestinationCache();
  sub_100025870(_swiftEmptyArrayStorage);
  v6 = InvitationDestinationCache.__allocating_init(invitationDestinationMap:)();
  v16 = v5;
  v17 = &protocol witness table for InvitationDestinationCache;
  v15 = v6;
  InvitationDestinationService.init(cache:)();
  SecureCloudClient.init()();
  v7 = type metadata accessor for InvitationDestinationCoordinator(0);
  v14.receiver = v1;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, "init");
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_10026E7AC(0, 0, v4, &unk_1006FB1F8, v11);

  return v8;
}

uint64_t sub_1000257D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002580C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100025870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008F3CF0, &unk_1006FB200);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
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

uint64_t sub_100025974()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000EA04(v7, &qword_1008E51F0, qword_1006D50E0);
  }

  return 0;
}

uint64_t sub_100025AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ReachableContactsDataSource(uint64_t a1)
{
  result = qword_1008F8520;
  if (!qword_1008F8520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025B04(uint64_t a1)
{
  if (!qword_1008F8530[0])
  {
    sub_100141EEC(&qword_1008E0988, &qword_1006DC4D0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, qword_1008F8530);
    }
  }
}

void sub_100025B68(uint64_t a1)
{
  sub_100025B04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100025C2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008F8678, qword_1007035B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  *(v2 + 6) = [objc_allocWithZone(type metadata accessor for InvitationDestinationCoordinator(0)) init];
  v16 = OBJC_IVAR____TtC10FitnessApp27ReachableContactsDataSource__friendSuggestionList;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E0988, &qword_1006DC4D0);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v2[v16], v15, v12);
  *(v2 + 4) = a1;
  v17 = a1;
  v18 = [v17 allDestinationsForActiveOrPendingFriends];
  if (v18)
  {
    v19 = v18;
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
  }

  *(v2 + 2) = v20;
  v21 = objc_opt_self();
  result = [v21 sharedInstanceForServiceIdentifier:kASiCloudServiceIdentifier];
  if (result)
  {
    v23 = result;
    v34 = v17;
    result = [v21 sharedInstanceForServiceIdentifier:kASiMessageServiceIdentifier];
    if (result)
    {
      v24 = result;
      sub_100140278(&unk_1008E4E20, &qword_1006D5040);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1006D68D0;
      *(v25 + 32) = v23;
      *(v25 + 40) = v24;
      *(v2 + 5) = v25;
      v26 = objc_allocWithZone(CNContactStore);
      v27 = v23;
      v28 = v24;
      *(v2 + 3) = [v26 init];
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
      v29 = static OS_dispatch_queue.global(qos:)();
      (*(v9 + 8))(v11, v8);
      aBlock[4] = sub_10067961C;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_1008673C0;
      v30 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v40 = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_10002621C();
      v31 = v36;
      v32 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      (*(v38 + 8))(v31, v32);
      (*(v35 + 8))(v7, v37);

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000261C4()
{
  result = qword_1008E33B0;
  if (!qword_1008E33B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E33B0);
  }

  return result;
}

unint64_t sub_10002621C()
{
  result = qword_1008E33C0;
  if (!qword_1008E33C0)
  {
    sub_100141EEC(&unk_1008E7F50, &qword_1006D8190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E33C0);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingFriendDetailAlertCoordinator(uint64_t a1)
{
  result = qword_1008F1098;
  if (!qword_1008F1098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingTabViewHostingController(uint64_t a1)
{
  result = qword_1008E0F88;
  if (!qword_1008E0F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002642C()
{
  v1 = sub_100140278(&unk_1008E4F00, qword_1006E3428);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-1] - v2;
  sub_100007C5C(*(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_avatarSettingsProvider, v8);
  sub_1000066AC(v8, v8[3]);
  dispatch thunk of AvatarSettingsCoordinating.fetchAvatarSettings()();
  v4 = type metadata accessor for AvatarSettings();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100005A40(v8);
    sub_10000EA04(v3, &unk_1008E4F00, qword_1006E3428);
    v6 = 0;
  }

  else
  {
    v6 = AvatarSettings.contact.getter();
    (*(v5 + 8))(v3, v4);
    sub_100005A40(v8);
  }

  dispatch thunk of AccountButton.updateContact(_:)();
}

double sub_1000265E0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ActivityDashboardViewController(0);
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v5 = v3;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    [v6 detachPalette];
  }

  sub_10046CEE8(v3, v4);
  return sub_1000265C0();
}

double sub_10002669C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t sub_100026988(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100026A24(char a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ActivityDashboardViewController(0);
  v31.receiver = v1;
  v31.super_class = v7;
  objc_msgSendSuper2(&v31, "viewDidAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility] = 2;
  if (v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation + 8])
  {
    v8 = static os_log_type_t.default.getter();
    v9 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "ActivityDashboardViewController no initial presentation", 55, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    [v1 presentAppSettingsShowingPane:*&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation]];
  }

  sub_100026E98(&qword_1008EE860, type metadata accessor for ActivityDashboardViewController, &unk_1006F28B8);
  sub_100026E98(&qword_1008EE868, type metadata accessor for ActivityDashboardViewController, &unk_1006F2848);
  MetricResignActiveObserving<>.addResignActiveObserver()();
  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setDelegate:v2];
  }

  v12 = *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator];
  *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator] = 0;

  v13 = *(*&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingNavigationCoordinator);

  v14 = [v2 navigationController];
  v15 = *(v13 + 144);
  *(v13 + 144) = v14;

  dispatch thunk of MarketingPaletteBannerPresenter.onAppear()();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  type metadata accessor for MainActor();
  v18 = v2;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  sub_10026E198(0, 0, v6, &unk_1006F2AB0, v20);

  v17(v6, 1, 1, v16);
  v21 = v18;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  sub_10026E198(0, 0, v6, &unk_1006F2AC0, v23);

  v17(v6, 1, 1, v16);
  v24 = v21;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;
  sub_10026E198(0, 0, v6, &unk_1006F2AD0, v26);

  v17(v6, 1, 1, v16);
  v27 = v24;
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v27;
  sub_10026E198(0, 0, v6, &unk_1006F2AE0, v29);

  return result;
}

uint64_t sub_100026E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100026F8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_100027080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider);

    aBlock[4] = sub_10044FBE0;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_10085AD78;
    v6 = _Block_copy(aBlock);

    [v5 allMindfulnessSessionsWithCompletion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_100027198()
{
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0[5] = v0[2];

  return _swift_task_switch(sub_100044BF4, v1, 0);
}

uint64_t sub_100027254(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v3 - 8);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  Calendar.date(from:)();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10000EA04(v7, &unk_1008F73A0, &unk_1006DB450);
    v16 = 0;
  }

  else
  {
    v22 = v2;
    v21 = *(v9 + 32);
    v21(v14, v7, v8);
    v17 = v24;
    Calendar.date(from:)();
    if (v15(v17, 1, v8) == 1)
    {
      (*(v9 + 8))(v14, v8);
      sub_10000EA04(v17, &unk_1008F73A0, &unk_1006DB450);
      v16 = 0;
    }

    else
    {
      v21(v11, v17, v8);
      v16 = static Date.< infix(_:_:)();
      v18 = *(v9 + 8);
      v18(v11, v8);
      v18(v14, v8);
    }
  }

  return v16 & 1;
}

void sub_1000274FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for DateComponents();
  __chkstk_darwin(v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v38 - v14;
  v18 = __chkstk_darwin(v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

char *sub_100027808(uint64_t a1, uint64_t a2, char a3)
{
  v63 = a2;
  v5 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v68 = type metadata accessor for Calendar.Component();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v48 = *(v10 - 8);
  __chkstk_darwin(v10);
  v62 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v47 - v13;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v50 = type metadata accessor for Calendar();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v66 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  v70 = &_swiftEmptySetSingleton;
  DateInterval.start.getter();
  v60 = a1;
  v25 = DateInterval.end.getter();
  v58 = sub_1002175F0(v25, v26);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = *(v18 + 8);
  v59 = v20;
  v64 = v27;
  v65 = v18 + 8;
  v28 = (v27)(v20, v17);
  if (a1)
  {
LABEL_10:
    v40 = v70;
    v41 = v70[2];
    if (v41)
    {
      v42 = sub_1001A3CCC(v70[2], 0);
      sub_1001A9A60(&v69, &v42[(*(v48 + 80) + 32) & ~*(v48 + 80)], v41, v40);
      v68 = v43;
      v44 = v69;

      sub_100022DEC(v44);
      if (v68 == v41)
      {
LABEL_14:
        __chkstk_darwin(v28);
        *(&v47 - 2) = v66;
        v69 = v42;

        sub_1004AA4B0(sub_1000277E8, (&v47 - 4));

        v64(v23, v17);

        v45 = v69;
        goto LABEL_16;
      }

      __break(1u);
    }

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v29 = &enum case for Calendar.Component.day(_:);
  if (!v63)
  {
    v29 = &enum case for Calendar.Component.hour(_:);
  }

  v30 = (a3 & 1) == 0;
  v56 = a3 & 1;
  v55 = (v48 + 16);
  v31 = (v48 + 8);
  v54 = (v8 + 104);
  v53 = (v18 + 48);
  v57 = (v8 + 8);
  v51 = (v18 + 32);
  if (v30)
  {
    v29 = &enum case for Calendar.Component.month(_:);
  }

  v52 = *v29;
  while (1)
  {
    sub_1004A9C98(v63, v56, v16);
    v32 = v62;
    (*v55)(v62, v16, v10);
    v33 = v61;
    sub_1001A42DC(v61, v32);
    v34 = v10;
    v35 = *v31;
    (*v31)(v33, v34);
    (*v54)(v67, v52, v68);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    if ((*v53)(v7, 1, v17) == 1)
    {
      break;
    }

    (*v57)(v67, v68);
    v35(v16, v34);
    v36 = v16;
    v37 = v64;
    v64(v23, v17);
    (*v51)(v23, v7, v17);
    v38 = v59;
    DateInterval.end.getter();
    v39 = dispatch thunk of static Comparable.< infix(_:_:)();
    v28 = v37(v38, v17);
    v16 = v36;
    v10 = v34;
    if (v39)
    {
      goto LABEL_10;
    }
  }

  sub_10000EA04(v7, &unk_1008F73A0, &unk_1006DB450);
  (*v57)(v67, v68);
  v35(v16, v34);
  v64(v23, v17);
  v45 = _swiftEmptyArrayStorage;
LABEL_16:
  (*(v49 + 8))(v66, v50);
  return v45;
}

void sub_100027F40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v111 = a6;
  v117 = a5;
  v114 = type metadata accessor for TimeZone();
  v10 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Calendar();
  v116 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v15 - 8);
  v95 = &v82[-v16];
  v115 = type metadata accessor for Date();
  v17 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v82[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v100 = &v82[-v20];
  v94 = type metadata accessor for MetricChartData(0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v82[-v23];
  v99 = type metadata accessor for DateComponents();
  v25 = *(v99 - 8);
  __chkstk_darwin(v99);
  v109 = &v82[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_100027808(a3, a1, a2 & 1);
  v108 = *(v27 + 2);
  if (!v108)
  {
LABEL_57:

    return;
  }

  v28 = v10;
  v29 = 0;
  v97 = 0;
  v107 = &v27[(*(v25 + 80) + 32) & ~*(v25 + 80)];
  v105 = v116 + 1;
  v106 = v25 + 16;
  v104 = (v17 + 48);
  v98 = (v17 + 32);
  v83 = a2;
  v85 = a2 & (a1 == 0);
  v110 = (v28 + 8);
  v116 = (v17 + 8);
  v86 = (v17 + 16);
  v101 = (v25 + 8);
  v30 = 0.0;
  v91 = v111;
  v96 = _swiftEmptyArrayStorage;
  v31 = v95;
  v32 = v115;
  v33 = v99;
  v34 = v109;
  v90 = a4;
  v88 = v12;
  v89 = v14;
  v87 = v24;
  v102 = v27;
  v103 = v25;
  while (v29 < *(v27 + 2))
  {
    (*(v25 + 16))(v34, &v107[*(v25 + 72) * v29], v33);
    static Calendar.current.getter();
    Calendar.date(from:)();
    (*v105)(v14, v12);
    if ((*v104)(v31, 1, v32) == 1)
    {
      (*v101)(v34, v33);
      sub_10000EA04(v31, &unk_1008F73A0, &unk_1006DB450);
    }

    else
    {
      v35 = v100;
      (*v98)(v100, v31, v32);
      if (*(a4 + 16))
      {
        v36 = sub_1004C59D4(v109);
        if (v37)
        {
          v38 = *(*(a4 + 56) + 8 * v36);
          v39 = v38 >> 62;
          if (v38 >> 62)
          {
            v40 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v40)
          {
            v41 = 0;
            v42 = 0.0;
            while (1)
            {
              if ((v38 & 0xC000000000000001) != 0)
              {
                v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_59;
                }

                v43 = *(v38 + 8 * v41 + 32);
              }

              v44 = v43;
              v45 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              v46 = [v43 quantity];
              [v46 doubleValueForUnit:v117];
              v48 = v47;

              v42 = v42 + v48;
              ++v41;
              if (v45 == v40)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v42 = 0.0;
LABEL_22:
          v30 = v30 + v42;
          v49 = 1;
          v50 = v100;
          if (((1 << v91) & 0x5DDBB8E070) != 0)
          {
LABEL_23:
            v49 = 0;
            goto LABEL_25;
          }

          if (((1 << v91) & 0x2224471F80) != 0)
          {
LABEL_25:
            if (v85)
            {
              if (v39)
              {
                v51 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v51 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

LABEL_44:

              v68 = v90;
              v14 = v89;
              if (__OFADD__(v97, v51))
              {
                goto LABEL_61;
              }

              v97 += v51;
              if (v49)
              {

                v31 = v95;
                v32 = v115;
LABEL_48:
                if (v51 < 1)
                {
                  v42 = 0.0;
                }

                else
                {
                  v42 = v42 / v51;
                }
              }

              else
              {
                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v31 = v95;
                v32 = v115;
                if (v69)
                {
                  goto LABEL_48;
                }
              }

              v70 = v94;
              v71 = v92;
              (*v86)(&v92[*(v94 + 20)], v50, v32);
              v72 = objc_opt_self();
              v73 = v117;
              v74 = [v72 quantityWithUnit:v117 doubleValue:v42];
              (*v116)(v50, v32);
              (*v101)(v109, v99);
              *v71 = v73;
              *(v71 + *(v70 + 24)) = v74;
              v75 = v71;
              v76 = v87;
              sub_10002AFD4(v75, v87, type metadata accessor for MetricChartData);
              v77 = v73;
              v78 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_1001A1F18(0, v78[2] + 1, 1, v78);
              }

              a4 = v68;
              v80 = v78[2];
              v79 = v78[3];
              v12 = v88;
              if (v80 >= v79 >> 1)
              {
                v78 = sub_1001A1F18((v79 > 1), v80 + 1, 1, v78);
              }

              v78[2] = v80 + 1;
              v81 = (*(v93 + 80) + 32) & ~*(v93 + 80);
              v96 = v78;
              sub_10002AFD4(v76, v78 + v81 + *(v93 + 72) * v80, type metadata accessor for MetricChartData);
              v33 = v99;
              v34 = v109;
              goto LABEL_4;
            }
          }

          else if (v83)
          {
            goto LABEL_23;
          }

          if (v39)
          {
            v52 = _CocoaArrayWrapper.endIndex.getter();
            if (!v52)
            {
              goto LABEL_42;
            }

LABEL_32:
            v118 = _swiftEmptyArrayStorage;
            sub_100073020(0, v52 & ~(v52 >> 63), 0);
            if (v52 < 0)
            {
              goto LABEL_62;
            }

            v84 = v49;
            v53 = 0;
            v54 = v118;
            v111 = v38 & 0xC000000000000001;
            v55 = v52;
            do
            {
              if (v111)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v56 = *(v38 + 8 * v53 + 32);
              }

              v57 = v56;
              v58 = [v56 endDate];
              v59 = v112;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v60 = v113;
              static TimeZone.current.getter();
              v61 = Date.dayOfMonth(in:)();
              v63 = v62;

              (*v110)(v60, v114);
              (*v116)(v59, v115);
              v118 = v54;
              v65 = v54[2];
              v64 = v54[3];
              if (v65 >= v64 >> 1)
              {
                sub_100073020((v64 > 1), v65 + 1, 1);
                v54 = v118;
              }

              ++v53;
              v54[2] = v65 + 1;
              v66 = &v54[2 * v65];
              v66[4] = v61;
              v66[5] = v63;
            }

            while (v55 != v53);

            v50 = v100;
            v49 = v84;
          }

          else
          {
            v52 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v52)
            {
              goto LABEL_32;
            }

LABEL_42:

            v54 = _swiftEmptyArrayStorage;
          }

          v67 = sub_1001AA6D4(v54);

          v51 = *(v67 + 16);
          goto LABEL_44;
        }
      }

      (*v116)(v35, v32);
      v34 = v109;
      v33 = v99;
      (*v101)(v109, v99);
    }

LABEL_4:
    ++v29;
    v27 = v102;
    v25 = v103;
    if (v29 == v108)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_100028AE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v71 = a5;
  v15 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v72 = type metadata accessor for MetricDetailViewModel(0);
  v18 = *(v72 - 8);
  __chkstk_darwin(v72);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = sub_100627E80(a2);
    if (v21)
    {
      if (!a3)
      {
        v67 = a9;
        v46 = a6 & 1;
        v70 = v17;
        v47 = v71;
        LODWORD(v69) = v46;
        v48 = sub_1003CE35C(v21, v71, v46, sub_10048C700);

        v49 = sub_1004D3AD8(a4);
        v50 = v46;
        v51 = v67;
        sub_100027F40(v47, v50, v67, v48, v49, a4);
        v68 = v52;
        v54 = v53;
        v56 = v55;

        v57 = v72;
        v58 = *(v72 + 36);
        v59 = type metadata accessor for DateInterval();
        v60 = *(v59 - 8);
        (*(v60 + 16))(&v20[v58], v51, v59);
        (*(v60 + 56))(&v20[v58], 0, 1, v59);
        v61 = v49;
        Date.init()();
        v62 = objc_opt_self();
        *v20 = [v62 quantityWithUnit:v61 doubleValue:v54];
        v63 = [v62 quantityWithUnit:v61 doubleValue:v56];

        v64 = v68;
        *(v20 + 1) = v63;
        *(v20 + 2) = v64;
        *(v20 + 3) = _swiftEmptyArrayStorage;
        *(v20 + 4) = v47;
        v20[40] = v69;
        v20[*(v57 + 40)] = 1;
        v65 = v70;
        sub_10002910C(v20, v70);
        (*(v18 + 56))(v65, 0, 1, v57);
        sub_100140278(&qword_1008EB7D8, &qword_1006ED810);
        CheckedContinuation.resume(returning:)();

        return sub_1000292B4(v20, type metadata accessor for MetricDetailViewModel);
      }
    }
  }

  v22 = static os_log_type_t.error.getter();
  v23 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v22))
  {
    v70 = a7;
    v69 = v23;
    v24 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v24 = 136315906;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10000AFDC(v25, v26, &v76);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = sub_10002A094(a4);
    v30 = sub_10000AFDC(v28, v29, &v76);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    if (a6)
    {
      v31 = 0xE90000000000006BLL;
      v32 = 0x6565772073696874;
      if (v71 != 1)
      {
        v32 = 0x6E6F6D2073696874;
        v31 = 0xEA00000000006874;
      }

      if (v71)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0x7961646F74;
      }

      if (v71)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0xE500000000000000;
      }
    }

    else
    {
      v74 = 0x2072616579;
      v75 = 0xE500000000000000;
      v73 = v71;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v33 = v74;
      v34 = v75;
    }

    v36 = sub_10000AFDC(v33, v34, &v76);

    *(v24 + 24) = v36;
    *(v24 + 32) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v74 = v37;
    v75 = v39;
    sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
    v40 = Optional.description.getter();
    v42 = v41;

    v43 = sub_10000AFDC(v40, v42, &v76);

    *(v24 + 34) = v43;
    v44 = v69;
    _os_log_impl(&_mh_execute_header, v69, v22, "%s error fetchQuantitySample for %s in %s: %s", v24, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v18 + 56))(v17, 1, 1, v72);
  sub_100140278(&qword_1008EB7D8, &qword_1006ED810);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10002910C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100029184(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000292B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100029338(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v33 = a5;
  v32 = a4;
  v37 = a2;
  v38 = a3;
  v35 = a7;
  v36 = a9;
  v11 = type metadata accessor for DateInterval();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008EB7D8, &qword_1006ED810);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v31 - v19;
  (*(v16 + 16))(&v31 - v19, a1, v15, v18);
  (*(v12 + 16))(v14, a8, v11);
  v21 = (*(v16 + 80) + 33) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v32;
  *(v25 + 24) = v33;
  *(v25 + 32) = v34 & 1;
  (*(v16 + 32))(v25 + v21, v20, v15);
  v26 = v35;
  *(v25 + v22) = v35;
  (*(v12 + 32))(v25 + v23, v14, v31);
  *(v25 + v24) = v36;
  v27 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = sub_1003CEDE4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DEE0;
  aBlock[3] = &unk_100856220;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v30 = [v27 initWithSampleType:v37 predicate:v38 limit:0 sortDescriptors:0 resultsHandler:v28];
  _Block_release(v28);

  [*&v29[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_healthStore] executeQuery:v30];
}

uint64_t sub_100029660()
{
  v1 = sub_100140278(&qword_1008EB7D8, &qword_1006ED810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000297D4()
{

  return _swift_task_switch(sub_1000298EC, 0, 0);
}

uint64_t sub_1000298EC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000299A0()
{

  return _swift_task_switch(sub_100029A9C, 0, 0);
}

uint64_t sub_100029A9C(uint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 88);
  v3 = *(v1 + 40);
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  sub_10001B104(v3, v2, &qword_1008DC408, &qword_1006D4870);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v1 + 121);
    v7 = *(v1 + 120);
    v8 = v5;
    v9 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, &v46);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10002A094(v7);
    v15 = sub_10000AFDC(v13, v14, &v46);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v16 = *(v1 + 56);
    if (v6)
    {
      v17 = 0xE90000000000006BLL;
      v18 = 0x6565772073696874;
      if (v16 != 1)
      {
        v18 = 0x6E6F6D2073696874;
        v17 = 0xEA00000000006874;
      }

      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x7961646F74;
      }

      if (v16)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE500000000000000;
      }
    }

    else
    {
      v47 = 0x2072616579;
      v48 = 0xE500000000000000;
      *(v1 + 32) = v16;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v19 = v47;
      v20 = v48;
    }

    v23 = *(v1 + 80);
    v22 = *(v1 + 88);
    v24 = sub_10000AFDC(v19, v20, &v46);

    *(v9 + 24) = v24;
    *(v9 + 32) = 2080;
    sub_10001B104(v22, v23, &qword_1008DC408, &qword_1006D4870);
    v25 = type metadata accessor for MetricDetailViewModel(0);
    if ((*(*(v25 - 8) + 48))(v23, 1, v25) == 1)
    {
      sub_10000EA04(*(v1 + 80), &qword_1008DC408, &qword_1006D4870);
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v28 = *(v1 + 120);
      v29 = 1;
      if (((1 << v28) & 0x5DDBB8E070) != 0)
      {
        v29 = 0;
      }

      else if (((1 << v28) & 0x2224471F80) == 0)
      {
        v29 = *(v1 + 121) ^ 1;
      }

      v30 = *(v1 + 80);
      v26 = sub_10002A4EC(v29 & 1);
      v27 = v31;
      sub_1000292B4(v30, type metadata accessor for MetricDetailViewModel);
    }

    v32 = *(v1 + 88);
    *(v1 + 16) = v26;
    *(v1 + 24) = v27;
    sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
    v33 = Optional.description.getter();
    v35 = v34;
    sub_10000EA04(v32, &qword_1008DC408, &qword_1006D4870);

    v36 = sub_10000AFDC(v33, v35, &v46);

    *(v9 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v8, v4, "%s fetchData returned for %s in %s: %s", v9, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000EA04(*(v1 + 88), &qword_1008DC408, &qword_1006D4870);
  }

  v37 = *(v1 + 123);
  v38 = *(v1 + 64);
  v39 = *(v1 + 122);
  v40 = *(v1 + 120);
  v41 = *(v1 + 40);
  v42 = *(v1 + 48);
  v43 = swift_task_alloc();
  *(v43 + 16) = v42;
  *(v43 + 24) = v39;
  *(v43 + 32) = v38;
  *(v43 + 40) = v37 & 1;
  *(v43 + 48) = v41;
  *(v43 + 56) = v40;
  UnfairLock.acquire<A>(_:)();

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_100029F64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002A094(char a1)
{
  result = 0x54535F4C41544F54;
  switch(a1)
  {
    case 1:
      return 0x49445F4C41544F54;
    case 2:
      return 0x55505F4C41544F54;
    case 3:
    case 32:
      v5 = 9;
      return v5 | 0xD000000000000010;
    case 4:
      return 0xD000000000000010;
    case 5:
      v4 = 1313756498;
      goto LABEL_17;
    case 6:
    case 15:
    case 25:
    case 27:
      return 0xD000000000000011;
    case 7:
      v3 = 1313756498;
      goto LABEL_36;
    case 8:
      v7 = 1313756498;
      return v7 | 0x5F474E4900000000;
    case 9:
      v6 = 1313756498;
      return v6 | 0x5F474E4900000000;
    case 10:
      v5 = 11;
      return v5 | 0xD000000000000010;
    case 11:
      return 0xD00000000000001CLL;
    case 12:
      v5 = 5;
      return v5 | 0xD000000000000010;
    case 13:
      return 0xD000000000000010;
    case 14:
      v4 = 1279482179;
      goto LABEL_17;
    case 16:
      v3 = 1279482179;
      goto LABEL_36;
    case 17:
      v7 = 1279482179;
      return v7 | 0x5F474E4900000000;
    case 18:
      v6 = 1279482179;
      return v6 | 0x5F474E4900000000;
    case 19:
      return 0x445F474E494B4948;
    case 20:
      return 0x545F474E494B4948;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0x505F474E494B4948;
    case 23:
      return 0xD000000000000010;
    case 24:
      v4 = 1263288663;
LABEL_17:
      result = v4 | 0x5F474E4900000000;
      break;
    case 26:
      v3 = 1263288663;
LABEL_36:
      result = v3 | 0x5F474E4900000000;
      break;
    case 28:
    case 29:
      result = 0x474E494D4D495753;
      break;
    case 30:
    case 36:
      result = 0xD000000000000018;
      break;
    case 31:
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
    case 37:
    case 38:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002A4EC(char a1)
{
  if (a1)
  {
    v9 = 0x3A65676172657661;
    v2 = [v1[1] description];
  }

  else
  {
    v9 = 0x203A6C61746F74;
    v2 = [*v1 description];
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v9;
}

double sub_10002A5B0(char *a1, uint64_t a2, Swift::UInt a3, int a4, uint64_t a5, int a6)
{
  v43 = a5;
  v36 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v39 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
  __chkstk_darwin(v13 - 8);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v31[-v17];
  v19 = type metadata accessor for MetricDetailViewModel(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v33 = &v31[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v32 = a4;
  v34 = a2;
  v35 = a3;
  sub_10002AC1C(0, a2, a3, a4 & 1);
  swift_endAccess();
  sub_10001B104(v43, v18, &qword_1008DC408, &qword_1006D4870);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000EA04(v18, &qword_1008DC408, &qword_1006D4870);
  }

  else
  {
    v23 = v33;
    sub_10002AFD4(v18, v33, type metadata accessor for MetricDetailViewModel);
    sub_10002910C(v23, v15);
    (*(v20 + 56))(v15, 0, 1, v19);
    swift_beginAccess();
    sub_10002B0A4(v15, v34, v35, v32 & 1);
    swift_endAccess();
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = v36;
    aBlock[4] = sub_1003CF084;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100856298;
    v26 = _Block_copy(aBlock);
    v27 = a1;
    v28 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[7] = _swiftEmptyArrayStorage;
    sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
    v29 = v39;
    v30 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v41 + 8))(v29, v30);
    (*(v38 + 8))(v28, v40);
    sub_1000292B4(v23, type metadata accessor for MetricDetailViewModel);
  }

  return result;
}

uint64_t sub_10002AB14()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10002AB7C(uint64_t a1, Swift::UInt a2, char a3)
{
  v5 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  if ((a3 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();

  return sub_10002ACFC(v5, a2, a3 & 1, v6);
}

void sub_10002AC1C(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_100490F24(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    v11 = sub_10002AB7C(a2, a3, a4 & 1);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        sub_10049496C();
        v15 = v17;
      }

      sub_10002ADD4(v13, v15);
      *v5 = v15;
    }
  }
}

unint64_t sub_10002ACFC(unsigned __int8 a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      if (*v9 == a1)
      {
        v10 = *(v9 + 1);
        if (v9[16] == 1)
        {
          if (v10)
          {
            if (v10 == 1)
            {
              if ((a3 & (a2 == 1)) != 0)
              {
                return result;
              }
            }

            else if ((a3 & (a2 > 1)) != 0)
            {
              return result;
            }
          }

          else if ((a3 & (a2 == 0)) != 0)
          {
            return result;
          }
        }

        else if ((a3 & 1) == 0 && v10 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_10002ADD4(Swift::Int result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    do
    {
      v9 = v8;
      v10 = 24 * v6;
      v11 = v2;
      v12 = (*(v2 + 48) + 24 * v6);
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = v12[16];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v13);
      if ((v15 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v16 = result & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v27;
        v2 = v11;
        if (v16 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v27;
        v2 = v11;
        if (v16 >= v9)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v16)
      {
LABEL_12:
        v17 = *(v2 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v10);
        if (24 * v3 < v10 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(v2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_10002AFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B0A4(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for MetricDetailViewModel(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13, v15) == 1)
  {
    sub_10000EA04(a1, &qword_1008DC408, &qword_1006D4870);
    v18 = sub_10002AB7C(a2, a3, a4 & 1);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v4;
      v26 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1004946FC();
        v22 = v26;
      }

      sub_10002B380(*(v22 + 56) + *(v14 + 72) * v20, v12, type metadata accessor for MetricDetailViewModel);
      sub_10056DEF4(v20, v22);
      *v5 = v22;
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_10000EA04(v12, &qword_1008DC408, &qword_1006D4870);
  }

  else
  {
    sub_10002B380(a1, v17, type metadata accessor for MetricDetailViewModel);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    result = sub_10002B3E8(v17, a2, a3, a4 & 1, v23);
    *v4 = v26;
  }

  return result;
}

uint64_t sub_10002B318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B3E8(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_10002AB7C(a2, a3, a4 & 1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *v6;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for MetricDetailViewModel(0);
      return sub_1004A9090(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for MetricDetailViewModel);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_1004946FC();
    goto LABEL_7;
  }

  sub_10002B568(v17, a5 & 1);
  v24 = sub_10002AB7C(a2, a3, a4 & 1);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_10002B908(v14, a2, a3, a4 & 1, a1, v20);
}

void sub_10002B568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MetricDetailViewModel(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100140278(&qword_1008EB7C8, &unk_1006ED7F0);
  v42 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v39 = v2;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v23 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v26 = v23 | (v10 << 6);
      v27 = *(v7 + 56);
      v28 = (*(v7 + 48) + 24 * v26);
      v29 = *v28;
      v30 = *(v28 + 1);
      v31 = v28[16];
      v32 = v27 + *(v41 + 72) * v26;
      v43 = *(v41 + 72);
      if (v42)
      {
        sub_10002B9C4(v32, v44, type metadata accessor for MetricDetailViewModel);
      }

      else
      {
        sub_1004A9424(v32, v44, type metadata accessor for MetricDetailViewModel);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v29);
      if ((v31 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v30);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v18) >> 6;
        while (++v20 != v34 || (v33 & 1) == 0)
        {
          v35 = v20 == v34;
          if (v20 == v34)
          {
            v20 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v20);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = *(v9 + 48) + 24 * v21;
      *v22 = v29;
      *(v22 + 8) = v30;
      *(v22 + 16) = v31;
      sub_10002B9C4(v44, *(v9 + 56) + v43 * v21, type metadata accessor for MetricDetailViewModel);
      ++*(v9 + 16);
      v7 = v40;
    }

    v24 = v10;
    while (1)
    {
      v10 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v25 = v11[v10];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v14 = (v25 - 1) & v25;
        goto LABEL_16;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v3 = v9;
}

uint64_t sub_10002B908(unint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4 & 1;
  v10 = a6[7];
  v11 = type metadata accessor for MetricDetailViewModel(0);
  result = sub_10002B9C4(a5, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for MetricDetailViewModel);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_10002B9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002BA3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002BA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002BACC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BBC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BCC0(uint64_t a1)
{
  v45 = v1;
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = *(v1 + 105);
    v5 = *(v1 + 104);
    log = v3;
    v6 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, &v42);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_10002A094(v5);
    v12 = sub_10000AFDC(v10, v11, &v42);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    v13 = *(v1 + 40);
    if (v4)
    {
      v14 = 0xE90000000000006BLL;
      v15 = 0x6565772073696874;
      if (v13 != 1)
      {
        v15 = 0x6E6F6D2073696874;
        v14 = 0xEA00000000006874;
      }

      if (v13)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x7961646F74;
      }

      if (v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE500000000000000;
      }
    }

    else
    {
      v43 = 0x2072616579;
      v44 = 0xE500000000000000;
      *(v1 + 24) = v13;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v16 = v43;
      v17 = v44;
    }

    v19 = sub_10000AFDC(v16, v17, &v42);

    *(v6 + 24) = v19;
    _os_log_impl(&_mh_execute_header, log, v2, "%s fetchData for %s in %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v1 + 105);
  v22 = *(v1 + 40);
  v21 = *(v1 + 48);
  v23 = *(v1 + 104);
  *(v1 + 16) = 0;
  v24 = swift_task_alloc();
  *(v24 + 16) = v1 + 16;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = v22;
  *(v24 + 48) = v20 & 1;
  UnfairLock.acquire<A>(_:)();

  v25 = *(v1 + 16);
  *(v1 + 72) = v25;
  if (v25)
  {

    v26 = swift_task_alloc();
    *(v1 + 80) = v26;
    v27 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
    *v26 = v1;
    v28 = sub_1003C5A74;
  }

  else
  {
    v30 = *(v1 + 56);
    v29 = *(v1 + 64);
    v31 = *(v1 + 105);
    v33 = *(v1 + 40);
    v32 = *(v1 + 48);
    v34 = *(v1 + 104);
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = v34;
    *(v36 + 40) = v32;
    *(v36 + 48) = v33;
    v31 &= 1u;
    *(v36 + 56) = v31;
    *(v36 + 64) = v34;
    *(v36 + 72) = v33;
    *(v36 + 80) = v31;
    *(v36 + 88) = v30;
    v37 = v32;
    v25 = sub_10026E498(0, 0, v29, &unk_1006ED820, v36);
    *(v1 + 88) = v25;
    v38 = swift_task_alloc();
    *(v38 + 16) = v37;
    *(v38 + 24) = v34;
    *(v38 + 32) = v33;
    *(v38 + 40) = v31;
    *(v38 + 48) = v25;
    UnfairLock.acquire<A>(_:)();

    v26 = swift_task_alloc();
    *(v1 + 96) = v26;
    v27 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
    *v26 = v1;
    v28 = sub_10002C1C0;
  }

  v26[1] = v28;
  v39 = *(v1 + 32);

  return Task<>.value.getter(v39, v25, v27);
}

uint64_t sub_10002C180()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002C1C0()
{

  return _swift_task_switch(sub_10002C2BC, 0, 0);
}

uint64_t sub_10002C2BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ActivitySharingHighlight(uint64_t a1)
{
  result = qword_1008E5458;
  if (!qword_1008E5458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002C384(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for Date();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10002C49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void *sub_10002C5A4(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v4 = sub_100140278(&qword_1008E9FF0, &qword_1006EAF28);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v35 = type metadata accessor for ActivitySharingHighlight(0);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v30 = &v28 - v10;
  v37 = a1;
  v11 = [a1 snapshots];
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = v11;
  sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
  sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr);
  sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750, NSNumber_ptr);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v13;
  sub_10002CBFC(v14);
  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v32 = v16 & 0xFFFFFFFFFFFFFF8;
    v33 = v16 & 0xC000000000000001;
    v19 = (v31 + 48);
    v20 = _swiftEmptyArrayStorage;
    v29 = v2;
    while (1)
    {
      if (v33)
      {
        v21 = v16;
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v32 + 16))
        {
          goto LABEL_20;
        }

        v21 = v16;
        v22 = *(v16 + 8 * v18 + 32);
      }

      v16 = v22;
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v38[0] = v22;
      sub_10002CDF4(v38, v37, v2, v36, v6);

      if ((*v19)(v6, 1, v35) == 1)
      {
        sub_10000EA04(v6, &qword_1008E9FF0, &qword_1006EAF28);
      }

      else
      {
        v24 = v30;
        sub_100042910(v6, v30);
        sub_100042910(v24, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100043614(0, v20[2] + 1, 1, v20);
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          v20 = sub_100043614((v25 > 1), v26 + 1, 1, v20);
        }

        v20[2] = v26 + 1;
        sub_100042910(v34, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
        v2 = v29;
      }

      v16 = v21;
      ++v18;
      if (v23 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_23:

  return v20;
}

void *sub_10002C98C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
    sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0, ASFriend_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100022DEC(v1);
      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      sub_100021744(v14);
      v16 = v15;
      v17 = sub_10002C5A4(v14);
      sub_10002D688(v17);
      v18 = sub_10002D6C4(v14);
      v19 = v16;
      sub_10002D688(v18);

      result = sub_10002D688(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
        swift_dynamicCast();
        v14 = v19;
        v12 = v5;
        v13 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10002CBFC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.makeIterator()();
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v1 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = a1 + 64;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 64);
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_unknownObjectRelease(), sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr), swift_dynamicCast(), v15 = v16, v13 = v9, v14 = v5, !v16))
    {
LABEL_21:
      sub_100022DEC(v1);
      return;
    }

LABEL_19:
    if (ASAllGoalsMetForSnapshot())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v9 = v13;
    v5 = v14;
  }

  v11 = v9;
  v12 = v5;
  v13 = v9;
  if (v5)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_21;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_10002CDF4@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v59 = a3;
  v60 = a2;
  v67 = a5;
  v7 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for Date();
  v66 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateComponents();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v64 = *(v16 - 8);
  v65 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [*a1 activitySummary];
  if (v21)
  {
    v22 = v21;
    v61 = v5;
    v23 = [objc_opt_self() hk_gregorianCalendar];
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    [v20 snapshotIndex];
    v24 = _HKActivityCacheDateComponentsFromCacheIndex();
    if (v24)
    {
      v25 = v24;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      Calendar.date(from:)();
      v26 = v66;
      if ((v66[6].isa)(v9, 1, v10) != 1)
      {
        v50 = v12;
        v58 = v12;
        v51 = v22;
        isa = v26[4].isa;
        v66 = v26 + 4;
        isa(v50, v9, v10);
        v63 = v51;
        v53 = [v20 UUID];
        v54 = type metadata accessor for ActivitySharingHighlight(0);
        v55 = v67;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v62 + 8))(v15, v13);
        (*(v64 + 8))(v19, v65);
        isa((v55 + v54[6]), v58, v10);
        v56 = v60;
        v57 = *(v59 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
        *v55 = v51;
        *(v55 + 8) = 1;
        *(v55 + v54[7]) = v56;
        *(v55 + v54[8]) = v57;
        (*(*(v54 - 1) + 56))(v55, 0, 1, v54);
        return v56;
      }

      (*(v62 + 8))(v15, v13);
      sub_10000EA04(v9, &unk_1008F73A0, &unk_1006DB450);
    }

    v27 = static os_log_type_t.error.getter();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v27))
    {
      v66 = v28;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v31;
      *v29 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = sub_10000AFDC(v32, v33, &v68);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v20;
      *v30 = v20;
      v35 = v20;
      v36 = v66;
      _os_log_impl(&_mh_execute_header, v66, v27, "%s failed to create snapshot date for %@", v29, 0x16u);
      sub_10000EA04(v30, &unk_1008DB8B0, &unk_1006DBD30);

      sub_100005A40(v31);
    }

    else
    {
    }

    (*(v64 + 8))(v19, v65);
    v49 = type metadata accessor for ActivitySharingHighlight(0);
    return (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
  }

  else
  {
    v37 = static os_log_type_t.error.getter();
    v38 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v37))
    {
      v39 = v38;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68 = v42;
      *v40 = 136315394;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10000AFDC(v43, v44, &v68);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v20;
      *v41 = v20;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v39, v37, "%s failed to create activity summary for %@", v40, 0x16u);
      sub_10000EA04(v41, &unk_1008DB8B0, &unk_1006DBD30);

      sub_100005A40(v42);
    }

    v47 = type metadata accessor for ActivitySharingHighlight(0);
    return (*(*(v47 - 8) + 56))(v67, 1, 1, v47);
  }
}

uint64_t sub_10002D52C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_10001AA8C(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002D6C4(void *a1)
{
  v38 = *v1;
  v3 = sub_100140278(&qword_1008E9FF0, &qword_1006EAF28);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v37 = type metadata accessor for ActivitySharingHighlight(0);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v33 = &v31 - v9;
  v39 = a1;
  v10 = [a1 friendWorkouts];
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v10;
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    sub_100140278(&qword_1008DE948, &qword_1006EAF30);
    sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750, NSNumber_ptr);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = _swiftEmptyArrayStorage;
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    if (v16)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        do
        {
LABEL_10:
          v16 &= v16 - 1;

          sub_10002DB30(v20);
        }

        while (v16);
        continue;
      }
    }

    v18 = v41;
    if (v41 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = 0;
      v35 = v18 & 0xC000000000000001;
      v23 = (v34 + 48);
      v11 = _swiftEmptyArrayStorage;
      v32 = i;
      while (1)
      {
        if (v35)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v24 = *(v18 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v41 = v24;
        sub_10002E200(&v41, v39, v40, v5);

        if ((*v23)(v5, 1, v37) == 1)
        {
          sub_10000EA04(v5, &qword_1008E9FF0, &qword_1006EAF28);
        }

        else
        {
          v27 = v33;
          sub_100042910(v5, v33);
          sub_100042910(v27, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100043614(0, v11[2] + 1, 1, v11);
          }

          v29 = v11[2];
          v28 = v11[3];
          if (v29 >= v28 >> 1)
          {
            v11 = sub_100043614((v28 > 1), v29 + 1, 1, v11);
          }

          v11[2] = v29 + 1;
          sub_100042910(v36, v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29);
          i = v32;
        }

        ++v22;
        if (v26 == i)
        {
          goto LABEL_33;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_33:
  }

  return v11;
}

void sub_10002DB30(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v18, v9);
  v12 = v18 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_10002DF70(v12, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  v15 = sub_10002DF78(&v37, (v3 + 8 * v13 + 32), v14, v8, &qword_1008DE938, _HKFitnessFriendWorkout_ptr, &qword_1008DE940);
  if (v15 < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 1)
  {
    v16 = *(v3 + 16);
    v11 = __OFADD__(v16, v15);
    v17 = v15 + v16;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v17;
  }

  if (v15 != v14)
  {
LABEL_11:
    sub_100022DEC(v37);
    *v7 = v2;
    return;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v37;
  v5 = v38;
  v8 = v40;
  v34 = v39;
  v6 = v41;
  if (v37 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000059F8(0, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
    swift_dynamicCast();
    v20 = v36;
    goto LABEL_31;
  }

  if (!v41)
  {
    v21 = (v39 + 64) >> 6;
    if (v21 <= v40 + 1)
    {
      v22 = v40 + 1;
    }

    else
    {
      v22 = (v39 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v19 >= v21)
      {
        v20 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v38 + 8 * v19);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v19 = v40;
LABEL_29:
  v24 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v20 = *(*(v37 + 48) + ((v19 << 9) | (8 * v24)));
  v25 = v20;
  v23 = v19;
LABEL_30:
  v40 = v23;
  v41 = v6;
  v8 = v23;
LABEL_31:
  if (!v20)
  {
    goto LABEL_11;
  }

  v26 = (v34 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v33 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v35 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v35)
      {
        v4 = v35;
        *(v33 + 16) = v35;
        goto LABEL_33;
      }

      *(v33 + 32 + 8 * v4++) = v20;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000059F8(0, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
        swift_dynamicCast();
        v20 = v36;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_54:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v20 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    v32 = v20;
    v30 = v28;
LABEL_39:
    v37 = v3;
    v38 = v5;
    v39 = v34;
    v40 = v30;
    v8 = v30;
    v41 = v6;
    if (!v20)
    {
LABEL_56:
      *(v33 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v34 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v20 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_10002DED0(uint64_t a1, char a2)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t *sub_10002DF78(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000059F8(0, a5, a6);
  sub_10002E1BC(a7, a5, a6, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000059F8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_10002E1BC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000059F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002E200@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = [*a1 hkWorkoutFromFriendWorkout];
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    v12 = [v8 UUID];
    v13 = type metadata accessor for ActivitySharingHighlight(0);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = [v8 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(a3 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
    *a5 = v10;
    *(a5 + 8) = 2;
    *(a5 + *(v13 + 28)) = a2;
    *(a5 + *(v13 + 32)) = v15;
    (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
    return a2;
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v17))
    {
      log = v18;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v19 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_10000AFDC(v22, v23, &v28);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v8;
      *v20 = v8;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, log, v17, "%s failed to create workout for %@", v19, 0x16u);
      sub_10000EA04(v20, &unk_1008DB8B0, &unk_1006DBD30);

      sub_100005A40(v21);
    }

    v26 = type metadata accessor for ActivitySharingHighlight(0);
    return (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
  }
}

void sub_10002E4C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ActivitySharingHighlight(0);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_10002E710(a3 + v14 + v15 * v12, v11);
      v16 = a1(v11);
      if (v3)
      {
        sub_10002E870(v11);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_10002E7C4(v11, v23, type metadata accessor for ActivitySharingHighlight);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002E82C(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_10002E82C((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_10002E7C4(v23, v13 + v14 + v19 * v15, type metadata accessor for ActivitySharingHighlight);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_10002E870(v11);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_10002E710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_10002E82C(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE558, &unk_1006D8F80, type metadata accessor for ActivitySharingHighlight);
  *v3 = result;
  return result;
}

uint64_t sub_10002E870(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingHighlight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002E8E0(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActivitySharingHighlight(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002E8CC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100042D38(v5);
  *a1 = v3;
}

void sub_10002E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActivitySharingHighlight(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v21;
    v24 = v19;
    while (1)
    {
      sub_10002E710(v22, v17);
      sub_10002E710(v24, v13);
      v25 = Date.isAfter(date:)();
      sub_10002E870(v13);
      sub_10002E870(v17);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_100042910(v22, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_100042910(v10, v24);
      v24 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10002EBB8()
{
  sub_10001CC90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EC18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002EC58()
{

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_10002ED40()
{
  v1 = type metadata accessor for MetricDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100140278(&qword_1008DC2A0, &qword_1006D4760);

  v8 = (v0 + v3 + v1[11]);
  v9 = type metadata accessor for MetricChartData(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 20), v6);
  }

  sub_100140278(&qword_1008DC2A8, &qword_1006D4768);

  v10 = (v4 + v1[13]);
  v11 = type metadata accessor for MetricFormattingHelper(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);

  return _swift_deallocObject(v0, v3 + v15, v2 | 7);
}

uint64_t sub_10002EFE4()
{
  v1 = type metadata accessor for AwardsCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for AwardsCard(0);
  sub_10001D4F8(*(v7 + v9[5]), *(v7 + v9[5] + 8), *(v7 + v9[5] + 16));

  v10 = (v5 + v1[7]);
  if (v10[3])
  {
    sub_100005A40(v10);
  }

  v11 = v5 + v1[9];
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  sub_100140278(&qword_1008DC6B0, &qword_1006D4EE0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F26C()
{
  v1 = type metadata accessor for DashboardCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100005A40((v5 + v1[5]));
  v7 = v1[6];
  v8 = type metadata accessor for AppComposer();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = (v5 + v1[7]);
  if (v9[3])
  {
    sub_100005A40(v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F3F0()
{
  sub_100005A40((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002F430()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F470()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002F4B8()
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  v2 = *(*(OnboardingNavigationView - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(OnboardingNavigationView - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3))
  {
  }

  if (*(v5 + 16))
  {
  }

  v6 = *(OnboardingNavigationView + 36);
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F610()
{
  v1 = type metadata accessor for CardConfigurationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F7F8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100140278(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10002F87C()
{
  v1 = type metadata accessor for SmallAwardsCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v15 = v0;
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100005A40((v4 + v1[5]));

  v6 = (v4 + v1[11]);
  if (v6[3])
  {
    sub_100005A40(v6);
  }

  v7 = v4 + v1[12];

  v8 = *(sub_100140278(&qword_1008DC7F0, &qword_1006D4FB8) + 32);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v12 = v4 + v1[13];
  if (!v11(v12, 1, v9))
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_100140278(&qword_1008DC6B0, &qword_1006D4EE0);

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_10002FB3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FB7C()
{
  v1 = (type metadata accessor for MindfulnessItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100140278(&qword_1008E09C0, qword_1006DC5C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FCB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FD00()
{
  sub_10021D470(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10002FD3C()
{
  v1 = type metadata accessor for MetricCardBarChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + v1[9]);

  v8 = type metadata accessor for MetricFormattingHelper(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  sub_100005A40((v5 + v1[10]));
  v11 = v1[11];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[12];
  v14 = type metadata accessor for Calendar.Component();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[13];
  v16 = type metadata accessor for Date.FormatStyle();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  v17 = v1[15];
  v18 = type metadata accessor for AxisMarkValues();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FFE4()
{
  v1 = (type metadata accessor for ScheduleDayRowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Calendar();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000300DC()
{
  v1 = type metadata accessor for MetricDetailChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = v0;
  v22 = (v2 + 16) & ~v2;
  v3 = v0 + v22;
  v4 = (v0 + v22 + v1[6]);

  v5 = type metadata accessor for MetricDetailViewModel(0);
  v6 = *(v5 + 36);
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 44);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v13 = (v3 + v1[7]);

  v14 = type metadata accessor for MetricFormattingHelper(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for AttributedString();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);

  v17 = v3 + v1[8];

  v18 = (v17 + *(sub_100140278(&qword_1008DC470, &qword_1006D48F0) + 32));
  v19 = type metadata accessor for MetricChartData(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {

    v12(v18 + *(v19 + 20), v10);
  }

  v20 = (v3 + v1[9]);
  if (!(*(v11 + 48))(v20, 1, v10))
  {
    v12(v20, v10);
  }

  sub_100140278(&qword_1008E33E8, qword_1006E0788);

  return _swift_deallocObject(v24, v22 + v23, v2 | 7);
}

uint64_t sub_100030438()
{
  v1 = type metadata accessor for CardTypeConfigurationRoomView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + v1[6]);
  if (v7[3])
  {
    sub_100005A40(v7);
  }

  v8 = v1[15];
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[16], v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030618()
{
  v1 = type metadata accessor for ActivitySharingReplyEditView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100262D5C(*(v5 + 104), *(v5 + 112));
  v6 = v1[9];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[10];
  v10 = type metadata accessor for Reply();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[11];
  v12 = type metadata accessor for ReplyLayoutValues();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030808()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100030888()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000308D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030910()
{
  v1 = type metadata accessor for LargeAwardsCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v15 = v0;
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100005A40((v4 + v1[5]));

  v6 = (v4 + v1[11]);
  if (v6[3])
  {
    sub_100005A40(v6);
  }

  v7 = v4 + v1[12];

  v8 = *(sub_100140278(&qword_1008DC7F0, &qword_1006D4FB8) + 32);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v12 = v4 + v1[16];
  if (!v11(v12, 1, v9))
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_100140278(&qword_1008DC6B0, &qword_1006D4EE0);

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_100030BD0()
{
  v1 = (type metadata accessor for MetricFamilyRoomView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[9]);

  v6 = type metadata accessor for MetricFormattingHelper(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030D84()
{
  v1 = (type metadata accessor for ActivitySharingHighlightViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = type metadata accessor for ActivitySharingHighlight(0);
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v6[6];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = v1[12];
  v12 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100030F54()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100030FCC()
{
  v1 = (type metadata accessor for QuickStartWorkoutCardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  started = type metadata accessor for QuickStartWorkoutCard(0);
  sub_10001D4F8(*(v0 + v3 + *(started + 20)), *(v0 + v3 + *(started + 20) + 8), *(v0 + v3 + *(started + 20) + 16));

  v7 = (v0 + v3 + v1[7]);
  if (v7[3])
  {
    sub_100005A40(v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000310F0()
{
  v1 = *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for ActivitySharingHighlight(0);
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v5[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = type metadata accessor for ActivitySharingHighlightViewModel(0);
  v11 = v10[10];
  v12 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000312C4()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100031324()
{
  v1 = type metadata accessor for MetricFamilyChartView(0);
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  v5 = (v0 + v3 + v1[6]);

  v6 = type metadata accessor for MetricDetailViewModel(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v6 + 44);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = (v4 + v1[8]);

  v13 = type metadata accessor for MetricFormattingHelper(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for AttributedString();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);

  return _swift_deallocObject(v0, v3 + v17, v2 | 7);
}

uint64_t sub_100031540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031580()
{
  v1 = *(type metadata accessor for ActivitySharingFriendListItemView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v4 = v0 + v3;

  v5 = type metadata accessor for ActivitySharingFriendListItem(0);
  v6 = v5[6];
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v9(v0 + v3 + v5[7], v7);
  v10 = v5[8];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  return _swift_deallocObject(v0, v3 + v12, v2 | 7);
}

uint64_t sub_10003172C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100031774()
{
  v1 = *(type metadata accessor for WorkoutReportTrackIssueView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031898()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000318E0()
{
  v1 = *(type metadata accessor for WorkoutChart(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for WorkoutChartViewModel(0);

  v6 = v5[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[11], v7);

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_100031AB4()
{
  v1 = (type metadata accessor for MetricCardLineChartView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[9]);

  v6 = type metadata accessor for MetricFormattingHelper(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[11];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031C18()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031C68()
{
  v1 = (type metadata accessor for ActivitySharingFriendDetailInternalDashboardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for ActivitySharingSettings();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031D70()
{
  v1 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100031DF8()
{
  v1 = *(type metadata accessor for WorkoutChartView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for WorkoutChartViewModel(0);

  v6 = v5[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[11], v7);

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_100031FCC()
{
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v2 = *(*(View - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(View - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(View + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  Card = type metadata accessor for FitnessPlusUpNextCard(0);
  sub_10001D4F8(*(v7 + Card[5]), *(v7 + Card[5] + 8), *(v7 + Card[5] + 16));
  if (*(v7 + Card[9]) >= 4uLL)
  {
  }

  sub_100005A40((v7 + Card[10]));
  sub_100005A40((v7 + Card[11]));
  v10 = (v5 + *(View + 28));
  if (v10[3])
  {
    sub_100005A40(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032198()
{
  v1 = type metadata accessor for ActivityRingsCardView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for ActivityRingsCard(0);
  sub_10001D4F8(*(v6 + v8[5]), *(v6 + v8[5] + 8), *(v6 + v8[5] + 16));

  v9 = v8[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = (v4 + *(v1 + 28));
  if (v12[3])
  {
    sub_100005A40(v12);
  }

  return _swift_deallocObject(v0, v3 + v14, v2 | 7);
}

uint64_t sub_1000323EC()
{
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v2 = *(*(DetailsStackedChartView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(DetailsStackedChartView - 1) + 64);
  v5 = v0 + v3;

  v6 = *(sub_100140278(&qword_1008F0320, &qword_1006F5540) + 32);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v0 + v3 + v6, DataType);

  v8 = v0 + v3 + DetailsStackedChartView[11];
  v9 = type metadata accessor for DayIndex();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_100140278(&qword_1008F0328, qword_1006F5548);

  v10(v0 + v3 + DetailsStackedChartView[16], v9);
  sub_1000A73A4(*(v5 + DetailsStackedChartView[17]), *(v5 + DetailsStackedChartView[17] + 8));
  v11 = DetailsStackedChartView[18];
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = DetailsStackedChartView[19];
  sub_100140278(&qword_1008E66B8, &qword_1006F5670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for LayoutDirection();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}