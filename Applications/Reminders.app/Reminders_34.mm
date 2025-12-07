void *sub_1003B3294(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100003540(0, &qword_100776230, REMAccountCapabilities_ptr);
  sub_1003B3D9C();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100003540(0, &qword_100776230, REMAccountCapabilities_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1003B34B0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

void sub_1003B35AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for TTRRemindersListViewModel.Item();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
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
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
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
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
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
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1003B3850(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v25;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v36 = a3;
    v21 = v40;
    while (v17)
    {
LABEL_14:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v18;
      v26 = v24 | (v18 << 6);
      v27 = *(v21 + 48);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 16))(v9, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = *(v21 + 56);
      v30 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      (*(*(v30 - 8) + 16))(&v9[*(v39 + 48)], v29 + *(*(v30 - 8) + 72) * v26, v30);
      a1 = v38;
      sub_1003B3D08(v9, v38);
      sub_1003B3D08(a1, a2);
      if (v20 == v36)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v31 = __OFADD__(v20++, 1);
      v18 = v25;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v18;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v23);
      ++v22;
      if (v17)
      {
        v18 = v23;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v25 = v32 - 1;
LABEL_23:
    v15 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_1003B3B0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_1000317B8(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  a3[7] = a2;
  return a3;
}

uint64_t *sub_1003B3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRSmartListVersionWarningInteractor();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v12[5] = a4;
  v12[6] = a5;
  v13 = sub_1000317B8(v12 + 2);
  (*(v9 + 32))(v13, v11, a4);
  v12[7] = a2;
  return v12;
}

uint64_t sub_1003B3C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B3D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B3D9C()
{
  result = qword_100776238;
  if (!qword_100776238)
  {
    sub_100003540(255, &qword_100776230, REMAccountCapabilities_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776238);
  }

  return result;
}

uint64_t sub_1003B3E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B3E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003B3FA0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void, __n128)@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(void)@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10, void (*a11)(char *), uint64_t *a12, uint64_t *a13)
{
  v190 = a8;
  v191 = a9;
  v187 = a6;
  v188 = a7;
  v189 = a10;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v172 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v181 = &v167 - v23;
  v182 = a1;
  v183 = a2;
  v24 = sub_100058000(a1, a2);
  __chkstk_darwin(v24 - 8);
  v173 = &v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v171 = &v167 - v27;
  __chkstk_darwin(v28);
  v179 = &v167 - v29;
  __chkstk_darwin(v30);
  v180 = &v167 - v31;
  v184 = sub_100058000(a3, a4);
  __chkstk_darwin(v184);
  v170 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v168 = &v167 - v34;
  __chkstk_darwin(v35);
  v177 = &v167 - v36;
  v38 = __chkstk_darwin(v37);
  v178 = &v167 - v39;
  v40 = a5(0, v38);
  v185 = *(v40 - 8);
  v186 = v40;
  __chkstk_darwin(v40);
  v169 = &v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v167 = &v167 - v43;
  __chkstk_darwin(v44);
  v175 = &v167 - v45;
  __chkstk_darwin(v46);
  v176 = &v167 - v47;
  v48 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v48 - 8);
  v50 = &v167 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v51);
  v53 = &v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v54 - 8);
  v174 = &v167 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = &v167 - v57;
  __chkstk_darwin(v59);
  v61 = &v167 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = &v167 - v64;
  v66 = [*(v13 + qword_100780BE8) destinationIndexPath];
  if (v66)
  {
    v67 = v66;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = v20;
    v69 = *(v20 + 56);
    v70 = v61;
    v71 = 0;
  }

  else
  {
    v68 = v20;
    v69 = *(v20 + 56);
    v70 = v61;
    v71 = 1;
  }

  v72 = v19;
  v73 = v19;
  v74 = v69;
  v69(v70, v71, 1, v73);
  sub_100016588(v61, v65, &unk_100771B10, qword_10062E540);
  v75 = qword_1007A8670;
  sub_1001C4200(v13 + qword_1007A8670, v53);
  sub_1003DEF14(&v53[*(v51 + 20)], v50, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v76 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v77 = (*(*(v76 - 8) + 48))(v50, 4, v76);
  if (v77 > 1)
  {
    if (v77 != 2)
    {
      v78 = v191;
      if (v77 != 3)
      {
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        sub_100003E30(v96, qword_100780BD0);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v82, v83))
        {
          goto LABEL_25;
        }

        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = "Unexpected unresolved intent";
        goto LABEL_24;
      }

      v79 = v179;
      a11(v65);
      v80 = sub_100058000(v190, v189);
      if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
      {
        sub_1000079B4(v79, v182, v183);
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_100003E30(v81, qword_100780BD0);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v82, v83))
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      sub_1000079B4(v65, &unk_100771B10, qword_10062E540);
      v112 = *(v79 + *(v80 + 48));
      v113 = v184;
      v114 = *(v184 + 48);
      v115 = *(v185 + 32);
      v116 = v177;
      v117 = v79;
      v118 = v186;
      v115(v177, v117, v186);
      *&v116[v114] = v112;
      v119 = *&v116[*(v113 + 48)];
      v120 = v175;
      v115(v175, v116, v118);
      v121 = *(v80 + 48);
      v115(v78, v120, v118);
      *&v78[v121] = v119;
LABEL_43:
      sub_100058000(a12, a13);
      swift_storeEnumTagMultiPayload();
      return;
    }

    sub_1003C085C(v187);
    v89 = v180;
    v188();

    v90 = sub_100058000(v190, v189);
    v91 = (*(*(v90 - 8) + 48))(v89, 1, v90);
    v92 = v191;
    if (v91 == 1)
    {
      sub_1000079B4(v89, v182, v183);
      if (qword_100767238 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_100003E30(v93, qword_100780BD0);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v82, v83))
      {
        goto LABEL_25;
      }

LABEL_19:
      v94 = swift_slowAlloc();
      *v94 = 0;
      v95 = "Unable to get parent/index";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v82, v83, v95, v94, 2u);

LABEL_25:

LABEL_26:
      v97 = v65;
LABEL_42:
      sub_1000079B4(v97, &unk_100771B10, qword_10062E540);
      goto LABEL_43;
    }

    sub_1000079B4(v65, &unk_100771B10, qword_10062E540);
    v101 = *(v89 + *(v90 + 48));
    v102 = v184;
    v103 = *(v184 + 48);
    v104 = *(v185 + 32);
    v105 = v178;
    v106 = v186;
    v104(v178, v89, v186);
    *&v105[v103] = v101;
    v107 = *&v105[*(v102 + 48)];
    v108 = v176;
    v104(v176, v105, v106);
    v109 = *(v90 + 48);
    v110 = v92;
    v111 = v108;
LABEL_32:
    v104(v110, v111, v106);
    *&v92[v109] = v107;
    goto LABEL_43;
  }

  if (v77)
  {
    v98 = *(v13 + v75);
    if (v98 < 2)
    {
      goto LABEL_41;
    }

    if (v98 == 2)
    {
      v180 = v65;
      sub_10000794C(v65, v58, &unk_100771B10, qword_10062E540);
      v99 = v68;
      v100 = v72;
      if ((*(v68 + 48))(v58, 1, v72) == 1)
      {
        sub_1000079B4(v180, &unk_100771B10, qword_10062E540);
        v97 = v58;
      }

      else
      {
        v138 = v172;
        (*(v68 + 32))(v172, v58, v100);
        v139 = sub_1003C085C(v187);
        v141 = v140;
        v142 = v174;
        (*(v68 + 16))(v174, v138, v100);
        v74(v142, 0, 1, v100);
        v143 = v171;
        (v188)(v139, v141 & 1, v142);

        sub_1000079B4(v142, &unk_100771B10, qword_10062E540);
        v144 = sub_100058000(v190, v189);
        if ((*(*(v144 - 8) + 48))(v143, 1, v144) != 1)
        {
          (*(v99 + 8))(v138, v100);
          sub_1000079B4(v180, &unk_100771B10, qword_10062E540);
          v154 = *(v143 + *(v144 + 48));
          v155 = v184;
          v156 = *(v184 + 48);
          v157 = *(v185 + 32);
          v158 = v168;
          v159 = v186;
          v157(v168, v143, v186);
          *&v158[v156] = v154;
          v160 = *&v158[*(v155 + 48)];
          v161 = v167;
          v157(v167, v158, v159);
          v162 = *(v144 + 48);
          v163 = v191;
          v157(v191, v161, v159);
          *&v163[v162] = v160;
          goto LABEL_43;
        }

        sub_1000079B4(v143, v182, v183);
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v145 = type metadata accessor for Logger();
        sub_100003E30(v145, qword_100780BD0);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "Unable to get parent/index", v148, 2u);
        }

        (*(v99 + 8))(v138, v100);
        v97 = v180;
      }

      goto LABEL_42;
    }

    if (v98 == 3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v84 = v68;
    v85 = *(v68 + 32);
    v86 = v181;
    v87 = v72;
    v85(v181, v50, v72);
    v88 = *(v13 + v75);
    if (v88 < 2)
    {
      (*(v84 + 8))(v86, v72);
LABEL_41:
      v97 = v65;
      goto LABEL_42;
    }

    v122 = v84;
    if (v88 == 2)
    {
      if (qword_100767238 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for Logger();
      sub_100003E30(v123, qword_100780BD0);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&_mh_execute_header, v124, v125, "Unexpected operation=.copy for intent=.multiRowReordering", v126, 2u);
      }

      (*(v122 + 8))(v86, v87);
      goto LABEL_26;
    }

    v180 = v65;
    if (v88 == 3)
    {
      v127 = sub_1003C085C(v187);
      v129 = v128;
      v130 = v174;
      (*(v84 + 16))(v174, v86, v87);
      v74(v130, 0, 1, v87);
      v131 = v173;
      (v188)(v127, v129 & 1, v130);

      sub_1000079B4(v130, &unk_100771B10, qword_10062E540);
      v132 = sub_100058000(v190, v189);
      if ((*(*(v132 - 8) + 48))(v131, 1, v132) == 1)
      {
        sub_1000079B4(v131, v182, v183);
        v133 = v180;
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v134 = type metadata accessor for Logger();
        sub_100003E30(v134, qword_100780BD0);
        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&_mh_execute_header, v135, v136, "Unable to get parent/index", v137, 2u);
        }

        (*(v122 + 8))(v86, v87);
        v97 = v133;
        goto LABEL_42;
      }

      (*(v122 + 8))(v86, v87);
      sub_1000079B4(v180, &unk_100771B10, qword_10062E540);
      v149 = *(v131 + *(v132 + 48));
      v150 = v184;
      v151 = *(v184 + 48);
      v104 = *(v185 + 32);
      v152 = v170;
      v106 = v186;
      v104(v170, v131, v186);
      *&v152[v151] = v149;
      v107 = *&v152[*(v150 + 48)];
      v153 = v169;
      v104(v169, v152, v106);
      v109 = *(v132 + 48);
      v92 = v191;
      v110 = v191;
      v111 = v153;
      goto LABEL_32;
    }
  }

  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v164 = type metadata accessor for Logger();
  sub_100003E30(v164, qword_100780BD0);
  v165 = sub_100008E04(_swiftEmptyArrayStorage);
  v166 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown UIDropOperation", 23, 2uLL, v165, v166);
  __break(1u);
}

void *sub_1003B5198(int a1)
{
  v47 = a1;
  v1 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v1 - 8);
  v56 = v46 - v2;
  v65 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100058000(&unk_1007819A0, &qword_10062FF50);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = v46 - v14;
  v15 = sub_100058000(&unk_10076BDA0, &unk_10063D3D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = (v46 - v17);
  v18 = sub_1003B74A4(&unk_10076BDA0, &unk_10063D3D0, sub_1004A2198, sub_1003BFD84);
  v19 = v18[2];
  if (v19)
  {
    v68 = v8;
    v63 = v11;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v46[1] = v18;
    v21 = v18 + v20;
    v22 = (v9 + 48);
    v67 = *(v15 + 36);
    v60 = (v9 + 32);
    v23 = *(v16 + 72);
    v58 = (v3 + 48);
    v49 = (v3 + 32);
    v48 = (v9 + 8);
    v66 = _swiftEmptyArrayStorage;
    v25 = v55;
    v24 = v56;
    v62 = v15;
    v50 = v7;
    v61 = v22;
    v59 = v23;
    while (1)
    {
      v69 = v21;
      v70 = v19;
      sub_10000794C(v21, v25, &unk_10076BDA0, &unk_10063D3D0);
      sub_10000794C(v25 + v67, v7, &unk_100771B10, qword_10062E540);
      v26 = v7;
      v27 = v7;
      v28 = v68;
      if ((*v22)(v26, 1, v68) == 1)
      {
        sub_1000079B4(v25, &unk_10076BDA0, &unk_10063D3D0);
        sub_1000079B4(v27, &unk_100771B10, qword_10062E540);
      }

      else
      {
        v29 = *v60;
        v30 = v63;
        (*v60)(v63, v27, v28);
        sub_10000794C(v25 + *(v62 + 40), v24, &unk_100771B40, &unk_10062FB70);
        v31 = v65;
        if ((*v58)(v24, 1, v65) != 1)
        {
          v32 = v28;
          v33 = *v49;
          v34 = v53;
          v35 = v24;
          v36 = v31;
          (*v49)(v53, v35, v31);
          v57 = *v25;
          sub_1000079B4(v25, &unk_10076BDA0, &unk_10063D3D0);
          v37 = v52;
          v38 = v51;
          v29(&v51[*(v52 + 36)], v30, v32);
          v33(&v38[*(v37 + 40)], v34, v36);
          *v38 = v57;
          sub_100016588(v38, v64, &unk_1007819A0, &qword_10062FF50);
          v39 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1005477E4(0, v39[2] + 1, 1, v39);
          }

          v23 = v59;
          v41 = v39[2];
          v40 = v39[3];
          v66 = v39;
          v7 = v50;
          if (v41 >= v40 >> 1)
          {
            v66 = sub_1005477E4((v40 > 1), v41 + 1, 1, v66);
          }

          v42 = v66;
          v66[2] = v41 + 1;
          sub_100016588(v64, v42 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, &unk_1007819A0, &qword_10062FF50);
          v25 = v55;
          v24 = v56;
          v22 = v61;
          goto LABEL_5;
        }

        (*v48)(v30, v28);
        sub_1000079B4(v25, &unk_10076BDA0, &unk_10063D3D0);
        sub_1000079B4(v24, &unk_100771B40, &unk_10062FB70);
        v22 = v61;
        v23 = v59;
      }

      v7 = v27;
LABEL_5:
      v21 = v69 + v23;
      v19 = v70 - 1;
      if (v70 == 1)
      {

        if (v47)
        {
          v43 = v66;
          goto LABEL_17;
        }

        return v66;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
  if (v47)
  {
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1003B2EBC(v43);
    }

    v44 = v43[2];
    v71[0] = v43 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v71[1] = v44;
    sub_1003D6F6C(v71, &unk_1007819A0, &qword_10062FF50, sub_1000ED8B4);
  }

  return v43;
}

void *sub_1003B5934(int a1)
{
  v47 = a1;
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v56 = v46 - v2;
  v65 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100058000(&qword_10076BC90, qword_10063D350);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = v46 - v14;
  v15 = sub_100058000(&unk_1007818E0, &qword_10063D348);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = (v46 - v17);
  v18 = sub_1003B74A4(&unk_1007818E0, &qword_10063D348, sub_1004A24F0, sub_1003C02F0);
  v19 = v18[2];
  if (v19)
  {
    v68 = v8;
    v63 = v11;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v46[1] = v18;
    v21 = v18 + v20;
    v22 = (v9 + 48);
    v67 = *(v15 + 36);
    v60 = (v9 + 32);
    v23 = *(v16 + 72);
    v58 = (v3 + 48);
    v49 = (v3 + 32);
    v48 = (v9 + 8);
    v66 = _swiftEmptyArrayStorage;
    v25 = v55;
    v24 = v56;
    v62 = v15;
    v50 = v7;
    v61 = v22;
    v59 = v23;
    while (1)
    {
      v69 = v21;
      v70 = v19;
      sub_10000794C(v21, v25, &unk_1007818E0, &qword_10063D348);
      sub_10000794C(v25 + v67, v7, &unk_100771B10, qword_10062E540);
      v26 = v7;
      v27 = v7;
      v28 = v68;
      if ((*v22)(v26, 1, v68) == 1)
      {
        sub_1000079B4(v25, &unk_1007818E0, &qword_10063D348);
        sub_1000079B4(v27, &unk_100771B10, qword_10062E540);
      }

      else
      {
        v29 = *v60;
        v30 = v63;
        (*v60)(v63, v27, v28);
        sub_10000794C(v25 + *(v62 + 40), v24, &qword_100772140, &qword_10062D9F0);
        v31 = v65;
        if ((*v58)(v24, 1, v65) != 1)
        {
          v32 = v28;
          v33 = *v49;
          v34 = v53;
          v35 = v24;
          v36 = v31;
          (*v49)(v53, v35, v31);
          v57 = *v25;
          sub_1000079B4(v25, &unk_1007818E0, &qword_10063D348);
          v37 = v52;
          v38 = v51;
          v29(&v51[*(v52 + 36)], v30, v32);
          v33(&v38[*(v37 + 40)], v34, v36);
          *v38 = v57;
          sub_100016588(v38, v64, &qword_10076BC90, qword_10063D350);
          v39 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1005482C8(0, v39[2] + 1, 1, v39);
          }

          v23 = v59;
          v41 = v39[2];
          v40 = v39[3];
          v66 = v39;
          v7 = v50;
          if (v41 >= v40 >> 1)
          {
            v66 = sub_1005482C8((v40 > 1), v41 + 1, 1, v66);
          }

          v42 = v66;
          v66[2] = v41 + 1;
          sub_100016588(v64, v42 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, &qword_10076BC90, qword_10063D350);
          v25 = v55;
          v24 = v56;
          v22 = v61;
          goto LABEL_5;
        }

        (*v48)(v30, v28);
        sub_1000079B4(v25, &unk_1007818E0, &qword_10063D348);
        sub_1000079B4(v24, &qword_100772140, &qword_10062D9F0);
        v22 = v61;
        v23 = v59;
      }

      v7 = v27;
LABEL_5:
      v21 = v69 + v23;
      v19 = v70 - 1;
      if (v70 == 1)
      {

        if (v47)
        {
          v43 = v66;
          goto LABEL_17;
        }

        return v66;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
  if (v47)
  {
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1003B2F5C(v43);
    }

    v44 = v43[2];
    v71[0] = v43 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v71[1] = v44;
    sub_1003D6F6C(v71, &qword_10076BC90, qword_10063D350, sub_1000ED8C8);
  }

  return v43;
}

void sub_1003B60D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C8504();
  v16 = v15;
  v18 = v17;
  v38 = a2;
  v20 = sub_1000F4DB4(a2, v19);
  if (v20)
  {
    sub_1000C77E8(v20, v18 & 1, v14, v16, v9);

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v21 = *(v3 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v21 dropItem:v37 toRowAtIndexPath:isa];
      swift_unknownObjectRelease();

      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  else
  {

    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1000079B4(v9, &unk_100771B10, qword_10062E540);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100780BD0);
  v26 = v39;
  v25 = v40;
  v27 = v41;
  (*(v40 + 16))(v39, v38, v41);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = sub_1003DF088(&qword_10076B4F0, &type metadata accessor for TTRAccountsListsViewModel.Item, &unk_100646310);
    v33 = (*(v32 + 32))(v27, v32);
    v35 = v34;
    (*(v25 + 8))(v26, v27);
    v36 = sub_100004060(v33, v35, &v42);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Row for the given item doesn't exist. Make sure the item is added to the tree view first {item: %s}", v30, 0xCu);
    sub_100004758(v31);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }
}

void sub_1003B6584(uint64_t a1, char *a2)
{
  v37 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  v13 = sub_1000C84C8();
  v15 = v14;
  v17 = v16;
  v38 = a2;
  v19 = sub_1000F2C50(a2, v18);
  if (v19)
  {
    sub_1000C73C4(v19, v17 & 1, v13, v15, v8);

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v20 = *(v36 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v22 = [v20 dropItem:v37 toRowAtIndexPath:isa];
      swift_unknownObjectRelease();

      (*(v10 + 8))(v12, v9);
      return;
    }
  }

  else
  {

    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1000079B4(v8, &unk_100771B10, qword_10062E540);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003E30(v23, qword_100780BD0);
  v24 = v39;
  v25 = v40;
  v26 = *(v40 + 16);
  v26(v39, v38, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v29 = 136315138;
    v42 = v4;
    v43 = sub_1003DF088(&qword_100781080, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v30 = sub_1000317B8(v41);
    v26(v30, v24, v4);
    sub_10000C36C(v41, v42);
    v31 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v33 = v32;
    (*(v25 + 8))(v24, v4);
    sub_100004758(v41);
    v34 = sub_100004060(v31, v33, &v44);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Row for the given item doesn't exist. Make sure the item is added to the tree view first {item: %s}", v29, 0xCu);
    sub_100004758(v38);
  }

  else
  {

    (*(v25 + 8))(v24, v4);
  }
}

void sub_1003B6A6C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v45 = a1;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6;
  v22 = sub_1000C8504();
  v24 = v23;
  v26 = v25;
  v47 = a2;
  v28 = sub_1000F4DB4(a2, v27);
  if (v28)
  {
    sub_1000C77E8(v28, v26 & 1, v22, v24, v16);

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v29 = *(v21 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v31 = [v29 dropItem:v45 intoRowAtIndexPath:isa rect:{a3, a4, a5, a6}];
      swift_unknownObjectRelease();

      (*(v18 + 8))(v20, v17);
      return;
    }
  }

  else
  {

    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1000079B4(v16, &unk_100771B10, qword_10062E540);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100003E30(v32, qword_100780BD0);
  v33 = v48;
  v34 = v46;
  v35 = v49;
  (*(v48 + 16))(v46, v47, v49);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136315138;
    v40 = sub_1003DF088(&qword_10076B4F0, &type metadata accessor for TTRAccountsListsViewModel.Item, &unk_100646310);
    v41 = (*(v40 + 32))(v35, v40);
    v43 = v42;
    (*(v33 + 8))(v34, v35);
    v44 = sub_100004060(v41, v43, &v50);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Row for the given item doesn't exist. {item: %s}", v38, 0xCu);
    sub_100004758(v39);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }
}

void sub_1003B6F50(uint64_t a1, char *a2, double a3, double a4, double a5, double a6)
{
  v45 = a1;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  v21 = sub_1000C84C8();
  v23 = v22;
  v25 = v24;
  v46 = a2;
  v27 = sub_1000F2C50(a2, v26);
  if (v27)
  {
    sub_1000C73C4(v27, v25 & 1, v21, v23, v16);

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v28 = *(v44 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v30 = [v28 dropItem:v45 intoRowAtIndexPath:isa rect:{a3, a4, a5, a6}];
      swift_unknownObjectRelease();

      (*(v18 + 8))(v20, v17);
      return;
    }
  }

  else
  {

    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1000079B4(v16, &unk_100771B10, qword_10062E540);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003E30(v31, qword_100780BD0);
  v32 = v47;
  v33 = v48;
  v34 = *(v48 + 16);
  v34(v47, v46, v12);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v37 = 136315138;
    v50 = v12;
    v51 = sub_1003DF088(&qword_100781080, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v38 = sub_1000317B8(v49);
    v34(v38, v32, v12);
    sub_10000C36C(v49, v50);
    v39 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v41 = v40;
    (*(v33 + 8))(v32, v12);
    sub_100004758(v49);
    v42 = sub_100004060(v39, v41, &v52);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Row for the given item doesn't exist. {item: %s}", v37, 0xCu);
    sub_100004758(v46);
  }

  else
  {

    (*(v33 + 8))(v32, v12);
  }
}

void *sub_1003B74A4(uint64_t *a1, uint64_t *a2, void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v28 = a4;
  v26 = a1;
  v6 = sub_100058000(a1, a2);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v10 = &v22 - v9;
  v25 = v4;
  v11 = [*(v4 + qword_100780BE8) items];
  sub_100058000(&unk_100781900, &qword_10063D368);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_16;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v14 = v12;
      v30 = _swiftEmptyArrayStorage;
      result = (a3)(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        break;
      }

      v22 = a3;
      v16 = 0;
      a3 = 0;
      v12 = v30;
      v17 = v14;
      v23 = v14 & 0xFFFFFFFFFFFFFF8;
      v24 = v14 & 0xC000000000000001;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v24)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v23 + 16))
          {
            goto LABEL_15;
          }

          v19 = *(v17 + 8 * v16 + 32);
          swift_unknownObjectRetain();
        }

        v28(v19, v25, v29);
        swift_unknownObjectRelease();
        v30 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          v22(v20 > 1, v21 + 1, 1);
          v12 = v30;
        }

        *(v12 + 16) = v21 + 1;
        sub_100016588(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v26, v27);
        ++v16;
        v17 = v14;
        if (v18 == v13)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1003B772C(int a1)
{
  v3 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v3 - 8);
  v81 = v65 - v4;
  v83 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v67 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v65 - v7;
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  v90 = type metadata accessor for IndexPath();
  v11 = *(v90 - 8);
  __chkstk_darwin(v90);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100058000(&unk_1007819A0, &qword_10062FF50);
  v73 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v65 - v16;
  __chkstk_darwin(v17);
  v79 = v65 - v18;
  v82 = sub_100058000(&unk_10076BDA0, &unk_10063D3D0);
  v92 = *(v82 - 8);
  __chkstk_darwin(v82);
  v20 = (v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = (v65 - v23);
  v86 = v1;
  v25 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900, &qword_10063D368);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
LABEL_42:
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v13;
  v66 = a1;
  v87 = v10;
  v72 = v24;
  if (v27)
  {
    v28 = v26;
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A2198(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_44:
      v13 = sub_1003B2EBC(v13);
      goto LABEL_31;
    }

    v84 = v11;
    v13 = 0;
    a1 = 0;
    v26 = v93[0];
    v29 = v28;
    v11 = v28 & 0xC000000000000001;
    v85 = v28 & 0xFFFFFFFFFFFFFF8;
    v10 = v28;
    do
    {
      v30 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v11)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v85 + 16))
        {
          goto LABEL_41;
        }

        v31 = *&v29[8 * v13 + 32];
        swift_unknownObjectRetain();
      }

      sub_1003BFD84(v31, v86, v20);
      swift_unknownObjectRelease();
      v93[0] = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v24 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        sub_1004A2198((v32 > 1), v33 + 1, 1);
        v26 = v93[0];
      }

      *(v26 + 16) = v24;
      sub_100016588(v20, v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v33, &unk_10076BDA0, &unk_10063D3D0);
      ++v13;
      v29 = v10;
    }

    while (v30 != v27);

    v24 = v72;
    v11 = v84;
    v34 = *(v26 + 16);
    if (!v34)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage[2];
    if (!v34)
    {
LABEL_28:

      v13 = _swiftEmptyArrayStorage;
      v10 = v83;
      v54 = v66;
      goto LABEL_29;
    }
  }

  v65[1] = 0;
  v35 = v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v36 = (v11 + 48);
  v37 = *(v82 + 36);
  v77 = (v11 + 32);
  v85 = *(v92 + 72);
  v86 = v37;
  v75 = (v89 + 48);
  v69 = (v89 + 32);
  v68 = (v11 + 8);
  v84 = _swiftEmptyArrayStorage;
  v78 = (v11 + 48);
  v76 = v26;
  do
  {
    v92 = v34;
    sub_10000794C(v35, v24, &unk_10076BDA0, &unk_10063D3D0);
    v38 = v87;
    sub_10000794C(v24 + v86, v87, &unk_100771B10, qword_10062E540);
    v39 = v90;
    if ((*v36)(v38, 1, v90) == 1)
    {
      sub_1000079B4(v24, &unk_10076BDA0, &unk_10063D3D0);
      sub_1000079B4(v38, &unk_100771B10, qword_10062E540);
    }

    else
    {
      v40 = v24;
      v41 = *v77;
      v42 = v80;
      (*v77)(v80, v38, v39);
      v43 = v81;
      sub_10000794C(v40 + *(v82 + 40), v81, &unk_100771B40, &unk_10062FB70);
      v44 = v83;
      if ((*v75)(v43, 1, v83) == 1)
      {
        (*v68)(v42, v39);
        sub_1000079B4(v40, &unk_10076BDA0, &unk_10063D3D0);
        sub_1000079B4(v43, &unk_100771B40, &unk_10062FB70);
        v24 = v40;
        v36 = v78;
      }

      else
      {
        v45 = v43;
        v46 = *v69;
        v47 = v71;
        (*v69)(v71, v45, v44);
        v74 = *v40;
        sub_1000079B4(v40, &unk_10076BDA0, &unk_10063D3D0);
        v48 = v91;
        v49 = v70;
        v41(&v70[*(v91 + 36)], v42, v90);
        v46(&v49[*(v48 + 40)], v47, v44);
        *v49 = v74;
        sub_100016588(v49, v79, &unk_1007819A0, &qword_10062FF50);
        v50 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1005477E4(0, v50[2] + 1, 1, v50);
        }

        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = sub_1005477E4((v51 > 1), v52 + 1, 1, v50);
        }

        v50[2] = v52 + 1;
        v53 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v84 = v50;
        sub_100016588(v79, v50 + v53 + *(v73 + 72) * v52, &unk_1007819A0, &qword_10062FF50);
        v24 = v72;
        v36 = v78;
      }
    }

    v35 += v85;
    v34 = v92 - 1;
  }

  while (v92 != 1);

  v10 = v83;
  v13 = v84;
  v54 = v66;
LABEL_29:
  v11 = v67;
  if ((v54 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v55 = *(v13 + 16);
  v93[0] = v13 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v93[1] = v55;
  sub_1003D6F6C(v93, &unk_1007819A0, &qword_10062FF50, sub_1000ED8B4);
LABEL_32:
  v56 = *(v13 + 16);
  if (v56)
  {
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A2154(0, v56, 0);
    v57 = v93[0];
    v58 = *(v73 + 80);
    v84 = v13;
    v59 = v13 + ((v58 + 32) & ~v58);
    v92 = *(v73 + 72);
    v60 = (v89 + 16);
    v90 = v89 + 32;
    do
    {
      v61 = v88;
      sub_10000794C(v59, v88, &unk_1007819A0, &qword_10062FF50);
      (*v60)(v11, v61 + *(v91 + 40), v10);
      sub_1000079B4(v61, &unk_1007819A0, &qword_10062FF50);
      v93[0] = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1004A2154((v62 > 1), v63 + 1, 1);
        v57 = v93[0];
      }

      *(v57 + 16) = v63 + 1;
      (*(v89 + 32))(v57 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v63, v11, v10);
      v59 += v92;
      --v56;
    }

    while (v56);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v57;
}

void *sub_1003B823C(int a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v81 = v65 - v4;
  v83 = type metadata accessor for TTRRemindersListViewModel.Item();
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v67 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v65 - v7;
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  v90 = type metadata accessor for IndexPath();
  v11 = *(v90 - 8);
  __chkstk_darwin(v90);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100058000(&qword_10076BC90, qword_10063D350);
  v73 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v65 - v16;
  __chkstk_darwin(v17);
  v79 = v65 - v18;
  v82 = sub_100058000(&unk_1007818E0, &qword_10063D348);
  v92 = *(v82 - 8);
  __chkstk_darwin(v82);
  v20 = (v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = (v65 - v23);
  v86 = v1;
  v25 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900, &qword_10063D368);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
LABEL_42:
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v13;
  v66 = a1;
  v87 = v10;
  v72 = v24;
  if (v27)
  {
    v28 = v26;
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A24F0(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_44:
      v13 = sub_1003B2F5C(v13);
      goto LABEL_31;
    }

    v84 = v11;
    v13 = 0;
    a1 = 0;
    v26 = v93[0];
    v29 = v28;
    v11 = v28 & 0xC000000000000001;
    v85 = v28 & 0xFFFFFFFFFFFFFF8;
    v10 = v28;
    do
    {
      v30 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v11)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v85 + 16))
        {
          goto LABEL_41;
        }

        v31 = *&v29[8 * v13 + 32];
        swift_unknownObjectRetain();
      }

      sub_1003C02F0(v31, v86, v20);
      swift_unknownObjectRelease();
      v93[0] = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v24 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        sub_1004A24F0((v32 > 1), v33 + 1, 1);
        v26 = v93[0];
      }

      *(v26 + 16) = v24;
      sub_100016588(v20, v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v33, &unk_1007818E0, &qword_10063D348);
      ++v13;
      v29 = v10;
    }

    while (v30 != v27);

    v24 = v72;
    v11 = v84;
    v34 = *(v26 + 16);
    if (!v34)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage[2];
    if (!v34)
    {
LABEL_28:

      v13 = _swiftEmptyArrayStorage;
      v10 = v83;
      v54 = v66;
      goto LABEL_29;
    }
  }

  v65[1] = 0;
  v35 = v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v36 = (v11 + 48);
  v37 = *(v82 + 36);
  v77 = (v11 + 32);
  v85 = *(v92 + 72);
  v86 = v37;
  v75 = (v89 + 48);
  v69 = (v89 + 32);
  v68 = (v11 + 8);
  v84 = _swiftEmptyArrayStorage;
  v78 = (v11 + 48);
  v76 = v26;
  do
  {
    v92 = v34;
    sub_10000794C(v35, v24, &unk_1007818E0, &qword_10063D348);
    v38 = v87;
    sub_10000794C(v24 + v86, v87, &unk_100771B10, qword_10062E540);
    v39 = v90;
    if ((*v36)(v38, 1, v90) == 1)
    {
      sub_1000079B4(v24, &unk_1007818E0, &qword_10063D348);
      sub_1000079B4(v38, &unk_100771B10, qword_10062E540);
    }

    else
    {
      v40 = v24;
      v41 = *v77;
      v42 = v80;
      (*v77)(v80, v38, v39);
      v43 = v81;
      sub_10000794C(v40 + *(v82 + 40), v81, &qword_100772140, &qword_10062D9F0);
      v44 = v83;
      if ((*v75)(v43, 1, v83) == 1)
      {
        (*v68)(v42, v39);
        sub_1000079B4(v40, &unk_1007818E0, &qword_10063D348);
        sub_1000079B4(v43, &qword_100772140, &qword_10062D9F0);
        v24 = v40;
        v36 = v78;
      }

      else
      {
        v45 = v43;
        v46 = *v69;
        v47 = v71;
        (*v69)(v71, v45, v44);
        v74 = *v40;
        sub_1000079B4(v40, &unk_1007818E0, &qword_10063D348);
        v48 = v91;
        v49 = v70;
        v41(&v70[*(v91 + 36)], v42, v90);
        v46(&v49[*(v48 + 40)], v47, v44);
        *v49 = v74;
        sub_100016588(v49, v79, &qword_10076BC90, qword_10063D350);
        v50 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1005482C8(0, v50[2] + 1, 1, v50);
        }

        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = sub_1005482C8((v51 > 1), v52 + 1, 1, v50);
        }

        v50[2] = v52 + 1;
        v53 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v84 = v50;
        sub_100016588(v79, v50 + v53 + *(v73 + 72) * v52, &qword_10076BC90, qword_10063D350);
        v24 = v72;
        v36 = v78;
      }
    }

    v35 += v85;
    v34 = v92 - 1;
  }

  while (v92 != 1);

  v10 = v83;
  v13 = v84;
  v54 = v66;
LABEL_29:
  v11 = v67;
  if ((v54 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v55 = *(v13 + 16);
  v93[0] = v13 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v93[1] = v55;
  sub_1003D6F6C(v93, &qword_10076BC90, qword_10063D350, sub_1000ED8C8);
LABEL_32:
  v56 = *(v13 + 16);
  if (v56)
  {
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v56, 0);
    v57 = v93[0];
    v58 = *(v73 + 80);
    v84 = v13;
    v59 = v13 + ((v58 + 32) & ~v58);
    v92 = *(v73 + 72);
    v60 = (v89 + 16);
    v90 = v89 + 32;
    do
    {
      v61 = v88;
      sub_10000794C(v59, v88, &qword_10076BC90, qword_10063D350);
      (*v60)(v11, v61 + *(v91 + 40), v10);
      sub_1000079B4(v61, &qword_10076BC90, qword_10063D350);
      v93[0] = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1004A1C48((v62 > 1), v63 + 1, 1);
        v57 = v93[0];
      }

      *(v57 + 16) = v63 + 1;
      (*(v89 + 32))(v57 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v63, v11, v10);
      v59 += v92;
      --v56;
    }

    while (v56);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v57;
}

void sub_1003B8D4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

  v8 = Strong;
  v9 = [Strong view];
  if (v9)
  {
    v4 = v9;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002EC064(a2, a3);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003B8E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 104))(v7, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v4);
    TTRRemindersListItemStateTracker.fullfil(_:of:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B8F84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100058000(&qword_10076B850, &qword_10062FBE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMHashtagLabelSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = Strong;
  v16 = [Strong view];
  if (!v16)
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = v16;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1002EFA60(a3);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(0);
    if (swift_dynamicCastClass())
    {
      v18 = a2;
      static REMHashtagLabelSpecifier.empty.getter();
      sub_1002EA7D4(v9);
      v19 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
      if ((*(*(v19 - 8) + 48))(v9, 1, v19) == 1)
      {
        sub_1000079B4(v9, &qword_10076B850, &qword_10062FBE8);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        (*(v11 + 8))(v13, v10);
        v20 = sub_100058000(&qword_10076B858, &unk_10062FBF0);
        (*(v11 + 32))(v13, &v9[*(v20 + 48)], v10);
        v21 = type metadata accessor for TTRAccountsListsViewModel.Item();
        (*(*(v21 - 8) + 8))(v9, v21);
      }

      else
      {
        sub_1003DEF7C(v9, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
      }

      sub_100399C20(v13);

      (*(v11 + 8))(v13, v10);
    }
  }
}

void sub_1003B92F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B9350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10042BF78(a2);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003B93C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000B939C(a2);
    v7 = v6;

    return ((v7 >> 8) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003B942C(uint64_t a1, uint64_t (**a2)(char *, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1003CCB6C(a1, a2);

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003B94A8@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1000B939C(a1);
    v8 = v7;

    v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v10 = *(v9 - 8);
    if (v8)
    {
      (*(*(v9 - 8) + 16))(a3, a1, v9);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    return (*(v10 + 56))(a3, v11, 1, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B95A0(uint64_t a1@<X0>, uint64_t (**a2)(char *, uint64_t)@<X1>, uint64_t x8_0@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1003CCD88(a1, a2, x8_0);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003B961C@<X0>(uint64_t a1@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v8 = a3(0);
    v9 = *(v8 - 8);
    (*(v9 + 16))(a4, a1, v8);
    return (*(v9 + 56))(a4, 0, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B96F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000BA1D8(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B976C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

  v6 = Strong;
  v7 = [Strong view];
  if (v7)
  {
    v3 = v7;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002ED9A4(a2, 0);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003B9864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1003CD2A0(a1, a2, a4);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003B98E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10000794C(result + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_lastAppliedSelection, v5, &unk_10076B7C0, &unk_10062FBA0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_1000079B4(v5, &unk_10076B7C0, &unk_10062FBA0);
    }

    else
    {
      sub_1003DEF14(v5, v9, type metadata accessor for TTRIAccountsListsSelection);
      sub_1000B551C(v9, 0, 0);

      return sub_1003DEF7C(v9, type metadata accessor for TTRIAccountsListsSelection);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B9ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a2, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v5 + 96))(v7, v4);
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 8))(v7, v11);
LABEL_9:

      return;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.account(_:) || (v10 != enum case for TTRAccountsListsViewModel.Item.list(_:) ? (v12 = v10 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:)) : (v12 = 1), !v12 ? (v13 = v10 == enum case for TTRAccountsListsViewModel.Item.group(_:)) : (v13 = 1), v13 || v10 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:)))
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_9;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100782E90);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    v16 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v15, v16);
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003B9E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003B9E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10000C36C(&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24]);
    v7 = *(*v6 + 72);
    v8 = *(*v6 + 80);
    sub_10000C36C((*v6 + 48), v7);
    (*(v8 + 8))(v7, v8);
    v10 = sub_10025C730(a2, v9);

    __chkstk_darwin(v11);
    v14[2] = v5;
    v14[3] = a2;
    sub_100399264(sub_1003DE828, v14, v10);

    sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [objc_opt_self() configurationWithActions:isa];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a4(a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BA08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a2, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v5 + 96))(v7, v4);
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 8))(v7, v11);
LABEL_9:

      return;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.account(_:) || (v10 != enum case for TTRAccountsListsViewModel.Item.list(_:) ? (v12 = v10 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:)) : (v12 = 1), !v12 ? (v13 = v10 == enum case for TTRAccountsListsViewModel.Item.group(_:)) : (v13 = 1), v13 || v10 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:)))
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_9;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100782E90);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    v16 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v15, v16);
    __break(1u);
  }

  __break(1u);
}

void *sub_1003BA40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    result = *(a1 + qword_10078A540);
    if (result)
    {
      v7 = sub_10042122C(a2, [result isEditing]);

      return (v7 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003BA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BA504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000B021C();
    sub_1000B7230(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BA564(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 0;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BA5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_10000794C(a4, a1, a7, a8);
    return a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BA64C@<X0>(uint64_t a1@<X3>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v6 = *(a1 + 16);
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v8 = *(v7 - 8);
    if (v6)
    {
      (*(*(v7 - 8) + 16))(a3, a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v7);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    return (*(v8 + 56))(a3, v9, 1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BA744@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a2)
  {
LABEL_3:
    v10 = sub_10041F1C4(0, a3);
    v11 = v10[2];
    if (v11)
    {
      v12 = v11 - 1;
      v13 = v10;
      v14 = type metadata accessor for TTRRemindersListViewModel.Item();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a5, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v14);

      return (*(v15 + 56))(a5, 0, 1, v14);
    }

LABEL_9:

    goto LABEL_11;
  }

  v16 = sub_10041F1C4(0, a1)[2];

  v17 = sub_10041F1C4(1, a1)[2];

  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if (!v17)
  {
    v18 = sub_10041F1C4(0, a3);
    if (v18[2])
    {
      v19 = v18;
      v20 = type metadata accessor for TTRRemindersListViewModel.Item();
      v21 = *(v20 - 8);
      (*(v21 + 16))(a5, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

      return (*(v21 + 56))(a5, 0, 1, v20);
    }

    goto LABEL_9;
  }

LABEL_11:
  v22 = type metadata accessor for TTRRemindersListViewModel.Item();
  return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
}

void *sub_1003BA9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BAA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BAAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = &result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
    v7 = *(v5 + 3);
    v6 = *(v5 + 4);
    sub_10000C36C(v5, v7);
    LOBYTE(v6) = (*(*(v6 + 8) + 304))(v7);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BABAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAC20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAC70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_100069648();

  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
      v6 = v5;
    }

    else
    {
      v6 = v3;
      v3 = v5;
    }
  }
}

void *sub_1003BAD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_10043CD94(a2);
    v7 = v6;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BADCC(char *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1003CD6A0(a1, a2, a4, a5);
    v12 = v11;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v9 = v8[3];
    v10 = v8[4];
    sub_10000C36C(v8, v9);
    (*(*(v10 + 8) + 848))(a2, a3, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
    swift_beginAccess();
    sub_10000D184(v6, v8 + v10, &qword_100772140, &qword_10062D9F0);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BB088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000FA02C(a2);
    v7 = v6;

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB0F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BB144(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BB21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

_BYTE *sub_1003BB274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1000FA380(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BB2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1003CE350(a1, a2, a3);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB378(uint64_t a1)
{
  v2 = v1;
  *(v1 + qword_100771740) = a1;

  v4 = *(v1 + qword_100771730);
  if (a1)
  {
    v5 = *(a1 + 16);

    v6 = v5(v4);

    if (v6)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = v4;
    v7 = 0;
  }

  [v4 setDataSource:v7];

  v9 = v2 + qword_100771760;
  v10 = *(v2 + qword_100771760);
  v11 = *(v2 + qword_100771760 + 8);
  v12 = *(v2 + qword_100771760 + 16);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  return sub_100100898(v10, v11, v12);
}

void sub_1003BB454(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void, void, uint64_t, uint64_t, __n128))
{
  v11 = v6;
  v14 = (v11 + qword_100771778);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  *v14 = a1;
  if (a2)
  {
    v22 = a6;
    v17 = qword_100771788;
    *(v11 + qword_100771788) = 0;
    if (*(v16 + 16) <= *(a1 + 16) >> 3)
    {
      swift_bridgeObjectRetain_n();

      a4(v16);
      v18 = a1;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v18 = a3(v16, a1);
    }

    if (*(v15 + 16) <= *(v18 + 16) >> 3)
    {
      a4(v15);
    }

    else
    {
      (a3)(v15);
    }

    if (*(a1 + 16) <= *(v16 + 16) >> 3)
    {
      a4(a1);
      v19 = v16;
    }

    else
    {
      v19 = a3(a1, v16);
    }

    if (*(v15 + 16) <= *(v19 + 16) >> 3)
    {
      a4(v15);
    }

    else
    {
      (a3)(v15);
    }

    v21 = __chkstk_darwin(v20);
    v22(0, 0, 0, 0, v11, a5, v21);

    *(v11 + v17) = 1;
  }

  else
  {
  }
}

double sub_1003BB6A0()
{
  v1 = v0;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&unk_100781750, &qword_100632C80);
  sub_10000E188(&qword_100770088, &unk_100781750, &qword_100632C80, &protocol conformance descriptor for AnyPublisher<A, B>);
  v2 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v2;

  return result;
}

double sub_1003BB7D8()
{
  v1 = v0;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100781990, &qword_10063D3C8);
  sub_10000E188(&qword_100781998, &qword_100781990, &qword_10063D3C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v2 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v2;

  return result;
}

id sub_1003BB910(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_100771708] = 0;
  *&v2[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_100771720;
  sub_100058000(&unk_100781770, &unk_10063D230);
  swift_allocObject();
  v16 = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
  sub_100058000(&unk_1007809C0, &qword_10063C760);
  swift_allocObject();
  sub_10000E188(&unk_100781780, &unk_100781770, &unk_10063D230, &protocol conformance descriptor for TTRTreeViewCollapsedStatesInMemoryPersistence<A>);
  *&v2[v7] = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  *&v2[qword_100771740] = 0;
  *&v2[qword_100771748] = 0;
  *&v2[qword_100771750] = 0;
  *&v2[qword_100771758] = 0;
  v8 = &v2[qword_100771760];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[24] = 0;
  *(v8 + 2) = 0;
  v2[qword_100771768] = 0;
  *&v2[qword_100771770] = 0;
  v9 = &v2[qword_100771778];
  *v9 = &_swiftEmptySetSingleton;
  *(v9 + 1) = &_swiftEmptySetSingleton;
  *&v2[qword_100771780] = &_swiftEmptySetSingleton;
  v2[qword_100771788] = 1;
  *&v2[qword_100771790] = 0;
  v10 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v2[qword_100771730] = a2;
  v11 = &v2[qword_100771738];
  *(v11 + 3) = sub_100003540(0, &qword_100771B60, UITableView_ptr);
  *(v11 + 4) = &off_1007320F8;
  *v11 = a2;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1003BB6A0();

  return v13;
}

id sub_1003BBBAC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_100771708] = 0;
  *&v2[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_100771720;
  sub_100058000(&unk_1007819C8, &qword_10063D3E8);
  swift_allocObject();
  v16 = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
  sub_100058000(&qword_10076BD60, &unk_10063D3F0);
  swift_allocObject();
  sub_10000E188(&qword_1007819D8, &unk_1007819C8, &qword_10063D3E8, &protocol conformance descriptor for TTRTreeViewCollapsedStatesInMemoryPersistence<A>);
  *&v2[v7] = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  *&v2[qword_100771740] = 0;
  *&v2[qword_100771748] = 0;
  *&v2[qword_100771750] = 0;
  *&v2[qword_100771758] = 0;
  v8 = &v2[qword_100771760];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[24] = 0;
  *(v8 + 2) = 0;
  v2[qword_100771768] = 0;
  *&v2[qword_100771770] = 0;
  v9 = &v2[qword_100771778];
  *v9 = &_swiftEmptySetSingleton;
  *(v9 + 1) = &_swiftEmptySetSingleton;
  *&v2[qword_100771780] = &_swiftEmptySetSingleton;
  v2[qword_100771788] = 1;
  *&v2[qword_100771790] = 0;
  v10 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v2[qword_100771730] = a2;
  v11 = &v2[qword_100771738];
  *(v11 + 3) = sub_100003540(0, &qword_100771B60, UITableView_ptr);
  *(v11 + 4) = &off_1007320F8;
  *v11 = a2;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1003BB7D8();

  return v13;
}

id sub_1003BBE4C()
{
  *(v0 + qword_100771740) = 0;

  v1 = qword_100771730;
  [*(v0 + qword_100771730) setDataSource:0];
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  v4 = *(v0 + qword_100771760 + 8);
  v5 = *(v0 + qword_100771760 + 16);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_100100898(v3, v4, v5);
  *(v0 + qword_100771748) = 0;

  *(v0 + qword_100771750) = 0;

  [*(v0 + v1) setPrefetchDataSource:0];
  *(v0 + qword_100771758) = 0;

  [*(v0 + v1) setDelegate:0];
  v6 = qword_100771708;
  v7 = *(v0 + qword_100771708);
  *(v0 + qword_100771708) = 0;

  if (*(v0 + v6))
  {
    swift_unknownObjectWeakAssign();
    v8 = *(v0 + v6);
  }

  else
  {
    v8 = 0;
  }

  [*(v0 + v1) setDragDelegate:v8];
  v9 = qword_100771710;
  v10 = *(v0 + qword_100771710);
  *(v0 + qword_100771710) = 0;

  if (*(v0 + v9))
  {
    swift_unknownObjectWeakAssign();
    v11 = *(v0 + v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + v1);

  return [v12 setDropDelegate:v11];
}

uint64_t sub_1003BC088(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  (a2)();
  v10 = a3(a1);

  if (!v10)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v20 = (a2)();
    v21 = a4(v10, v20);

    if (v21)
    {
      a2(v22);
      v24 = v23;
      if (*(v23 + 16))
      {
        v25 = a5(v10);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);

          return v27;
        }
      }

LABEL_24:
    }

    else
    {
    }

    return 0;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = *(v12 + 64);
  if (v13 >> 62)
  {
LABEL_29:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {

      goto LABEL_24;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = v15;
      v18 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
      v19 = *(v10 + 16);
      swift_unknownObjectRelease();
      v15 = v17;
      if (v18 == v19)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v13 + 8 * v15 + 32) + 16) == *(v10 + 16))
    {
      break;
    }

LABEL_10:
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_28;
    }
  }

  v17 = v15;
LABEL_21:

  return v17;
}

uint64_t sub_1003BC308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v13, &qword_100772140, &qword_10062D9F0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v49 = a1;
    (*(v15 + 32))(v17, v13, v14);
    v26 = v3;
    sub_1000C84C8();
    a2 = sub_1000F2C50(v17, v27);

    if (!a2)
    {
LABEL_9:
      (*(v15 + 8))(v17, v14);
      v23 = *(v15 + 56);
      v24 = v53;
      v25 = 1;
      return v23(v24, v25, 1, v14);
    }

    v28 = qword_1007A84C0;
    swift_beginAccess();
    v29 = v51;
    v30 = a2 + v28;
    v31 = v52;
    (*(v51 + 16))(v8, v30, v52);
    v32 = (*(v29 + 88))(v8, v31);
    if (v32 != enum case for TTRITreeViewExpandedState.notExpandable(_:))
    {
      if (v32 != enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        if (v32 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          goto LABEL_32;
        }

        swift_beginAccess();
        v41 = *(a2 + 64);
        if (!(v41 >> 62))
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_19;
        }

LABEL_28:
        v42 = _CocoaArrayWrapper.endIndex.getter();
        if ((v42 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_19:
        v43 = v49;
        if ((v49 & 0x8000000000000000) == 0 && v42 > v49)
        {
          swift_beginAccess();
          v44 = *(a2 + 64);
          if ((v44 & 0xC000000000000001) != 0)
          {
LABEL_30:
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_24;
          }

          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) > v43)
          {
            v45 = *(v44 + 8 * v43 + 32);

LABEL_24:
            swift_endAccess();

            (*(v15 + 8))(v17, v14);
            v46 = *(*v45 + 144);
            swift_beginAccess();
            v47 = v45 + v46;
            v48 = v53;
            (*(v15 + 16))(v53, v47, v14);

            v23 = *(v15 + 56);
            v24 = v48;
            goto LABEL_5;
          }

          __break(1u);
LABEL_32:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        goto LABEL_8;
      }

      v34 = *(v26 + qword_100771740);
      if (v34)
      {
        v35 = *(v34 + 16);

        if (v35(v36))
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          v38 = v50;
          (*(v15 + 16))(v50, v17, v14);
          v52 = v17;
          v39 = *(v15 + 56);
          v39(v38, 0, 1, v14);
          v40 = v53;
          (*(v34 + 48))(Strong, v49, v38);

          sub_1000079B4(v38, &qword_100772140, &qword_10062D9F0);
          (*(v15 + 8))(v52, v14);

          return (v39)(v40, 0, 1, v14);
        }
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
  v18 = sub_1000C84C8();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(v18 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(v18 + 16 * a1 + 32);

  v20 = *(*v19 + 144);
  swift_beginAccess();
  v21 = v19 + v20;
  v22 = v53;
  (*(v15 + 16))(v53, v21, v14);

  v23 = *(v15 + 56);
  v24 = v22;
LABEL_5:
  v25 = 0;
  return v23(v24, v25, 1, v14);
}

uint64_t sub_1003BC960(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v10, &unk_100771B40, &unk_10062FB70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &unk_100771B40, &unk_10062FB70);
    v15 = sub_1000C8504();

    v16 = *(v15 + 16);

    return v16;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = v1;
  sub_1000C8504();
  v19 = sub_1000F4DB4(v14, v18);

  if (!v19)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v20 = v14;
  v21 = qword_1007A84C0;
  swift_beginAccess();
  v22 = v33;
  (*(v33 + 16))(v5, &v19[v21], v3);
  v23 = (*(v22 + 88))(v5, v3);
  if (v23 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v12 + 8))(v20, v11);
    return 0;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v24 = *(v17 + qword_100771740);
    if (v24)
    {
      v25 = *(v24 + 16);

      if (v25(v26))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v28 = *(*v19 + 144);
        swift_beginAccess();
        v29 = v32;
        (*(v12 + 16))(v32, &v19[v28], v11);
        (*(v12 + 56))(v29, 0, 1, v11);
        v16 = (*(v24 + 32))(Strong, v29);

        sub_1000079B4(v29, &unk_100771B40, &unk_10062FB70);
        (*(v12 + 8))(v20, v11);

        return v16;
      }
    }

    goto LABEL_5;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v30 = *(v19 + 8);
    if (v30 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    (*(v12 + 8))(v20, v11);
    return v16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003BCE6C(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v10, &qword_100772140, &qword_10062D9F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
    v15 = sub_1000C84C8();

    v16 = *(v15 + 16);

    return v16;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = v1;
  sub_1000C84C8();
  v19 = sub_1000F2C50(v14, v18);

  if (!v19)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v20 = v14;
  v21 = qword_1007A84C0;
  swift_beginAccess();
  v22 = v33;
  (*(v33 + 16))(v5, &v19[v21], v3);
  v23 = (*(v22 + 88))(v5, v3);
  if (v23 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v12 + 8))(v20, v11);
    return 0;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v24 = *(v17 + qword_100771740);
    if (v24)
    {
      v25 = *(v24 + 16);

      if (v25(v26))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v28 = *(*v19 + 144);
        swift_beginAccess();
        v29 = v32;
        (*(v12 + 16))(v32, &v19[v28], v11);
        (*(v12 + 56))(v29, 0, 1, v11);
        v16 = (*(v24 + 32))(Strong, v29);

        sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
        (*(v12 + 8))(v20, v11);

        return v16;
      }
    }

    goto LABEL_5;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v30 = *(v19 + 8);
    if (v30 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    (*(v12 + 8))(v20, v11);
    return v16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1003BD378()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v34 - v7;
  v8 = type metadata accessor for IndexPath();
  v50 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v0 + qword_100771730) indexPathsForVisibleRows];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *(v14 + 16);
  if (!v48)
  {
LABEL_33:

    return;
  }

  v15 = 0;
  v47 = v50 + 16;
  v35 = (v39 + 16);
  v43 = (v50 + 8);
  v44 = (v39 + 56);
  v41 = (v39 + 32);
  v42 = (v39 + 48);
  v16 = _swiftEmptyArrayStorage;
  v40 = v3;
  v36 = v0;
  v37 = v11;
  v45 = v14;
  v46 = v4;
  while (v15 < *(v14 + 16))
  {
    v51 = v16;
    (*(v50 + 16))(v11, v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v15, v8);
    v17 = sub_1000C84C8();
    v18 = *(v17 + 16);
    v19 = IndexPath.section.getter();
    if (v19 < 0 || v19 >= v18)
    {

LABEL_22:

      v28 = 1;
      v27 = v46;
      goto LABEL_23;
    }

    v20 = IndexPath.section.getter();
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (v20 >= *(v17 + 16))
    {
      goto LABEL_36;
    }

    v21 = *(v17 + 16 * v20 + 40);
    if (v21 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (v33 < 0)
      {
        goto LABEL_37;
      }

      v22 = v33;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = IndexPath.row.getter();
    if ((v23 & 0x8000000000000000) != 0 || v23 >= v22)
    {

      v3 = v40;
      goto LABEL_22;
    }

    v24 = IndexPath.row.getter();
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v25 = *(v21 + 8 * v24 + 32);
    }

    v26 = *(*v25 + 144);
    swift_beginAccess();
    v3 = v40;
    v27 = v46;
    (*v35)(v40, v25 + v26, v46);

    v28 = 0;
LABEL_23:
    v14 = v45;
    v16 = v51;
    (*v44)(v3, v28, 1, v27);
    (*v43)(v11, v8);
    if ((*v42)(v3, 1, v27) == 1)
    {
      sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      v29 = *v41;
      v30 = v38;
      (*v41)(v38, v3, v27);
      v29(v49, v30, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100547094(0, v16[2] + 1, 1, v16);
      }

      v32 = v16[2];
      v31 = v16[3];
      if (v32 >= v31 >> 1)
      {
        v16 = sub_100547094((v31 > 1), v32 + 1, 1, v16);
      }

      v11 = v37;
      v16[2] = v32 + 1;
      v29(v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32, v49, v27);
      v3 = v40;
    }

    if (v48 == ++v15)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void *sub_1003BD960(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C84C8();
  v10 = sub_1000F2C50(a1, v9);

  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = sub_1000C84C8();
  sub_1000C7C0C(v10, v11, v13, v14, v12 & 1, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
    return _swiftEmptyArrayStorage;
  }

  result = (*(v6 + 32))(v8, v4, v5);
  if (*(v10 + 48) == 1)
  {
    v21 = 0;
    result = sub_10023C598(v10, &v21);
    v16 = v21;
    *(v10 + 40) = v21;
    *(v10 + 48) = 0;
  }

  else
  {
    v16 = *(v10 + 40);
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v20 - 2) = v8;
    sub_1003996D0(sub_1003DF120, (&v20 - 4), 0, v17);
    v19 = v18;

    (*(v6 + 8))(v8, v5);
    return v19;
  }

  return result;
}

void sub_1003BDC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void, void, uint64_t, uint64_t, __n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_1007716F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "TTRITreeViewTableAdapter: updating for collapsed states change", v16, 2u);
    }

    sub_1003BB454(a1, 1, a3, a4, a5, a6);
  }
}

void sub_1003BDD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, __n128), uint64_t (*a6)(uint64_t), uint64_t (*a7)(char *), uint64_t (*a8)(uint64_t, uint64_t, BOOL, uint64_t), void (*a9)(char *, uint64_t), void (*a10)(char *, uint64_t))
{
  v124 = a8;
  v133 = a7;
  v140 = a6;
  v141 = a2;
  v128 = a3;
  v115 = a10;
  v118 = a9;
  v123 = a4(0);
  v12 = *(v123 - 8);
  __chkstk_darwin(v123);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v113 - v15;
  __chkstk_darwin(v16);
  v117 = &v113 - v17;
  v19 = __chkstk_darwin(v18);
  v116 = &v113 - v20;
  v21 = a5(0, v19);
  __chkstk_darwin(v21);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v129 = &v113 - v25;
  __chkstk_darwin(v26);
  v28 = &v113 - v27;
  __chkstk_darwin(v29);
  v130 = &v113 - v31;
  v32 = a1 + 56;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 56);
  v36 = (v33 + 63) >> 6;
  v137 = v30 + 32;
  v138 = v30 + 16;
  v122 = (v12 + 16);
  v121 = (v12 + 32);
  v120 = (v12 + 8);
  v139 = v30;
  v136 = (v30 + 8);

  v37 = 0;
  v134 = v21;
  v135 = v23;
  v131 = v28;
  v126 = a1;
  if (v35)
  {
    while (1)
    {
LABEL_8:
      v39 = v139;
      v40 = v130;
      (*(v139 + 16))(v130, *(a1 + 48) + *(v139 + 72) * (__clz(__rbit64(v35)) | (v37 << 6)), v21);
      v41 = (*(v39 + 32))(v28, v40, v21);
      v42 = v140(v41);
      v44 = v43;
      v46 = v45;
      if (*(v43 + 16) && (v132 = v42, v47 = v133(v28), (v48 & 1) != 0))
      {
        v127 = v46;
        v49 = *(*(v44 + 56) + 8 * v47);
        v50 = v49 & 0xC000000000000001;
        if ((v49 & 0xC000000000000001) != 0)
        {
          v125 = v49 & 0xC000000000000001;
          v51 = __CocoaSet.startIndex.getter();
          v53 = v52;
          v54 = __CocoaSet.endIndex.getter();
          v56 = v55;
          LODWORD(v119) = static __CocoaSet.Index.== infix(_:_:)();

          v57 = v54;
          v50 = v125;
          sub_10000FBA0(v57, v56, 1);
          if ((v119 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v58 = 0;
          v59 = (v49 + 56);
          v51 = 1 << *(v49 + 32);
          v60 = (v51 + 63) >> 6;
          while (1)
          {
            v62 = *v59++;
            v61 = v62;
            if (v62)
            {
              break;
            }

            v58 -= 64;
            if (!--v60)
            {
              v53 = *(v49 + 36);

              goto LABEL_21;
            }
          }

          v125 = v49 & 0xC000000000000001;
          v63 = __clz(__rbit64(v61));
          v119 = v51;
          v53 = *(v49 + 36);

          if (v63 - v51 != v58)
          {
            v51 = v63 - v58;
            v50 = v125;
LABEL_26:
            v64 = v50 != 0;
            v65 = v124(v51, v53, v50 != 0, v49);
            sub_10000FBA0(v51, v53, v64);

            v66 = *(*v65 + 144);
            swift_beginAccess();
            v67 = v65 + v66;
            v68 = v117;
            v69 = v123;
            (*v122)(v117, v67, v123);

            v70 = v116;
            (*v121)(v116, v68, v69);
            v118(v70, 5);
            (*v120)(v70, v69);
            v21 = v134;
            v23 = v135;
            a1 = v126;
            goto LABEL_23;
          }

          v50 = v125;
          v51 = v119;
        }

LABEL_21:
        sub_10000FBA0(v51, v53, v50 != 0);

        v21 = v134;
        a1 = v126;
      }

      else
      {
      }

      v23 = v135;
LABEL_23:
      v35 &= v35 - 1;
      v28 = v131;
      (*v136)(v131, v21);
      if (!v35)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_8;
    }
  }

  v71 = v128;
  v72 = v128 + 56;
  v73 = 1 << *(v128 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v128 + 56);
  v76 = (v73 + 63) >> 6;

  v77 = 0;
  while (v75)
  {
LABEL_34:
    v79 = v139;
    v80 = v129;
    (*(v139 + 16))(v129, *(v71 + 48) + *(v139 + 72) * (__clz(__rbit64(v75)) | (v77 << 6)), v21);
    v81 = (*(v79 + 32))(v23, v80, v21);
    v82 = v140(v81);
    v84 = v83;
    v86 = v85;
    if (*(v83 + 16) && (v87 = v133(v23), (v88 & 1) != 0))
    {
      v89 = *(*(v84 + 56) + 8 * v87);
      v90 = v89 & 0xC000000000000001;
      v131 = v86;
      v132 = v82;
      if ((v89 & 0xC000000000000001) != 0)
      {
        v91 = __CocoaSet.startIndex.getter();
        v93 = v92;
        v94 = __CocoaSet.endIndex.getter();
        v130 = (v89 & 0xC000000000000001);
        v96 = v95;
        LODWORD(v127) = static __CocoaSet.Index.== infix(_:_:)();

        v97 = v96;
        v90 = v130;
        sub_10000FBA0(v94, v97, 1);
        if ((v127 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v98 = 0;
        v99 = (v89 + 56);
        v100 = 1 << *(v89 + 32);
        v101 = (v100 + 63) >> 6;
        while (1)
        {
          v103 = *v99++;
          v102 = v103;
          if (v103)
          {
            break;
          }

          v98 -= 64;
          if (!--v101)
          {
            v93 = *(v89 + 36);
            v91 = 1 << *(v89 + 32);

            goto LABEL_46;
          }
        }

        v130 = (v89 & 0xC000000000000001);
        v104 = __clz(__rbit64(v102));
        v127 = v100;
        v105 = v104 - v100;
        v93 = *(v89 + 36);

        if (v105 != v98)
        {
          v91 = v104 - v98;
          v90 = v130;
LABEL_51:
          v106 = v90 != 0;
          v107 = v124(v91, v93, v90 != 0, v89);
          sub_10000FBA0(v91, v93, v106);

          v108 = *(*v107 + 144);
          swift_beginAccess();
          v109 = v107 + v108;
          v110 = v114;
          v111 = v123;
          (*v122)(v114, v109, v123);

          v112 = v113;
          (*v121)(v113, v110, v111);
          v115(v112, 5);
          (*v120)(v112, v111);
          v71 = v128;
          v21 = v134;
          v23 = v135;
          goto LABEL_48;
        }

        v90 = v130;
        v91 = v127;
      }

LABEL_46:
      sub_10000FBA0(v91, v93, v90 != 0);

      v71 = v128;
      v23 = v135;
    }

    else
    {
    }

    v21 = v134;
LABEL_48:
    v75 &= v75 - 1;
    (*v136)(v23, v21);
  }

  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v76)
    {

      return;
    }

    v75 = *(v72 + 8 * v78);
    ++v77;
    if (v75)
    {
      v77 = v78;
      goto LABEL_34;
    }
  }

LABEL_54:
  __break(1u);
}

void sub_1003BE7D0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    *&v3[qword_100771720] = a1;
    v5 = v3;

    v6 = TTRAnyTreeViewCollapsedStatesPersisting.fetchCollapsedTreeViewItemIDs()();
    v7 = qword_100771778;
    swift_beginAccess();
    *&v5[v7] = v6;

    a2(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BE898(char a1)
{
  v1[qword_10078A558] = 0;
  if ((a1 & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1003DA560;
    *(v5 + 24) = v4;
    v9[4] = sub_100026410;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100026440;
    v9[3] = &unk_100725300;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  v2 = *&v1[qword_10078A540];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v2 performBatchUpdates:0 completion:0];
}

void *sub_1003BEA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v5 = TTRAccountsListsViewModel.numberOfChildren(of:)();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BEAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10000C36C(&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24]);
    v6 = *(*v5 + 72);
    v7 = *(*v5 + 80);
    sub_10000C36C((*v5 + 48), v6);
    sub_10045E42C(v6, v7);
    swift_getObjectType();
    v8 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v10 = v9;
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v14 = *(v10 + 8);
    v12[0] = v8;
    v11 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();

    sub_100004758(v12);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    TTRAccountsListsViewModel.child(_:of:)();
  }

  else
  {
    __break(1u);
  }
}

char *sub_1003BEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10000C36C(&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24]);
    v7 = *(*v6 + 72);
    v8 = *(*v6 + 80);
    sub_10000C36C((*v6 + 48), v7);
    sub_10045E42C(v7, v8);
    swift_getObjectType();
    v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v11 = v10;
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v14 = *(v11 + 8);
    v12[0] = v9;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();

    return sub_100004758(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return (TTRAccountsListsViewModel.Item.isExpandable.getter() & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10000C36C(&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24]);
    v6 = *(*v5 + 72);
    v7 = *(*v5 + 80);
    sub_10000C36C((*v5 + 48), v6);
    sub_10045E42C(v6, v7);
    swift_getObjectType();
    v8 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isItemExpandable(_:)();

    swift_unknownObjectRelease();
    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a4(a1, a2);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000F8318(a2);
    v7 = v6;

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a4(a1, a2);

    return (v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BF020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100437CBC(a2);
    v7 = v6;

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BF0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides];
    swift_beginAccess();
    v11 = *(v10 + 24);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v12 = sub_1000A9AF8(v7, v11);

    (*(v5 + 8))(v7, v4);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
      v15 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
      sub_10000C36C(&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v14);
      v13 = (*(*(v15 + 8) + 568))(a2, v14);
    }

    return (v13 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BF294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v56 = a5;
  v55 = a2;
  v8 = sub_100058000(&qword_1007819C0, &qword_10062FE60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v59 = type metadata accessor for Logger();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = v18;
    v51 = a6;
    v52 = v11;
    v53 = v9;
    v54 = v8;
    *(*&Strong[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = 0;
    v49 = Strong;
    v48 = *&Strong[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v26 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10062D400;
    v30 = *(v27 + 16);
    v30(v29 + v28, v55, v26);
    v30(v24, v56, v26);
    (*(v27 + 56))(v24, 0, 1, v26);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v31 = v59;
    v32 = sub_100003E30(v59, qword_100782E90);
    (*(v58 + 16))(v57, v32, v31);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062F800;
    *(inited + 32) = 1835365481;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = Array.description.getter();
    *(inited + 56) = v34;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    v56 = v24;
    sub_10000794C(v24, v21, &unk_100771B40, &unk_10062FB70);
    if ((*(v27 + 48))(v21, 1, v26) == 1)
    {
      sub_1000079B4(v21, &unk_100771B40, &unk_10062FB70);
      v35 = (inited + 96);
      *(inited + 120) = &type metadata for String;
    }

    else
    {
      sub_1003DF088(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
      v36 = TTRTreeStorageItem.treeItemDescription.getter();
      v38 = v37;
      (*(v27 + 8))(v21, v26);
      v35 = (inited + 96);
      *(inited + 120) = &type metadata for String;
      if (v38)
      {
        *v35 = v36;
LABEL_9:
        *(inited + 104) = v38;
        *(inited + 128) = 50;
        *(inited + 136) = 0xE100000000000000;
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v51;
        v39 = sub_100008E04(inited);
        swift_setDeallocating();
        sub_100058000(&unk_10076BA70, &qword_10062FD60);
        swift_arrayDestroy();
        v40 = v57;
        sub_10000FD44("Accounts Lists move item {item: %@, to (%@, %d)}", 48, 2, v39);

        (*(v58 + 8))(v40, v59);
        v41 = v56;
        v42 = v50;
        sub_10000794C(v56, v50, &unk_100771B40, &unk_10062FB70);
        sub_1003DF088(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
        TTRTreeLocation.init(parent:index:)();

        v43 = v52;
        TTRAccountsListsViewModel.unadjustInsertionLocation(_:forMoving:)();

        v44 = v53;
        v45 = *(v53 + 8);
        v46 = v54;
        v45(v14, v54);
        (*(v44 + 32))(v14, v43, v46);
        TTRTreeLocation.parent.getter();
        v47 = TTRTreeLocation.index.getter();
        sub_100439410(v29, v42, v47, 0, 1);

        sub_1000079B4(v42, &unk_100771B40, &unk_10062FB70);
        v45(v14, v46);
        sub_1000079B4(v41, &unk_100771B40, &unk_10062FB70);

        return;
      }
    }

    *v35 = 7104878;
    v38 = 0xE300000000000000;
    goto LABEL_9;
  }

  __break(1u);
}

char *sub_1003BFA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v21 = a2;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = &result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
    v13 = *(v12 + 3);
    v14 = *(v12 + 4);
    v20[1] = sub_10000C36C(v12, v13);
    sub_100058000(&qword_100772150, &unk_100635D00);
    v15 = type metadata accessor for TTRRemindersListViewModel.Item();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    v19 = *(v16 + 16);
    v19(v18 + v17, v21, v15);
    v19(v9, v22, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    (*(*(v14 + 8) + 600))(v18, v9, v23, 1, 1, v13);

    return sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BFC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a5(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BFCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v7 = v6[3];
    v8 = v6[4];
    sub_10000C36C(v6, v7);
    (*(*(v8 + 8) + 520))(a2, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BFD84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v44 - v20;
  v48 = a1;
  v22 = [a1 sourceIndexPath];
  if (v22)
  {
    v23 = v22;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v6 + 56);
    v24(v17, 0, 1, v5);
  }

  else
  {
    v24 = *(v6 + 56);
    v24(v17, 1, 1, v5);
  }

  sub_10000794C(v17, v14, &unk_100771B10, qword_10062E540);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10, qword_10062E540);
    v25 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  }

  else
  {
    v44 = v24;
    v45 = v11;
    v46 = v3;
    (*(v6 + 32))(v8, v14, v5);
    sub_1000C8504();
    v26 = sub_1001D6ABC();

    if (v26)
    {
      v27 = *(*v26 + 144);
      swift_beginAccess();
      v28 = type metadata accessor for TTRAccountsListsViewModel.Item();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v21, v26 + v27, v28);

      (*(v29 + 56))(v21, 0, 1, v28);
    }

    else
    {
      v30 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
    }

    v11 = v45;
    (*(v6 + 8))(v8, v5);
    sub_1000079B4(v17, &unk_100771B10, qword_10062E540);
    v24 = v44;
  }

  v31 = v48;
  v32 = [v48 dragItem];
  v33 = [v31 sourceIndexPath];
  if (v33)
  {
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v24(v11, v35, 1, v5);
  v36 = sub_100058000(&unk_10076BDA0, &unk_10063D3D0);
  v37 = v49;
  sub_10000794C(v21, v49 + v36[10], &unk_100771B40, &unk_10062FB70);
  [v31 previewSize];
  v39 = v38;
  v41 = v40;
  sub_1000079B4(v21, &unk_100771B40, &unk_10062FB70);
  *v37 = v32;
  result = sub_100016588(v11, v37 + v36[9], &unk_100771B10, qword_10062E540);
  v43 = (v37 + v36[11]);
  *v43 = v39;
  v43[1] = v41;
  return result;
}

uint64_t sub_1003C02F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v44 - v20;
  v48 = a1;
  v22 = [a1 sourceIndexPath];
  if (v22)
  {
    v23 = v22;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v6 + 56);
    v24(v17, 0, 1, v5);
  }

  else
  {
    v24 = *(v6 + 56);
    v24(v17, 1, 1, v5);
  }

  sub_10000794C(v17, v14, &unk_100771B10, qword_10062E540);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10, qword_10062E540);
    v25 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  }

  else
  {
    v44 = v24;
    v45 = v11;
    v46 = v3;
    (*(v6 + 32))(v8, v14, v5);
    sub_1000C84C8();
    v26 = sub_1001D6ABC();

    if (v26)
    {
      v27 = *(*v26 + 144);
      swift_beginAccess();
      v28 = type metadata accessor for TTRRemindersListViewModel.Item();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v21, v26 + v27, v28);

      (*(v29 + 56))(v21, 0, 1, v28);
    }

    else
    {
      v30 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
    }

    v11 = v45;
    (*(v6 + 8))(v8, v5);
    sub_1000079B4(v17, &unk_100771B10, qword_10062E540);
    v24 = v44;
  }

  v31 = v48;
  v32 = [v48 dragItem];
  v33 = [v31 sourceIndexPath];
  if (v33)
  {
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v24(v11, v35, 1, v5);
  v36 = sub_100058000(&unk_1007818E0, &qword_10063D348);
  v37 = v49;
  sub_10000794C(v21, v49 + v36[10], &qword_100772140, &qword_10062D9F0);
  [v31 previewSize];
  v39 = v38;
  v41 = v40;
  sub_1000079B4(v21, &qword_100772140, &qword_10062D9F0);
  *v37 = v32;
  result = sub_100016588(v11, v37 + v36[9], &unk_100771B10, qword_10062E540);
  v43 = (v37 + v36[11]);
  *v43 = v39;
  v43[1] = v41;
  return result;
}

void *sub_1003C085C(uint64_t (*a1)(void))
{
  result = a1(0);
  if (result[2])
  {
    return result;
  }

  v3 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900, &qword_10063D368);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      v8 = [v7 dragItem];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1003C0A14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a1, a2);
  }
}

uint64_t sub_1003C0A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v6 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    v7 = Strong;
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v5);
    v8 = (*(*(v6 + 8) + 560))(a2, v5);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void sub_1003C0B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1003C3C78();
    if (v5)
    {
      v6 = v5;
      [v5 endEditing:1];
    }
  }
}

uint64_t sub_1003C0BB0@<X0>(uint64_t a1@<X1>, char *a3@<X8>)
{
  v5 = sub_100058000(qword_100780EF0, &qword_10063CB80);
  __chkstk_darwin(v5 - 8);
  v7 = (&v17 - v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    HIBYTE(v17) = 0;

    v10 = v9;
    sub_1001ABDBC(a1, a1, &v17 + 7, v10, v7);
    v11 = *&v10[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker];

    if (*v7 == 1)
    {
      *(v11 + 16) = (*(v11 + 16) | HIBYTE(v17)) & 1;
    }

    v12 = type metadata accessor for TTRITreeViewDropProposal(0);
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    return sub_1003DEF14(v7, a3, type metadata accessor for TTRITreeViewDropProposal);
  }

  else
  {
    v14 = type metadata accessor for TTRITreeViewDropProposal(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = *(v14 + 20);
    v16 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
    result = (*(*(v16 - 8) + 56))(&a3[v15], 1, 4, v16);
    *a3 = 0;
  }

  return result;
}

uint64_t sub_1003C0DBC@<X0>(uint64_t a1@<X1>, char *a3@<X8>)
{
  v5 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = v9;
    sub_1001AE02C(a1, a1, v10, v7);

    return sub_1003DEF14(v7, a3, type metadata accessor for TTRITreeViewDropProposal);
  }

  else
  {
    v12 = *(v5 + 20);
    v13 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
    result = (*(*(v13 - 8) + 56))(&a3[v12], 1, 4, v13);
    *a3 = 0;
  }

  return result;
}

double sub_1003C0F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker;
    v7 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker);
    if (*(v7 + 16) == 1)
    {
      sub_10043FA6C();
      v7 = *&v5[v6];
    }

    *(v7 + 16) = 0;
  }

  return result;
}

void sub_1003C0FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
    if (v5)
    {
      v6 = v5;
      sub_1005CA044();
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1003C1018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = &result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
    v10 = *(v9 + 3);
    v11 = *(v9 + 4);
    sub_10000C36C(v9, v10);
    (*(*(v11 + 8) + 512))(a2, v10);
    v12 = type metadata accessor for TTRRemindersListViewModel.Reminder();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {

      sub_1000079B4(v6, &qword_100772738, &unk_10063D2B0);
      return 0;
    }

    else
    {
      v14 = TTRRemindersListViewModel.Reminder.title.getter();

      (*(v13 + 8))(v6, v12);
      return v14;
    }
  }

  return result;
}

uint64_t sub_1003C11C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = a4(a2);

  return v8;
}

uint64_t sub_1003C1248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  return 0;
}

uint64_t sub_1003C1298()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781340);
  v1 = sub_100003E30(v0, qword_100781340);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003C1388()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A548];
  if (v4)
  {
    v5 = v4;
    sub_1003BBE4C();
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for TTRIRemindersListContentViewController(uint64_t a1)
{
  result = qword_100781418;
  if (!qword_100781418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C1744()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  sub_1003C1B94();
  v2 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = &off_1007250B8;
  swift_unknownObjectWeakAssign();
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A540];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 setBackgroundView:v2];

  v5 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(type metadata accessor for TTRIRemindersListScrollingController(0));
  v9 = v1;
  v10 = sub_1005CB108(v9, v6, sub_1003DE448, v7);

  v11 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController;
  v12 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController];
  *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController] = v10;
  v13 = v10;

  if (!*(*&v1[v5] + qword_10078A548))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  swift_unknownObjectWeakAssign();

  v14 = *&v9[v11];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  sub_1005C98E0();

  v16 = *(*&v1[v5] + qword_10078A540);
  if (v16)
  {
    type metadata accessor for TTRIChromelessToolbarUpdater();
    swift_allocObject();
    v17 = v16;
    v18 = TTRIChromelessToolbarUpdater.init(scrollView:)();
    sub_1003DF088(&qword_100781888, type metadata accessor for TTRIRemindersListContentViewController, &unk_10063D0E8);
    swift_unknownObjectRetain();
    TTRIChromelessToolbarUpdater.delegate.setter();
    *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater] = v18;

    v19 = [objc_allocWithZone(PKHoverInteraction) initWithDelegate:v9];
    v20 = *&v1[v5];
    [v20 addInteraction:v19];

    v21 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
    v22 = sub_10000C36C(&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v21);
    v23 = swift_allocObject();
    v24 = swift_unknownObjectWeakInit();
    v25 = __chkstk_darwin(v24);
    v27 = (&v33 - v26);
    (*(v28 + 16))(&v33 - v26, v22, v21, v25);
    v29 = *v27;
    v35 = type metadata accessor for TTRIRemindersListPresenter();
    v36 = &off_1007275A0;
    *&v34 = v29;
    type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController(0);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    v32 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    sub_100005FD0(&v34, v30 + 16);
    *(v30 + 56) = sub_1003DE450;
    *(v30 + 64) = v23;
    *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController] = v30;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1003C1B94()
{
  v1 = v0;
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.ID.RemindersTable.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setAccessibilityIdentifier:v3];

  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  v5 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
  v6 = objc_allocWithZone(UIView);
  v7 = v5;
  v8 = [v6 init];
  v9 = *&v7[qword_10078A540];
  if (!v9)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v9 setTableFooterView:v8];

  v10 = *(*&v1[v4] + qword_10078A540);
  if (!v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v10 setRowHeight:UITableViewAutomaticDimension];
  v11 = *(*&v1[v4] + qword_10078A540);
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v11 setEstimatedRowHeight:46.0];
  v12 = *(*&v1[v4] + qword_10078A540);
  if (!v12)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v12 setSectionHeaderTopPadding:0.0];
  v13 = *(*&v1[v4] + qword_10078A540);
  if (!v13)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v13 setSectionHeaderHeight:28.0];
  v14 = *(*&v1[v4] + qword_10078A540);
  if (!v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v14 setSectionFooterHeight:28.0];
  v15 = *(*&v1[v4] + qword_10078A540);
  if (!v15)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v15 setKeyboardDismissMode:4];
  v16 = *(*&v1[v4] + qword_10078A540);
  if (!v16)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v16 setAllowsSelectionDuringEditing:1];
  v17 = *(*&v1[v4] + qword_10078A540);
  if (!v17)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v17 setAllowsMultipleSelectionDuringEditing:1];
  v18 = *(*&v1[v4] + qword_10078A540);
  if (!v18)
  {
LABEL_47:
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

  [v18 setAlwaysBounceVertical:1];
  v104 = v4;
  v19 = *(*&v1[v4] + qword_10078A540);
  if (!v19)
  {
    goto LABEL_48;
  }

  [v19 setDragInteractionEnabled:1];
  sub_1003D6F00(&qword_100781970, &qword_10063D3B0, &qword_100781978, &unk_10063D3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006329D0;
  *(inited + 32) = type metadata accessor for TTRIRemindersListReminderCell();
  *(inited + 40) = type metadata accessor for TTRIRemindersListCompletedCell();
  *(inited + 48) = type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
  *(inited + 56) = type metadata accessor for TTRIRemindersListTemplateStatusCell(0);
  *(inited + 64) = type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell(0);
  *(inited + 72) = type metadata accessor for TTRIRemindersListTipCell();
  *(inited + 80) = type metadata accessor for TTRIRemindersListEditableSectionCell(0);
  *(inited + 88) = type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell(0);
  sub_1003D6F00(&qword_100781960, &qword_10063D3A0, &qword_100781968, &qword_10063D3A8);
  v103 = swift_initStackObject();
  *(v103 + 32) = type metadata accessor for TTRIRemindersListSectionHeader(0);
  for (i = 32; i != 96; i += 8)
  {
    v22 = *&v1[v104];
    static UITableViewCell.tableViewCellIdentifier.getter();
    v23 = *&v22[qword_10078A540];
    if (!v23)
    {
      __break(1u);
      goto LABEL_38;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = v23;
    v26 = String._bridgeToObjectiveC()();

    [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];
  }

  v27 = *&v1[v104];
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v28 = *&v27[qword_10078A540];
  if (!v28)
  {
    goto LABEL_49;
  }

  v29 = swift_getObjCClassFromMetadata();
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();

  [v30 registerClass:v29 forHeaderFooterViewReuseIdentifier:v31];

  swift_setDeallocating();
  v32 = *&v1[v104];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = v32;
  sub_1001D4E84();
  v36 = v35;

  if (v36)
  {
    v37 = &v36[OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514];
    v38 = *&v36[OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514];
    v39 = *&v36[OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514 + 8];
    *v37 = sub_1003DE468;
    v37[1] = v33;

    sub_1000301AC(v38, v39);
  }

  v40 = *&v1[v104];
  sub_100058000(&qword_100781890, &qword_10063D2F8);
  swift_allocObject();
  v41 = v1;
  v42 = v40;
  v43 = sub_1003DA58C();

  v44 = *&v42[qword_10078A548];
  if (!v44)
  {
    goto LABEL_50;
  }

  v45 = v44;
  sub_1003BB378(v43);

  v46 = *&v1[v104];
  sub_100058000(&qword_100781898, &qword_10063D300);
  v47 = swift_allocObject();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47[2] = sub_1003DF100;
  v47[3] = v48;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47[4] = sub_1003DE470;
  v47[5] = v49;
  v50 = *(v46 + qword_10078A548);
  if (!v50)
  {
    goto LABEL_51;
  }

  *(v50 + qword_100771748) = v47;

  v51 = *&v1[v104];
  sub_100058000(&qword_1007818A0, &qword_10063D308);
  v52 = swift_allocObject();
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52[2] = sub_1003DF100;
  v52[3] = v53;
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52[4] = sub_1003DE4A0;
  v52[5] = v54;
  v55 = *&v51[qword_10078A548];
  if (!v55)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  *&v55[qword_100771750] = v52;
  v56 = v51;
  v57 = v55;

  v58 = *&v57[qword_100771730];
  v59 = v52[2];

  v60 = v58;
  v61 = v59();

  if (v61)
  {
    v62 = v57;
  }

  else
  {
    v62 = 0;
  }

  [v60 setPrefetchDataSource:{v62, v103}];

  v63 = *&v1[v104];
  sub_100058000(&qword_1007818A8, &qword_10063D310);
  swift_allocObject();
  v64 = v41;
  v65 = v63;
  v66 = sub_1003D93E4();

  sub_100058000(&qword_1007818B0, &qword_10063D318);
  swift_allocObject();
  v67 = v64;

  v68 = sub_1003DA1E0();

  *(v66 + 592) = v68;

  v69 = *&v65[qword_10078A548];
  if (!v69)
  {
    goto LABEL_53;
  }

  *&v69[qword_100771758] = v66;

  v70 = v69;

  v71 = *&v70[qword_100771730];
  v72 = *(v66 + 16);

  v73 = v71;
  v74 = v72();

  if (v74)
  {
    v75 = v70;
  }

  else
  {
    v75 = 0;
  }

  [v73 setDelegate:v75];

  v76 = *&v1[v104];
  v77 = objc_allocWithZone(sub_100058000(&qword_1007818B8, &qword_10063D320));
  v78 = v67;
  v79 = v76;
  v80 = sub_1003DCF8C();

  v81 = *&v79[qword_10078A548];
  if (!v81)
  {
    goto LABEL_54;
  }

  v82 = qword_100771708;
  v83 = *&v81[qword_100771708];
  *&v81[qword_100771708] = v80;
  v84 = v80;
  v85 = v81;

  if (*&v81[v82])
  {
    swift_unknownObjectWeakAssign();
    v86 = *&v81[v82];
  }

  else
  {
    v86 = 0;
  }

  [*&v85[qword_100771730] setDragDelegate:v86];

  v87 = *&v1[v104];
  v88 = objc_allocWithZone(sub_100058000(&qword_1007818C0, &qword_10063D328));
  v89 = v78;
  v90 = v87;
  v91 = sub_1003DC9C4();

  v92 = *&v90[qword_10078A548];
  if (!v92)
  {
    goto LABEL_55;
  }

  v93 = qword_100771710;
  v94 = *&v92[qword_100771710];
  *&v92[qword_100771710] = v91;
  v95 = v91;
  v96 = v92;

  if (*&v92[v93])
  {
    swift_unknownObjectWeakAssign();
    v97 = *&v92[v93];
  }

  else
  {
    v97 = 0;
  }

  [*&v96[qword_100771730] setDropDelegate:v97];

  v98 = *&v1[v104];
  sub_100058000(&unk_1007818C8, &unk_10063D330);
  v99 = swift_allocObject();
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99[2] = sub_1003DF100;
  v99[3] = v100;
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99[4] = sub_1003DE4A8;
  v99[5] = v101;
  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99[6] = sub_1003DE4B0;
  v99[7] = v102;
  *(v98 + qword_10078A550) = v99;
}

void sub_1003C26C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1003DE458;
    *(v7 + 24) = v6;
    aBlock[4] = sub_100068444;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100725698;
    v8 = _Block_copy(aBlock);
    v9 = v4;

    [v5 performWithoutAnimation:v8];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1003C2868(uint64_t a1, char a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1003C28E0(a2 & 1, a1, a3 & 1);
  }
}

void sub_1003C28E0(char a1, uint64_t a2, char a3)
{
  v6 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v69 = type metadata accessor for IndexPath();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v63 - v11;
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v67 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  v24 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v25 = v24;
  if (a1)
  {
    (*(v16 + 16))(v23, a2, v15);
    (*(v16 + 56))(v23, 0, 1, v15);
    v26 = *&v25[qword_10078A548];
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      sub_1000E0004(v23, 1, 0);
      if (a3)
      {
        sub_10000794C(v23, v20, &qword_100772140, &qword_10062D9F0);
        if ((*(v16 + 48))(v20, 1, v15) == 1)
        {

          sub_1000079B4(v23, &qword_100772140, &qword_10062D9F0);
          v29 = v20;
LABEL_25:
          sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
          return;
        }

        v54 = v67;
        (*(v16 + 32))(v67, v20, v15);
        v55 = sub_1003BD960(v54);
        v56 = v55[2];
        if (v56)
        {
          v64 = v23;
          v65 = v16;
          v66 = v15;
          v68 = v27;
          v57 = v69;
          v58 = v71 + 16;
          v71 = *(v71 + 16);
          v72 = qword_100771730;
          v59 = *(v58 + 64);
          v63 = v55;
          v60 = v55 + ((v59 + 32) & ~v59);
          v70 = *(v58 + 56);
          do
          {
            (v71)(v14, v60, v57);
            v61 = *&v72[v28];
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v58 - 8))(v14, v57);
            [v61 selectRowAtIndexPath:isa animated:1 scrollPosition:{0, v63}];

            v60 = &v70[v60];
            --v56;
          }

          while (v56);

          v27 = v68;
          v16 = v65;
          v15 = v66;
          v23 = v64;
        }

        else
        {
        }

        (*(v16 + 8))(v67, v15);
      }

      else
      {
      }

      v29 = v23;
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_27;
  }

  v68 = v24;
  v30 = *&v24[qword_10078A548];
  if (!v30)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v31 = a3;
  v32 = v30;
  v33 = sub_1000C84C8();
  v35 = v34;
  v37 = v36;
  v39 = sub_1000F2C50(a2, v38);
  v40 = v69;
  if (!v39)
  {

    v41 = v71;
    (*(v71 + 56))(v8, 1, 1, v40);
LABEL_13:
    sub_1000079B4(v8, &unk_100771B10, qword_10062E540);
    v45 = v68;
    if ((a3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1000C73C4(v39, v37 & 1, v33, v35, v8);

  v41 = v71;
  if ((*(v71 + 48))(v8, 1, v40) == 1)
  {
    goto LABEL_13;
  }

  v42 = v72;
  (*(v41 + 32))(v72, v8, v40);
  v43 = *&v32[qword_100771730];
  v44 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v43 deselectRowAtIndexPath:v44 animated:1];

  (*(v41 + 8))(v42, v40);
  v45 = v68;
  if ((v31 & 1) == 0)
  {
LABEL_10:

    return;
  }

LABEL_14:
  v46 = v32;
  v67 = sub_1003BD960(a2);
  v47 = v67[2];
  v48 = v70;
  if (v47)
  {
    v71 = *(v41 + 16);
    v72 = qword_100771730;
    v49 = v67 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v50 = *(v41 + 72);
    v51 = (v41 + 8);
    do
    {
      (v71)(v48, v49, v40);
      v52 = *&v72[v46];
      v53 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v51)(v48, v40);
      [v52 deselectRowAtIndexPath:v53 animated:1];

      v49 += v50;
      --v47;
    }

    while (v47);
  }
}

void sub_1003C308C(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  if ([v3 isEditing] != v6)
  {
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "setEditing:animated:", v6, a2 & 1);
    if (a1)
    {
      v8 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      v9 = *&v8[qword_10078A540];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = [v9 isEditing];

      if (v10 && v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] == 1)
      {
        v11 = *(*&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
        if (!v11)
        {
LABEL_20:
          __break(1u);
          return;
        }

        [v11 setEditing:0 animated:a2 & 1];
      }
    }

    v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v13 = *&v12[qword_10078A540];
    if (v13)
    {
      [v13 setEditing:a1 & 1 animated:a2 & 1];

      v15 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
      if ((a1 & 1) == 0)
      {
        v20 = *&v15[qword_10078A548];
        if (v20)
        {
          v21 = v15;
          v22 = v20;
          sub_1000CC908();

          goto LABEL_14;
        }

        goto LABEL_19;
      }

      __chkstk_darwin(v14);
      v24[2] = v3;
      v17 = *&v16[qword_10078A548];
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        sub_1000CBA8C(sub_1003DE440, v24);

LABEL_14:
        v23 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
        sub_1003BE898(a2 & 1);

        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_1003C32D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v12 = v11[3];
  v13 = v11[4];
  sub_10000C36C(v11, v12);
  (*(*(v13 + 8) + 544))(a1, v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = v11[3];
    v16 = v11[4];
    sub_10000C36C(v11, v15);
    v14 = (*(*(v16 + 8) + 536))(v10, v15);
    (*(v8 + 8))(v10, v7);
  }

  return v14 & 1;
}

void sub_1003C3538()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore;
  swift_beginAccess();
  sub_10000794C(&v0[v11], v6, &qword_100772140, &qword_10062D9F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_10000D184(v3, &v0[v11], &qword_100772140, &qword_10062D9F0);
  swift_endAccess();
  if ([v0 isViewLoaded])
  {
    v12 = v0;
    v13 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    [v13 layoutBelowIfNeeded];

    v14 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
    v15 = *&v12[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
    sub_1000E5C98(v10, 1, 0);

    v16 = *(*&v12[v14] + qword_10078A540);
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v17, 0, 1);
  }

  (*(v8 + 8))(v10, v7);
}

void sub_1003C3868(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A540];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v4 isEditing];

  if (!v5)
  {
    return;
  }

  v6 = *(*&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v6 setEditing:0 animated:0];
}

char *sub_1003C3A28(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView);
  if (*(a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView + 32))
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v1[2];
    v10 = v1[3];
    v4 = *v1;
    v6 = v1[1];
  }

  v11 = objc_allocWithZone(type metadata accessor for TTRIRemindersListTreeView(0));
  *&v11[qword_10078A540] = 0;
  *&v11[qword_10078A548] = 0;
  *&v11[qword_10078A550] = 0;
  v11[qword_10078A558] = 0;
  v26.receiver = v11;
  v26.super_class = sub_100058000(&unk_100781760, &unk_10063D220);
  v12 = objc_msgSendSuper2(&v26, "initWithFrame:", v4, v6, v8, v10);
  v13 = *((swift_isaMask & *v12) + 0x90);
  v14 = v12;
  v15 = v13(0);
  v16 = *(v14 + qword_10078A540);
  *(v14 + qword_10078A540) = v15;
  v17 = v15;

  [v17 setAutoresizingMask:18];
  [v17 setPreservesSuperviewLayoutMargins:1];
  [v14 addSubview:v17];

  objc_allocWithZone(sub_100058000(&qword_10076BB70, &qword_10062FDC8));
  v18 = v14;
  v19 = v17;
  v20 = sub_1003BB910(v18, v19);
  v21 = qword_10078A548;
  v22 = *&v18[qword_10078A548];
  *&v18[qword_10078A548] = v20;

  v23 = &off_100719448;
  if (!*&v18[v21])
  {
    v23 = 0;
  }

  *&v19[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8] = v23;
  swift_unknownObjectWeakAssign();

  v24 = v18;
  sub_1001D50A4();

  return v24;
}

char *sub_1003C3C78()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v8, v10);
  (*(*(v9 + 8) + 296))(v17, v10);
  sub_10000C36C(v17, v17[3]);
  TTRRemindersListEditingState.editingItem.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
    sub_100004758(v17);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_100004758(v17);
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v12 = *&result[qword_10078A548];
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v15 = sub_1000DE654(v7);

    (*(v5 + 8))(v7, v4);
    result = 0;
    if (v15)
    {
      type metadata accessor for TTRIRemindersListReminderCell();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C3EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v40 = type metadata accessor for TTREditingStateOption.InputType();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = v6;
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007817E8, &qword_10063D288);
  v11 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v8 + 16))(v10, a1, v7);
  TTRRemindersListHighlightTarget.TargetItem.init(item:includesChildren:)();
  sub_1003C48A4(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v16 = *&v15[qword_10078A548];
  if (!v16)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_1000DE654(a1);

  v20 = a1;
  if (v19)
  {
    swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = v21;
      if (sub_1003C4478(v3, a1))
      {
        swift_getObjectType();
        dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
        v42 = v19;
        v43 = v22;
        sub_100058000(&unk_10078A360, &qword_100644F60);
        swift_allocObject();
        Promise.init(value:)();
        return;
      }
    }
  }

  v23 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController;
  v24 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  sub_1005C9C70(a1);

  v27 = v39;
  v26 = v40;
  (*(v5 + 16))(v39, v41, v40);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = swift_allocObject();
  (*(v5 + 32))(v29 + v28, v27, v26);
  v30 = zalgo.getter();
  sub_100058000(&unk_1007817F0, &unk_10063D290);
  v31 = dispatch thunk of Promise.then<A>(on:closure:)();

  v32 = *(v3 + v23);
  if (v32)
  {
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = v32;
    sub_10050999C(v20, sub_1003DD838, v34, sub_1003DD840, v35, 1, v31, 1, 3);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v37 = zalgo.getter();
    dispatch thunk of Promise.always(on:closure:)();

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_1003C4478(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = v26 - v5;
  v30 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v9 = *(result + qword_10078A548);
  if (v9)
  {
    v10 = result;
    v11 = v9;
    sub_1003BD378();
    v13 = v12;

    v14 = 0;
    if (v13)
    {
      result = v13;
    }

    else
    {
      result = _swiftEmptyArrayStorage;
    }

    v34 = result[2];
    v15 = (v2 + 8);
    v26[0] = v6 + 8;
    v26[1] = v6 + 16;
    v27 = result;
    v17 = v28;
    v16 = v29;
    while (1)
    {
      v18 = v14;
      if (v34 == v14)
      {
LABEL_9:
        v25 = v34 != v18;

        return v25;
      }

      if (v14 >= result[2])
      {
        break;
      }

      v19 = v30;
      (*(v6 + 16))(v17, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14++, v30);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v20 = v31;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v21 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      v22 = *v15;
      v23 = v20;
      v24 = v32;
      (*v15)(v23, v32);
      v22(v16, v24);
      (*(v6 + 8))(v17, v19);
      result = v27;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C4754(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100781340);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIRemindersListViewController: Begin editing title of cell of item-to-edit.", v6, 2u);
  }

  swift_getObjectType();
  dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
  sub_100058000(&unk_10078A360, &qword_100644F60);
  swift_allocObject();
  v7 = v2;
  return Promise.init(value:)();
}

void sub_1003C48A4(uint64_t a1)
{
  v2 = v1;
  v43 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100058000(&unk_100781800, &qword_10063D2A0);
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v38 - v8;
  v10 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v11 = *(*v10 + 72);
  v12 = *(*v10 + 80);
  sub_10000C36C((*v10 + 48), v11);
  sub_10045E42C(v11, v12);
  swift_getObjectType();
  v13 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v38[2] = ObjectType;
  v45[3] = ObjectType;
  v17 = *(v15 + 8);
  v45[4] = v17;
  v45[0] = v13;
  v18 = *(a1 + 16);
  if (v18)
  {
    v38[0] = v17;
    v38[1] = v2;
    v44 = _swiftEmptyArrayStorage;
    sub_1004A1BC8(0, v18, 0);
    v19 = v44;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v39 = *(v20 + 56);
    v40 = v21;
    v41 = v20;
    v23 = (v20 - 8);
    do
    {
      v24 = v43;
      v40(v6, v22, v43);
      v25 = *(v42 + 48);
      TTRRemindersListHighlightTarget.TargetItem.item.getter();
      v26 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
      (*v23)(v6, v24);
      v9[v25] = v26 & 1;
      v44 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        sub_1004A1BC8((v27 > 1), v28 + 1, 1);
        v19 = v44;
      }

      v19[2] = v28 + 1;
      ObjectType = sub_100016588(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, &unk_100781800, &qword_10063D2A0);
      v22 += v39;
      --v18;
    }

    while (v18);
  }

  __chkstk_darwin(ObjectType);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_1003DF088(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v29 = TTRTreeContentsQueryable.ancestorsToExpand<A>(forRevealing:transform:isExpanded:itemExpandedStateIsUnknownIfParentIsCollapsed:)();

  sub_100004758(v45);
  if (*(v29 + 16))
  {
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_100781340);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = *(v29 + 16);

      _os_log_impl(&_mh_execute_header, v31, v32, "TTRIRemindersListContentViewController: expand ancestors to reveal target item {count: %ld}", v33, 0xCu);
    }

    else
    {
    }

    v34 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    __chkstk_darwin(v34);
    v36 = *(v35 + qword_10078A548);
    if (v36)
    {
      v37 = v36;
      sub_1001A0494(0, 0, 0, 0, v37, sub_1003DD858);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_1003C4E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

char *sub_1003C4E78(uint64_t a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000CAD68(a1);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C4EFC(uint64_t a1, uint64_t a2, int a3)
{
  v35 = a3;
  v34 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v13 = *&v12[qword_10078A548];
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_1000DE654(a1);

  v39 = _swiftEmptyArrayStorage;
  v33 = v16;
  if (v16)
  {
    v17 = a1;
    type metadata accessor for TTRIRemindersListReminderCell();
    if (!swift_dynamicCastClass())
    {
LABEL_6:
      v19 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v18 = v16;
    if (TTRIRemindersListReminderCell.isViewModelValid.getter())
    {

      goto LABEL_6;
    }

    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = a1;
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v19 = v39;
LABEL_14:
  sub_100058000(&qword_1007845B0, &qword_10063D2C0);
  v38 = v19;
  sub_100058000(&qword_100781840, &qword_10063D2C8);
  sub_10000E188(&qword_100781848, &qword_100781840, &qword_10063D2C8, &protocol conformance descriptor for [A]);
  static Promise.all<A>(_:)();
  v20 = v36;
  (*(v6 + 16))(v36, v17, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v20, v5);
  v23 = zalgo.getter();
  v24 = dispatch thunk of Promise.then<A>(on:closure:)();

  v25 = *(v37 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (v25)
  {
    v26 = v25;

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v29 = v34;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10050BBFC(v17, sub_1003DF0E4, v28, sub_1003DF138, v30, v35 & 1, v24, 1, 3);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v31 = zalgo.getter();
    dispatch thunk of Promise.always(on:closure:)();

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_1003C5520(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong parentViewController];

  return v3;
}

id sub_1003C5594(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1003C55F8(uint64_t a1)
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.CompletedTasks.getter();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1003DE1A4;
  v4[4] = v2;
  v5 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v6 = String._bridgeToObjectiveC()();

  v10[4] = sub_1003DF108;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002C4478;
  v10[3] = &unk_100725508;
  v7 = _Block_copy(v10);
  v8 = [v5 initWithName:v6 itemSearchBlock:v7];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1003C57CC(uint64_t a1, __n128 a2)
{
  v20 = type metadata accessor for TTRReminderCellStyle();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v14 = *(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v15);
  (*(*(v14 + 8) + 512))(a1, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000079B4(v9, &qword_100772738, &unk_10063D2B0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    TTRRemindersListViewModel.Reminder.style.getter();
    v16 = TTRReminderCellStyle.hasCompletedState.getter();
    (*(v4 + 8))(v6, v20);
    if (v16)
    {
      v17 = TTRRemindersListViewModel.Reminder.isCompleted.getter();
      (*(v11 + 8))(v13, v10);
      return v17 & 1;
    }

    (*(v11 + 8))(v13, v10);
  }

  return 2;
}

id sub_1003C5A70(uint64_t a1)
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.IncompleteTasks.getter();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1003DE19C;
  v4[4] = v2;
  v5 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v6 = String._bridgeToObjectiveC()();

  v10[4] = sub_1003DF108;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002C4478;
  v10[3] = &unk_1007254B8;
  v7 = _Block_copy(v10);
  v8 = [v5 initWithName:v6 itemSearchBlock:v7];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1003C5C44(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LODWORD(a1) = sub_1003C57CC(a1, v4);

  return (a1 != 2) & (a1 ^ 1);
}

id sub_1003C5C9C(uint64_t a1)
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.OverdueTasks.getter();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1003DE168;
  v4[4] = v2;
  v5 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v6 = String._bridgeToObjectiveC()();

  v10[4] = sub_1003DE170;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002C4478;
  v10[3] = &unk_100725468;
  v7 = _Block_copy(v10);
  v8 = [v5 initWithName:v6 itemSearchBlock:v7];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1003C5E70(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v12 = *&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v11);
  (*(*(v12 + 8) + 512))(a1, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1000079B4(v5, &qword_100772738, &unk_10063D2B0);
    v13 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v13 = TTRRemindersListViewModel.Reminder.showsAsOverdue.getter();

    (*(v7 + 8))(v9, v6);
  }

  return v13 & 1;
}

void sub_1003C608C(uint64_t a1)
{
  sub_1003C6168(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003C6168(uint64_t a1)
{
  if (!qword_100780930)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100780930);
    }
  }
}

void *sub_1003C61C0()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = [result hasActiveDrag];

  if (v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
  if (!result)
  {
    goto LABEL_9;
  }

  if ([result hasActiveDrop])
  {
    return 0;
  }

  result = *(*(v0 + v4) + qword_10078A540);
  if (result)
  {
    return ([result isEditing] ^ 1);
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_1003C628C()
{
  v1 = v0;
  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781340);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Cancel any hover detection once the cell starts being edited", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction);
  if (*(v6 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v6 + 56) = 0;

  return result;
}

char *sub_1003C63B0(char a1, char a2, double a3, double a4)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v9 = *&result[qword_10078A540];
  if (v9)
  {
    v10 = result;
    v11 = v9;

    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    inited = swift_initStackObject();
    swift_unknownObjectWeakInit();
    inited[5] = 2;
    inited[6] = 0;
    inited[7] = 0;
    inited[8] = 0;
    swift_unknownObjectWeakAssign();

    inited[3] = sub_100290088;
    inited[4] = 0;
    sub_1005F55D8(a1 & 1, a2 & 1, a3, a4);
    swift_setDeallocating();
    return swift_unknownObjectWeakDestroy();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C64AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v10 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    while (1)
    {
      v10(v8, v13, v4, v6);
      v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      v16 = *&v15[qword_10078A548];
      if (!v16)
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      (v19[0])(v8, 100);

      (*(v11 - 8))(v8, v4);
      v13 += v14;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

__n128 sub_1003C6630(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1003C6650(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController))
  {
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return v2;
}

void *sub_1003C66E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
  v2 = v1;
  return v1;
}

uint64_t sub_1003C672C()
{
  sub_100058000(&unk_100781790, &unk_10063D240);
  v1 = *(sub_100058000(&qword_100772140, &qword_10062D9F0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D400;
  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3 + v2, &qword_100772140, &qword_10062D9F0);
  sub_100058000(&qword_1007817A0, &unk_10063D250);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10000E188(&qword_1007817A8, &qword_1007817A0, &unk_10063D250, &protocol conformance descriptor for [A]);
  v5 = Sequence.removingNils<A>()();

  return v5;
}

void sub_1003C68B0(void *a1)
{
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&v2[qword_10078A540];
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    [a1 setContentScrollView:v5 forEdge:5];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C6948()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  sub_1003BE898(0);
}

CGFloat sub_1003C69B4()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v2 = *&v0[qword_10078A540];
  if (v2)
  {
    v3 = v0;
    v4 = v2;

    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v6;
    v14 = v8;
    v15 = v10;
    v16 = v12;

    return CGRectGetHeight(*&v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003C6A6C(char a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000DEE9C(a1 & 1);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C6AEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (v4)
  {
    v7 = v4;
    v8 = TTRIShowRemindersEditableCellScrollingTarget.resolvedTargetsToTry.getter();
    __chkstk_darwin(v8);
    v10[2] = v9;
    v10[3] = a2;
    sub_1005CA660(sub_1003DA558, v10, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C6BA0(uint64_t a1)
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v2 = *&v1[qword_10078A540];
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)();
  }

  else
  {
    __break(1u);
  }
}

double sub_1003C6C38()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater))
  {

    TTRIChromelessToolbarUpdater.updateForToolbarVisibilityChange()();
  }

  return result;
}

char *sub_1003C6C90(uint64_t a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000CAD68(a1);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C6D40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v6 = *&v5[qword_10078A548];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1001A0494(0, 0, 0, 0, v8, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C6DE0(uint64_t a1)
{
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);

  sub_1003BE7D0(v1, sub_1003BB6A0);
}

uint64_t sub_1003C6E64()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    result = *&v2[qword_10078A540];
    if (result)
    {
      v3 = [result hasActiveDrag];

      if (v3)
      {
        return 1;
      }

      result = *(*&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
      if (result)
      {
        return [result hasActiveDrop];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1003C6F1C(uint64_t a1)
{
  v3 = type metadata accessor for TTRTreeViewAnimationByType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100781870, &qword_10062FE40);
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_100781878, qword_10063EB20);
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v25 - v13;
  if ([v1 isViewLoaded])
  {
    v25 = v4;
    v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    (*(v11 + 16))(v14, a1, v10);
    v16 = (*(v11 + 88))(v14, v10);
    if (v16 == enum case for TTRTreeViewUpdates.incremental<A>(_:))
    {
      (*(v11 + 96))(v14, v10);
      v17 = *(sub_100058000(&qword_100781880, &qword_10063D2F0) + 48);
      v18 = v26;
      (*(v26 + 32))(v9, v14, v7);
      v19 = v25;
      (*(v25 + 32))(v6, &v14[v17], v3);
      v20 = TTRTreeDiffResult.isEmpty.getter();
      if (v20)
      {

        (*(v19 + 8))(v6, v3);
LABEL_10:
        (*(v18 + 8))(v9, v7);
        return;
      }

      __chkstk_darwin(v20);
      *(&v25 - 6) = TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:);
      *(&v25 - 5) = 0;
      *(&v25 - 4) = v9;
      *(&v25 - 3) = v15;
      *(&v25 - 2) = v6;
      v23 = *&v15[qword_10078A548];
      if (v23)
      {
        v24 = v23;
        sub_1001A0494(0, 0, 0, 0, v24, sub_1003DE430);

        (*(v25 + 8))(v6, v3);
        goto LABEL_10;
      }
    }

    else
    {
      if (v16 != enum case for TTRTreeViewUpdates.reload<A>(_:))
      {
LABEL_14:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v21 = *&v15[qword_10078A548];
      if (v21)
      {
        v22 = v21;
        sub_1000C7F48();

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

void sub_1003C732C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v46 - v7;
  v8 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v46 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100781860, &qword_10063D2E0);
  __chkstk_darwin(v18 - 8);
  v57 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v21;
  v22 = 0;
  v23 = *(a1 + 16);
  v53 = (v9 + 32);
  v54 = (v15 + 32);
  v49 = (v9 + 8);
  v50 = v23;
  v47 = a1;
  v48 = (v15 + 8);
  v51 = v5;
  v24 = v23 == 0;
  if (v23)
  {
    goto LABEL_3;
  }

LABEL_2:
  v25 = sub_100058000(&qword_100781868, &qword_10063D2E8);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  v58 = v23;
  v27 = v59;
  while (1)
  {
    v31 = v26;
    v32 = v56;
    sub_100016588(v31, v56, &qword_100781860, &qword_10063D2E0);
    v33 = sub_100058000(&qword_100781868, &qword_10063D2E8);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    (*v54)(v17, v32, v14);
    v36 = *v53;
    (*v53)(v27, v32 + v34, v8);
    v36(v11, v32 + v35, v8);
    v37 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v38 = TTRDerivedTreeLocation.index.getter();
    v39 = v52;
    TTRDerivedTreeLocation.parent.getter();
    v40 = TTRDerivedTreeLocation.index.getter();
    v41 = v51;
    v42 = v40;
    TTRDerivedTreeLocation.parent.getter();
    v43 = *&v37[qword_10078A548];
    if (!v43)
    {
      goto LABEL_13;
    }

    v44 = v43;
    sub_1000D4848(v17, v38, v39, v42, v41);

    sub_1000079B4(v41, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v39, &qword_100772140, &qword_10062D9F0);
    v45 = *v49;
    (*v49)(v11, v8);
    v45(v59, v8);
    (*v48)(v17, v14);
    v23 = v50;
    v22 = v58;
    v24 = v58 >= v50;
    if (v58 == v50)
    {
      goto LABEL_2;
    }

LABEL_3:
    v26 = v57;
    if (v24)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v28 = sub_100058000(&qword_100781868, &qword_10063D2E8);
    v29 = *(v28 - 8);
    sub_10000794C(v47 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v26, &qword_100781868, &qword_10063D2E8);
    v30 = __OFADD__(v22, 1);
    v58 = v22 + 1;
    v27 = v59;
    if (v30)
    {
      goto LABEL_12;
    }

    (*(v29 + 56))(v26, 0, 1, v28);
  }
}

void *sub_1003C78EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTREditingStateOption.InputType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v12[qword_10078A540];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = [result isEditing];

  if (v14)
  {
    if ([v3 isEditing])
    {
      if (qword_100767240 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_100781340);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowRemindersViewController: trying to start editing a reminder while in edit mode", v18, 2u);
      }

      goto LABEL_11;
    }

    result = *(*&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
    if (result)
    {
      [result setEditing:0 animated:1];
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_11:
  sub_10000794C(a2, v7, &unk_100781850, &unk_10063D2D0);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v11, enum case for TTREditingStateOption.InputType.unspecified(_:), v8);
    if (v19(v7, 1, v8) != 1)
    {
      sub_1000079B4(v7, &unk_100781850, &unk_10063D2D0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  sub_1003C3EF0(v21, v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_1003C7C3C(uint64_t a1)
{
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&v2[qword_10078A548];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v2;
  v5 = v3;
  v9 = sub_1000DE654(a1);

  if (!v9)
  {
    goto LABEL_6;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_100781340);
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "Tried createAndStartEditingNewHashtag but there is no cell containing the Reminder Item specified", v8, 2u);
    }

    goto LABEL_10;
  }

  TTRIRemindersListReminderCell.createAndStartEditingNewHashtag()();
LABEL_10:
}

void sub_1003C7DB8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v10 = &v86 - v9;
  v107 = type metadata accessor for IndexPath();
  v11 = *(v107 - 8);
  __chkstk_darwin(v107);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v113 - 8);
  *&v14 = __chkstk_darwin(v113).n128_u64[0];
  v108 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 viewIfLoaded];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = UIView.firstResponderDescendant.getter();

  v91 = v18;
  if (!v18)
  {
    return;
  }

  v105 = *(a1 + 16);
  if (!v105)
  {
    goto LABEL_86;
  }

  v20 = *(v13 + 16);
  v19 = v13 + 16;
  v103 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v21 = (v5 + 8);
  v22 = 0;
  v23 = *(v19 + 56);
  v101 = v21;
  v102 = v23;
  v99 = (v11 + 56);
  v89 = (v11 + 48);
  v88 = (v11 + 32);
  v87 = (v11 + 8);
  v24 = v20;
  v104 = v19;
  v98 = (v19 - 8);
  v96 = v4;
  v95 = v7;
  v100 = v10;
  v94 = v20;
  while (1)
  {
    v25 = v108;
    v24(v108, v103 + v102 * v22, v113);
    v110 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v26 = *&v110[qword_10078A548];
    if (!v26)
    {
      goto LABEL_95;
    }

    v109 = v26;
    v111 = sub_1000C84C8();
    v112 = v27;
    v29 = v28;
    v31 = v30;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!*(v29 + 16) || (v114 = v29, v32 = sub_1003AB294(v7), (v33 & 1) == 0))
    {

      (*v101)(v7, v4);
LABEL_18:
      (*v98)(v25, v113);
      v50 = v100;
      (*v99)(v100, 1, 1, v107);
      goto LABEL_19;
    }

    v34 = *(*(v114 + 56) + 8 * v32);
    v35 = *v101;

    v35(v7, v4);
    v36 = v34 & 0xC000000000000001;
    v97 = v22;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = __CocoaSet.startIndex.getter();
      v39 = v38;
      v40 = __CocoaSet.endIndex.getter();
      v42 = v41;
      v43 = static __CocoaSet.Index.== infix(_:_:)();
      sub_10000FBA0(v40, v42, 1);
      if (v43)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v44 = 0;
      v45 = (v34 + 56);
      v37 = 1 << *(v34 + 32);
      v46 = (v37 + 63) >> 6;
      while (1)
      {
        v48 = *v45++;
        v47 = v48;
        if (v48)
        {
          break;
        }

        v44 -= 64;
        if (!--v46)
        {
          v39 = *(v34 + 36);
          goto LABEL_17;
        }
      }

      v49 = __clz(__rbit64(v47));
      v39 = *(v34 + 36);
      if (v49 - v37 == v44)
      {
LABEL_17:
        sub_10000FBA0(v37, v39, v36 != 0);

        v4 = v96;
        v7 = v95;
        v25 = v108;
        v22 = v97;
        v24 = v94;
        goto LABEL_18;
      }

      v37 = v49 - v44;
    }

    v51 = v36 != 0;
    sub_10057E700(v37, v39, v36 != 0, v34);
    v53 = v52;
    sub_10000FBA0(v37, v39, v51);

    v54 = v112;
    if (*(v112 + 16))
    {
      break;
    }

    v71 = 1;
    v4 = v96;
    v7 = v95;
    v50 = v100;
    v72 = v107;
LABEL_55:
    (*v99)(v50, v71, 1, v72);

    if ((*v89)(v50, 1, v72) != 1)
    {
      v73 = v92;
      (*v88)(v92, v50, v72);
      v74 = v109;
      v75 = *&v109[qword_100771730];
      v76 = v72;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = [v75 cellForRowAtIndexPath:isa];

      (*v87)(v73, v76);
      if (v78)
      {
        v79 = [v91 isDescendantOfView:v78];

        (*v98)(v108, v113);
        v22 = v97;
        v24 = v94;
        if (v79)
        {
          goto LABEL_85;
        }
      }

      else
      {
        (*v98)(v108, v113);
        v22 = v97;
        v24 = v94;
      }

      goto LABEL_20;
    }

    (*v98)(v108, v113);
    v22 = v97;
    v24 = v94;
LABEL_19:
    sub_1000079B4(v50, &unk_100771B10, qword_10062E540);
LABEL_20:
    if (++v22 == v105)
    {
      goto LABEL_86;
    }
  }

  v55 = sub_1003B3EDC();
  v4 = v96;
  v7 = v95;
  v56 = v53;
  if ((v57 & 1) == 0)
  {
    v71 = 1;
    v50 = v100;
    goto LABEL_54;
  }

  v58 = *(*(v54 + 56) + 8 * v55);
  v93 = v53;
  v86 = v58;
  if ((v31 & 1) == 0)
  {
    if ((v58 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    v50 = v100;
    if (v58 >= *(v111 + 16))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

    v80 = *(v111 + 16 * v58 + 40);
    if (v80 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = 0;
    while (v81 != v82)
    {
      if ((v80 & 0xC000000000000001) != 0)
      {
        v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v84 = v83 == v93;
        v56 = v93;
        if (v84)
        {
LABEL_75:

          IndexPath.init(row:section:)();
          v71 = 0;
          goto LABEL_54;
        }
      }

      else
      {
        if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (*(v80 + 8 * v82 + 32) == v56)
        {
          goto LABEL_75;
        }
      }

      v62 = __OFADD__(v82++, 1);
      if (v62)
      {
        goto LABEL_90;
      }
    }

    v71 = 1;
LABEL_54:
    v72 = v107;
    goto LABEL_55;
  }

  Strong = swift_weakLoadStrong();

  v60 = 0;
  if (!Strong)
  {
LABEL_77:

    v85 = v60 - 1;
    if (__OFSUB__(v60, 1))
    {
      goto LABEL_94;
    }

    v4 = v96;
    v7 = v95;
    v50 = v100;
    v72 = v107;
    if (v85 < 0)
    {
      v71 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v71 = 0;
    }

    goto LABEL_55;
  }

  v61 = v53;
  v90 = v2;
  while (1)
  {
    v62 = __OFADD__(v60++, 1);
    if (v62)
    {
      goto LABEL_91;
    }

    v63 = Strong;
    swift_beginAccess();
    v64 = *(Strong + 64);
    if (!(v64 >> 62))
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        break;
      }

      goto LABEL_28;
    }

    v65 = _CocoaArrayWrapper.endIndex.getter();
    if (v65)
    {
      break;
    }

LABEL_28:

LABEL_29:
    Strong = swift_weakLoadStrong();

    v61 = v63;
    if (!Strong)
    {
      goto LABEL_77;
    }
  }

  v106 = v64 & 0xFFFFFFFFFFFFFF8;

  v66 = 0;
  while (2)
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v68 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_82;
      }

LABEL_40:
      if (v67 == v61)
      {

        goto LABEL_49;
      }

      v62 = __OFADD__(v60, 1);
      v69 = v60 + 1;
      if (v62)
      {
        goto LABEL_83;
      }

      if (*(v67 + 48))
      {
        v115 = 0;
        sub_10023C598(v67, &v115);
        v70 = v115;
        *(v67 + 40) = v115;
        *(v67 + 48) = 0;
      }

      else
      {
        v70 = *(v67 + 40);
      }

      v62 = __OFADD__(v69, v70);
      v60 = v69 + v70;
      if (v62)
      {
        goto LABEL_84;
      }

      ++v66;
      if (v68 == v65)
      {

LABEL_49:
        v2 = v90;
        goto LABEL_29;
      }

      continue;
    }

    break;
  }

  if (v66 >= *(v106 + 16))
  {
    __break(1u);
    goto LABEL_89;
  }

  v67 = *(v64 + 8 * v66 + 32);

  v68 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    goto LABEL_40;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  [v91 resignFirstResponder];
LABEL_86:
}

void sub_1003C8908(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  sub_1000E5C98(a1, a2, a3);

  v17 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView);
  v18 = *&v17[qword_10078A548];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = v17;
  v21 = sub_1000DE654(a1);

  if (!v21)
  {
LABEL_10:
    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);
    return;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  v22 = swift_dynamicCastClass();
  if (!v22 || (v23 = v22, (TTRIRemindersListReminderCell.isViewModelValid.getter() & 1) == 0))
  {

    goto LABEL_10;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100781340);
  v25 = v47;
  v26 = *(v47 + 16);
  v27 = v49;
  v26(v15, a1, v49);
  v28 = v21;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v45 = v30;
  v46 = v29;
  v31 = os_log_type_enabled(v29, v30);
  v32 = v48;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v33 = 136315394;
    v26(v32, v15, v27);
    v34 = String.init<A>(describing:)();
    v35 = v26;
    v36 = v28;
    v38 = v37;
    (*(v25 + 8))(v15, v49);
    v39 = sub_100004060(v34, v38, &v50);
    v28 = v36;
    v26 = v35;
    v32 = v48;

    *(v33 + 4) = v39;
    v27 = v49;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v23;
    v40 = v43;
    *v43 = v23;
    v41 = v28;
    v42 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "Target scroll item cell already loaded {item: %s, cell: %@}", v33, 0x16u);
    sub_1000079B4(v40, &unk_10076DF80, &qword_10062F730);

    sub_100004758(v44);
  }

  else
  {

    (*(v25 + 8))(v15, v27);
  }

  v26(v32, a1, v27);
  sub_100058000(&qword_1007845B0, &qword_10063D2C0);
  swift_allocObject();
  Promise.init(value:)();
}

uint64_t sub_1003C8DF4(uint64_t a1, int a2)
{
  LODWORD(v61) = a2;
  v67 = type metadata accessor for TTRRemindersListHighlightTarget();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v3;
  v63 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = v9;
  __chkstk_darwin(v10);
  v72 = &v51[-v11];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static os_signpost_type_t.begin.getter();
  v68 = objc_opt_self();
  v16 = [v68 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v18 = *(v13 + 8);
  v17 = v13 + 8;
  v69 = v15;
  v70 = v18;
  v18(v15, v12);
  v19 = TTRRemindersListHighlightTarget.targetItems.getter();
  v20 = v19;
  if (*(v19 + 16))
  {
    v57 = v17;
    v58 = v12;
    v21 = *(v8 + 80);
    v22 = *(v8 + 16);
    v55 = v8 + 16;
    v56 = v22;
    v22(v72, (v19 + ((v21 + 32) & ~v21)), v7);
    sub_1003C48A4(v20);
    v23 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
    v53 = v7;
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    TTRRemindersListHighlightTarget.TargetItem.item.getter();
    v54 = v8;
    v25 = v61 & 1;
    v52 = v25;
    sub_1003C4EFC(v6, v24, v25);
    v61 = v26;
    (*(v59 + 8))(v6, v60);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v65;
    v29 = v63;
    v30 = v67;
    (*(v65 + 16))(v63, a1, v67);
    v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v32 = (v62 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    (*(v28 + 32))(v33 + v31, v29, v30);
    v34 = v33 + v32;
    *v34 = v20;
    *(v34 + 8) = v25;
    v35 = zalgo.getter();
    v36 = dispatch thunk of Promise.then<A>(on:closure:)();

    v37 = v66;
    v38 = v53;
    v56(v66, v72, v53);
    v39 = (v21 + 24) & ~v21;
    v40 = v39 + v64;
    v12 = v58;
    v41 = swift_allocObject();
    v42 = v71;
    *(v41 + 16) = v71;
    v43 = v54;
    (*(v54 + 32))(v41 + v39, v37, v38);
    *(v41 + v40) = v52;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1003DE2D8;
    *(v44 + 24) = v41;
    v45 = v42;
    v46 = zalgo.getter();
    v47 = v36;
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v43 + 8))(v72, v38);
  }

  else
  {

    sub_100058000(&unk_10078A2F0, &unk_100631BC0);
    swift_allocObject();
    v47 = Promise.init(value:)();
  }

  static os_signpost_type_t.end.getter();
  v48 = [v68 ppt];
  v49 = v69;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v70(v49, v12);
  return v47;
}

void sub_1003C9454(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v130 = a5;
  v154 = a4;
  v148 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v148 - 8);
  __chkstk_darwin(v148);
  v132 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = v117 - v9;
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v123 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v146 = v117 - v13;
  v145 = type metadata accessor for IndexPath();
  v128 = *(v145 - 8);
  __chkstk_darwin(v145);
  v15 = v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v122 = v117 - v17;
  __chkstk_darwin(v18);
  v120 = v117 - v19;
  v140 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v140 - 8);
  __chkstk_darwin(v140);
  v134 = v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListHighlightTarget();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v127 = v15;
    if (qword_100767240 != -1)
    {
      goto LABEL_107;
    }

    while (1)
    {
      v153 = v20;
      v26 = type metadata accessor for Logger();
      sub_100003E30(v26, qword_100781340);
      (*(v23 + 2))(v25, a3, v22);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v152 = v6;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v155 = v31;
        *v30 = 136315138;
        sub_1003DF088(&qword_100781838, &type metadata accessor for TTRRemindersListHighlightTarget, &protocol conformance descriptor for TTRRemindersListHighlightTarget);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v23 + 1))(v25, v22);
        v35 = sub_100004060(v32, v34, &v155);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "TTRIRemindersListContentViewController: highlight item briefly {target: %s}", v30, 0xCu);
        sub_100004758(v31);
      }

      else
      {

        (*(v23 + 1))(v25, v22);
      }

      v36 = v154;
      v118 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically;
      *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically) = 1;
      v25 = v146;
      v6 = v147;
      v23 = v134;
      v139 = *(v36 + 2);
      if (!v139)
      {
LABEL_98:
        v116 = Strong;
        *(Strong + v118) = 0;

        return;
      }

      v37 = 0;
      v38 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
      v144 = (v152 + 8);
      v136 = (v128 + 56);
      v124 = (v128 + 48);
      v119 = (v128 + 32);
      v129 = (v128 + 8);
      v135 = (v153 + 8);
      v138 = &v36[(*(v38 + 80) + 32) & ~*(v38 + 80)];
      v137 = *(v38 + 72);
      v151 = v128 + 16;
      while (1)
      {
        v39 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
        TTRRemindersListHighlightTarget.TargetItem.item.getter();
        v40 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
        v150 = v39;
        v41 = *&v39[qword_10078A548];
        if (!v41)
        {
          goto LABEL_112;
        }

        v42 = v40;
        v154 = v41;
        v153 = sub_1000C84C8();
        v44 = v43;
        v20 = v45;
        LODWORD(v141) = v46;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v47 = *(v44 + 16);
        LODWORD(v152) = v42;
        if (!v47 || (v48 = sub_1003AB294(v6), (v49 & 1) == 0))
        {

          v143 = *v144;
          v143(v6, v148);
          v60 = v154;
          goto LABEL_23;
        }

        v50 = *(*(v44 + 56) + 8 * v48);
        v51 = *v144;

        v143 = v51;
        v51(v6, v148);
        v52 = v50 & 0xC000000000000001;
        v149 = v37;
        v133 = v44;
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = __CocoaSet.startIndex.getter();
          v55 = v54;
          v56 = __CocoaSet.endIndex.getter();
          v58 = v57;
          v59 = static __CocoaSet.Index.== infix(_:_:)();
          sub_10000FBA0(v56, v58, 1);
          v60 = v154;
          if (v59)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v61 = 0;
          v62 = (v50 + 56);
          v53 = 1 << *(v50 + 32);
          v63 = (v53 + 63) >> 6;
          while (1)
          {
            v65 = *v62++;
            v64 = v65;
            if (v65)
            {
              break;
            }

            v61 -= 64;
            if (!--v63)
            {
              v55 = *(v50 + 36);
              v60 = v154;
              goto LABEL_22;
            }
          }

          v66 = __clz(__rbit64(v64));
          v55 = *(v50 + 36);
          v60 = v154;
          if (v66 - v53 == v61)
          {
LABEL_22:
            sub_10000FBA0(v53, v55, v52 != 0);

            v25 = v146;
            v6 = v147;
            v23 = v134;
            v37 = v149;
LABEL_23:
            (*v136)(v25, 1, 1, v145);
LABEL_24:
            sub_1000079B4(v25, &unk_100771B10, qword_10062E540);
            if (v152)
            {
              goto LABEL_25;
            }

            goto LABEL_8;
          }

          v53 = v66 - v61;
        }

        sub_10057E700(v53, v55, v52 != 0, v50);
        v22 = v94;
        sub_10000FBA0(v53, v55, v52 != 0);

        v95 = *(v20 + 16);
        v126 = v22;
        if (!v95 || (v96 = sub_1003B3EDC(), (v97 & 1) == 0))
        {

          v104 = 1;
          v25 = v146;
          v6 = v147;
          goto LABEL_68;
        }

        v98 = *(*(v20 + 56) + 8 * v96);
        v25 = v146;
        v6 = v147;
        if ((v141 & 1) == 0)
        {
          if ((v98 & 0x8000000000000000) == 0)
          {
            v23 = v126;
            if (v98 < *(v153 + 16))
            {
              v114 = *(v153 + 16 * v98 + 40);
              v22 = v114 & 0xFFFFFFFFFFFFFF8;
              if (v114 >> 62)
              {
                a3 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                a3 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v25 = 0;
              while (1)
              {
                if (a3 == v25)
                {

                  v104 = 1;
                  v25 = v146;
                  v6 = v147;
                  v60 = v154;
                  goto LABEL_68;
                }

                if ((v114 & 0xC000000000000001) != 0)
                {
                  v6 = v98;
                  v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  swift_unknownObjectRelease();
                  if (v115 == v23)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  if (v25 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_104;
                  }

                  if (*(v114 + 8 * v25 + 32) == v23)
                  {
LABEL_92:

                    v25 = v146;
                    IndexPath.init(row:section:)();

                    v104 = 0;
                    v6 = v147;
                    v60 = v154;
                    goto LABEL_68;
                  }
                }

                v101 = __OFADD__(v25++, 1);
                if (v101)
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            return;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v117[1] = *(*(v20 + 56) + 8 * v96);
        v99 = v126;
        v100 = swift_weakLoadStrong();

        a3 = 0;
        if (v100)
        {
          break;
        }

LABEL_93:

        if (__OFSUB__(a3, 1))
        {
          goto LABEL_111;
        }

        if (a3 - 1 < 0)
        {

          v104 = 1;
        }

        else
        {
          IndexPath.init(row:section:)();

          v104 = 0;
        }

LABEL_68:

        v105 = v145;
        (*v136)(v25, v104, 1, v145);

        if ((*v124)(v25, 1, v105) == 1)
        {
          v23 = v134;
          v37 = v149;
          goto LABEL_24;
        }

        v106 = v120;
        (*v119)(v120, v25, v105);
        v107 = *&v60[qword_100771730];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v107 highlightRowAtIndexPath:isa animated:v130 & 1 scrollPosition:0];

        (*v129)(v106, v105);
        v23 = v134;
        v37 = v149;
        if (v152)
        {
LABEL_25:
          v149 = v37;
          sub_1000C84C8();
          v68 = v67;
          v69 = v132;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          if (*(v68 + 16) && (v70 = sub_1003AB294(v69), (v71 & 1) != 0))
          {
            v72 = *(*(v68 + 56) + 8 * v70);

            v143(v69, v148);
            v73 = sub_1000A97B4(v72);

            if (!v73)
            {
              goto LABEL_31;
            }

            v74 = sub_1000C84C8();
            v76 = v123;
            sub_1000C7C0C(v73, v74, v77, v78, v75 & 1, v123);

            v79 = v145;
            if ((*v124)(v76, 1, v145) == 1)
            {

              sub_1000079B4(v76, &unk_100771B10, qword_10062E540);
              goto LABEL_31;
            }

            v92 = (*v119)(v122, v76, v79);
            v25 = v146;
            v6 = v147;
            if (*(v73 + 48))
            {
              v156 = 0;
              v92 = sub_10023C598(v73, &v156);
              v93 = v156;
              *(v73 + 40) = v156;
              *(v73 + 48) = 0;
            }

            else
            {
              v93 = *(v73 + 40);
            }

            v109 = v129;
            if (v93 < 0)
            {
              __break(1u);
              goto LABEL_109;
            }

            __chkstk_darwin(v92);
            v110 = v122;
            v117[-2] = v122;
            v111 = v125;
            sub_1003996D0(sub_1003DE3A0, &v117[-4], 0, v112);
            v80 = v113;
            v125 = v111;

            (*v109)(v110, v145);
            v81 = *(v80 + 2);
            if (!v81)
            {
LABEL_75:

              v60 = v150;
LABEL_76:
              v23 = v134;
              v37 = v149;
              goto LABEL_9;
            }
          }

          else
          {
            v143(v69, v148);

LABEL_31:
            v80 = _swiftEmptyArrayStorage;
            v25 = v146;
            v6 = v147;
            v81 = _swiftEmptyArrayStorage[2];
            if (!v81)
            {
              goto LABEL_75;
            }
          }

          v154 = qword_100771730;
          v82 = (*(v128 + 80) + 32) & ~*(v128 + 80);
          v143 = v80;
          v83 = v80 + v82;
          v84 = *(v128 + 72);
          v152 = *(v128 + 16);
          v153 = v84;
          v85 = v145;
          v86 = v129;
          v87 = v60;
          v88 = v127;
          v89 = v130;
          do
          {
            (v152)(v88, v83, v85);
            v90 = *&v154[v87];
            v91 = IndexPath._bridgeToObjectiveC()().super.isa;
            (*v86)(v88, v85);
            [v90 highlightRowAtIndexPath:v91 animated:v89 & 1 scrollPosition:0];

            v83 += v153;
            --v81;
          }

          while (v81);

          v60 = v150;
          v25 = v146;
          v6 = v147;
          goto LABEL_76;
        }

LABEL_8:

LABEL_9:
        ++v37;

        (*v135)(v23, v140);
        if (v37 == v139)
        {
          goto LABEL_98;
        }
      }

      v121 = v20;
      while (1)
      {
        v101 = __OFADD__(a3++, 1);
        if (v101)
        {
          goto LABEL_106;
        }

        swift_beginAccess();
        v131 = v100;
        v25 = *(v100 + 64);
        if (v25 >> 62)
        {
          break;
        }

        v102 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v102)
        {
          goto LABEL_48;
        }

LABEL_43:

LABEL_44:
        v22 = v131;
        v100 = swift_weakLoadStrong();

        v99 = v22;
        v25 = v146;
        v6 = v147;
        v60 = v154;
        if (!v100)
        {
          goto LABEL_93;
        }
      }

      v102 = _CocoaArrayWrapper.endIndex.getter();
      if (!v102)
      {
        goto LABEL_43;
      }

LABEL_48:
      v20 = v25 & 0xC000000000000001;
      v141 = v25 & 0xFFFFFFFFFFFFFF8;

      v103 = 0;
      while (2)
      {
        if (v20)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = (v103 + 1);
          if (__OFADD__(v103, 1))
          {
            goto LABEL_100;
          }

LABEL_55:
          if (v6 == v99)
          {

            goto LABEL_64;
          }

          v101 = __OFADD__(a3++, 1);
          if (v101)
          {
            goto LABEL_101;
          }

          if (*(v6 + 48))
          {
            v156 = 0;
            sub_10023C598(v6, &v156);
            v22 = v156;
            *(v6 + 40) = v156;
            *(v6 + 48) = 0;
          }

          else
          {
            v22 = *(v6 + 40);
          }

          v101 = __OFADD__(a3, v22);
          a3 += v22;
          if (v101)
          {
            goto LABEL_102;
          }

          ++v103;
          if (v23 == v102)
          {

LABEL_64:
            v20 = v121;
            goto LABEL_44;
          }

          continue;
        }

        break;
      }

      if (v103 >= *(v141 + 16))
      {
        goto LABEL_103;
      }

      v6 = *(v25 + 8 * v103 + 32);

      v23 = (v103 + 1);
      if (!__OFADD__(v103, 1))
      {
        goto LABEL_55;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      swift_once();
    }
  }
}