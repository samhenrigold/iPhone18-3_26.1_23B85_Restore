uint64_t sub_1004A3308(unint64_t a1, char *a2, char *a3, char *a4)
{
  v211 = a1;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = v178 - v13;
  __chkstk_darwin(v15, v16);
  v187 = (v178 - v17);
  __chkstk_darwin(v18, v19);
  v181 = v178 - v20;
  __chkstk_darwin(v21, v22);
  v180 = v178 - v23;
  __chkstk_darwin(v24, v25);
  v194 = v178 - v26;
  __chkstk_darwin(v27, v28);
  v30 = (v178 - v29);
  __chkstk_darwin(v31, v32);
  v178[0] = v178 - v33;
  __chkstk_darwin(v34, v35);
  v189 = (v178 - v36);
  __chkstk_darwin(v37, v38);
  v185 = v178 - v39;
  __chkstk_darwin(v40, v41);
  v184 = v178 - v42;
  __chkstk_darwin(v43, v44);
  v205 = v178 - v45;
  v210 = type metadata accessor for Date();
  v46 = *(v210 - 8);
  __chkstk_darwin(v210, v47);
  v179 = v178 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v192 = v178 - v51;
  __chkstk_darwin(v52, v53);
  v183 = v178 - v54;
  __chkstk_darwin(v55, v56);
  v196 = v178 - v57;
  v58 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58, v60);
  v182 = (v178 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v62, v63);
  v191 = (v178 - v64);
  __chkstk_darwin(v65, v66);
  v206 = (v178 - v67);
  __chkstk_darwin(v68, v69);
  v204 = (v178 - v70);
  __chkstk_darwin(v71, v72);
  v188 = (v178 - v73);
  __chkstk_darwin(v74, v75);
  v195 = (v178 - v76);
  __chkstk_darwin(v77, v78);
  v209 = v178 - v79;
  __chkstk_darwin(v80, v81);
  v207 = v178 - v82;
  v198 = *(v83 + 72);
  if (!v198)
  {
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v84 = &a2[-v211];
  if (&a2[-v211] == 0x8000000000000000 && v198 == -1)
  {
    goto LABEL_119;
  }

  v85 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v198 == -1)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v215 = v211;
  v213 = a4;
  if (v84 / v198 >= v85 / v198)
  {
    v184 = v14;
    v88 = v85 / v198 * v198;
    if (a4 < a2 || &a2[v88] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v135 = &a4[v88];
    if (v88 < 1)
    {
      v140 = &a4[v88];
      goto LABEL_116;
    }

    v183 = v10;
    v136 = -v198;
    v201 = (v59 + 88);
    v202 = (v59 + 16);
    LODWORD(v200) = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    LODWORD(v190) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v189 = (v59 + 96);
    v199 = (v46 + 56);
    v203 = (v59 + 8);
    v198 = v46 + 48;
    LODWORD(v185) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v188 = (v46 + 32);
    v186 = (v46 + 8);
    v137 = &a4[v88];
    v138 = v210;
    v139 = v182;
    v140 = v135;
    v197 = a4;
    v207 = v136;
    while (1)
    {
      v178[0] = v140;
      v141 = a2;
      a2 += v136;
      v208 = a2;
      v196 = v141;
      while (1)
      {
        if (v141 <= v211)
        {
          v215 = v141;
          v212 = v178[0];
          goto LABEL_117;
        }

        v205 = a3;
        v195 = v140;
        v143 = *v202;
        v144 = v204;
        v209 = (v137 + v136);
        v143(v204);
        (v143)(v206, a2, v58);
        v145 = v191;
        (v143)(v191, v144, v58);
        v146 = *v201;
        v147 = (*v201)(v145, v58);
        if (v147 == v200)
        {
          (*v203)(v145, v58);
          v148 = *v199;
          v149 = v194;
          (*v199)(v194, 1, 1, v138);
          goto LABEL_83;
        }

        if (v147 == v190)
        {
          (*v189)(v145, v58);
          v150 = *v145;
          v151 = [v150 pinnedDate];
          if (!v151)
          {
            v154 = 1;
            v152 = v180;
            goto LABEL_82;
          }

          v152 = v180;
        }

        else
        {
          v152 = v181;
          if (v147 != v185)
          {
            goto LABEL_121;
          }

          (*v189)(v145, v58);
          v150 = *v145;
          v151 = [v150 pinnedDate];
          if (!v151)
          {
            v154 = 1;
            goto LABEL_82;
          }
        }

        v153 = v151;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v154 = 0;
LABEL_82:

        v148 = *v199;
        v155 = v154;
        v138 = v210;
        (*v199)(v152, v155, 1, v210);
        v149 = v194;
        sub_100031B58(v152, v194, &unk_100938850, qword_100795AE0);
LABEL_83:
        v156 = *v198;
        if ((*v198)(v149, 1, v138) == 1)
        {
          sub_1000050A4(v149, &unk_100938850, qword_100795AE0);
          v157 = 1;
          a2 = v208;
          goto LABEL_101;
        }

        v193 = *v188;
        v193(v192, v149, v138);
        (v143)(v139, v206, v58);
        v158 = v146(v139, v58);
        if (v158 == v200)
        {
          (*v203)(v139, v58);
          v159 = v187;
          v148(v187, 1, 1, v138);
          goto LABEL_98;
        }

        if (v158 == v190)
        {
          (*v189)(v139, v58);
          v160 = *v139;
          v161 = [*v139 pinnedDate];
          if (!v161)
          {
            v165 = 1;
            v166 = &v215;
LABEL_96:
            v163 = *(v166 - 32);
            goto LABEL_97;
          }

          v162 = &v215;
        }

        else
        {
          if (v158 != v185)
          {
            goto LABEL_121;
          }

          (*v189)(v139, v58);
          v160 = *v139;
          v161 = [*v139 pinnedDate];
          if (!v161)
          {
            v165 = 1;
            v166 = &v214;
            goto LABEL_96;
          }

          v162 = &v214;
        }

        v163 = *(v162 - 32);
        v164 = v161;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = 0;
LABEL_97:

        v167 = v165;
        v138 = v210;
        v148(v163, v167, 1, v210);
        v159 = v187;
        sub_100031B58(v163, v187, &unk_100938850, qword_100795AE0);
LABEL_98:
        v168 = v156(v159, 1, v138);
        a2 = v208;
        if (v168 == 1)
        {
          (*v186)(v192, v138);
          sub_1000050A4(v159, &unk_100938850, qword_100795AE0);
          v157 = 0;
        }

        else
        {
          v169 = v179;
          v193(v179, v159, v138);
          v170 = v192;
          v157 = static Date.< infix(_:_:)();
          v171 = v138;
          v193 = v137;
          v172 = *v186;
          (*v186)(v169, v171);
          v173 = v170;
          v139 = v182;
          v172(v173, v171);
          v137 = v193;
        }

LABEL_101:
        v174 = v205;
        a3 = &v207[v205];
        v175 = *v203;
        (*v203)(v206, v58);
        v175(v204, v58);
        if (v157)
        {
          break;
        }

        v140 = v209;
        if (v174 < v137 || a3 >= v137)
        {
          swift_arrayInitWithTakeFrontToBack();
          v142 = v197;
          v138 = v210;
        }

        else
        {
          v142 = v197;
          v138 = v210;
          if (v174 != v137)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v137 = v140;
        v136 = v207;
        v141 = v196;
        if (v209 <= v142)
        {
          a2 = v196;
          goto LABEL_116;
        }
      }

      if (v174 < v196 || a3 >= v196)
      {
        swift_arrayInitWithTakeFrontToBack();
        v176 = v197;
        v138 = v210;
        v140 = v195;
      }

      else
      {
        v176 = v197;
        v138 = v210;
        v140 = v195;
        if (v174 != v196)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v136 = v207;
      if (v137 <= v176)
      {
LABEL_116:
        v215 = a2;
        v212 = v140;
        goto LABEL_117;
      }
    }
  }

  v86 = v84 / v198 * v198;
  v182 = v30;
  if (a4 < v211 || v211 + v86 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v87 = v210;
  }

  else
  {
    v87 = v210;
    if (a4 != v211)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v194 = &a4[v86];
  v212 = &a4[v86];
  v89 = v86 < 1 || a2 >= a3;
  v90 = v205;
  if (!v89)
  {
    v92 = *(v59 + 16);
    v91 = v59 + 16;
    v203 = (v91 + 72);
    v204 = v92;
    LODWORD(v202) = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    LODWORD(v192) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v190 = (v91 + 80);
    v199 = (v46 + 56);
    v200 = v91;
    v206 = (v91 - 8);
    LODWORD(v186) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v201 = (v46 + 48);
    v191 = (v46 + 32);
    v187 = (v46 + 8);
    v193 = a3;
    while (1)
    {
      v93 = v207;
      v94 = v204;
      (v204)(v207, a2, v58);
      (v94)(v209, a4, v58);
      v95 = v195;
      (v94)(v195, v93, v58);
      v96 = *v203;
      v97 = (*v203)(v95, v58);
      if (v97 == v202)
      {
        (*v206)(v95, v58);
        v98 = *v199;
        (*v199)(v90, 1, 1, v87);
      }

      else if (v97 == v192)
      {
        (*v190)(v95, v58);
        v99 = *v95;
        v100 = [v99 pinnedDate];
        if (v100)
        {
          v101 = v184;
          v102 = v100;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v103 = 0;
        }

        else
        {
          v103 = 1;
          v101 = v184;
        }

        v98 = *v199;
        v110 = v103;
        v87 = v210;
        (*v199)(v101, v110, 1, v210);
        v111 = v101;
        v90 = v205;
        sub_100031B58(v111, v205, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v208 = a2;
        v104 = a4;
        v105 = v185;
        if (v97 != v186)
        {
          goto LABEL_121;
        }

        (*v190)(v95, v58);
        v106 = *v95;
        v107 = [v106 pinnedDate];
        if (v107)
        {
          v108 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v109 = 0;
        }

        else
        {
          v109 = 1;
        }

        v98 = *v199;
        v112 = v109;
        v87 = v210;
        (*v199)(v105, v112, 1, v210);
        v90 = v205;
        sub_100031B58(v105, v205, &unk_100938850, qword_100795AE0);
        a4 = v104;
        a2 = v208;
      }

      v113 = *v201;
      if ((*v201)(v90, 1, v87) == 1)
      {
        sub_1000050A4(v90, &unk_100938850, qword_100795AE0);
        v114 = *v206;
        (*v206)(v209, v58);
        v114(v207, v58);
        v115 = v193;
        v116 = v198;
        goto LABEL_35;
      }

      v208 = a2;
      v117 = *v191;
      (*v191)(v196, v90, v87);
      v118 = v188;
      (v204)(v188, v209, v58);
      v119 = v96(v118, v58);
      if (v119 != v202)
      {
        break;
      }

      (*v206)(v118, v58);
      v120 = v189;
      v98(v189, 1, 1, v87);
LABEL_53:
      if ((v113)(v120, 1, v87) == 1)
      {
        (*v187)(v196, v87);
        sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
        v128 = *v206;
        (*v206)(v209, v58);
        v128(v207, v58);
        a2 = v208;
        v115 = v193;
        v116 = v198;
LABEL_56:
        if (v211 < a4 || v211 >= &a4[v116])
        {
          swift_arrayInitWithTakeFrontToBack();
          v87 = v210;
        }

        else
        {
          v87 = v210;
          if (v211 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v213 = &a4[v116];
        a4 += v116;
        goto LABEL_62;
      }

      v129 = v183;
      v117(v183, v120, v87);
      v130 = v196;
      v131 = v87;
      v132 = static Date.< infix(_:_:)();
      v133 = *v187;
      (*v187)(v129, v131);
      v133(v130, v131);
      v134 = *v206;
      (*v206)(v209, v58);
      v134(v207, v58);
      a2 = v208;
      v115 = v193;
      v116 = v198;
      if ((v132 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      if (v211 < a2 || v211 >= &a2[v116])
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v116;
        v87 = v210;
      }

      else
      {
        v87 = v210;
        if (v211 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v116;
      }

LABEL_62:
      v211 += v116;
      v215 = v211;
      v90 = v205;
      if (a4 >= v194 || a2 >= v115)
      {
        goto LABEL_117;
      }
    }

    v197 = a4;
    if (v119 == v192)
    {
      (*v190)(v118, v58);
      v121 = *v118;
      v122 = [v121 pinnedDate];
      v123 = v178[0];
      if (!v122)
      {
        v124 = 1;
LABEL_52:

        v126 = v124;
        v87 = v210;
        v98(v123, v126, 1, v210);
        v127 = v123;
        v120 = v189;
        sub_100031B58(v127, v189, &unk_100938850, qword_100795AE0);
        a4 = v197;
        goto LABEL_53;
      }
    }

    else
    {
      if (v119 != v186)
      {
        goto LABEL_121;
      }

      (*v190)(v118, v58);
      v121 = *v118;
      v122 = [v121 pinnedDate];
      if (!v122)
      {
        v124 = 1;
        v123 = v182;
        goto LABEL_52;
      }

      v123 = v182;
    }

    v125 = v122;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = 0;
    goto LABEL_52;
  }

LABEL_117:
  sub_1005589E0(&v215, &v213, &v212);
  return 1;
}

uint64_t sub_1004A4820(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_1004A4B60(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_1004A5554(v16, v7, v19);
    v12 = v19[0];
  }

  return v12;
}

uint64_t sub_1004A49C0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_1004A4D40(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_1004A5588(v16, v7, v19);
    v12 = v19[0];
  }

  return v12;
}

void sub_1004A4B60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v34 = a3 + 32;
  v8 = a4 + 56;
  v33 = v7;
  while (2)
  {
    v31 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v34 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v21 = -1 << *(a4 + 32);
          v22 = v13 & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;
          v11, v14, v15, v16, v17, v18, v19, v20;
          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v25 = (*(a4 + 48) + 16 * v22);
        v14 = v25[1];
        if (*v25 != v12 || v14 != v11)
        {
          v27 = ~v21;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v22 = (v22 + 1) & v27;
            v23 = v22 >> 6;
            v24 = 1 << v22;
            if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) == 0)
            {
              v7 = v33;
              goto LABEL_5;
            }

            v28 = (*(a4 + 48) + 16 * v22);
            v14 = v28[1];
            if (*v28 == v12 && v14 == v11)
            {
              break;
            }
          }
        }

        v11, v14, v15, v16, v17, v18, v19, v20;
        v29 = a1[v23];
        a1[v23] = v29 | v24;
        if ((v29 & v24) == 0)
        {
          break;
        }

        v7 = v33;
        v6 = v9;
        if (v9 == v33)
        {
          goto LABEL_24;
        }
      }

      v5 = v31 + 1;
      v7 = v33;
      v6 = v9;
      if (!__OFADD__(v31, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_1001A0BCC(a1, a2, v31, a4);
}

void sub_1004A4D40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_100030E90(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_28;
    }

    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    type metadata accessor for REMObjectID_Codable();
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_10001B860(v4);

        sub_1001A0DF0(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = static NSObject.== infix(_:_:)();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1004A507C(void *a1, void *a2, uint64_t a3)
{
  v6 = _s5CacheVMa(0);
  __chkstk_darwin(v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v10 - 8) + 16))(v9, a3, v10);
  *&v9[*(v6 + 20)] = a1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v11 = a1;
  PropertyListEncoder.init()();
  sub_100030E90(&qword_100948BD8, _s5CacheVMa, &unk_1007ACC80);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14 = v13;
  if (qword_100936260 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100948A78);
  sub_100029344(v12, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    sub_10001BBA0(v12, v14);
LABEL_16:

    sub_100029344(v12, v14);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v12, v14);
    [a2 setAccountsListCategorizedCountsCache:isa];

    sub_10001BBA0(v12, v14);
    return sub_100025434(v9, _s5CacheVMa);
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v19 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_15;
    }

    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v14);
LABEL_15:
    *(result + 4) = v20;
    v24 = result;
    sub_10001BBA0(v12, v14);
    _os_log_impl(&_mh_execute_header, v16, v17, "REMAccountsListDataView.ReminderCounts Saving cache data size %ld", v24, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v20) = HIDWORD(v12) - v12;
  if (!__OFSUB__(HIDWORD(v12), v12))
  {
    v20 = v20;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004A54EC()
{
  result = qword_100948BC8;
  if (!qword_100948BC8)
  {
    sub_1000060C8(255, &qword_100939678, NSPropertyDescription_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948BC8);
  }

  return result;
}

uint64_t sub_1004A55B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t *sub_1004A55F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void sub_1004A56BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t sub_1004A5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_1004A57B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_1004A5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1004A58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1004A594C(uint64_t a1)
{
  result = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1004A59F8()
{
  result = qword_100948D00;
  if (!qword_100948D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D00);
  }

  return result;
}

unint64_t sub_1004A5A50()
{
  result = qword_100948D08;
  if (!qword_100948D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D08);
  }

  return result;
}

unint64_t sub_1004A5AA8()
{
  result = qword_100948D10;
  if (!qword_100948D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948D10);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004A5B2C(void *a1)
{
  v4 = *v1;
  v81 = 0;
  v5 = [a1 remObjectIDWithError:&v81];
  if (v5)
  {
    v6 = v5;
    v7 = v81;
    v8 = [a1 account];
    if (v8 && (v9 = v8, v10 = [v8 remObjectID], v9, v10))
    {
      v11 = [a1 displayName];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v14;

        v15 = sub_1004A6BD4(a1, v6, v10, v13, v4);
        if (v2)
        {

          v4, v23, v24, v25, v26, v27, v28, v29;
        }

        else
        {
          v73 = v15;
          v4, v16, v17, v18, v19, v20, v21, v22;
          v4 = v73;
          -[RDXPCStorePerformer setMinimumSupportedVersion:](v4, "setMinimumSupportedVersion:", [a1 minimumSupportedVersion]);
          -[RDXPCStorePerformer setEffectiveMinimumSupportedVersion:](v4, "setEffectiveMinimumSupportedVersion:", [a1 effectiveMinimumSupportedVersion]);
          [(RDXPCStorePerformer *)v4 setResolutionTokenMap:0];
          v74 = [a1 resolutionTokenMapData];
          if (v74)
          {
            v75 = v74;
            v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;

            v79.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v76, v78);
          }

          else
          {
            v79.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v4 setResolutionTokenMapData:v79.super.isa];
        }
      }

      else
      {
        if (qword_100936270 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100948D30);
        v54 = v6;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = v4;
          v82 = v80;
          *v57 = 136315394;
          swift_getMetatypeMetadata();
          v59 = String.init<A>(describing:)();
          v61 = v60;
          v62 = sub_10000668C(v59, v60, &v82);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v57 + 4) = v62;
          *(v57 + 12) = 2112;
          *(v57 + 14) = v54;
          *v58 = v6;
          v70 = v54;
          _os_log_impl(&_mh_execute_header, v55, v56, "%s: cdTemplateSection.displayName is nil {cdTemplateSection.remObjectID: %@}", v57, 0x16u);
          sub_1000050A4(v58, &unk_100938E70, &unk_100797230);

          sub_10000607C(v80);
        }

        v71 = objc_opt_self();
        type metadata accessor for REMCDTemplateSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v71 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936270 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_100948D30);
      v31 = v6;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v81 = v4;
        v82 = v36;
        *v34 = 136315394;
        swift_getMetatypeMetadata();
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v82);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v31;
        *v35 = v6;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s: cdTemplateSection.account is nil {cdTemplateSection.remObjectID: %@}", v34, 0x16u);
        sub_1000050A4(v35, &unk_100938E70, &unk_100797230);

        sub_10000607C(v36);
      }

      v49 = objc_opt_self();
      type metadata accessor for REMCDTemplateSection();
      v50 = swift_getObjCClassFromMetadata();
      v4 = String._bridgeToObjectiveC()();
      [v49 unexpectedNilPropertyWithClass:v50 property:v4];

      swift_willThrow();
    }
  }

  else
  {
    v51 = v81;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

Swift::Int sub_1004A61F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xEC00000065746144;
  if (v1 != 2)
  {
    v3 = 0xEB00000000656D61;
  }

  if (v1)
  {
    v2 = 0x80000001007E8C60;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

double sub_1004A62C8(uint64_t a1)
{
  v2 = 0xE800000000000000;
  v3 = 0xEC00000065746144;
  if (*v1 != 2)
  {
    v3 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v2 = 0x80000001007E8C60;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
  return result;
}

Swift::Int sub_1004A638C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  if (v2 != 2)
  {
    v4 = 0xEB00000000656D61;
  }

  if (v2)
  {
    v3 = 0x80000001007E8C60;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

unint64_t sub_1004A6460@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A7010(*a1);
  *a2 = result;
  return result;
}

void sub_1004A6490(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0x4E79616C70736964;
    v4 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000017;
    v2 = 0x80000001007E8C60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1004A6534@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A7010(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004A655C()
{
  v1 = 0x44497463656A626FLL;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

void sub_1004A65EC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B48, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1004A665C(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1B48, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

unint64_t sub_1004A66C0()
{
  result = sub_1004A66E0();
  qword_100974EA8 = result;
  return result;
}

unint64_t sub_1004A66E0()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x4E79616C70736964;
  v4 = 0xD000000000000017;
  do
  {
    while (1)
    {
      v14 = &off_1008E20A8 + v1++;
      v15 = v14[32];
      v16 = 0x6E6F697461657263;
      if (v15 != 2)
      {
        v16 = 0x4E79616C70736964;
      }

      v17 = 0xEC00000065746144;
      if (v15 != 2)
      {
        v17 = 0xEB00000000656D61;
      }

      v18 = 0x44497463656A626FLL;
      if (v15)
      {
        v18 = 0xD000000000000017;
      }

      v19 = 0xE800000000000000;
      if (v15)
      {
        v19 = 0x80000001007E8C60;
      }

      if (v15 <= 1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v15 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(v20, v21);
      v31 = _swiftEmptyDictionarySingleton[2];
      v32 = (v24 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v0 = v24;
      if (_swiftEmptyDictionarySingleton[3] >= v34)
      {
        break;
      }

      sub_10036A8F0(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v20, v21);
      if ((v0 & 1) != (v24 & 1))
      {
        goto LABEL_43;
      }

LABEL_22:
      if ((v0 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_2:
      v0 = result;
      v21, v24, v25, v26, v27, v28, v29, v30;
      v5 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
      v6 = v5[1];
      *v5 = v20;
      v5[1] = v21;
      v6, v7, v8, v9, v10, v11, v12, v13;
      if (v1 == 4)
      {
        goto LABEL_28;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if (v0)
    {
      goto LABEL_2;
    }

LABEL_23:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v35 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v35 = v20;
    v35[1] = v21;
    v36 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
    *v36 = v20;
    v36[1] = v21;
    v37 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v33)
    {
      goto LABEL_36;
    }

    _swiftEmptyDictionarySingleton[2] = v38;
  }

  while (v1 != 4);
LABEL_28:
  v21 = 0xE900000000000044;
  v20 = 0x49746E756F636361;
  v4 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
  v0 = 0xE900000000000044;
  v1 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  v46 = _swiftEmptyDictionarySingleton[2];
  v47 = (v39 & 1) == 0;
  v33 = __OFADD__(v46, v47);
  v48 = v46 + v47;
  if (v33)
  {
    goto LABEL_47;
  }

  v2 = v39;
  if (_swiftEmptyDictionarySingleton[3] >= v48)
  {
    if (v1)
    {
LABEL_33:
      if (v2)
      {
LABEL_34:
        v49 = result;
        v0, v39, v40, v41, v42, v43, v44, v45;
        v50 = (_swiftEmptyDictionarySingleton[7] + 16 * v49);
        v51 = v50[1];
        *v50 = v3;
        v50[1] = v4;
        v51, v52, v53, v54, v55, v56, v57, v58;
        goto LABEL_40;
      }

LABEL_38:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v60 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v60 = isUniquelyReferenced_nonNull_native;
      v60[1] = v0;
      v61 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v61 = v3;
      v61[1] = v4;
      v62 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v33)
      {
        goto LABEL_52;
      }

      _swiftEmptyDictionarySingleton[2] = v63;
LABEL_40:
      v2 = 0x6574616C706D6574;
      v21 = 0xE800000000000000;
      v20 = 0x4449746E65726170;
      v1 = 0xE800000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v71 = _swiftEmptyDictionarySingleton[2];
      v72 = (v64 & 1) == 0;
      v33 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      if (!v33)
      {
        LOBYTE(v0) = v64;
        if (_swiftEmptyDictionarySingleton[3] >= v73)
        {
          goto LABEL_44;
        }

        sub_10036A8F0(v73, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v64 & 1))
        {
          goto LABEL_43;
        }

LABEL_45:
        if ((v0 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_37:
    v59 = result;
    sub_100373664();
    result = v59;
    if (v2)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_10036A8F0(v48, v1);
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  if ((v2 & 1) == (v39 & 1))
  {
    goto LABEL_33;
  }

LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_45;
  }

LABEL_48:
  v84 = result;
  sub_100373664();
  result = v84;
  if (v0)
  {
LABEL_46:
    v74 = result;
    v21, v64, v65, v66, v67, v68, v69, v70;
    v75 = (_swiftEmptyDictionarySingleton[7] + 16 * v74);
    v76 = v75[1];
    *v75 = v2;
    v75[1] = v1;
    v76, v77, v78, v79, v80, v81, v82, v83;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_49:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v85 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v85 = v20;
  v85[1] = v21;
  v86 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v86 = v2;
  v86[1] = v1;
  v87 = _swiftEmptyDictionarySingleton[2];
  v33 = __OFADD__(v87, 1);
  v88 = v87 + 1;
  if (!v33)
  {
    _swiftEmptyDictionarySingleton[2] = v88;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_52:
  __break(1u);
  return result;
}

void *sub_1004A6BD4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v48 = a5;
  v49 = a3;
  v10 = *v7;
  v11 = type metadata accessor for Date();
  v47 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 template];
  if (v16 && (v17 = v16, v6 = [v16 remObjectID], v17, v6))
  {
    v18 = objc_allocWithZone(REMTemplateSectionStorage);
    v19 = v6;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 initWithObjectID:a2 accountID:v49 parentID:v19 displayName:v20];

    v6 = v21;
    v22 = [a1 creationDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v47 + 8))(v15, v11);
    }

    else
    {
      v24.super.isa = 0;
    }

    [v6 setCreationDate:{v24.super.isa, v47, v48}];
  }

  else
  {
    if (qword_100936270 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100948D30);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50[0] = v30;
      *v29 = 136315394;
      v50[2] = v10;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, v50);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v6 = v26;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: cdTemplateSection.template is nil {cdTemplateSection.remObjectID: %@}", v29, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    v43 = objc_opt_self();
    type metadata accessor for REMCDTemplateSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v45 = String._bridgeToObjectiveC()();
    [v43 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v45];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1004A7010(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1148, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1004A705C(void *a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v143 = type metadata accessor for Date();
  v9 = *(v143 - 8);
  __chkstk_darwin(v143, v10);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for UUID();
  v12 = *(v144 - 1);
  *&v14 = __chkstk_darwin(v144, v13).n128_u64[0];
  v16 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = [a2 createResolutionTokenMapIfNecessary];
  v17 = [a1 resolutionTokenMap];
  if (v17)
  {
    v18 = v17;
    v26 = sub_10069614C(v17, a3);
    v27 = a3;
    v28 = *(a3 + 16);
    if (!v28)
    {

      goto LABEL_49;
    }

    v139 = v18;
    v140 = v4;
    v29 = (v27 + 32);
    v141 = (v9 + 8);
    v30 = (v12 + 8);
    while (1)
    {
      v35 = *v29++;
      v34 = v35;
      if (v35 > 1)
      {
        if (v34 == 2)
        {
          sub_1006944A4(2, v19, v20, v21, v22, v23, v24, v25);
          v47 = v46;
          v48 = String._bridgeToObjectiveC()();
          v47, v49, v50, v51, v52, v53, v54, v55;
          LODWORD(v47) = [v145 mergeWithMap:v26 forKey:v48];

          if (!v47)
          {
            goto LABEL_6;
          }

          v56 = [a1 creationDate];
          if (v56)
          {
            v57 = v142;
            v58 = v56;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v33.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*v141)(v57, v143);
          }

          else
          {
            v33.super.isa = 0;
          }

          [a2 setCreationDate:{v33.super.isa, v139}];
        }

        else
        {
          sub_1006944A4(3, v19, v20, v21, v22, v23, v24, v25);
          v60 = v59;
          v61 = String._bridgeToObjectiveC()();
          v60, v62, v63, v64, v65, v66, v67, v68;
          LODWORD(v60) = [v145 mergeWithMap:v26 forKey:{v61, v139}];

          if (!v60)
          {
            goto LABEL_6;
          }

          v33.super.isa = [a1 displayName];
          if (!v33.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;
            v33.super.isa = String._bridgeToObjectiveC()();
            v70, v71, v72, v73, v74, v75, v76, v77;
          }

          [a2 setDisplayName:{v33.super.isa, v139}];
        }
      }

      else
      {
        if (v34)
        {
          sub_1006944A4(1, v19, v20, v21, v22, v23, v24, v25);
          v37 = v36;
          v38 = String._bridgeToObjectiveC()();
          v37, v39, v40, v41, v42, v43, v44, v45;
          LODWORD(v37) = [v145 mergeWithMap:v26 forKey:v38];

          if (v37)
          {
            [a2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          }

          goto LABEL_6;
        }

        v31 = [a1 objectID];
        v32 = [v31 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v30)(v16, v144);
        [a2 setIdentifier:{v33.super.isa, v139}];
      }

LABEL_6:
      if (!--v28)
      {

        goto LABEL_49;
      }
    }
  }

  if (qword_100936268 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_100006654(v78, qword_100948D18);
  v79 = a1;

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.fault.getter();
  a3, v82, v83, v84, v85, v86, v87, v88;

  if (os_log_type_enabled(v80, v81))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v146 = v91;
    *v89 = 136315650;
    v147 = v8;
    swift_getMetatypeMetadata();
    v92 = String.init<A>(describing:)();
    v94 = v93;
    v95 = sub_10000668C(v92, v93, &v146);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v89 + 4) = v95;
    *(v89 + 12) = 2114;
    v103 = [v79 objectID];
    *(v89 + 14) = v103;
    v144 = v90;
    *v90 = v103;
    *(v89 + 22) = 2082;
    v104 = *(a3 + 16);
    v105 = &_swiftEmptyArrayStorage;
    if (v104)
    {
      v140 = v91;
      LODWORD(v141) = v81;
      v142 = v89;
      v143 = v80;
      v147 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v104, 0);
      v105 = v147;
      v106 = (a3 + 32);
      do
      {
        v108 = *v106++;
        v107 = v108;
        v109 = v108 == 2;
        if (v108 == 2)
        {
          v110 = 0x6E6F697461657263;
        }

        else
        {
          v110 = 0x4E79616C70736964;
        }

        if (v109)
        {
          v111 = 0xEC00000065746144;
        }

        else
        {
          v111 = 0xEB00000000656D61;
        }

        v112 = 0xD000000000000017;
        if (v107)
        {
          v113 = 0x80000001007E8C60;
        }

        else
        {
          v112 = 0x44497463656A626FLL;
          v113 = 0xE800000000000000;
        }

        if (v107 <= 1)
        {
          v114 = v112;
        }

        else
        {
          v114 = v110;
        }

        if (v107 <= 1)
        {
          v115 = v113;
        }

        else
        {
          v115 = v111;
        }

        v147 = v105;
        v117 = *v105->clientIdentity;
        v116 = *&v105->clientIdentity[8];
        if (v117 >= v116 >> 1)
        {
          sub_100026EF4((v116 > 1), v117 + 1, 1);
          v105 = v147;
        }

        *v105->clientIdentity = v117 + 1;
        v118 = v105 + 16 * v117;
        *(v118 + 4) = v114;
        *(v118 + 5) = v115;
        --v104;
      }

      while (v104);
      v89 = v142;
      v80 = v143;
      LOBYTE(v81) = v141;
    }

    v119 = Array.description.getter();
    v121 = v120;
    v105, v120, v122, v123, v124, v125, v126, v127;
    v128 = sub_10000668C(v119, v121, &v146);
    v121, v129, v130, v131, v132, v133, v134, v135;
    *(v89 + 24) = v128;
    _os_log_impl(&_mh_execute_header, v80, v81, "%s: merge(storage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v89, 0x20u);
    sub_1000050A4(v144, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v136 = objc_opt_self();
  sub_1004A8118();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v138 = String._bridgeToObjectiveC()();
  [v136 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v138];

  swift_willThrow();
LABEL_49:
}

void sub_1004A7870(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_10068BA5C(0, v11, a4);
    if (!v5)
    {
      v37 = qword_100936268;
      v38 = v36;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100948D18);
      v40 = v38;
      v41 = a2;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v44 = 136446466;
        v45 = [v41 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v120 = v43;
        v46 = Optional.descriptionOrNil.getter();
        v123 = v41;
        v48 = v47;

        v49 = sub_10000668C(v46, v48, &v126);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        v125 = [v40 remObjectID];
        v57 = Optional.descriptionOrNil.getter();
        v59 = v58;

        v41 = v123;
        v60 = sub_10000668C(v57, v59, &v126);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v44 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v42, v120, "Updating cdTemplateSection.account {cdTemplateSection: %{public}s, account: %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

      [v41 setAccount:v40];
      return;
    }

LABEL_18:

    return;
  }

  v10 = *v6;
  v11 = [a2 createResolutionTokenMapIfNecessary];
  v12 = [a1 resolutionTokenMap];
  if (!v12)
  {
    if (qword_100936268 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_100948D18);
    v69 = a1;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v72 = 136315650;
      v126 = v10;
      swift_getMetatypeMetadata();
      v74 = String.init<A>(describing:)();
      v76 = v75;
      v77 = sub_10000668C(v74, v75, &v125);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v72 + 4) = v77;
      *(v72 + 12) = 2114;
      v85 = [v69 objectID];
      *(v72 + 14) = v85;
      *v73 = v85;
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v125);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s: establishRelationship(onStorage:into cdTemplateSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v72, 0x20u);
      sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v86 = objc_opt_self();
    sub_1004A8118();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = String._bridgeToObjectiveC()();
    [v86 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v88];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_100943408, &qword_1007ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_1006967AC(v13, inited);
  swift_setDeallocating();
  v16 = [a1 parentTemplateID];
  sub_100693144(1, v17, v18, v19, v20, v21, v22, v23);
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v25, v27, v28, v29, v30, v31, v32, v33;
  LODWORD(v25) = [v11 mergeWithMap:v15 forKey:v26];

  if (v25)
  {
    if (v16)
    {
      v34 = v16;
      sub_10068BA8C(1, v34, a4);
      if (v5)
      {

        return;
      }

      v89 = v35;
    }

    else
    {
      v89 = 0;
    }

    if (qword_100936268 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100948D18);
    v124 = v89;
    v91 = v89;
    v92 = a2;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v118 = v94;
      log = v93;
      v122 = v91;
      v95 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v95 = 136446466;
      v121 = v92;
      v125 = [v92 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v96 = Optional.descriptionOrNil.getter();
      v98 = v97;

      v99 = sub_10000668C(v96, v98, &v126);
      v98, v100, v101, v102, v103, v104, v105, v106;
      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      if (v124)
      {
        v125 = [v91 remObjectID];
        v107 = Optional.descriptionOrNil.getter();
        v109 = v108;
      }

      else
      {
        v109 = 0xED00003E6574616CLL;
        v107 = 0x706D6574206F6E3CLL;
      }

      v110 = sub_10000668C(v107, v109, &v126);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v95 + 14) = v110;
      _os_log_impl(&_mh_execute_header, log, v118, "Updating cdTemplateSection.template {cdTemplateSection: %{public}s, template: %{public}s}", v95, 0x16u);
      swift_arrayDestroy();

      v92 = v121;
      v91 = v122;
    }

    else
    {
    }

    [v92 setTemplate:v91];
  }
}

unint64_t sub_1004A8118()
{
  result = qword_1009429C8;
  if (!qword_1009429C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009429C8);
  }

  return result;
}

unint64_t sub_1004A81B8()
{
  result = qword_100948EF8;
  if (!qword_100948EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948EF8);
  }

  return result;
}

unint64_t sub_1004A8240()
{
  result = qword_100948F10;
  if (!qword_100948F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948F10);
  }

  return result;
}

uint64_t sub_1004A8294()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948F18);
  v1 = sub_100006654(v0, qword_100948F18);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004A835C(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(REMStoreInvocationResult) init];
  v61 = a1;
  v15 = [a1 storeController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v17)
    {
      v59 = v14;
      v60 = v2;
      v58 = v3;
      v18 = v17;
      v19 = [v17 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      v21 = v20;
      (*(v10 + 8))(v13, v9);
      v22 = String._bridgeToObjectiveC()();
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30 = [v16 storeForAccountIdentifier:v22];

      if (v30)
      {
        sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v31 = v58;
        v32 = [v58 fromDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v31 toDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        swift_storeEnumTagMultiPayload();
        v34 = sub_100043AA8();
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        v35 = [objc_allocWithZone(NSFetchRequest) init];
        v36 = [swift_getObjCClassFromMetadata() entity];
        [v35 setEntity:v36];

        [v35 setAffectedStores:0];
        [v35 setPredicate:v34];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1007953F0;
        *(v37 + 32) = v30;
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
        v38 = v30;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v37, v40, v41, v42, v43, v44, v45, v46;
        [v35 setAffectedStores:isa];

        v47 = v60;
        v48 = NSManagedObjectContext.count<A>(for:)();
        if (v47)
        {
          sub_1000513B4(v8);
          v14 = v59;
        }

        else
        {
          v54 = [objc_allocWithZone(NSNumber) initWithInteger:v48];
          v55 = REMAppStoreCreatedOrCompletedRemindersLastMonthCountFetchResultKey;
          v56 = v59;
          [v59 storeProperty:v54 forKey:v55];

          v14 = v56;
          sub_1000513B4(v8);
        }

        return v14;
      }

      v14 = v59;
    }

    else
    {
    }
  }

  if (qword_100936280 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100006654(v49, qword_100948F18);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "REMAppStoreDataViewInvocation: No primary CloudKit account signed in. Returning no results", v52, 2u);
  }

  return v14;
}

id sub_1004A88D8()
{
  v0 = [objc_opt_self() sharedConfiguration];
  v1 = [v0 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  v2 = [v0 appStoreReviewNumberOfForegroundsThreshold];
  [v0 appStoreReviewTimeIntervalOfInterest];
  v4 = v3;
  [v0 appStoreReviewTimeIntervalSinceInitialForeground];
  v6 = v5;
  [v0 appStoreReviewTimeIntervalSinceLastPrompt];
  v8 = v7;
  [v0 appStoreReviewTimeIntervalSinceLastFetch];
  v10 = [objc_allocWithZone(REMAppStoreDataViewConfigurationsInvocationResult) initWithCreatedOrCompletedRemindersCountThreshold:v1 numberOfForegroundsThreshold:v2 timeIntervalOfInterest:v4 timeIntervalSinceInitialForeground:v6 timeIntervalSinceLastPrompt:v8 timeIntervalSinceLastFetch:v9];

  return v10;
}

uint64_t sub_1004A89E8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948F30);
  v1 = sub_100006654(v0, qword_100948F30);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1004A8AB0()
{
  v1 = v0;
  v84 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v84 - 8);
  __chkstk_darwin(v84, v3);
  v5 = &v74[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1[2];
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v1[3];
  if (v15)
  {
    v14 = *(v15 + 16);
    v16 = qword_100936288;

    if (v16 == -1)
    {
LABEL_4:
      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100948F30);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      v14, v20, v21, v22, v23, v24, v25, v26;
      if (os_log_type_enabled(v18, v19))
      {
        v27 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v86 = v79;
        v80 = v27;
        *v27 = 136446210;
        v28 = *(v14 + 16);
        v29 = &_swiftEmptyArrayStorage;
        if (v28)
        {
          v75 = v19;
          v76 = v18;
          v78 = v1;
          v85 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, v28, 0);
          v29 = v85;
          v30 = v2 + 16;
          v31 = *(v2 + 16);
          v32 = *(v2 + 80);
          v77 = v14;
          v33 = v14 + ((v32 + 32) & ~v32);
          v81 = *(v30 + 56);
          v82 = v31;
          v83 = v30;
          v34 = (v30 - 8);
          do
          {
            v35 = v84;
            v82(v5, v33, v84);
            v36 = REMAccountsListDataView.Model.GroupChild.objectID.getter();
            v37 = [v36 stringRepresentation];

            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            (*v34)(v5, v35);
            v85 = v29;
            v42 = *v29->clientIdentity;
            v41 = *&v29->clientIdentity[8];
            if (v42 >= v41 >> 1)
            {
              sub_100026EF4((v41 > 1), v42 + 1, 1);
              v29 = v85;
            }

            *v29->clientIdentity = v42 + 1;
            v43 = v29 + 16 * v42;
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
            v33 += v81;
            --v28;
          }

          while (v28);
          v14 = v77;
          v1 = v78;
          v18 = v76;
          LOBYTE(v19) = v75;
        }

        v49 = Array.description.getter();
        v51 = v50;
        v29, v50, v52, v53, v54, v55, v56, v57;
        v58 = sub_10000668C(v49, v51, &v86);
        v51, v59, v60, v61, v62, v63, v64, v65;
        v66 = v80;
        *(v80 + 1) = v58;
        _os_log_impl(&_mh_execute_header, v18, v19, "Updating application shortcuts from RDApplicationShortcutEngine {lists: %{public}s}", v66, 0xCu);
        sub_10000607C(v79);
      }

      if (v1[5])
      {
        sub_1001A7284(v14);
      }

      v14, v67, v68, v69, v70, v71, v72, v73;
      return result;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100936288 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_100948F30);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "RDApplicationShortcutEngine has no provider; not updating shortcuts", v47, 2u);
  }

  return result;
}

uint64_t sub_1004A8FA8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9018()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948FF8);
  v1 = sub_100006654(v0, qword_100948FF8);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A90E0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x6465696669646F6DLL;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (*a2)
  {
    v11 = 0x6465696669646F6DLL;
  }

  else
  {
    v11 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v12 = 0xEC00000065746144;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1004A9190()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEC00000065746144;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1004A921C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEC00000065746144;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1004A9294(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xEC00000065746144;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1004A931C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E0BF0, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1004A937C(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x6465696669646F6DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC00000065746144;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1004A93C4(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E0BF0, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_1004A9428()
{
  if (*v0)
  {
    return 0x6465696669646F6DLL;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

Swift::Int sub_1004A947C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004A94F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1004A9544(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E38E0, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_1004A95B8(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1660, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_1004A963C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8, v9);
  v11 = &v749[-v10];
  v12 = type metadata accessor for UUID();
  v766 = *(v12 - 8);
  v767 = v12;
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = &v749[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v768 = a3;
  v17 = [(RDXPCStorePerformer *)a3 remObjectID];
  if (!v17)
  {
LABEL_11:
    v815 = 0;
    v816 = 0xE000000000000000;
    _StringGuts.grow(_:)(177);
    v69._countAndFlagsBits = 0xD00000000000007ELL;
    v69._object = 0x80000001007F9E00;
    String.append(_:)(v69);
    v70 = [*(v4 + 16) description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);
    v73, v75, v76, v77, v78, v79, v80, v81;
    v82._object = 0x80000001007F9E80;
    v82._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v82);
    v83 = [a1 remObjectID];
    v84 = [v83 description];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88._countAndFlagsBits = v85;
    v88._object = v87;
    String.append(_:)(v88);
    v87, v89, v90, v91, v92, v93, v94, v95;

    v96._countAndFlagsBits = 0xD000000000000018;
    v96._object = 0x80000001007F9EA0;
    String.append(_:)(v96);
    v97 = [(RDXPCStorePerformer *)v768 identifier];
    if (v97)
    {
      v98 = v97;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v766 + 56))(v11, 0, 1, v767);
    }

    else
    {
      (*(v766 + 56))(v11, 1, 1, v767);
    }

    v99 = objc_opt_self();
    v100 = Optional.descriptionOrNil.getter();
    v102 = v101;
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    v103._countAndFlagsBits = v100;
    v103._object = v102;
    String.append(_:)(v103);
    v102, v104, v105, v106, v107, v108, v109, v110;
    v111._countAndFlagsBits = 125;
    v111._object = 0xE100000000000000;
    String.append(_:)(v111);
    v112 = v816;
    v113 = String._bridgeToObjectiveC()();
    v112, v114, v115, v116, v117, v118, v119, v120;
    [v99 internalErrorWithDebugDescription:v113];

    swift_willThrow();
    return;
  }

  v18 = v17;
  v761 = v16;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v763 = v4;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    v4 = v763;
    goto LABEL_11;
  }

  v762 = [a1 listType];
  v19 = [a1 listID];
  v764 = a2;
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v19 = String._bridgeToObjectiveC()();
    v21, v22, v23, v24, v25, v26, v27, v28;
    a2 = v764;
  }

  v760 = v19;
  v758 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = v765;
  if (qword_100936290 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v32 = type metadata accessor for Logger();
    v33 = sub_100006654(v32, qword_100948FF8);
    v34 = a1;

    v756 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v30, v37, v38, v39, v40, v41, v42, v43;
    v44 = os_log_type_enabled(v35, v36);
    isa = v34;
    if (v44)
    {
      v757 = v18;
      v45 = swift_slowAlloc();
      v815 = swift_slowAlloc();
      *v45 = 136315650;
      LOWORD(v769) = v762;
      type metadata accessor for REMManualOrderingListType(0);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, &v815);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v57 = v30;
      *(v45 + 14) = sub_10000668C(v758, v30, &v815);
      *(v45 + 22) = 2048;
      v58 = [(RDXPCStorePerformer *)v34 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v59 >> 62)
      {
        v60 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = isa;

      v59, v62, v63, v64, v65, v66, v67, v68;
      *(v45 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v35, v36, "merging manual ordering {list type: %s, list ID: %s, top-level reminders count: %ld}", v45, 0x20u);
      swift_arrayDestroy();

      v18 = v757;
      v30 = v57;
      a2 = v764;
      v31 = v765;
    }

    else
    {
    }

    v121 = v762;
    [(RDXPCStorePerformer *)a2 setListTypeRawValue:v762];
    v122 = v760;
    [(RDXPCStorePerformer *)a2 setListID:v760];

    v123 = objc_opt_self();
    v124 = [v123 sharedConfiguration];
    v125 = [v124 manualSortHintLastAccessedUpdatePolicy];

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    v129 = v764;
    v130._countAndFlagsBits = v126;
    v130._object = v128;
    v131 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v130);
    v128, v132, v133, v134, v135, v136, v137, v138;
    if (v131 >= 3)
    {
      v139 = 2;
    }

    else
    {
      v139 = v131;
    }

    sub_1002D68D0(v139);
    v140 = [v129 storeControllerManagedObjectContext];
    if (!v140)
    {

      v30, v151, v152, v153, v154, v155, v156, v157;
      return;
    }

    v141 = v140;
    v760 = v30;
    v142 = sub_1004AAFEC(v768, v121);
    if (v31)
    {

      v760, v144, v145, v146, v147, v148, v149, v150;
      return;
    }

    v158 = v142;
    v815 = 0;
    __chkstk_darwin(v142, v143);
    *&v749[-32] = v159;
    *&v749[-24] = v141;
    *&v749[-16] = &v815;

    v160 = v141;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v755 = v160;
    v161 = v815;
    if (!v815)
    {
      v161 = sub_10038DB14(&_swiftEmptyArrayStorage);
    }

    v162 = isa;
    sub_1004FDD00(v162, v161, v158, v755, &v771);
    sub_100226C14(&v817);
    a2 = 0;
    v757 = v18;
    v752 = v158;
    if (!v817)
    {
      v760, v163, v164, v165, v166, v167, v168, v169;
      v753 = *v771.storeController;
      v754 = *&v771.clientIdentity[8];
      v750 = 1;
      isa = v771.super.isa;
      goto LABEL_30;
    }

    v765 = 0;
    v772 = v817;
    v773 = v818;
    v774 = v819;
    sub_1004AB2C4(&v771, 1, &v771.clientIdentity[24]);
    v812[0] = v771.super.isa;
    sub_1000050A4(v812, &unk_10093B300, &unk_100797780);
    v811 = *v771.storeController;
    sub_1000050A4(&v811, &qword_100939A08, &unk_100796A80);
    v810 = *v771.clientIdentity;
    sub_1000050A4(&v810, &unk_100945230, &qword_1007A2590);
    v809 = *&v771.clientIdentity[8];
    sub_1000050A4(&v809, &qword_10093E9C0, qword_100794F90);
    v808 = *&v771.clientIdentity[16];
    sub_1000050A4(&v808, &unk_100945240, &qword_1007A0A70);
    v296 = [v123 sharedConfiguration];
    [v296 manualSortHintClientSideExpiration];

    sub_100452DF0(&v771.dataAccessRequestsWriter[2]);
    v807 = *&v771.clientIdentity[24];
    sub_1000050A4(&v807, &unk_10093B300, &unk_100797780);
    v806 = *&v771.clientIdentity[32];
    sub_1000050A4(&v806, &qword_100939A08, &unk_100796A80);
    v805 = *&v771.clientIdentity[40];
    sub_1000050A4(&v805, &unk_100945230, &qword_1007A2590);
    v804 = *&v771.storeProvider[2];
    sub_1000050A4(&v804, &qword_10093E9C0, qword_100794F90);
    v803 = *&v771.storeProvider[10];
    sub_1000050A4(&v803, &unk_100945240, &qword_1007A0A70);
    v297 = v772;
    isa = *&v771.dataAccessRequestsWriter[2];
    if (sub_1003AD2E8(*&v771.dataAccessRequestsWriter[2], v772))
    {
      v298 = *&v771.contactInteractionWriter[2];
      v299 = v773;
      sub_1004ADA04(*&v771.contactInteractionWriter[2], v773);
      if (v300)
      {
        v301 = *&v771.coreSuggestionsHandler[2];
        v302 = *(&v773 + 1);
        if (sub_1004ADBAC(*&v771.coreSuggestionsHandler[2], *(&v773 + 1)))
        {
          v303 = *&v771.coreSuggestionsHandler[10];
          v304 = v774;
          sub_1004ADD50(*&v771.coreSuggestionsHandler[10], v774);
          if (v305)
          {
            v306 = *&v771.coreSuggestionsHandler[18];
            v768 = *(&v774 + 1);
            if (sub_1005A544C(*&v771.coreSuggestionsHandler[18], *(&v774 + 1)))
            {
              v306, v307, v308, v309, v310, v311, v312, v313;
              v303, v314, v315, v316, v317, v318, v319, v320;
              v301, v321, v322, v323, v324, v325, v326, v327;
              v298, v328, v329, v330, v331, v332, v333, v334;
              isa, v335, v336, v337, v338, v339, v340, v341;

              v768, v342, v343, v344, v345, v346, v347, v348;
              v304, v349, v350, v351, v352, v353, v354, v355;
              v302, v356, v357, v358, v359, v360, v361, v362;
              v299, v363, v364, v365, v366, v367, v368, v369;
              v297, v370, v371, v372, v373, v374, v375, v376;
              v760, v377, v378, v379, v380, v381, v382, v383;

              return;
            }
          }
        }
      }
    }

    v419 = v765;
    sub_100451CD4(&v771.coreSuggestionsHandler[26]);
    if (!v419)
    {
      v297, v420, v421, v422, v423, v424, v425, v426;
      v775 = v773;
      sub_1000050A4(&v775, &qword_100939A08, &unk_100796A80);
      v776 = *(&v773 + 1);
      sub_1000050A4(&v776, &unk_100945230, &qword_1007A2590);
      v777 = v774;
      sub_1000050A4(&v777, &qword_10093E9C0, qword_100794F90);
      v778 = *(&v774 + 1);
      sub_1000050A4(&v778, &unk_100945240, &qword_1007A0A70);
      sub_100451CD4(&v771.publicCloudDatabaseController[26]);
      v765 = 0;
      v760, v500, v501, v502, v503, v504, v505, v506;
      v507 = *&v771.coreSuggestionsHandler[26];
      v508 = *&v771.publicCloudDatabaseController[26];
      if (sub_1003AD2E8(*&v771.coreSuggestionsHandler[26], *&v771.publicCloudDatabaseController[26]))
      {
        v516 = *&v771.coreSuggestionsHandler[34];
        v517 = *&v771.publicCloudDatabaseController[34];
        sub_1004ADA04(*&v771.coreSuggestionsHandler[34], *&v771.publicCloudDatabaseController[34]);
        if (v525)
        {
          v526 = *&v771.publicCloudDatabaseController[2];
          v527 = *&v771.sharingObserverForAccountID[2];
          if (sub_1004ADBAC(*&v771.publicCloudDatabaseController[2], *&v771.sharingObserverForAccountID[2]))
          {
            v768 = v507;
            v535 = *&v771.publicCloudDatabaseController[10];
            v536 = *&v771.shareRecordIDToRootRecordID[2];
            sub_1004ADD50(*&v771.publicCloudDatabaseController[10], *&v771.shareRecordIDToRootRecordID[2]);
            if (v544)
            {
              v545 = *&v771.publicCloudDatabaseController[18];
              v758 = *&v771.shareRecordIDToRootRecordIDLock[2];
              LODWORD(v760) = sub_1005A544C(*&v771.publicCloudDatabaseController[18], *&v771.shareRecordIDToRootRecordIDLock[2]);
              v545, v546, v547, v548, v549, v550, v551, v552;
              v535, v553, v554, v555, v556, v557, v558, v559;
              v526, v560, v561, v562, v563, v564, v565, v566;
              v516, v567, v568, v569, v570, v571, v572, v573;
              v768, v574, v575, v576, v577, v578, v579, v580;
              v758, v581, v582, v583, v584, v585, v586, v587;
              v536, v588, v589, v590, v591, v592, v593, v594;
              v527, v595, v596, v597, v598, v599, v600, v601;
              v517, v602, v603, v604, v605, v606, v607, v608;
              v508, v609, v610, v611, v612, v613, v614, v615;
              v753 = *&v771.contactInteractionWriter[2];
              v754 = *&v771.coreSuggestionsHandler[10];
              v750 = v760 ^ 1;
LABEL_89:
              a2 = v765;
              goto LABEL_30;
            }

            v536, v537, v538, v539, v540, v541, v542, v543;
            v527, v680, v681, v682, v683, v684, v685, v686;
            v517, v687, v688, v689, v690, v691, v692, v693;
            v508, v694, v695, v696, v697, v698, v699, v700;
            v784 = *&v771.shareRecordIDToRootRecordIDLock[2];
            sub_1000050A4(&v784, &unk_100945240, &qword_1007A0A70);
            v535, v701, v702, v703, v704, v705, v706, v707;
            v526, v708, v709, v710, v711, v712, v713, v714;
            v516, v715, v716, v717, v718, v719, v720, v721;
            v768, v722, v723, v724, v725, v726, v727, v728;
            v783 = *&v771.publicCloudDatabaseController[18];
            v623 = &v783;
          }

          else
          {
            v527, v528, v529, v530, v531, v532, v533, v534;
            v517, v645, v646, v647, v648, v649, v650, v651;
            v508, v652, v653, v654, v655, v656, v657, v658;
            v788 = *&v771.shareRecordIDToRootRecordID[2];
            sub_1000050A4(&v788, &qword_10093E9C0, qword_100794F90);
            v787 = *&v771.shareRecordIDToRootRecordIDLock[2];
            sub_1000050A4(&v787, &unk_100945240, &qword_1007A0A70);
            v526, v659, v660, v661, v662, v663, v664, v665;
            v516, v666, v667, v668, v669, v670, v671, v672;
            v507, v673, v674, v675, v676, v677, v678, v679;
            v786 = *&v771.publicCloudDatabaseController[10];
            sub_1000050A4(&v786, &qword_10093E9C0, qword_100794F90);
            v785 = *&v771.publicCloudDatabaseController[18];
            v623 = &v785;
          }
        }

        else
        {
          v517, v518, v519, v520, v521, v522, v523, v524;
          v508, v624, v625, v626, v627, v628, v629, v630;
          v794 = *&v771.sharingObserverForAccountID[2];
          sub_1000050A4(&v794, &unk_100945230, &qword_1007A2590);
          v793 = *&v771.shareRecordIDToRootRecordID[2];
          sub_1000050A4(&v793, &qword_10093E9C0, qword_100794F90);
          v792 = *&v771.shareRecordIDToRootRecordIDLock[2];
          sub_1000050A4(&v792, &unk_100945240, &qword_1007A0A70);
          v516, v631, v632, v633, v634, v635, v636, v637;
          v507, v638, v639, v640, v641, v642, v643, v644;
          v791 = *&v771.publicCloudDatabaseController[2];
          sub_1000050A4(&v791, &unk_100945230, &qword_1007A2590);
          v790 = *&v771.publicCloudDatabaseController[10];
          sub_1000050A4(&v790, &qword_10093E9C0, qword_100794F90);
          v789 = *&v771.publicCloudDatabaseController[18];
          v623 = &v789;
        }
      }

      else
      {
        v508, v509, v510, v511, v512, v513, v514, v515;
        v802[0] = *&v771.publicCloudDatabaseController[34];
        sub_1000050A4(v802, &qword_100939A08, &unk_100796A80);
        v801 = *&v771.sharingObserverForAccountID[2];
        sub_1000050A4(&v801, &unk_100945230, &qword_1007A2590);
        v800 = *&v771.shareRecordIDToRootRecordID[2];
        sub_1000050A4(&v800, &qword_10093E9C0, qword_100794F90);
        v799 = *&v771.shareRecordIDToRootRecordIDLock[2];
        sub_1000050A4(&v799, &unk_100945240, &qword_1007A0A70);
        v507, v616, v617, v618, v619, v620, v621, v622;
        v798 = *&v771.coreSuggestionsHandler[34];
        sub_1000050A4(&v798, &qword_100939A08, &unk_100796A80);
        v797 = *&v771.publicCloudDatabaseController[2];
        sub_1000050A4(&v797, &unk_100945230, &qword_1007A2590);
        v796 = *&v771.publicCloudDatabaseController[10];
        sub_1000050A4(&v796, &qword_10093E9C0, qword_100794F90);
        v795 = *&v771.publicCloudDatabaseController[18];
        v623 = &v795;
      }

      sub_1000050A4(v623, &unk_100945240, &qword_1007A0A70);
      v750 = 1;
      v753 = *&v771.contactInteractionWriter[2];
      v754 = *&v771.coreSuggestionsHandler[10];
      goto LABEL_89;
    }

    v297, v420, v421, v422, v423, v424, v425, v426;
    v779 = v773;
    sub_1000050A4(&v779, &qword_100939A08, &unk_100796A80);
    v780 = *(&v773 + 1);
    sub_1000050A4(&v780, &unk_100945230, &qword_1007A2590);
    v781 = v774;
    sub_1000050A4(&v781, &qword_10093E9C0, qword_100794F90);
    v782 = *(&v774 + 1);
    sub_1000050A4(&v782, &unk_100945240, &qword_1007A0A70);
    a2 = 0;
    v753 = *&v771.contactInteractionWriter[2];
    v754 = *&v771.coreSuggestionsHandler[10];
    v170 = v760;

    swift_errorRetain();
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.error.getter();
    v170, v173, v174, v175, v176, v177, v178, v179;

    if (os_log_type_enabled(v171, v172))
    {
      v187 = swift_slowAlloc();
      v765 = 0;
      v188 = v187;
      v815 = swift_slowAlloc();
      *v188 = 136315650;
      LOWORD(v769) = v762;
      type metadata accessor for REMManualOrderingListType(0);
      v189 = String.init<A>(describing:)();
      v191 = v190;
      v192 = sub_10000668C(v189, v190, &v815);
      v191, v193, v194, v195, v196, v197, v198, v199;
      *(v188 + 4) = v192;
      *(v188 + 12) = 2080;
      v200 = sub_10000668C(v758, v170, &v815);
      v170, v201, v202, v203, v204, v205, v206, v207;
      *(v188 + 14) = v200;
      *(v188 + 22) = 2080;
      swift_getErrorValue();
      v208 = Error.localizedDescription.getter();
      v210 = v209;
      v211 = sub_10000668C(v208, v209, &v815);
      v210, v212, v213, v214, v215, v216, v217, v218;
      *(v188 + 24) = v211;
      _os_log_impl(&_mh_execute_header, v171, v172, "Error upon merging manual ordering {list type: %s, listID: %s, error: %s}", v188, 0x20u);
      swift_arrayDestroy();

      a2 = v765;
    }

    else
    {
      v170, v180, v181, v182, v183, v184, v185, v186;
    }

    v750 = 1;
LABEL_30:
    v765 = a2;
    v812[1] = isa;
    v813 = v753;
    v814 = v754;
    v219 = *(&v754 + 1);
    v220 = *(*(&v754 + 1) + 32);
    v221 = v220 & 0x3F;
    v756 = ((1 << v220) + 63) >> 6;
    v222 = 8 * v756;

    v768 = v219;
    if (v221 <= 0xD)
    {
      goto LABEL_31;
    }

    v729 = v756;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v219 = v768;
    v768, v730, v731, v732, v733, v734, v735, v736;
LABEL_31:
    v751 = v749;
    __chkstk_darwin(v223, v224);
    v758 = &v749[-((v222 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v758, v222);
    v760 = 0;
    a1 = 0;
    v226 = *&v219->clientIdentity[40];
    v31 = &v219->clientIdentity[40];
    v225 = v226;
    v227 = 1 << *(v31 - 24);
    v228 = -1;
    if (v227 < 64)
    {
      v228 = ~(-1 << v227);
    }

    v30 = v228 & v225;
    v18 = ((v227 + 63) >> 6);
    v229 = v764;
    while (v30)
    {
      v230 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
LABEL_41:
      v233 = v230 | (a1 << 6);
      a2 = *(*&v768->clientIdentity[32] + 16 * v233 + 8);

      v234._countAndFlagsBits = 0x7C6C61636F6CLL;
      v234._object = 0xE600000000000000;
      v235 = String.hasPrefix(_:)(v234);
      a2, v236, v237, v238, v239, v240, v241, v242;
      v229 = v764;
      if (v235)
      {
        *(&v758->super.isa + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v758->super.isa + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v233));
        v243 = __OFADD__(v760, 1);
        v760 = (v760 + 1);
        if (v243)
        {
          __break(1u);
LABEL_45:
          v244 = sub_1001A0BCC(v758, v756, v760, v768);
          goto LABEL_46;
        }
      }
    }

    v231 = a1;
    while (1)
    {
      a1 = v231 + 1;
      if (__OFADD__(v231, 1))
      {
        break;
      }

      if (a1 >= v18)
      {
        goto LABEL_45;
      }

      v232 = *&v31[8 * a1];
      ++v231;
      if (v232)
      {
        v230 = __clz(__rbit64(v232));
        v30 = (v232 - 1) & v232;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_83:
    swift_once();
  }

  v738 = swift_slowAlloc();
  v739 = v765;
  v740 = sub_1004ADE8C(v738, v729, v768, sub_1004FD8D0);
  v765 = v739;
  if (v739)
  {
    v768, v741, v742, v743, v744, v745, v746, v747;

    __break(1u);
  }

  else
  {
    v748 = v740;
    v768, v741, v742, v743, v744, v745, v746, v747;

    v244 = v748;
    v229 = v764;
LABEL_46:
    sub_1002D6764(v244, v245, v246, v247, v248, v249, v250, v251);
    v252 = v753;
    sub_1004FE558(1, isa, v753, *(&v753 + 1), v253, v254, v255, v256);
    sub_1002D6778(v257, v258, v259, v260, v261, v262, v263, v264);
    v265 = [v229 concatenatedContainerIDsWithLocalContainerIDPrefix];
    v273 = v765;
    if (v265)
    {
      v274 = v229;
      v275 = v265;
      v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v278 = v277;

      v815 = v276;
      v816 = v278;
      v279 = *&v274[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
      v769 = *&v274[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
      v770 = v279;
      sub_10013BCF4();
      v280 = StringProtocol.components<A>(separatedBy:)();
      v278, v281, v282, v283, v284, v285, v286, v287;
      v288 = sub_1001A5660(v280);
      v280, v289, v290, v291, v292, v293, v294, v295;
    }

    else
    {
      v288 = _swiftEmptySetSingleton;
    }

    v384 = v757;
    v385 = v763;
    v386 = *v288->clientIdentity;
    v288, v266, v267, v268, v269, v270, v271, v272;
    if (v386)
    {
      goto LABEL_64;
    }

    v387 = v764;
    v388 = [v764 concatenatedElementIDsWithLocalElementIDPrefix];
    if (v388)
    {
      v396 = v388;
      v397 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v398 = v384;
      v400 = v399;

      v815 = v397;
      v816 = v400;
      v401 = *&v387[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
      v769 = *&v387[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
      v770 = v401;
      sub_10013BCF4();
      v402 = StringProtocol.components<A>(separatedBy:)();
      v403 = v400;
      v384 = v398;
      v385 = v763;
      v403, v404, v405, v406, v407, v408, v409, v410;
      v411 = sub_1001A5660(v402);
      v402, v412, v413, v414, v415, v416, v417, v418;
    }

    else
    {
      v411 = _swiftEmptySetSingleton;
    }

    v427 = *v411->clientIdentity;
    v411, v389, v390, v391, v392, v393, v394, v395;
    if (v427)
    {
LABEL_64:
      v428 = *(v385 + 24);
      if (qword_100936298 != -1)
      {
        v737 = *(v385 + 24);
        swift_once();
        v428 = v737;
      }

      [v428 postNotificationName:qword_100974EB0 object:0];
    }

    v429 = sub_10015D850();
    if (v273)
    {
      v768, v430, v431, v432, v433, v434, v435, v436;
      v754, v437, v438, v439, v440, v441, v442, v443;
      *(&v252 + 1), v444, v445, v446, v447, v448, v449, v450;
      v252, v451, v452, v453, v454, v455, v456, v457;
      isa, v458, v459, v460, v461, v462, v463, v464;
    }

    else
    {
      v465 = v429;
      v466 = v430;
      v768, v430, v431, v432, v433, v434, v435, v436;
      v754, v467, v468, v469, v470, v471, v472, v473;
      *(&v252 + 1), v474, v475, v476, v477, v478, v479, v480;
      v252, v481, v482, v483, v484, v485, v486, v487;
      isa, v488, v489, v490, v491, v492, v493, v494;
      v495 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v465, v466);
      v496 = v764;
      [v764 setHintData:v495];

      if (v750)
      {
        v497 = v761;
        UUID.init()();
        v498 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v766 + 8))(v497, v767);
        [v496 setETag:v498];
      }

      [v496 setSerializationVersion:1];
      if (v762 > 3u && v762 - 4 < 3)
      {
        v499 = [v496 minimumSupportedVersion];
        if (v499 == kREMSupportedVersionUnset)
        {
          [v496 setMinimumSupportedVersion:kREMSupportedVersionFor2022];
        }
      }
    }
  }
}

uint64_t sub_1004AAFEC(uint64_t a1, unsigned __int16 a2)
{
  if (a2 <= 6u)
  {
    if (((1 << a2) & 0x3A) != 0)
    {
      sub_1006B038C();
      v3 = v2;
      v4 = type metadata accessor for RDManualSortIDCache();
      if (qword_100936508 != -1)
      {
        v4 = swift_once();
      }

      __chkstk_darwin(v4, v5);
      OS_dispatch_queue.sync<A>(execute:)();
      type metadata accessor for RDManualSortIDAdapter();
      swift_allocObject();
      v6 = v33;
      v7 = v3;
      v8 = 0;
      return sub_100214ECC(v6, v7, v8);
    }

    if (((1 << a2) & 0x44) != 0)
    {
      sub_1006B038C();
      v10 = v9;
      v11 = type metadata accessor for RDManualSortIDCache();
      if (qword_100936508 != -1)
      {
        v11 = swift_once();
      }

      __chkstk_darwin(v11, v12);
      OS_dispatch_queue.sync<A>(execute:)();
      type metadata accessor for RDManualSortIDAdapter();
      swift_allocObject();
      v6 = v33;
      v7 = v10;
      v8 = 1;
      return sub_100214ECC(v6, v7, v8);
    }
  }

  v14 = objc_opt_self();
  _StringGuts.grow(_:)(108);
  v15._object = 0x80000001007F9EF0;
  v15._countAndFlagsBits = 0xD00000000000006ALL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v16._object;
  String.append(_:)(v16);
  object, v18, v19, v20, v21, v22, v23, v24;
  v25 = String._bridgeToObjectiveC()();
  0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
  [v14 internalErrorWithDebugDescription:{v25, 0}];

  return swift_willThrow();
}

void sub_1004AB2C4(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v229 = sub_1000F5104(&qword_1009491C0, &qword_1007AD228);
  v227 = *(v229 - 8);
  __chkstk_darwin(v229, v8);
  v228 = &v220 - v10;
  v232 = v4;
  if (a2)
  {
    v11 = a1[4];
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v251 = a1[4];
    v245[0] = v251;
    __chkstk_darwin(v251, v9);
    *(&v220 - 2) = v4;
    *(&v220 - 1) = a1;

    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
    v4 = v232;
    v11 = Sequence.compactMapToSet<A>(_:)();
    sub_1000050A4(&v251, &unk_100945240, &qword_1007A0A70);
  }

  sub_100453404(v11, v4[4]);
  v13 = v12;
  v11, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
    v11, v21, v22, v23, v24, v25, v26, v27;
    v28 = *a1;
    v29 = a1[1];
    v31 = a1[2];
    v30 = a1[3];
    v32 = a1[4];

LABEL_70:
    *a3 = v28;
    a3[1] = v29;
    a3[2] = v31;
    a3[3] = v30;
    a3[4] = v32;
    return;
  }

  v225 = a3;
  sub_10045226C(v11, v241);
  sub_10045226C(v11, v245);
  v11, v33, v34, v35, v36, v37, v38, v39;
  v250 = v241[0];
  v239[0] = v241[0];
  v237 = v245[0];
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.difference<A>(from:)();
  sub_1000F5104(&qword_1009491C8, &qword_1007AD230);
  swift_allocObject();

  v40 = MutableOrderedSet.init(_:)();
  swift_allocObject();
  v41 = MutableOrderedSet.init(_:)();
  v249 = v245[1];
  sub_1000050A4(&v249, &qword_100939A08, &unk_100796A80);
  v248 = v245[2];
  sub_1000050A4(&v248, &unk_100945230, &qword_1007A2590);
  v247 = v245[3];
  sub_1000050A4(&v247, &qword_10093E9C0, qword_100794F90);
  v246 = v245[4];
  sub_1000050A4(&v246, &unk_100945240, &qword_1007A0A70);
  v240 = v4[1];

  v42 = CollectionDifference.removals.getter();

  sub_1004AE2BC(v42, v40, &v240, v41);
  v226 = 0;
  v42, v43, v44, v45, v46, v47, v48, v49;
  v230 = v40;

  v233 = v41;
  LOBYTE(v42) = MutableOrderedSet.isEmpty.getter();
  v50 = CollectionDifference.insertions.getter();
  v58 = *v50->clientIdentity;
  v231 = v50;
  if (v42)
  {
    if (v58)
    {
      v59 = 0;
      v60 = &v50->clientIdentity[24];
      v61 = &_swiftEmptyArrayStorage;
      do
      {
        v62 = &v60[40 * v59];
        v63 = v59;
        while (1)
        {
          if (v63 >= *v50->clientIdentity)
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v59 = v63 + 1;
          if (v62[25] != 1)
          {
            break;
          }

          v62 += 40;
          ++v63;
          if (v58 == v59)
          {
            goto LABEL_44;
          }
        }

        v65 = *v62;
        v64 = *(v62 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100365788(0, *v61->clientIdentity + 1, 1, v61, v54, v55, v56, v57);
        }

        v67 = *v61->clientIdentity;
        v66 = *&v61->clientIdentity[8];
        v50 = v231;
        if (v67 >= v66 >> 1)
        {
          v61 = sub_100365788((v66 > 1), v67 + 1, 1, v61, v54, v55, v56, v57);
          v50 = v231;
        }

        *v61->clientIdentity = v67 + 1;
        v68 = v61 + 16 * v67;
        *(v68 + 4) = v65;
        *(v68 + 5) = v64;
        v4 = v232;
      }

      while (v58 - 1 != v63);
    }

    else
    {
      v61 = &_swiftEmptyArrayStorage;
    }

LABEL_44:
    v50, v51, v52, v53, v54, v55, v56, v57;
    MutableOrderedSet.addValues(from:)(v61);
    v50 = v61;
    goto LABEL_45;
  }

  if (!v58)
  {
LABEL_45:
    v50, v51, v52, v53, v54, v55, v56, v57;
    v133 = v241[1];

    v134 = v240;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v239[0] = v134;
    v136 = v226;
    sub_1004AE3B4(v133, sub_1004AE274, 0, isUniquelyReferenced_nonNull_native, v239);
    v226 = v136;
    v231 = v133;
    v133, v137, v138, v139, v140, v141, v142, v143;
    v29 = v239[0];

    v144 = MutableOrderedSet.array.getter();
    v31 = sub_10038E004(&_swiftEmptyArrayStorage);
    v152 = *(v144 + 16);
    if (v152)
    {
      v153 = 0;
      v154 = v144 + 40;
      v221 = v152 - 1;
      v223 = v29;
      v222 = v144 + 40;
      do
      {
        v234 = v31;
        v155 = v242;
        v156 = (v154 + 16 * v153);
        v157 = v153;
        while (1)
        {
          if (v157 >= *(v144 + 16))
          {
            __break(1u);
            goto LABEL_72;
          }

          v159 = *(v156 - 1);
          v158 = *v156;
          v160 = *v155->clientIdentity;

          if (v160)
          {
            v168 = sub_100005F4C(v159, v158);
            if (v161)
            {
              break;
            }
          }

          v169 = v4[2];
          if (*(v169 + 16))
          {
            v168 = sub_100005F4C(v159, v158);
            if (v161)
            {
              v155 = v169;
              break;
            }
          }

          ++v157;
          v158, v161, v162, v163, v164, v165, v166, v167;
          v156 += 2;
          if (v152 == v157)
          {
            v31 = v234;
            goto LABEL_68;
          }
        }

        v170 = (*&v155->clientIdentity[40] + 16 * v168);
        v171 = v170[1];
        v224 = *v170;

        v172 = v234;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v239[0] = v172;
        v181 = sub_100005F4C(v159, v158);
        v182 = v172[2];
        v183 = (v174 & 1) == 0;
        v184 = v182 + v183;
        if (__OFADD__(v182, v183))
        {
          goto LABEL_78;
        }

        v185 = v174;
        if (v172[3] >= v184)
        {
          if ((v173 & 1) == 0)
          {
            sub_100373664();
          }
        }

        else
        {
          sub_10036A8F0(v184, v173);
          v186 = sub_100005F4C(v159, v158);
          if ((v185 & 1) != (v174 & 1))
          {
            goto LABEL_81;
          }

          v181 = v186;
        }

        v187 = v239[0];
        if (v185)
        {
          v188 = (*(v239[0] + 56) + 16 * v181);
          v189 = v188[1];
          *v188 = v224;
          v188[1] = v171;
          swift_bridgeObjectRelease_n();
          v158 = v189;
          v4 = v232;
          v29 = v223;
          v31 = v187;
        }

        else
        {
          *(v239[0] + 8 * (v181 >> 6) + 64) |= 1 << v181;
          v190 = (v187[6] + 16 * v181);
          *v190 = v159;
          v190[1] = v158;
          v191 = (v187[7] + 16 * v181);
          *v191 = v224;
          v191[1] = v171;
          v192 = v187[2];
          v193 = __OFADD__(v192, 1);
          v194 = v192 + 1;
          if (v193)
          {
            goto LABEL_79;
          }

          v31 = v187;
          v187[2] = v194;
          v4 = v232;
          v29 = v223;
        }

        v153 = v157 + 1;
        v158, v174, v175, v176, v177, v178, v179, v180;
        v154 = v222;
      }

      while (v221 != v157);
    }

LABEL_68:
    v144, v145, v146, v147, v148, v149, v150, v151;
    v239[0] = v4[3];
    v195 = v239[0];
    v196 = v243;
    sub_1004AE8BC(v239, &v237);

    v197 = swift_isUniquelyReferenced_nonNull_native();
    v237 = v195;
    v198 = v226;
    sub_1004AE640(v196, sub_1004AE25C, 0, v197, &v237);
    v196, v199, v200, v201, v202, v203, v204, v205;
    if (v198)
    {
      goto LABEL_80;
    }

    sub_1000050A4(&v250, &unk_10093B300, &unk_100797780);
    v231, v206, v207, v208, v209, v210, v211, v212;
    v30 = v237;
    v237 = v242;
    sub_1000050A4(&v237, &unk_100945230, &qword_1007A2590);
    v196, v213, v214, v215, v216, v217, v218, v219;
    v235 = v244;
    sub_1000050A4(&v235, &unk_100945240, &qword_1007A0A70);

    v32 = sub_1001A6DC0();
    v28 = MutableOrderedSet.array.getter();

    (*(v227 + 8))(v228, v229);

    a3 = v225;
    goto LABEL_70;
  }

  v69 = 0;
  v70 = &v50->storeProvider[3];
  while (v69 < *v50->clientIdentity)
  {
    if (*v70)
    {
      goto LABEL_25;
    }

    v80 = *(v70 - 33);
    v81 = *(v70 - 25);
    v82 = *(v70 - 17);
    v83 = *(v70 - 9);
    v84 = *(v70 - 1);
    v239[0] = v81;
    v239[1] = v82;
    v234 = v83;
    if (!v80)
    {
      swift_bridgeObjectRetain_n();
      MutableOrderedSet.value(at:)();
      v101 = v236;
      if (!v236)
      {
        goto LABEL_39;
      }

      v237 = v235;
      v238 = v236;
      MutableOrderedSet.index(of:)();
      if (v102)
      {
        v101, v102, v103, v104, v105, v106, v107, v108;
LABEL_39:
        MutableOrderedSet.add(_:)();
        v82, v109, v110, v111, v112, v113, v114, v115;
        v118 = 0;
LABEL_42:
        sub_1004AE8B4(v118, v81, v82, v234, v84, 0, v116, v117);
        goto LABEL_24;
      }

      MutableOrderedSet.insert(_:at:)();
      v101, v119, v120, v121, v122, v123, v124, v125;
LABEL_41:
      MutableOrderedSet.insert(_:at:)();
      v82, v126, v127, v128, v129, v130, v131, v132;
      v118 = v80;
      goto LABEL_42;
    }

    if (__OFSUB__(v80, 1))
    {
      goto LABEL_74;
    }

    if (v80 - 1 < 0)
    {
      goto LABEL_75;
    }

    swift_bridgeObjectRetain_n();
    MutableOrderedSet.value(at:)();
    v85 = v236;
    if (v236)
    {
      v237 = v235;
      v238 = v236;
      v86 = MutableOrderedSet.index(of:)();
      if ((v87 & 1) == 0)
      {
        if (v86 == -1)
        {
          goto LABEL_77;
        }

        MutableOrderedSet.insert(_:at:)();
        v85, v94, v95, v96, v97, v98, v99, v100;
        v4 = v232;
        if (v80 < 0)
        {
          goto LABEL_76;
        }

        goto LABEL_41;
      }

      v85, v87, v88, v89, v90, v91, v92, v93;
    }

    MutableOrderedSet.add(_:)();
    v82, v71, v72, v73, v74, v75, v76, v77;
    sub_1004AE8B4(v80, v81, v82, v234, v84, 0, v78, v79);
    v4 = v232;
LABEL_24:
    v50 = v231;
LABEL_25:
    ++v69;
    v70 += 40;
    if (v58 == v69)
    {
      goto LABEL_45;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:

  __break(1u);
LABEL_81:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1004ABF38()
{
  v1 = *v0;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007953F0;
  v3 = *(v1 + 16);
  *(v2 + 32) = v3;
  v4 = v3;
  return v2;
}

NSString sub_1004ABF98()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EB0 = result;
  return result;
}

void sub_1004ABFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v94 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v77 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v77 - v13;
  v15 = sub_1000F5104(&qword_100949238, &qword_1007AD458);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v20);
  v23 = &v77 - v21;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v81 = a1;
  v82 = a2;
  v24 = 0;
  v25 = *(a1 + 64);
  v79 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v85 = v18;
  v86 = (v94 + 32);
  v92 = v14;
  v93 = (v94 + 8);
  v84 = &v77 - v21;
  v80 = v29;
  v91 = v94 + 16;
  v78 = v10;
  while (1)
  {
    if (!v28)
    {
      if (v29 <= v24 + 1)
      {
        v32 = v24 + 1;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32 - 1;
      while (1)
      {
        v34 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v34 >= v29)
        {
          v75 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
          (*(*(v75 - 8) + 56))(v18, 1, 1, v75);
          v83 = 0;
          v24 = v33;
          goto LABEL_18;
        }

        v35 = *(v79 + 8 * v34);
        ++v24;
        if (v35)
        {
          v30 = v10;
          v83 = (v35 - 1) & v35;
          v31 = __clz(__rbit64(v35)) | (v34 << 6);
          v24 = v34;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v30 = v10;
    v83 = (v28 - 1) & v28;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_17:
    v36 = v81;
    v37 = v94;
    (*(v94 + 16))(v14, *(v81 + 48) + *(v94 + 72) * v31, v4, v22);
    v38 = *(*(v36 + 56) + 8 * v31);
    v39 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
    v40 = *(v39 + 48);
    v41 = *(v37 + 32);
    v42 = v85;
    v41(v85, v14, v4);
    *&v42[v40] = v38;
    v18 = v42;
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);

    v23 = v84;
    v10 = v30;
LABEL_18:
    sub_100031B58(v18, v23, &qword_100949238, &qword_1007AD458);
    v43 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
    if ((*(*(v43 - 8) + 48))(v23, 1, v43) == 1)
    {
      return;
    }

    v44 = *(v43 + 48);
    (*v86)(v10, v23, v4);
    v45 = *&v23[v44];
    v46 = v82;
    v47 = sub_100363F20(v10);
    v49 = v48;
    v50 = *v93;
    (*v93)(v10, v4);
    if ((v49 & 1) == 0)
    {
      break;
    }

    v58 = *(*(v46 + 56) + 8 * v47);
    v59 = *(v58 + 16);
    if (v59 != *(v45 + 16))
    {
      break;
    }

    if (v59 && v58 != v45)
    {
      v60 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v88 = v58 + v60;
      v89 = v45;
      v87 = v45 + v60;

      v61 = 0;
      while (v61 < *(v58 + 16))
      {
        v62 = *(v94 + 72) * v61;
        v63 = *(v94 + 16);
        v64 = v92;
        v63(v92, v88 + v62, v4);
        if (v61 >= *(v89 + 16))
        {
          goto LABEL_37;
        }

        v65 = v87 + v62;
        v66 = v90;
        v63(v90, v65, v4);
        sub_10018E4E0();
        v67 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v66, v4);
        v50(v64, v4);
        if ((v67 & 1) == 0)
        {
          v58, v68, v69, v70, v71, v72, v73, v74;
          v76 = v89;
          goto LABEL_33;
        }

        if (v59 == ++v61)
        {
          v58, v68, v69, v70, v71, v72, v73, v74;
          v10 = v78;
          v45 = v89;
          goto LABEL_6;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

LABEL_6:
    v45, v51, v52, v53, v54, v55, v56, v57;
    v14 = v92;
    v23 = v84;
    v18 = v85;
    v29 = v80;
    v28 = v83;
  }

  v76 = v45;
LABEL_33:
  v76, v51, v52, v53, v54, v55, v56, v57;
}

void sub_1004AC5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder(0);
  v71 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v57 - v10;
  v72 = type metadata accessor for UUID();
  v66 = *(v72 - 8);
  __chkstk_darwin(v72, v12);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v65 = &v57 - v16;
  v17 = sub_1000F5104(&qword_100949228, &qword_1007AD448);
  __chkstk_darwin(v17 - 8, v18);
  v68 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20, v21);
  v69 = &v57 - v23;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v24 = 0;
    v61 = a1;
    v27 = *(a1 + 64);
    v26 = a1 + 64;
    v25 = v27;
    v28 = 1 << *(v26 - 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v25;
    v57 = (v28 + 63) >> 6;
    v58 = v26;
    v59 = a2;
    v60 = v66 + 16;
    v70 = (v66 + 32);
    v63 = (v66 + 8);
    v64 = v7;
    v62 = v11;
    while (v30)
    {
      v31 = (v30 - 1) & v30;
      v32 = __clz(__rbit64(v30)) | (v24 << 6);
LABEL_16:
      v38 = v61;
      v40 = v65;
      v39 = v66;
      v41 = v72;
      (*(v66 + 16))(v65, *(v61 + 48) + *(v66 + 72) * v32, v72, v22);
      sub_1001CD744(*(v38 + 56) + *(v71 + 72) * v32, v11);
      v42 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
      v43 = *(v42 + 48);
      v44 = *(v39 + 32);
      v45 = v68;
      v44(v68, v40, v41);
      sub_10013FE70(v11, v45 + v43);
      (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
      v35 = v69;
      v30 = v31;
      a2 = v59;
LABEL_17:
      sub_100031B58(v45, v35, &qword_100949228, &qword_1007AD448);
      v46 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
      if ((*(*(v46 - 8) + 48))(v35, 1, v46) == 1)
      {
        return;
      }

      v47 = *(v46 + 48);
      v48 = v67;
      v49 = v72;
      (*v70)(v67, v35, v72);
      v50 = v35 + v47;
      v51 = v64;
      sub_10013FE70(v50, v64);
      v52 = sub_100363F20(v48);
      LOBYTE(v47) = v53;
      (*v63)(v48, v49);
      if ((v47 & 1) == 0)
      {
        sub_1001CB574(v51);
        return;
      }

      v54 = *(a2 + 56) + *(v71 + 72) * v52;
      v11 = v62;
      sub_1001CD744(v54, v62);
      v55 = sub_1001C8F1C();
      sub_1001CB574(v11);
      sub_1001CB574(v51);
      if ((v55 & 1) == 0)
      {
        return;
      }
    }

    if (v57 <= v24 + 1)
    {
      v33 = v24 + 1;
    }

    else
    {
      v33 = v57;
    }

    v34 = v33 - 1;
    v35 = v69;
    while (1)
    {
      v36 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v36 >= v57)
      {
        v56 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
        v45 = v68;
        (*(*(v56 - 8) + 56))(v68, 1, 1, v56);
        v30 = 0;
        v24 = v34;
        goto LABEL_17;
      }

      v37 = *(v58 + 8 * v36);
      ++v24;
      if (v37)
      {
        v31 = (v37 - 1) & v37;
        v32 = __clz(__rbit64(v37)) | (v36 << 6);
        v24 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1004ACB00(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for UUID();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81, v4);
  v77 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v75 = v71 - v8;
  v9 = sub_1000F5104(&qword_100949200, &qword_1007AD418);
  __chkstk_darwin(v9 - 8, v10);
  v78 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v74 = v71 - v14;
    v16 = 0;
    v72 = a1;
    v19 = *(a1 + 64);
    v18 = a1 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v71[0] = v18;
    v71[1] = v76 + 16;
    v79 = (v76 + 32);
    v73 = (v76 + 8);
    while (v22)
    {
      v80 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_16:
      v29 = v72;
      v30 = v75;
      v31 = v76;
      v32 = v81;
      (*(v76 + 16))(v75, *(v72 + 48) + *(v76 + 72) * v24, v81, v15);
      v33 = *(*(v29 + 56) + 8 * v24);
      v34 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
      v35 = *(v34 + 48);
      v36 = *(v31 + 32);
      v37 = v78;
      v36(v78, v30, v32);
      *(v37 + v35) = v33;
      (*(*(v34 - 8) + 56))(v37, 0, 1, v34);

LABEL_17:
      v38 = v74;
      sub_100031B58(v37, v74, &qword_100949200, &qword_1007AD418);
      v39 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        return;
      }

      v40 = *(v39 + 48);
      v41 = v77;
      v42 = v81;
      (*v79)(v77, v38, v81);
      v43 = *(v38 + v40);
      v44 = sub_100363F20(v41);
      LOBYTE(v40) = v45;
      (*v73)(v41, v42);
      if ((v40 & 1) == 0)
      {
        v43, v46, v47, v48, v49, v50, v51, v52;
        return;
      }

      v53 = *(*(a2 + 56) + 8 * v44);

      v55 = sub_1003AEA7C(v54, v43);
      v53, v56, v57, v58, v59, v60, v61, v62;
      v43, v63, v64, v65, v66, v67, v68, v69;
      v22 = v80;
      if ((v55 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v16 + 1)
    {
      v25 = v16 + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        v70 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
        v37 = v78;
        (*(*(v70 - 8) + 56))(v78, 1, 1, v70);
        v80 = 0;
        v16 = v26;
        goto LABEL_17;
      }

      v28 = *(v71[0] + 8 * v27);
      ++v16;
      if (v28)
      {
        v80 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v16 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1004ACF8C(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75, v4);
  v72 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v68 = v65 - v8;
  v9 = sub_1000F5104(&qword_100949210, &qword_1007AD428);
  __chkstk_darwin(v9 - 8, v10);
  v15 = __chkstk_darwin(v11, v12);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v70 = v65 - v13;
    v71 = v14;
    v16 = 0;
    v66 = a1;
    v19 = *(a1 + 64);
    v18 = a1 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v65[0] = v18;
    v65[1] = v69 + 16;
    v73 = (v69 + 32);
    v67 = (v69 + 8);
    while (v22)
    {
      v74 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_17:
      v31 = v66;
      v32 = v69;
      (*(v69 + 16))(v68, *(v66 + 48) + *(v69 + 72) * v24, v75, v15);
      v33 = (*(v31 + 56) + 16 * v24);
      v35 = *v33;
      v34 = v33[1];
      v36 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
      v37 = (v71 + *(v36 + 48));
      v28 = v71;
      (*(v32 + 32))();
      *v37 = v35;
      v37[1] = v34;
      (*(*(v36 - 8) + 56))(v28, 0, 1, v36);

      v27 = v70;
LABEL_18:
      sub_100031B58(v28, v27, &qword_100949210, &qword_1007AD428);
      v38 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
      if ((*(*(v38 - 8) + 48))(v27, 1, v38) == 1)
      {
        return;
      }

      v39 = (v27 + *(v38 + 48));
      v40 = v72;
      v41 = v75;
      (*v73)(v72, v27, v75);
      v42 = *v39;
      v43 = v39[1];
      v44 = sub_100363F20(v40);
      v46 = v45;
      (*v67)(v40, v41);
      if ((v46 & 1) == 0)
      {
LABEL_31:
        v43, v47, v48, v49, v50, v51, v52, v53;
        return;
      }

      v54 = (*(a2 + 56) + 16 * v44);
      v47 = v54[1];
      if (v47)
      {
        if (!v43)
        {
          return;
        }

        if (*v54 == v42 && v47 == v43)
        {
          v43, v47, v48, v49, v50, v51, v52, v53;
          v22 = v74;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v43, v57, v58, v59, v60, v61, v62, v63;
          v22 = v74;
          if ((v56 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        v22 = v74;
        if (v43)
        {
          goto LABEL_31;
        }
      }
    }

    if (v23 <= v16 + 1)
    {
      v25 = v16 + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 - 1;
    v27 = v70;
    v28 = v71;
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v23)
      {
        v64 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
        (*(*(v64 - 8) + 56))(v28, 1, 1, v64);
        v74 = 0;
        v16 = v26;
        goto LABEL_18;
      }

      v30 = *(v65[0] + 8 * v29);
      ++v16;
      if (v30)
      {
        v74 = (v30 - 1) & v30;
        v24 = __clz(__rbit64(v30)) | (v29 << 6);
        v16 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_1004AD468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v76 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v69 = &v62 - v10;
  __chkstk_darwin(v11, v12);
  v68 = &v62 - v13;
  __chkstk_darwin(v14, v15);
  v77 = &v62 - v16;
  v17 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  __chkstk_darwin(v17 - 8, v18);
  v23 = __chkstk_darwin(v19, v20);
  v71 = a2;
  if (a1 == a2)
  {
    v72 = 1;
  }

  else if (*(a1 + 16) == *(v71 + 16))
  {
    v67 = &v62 - v21;
    v70 = v22;
    v24 = 0;
    v64 = a1;
    v25 = *(a1 + 64);
    v62 = a1 + 64;
    v63 = v7;
    v26 = 1 << *(a1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v29 = (v26 + 63) >> 6;
    v73 = v76 + 16;
    v74 = (v76 + 32);
    v65 = v29;
    v66 = (v76 + 8);
    while (v28)
    {
      v75 = (v28 - 1) & v28;
      v30 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_16:
      v36 = v64;
      v37 = v76;
      v38 = *(v76 + 72) * v30;
      v39 = *(v76 + 16);
      v39(v77, *(v64 + 48) + v38, v4, v23);
      v40 = v68;
      (v39)(v68, *(v36 + 56) + v38, v4);
      v41 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      v42 = *(v41 + 48);
      v43 = *(v37 + 32);
      v44 = v70;
      v43(v70, v77, v4);
      v45 = v40;
      v33 = v44;
      v43(v44 + v42, v45, v4);
      (*(*(v41 - 8) + 56))(v44, 0, 1, v41);
      v7 = v63;
LABEL_17:
      v46 = v33;
      v47 = v67;
      sub_100031B58(v46, v67, &qword_100949220, &qword_1007AD438);
      v48 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
      v72 = v49 == 1;
      if (v49 == 1)
      {
        return;
      }

      v50 = v4;
      v51 = v77;
      v52 = *(v48 + 48);
      v53 = *v74;
      v54 = v69;
      (*v74)(v69, v47, v50);
      v53(v7, v47 + v52, v50);
      v55 = v71;
      v56 = v7;
      v57 = sub_100363F20(v54);
      LOBYTE(v52) = v58;
      v59 = *v66;
      (*v66)(v54, v50);
      if ((v52 & 1) == 0)
      {
        v59(v56, v50);
        goto LABEL_24;
      }

      (*(v76 + 16))(v51, *(v55 + 56) + *(v76 + 72) * v57, v50);
      sub_10018E4E0();
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59(v51, v50);
      v59(v56, v50);
      v7 = v56;
      v4 = v50;
      v29 = v65;
      v28 = v75;
      if ((v60 & 1) == 0)
      {
        return;
      }
    }

    if (v29 <= v24 + 1)
    {
      v31 = v24 + 1;
    }

    else
    {
      v31 = v29;
    }

    v32 = v31 - 1;
    v33 = v70;
    while (1)
    {
      v34 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v34 >= v29)
      {
        v61 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
        (*(*(v61 - 8) + 56))(v33, 1, 1, v61);
        v75 = 0;
        v24 = v32;
        goto LABEL_17;
      }

      v35 = *(v62 + 8 * v34);
      ++v24;
      if (v35)
      {
        v75 = (v35 - 1) & v35;
        v30 = __clz(__rbit64(v35)) | (v34 << 6);
        v24 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v72 = 0;
  }
}

void sub_1004ADA04(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = sub_100005F4C(v14, v15);
      v19 = v18;
      v15, v18, v20, v21, v22, v23, v24, v25;
      if ((v19 & 1) == 0 || (v33 = *(*(a2 + 56) + 8 * v17), v34 = *(v33 + 16), v34 != *(v16 + 16)))
      {
LABEL_28:
        v16, v26, v27, v28, v29, v30, v31, v32;
        return;
      }

      if (v34)
      {
        v35 = v33 == v16;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        v36 = (v33 + 40);
        v37 = (v16 + 40);
        while (v34)
        {
          v26 = *v36;
          v27 = *(v37 - 1);
          v28 = *v37;
          v38 = *(v36 - 1) == v27 && v26 == v28;
          if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_28;
          }

          v36 += 2;
          v37 += 2;
          if (!--v34)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_6:
      v16, v26, v27, v28, v29, v30, v31, v32;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_1004ADBAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v47 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100005F4C(v15, v16);
    v22 = v21;
    v16, v21, v23, v24, v25, v26, v27, v28;
    if ((v22 & 1) == 0)
    {
      v18, v29, v30, v31, v32, v33, v34, v35;
      return 0;
    }

    v36 = (*(a2 + 56) + 16 * v20);
    v37 = v36[1];
    if (*v36 == v19 && v37 == v18)
    {
      v18, v37, v30, v31, v32, v33, v34, v35;
      result = v13;
      v7 = v47;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18, v40, v41, v42, v43, v44, v45, v46;
      result = v13;
      v7 = v47;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1004ADD50(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = sub_100005F4C(v14, v15);
      v19 = v18;
      v15, v18, v20, v21, v22, v23, v24, v25;
      if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void *sub_1004ADE8C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1004AE0E8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1004ADF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
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
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1004AE0E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v32 = a3;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v32 + 48) + 16 * v14);
    v16 = v15[1];
    v31[0] = *v15;
    v31[1] = v16;

    v17 = (a4)(v31);
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v26 = v32;

        sub_1001A0BCC(a1, a2, v29, v26);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

double sub_1004AE25C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

double sub_1004AE274@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

void sub_1004AE2BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 40 * v4 + 25);
    do
    {
      if (*v5 == 1)
      {
        v6 = *(v5 - 17);
        v7 = *(v5 - 9);
        v8 = *(v5 - 25);
        v9 = *(v5 - 33);
        v10 = *(v5 - 1);
        swift_bridgeObjectRetain_n();
        MutableOrderedSet.remove(_:)();
        v11 = sub_100369184(v8, v6);
        v11, v12, v13, v14, v15, v16, v17, v18;
        MutableOrderedSet.remove(_:)();
        v6, v19, v20, v21, v22, v23, v24, v25;
        sub_1004AE8B4(v9, v8, v6, v7, v10, 1, v26, v27);
      }

      v5 -= 40;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_1004AE3B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v72 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v64 = v6;
  while (v9)
  {
    v67 = a4;
    v21 = v11;
LABEL_14:
    v23 = __clz(__rbit64(v9)) | (v21 << 6);
    v24 = (*(a1 + 48) + 16 * v23);
    v25 = v24[1];
    v26 = *(*(a1 + 56) + 8 * v23);
    v71[0] = *v24;
    v71[1] = v25;
    v71[2] = v26;

    (a2)(&v68, v71);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v25, v34, v35, v36, v37, v38, v39, v40;
    v41 = v68;
    v42 = v69;
    v43 = v70;
    v44 = *v72;
    v52 = sub_100005F4C(v68, v69);
    v53 = v44[2];
    v54 = (v45 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_25;
    }

    v56 = v45;
    if (v44[3] >= v55)
    {
      if ((v67 & 1) == 0)
      {
        sub_10037443C();
      }
    }

    else
    {
      sub_10036C5F8(v55, v67 & 1);
      v57 = sub_100005F4C(v41, v42);
      if ((v56 & 1) != (v45 & 1))
      {
        goto LABEL_27;
      }

      v52 = v57;
    }

    v9 &= v9 - 1;
    v58 = *v72;
    if (v56)
    {
      v42, v45, v46, v47, v48, v49, v50, v51;
      v12 = v58[7];
      v13 = *(v12 + 8 * v52);
      *(v12 + 8 * v52) = v43;
      v13, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
      v58[(v52 >> 6) + 8] |= 1 << v52;
      v59 = (v58[6] + 16 * v52);
      *v59 = v41;
      v59[1] = v42;
      *(v58[7] + 8 * v52) = v43;
      v60 = v58[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_26;
      }

      v58[2] = v62;
    }

    a4 = 1;
    v11 = v21;
    v6 = v64;
  }

  v22 = v11;
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v21);
    ++v22;
    if (v9)
    {
      v67 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004AE640(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v50 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v55[0] = *v15;
    v55[1] = v16;
    v55[2] = v17;

    (a2)(&v52, v55);
    v16, v18, v19, v20, v21, v22, v23, v24;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    v28 = *a5;
    v36 = sub_100005F4C(v52, v53);
    v37 = v28[2];
    v38 = (v29 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_25;
    }

    v40 = v29;
    if (v28[3] >= v39)
    {
      if ((v50 & 1) == 0)
      {
        sub_100373044();
      }
    }

    else
    {
      sub_100369F58(v39, v50 & 1);
      v41 = sub_100005F4C(v25, v26);
      if ((v40 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v36 = v41;
    }

    v9 &= v9 - 1;
    v42 = *a5;
    if (v40)
    {
      v26, v29, v30, v31, v32, v33, v34, v35;
      *(v42[7] + 8 * v36) = v27;
    }

    else
    {
      v42[(v36 >> 6) + 8] |= 1 << v36;
      v43 = (v42[6] + 16 * v36);
      *v43 = v25;
      v43[1] = v26;
      *(v42[7] + 8 * v36) = v27;
      v44 = v42[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_26;
      }

      v42[2] = v46;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004AE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004AE92C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004AE96C(*a1, a1[1], *(*(v2 + 16) + 24), *(*(v2 + 24) + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1004AE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (*(a3 + 16))
  {
    v8 = sub_100005F4C(a1, a2);
    if (v9)
    {
      if (!*(a4 + 16))
      {
        return 0;
      }

      v10 = *(*(a3 + 56) + 8 * v8);
      v11 = sub_100005F4C(v5, a2);
      if ((v12 & 1) == 0 || v10 >= *(*(a4 + 56) + 8 * v11))
      {
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1004AEA88()
{
  result = qword_1009491E0;
  if (!qword_1009491E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009491E0);
  }

  return result;
}

unint64_t sub_1004AEB24()
{
  result = qword_1009491F8;
  if (!qword_1009491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009491F8);
  }

  return result;
}

unint64_t sub_1004AEB78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x664F7368746E6F6DLL;
    v4 = 0x7469736F50746573;
    if (a1 != 8)
    {
      v4 = 0x54664F736B656577;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0x636E657571657266;
    if (a1 != 5)
    {
      v5 = 0x6C61767265746E69;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x4965746144646E65;
    if (a1 != 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0x6854664F73796164;
    }

    if (a1 <= 1u)
    {
      return 0x6854664F73796164;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1004AECE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100949288, &qword_1007AD5C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1004B1230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  HIBYTE(v11) = 0;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  sub_1004B1310(&qword_100949290, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    HIBYTE(v11) = 1;
    sub_1000F5104(&qword_100949270, &qword_1007AD5B8);
    sub_1004B137C(&qword_100949298, sub_1004B13F4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[2];
    HIBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[8];
    HIBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[9];
    HIBYTE(v11) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[10];
    HIBYTE(v11) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004AF088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1004B0628(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1004AF0BC(uint64_t a1)
{
  v2 = sub_1004B1230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AF0F8(uint64_t a1)
{
  v2 = sub_1004B1230();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1004AF134@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004B098C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1004AF1A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1004AF488(v7, v9) & 1;
}

uint64_t sub_1004AF214(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F5104(&qword_100949258, &qword_1007AD5A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1004B11DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004AF39C(uint64_t a1)
{
  v2 = sub_1004B11DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AF3D8(uint64_t a1)
{
  v2 = sub_1004B11DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004AF414@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004B1034(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1004AF488(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v2 + 16);
    if (v4 != *(v3 + 16))
    {
      return 0;
    }

    if (v4)
    {
      v5 = v2 == v3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = (v2 + 32);
      v7 = (v3 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          return 0;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_59;
    }
  }

  else if (v3)
  {
    return 0;
  }

LABEL_14:
  v8 = *(result + 8);
  v9 = a2[1];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = v8[1].i64[0];
    if (v10 != v9[1].i64[0])
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = v8 + 2;
      v13 = v9 + 2;
      while (v10)
      {
        v14 = vmovn_s64(vceqq_s64(*v12, *v13));
        if ((v14.i32[0] & v14.i32[1] & 1) == 0)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_65;
    }
  }

  else if (v9)
  {
    return 0;
  }

LABEL_27:
  v15 = *(result + 16);
  v16 = a2[2];
  if (!v15)
  {
    if (v16)
    {
      return 0;
    }

LABEL_40:
    v21 = *(a2 + 32);
    if (*(result + 32))
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 24) != *(a2 + 3))
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (*(result + 40) != a2[5] || *(result + 48) != a2[6] || *(result + 56) != a2[7])
    {
      return 0;
    }

    v22 = a2[8];
    if (*(result + 64))
    {
      if (!v22)
      {
        return 0;
      }

      v23 = result;
      v24 = a2;
      v25 = sub_1003AE66C(*(result + 64), a2[8]);
      a2 = v24;
      v26 = v25;
      result = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }

    v4 = a2[9];
    if (*(result + 72))
    {
      if (v4)
      {
        v27 = result;
        v28 = a2;
        v29 = sub_1003AE66C(*(result + 72), a2[9]);
        a2 = v28;
        v30 = v29;
        result = v27;
        if (v30)
        {
LABEL_60:
          v31 = *(result + 80);
          a2 = a2[10];
          if (v31)
          {
            return a2 && (sub_1003AE66C(v31, a2) & 1) != 0;
          }

LABEL_65:
          if (!a2)
          {
            return 1;
          }
        }
      }

      return 0;
    }

LABEL_59:
    if (!v4)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = *(v15 + 16);
  if (v17 != *(v16 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v15 == v16;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_40;
  }

  v19 = (v15 + 32);
  v20 = (v16 + 32);
  while (v17)
  {
    if (*v19 != *v20)
    {
      return 0;
    }

    ++v19;
    ++v20;
    if (!--v17)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

void sub_1004AF6D8(id a1@<X0>, double *a2@<X8>)
{
  v195 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v191 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v196 = &v189 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  *&v12 = __chkstk_darwin(v9, v11).n128_u64[0];
  v190 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 daysOfTheMonth];
  v197 = a1;
  v198 = v10;
  if (!v14)
  {
    v194 = 0;
    goto LABEL_16;
  }

  v15 = v14;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_15:
    v16, v17, v18, v19, v20, v21, v22, v23;
    v194 = &_swiftEmptyArrayStorage;
    a1 = v197;
    goto LABEL_16;
  }

  v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_4:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253830(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  v25 = 0;
  v26 = v199;
  do
  {
    v27 = v26;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v16 + 8 * v25 + 32);
    }

    v29 = v28;
    v30 = [v28 integerValue];

    v26 = v27;
    v199 = v27;
    v38 = *v27->clientIdentity;
    v39 = *&v26->clientIdentity[8];
    if (v38 >= v39 >> 1)
    {
      sub_100253830((v39 > 1), v38 + 1, 1);
      v26 = v199;
    }

    ++v25;
    *v26->clientIdentity = v38 + 1;
    *&v26->clientIdentity[8 * v38 + 16] = v30;
  }

  while (v24 != v25);
  v194 = v26;
  v16, v31, v32, v33, v34, v35, v36, v37;
  a1 = v197;
  v10 = v198;
LABEL_16:
  v40 = [a1 daysOfTheWeek];
  if (!v40)
  {
    v193 = 0;
    goto LABEL_31;
  }

  v41 = v40;
  sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v42 >> 62))
  {
    v50 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_19;
    }

LABEL_30:
    v42, v43, v44, v45, v46, v47, v48, v49;
    v193 = &_swiftEmptyArrayStorage;
    a1 = v197;
    goto LABEL_31;
  }

  v50 = _CocoaArrayWrapper.endIndex.getter();
  if (!v50)
  {
    goto LABEL_30;
  }

LABEL_19:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253800(0, v50 & ~(v50 >> 63), 0);
  if (v50 < 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v192 = v9;
  v51 = 0;
  v52 = v199;
  do
  {
    v53 = v52;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v54 = *(v42 + 8 * v51 + 32);
    }

    v55 = v54;
    v56 = [v54 dayOfTheWeek];
    v57 = [v55 weekNumber];

    v52 = v53;
    v199 = v53;
    v65 = *v53->clientIdentity;
    v66 = *&v52->clientIdentity[8];
    if (v65 >= v66 >> 1)
    {
      sub_100253800((v66 > 1), v65 + 1, 1);
      v52 = v199;
    }

    ++v51;
    *v52->clientIdentity = v65 + 1;
    v67 = v52 + 16 * v65;
    *(v67 + 4) = v56;
    *(v67 + 5) = v57;
  }

  while (v50 != v51);
  v193 = v52;
  v42, v58, v59, v60, v61, v62, v63, v64;
  a1 = v197;
  v10 = v198;
  v9 = v192;
LABEL_31:
  v68 = [a1 daysOfTheYear];
  if (!v68)
  {
    v192 = 0;
    goto LABEL_46;
  }

  v69 = v68;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v70 >> 62))
  {
    v78 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      goto LABEL_34;
    }

LABEL_45:
    v70, v71, v72, v73, v74, v75, v76, v77;
    v192 = &_swiftEmptyArrayStorage;
    a1 = v197;
    goto LABEL_46;
  }

  v78 = _CocoaArrayWrapper.endIndex.getter();
  if (!v78)
  {
    goto LABEL_45;
  }

LABEL_34:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253830(0, v78 & ~(v78 >> 63), 0);
  if (v78 < 0)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v79 = 0;
  v80 = v199;
  do
  {
    v81 = v80;
    if ((v70 & 0xC000000000000001) != 0)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v82 = *(v70 + 8 * v79 + 32);
    }

    v83 = v82;
    v84 = [v82 integerValue];

    v80 = v81;
    v199 = v81;
    v92 = *v81->clientIdentity;
    v93 = *&v80->clientIdentity[8];
    if (v92 >= v93 >> 1)
    {
      sub_100253830((v93 > 1), v92 + 1, 1);
      v80 = v199;
    }

    ++v79;
    *v80->clientIdentity = v92 + 1;
    *&v80->clientIdentity[8 * v92 + 16] = v84;
  }

  while (v78 != v79);
  v192 = v80;
  v70, v85, v86, v87, v88, v89, v90, v91;
  a1 = v197;
  v10 = v198;
LABEL_46:
  v94 = [a1 recurrenceEnd];
  if (!v94)
  {
    v98 = v196;
    (*(v10 + 56))(v196, 1, 1, v9);
LABEL_52:
    sub_1001AAD5C(v98);
    v99 = 0;
    v100 = 1;
    goto LABEL_54;
  }

  v95 = v94;
  v96 = [v94 endDate];

  v97 = v191;
  if (v96)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v97, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v191, 1, 1, v9);
  }

  v98 = v196;
  sub_10012F7FC(v97, v196);
  if ((*(v10 + 48))(v98, 1, v9) == 1)
  {
    goto LABEL_52;
  }

  v101 = v190;
  (*(v10 + 32))(v190, v98, v9);
  Date.timeIntervalSinceReferenceDate.getter();
  v99 = v102;
  (*(v10 + 8))(v101, v9);
  v100 = 0;
LABEL_54:
  v200 = v100;
  v103 = [a1 firstDayOfTheWeek];
  v104 = [a1 frequency];
  v105 = [a1 interval];
  v106 = [a1 monthsOfTheYear];
  v196 = v103;
  v190 = v105;
  v191 = v104;
  if (!v106)
  {
    v118 = 0;
    goto LABEL_69;
  }

  v107 = v106;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v108 >> 62))
  {
    v116 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v116)
    {
      goto LABEL_57;
    }

LABEL_68:
    v108, v109, v110, v111, v112, v113, v114, v115;
    v118 = &_swiftEmptyArrayStorage;
    goto LABEL_69;
  }

  v116 = _CocoaArrayWrapper.endIndex.getter();
  if (!v116)
  {
    goto LABEL_68;
  }

LABEL_57:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253830(0, v116 & ~(v116 >> 63), 0);
  if (v116 < 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v117 = 0;
  v118 = v199;
  do
  {
    if ((v108 & 0xC000000000000001) != 0)
    {
      v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v119 = *(v108 + 8 * v117 + 32);
    }

    v120 = v119;
    v121 = [v119 integerValue];

    v199 = v118;
    v130 = *v118->clientIdentity;
    v129 = *&v118->clientIdentity[8];
    if (v130 >= v129 >> 1)
    {
      sub_100253830((v129 > 1), v130 + 1, 1);
      v118 = v199;
    }

    ++v117;
    *v118->clientIdentity = v130 + 1;
    *&v118->clientIdentity[8 * v130 + 16] = v121;
  }

  while (v116 != v117);
  v108, v122, v123, v124, v125, v126, v127, v128;
  a1 = v197;
LABEL_69:
  v131 = [a1 setPositions];
  if (!v131)
  {
    v143 = 0;
    goto LABEL_84;
  }

  v132 = v131;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v133 >> 62))
  {
    v141 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v141)
    {
      goto LABEL_72;
    }

LABEL_83:
    v133, v134, v135, v136, v137, v138, v139, v140;
    v143 = &_swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v141 = _CocoaArrayWrapper.endIndex.getter();
  if (!v141)
  {
    goto LABEL_83;
  }

LABEL_72:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253830(0, v141 & ~(v141 >> 63), 0);
  if (v141 < 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v142 = 0;
  v143 = v199;
  do
  {
    if ((v133 & 0xC000000000000001) != 0)
    {
      v144 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v144 = *(v133 + 8 * v142 + 32);
    }

    v145 = v144;
    v146 = [v144 integerValue];

    v199 = v143;
    v155 = *v143->clientIdentity;
    v154 = *&v143->clientIdentity[8];
    if (v155 >= v154 >> 1)
    {
      sub_100253830((v154 > 1), v155 + 1, 1);
      v143 = v199;
    }

    ++v142;
    *v143->clientIdentity = v155 + 1;
    *&v143->clientIdentity[8 * v155 + 16] = v146;
  }

  while (v141 != v142);
  v133, v147, v148, v149, v150, v151, v152, v153;
  a1 = v197;
LABEL_84:
  v156 = [a1 weeksOfTheYear];
  if (!v156)
  {

    v162 = 0;
LABEL_99:
    v184 = v200;
    v185 = v195;
    v186 = v193;
    *v195 = v194;
    *(v185 + 1) = v186;
    *(v185 + 2) = v192;
    *(v185 + 3) = v99;
    *(v185 + 32) = v184;
    v187 = v190;
    v188 = v191;
    *(v185 + 5) = v196;
    *(v185 + 6) = v188;
    *(v185 + 7) = v187;
    *(v185 + 8) = v118;
    *(v185 + 9) = v143;
    *(v185 + 10) = v162;
    return;
  }

  v157 = v156;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v158 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v159 = v158;
  if (!(v158 >> 62))
  {
    v160 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v160)
    {
      goto LABEL_87;
    }

    goto LABEL_98;
  }

  v160 = _CocoaArrayWrapper.endIndex.getter();
  if (!v160)
  {
LABEL_98:

    v158, v177, v178, v179, v180, v181, v182, v183;
    v162 = &_swiftEmptyArrayStorage;
    goto LABEL_99;
  }

LABEL_87:
  v199 = &_swiftEmptyArrayStorage;
  sub_100253830(0, v160 & ~(v160 >> 63), 0);
  if ((v160 & 0x8000000000000000) == 0)
  {
    v161 = 0;
    v162 = v199;
    v163 = v159;
    v198 = v159 & 0xC000000000000001;
    v164 = v160;
    do
    {
      if (v198)
      {
        v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v165 = *(v163 + 8 * v161 + 32);
      }

      v166 = v165;
      v167 = [v165 integerValue];

      v199 = v162;
      v169 = *v162->clientIdentity;
      v168 = *&v162->clientIdentity[8];
      if (v169 >= v168 >> 1)
      {
        sub_100253830((v168 > 1), v169 + 1, 1);
        v162 = v199;
      }

      ++v161;
      *v162->clientIdentity = v169 + 1;
      *&v162->clientIdentity[8 * v169 + 16] = v167;
      v163 = v159;
    }

    while (v164 != v161);

    v159, v170, v171, v172, v173, v174, v175, v176;
    goto LABEL_99;
  }

LABEL_105:
  __break(1u);
}

double destroy for RDSavedRecurrenceRule(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[1], v9, v10, v11, v12, v13, v14, v15;
  a1[2], v16, v17, v18, v19, v20, v21, v22;
  a1[8], v23, v24, v25, v26, v27, v28, v29;
  a1[9], v30, v31, v32, v33, v34, v35, v36;
  v44 = a1[10];

  v44, v37, v38, v39, v40, v41, v42, v43;
  return result;
}

uint64_t initializeWithCopy for RDSavedRecurrenceRule(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 5);
  v5 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v5;
  v6 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v6;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDSavedRecurrenceRule(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[1];
  a1[1] = a2[1];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a1[2];
  a1[2] = a2[2];

  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = a2[3];
  *(a1 + 32) = *(a2 + 32);
  a1[3] = v28;
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  v29 = a1[8];
  a1[8] = a2[8];

  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = a1[9];
  a1[9] = a2[9];

  v37, v38, v39, v40, v41, v42, v43, v44;
  v45 = a1[10];
  a1[10] = a2[10];

  v45, v46, v47, v48, v49, v50, v51, v52;
  return a1;
}

__n128 initializeWithTake for RDSavedRecurrenceRule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for RDSavedRecurrenceRule(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a1 + 8);
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64), v26, v27, v28, v29, v30, v31, v32;
  v33 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  v41, v42, v43, v44, v45, v46, v47, v48;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedRecurrenceRule(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for RDSavedRecurrenceRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1004B0628(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = 0xEE0068746E6F4D65;
  v10 = a1 == 0x6854664F73796164 && a2 == 0xEE0068746E6F4D65;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xED00006B65655765;
    if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0xED00007261655965;
      if (a1 == 0x6854664F73796164 && a2 == 0xED00007261655965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0xEF6C61767265746ELL;
        if (a1 == 0x4965746144646E65 && a2 == 0xEF6C61767265746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x80000001007EA820;
          if (a1 == 0xD000000000000011 && 0x80000001007EA820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else
          {
            v17 = 0xEF72616559656854;
            if (a1 == 0x664F7368746E6F6DLL && a2 == 0xEF72616559656854 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 7;
            }

            else
            {
              v18 = 0xEC000000736E6F69;
              if (a1 == 0x7469736F50746573 && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else if (a1 == 0x54664F736B656577 && a2 == 0xEE00726165596568)
              {
                0xEE00726165596568, 0xEE00726165596568, a3, a4, a5, a6, a7, a8;
                return 9;
              }

              else
              {
                v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
                a2, v20, v21, v22, v23, v24, v25, v26;
                if (v19)
                {
                  return 9;
                }

                else
                {
                  return 10;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004B098C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100949260, &qword_1007AD5A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1004B1230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000607C(a1);
  }

  else
  {
    v30 = a2;
    sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
    LOBYTE(v31) = 0;
    sub_1004B1310(&qword_10093EED8, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v37[0];
    sub_1000F5104(&qword_100949270, &qword_1007AD5B8);
    LOBYTE(v31) = 1;
    sub_1004B137C(&qword_100949278, sub_1004B1284, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v37[0];
    LOBYTE(v31) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v37[0];
    LOBYTE(v37[0]) = 3;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v10 & 1;
    LOBYTE(v37[0]) = 4;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37[0]) = 5;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37[0]) = 6;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v31) = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v37[0];
    LOBYTE(v31) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v37[0];
    v47 = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v21 = v45;
    *&v31 = v29;
    *(&v31 + 1) = v28;
    v12 = v27;
    *&v32 = v27;
    *(&v32 + 1) = v26;
    v13 = v46;
    LOBYTE(v33) = v46;
    v14 = v25;
    *(&v33 + 1) = v25;
    *&v34 = v11;
    v15 = v24;
    v16 = v23;
    *(&v34 + 1) = v24;
    *&v35 = v23;
    v17 = v22;
    *(&v35 + 1) = v22;
    v36 = v45;
    sub_1004B12D8(&v31, v37);
    sub_10000607C(a1);
    v37[0] = v29;
    v37[1] = v28;
    v37[2] = v12;
    v37[3] = v26;
    v38 = v13;
    v39 = v14;
    v40 = v11;
    v41 = v15;
    v42 = v16;
    v43 = v17;
    v44 = v21;
    sub_100311E40(v37);
    v18 = v34;
    v19 = v30;
    *(v30 + 32) = v33;
    *(v19 + 48) = v18;
    *(v19 + 64) = v35;
    *(v19 + 80) = v36;
    v20 = v32;
    *v19 = v31;
    *(v19 + 16) = v20;
  }
}

uint64_t sub_1004B1034(void *a1)
{
  v2 = sub_1000F5104(&qword_100949248, &qword_1007AD598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  sub_10000F61C(a1, a1[3]);
  sub_1004B11DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v7;
}

unint64_t sub_1004B11DC()
{
  result = qword_100949250;
  if (!qword_100949250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949250);
  }

  return result;
}

unint64_t sub_1004B1230()
{
  result = qword_100949268;
  if (!qword_100949268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949268);
  }

  return result;
}

unint64_t sub_1004B1284()
{
  result = qword_100949280;
  if (!qword_100949280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949280);
  }

  return result;
}

uint64_t sub_1004B1310(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094EC10, &qword_1007AD5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004B137C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100949270, &qword_1007AD5B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004B13F4()
{
  result = qword_1009492A0;
  if (!qword_1009492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedRecurrenceRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedRecurrenceRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004B15AC()
{
  result = qword_1009492A8;
  if (!qword_1009492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492A8);
  }

  return result;
}

unint64_t sub_1004B1604()
{
  result = qword_1009492B0;
  if (!qword_1009492B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492B0);
  }

  return result;
}

unint64_t sub_1004B165C()
{
  result = qword_1009492B8;
  if (!qword_1009492B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492B8);
  }

  return result;
}

unint64_t sub_1004B16B4()
{
  result = qword_1009492C0;
  if (!qword_1009492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492C0);
  }

  return result;
}

unint64_t sub_1004B170C()
{
  result = qword_1009492C8;
  if (!qword_1009492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492C8);
  }

  return result;
}

unint64_t sub_1004B1764()
{
  result = qword_1009492D0;
  if (!qword_1009492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492D0);
  }

  return result;
}

uint64_t sub_1004B17B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009492E0);
  v1 = sub_100006654(v0, qword_1009492E0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B1880()
{
  v0 = type metadata accessor for Date();
  sub_1000EECAC(v0, qword_1009492F8);
  sub_100006654(v0, qword_1009492F8);
  return Date.init(timeIntervalSinceReferenceDate:)();
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.__allocating_init(maxReminderCountToMigrate:lastModifiedAfterDate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = a1;
  sub_10012F78C(a2, &v5[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
  return v6;
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.init(maxReminderCountToMigrate:lastModifiedAfterDate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = a1;
  sub_10012F78C(a2, &v2[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
  return v6;
}

Swift::Void __swiftcall RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  if (qword_1009362A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_1009492E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders: migrating if needed", v7, 2u);
  }

  *&v12 = 0xD000000000000044;
  *(&v12 + 1) = 0x80000001007AD7D0;
  v8 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1000050A4(v14, &qword_100939ED0, &qword_100791B10);
LABEL_13:
    sub_1004B1E6C(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v14[0] = 0xD000000000000044;
    *(&v14[0] + 1) = 0x80000001007AD7D0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = [v11 integerValue];

  if (v9 < 1)
  {
    goto LABEL_13;
  }
}

void sub_1004B1E6C(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = v63 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v13 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = v63 - v16;
  *&v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v71 + 1) = v18;
  v19 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  aBlock = v71;
  v67 = v72;
  if (*(&v72 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v20 = v70;
    UUID.init(uuidString:)();
    v20, v21, v22, v23, v24, v25, v26, v27;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v48 = *(v10 + 32);
      v63[1] = v10 + 32;
      v64 = v48;
      v48(v17, v8, v9);
      v49 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
      v50 = [isEscapingClosureAtFileLocation persistentStoreCoordinator];
      [v49 setPersistentStoreCoordinator:v50];

      v51 = v10;
      v65 = v10;
      v52 = v49;
      [v49 setTransactionAuthor:RDStoreControllerUpdateAlternativeDueDatesOfCalDavRemindersMigrationAuthor];
      (*(v51 + 16))(v13, v17, v9);
      v53 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v63[0] = v2;
      v54 = (v11 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v64(v56 + v53, v13, v9);
      *(v56 + v54) = v52;
      *(v56 + v55) = isEscapingClosureAtFileLocation;
      v57 = v63[0];
      *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63[0];
      v58 = swift_allocObject();
      *(v58 + 16) = sub_1004B4180;
      *(v58 + 24) = v56;
      v68 = sub_1000529DC;
      v69 = v58;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v67 = sub_10000F160;
      *(&v67 + 1) = &unk_1008F3F70;
      v59 = _Block_copy(&aBlock);
      v60 = v52;
      v61 = isEscapingClosureAtFileLocation;
      v62 = v57;

      [v60 performBlockAndWait:v59];
      _Block_release(v59);

      (*(v65 + 8))(v17, v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_17;
    }

    v28 = &unk_100939D90;
    v29 = "8\n\r";
    p_aBlock = v8;
  }

  else
  {
    v28 = &qword_100939ED0;
    v29 = &qword_100791B10;
    p_aBlock = &aBlock;
  }

  sub_1000050A4(p_aBlock, v28, v29);
LABEL_10:
  if (qword_1009362A0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_1009492E0);
  v32 = isEscapingClosureAtFileLocation;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136446210;
    v37 = sub_1003533B0();
    v39 = v38;
    v40 = sub_10000668C(v37, v38, &aBlock);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "UpdateAlternativeDueDatesOfCalDavReminders: accountIdentifier is nil, skip migration {store: %{public}s}", v35, 0xCu);
    sub_10000607C(v36);
  }
}

void sub_1004B24A8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v5 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [v5 objectIDWithUUID:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_10000F8A4(v8, 0, 1u);
  v8, v11, v12, v13, v14, v15, v16, v17;
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v10];
  v20 = NSManagedObjectContext.fetch<A>(_:)();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:
    v20, v21, v22, v23, v24, v25, v26, v27;
    if (qword_1009362A0 == -1)
    {
LABEL_28:
      v111 = type metadata accessor for Logger();
      sub_100006654(v111, qword_1009492E0);
      v112 = v9;
      v113 = a3;
      v131 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v131, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v132 = v117;
        *v115 = 138412546;
        *(v115 + 4) = v112;
        *v116 = v112;
        *(v115 + 12) = 2082;
        v118 = v112;
        v119 = sub_1003533B0();
        v121 = v120;
        v122 = sub_10000668C(v119, v120, &v132);
        v121, v123, v124, v125, v126, v127, v128, v129;
        *(v115 + 14) = v122;
        _os_log_impl(&_mh_execute_header, v131, v114, "UpdateAlternativeDueDatesOfCalDavReminders: account not found {accountID: %@, store: %{public}s}", v115, 0x16u);
        sub_1000050A4(v116, &unk_100938E70, &unk_100797230);

        sub_10000607C(v117);

        return;
      }

      goto LABEL_31;
    }

LABEL_36:
    swift_once();
    goto LABEL_28;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v28 = *(v20 + 32);
LABEL_6:
  v131 = v28;
  v20, v29, v30, v31, v32, v33, v34, v35;
  v36 = [v131 accountTypeHost];
  v37 = [v36 isCalDav];

  if (v37)
  {
    if (qword_1009362A0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_1009492E0);
    v39 = a3;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v132 = v130;
      *v42 = 136446210;
      v43 = sub_1003533B0();
      v45 = v44;
      v46 = v9;
      v47 = v39;
      v48 = sub_10000668C(v43, v44, &v132);
      v45, v49, v50, v51, v52, v53, v54, v55;
      *(v42 + 4) = v48;
      v39 = v47;
      v9 = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "UpdateAlternativeDueDatesOfCalDavReminders BEGIN {store: %{public}s}", v42, 0xCu);
      sub_10000607C(v130);
    }

    v56 = objc_autoreleasePoolPush();
    sub_1004B310C(a2, v39);
    objc_autoreleasePoolPop(v56);
    if ([(RDXPCStorePerformer *)a2 hasChanges])
    {
      v132 = 0;
      if ([(RDXPCStorePerformer *)a2 save:&v132])
      {
        v78 = v132;
      }

      else
      {
        v79 = v132;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v132 = v83;
          *v82 = 136446210;
          swift_getErrorValue();
          v84 = Error.rem_errorDescription.getter();
          v86 = v85;
          v87 = sub_10000668C(v84, v85, &v132);
          v86, v88, v89, v90, v91, v92, v93, v94;
          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v80, v81, "UpdateAlternativeDueDatesOfCalDavReminders: error saving MOC {error: %{public}s}", v82, 0xCu);
          sub_10000607C(v83);
        }

        else
        {
        }
      }
    }

    v95 = v39;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v132 = v99;
      *v98 = 136446210;
      v100 = sub_1003533B0();
      v102 = v101;
      v103 = sub_10000668C(v100, v101, &v132);
      v102, v104, v105, v106, v107, v108, v109, v110;
      *(v98 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v96, v97, "UpdateAlternativeDueDatesOfCalDavReminders END {store: %{public}s}", v98, 0xCu);
      sub_10000607C(v99);
    }

    return;
  }

  if (qword_1009362A0 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_1009492E0);
  v58 = v9;
  v59 = a3;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v132 = v64;
    *v62 = 138412546;
    *(v62 + 4) = v58;
    *v63 = v58;
    *(v62 + 12) = 2082;
    v65 = v58;
    v66 = sub_1003533B0();
    v68 = v67;
    v69 = sub_10000668C(v66, v67, &v132);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v62 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "UpdateAlternativeDueDatesOfCalDavReminders: skip non-CalDAV account {accountID: %@, store: %{public}s}", v62, 0x16u);
    sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

    sub_10000607C(v64);

    return;
  }

LABEL_31:
}

void sub_1004B310C(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v3 = sub_1004B3414(a1, a2);
  if (!v2)
  {
    v11 = v3;
    if (v3 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v14 = *&v11->clientIdentity[8 * i + 16];
          }

          v15 = v14;
          v16 = objc_autoreleasePoolPush();
          sub_1004B4224(v15);
          objc_autoreleasePoolPop(v16);
        }
      }
    }

    v11, v4, v5, v6, v7, v8, v9, v10;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1004B3414(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v162 = a1;
  v4 = _s10PredicatesOMa(0);
  __chkstk_darwin(v4, v5);
  v7 = (&v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate, v7);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v168 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  if (qword_100936058 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v10 = qword_100974E08;
    v161 = v9;
    *(v9 + 32) = qword_100974E08;
    v11 = *(v2 + OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100799D70;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = v168;
    *(v13 + 32) = a2;
    v14 = v10;
    v15 = a2;
    v165 = v7;
    v16 = sub_100043AA8();
    v17 = [objc_allocWithZone(NSFetchRequest) init];
    v18 = [swift_getObjCClassFromMetadata() entity];
    [v17 setEntity:v18];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v159 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v17 setAffectedStores:isa];

    [v17 setPredicate:v16];
    [v17 setFetchLimit:v11];
    v164 = v17;
    [v17 setFetchOffset:0];
    v171 = &_swiftEmptyArrayStorage;
    a2 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_1002E0F3C();
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v173 = &_swiftEmptyArrayStorage;
    v2 = &v173;
    v9 = sub_100026EF4(0, 3, 0);
    v21 = inited;
    v7 = v173;
    v22 = inited & 0xFFFFFFFFFFFFFF8;
    v23 = v21 & 0xC000000000000001;
    v166 = v21;
    v160 = v8;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v22 + 16))
      {
        goto LABEL_40;
      }

      v24 = *(v21 + 32);
    }

    v2 = v24;
    v25 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v26)
    {
      goto LABEL_51;
    }

    a2 = v25;
    v27 = v26;

    v8 = *v7->clientIdentity;
    v28 = *&v7->clientIdentity[8];
    if (v8 >= v28 >> 1)
    {
      v2 = &v173;
      v9 = sub_100026EF4((v28 > 1), v8 + 1, 1);
      v7 = v173;
    }

    *v7->clientIdentity = v8 + 1;
    v29 = v7 + 16 * v8;
    *(v29 + 4) = a2;
    *(v29 + 5) = v27;
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v22 + 16) < 2uLL)
      {
        goto LABEL_40;
      }

      v24 = *&v166->clientIdentity[24];
    }

    v2 = v24;
    v30 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v31)
    {
      goto LABEL_51;
    }

    a2 = v30;
    v32 = v31;

    v173 = v7;
    v8 = *v7->clientIdentity;
    v33 = *&v7->clientIdentity[8];
    if (v8 >= v33 >> 1)
    {
      v2 = &v173;
      v9 = sub_100026EF4((v33 > 1), v8 + 1, 1);
      v7 = v173;
    }

    *v7->clientIdentity = v8 + 1;
    v34 = v7 + 16 * v8;
    *(v34 + 4) = a2;
    *(v34 + 5) = v32;
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_20;
    }

    if (*(v22 + 16) >= 3uLL)
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v97 = v9;
    swift_once();
    v9 = v97;
  }

  v24 = *&v166->clientIdentity[32];

LABEL_20:
  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v36)
  {
    goto LABEL_51;
  }

  v37 = v35;
  v38 = v36;

  v173 = v7;
  v40 = *v7->clientIdentity;
  v39 = *&v7->clientIdentity[8];
  if (v40 >= v39 >> 1)
  {
    sub_100026EF4((v39 > 1), v40 + 1, 1);
    v7 = v173;
  }

  *v7->clientIdentity = v40 + 1;
  v41 = v7 + 16 * v40;
  *(v41 + 4) = v37;
  *(v41 + 5) = v38;
  v174 = v7;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v42 = v174;
  v43 = sub_10003450C(v174);
  v44 = Array._bridgeToObjectiveC()().super.isa;
  v43, v45, v46, v47, v48, v49, v50, v51;
  v52 = v164;
  [v164 setPropertiesToFetch:v44];

  v169 = sub_1003EBAD0();
  sub_100271EA8(&_swiftEmptyArrayStorage);
  v53 = sub_100235FA0(Predicate);
  Predicate, v54, v55, v56, v57, v58, v59, v60;
  v61 = sub_100277CC0(v53);
  v53, v62, v63, v64, v65, v66, v67, v68;
  if ((v61 & 0x8000000000000000) == 0 && (v61 & 0x4000000000000000) == 0)
  {
    v76 = *v61->clientIdentity;
    v24 = v165;
    if (!v76)
    {
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  v76 = _CocoaArrayWrapper.endIndex.getter();
  v24 = v165;
  if (v76)
  {
LABEL_26:
    v173 = &_swiftEmptyArrayStorage;
    v2 = &v173;
    v9 = sub_100026EF4(0, v76 & ~(v76 >> 63), 0);
    if (v76 < 0)
    {
      __break(1u);
LABEL_49:
      v171 = 0;
      v172 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v156._object = 0x80000001007EC120;
      v156._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v156);
      for (i = v23; ; i = v24)
      {
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_51:
        v171 = 0;
        v172 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v157._object = 0x80000001007EC120;
        v157._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v157);
      }
    }

    v158 = v42;
    a2 = 0;
    v77 = v173;
    v167 = v76;
    *&v168 = v61 & 0xC000000000000001;
    while (1)
    {
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v168)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *v61->clientIdentity)
        {
          goto LABEL_39;
        }

        v23 = *&v61->clientIdentity[8 * a2 + 16];
      }

      v2 = v23;
      v78 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v79)
      {
        goto LABEL_49;
      }

      v24 = v78;
      v80 = v79;

      v173 = v77;
      v8 = *v77->clientIdentity;
      v88 = *&v77->clientIdentity[8];
      if (v8 >= v88 >> 1)
      {
        v2 = &v173;
        v9 = sub_100026EF4((v88 > 1), v8 + 1, 1);
        v77 = v173;
      }

      *v77->clientIdentity = v8 + 1;
      v89 = v77 + 16 * v8;
      *(v89 + 4) = v24;
      *(v89 + 5) = v80;
      ++a2;
      if (v7 == v167)
      {
        v158, v81, v82, v83, v84, v85, v86, v87;

        v159, v90, v91, v92, v93, v94, v95, v96;
        v52 = v164;
        v24 = v165;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  v42, v69, v70, v71, v72, v73, v74, v75;

  v159, v98, v99, v100, v101, v102, v103, v104;
  v77 = &_swiftEmptyArrayStorage;
LABEL_44:
  sub_100271EA8(v77);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v105 = v169;
  v106 = Array._bridgeToObjectiveC()().super.isa;
  v105, v107, v108, v109, v110, v111, v112, v113;
  [v52 setRelationshipKeyPathsForPrefetching:v106];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v114 = v161;
  v115 = Array._bridgeToObjectiveC()().super.isa;
  [v52 setSortDescriptors:v115];

  v116 = v162;
  v117 = v163;
  v118 = NSManagedObjectContext.fetch<A>(_:)();
  if (v117)
  {
    v114, v119, v120, v121, v122, v123, v124, v125;
    v166, v126, v127, v128, v129, v130, v131, v132;
  }

  else
  {
    v133 = v118;
    v116 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v118);
    v114, v134, v135, v136, v137, v138, v139, v140;
    v166, v141, v142, v143, v144, v145, v146, v147;
    v133, v148, v149, v150, v151, v152, v153, v154;
  }

  sub_1000513B4(v24);
  return v116;
}

void sub_1004B3D30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 importedICSData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1004B3D98(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setImportedICSData:?];
}

uint64_t sub_1004B3E10@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 alternativeDisplayDateDate_forCalendar];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1004B3EB4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAlternativeDisplayDateDate_forCalendar:isa];
}

uint64_t sub_1004B3FE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100005EF0(a1, &v4);
  sub_1000060C8(0, &qword_100949360, ICSTodo_ptr);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t type metadata accessor for RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders(uint64_t a1)
{
  result = qword_100949348;
  if (!qword_100949348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B40E0(uint64_t a1)
{
  sub_100140DD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004B4180()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004B24A8(v0 + v2, v4, v5);
}

void sub_1004B4224(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v9 = __chkstk_darwin(v7 - 8, v8).n128_u64[0];
  v11 = &v56 - v10;
  v12 = [a1 alternativeDisplayDateDate_forCalendar];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v11, 0, 1, v2);
    sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
    return;
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
  v14 = [a1 importedICSData];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = objc_allocWithZone(ICSDocument);
    sub_100029344(v16, v18);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v16, v18);
    v62 = 0;
    v21 = [v19 initWithData:isa options:0 error:&v62];

    if (v21)
    {
      v22 = v62;
      v60 = v21;
      v23 = [v21 calendar];
      if (v23 && (v24 = v23, v25 = [v23 components], v24, v25) && (v61 = v25, v58 = sub_1000060C8(0, &qword_100949358, NSMutableArray_ptr), sub_1000060C8(0, &qword_100949360, ICSTodo_ptr), v59 = v16, sub_1004B4864(), v16 = v59, Sequence.firstMap<A>(_:)(), v25, (v26 = v62) != 0))
      {
        v27 = [v62 x_apple_alternative_due_date_for_calendar];
        if (v27)
        {
          v58 = v27;
          v28 = [v27 rem_dateAsUTC];
          if (v28)
          {
            v29 = v28;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v30.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v3 + 8))(v6, v2);
          }

          else
          {
            v30.super.isa = 0;
          }

          [a1 setAlternativeDisplayDateDate_forCalendar:v30.super.isa];

          v36 = [a1 remObjectID];
          if (qword_1009362A0 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100006654(v37, qword_1009492E0);
          v38 = v36;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v56 = v18;
            v57 = v38;
            v43 = v42;
            v61 = v36;
            v62 = v42;
            *v41 = 136446210;
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v44 = v39;
            v45 = Optional.descriptionOrNil.getter();
            v47 = v46;
            v48 = sub_10000668C(v45, v46, &v62);
            v47, v49, v50, v51, v52, v53, v54, v55;
            *(v41 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v44, v40, "UpdateAlternativeDueDatesOfCalDavReminders: set ADD {reminderID: %{public}s}}", v41, 0xCu);
            sub_10000607C(v43);

            sub_10001BBA0(v16, v56);
          }

          else
          {
            sub_10001BBA0(v16, v18);
          }

          return;
        }
      }

      else
      {
        v31 = objc_opt_self();
        v32 = String._bridgeToObjectiveC()();
        [v31 internalErrorWithDebugDescription:v32];

        swift_willThrow();
      }
    }

    else
    {
      v33 = v16;
      v34 = v18;
      v35 = v62;
      _convertNSErrorToError(_:)();

      v18 = v34;
      v16 = v33;
      swift_willThrow();
    }

    sub_10001BBA0(v16, v18);
  }
}

unint64_t sub_1004B4864()
{
  result = qword_100949368;
  if (!qword_100949368)
  {
    sub_1000060C8(255, &qword_100949358, NSMutableArray_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949368);
  }

  return result;
}

void sub_1004B48E4(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v2 = v1;
  v293 = *v1;
  v289 = type metadata accessor for UUID();
  v291 = *(v289 - 8);
  __chkstk_darwin(v289, v4);
  v288 = v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v294 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v284 = (v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v285 = v274 - v11;
  __chkstk_darwin(v12, v13);
  v15 = (v274 - v14);
  __chkstk_darwin(v16, v17);
  v19 = v274 - v18;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100006654(v20, qword_100949378);
  swift_retain_n();
  v287 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v286 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = a1;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v295 = v26;
    v290 = v6;
    v30 = v29;
    v298 = v29;
    *v25 = 136446978;
    v296 = v293;
    swift_getMetatypeMetadata();
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = v2;
    v35 = sub_10000668C(v31, v32, &v298);
    v33, v36, v37, v38, v39, v40, v41, v42;
    *(v25 + 4) = v35;
    v2 = v34;
    *(v25 + 12) = 2114;
    v43 = v34[2];
    v44 = v34[3];
    *(v25 + 14) = v43;
    *(v25 + 22) = 2114;
    *(v25 + 24) = v44;
    *v28 = v43;
    v28[1] = v44;
    *(v25 + 32) = 2048;
    v45 = v43;
    v46 = v44;

    *(v25 + 34) = 50;

    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: Start execution {templateObjectID: %{public}@, sourceListObjectID: %{public}@, limitPerSave: %ld}", v25, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    a1 = v27;

    sub_10000607C(v30);
    v6 = v290;
    v19 = v295;
  }

  else
  {
  }

  Date.init()();
  v47 = v2[2];
  v48 = v292;
  v49 = sub_10034AE0C(v47, a1, 0, 0);
  if (v48)
  {
    (*(v294 + 8))(v19, v6);
    return;
  }

  v295 = v19;
  v50 = v49;
  v51 = [v49 objectID];

  v52 = (*(*v2 + 144))(a1);
  v282 = v51;
  v279 = 0;
  v53 = *(v294 + 16);
  v54 = v286;
  v274[1] = v294 + 16;
  v274[0] = v53;
  v53(v286, v295, v6);
  swift_bridgeObjectRetain_n();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  v57 = os_log_type_enabled(v55, v56);
  v290 = v6;
  v283 = a1;
  v277 = v47;
  if (v57)
  {
    v58 = v6;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v280 = v60;
    v292 = swift_slowAlloc();
    v298 = v292;
    *v59 = 136446978;
    v296 = v293;
    swift_getMetatypeMetadata();
    v61 = String.init<A>(describing:)();
    LODWORD(v281) = v56;
    v63 = v62;
    v64 = sub_10000668C(v61, v62, &v298);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    *(v59 + 12) = 2114;
    v72 = v2[3];
    *(v59 + 14) = v72;
    *v60 = v72;
    *(v59 + 22) = 2048;
    v73 = *(v52 + 16);
    v74 = v72;
    v52, v75, v76, v77, v78, v79, v80, v81;
    *(v59 + 24) = v73;
    v52, v82, v83, v84, v85, v86, v87, v88;
    *(v59 + 32) = 2048;
    v89 = v285;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v91 = v90;
    v92 = v54;
    v93 = *(v294 + 8);
    v93(v89, v58);
    v278 = v93;
    v93(v92, v58);
    *(v59 + 34) = v91;
    _os_log_impl(&_mh_execute_header, v55, v281, "%{public}s: Fetched reminders in source list {sourceListObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v59, 0x2Au);
    sub_1000050A4(v280, &unk_100938E70, &unk_100797230);

    sub_10000607C(v292);

    v47 = v277;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v278 = *(v294 + 8);
    v278(v54, v6);
  }

  v286 = v52;
  v296 = v52;
  sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
  sub_10048F8E0();
  v292 = BidirectionalCollection<>.slices(by:)();
  v296 = 0;
  v94 = [v47 uuid];
  v95 = v288;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v96 = UUID.uuidString.getter();
  v98 = v97;
  v99 = *(v291 + 1);
  v291 += 8;
  v275 = v99;
  v99(v95, v289);
  v276 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v298 = v276;
  type metadata accessor for REMCDManualSortHint();
  v281 = v2;
  v100 = v2[4];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v280 = v100;
  v101 = [(RDXPCStorePerformer *)v283 persistentStoreOfAccountWithAccountID:?];
  v102 = "Index";
  if (v101)
  {
    v103 = v101;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1007953F0;
    *(v104 + 32) = v103;
  }

  else
  {
    v104 = 0;
  }

  v105 = v98;
  v106 = sub_1000398EC(6uLL, v96, v98, v100);
  v107 = [objc_allocWithZone(NSFetchRequest) init];
  v108 = [swift_getObjCClassFromMetadata() entity];
  [v107 setEntity:v108];

  if (v104)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v109.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v109.super.isa = 0;
  }

  [v107 setAffectedStores:v109.super.isa];

  [v107 setPredicate:v106];
  v104, v110, v111, v112, v113, v114, v115, v116;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1007953F0;
  if (qword_100935AA8 != -1)
  {
    swift_once();
  }

  v118 = qword_100974C08;
  *(v117 + 32) = qword_100974C08;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v119 = v118;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v117, v121, v122, v123, v124, v125, v126, v127;
  [v107 setSortDescriptors:isa];

  v128 = v279;
  v129 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v128)
  {
    if (v129 >> 62)
    {
      v193 = v129;
      v194 = _CocoaArrayWrapper.endIndex.getter();
      v129 = v193;
      v166 = &selRef_hack_willSaveHandled;
      if (v194)
      {
LABEL_25:
        if ((v129 & 0xC000000000000001) != 0)
        {
          goto LABEL_44;
        }

        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v167 = v129;
          for (i = *(v129 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
          {
            v176 = i;
            v167, v169, v170, v171, v172, v173, v174, v175;

            v105, v177, v178, v179, v180, v181, v182, v183;
            v280 = [v176 v166[433]];
            v166 = type metadata accessor for REMMutableManualOrdering();
            [objc_opt_self() newObjectID];
            v184 = [v277 uuid];
            v185 = v288;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            UUID.uuidString.getter();
            v275(v185, v289);
            v291 = REMMutableManualOrdering.__allocating_init(objectID:listType:listID:)();

            v107 = v281;
LABEL_33:
            v219 = *v292->clientIdentity;
            if (!v219)
            {
              break;
            }

            v220 = 0;
            v105 = &v292->clientIdentity[40];
            while (v220 < *v292->clientIdentity)
            {
              v221 = *&v105[-1].shareRecordIDToRootRecordIDLock[2];
              v166 = v105->super.isa;
              v222 = *&v105[-1].sharingObserverForAccountID[2];
              v223 = *&v105[-1].shareRecordIDToRootRecordID[2];
              swift_unknownObjectRetain();
              v224 = objc_autoreleasePoolPush();
              v225 = v223;
              v107 = v281;
              sub_1004B865C(v283, v282, v222, v225, v221, v166, v281, &v298, v291, &v296, v280, v286, v295, v293, &v297);
              ++v220;
              objc_autoreleasePoolPop(v224);
              v129 = swift_unknownObjectRelease();
              v105 = (v105 + 32);
              if (v219 == v220)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_44:
            v167 = v129;
          }

LABEL_37:
          v292, v186, v187, v188, v189, v190, v191, v192;
          v286, v226, v227, v228, v229, v230, v231, v232;
          v105 = v283;
          v129 = (*(*v107 + 152))(v283);
          v118 = v290;
          v102 = v295;
          if (!(v129 >> 62))
          {
            v240 = v284;
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_42:
              v241 = v105;
              v242 = v129;
              v243 = v282;
              sub_1004B7184(v129, v298, v282, v241);
              v279 = 0;
              v129 = v242;
LABEL_48:
              v129, v233, v234, v235, v236, v237, v238, v239;
              (v274[0])(v240, v102, v118);
              swift_retain_n();
              v246 = Logger.logObject.getter();
              v247 = v102;
              v248 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v246, v248))
              {
                v249 = swift_slowAlloc();
                v250 = swift_slowAlloc();
                v297 = swift_slowAlloc();
                v251 = v297;
                *v249 = 136447234;
                v252 = sub_1001424F8(v293);
                v254 = v253;
                v255 = sub_10000668C(v252, v253, &v297);
                v254, v256, v257, v258, v259, v260, v261, v262;
                *(v249 + 4) = v255;
                *(v249 + 12) = 2114;
                v263 = v277;
                *(v249 + 14) = v277;
                *(v249 + 22) = 2114;
                v264 = v107[3];
                *(v249 + 24) = v264;
                *v250 = v263;
                v250[1] = v264;
                *(v249 + 32) = 2048;
                v265 = v263;
                v266 = v264;

                *(v249 + 34) = 50;

                *(v249 + 42) = 2048;
                v267 = v285;
                Date.init()();
                v268 = v284;
                Date.timeIntervalSince(_:)();
                v270 = v269;
                v271 = v267;
                v272 = v278;
                v278(v271, v118);
                v272(v268, v118);
                *(v249 + 44) = v270;
                _os_log_impl(&_mh_execute_header, v246, v248, "%{public}s: Finished execution {templateObjectID: %{public}@, sourceListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v249, 0x34u);
                sub_1000F5104(&unk_100938E70, &unk_100797230);
                swift_arrayDestroy();

                sub_10000607C(v251);

                v272(v295, v118);
              }

              else
              {

                v273 = v278;
                v278(v240, v118);
                v273(v247, v118);
              }

              v165 = v298;
              goto LABEL_39;
            }

LABEL_47:
            v279 = 0;
            v243 = v282;
            goto LABEL_48;
          }
        }

        else
        {
          __break(1u);
        }

        v244 = v129;
        v245 = _CocoaArrayWrapper.endIndex.getter();
        v129 = v244;
        v240 = v284;
        if (v245)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v166 = &selRef_hack_willSaveHandled;
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    v129, v130, v131, v132, v133, v134, v135, v136;

    v105, v195, v196, v197, v198, v199, v200, v201;
    v107 = v281;

    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v297 = v206;
      *v204 = 136446466;
      v207 = sub_1001424F8(v293);
      v166 = v208;
      v209 = sub_10000668C(v207, v208, &v297);
      v166, v210, v211, v212, v213, v214, v215, v216;
      *(v204 + 4) = v209;
      *(v204 + 12) = 2114;
      v217 = v277;
      *(v204 + 14) = v277;
      *v205 = v217;
      v218 = v217;
      _os_log_impl(&_mh_execute_header, v202, v203, "%{public}s: Failed to fetch manual sort hint of template {templateObjectID: %{public}@}", v204, 0x16u);
      sub_1000050A4(v205, &unk_100938E70, &unk_100797230);
      v107 = v281;

      sub_10000607C(v206);
    }

    v291 = 0;
    v280 = 0;
    goto LABEL_33;
  }

  v292, v137, v138, v139, v140, v141, v142, v143;
  v105, v144, v145, v146, v147, v148, v149, v150;

  v286, v151, v152, v153, v154, v155, v156, v157;
  v278(v295, v290);
  v165 = v276;
LABEL_39:
  v165, v158, v159, v160, v161, v162, v163, v164;
}

id sub_1004B5B48(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4)
{
  v75 = a2;
  v63 = a1;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = v62 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDSavedReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_allocWithZone(ObjCClassFromMetadata);
  v62[0] = a4;
  v17 = [v16 initWithContext:a4];
  v18 = [(objc_class *)ObjCClassFromMetadata newObjectID];
  v19 = v17;
  v65 = v18;
  v20 = [v18 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v14, v10);
  [v19 setIdentifier:isa];

  v22 = [a3 account];
  [v19 setAccount:v22];

  v23 = [v19 template];
  if (!v23 || (v24 = v23, type metadata accessor for REMCDTemplate(), v25 = v19, v26 = a3, v27 = static NSObject.== infix(_:_:)(), v24, v26, v19 = v25, (v27 & 1) == 0))
  {
    [v19 setTemplate:a3];
    v28 = [v19 createResolutionTokenMapIfNecessary];
    v29 = String._bridgeToObjectiveC()();
    [v28 updateForKey:v29];
  }

  if (v75)
  {
    v30 = [(RDXPCStorePerformer *)v75 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v11 + 56))(v9, v31, 1, v10);
  v64 = v19;
  sub_1002A77E8(v9);
  sub_1000050A4(v9, &unk_100939D90, "8\n\r");
  v32 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v33 = objc_opt_self();
  v34 = 0;
  v75 = 0x80000001007EA630;
  v73 = 0x80000001007E8FD0;
  v74 = 0x80000001007EA610;
  v71 = 0x80000001007EA5C0;
  v72 = 0x80000001007EA5E0;
  v69 = 0x80000001007EA570;
  v70 = 0x80000001007EA5A0;
  v67 = 0x80000001007EA4D0;
  v68 = 0x80000001007E8C60;
  v66 = 0xD000000000000010;
  do
  {
    v35 = *(&off_1008DD790 + v34++ + 32);
    v36 = 0xE800000000000000;
    switch(v35)
    {
      case 1:
        v36 = v67;
        break;
      case 2:
        v36 = v68;
        break;
      case 3:
        v36 = v69;
        break;
      case 4:
      case 14:
        v36 = 0xED0000746E656D75;
        break;
      case 6:
        v36 = 0xE700000000000000;
        break;
      case 7:
        v36 = 0xEC00000065746144;
        break;
      case 8:
        v36 = 0xEF73656C75526563;
        break;
      case 9:
        v36 = v70;
        break;
      case 10:
        v36 = v71;
        break;
      case 12:
        v36 = 0xE600000000000000;
        break;
      case 13:
        v36 = v72;
        break;
      case 15:
        v36 = 0xEB0000000073746ELL;
        break;
      case 16:
        v36 = 0xE600000000000000;
        break;
      case 17:
        v36 = v73;
        break;
      case 18:
        v36 = v74;
        break;
      case 19:
        v36 = v75;
        break;
      case 21:
        v36 = 0xEE0073656C646E61;
        break;
      default:
        break;
    }

    v37 = String._bridgeToObjectiveC()();
    v36, v38, v39, v40, v41, v42, v43, v44;
    v45 = [v33 resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:v37];

    if (v45)
    {
      [v32 updateForKey:v45];
    }
  }

  while (v34 != 15);
  v46 = v63;
  [v63 setResolutionTokenMap:v32];
  v47 = [objc_opt_self() defaultFetchOptions];
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  swift_initStackObject();
  v48 = v64;
  v49 = v62[2];
  sub_100510538(v46, v64, &off_1008DD790, 1, 0);

  if (!v49)
  {
    v51 = [v46 attachments];
    v50 = v65;
    if (!v51)
    {
LABEL_37:
      [v48 updateChangeCount];

      goto LABEL_38;
    }

    v52 = v51;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v53 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_36;
      }
    }

    else if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_36:
      v53, v54, v55, v56, v57, v58, v59, v60;
      goto LABEL_37;
    }

    sub_1004B634C(v53, v48, v62[0]);
    goto LABEL_36;
  }

  v50 = v65;
LABEL_38:

  return v50;
}

void sub_1004B634C(unint64_t a1, id a2, uint64_t a3)
{
  v5 = v4;
  v6 = a2;
  v104 = *v3;
  v8 = [a2 remObjectID];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 account];
    if (v10)
    {
      v11 = v10;
      v111 = [v10 remObjectID];
      if (v111)
      {
        type metadata accessor for REMSavedAttachmentCDIngestor();
        swift_initStackObject();
        if (a1 >> 62)
        {
          goto LABEL_42;
        }

        for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          type metadata accessor for REMCDSavedAttachment();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = 0;
          v110 = a1 & 0xC000000000000001;
          v102 = a1 & 0xFFFFFFFFFFFFFF8;
          v14 = REMURLAttachment_ptr;
          v106 = v6;
          v107 = v11;
          v105 = a1;
          v109 = i;
          v103 = v9;
          while (1)
          {
            if (v110)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v102 + 16))
              {
                goto LABEL_41;
              }

              v15 = *(a1 + 8 * v13 + 32);
            }

            v16 = v15;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v114 = v13 + 1;
            v17 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a3];
            [v17 setAccount:v11];
            v116 = v17;
            [v17 setReminder:v6];
            objc_opt_self();
            v18 = swift_dynamicCastObjCClass();
            v115 = v13;
            if (!v18)
            {
              v14 = REMFileAttachment_ptr;
              objc_opt_self();
              v18 = swift_dynamicCastObjCClass();
              if (!v18)
              {
                if (qword_1009362B0 != -1)
                {
                  swift_once();
                }

                v60 = type metadata accessor for Logger();
                sub_100006654(v60, qword_100949378);
                v61 = v16;
                v62 = v6;
                v63 = Logger.logObject.getter();
                v64 = static os_log_type_t.default.getter();

                if (!os_log_type_enabled(v63, v64))
                {

                  goto LABEL_25;
                }

                v108 = v5;
                v65 = swift_slowAlloc();
                v66 = swift_slowAlloc();
                v117 = swift_slowAlloc();
                *v65 = 136446722;
                v118 = v104;
                swift_getMetatypeMetadata();
                v67 = String.init<A>(describing:)();
                v69 = v68;
                v70 = sub_10000668C(v67, v68, &v117);
                v69, v71, v72, v73, v74, v75, v76, v77;
                *(v65 + 4) = v70;
                *(v65 + 12) = 2082;
                v78 = [v62 remObjectID];
                if (v78)
                {
                  v79 = v78;
                  v80 = [v78 description];

                  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v83 = v82;
                }

                else
                {
                  v83 = 0xE300000000000000;
                  v81 = 7104878;
                }

                v84 = sub_10000668C(v81, v83, &v117);
                v83, v85, v86, v87, v88, v89, v90, v91;
                *(v65 + 14) = v84;
                *(v65 + 22) = 2114;
                *(v65 + 24) = v61;
                *v66 = v61;
                v92 = v61;
                _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Skipped copying attachment into cdSavedReminder because attachment belongs to an unhandled subclass of REMAttachment {cdSavedReminder.remObjectID: %{public}s, sourceAttachment: %{public}@}", v65, 0x20u);
                sub_1000050A4(v66, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                goto LABEL_23;
              }
            }

            v19 = v18;
            v20 = v14;
            v21 = v16;
            v22 = [(objc_class *)ObjCClassFromMetadata newObjectID];
            v23 = [objc_allocWithZone(*v20) initWithAttachment:v19 objectID:v22 accountID:v111 reminderID:v9];

            v24 = v23;
            sub_10022A984(v24, v116);
            if (v5)
            {

              goto LABEL_39;
            }

            [v116 updateChangeCount];
            if (qword_1009362B0 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_100006654(v25, qword_100949378);
            v26 = v21;
            v27 = v6;
            v28 = v24;
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v29, v30))
            {
              v108 = 0;
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              *v31 = 136446978;
              v118 = v104;
              swift_getMetatypeMetadata();
              v33 = String.init<A>(describing:)();
              v35 = v34;
              v36 = sub_10000668C(v33, v34, &v117);
              v35, v37, v38, v39, v40, v41, v42, v43;
              *(v31 + 4) = v36;
              *(v31 + 12) = 2082;
              v44 = [v27 remObjectID];
              if (v44)
              {
                v45 = v44;
                v46 = [v44 description];

                v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v49 = v48;
              }

              else
              {
                v49 = 0xE300000000000000;
                v47 = 7104878;
              }

              v9 = v103;
              v50 = sub_10000668C(v47, v49, &v117);
              v49, v51, v52, v53, v54, v55, v56, v57;
              *(v31 + 14) = v50;
              *(v31 + 22) = 2114;
              *(v31 + 24) = v26;
              *(v31 + 32) = 2114;
              *(v31 + 34) = v28;
              *v32 = v26;
              v32[1] = v28;
              v58 = v26;
              v59 = v28;
              _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Copied attachment into cdSavedReminder {cdSavedReminder.remObjectID: %{public}s, sourceAttachment: %{public}@, savedAttachment: %{public}@}", v31, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();

LABEL_23:
              v5 = v108;
              goto LABEL_24;
            }

LABEL_24:
            v6 = v106;
            v11 = v107;
            a1 = v105;
LABEL_25:
            v13 = v115 + 1;
            v14 = REMURLAttachment_ptr;
            if (v114 == v109)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          ;
        }

LABEL_43:
      }

      else
      {
        v99 = objc_opt_self();
        type metadata accessor for REMCDSavedReminder();
        v100 = swift_getObjCClassFromMetadata();
        v101 = String._bridgeToObjectiveC()();
        [v99 unexpectedNilPropertyWithClass:v100 property:v101];

        swift_willThrow();
LABEL_39:
      }
    }

    else
    {
      v96 = objc_opt_self();
      type metadata accessor for REMCDSavedReminder();
      v97 = swift_getObjCClassFromMetadata();
      v98 = String._bridgeToObjectiveC()();
      [v96 unexpectedNilPropertyWithClass:v97 property:v98];

      swift_willThrow();
    }
  }

  else
  {
    v93 = objc_opt_self();
    type metadata accessor for REMCDSavedReminder();
    v94 = swift_getObjCClassFromMetadata();
    v95 = String._bridgeToObjectiveC()();
    [v93 unexpectedNilPropertyWithClass:v94 property:v95];

    swift_willThrow();
  }
}