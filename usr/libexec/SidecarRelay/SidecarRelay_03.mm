uint64_t sub_100041B80(uint64_t **a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4)
{
  v149 = a4;
  v150 = a1;
  v5 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v160 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v154 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v168 = &v146 - v9;
  v10 = __chkstk_darwin(v8);
  v170 = &v146 - v11;
  v12 = __chkstk_darwin(v10);
  v169 = &v146 - v13;
  v14 = __chkstk_darwin(v12);
  v171 = (&v146 - v15);
  v16 = __chkstk_darwin(v14);
  v18 = &v146 - v17;
  v19 = __chkstk_darwin(v16);
  v159 = &v146 - v20;
  v21 = __chkstk_darwin(v19);
  v158 = &v146 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v162 = &v146 - v26;
  v27 = __chkstk_darwin(v25);
  result = __chkstk_darwin(v27);
  v161 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_113:
    v40 = *v150;
    if (!*v150)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_115;
    }

    goto LABEL_149;
  }

  v148 = &v146 - v29;
  v146 = v30;
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v176 = v5;
  v172 = v18;
  while (1)
  {
    v34 = v32;
    v35 = v32 + 1;
    v151 = v32;
    if (v32 + 1 < v31)
    {
      v167 = v31;
      v147 = v33;
      v36 = *v161;
      v37 = *(v160 + 72);
      v33 = (*v161 + v37 * v35);
      v38 = v32;
      sub_100048658();
      v175 = v36;
      v39 = v38;
      v173 = v37;
      v40 = &qword_100076B18;
      v41 = v148;
      v42 = v146;
      sub_100048658();
      v43 = v164;
      LODWORD(v166) = sub_100037E2C(v41, v42);
      v164 = v43;
      if (v43)
      {
        sub_100048978(v42, &qword_10009A9E0);
        sub_100048978(v41, &qword_10009A9E0);
      }

      sub_100048978(v42, &qword_10009A9E0);
      result = sub_100048978(v41, &qword_10009A9E0);
      v44 = (v39 + 2);
      v45 = v173;
      v46 = v175 + v173 * (v39 + 2);
      v47 = v167;
      while (1)
      {
        v48 = v44;
        if (v35 + 1 >= v47)
        {
          break;
        }

        v175 = v44;
        v165 = v35;
        sub_100048658();
        sub_100048658();
        v49 = v158;
        sub_100048658();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v51 = sub_100010F24(isa);

        v177 = 542327881;
        v178 = 0xE400000000000000;
        v179 = v51;
        sub_100010C84();
        v52._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v52);

        v53 = v178;
        v174 = v177;
        sub_10003E708(v49);
        v54 = v159;
        sub_100048658();

        v55 = UUID._bridgeToObjectiveC()().super.isa;
        v56 = sub_100010F24(v55);

        v177 = 542327881;
        v178 = 0xE400000000000000;
        v179 = v56;
        v57._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v57);

        v59 = v177;
        v58 = v178;
        sub_10003E708(v54);
        if (v174 == v59 && v53 == v58)
        {
          v61 = 0;
        }

        else
        {
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v40 = &qword_100076B18;
        sub_100048978(v163, &qword_10009A9E0);
        result = sub_100048978(v162, &qword_10009A9E0);
        v62 = v166 ^ v61;
        v45 = v173;
        v46 += v173;
        v33 = (v33 + v173);
        v35 = v165 + 1;
        v48 = v175;
        v44 = (v175 + 1);
        v47 = v167;
        if (v62)
        {
          goto LABEL_16;
        }
      }

      v35 = v47;
LABEL_16:
      if (v166)
      {
        v34 = v151;
        if (v35 < v151)
        {
          goto LABEL_148;
        }

        if (v151 >= v35)
        {
          v33 = v147;
          goto LABEL_39;
        }

        if (v47 >= v48)
        {
          v63 = v48;
        }

        else
        {
          v63 = v47;
        }

        v64 = v45 * (v63 - 1);
        v65 = v45 * v63;
        v66 = v151;
        v67 = v151 * v45;
        v68 = v35;
        do
        {
          if (v66 != --v35)
          {
            v69 = *v161;
            if (!*v161)
            {
              goto LABEL_153;
            }

            sub_10004871C();
            v70 = v67 < v64 || v69 + v67 >= v69 + v65;
            if (v70)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10004871C();
            v45 = v173;
          }

          ++v66;
          v64 -= v45;
          v65 -= v45;
          v67 += v45;
        }

        while (v66 < v35);
        v33 = v147;
        v35 = v68;
      }

      else
      {
        v33 = v147;
      }

      v34 = v151;
    }

LABEL_39:
    v71 = v161[1];
    v40 = v171;
    if (v35 < v71)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_145;
      }

      if (v35 - v34 < v149)
      {
        break;
      }
    }

LABEL_61:
    if (v35 < v34)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100038BE8(0, v33[2] + 1, 1, v33);
      v33 = result;
    }

    v96 = v33[2];
    v95 = v33[3];
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      result = sub_100038BE8((v95 > 1), v96 + 1, 1, v33);
      v33 = result;
    }

    v33[2] = v97;
    v40 = v33 + 4;
    v98 = &v33[2 * v96 + 4];
    *v98 = v151;
    v98[1] = v35;
    v99 = *v150;
    if (!*v150)
    {
      goto LABEL_154;
    }

    v165 = v35;
    if (v96)
    {
      while (1)
      {
        v100 = v97 - 1;
        v101 = &v40[2 * v97 - 2];
        v102 = &v33[2 * v97];
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v103 = v33[4];
          v104 = v33[5];
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_81:
          if (v106)
          {
            goto LABEL_131;
          }

          v118 = *v102;
          v117 = v102[1];
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_134;
          }

          v122 = v101[1];
          v123 = v122 - *v101;
          if (__OFSUB__(v122, *v101))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v120, v123))
          {
            goto LABEL_139;
          }

          if (v120 + v123 >= v105)
          {
            if (v105 < v123)
            {
              v100 = v97 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v97 < 2)
        {
          goto LABEL_133;
        }

        v125 = *v102;
        v124 = v102[1];
        v113 = __OFSUB__(v124, v125);
        v120 = v124 - v125;
        v121 = v113;
LABEL_96:
        if (v121)
        {
          goto LABEL_136;
        }

        v127 = *v101;
        v126 = v101[1];
        v113 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v113)
        {
          goto LABEL_138;
        }

        if (v128 < v120)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v100 - 1 >= v97)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
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

        if (!*v161)
        {
          goto LABEL_151;
        }

        v132 = v33;
        v133 = &v40[2 * v100 - 2];
        v33 = *v133;
        v134 = &v40[2 * v100];
        v135 = v134[1];
        v136 = v164;
        sub_100042EA8(*v161 + *(v160 + 72) * *v133, *v161 + *(v160 + 72) * *v134, *v161 + *(v160 + 72) * v135, v99);
        v164 = v136;
        if (v136)
        {
        }

        if (v135 < v33)
        {
          goto LABEL_126;
        }

        v137 = v132[2];
        if (v100 > v137)
        {
          goto LABEL_127;
        }

        *v133 = v33;
        v133[1] = v135;
        if (v100 >= v137)
        {
          goto LABEL_128;
        }

        v97 = v137 - 1;
        result = memmove(&v40[2 * v100], v134 + 2, 16 * (v137 - 1 - v100));
        v33 = v132;
        v132[2] = v137 - 1;
        if (v137 <= 2)
        {
          goto LABEL_110;
        }
      }

      v107 = &v40[2 * v97];
      v108 = *(v107 - 8);
      v109 = *(v107 - 7);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_129;
      }

      v112 = *(v107 - 6);
      v111 = *(v107 - 5);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_130;
      }

      v114 = v102[1];
      v115 = v114 - *v102;
      if (__OFSUB__(v114, *v102))
      {
        goto LABEL_132;
      }

      v113 = __OFADD__(v105, v115);
      v116 = v105 + v115;
      if (v113)
      {
        goto LABEL_135;
      }

      if (v116 >= v110)
      {
        v130 = *v101;
        v129 = v101[1];
        v113 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v113)
        {
          goto LABEL_143;
        }

        if (v105 < v131)
        {
          v100 = v97 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v31 = v161[1];
    v32 = v165;
    if (v165 >= v31)
    {
      goto LABEL_113;
    }
  }

  v72 = (v34 + v149);
  if (__OFADD__(v34, v149))
  {
    goto LABEL_146;
  }

  if (v72 >= v71)
  {
    v72 = v161[1];
  }

  if (v72 < v34)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    result = sub_100043770(v33);
    v33 = result;
LABEL_115:
    v138 = v33 + 2;
    v139 = v33[2];
    while (v139 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_152;
      }

      v140 = v33;
      v33 += 2 * v139;
      v141 = *v33;
      v142 = &v138[2 * v139];
      v143 = v142[1];
      v144 = v164;
      sub_100042EA8(*v161 + *(v160 + 72) * *v33, *v161 + *(v160 + 72) * *v142, *v161 + *(v160 + 72) * v143, v40);
      v164 = v144;
      if (v144)
      {
        break;
      }

      if (v143 < v141)
      {
        goto LABEL_140;
      }

      if (v139 - 2 >= *v138)
      {
        goto LABEL_141;
      }

      *v33 = v141;
      v33[1] = v143;
      v145 = *v138 - v139;
      if (*v138 < v139)
      {
        goto LABEL_142;
      }

      v139 = *v138 - 1;
      result = memmove(v142, v142 + 2, 16 * v145);
      *v138 = v139;
      v33 = v140;
    }
  }

  if (v35 == v72)
  {
    goto LABEL_61;
  }

  v147 = v33;
  v73 = *v161;
  v74 = *(v160 + 72);
  v75 = *v161 + v74 * (v35 - 1);
  v166 = -v74;
  v167 = v73;
  v76 = v34 - v35;
  v152 = v74;
  v77 = v73 + v35 * v74;
  v153 = v72;
LABEL_48:
  v165 = v35;
  v155 = v77;
  v156 = v76;
  v78 = v76;
  v157 = v75;
  while (1)
  {
    v173 = v77;
    v174 = v78;
    sub_100048658();
    sub_100048658();
    v79 = v169;
    sub_100048658();

    v80 = UUID._bridgeToObjectiveC()().super.isa;
    v81 = sub_100010F24(v80);

    v177 = 542327881;
    v178 = 0xE400000000000000;
    v179 = v81;
    sub_100010C84();
    v82._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v82);

    v84 = v177;
    v83 = v178;
    v175 = type metadata accessor for SidecarIdentity;
    sub_10003E708(v79);
    v85 = v170;
    sub_100048658();

    v86 = UUID._bridgeToObjectiveC()().super.isa;
    v87 = sub_100010F24(v86);

    v177 = 542327881;
    v178 = 0xE400000000000000;
    v179 = v87;
    v88._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v88);

    v90 = v177;
    v89 = v178;
    sub_10003E708(v85);
    if (v84 == v90 && v83 == v89)
    {

      v40 = v171;
      sub_100048978(v171, &qword_10009A9E0);
      sub_100048978(v172, &qword_10009A9E0);
LABEL_59:
      v35 = v165 + 1;
      v75 = v157 + v152;
      v76 = v156 - 1;
      v77 = v155 + v152;
      if ((v165 + 1) == v153)
      {
        v35 = v153;
        v33 = v147;
        v34 = v151;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v40 = v171;
    sub_100048978(v171, &qword_10009A9E0);
    result = sub_100048978(v172, &qword_10009A9E0);
    if ((v92 & 1) == 0)
    {
      goto LABEL_59;
    }

    v93 = v174;
    if (!v167)
    {
      break;
    }

    v94 = v173;
    sub_10004871C();
    swift_arrayInitWithTakeFrontToBack();
    sub_10004871C();
    v75 += v166;
    v77 = v94 + v166;
    v70 = __CFADD__(v93, 1);
    v78 = v93 + 1;
    if (v70)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_1000429EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v8 = __chkstk_darwin(v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v49 = a3;
  v20 = v16 / v15;
  v53 = a1;
  v52 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    sub_10003901C(a2, v18 / v15, a4, &qword_10009A850, &qword_100076A20);
    v26 = a4 + v21 * v15;
    v27 = -v15;
    v28 = v26;
    v29 = v49;
    v46 = a1;
    v47 = a4;
    v44 = v10;
    v45 = -v15;
LABEL_37:
    v48 = a2;
    v49 = a2 + v27;
    v30 = v29;
    v42 = v28;
    while (1)
    {
      if (v26 <= a4)
      {
        v53 = a2;
        v51 = v28;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v43 = v28;
      v31 = v30 + v27;
      v32 = v26 + v27;
      v33 = v26;
      v34 = v30;
      sub_100048658();
      sub_100048658();
      v35 = static Date.< infix(_:_:)();
      v36 = v10;
      v37 = v35;
      sub_100048978(v36, &qword_10009A850);
      sub_100048978(v13, &qword_10009A850);
      if (v37)
      {
        v42 = v33;
        v39 = v34 < v48 || v31 >= v48;
        v29 = v31;
        if (v39)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v10 = v44;
          a1 = v46;
          a4 = v47;
          v27 = v45;
          v26 = v42;
        }

        else
        {
          v10 = v44;
          v28 = v43;
          v17 = v34 == v48;
          v40 = v49;
          a2 = v49;
          a1 = v46;
          a4 = v47;
          v27 = v45;
          v26 = v42;
          if (!v17)
          {
            v41 = v43;
            swift_arrayInitWithTakeBackToFront();
            v26 = v42;
            a2 = v40;
            v28 = v41;
          }
        }

        goto LABEL_37;
      }

      if (v34 < v33 || v31 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v31;
        v26 = v32;
        v28 = v32;
        v10 = v44;
        v27 = v45;
        a4 = v47;
        a2 = v48;
        a1 = v46;
      }

      else
      {
        v28 = v32;
        v17 = v33 == v34;
        v30 = v31;
        v26 = v32;
        v10 = v44;
        v27 = v45;
        a4 = v47;
        a2 = v48;
        a1 = v46;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v31;
          v26 = v32;
          v28 = v32;
        }
      }
    }

    v53 = a2;
    v51 = v42;
  }

  else
  {
    sub_10003901C(a1, v16 / v15, a4, &qword_10009A850, &qword_100076A20);
    v48 = a4 + v20 * v15;
    v51 = v48;
    while (a4 < v48 && a2 < v49)
    {
      sub_100048658();
      sub_100048658();
      v23 = static Date.< infix(_:_:)();
      sub_100048978(v10, &qword_10009A850);
      sub_100048978(v13, &qword_10009A850);
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v53 = a1;
    }
  }

LABEL_59:
  sub_100043784(&v53, &v52, &v51, &qword_10009A850, &qword_100076A20);
  return 1;
}

uint64_t sub_100042EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v8 = __chkstk_darwin(v91);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v78 = &v76 - v11;
  v12 = __chkstk_darwin(v10);
  v86 = &v76 - v13;
  v14 = __chkstk_darwin(v12);
  v83 = &v76 - v15;
  v16 = __chkstk_darwin(v14);
  v85 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v84 = &v76 - v19;
  v20 = __chkstk_darwin(v18);
  result = __chkstk_darwin(v20);
  v24 = &v76 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v27 = a2 - a1;
  v28 = a2 - a1 == 0x8000000000000000 && v26 == -1;
  if (v28)
  {
    goto LABEL_71;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_72;
  }

  v31 = v27 / v26;
  v97 = a1;
  v96 = a4;
  v32 = v29 / v26;
  if (v27 / v26 < v29 / v26)
  {
    v87 = v22;
    sub_10003901C(a1, v27 / v26, a4, &qword_10009A9E0, &qword_100076B18);
    v82 = a3;
    v83 = a4 + v31 * v26;
    v95 = v83;
    v80 = v24;
    v81 = v26;
    while (1)
    {
      if (a4 >= v83 || a2 >= a3)
      {
        goto LABEL_69;
      }

      v89 = a1;
      v90 = a2;
      sub_100048658();
      v88 = a4;
      sub_100048658();
      v34 = v84;
      sub_100048658();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v36 = sub_100010F24(isa);

      v92 = v36;
      v93 = 542327881;
      v94 = 0xE400000000000000;
      sub_100010C84();
      v37._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v37);

      v38 = v94;
      v86 = v93;
      sub_10003E708(v34);
      v39 = v85;
      sub_100048658();

      v40 = UUID._bridgeToObjectiveC()().super.isa;
      v41 = sub_100010F24(v40);

      v92 = v41;
      v93 = 542327881;
      v94 = 0xE400000000000000;
      v42._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v42);

      v44 = v93;
      v43 = v94;
      sub_10003E708(v39);
      if (v86 == v44 && v38 == v43)
      {

        sub_100048978(v87, &qword_10009A9E0);
        sub_100048978(v80, &qword_10009A9E0);
        v47 = v89;
        v48 = v81;
      }

      else
      {
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100048978(v87, &qword_10009A9E0);
        sub_100048978(v80, &qword_10009A9E0);
        v47 = v89;
        v48 = v81;
        if (v46)
        {
          a2 = v90 + v81;
          v49 = v89 < v90 || v89 >= a2;
          a4 = v88;
          a3 = v82;
          if (v49)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v89 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      a4 = v88 + v48;
      v50 = v47 < v88 || v47 >= a4;
      a2 = v90;
      a3 = v82;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v47 != v88)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v96 = a4;
LABEL_37:
      a1 = v47 + v48;
      v97 = a1;
    }
  }

  sub_10003901C(a2, v29 / v26, a4, &qword_10009A9E0, &qword_100076B18);
  v51 = a4 + v32 * v26;
  v52 = -v26;
  v53 = v51;
  v88 = a4;
  v89 = a1;
  v81 = v52;
LABEL_41:
  v54 = a3;
  v55 = v53;
  v90 = a2;
  v82 = a2 + v52;
  v80 = v53;
  while (1)
  {
    if (v51 <= a4)
    {
      v97 = a2;
      v95 = v55;
      goto LABEL_69;
    }

    if (a2 <= a1)
    {
      break;
    }

    v77 = v55;
    v87 = v51;
    v84 = (v51 + v52);
    v85 = v54;
    sub_100048658();
    sub_100048658();
    v56 = v78;
    sub_100048658();

    v57 = UUID._bridgeToObjectiveC()().super.isa;
    v58 = sub_100010F24(v57);

    v93 = 542327881;
    v94 = 0xE400000000000000;
    v95 = v58;
    sub_100010C84();
    v59._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v59);

    v60 = v93;
    v61 = v94;
    sub_10003E708(v56);
    v62 = v79;
    sub_100048658();

    v63 = UUID._bridgeToObjectiveC()().super.isa;
    v64 = sub_100010F24(v63);

    v93 = 542327881;
    v94 = 0xE400000000000000;
    v95 = v64;
    v65._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v65);

    v67 = v93;
    v66 = v94;
    sub_10003E708(v62);
    if (v60 == v67 && v61 == v66)
    {
      v69 = 0;
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v70 = v85;

    v52 = v81;
    a3 = v70 + v81;
    sub_100048978(v86, &qword_10009A9E0);
    sub_100048978(v83, &qword_10009A9E0);
    a4 = v88;
    a1 = v89;
    a2 = v90;
    v51 = v87;
    v71 = v82;
    if (v69)
    {
      if (v70 < v90 || a3 >= v90)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v71;
        v53 = v77;
      }

      else
      {
        v53 = v77;
        a2 = v82;
        if (v70 != v90)
        {
          v53 = v77;
          swift_arrayInitWithTakeBackToFront();
          a2 = v71;
        }
      }

      goto LABEL_41;
    }

    if (v70 < v87 || a3 >= v87)
    {
      v73 = v84;
      swift_arrayInitWithTakeFrontToBack();
      v54 = v70 + v52;
      v51 = v73;
      v55 = v73;
      v53 = v80;
    }

    else
    {
      v55 = v84;
      v28 = v87 == v70;
      v74 = v84;
      v54 = a3;
      v51 = v84;
      v53 = v80;
      if (!v28)
      {
        swift_arrayInitWithTakeBackToFront();
        v54 = a3;
        v51 = v74;
        v55 = v74;
      }
    }
  }

  v97 = a2;
  v95 = v53;
LABEL_69:
  sub_100043784(&v97, &v96, &v95, &qword_10009A9E0, &qword_100076B18);
  return 1;
}

void sub_100043784(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_10000FC6C(a4, a5);
  sub_100011D00();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v6 + (v7 - v6) / v9 * v9;
  if (v5 < v6 || v5 >= v11)
  {
    sub_100049E94();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_100049E94();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_10004386C(uint64_t a1, char a2)
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

uint64_t sub_10004390C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v30 = *(v33 - 8);
  v8 = __chkstk_darwin(v33);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v31 = &v27 - v11;
  v34 = a4;
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
    v19 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v34;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = -1 << *(v13 - 32);
    v28 = a1;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v29 = a3;
    while (1)
    {
      if (v18 >= a3)
      {
        goto LABEL_24;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_25;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            a3 = v18;
            goto LABEL_19;
          }

          v17 = *(v13 + 8 * v22);
          ++v19;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v22 = v19;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v22 << 6);
      v25 = v34;
      type metadata accessor for SidecarIdentity(0);
      v26 = v32;
      sub_10003E75C();
      *&v26[*(v33 + 48)] = *(*(v25 + 56) + 8 * v24);
      sub_10004871C();
      sub_10004871C();
      a3 = v29;
      if (v21 == v29)
      {
        break;
      }

      a2 += *(v30 + 72);

      v18 = v21;
      v19 = v22;
    }

    v19 = v22;
LABEL_19:
    v15 = v27;
    a1 = v28;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100043BD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100010FDC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100043BEC(Swift::Int *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for ServiceProvider();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10003B96C(v7, result + 1, &qword_10009A828, &qword_100076A00, type metadata accessor for ServiceProvider);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_10003B080();
        }

        v17 = v8;
        sub_10003BB3C();

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for ServiceProvider();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v21 = *v3;
        v17 = a2;
        sub_10004484C();
        *v3 = v21;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v18 = *(*(v6 + 48) + 8 * v13);
    *a1 = v18;
    v19 = v18;
    return 0;
  }

  return result;
}

void sub_100043E48()
{
  sub_100011DD0();
  v3 = v2;
  v25 = v4;
  v5 = type metadata accessor for UUID();
  sub_100011C54();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100049818();
  v24 = v0;
  v9 = *v0;
  sub_10004978C();
  sub_100035114(v10);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v26 = v9;
  v27 = v9 + 56;
  sub_100049C5C();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    if (((1 << (v11 & v13)) & *(v27 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100049CE8();
      v20();
      v28 = *v24;
      v21 = sub_10004A074();
      sub_100044458(v21, v22, isUniquelyReferenced_nonNull_native);
      *v24 = v28;
      sub_100049CE8();
      v23();
      goto LABEL_7;
    }

    v15 = v7[9] * v14;
    v16 = v7[2];
    v16(v1, *(v26 + 48) + v15, v5);
    sub_10004978C();
    sub_100035114(&unk_10009A940);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = v7[1];
    v18(v1, v5);
    if (v17)
    {
      break;
    }

    v11 = v14 + 1;
  }

  v18(v3, v5);
  v16(v25, *(v26 + 48) + v15, v5);
LABEL_7:
  sub_100011DB8();
}

BOOL sub_1000440B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100049C5C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1000446E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1000441FC(Swift::Int *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10003B96C(v7, result + 1, &unk_10009A950, &unk_100076AB8, type metadata accessor for Client);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_10003B080();
        }

        v17 = v8;
        sub_10003BB3C();

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for Client();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v21 = *v3;
        v17 = a2;
        sub_10004484C();
        *v3 = v21;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v18 = *(*(v6 + 48) + 8 * v13);
    *a1 = v18;
    v19 = v18;
    return 0;
  }

  return result;
}

uint64_t sub_100044458(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10003B224(v12 + 1, v9);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_10003AB34(v12 + 1, v9);
LABEL_8:
      v23 = v3;
      v14 = *v3;
      sub_100035114(&unk_100099180);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_100035114(&unk_10009A940);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_10003A5F8(v8, v9);
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1000446E4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10003B57C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10003AE4C();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_10003A82C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_10004484C()
{
  sub_100011DD0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(*v0 + 16);
  v11 = *(*v0 + 24);
  if (v11 <= v10 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_10004A0A4(v10);
      sub_10003B080();
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      v16 = sub_10004A0A4(v10);
      sub_10003A984(v16, v17);
LABEL_10:
      v18 = *v0;
      NSObject._rawHashValue(seed:)(*(*v0 + 40));
      sub_100049C5C();
      v21 = ~v20;
      while (1)
      {
        v7 = v19 & v21;
        if (((*(v18 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v5(0);
        v22 = *(*(v18 + 48) + 8 * v7);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          goto LABEL_15;
        }

        v19 = v7 + 1;
      }
    }

    sub_10003A4DC(v2, v3, v1, v2);
  }

LABEL_7:
  v12 = *v0;
  *(*v0 + 8 * (v7 >> 6) + 56) |= 1 << v7;
  *(*(v12 + 48) + 8 * v7) = v9;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
    sub_100011DB8();
  }
}

unint64_t *sub_100044988(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_100045194(v10, v6, v4, a2);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10003BBB8(0, v6, v7);
  v8 = sub_100044C7C(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_100044AF8(uint64_t a1, uint64_t (*a2)(char *, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_10004521C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10003BBB8(0, v8, v9);
  v10 = sub_100044F7C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_100044C7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v40 = a4;
  v33 = a1;
  v39 = sub_10000FC6C(&qword_10009A788, &qword_100076988);
  v5 = __chkstk_darwin(v39);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v31 - v7;
  v8 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v36 = *(v8 - 8);
  result = __chkstk_darwin(v8 - 8);
  v34 = 0;
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v41 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v42 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v41;
    v24 = v35;
    sub_10003E75C();
    v25 = v22;
    v26 = *(*(v23 + 56) + 8 * v22);
    v27 = v38;
    sub_10003E75C();
    *&v27[*(v39 + 48)] = v26;
    v28 = v37;
    sub_10004871C();
    swift_retain_n();

    v29 = *v28;
    sub_10003E708(v28);

    result = sub_10003E708(v24);
    v17 = v42;
    if (v29 != v40)
    {
      *(v33 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_1000452AC(v33, v32, v34, v41);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_1000452AC(v33, v32, v34, v41);
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100044F7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = _s7SessionC8IdentityVMa(0);
  v28 = *(v5 - 8);
  result = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v30;
    sub_10003E75C();
    v22 = *(*(v21 + 56) + 8 * v20);

    v23 = v29(v8, v22);

    result = sub_10003E708(v8);
    if (v23)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100045680(v26, v25, v27, v30);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_100045680(v26, v25, v27, v30);
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100045194(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100044C7C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10004521C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100044F7C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1000452AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v37 = &v34 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  sub_10000FC6C(&qword_10009A790, &qword_100076990);
  result = static _DictionaryStorage.allocate(capacity:)();
  v43 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v36;
  }

  v14 = 0;
  v15 = v43 + 64;
  v34 = v10;
  v35 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v42 = *(v38 + 72);
    sub_10003E75C();
    v20 = *(*(a4 + 56) + 8 * v19);
    sub_1000469E4();
    v21 = v43;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*v10);
    v22 = v10 + *(v39 + 20);
    type metadata accessor for UUID();
    sub_100035114(&unk_100099180);
    v41 = v20;

    dispatch thunk of Hashable.hash(into:)();
    v23 = _s7SessionC8IdentityVMa(0);
    Hasher._combine(_:)(*&v22[*(v23 + 20)]);
    Hasher._combine(_:)(v22[*(v23 + 24)]);
    result = Hasher._finalize()();
    v24 = -1 << *(v21 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v10 = v34;
      a4 = v35;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v10 = v34;
    a4 = v35;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = v43;
    result = sub_1000469E4();
    *(*(v32 + 56) + 8 * v27) = v41;
    ++*(v32 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    v13 = v40;
    if (!a3)
    {
      return v43;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v43;
    }

    v18 = v36[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_100045680(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s7SessionC8IdentityVMa(0);
  v22[1] = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  sub_10000FC6C(&qword_10009A7E8, &qword_1000769D0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v19 = v16 | (v15 << 6);
    sub_10003E75C();
    v20 = *(*(a4 + 56) + 8 * v19);
    sub_1000469E4();

    result = sub_10003E4C0(v11, v20, v13);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v13;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_10004589C(unint64_t a1)
{
  if (sub_100037E08(a1))
  {
    sub_10000FC6C(&qword_10009A828, &qword_100076A00);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v18 = sub_100037E08(a1);
  if (v18)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1000391C8(v3, v17 == 0, a1);
      result = v17 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        type metadata accessor for ServiceProvider();
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unsigned __int8 *sub_100045A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100047C14();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100045FD8(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100045FD8(uint64_t a1, unint64_t a2)
{
  v2 = sub_100046044(sub_100046040, 0, a1, a2);
  v6 = sub_100046078(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100046078(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100015064(v9, 0), v12 = sub_1000461D8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000461D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000463E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000463E8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1000463E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_100046464()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v59[3] = &type metadata for MutablePacket;
  v59[0] = v10;
  v59[1] = v8;
  v59[4] = sub_1000484A0();
  v59[2] = v7;
  if ((*(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) - 1) <= 2 && (Strong = swift_weakLoadStrong()) != 0)
  {
    v52 = Strong;
    v53 = v5;
    v54 = v3;
    sub_100013694(v59, v56);
    v51 = v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    v13 = *(v51 + *(_s7SessionC8IdentityVMa(0) + 20));
    v15 = v57;
    v14 = v58;
    sub_100048510(v56, v57);
    v16 = *(v14 + 32);
    v17 = v11;
    sub_10001FCF8(v9, v7);
    v16(v13, v15, v14);
    mach_continuous_approximate_time();
    v18 = v57;
    sub_100048510(v56, v57);
    sub_100049CB8();
    v20(v19);
    if (qword_100098BA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    v21 = sub_100049D00();
    if (os_log_type_enabled(v21, v22))
    {
      if (qword_100098BB0 != -1)
      {
        sub_100049734();
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100049AD4(v23, qword_1000A1AE8);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        sub_100011DE8();
        v26 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v26 = 136446466;
        sub_100027DA0();
        sub_100014C58(v27, v28, v55);
        sub_100049FA8();
        *(v26 + 4) = v18;
        *(v26 + 12) = 2082;
        sub_100011D50();
        swift_beginAccess();
        v29 = v57;
        sub_10000FCB4(v56, v57);
        sub_10001B944();
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_100014C58(v30, v31, v55);
        sub_100049FA8();
        *(v26 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Send %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        sub_100011CF4();

        sub_100011CF4();
      }
    }

    v32 = swift_allocObject();
    v32[2] = v1;
    v32[3] = v53;
    v32[4] = v54;
    v55[3] = v52;
    sub_100011D50();
    swift_beginAccess();
    v33 = sub_10000FCB4(v56, v57)[2];

    v34 = sub_100049EDC();
    sub_1000485AC(v34, v35);
    v36 = sub_100049E64();
    v38 = sub_10001F8F4(v36, v37, v33);
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    type metadata accessor for RapportRemoteDisplaySession();

    RapportMessageable.sendEvent(id:event:destinationID:options:completion:)(0xD000000000000011, 0x8000000100079E40, v38, v39, v41, 0, sub_1000485A0, v32);

    sub_100003458(v56);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v42 = v11;
    sub_10001FCF8(v9, v7);
    sub_1000499C4();
    v49 = sub_10001E680(v43, v44, v45, v46, v47, v48, 528);
    __chkstk_darwin(v49);
    sub_100016F18(sub_1000484F4, v1, sub_100011C20);
    if (v5)
    {
      v50 = v49;
      v5(v49);
    }

    else
    {
    }
  }

  sub_100003458(v59);
  sub_100011DB8();
}

uint64_t sub_100046964(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000469E4()
{
  sub_100049C50();
  v1(0);
  sub_100011D00();
  v2 = sub_100049A98();
  v3(v2);
  return v0;
}

uint64_t sub_100046AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServiceProvider();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_100046BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100035114(&unk_10009A858);
  swift_beginAccess();
  v13 = *(a3 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v24 = v12;
    v25 = v5;
    v26 = a2;
    v27 = v9;
    v28 = a3;
    v15 = *(v5 + 48);

    v16 = 0;
    while (v16 < *(v13 + 16))
    {
      v17 = v6;
      sub_100048658();
      v18 = *&v11[v15];
      sub_100048978(v11, &qword_10009A850);
      if (v18 == v29)
      {

        a3 = v28;
        goto LABEL_9;
      }

      ++v16;
      v6 = v17;
      if (v14 == v16)
      {

        v9 = v27;
        a3 = v28;
        v5 = v25;
        a2 = v26;
        v12 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v19 = &v9[*(v5 + 48)];
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 16))(v9, a2, v20);
    *v19 = v29;
    v19[1] = v12;
    swift_beginAccess();

    sub_1000387E8(sub_100038AB8);
    v21 = *(*(a3 + 16) + 16);
    sub_10003885C(v21, sub_100038AB8);
    v22 = *(a3 + 16);
    *(v22 + 16) = v21 + 1;
    sub_10004871C();
    *(a3 + 16) = v22;
    swift_endAccess();
LABEL_9:
    swift_beginAccess();
    sub_10003807C((a3 + 16));
    swift_endAccess();
    sub_1000566D0();
  }
}

uint64_t sub_100046F1C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

void sub_100046F7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Client();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for Client();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

void sub_100047168(void *a1, uint64_t a2)
{
  v19 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v4 = __chkstk_darwin(v19);
  v17[1] = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  sub_100035114(&unk_10009A858);
  swift_beginAccess();
  v17[0] = a2;
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);

  v10 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 == v10)
    {

      *(v17[0] + 16) = v18;

      sub_1000566D0();
      return;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    sub_100048658();
    if (*&v7[*(v19 + 48)] == a1)
    {
      sub_100048978(v7, &qword_10009A850);
      ++v10;
    }

    else
    {
      sub_10004871C();
      v11 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = v11[2] + 1;
        v18 = a1;
        sub_10003EC7C(0, v13, 1);
        a1 = v18;
        v11 = v20;
      }

      v15 = v11[2];
      v14 = v11[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = a1;
        sub_10003EC7C(v14 > 1, v15 + 1, 1);
        v16 = v15 + 1;
        a1 = v18;
        v11 = v20;
      }

      ++v10;
      v11[2] = v16;
      v18 = v11;
      sub_10004871C();
    }
  }

  __break(1u);
}

uint64_t sub_10004741C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v15 = &type metadata for Packet;
  v12 = a1;
  v13 = a2;
  v16 = sub_100047ABC();
  v14 = a3;
  v7 = v12;
  sub_10001FCF8(v13, a3);
  if (sub_10001F00C(v7) == 1)
  {
    if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 2)
    {
      if (qword_100098BF0 != -1)
      {
        swift_once();
      }

      sub_100047168(a4, qword_1000A1B78);
      sub_1000285E4(3uLL);
    }
  }

  else
  {
    v8 = *(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
    if (v8)
    {
      v9 = *((swift_isaMask & *v8) + 0xD8);
      v10 = v8;
      v9(a4, &v12);
    }

    else if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 1)
    {
      sub_100047590(v7, a2, a3, a4);
    }
  }

  return sub_100003458(&v12);
}

void sub_100047590(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue;
  if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue))
  {
    v8 = *(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = a1;
  sub_10001FCF8(a2, a3);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100038DF0(0, v8[2] + 1, 1, v8);
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100038DF0((v10 > 1), v11 + 1, 1, v8);
  }

  v15 = &type metadata for Packet;
  *&v13 = v9;
  *(&v13 + 1) = a2;
  v16 = sub_100047ABC();
  v14 = a3;
  v8[2] = v11 + 1;
  sub_1000136FC(&v13, &v8[5 * v11 + 4]);
  *(a4 + v7) = v8;
  v12 = v9;
  sub_10001FCF8(a2, a3);

  sub_100011358(a2, a3);
}

uint64_t sub_1000476D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s7SessionC8IdentityVMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = sub_10001EBA0();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  sub_10003E75C();
  *&v16[*(v11 + 20)] = v18;
  v16[*(v11 + 24)] = 1;
  swift_beginAccess();
  v19 = sub_100020BD8(v16, *(a5 + 120), sub_1000393BC);
  swift_endAccess();
  if (!v19)
  {
    v20 = sub_10001EEE8(a2, a3, a4);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_10003E75C();
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v24 = sub_100003420(v9, qword_1000A1AE8);
      v25 = v30;
      (*(v29 + 16))(v30, v24, v9);
      type metadata accessor for Relay.Session(0);
      v19 = swift_allocObject();
      sub_1000280A8(v14, v25, v22, v23);
      sub_10002EB30(v19, v16);
      sub_1000285E4(1uLL);
      v26 = sub_100029F9C();
      sub_100029DD8(v26);
      goto LABEL_7;
    }

    sub_10003E708(v16);
    return 0;
  }

LABEL_7:
  sub_10003E708(v16);
  return v19;
}

uint64_t sub_1000479E8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100047A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100047ABC()
{
  result = qword_10009A848;
  if (!qword_10009A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A848);
  }

  return result;
}

uint64_t sub_100047B38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100047C68(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_100047C14()
{
  result = qword_10009A890;
  if (!qword_10009A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A890);
  }

  return result;
}

uint64_t sub_100047C68(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000463E8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000463E8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000463E8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_1000480A4()
{
  result = qword_10009A8A8;
  if (!qword_10009A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8A8);
  }

  return result;
}

unint64_t sub_1000480F8()
{
  result = qword_10009A8B8;
  if (!qword_10009A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8B8);
  }

  return result;
}

unint64_t sub_10004814C()
{
  result = qword_10009A8E0;
  if (!qword_10009A8E0)
  {
    sub_10000FD4C(&qword_10009A8D8, &unk_100076A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8E0);
  }

  return result;
}

unint64_t sub_1000481D0()
{
  result = qword_100099140;
  if (!qword_100099140)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099140);
  }

  return result;
}

unint64_t sub_10004824C()
{
  result = qword_10009A910;
  if (!qword_10009A910)
  {
    sub_10000FD4C(&qword_10009A908, &unk_100076A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A910);
  }

  return result;
}

unint64_t sub_1000482D0()
{
  result = qword_10009B6F0;
  if (!qword_10009B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B6F0);
  }

  return result;
}

unint64_t sub_100048324()
{
  result = qword_10009A928;
  if (!qword_10009A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A928);
  }

  return result;
}

uint64_t sub_100048378(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000483E4()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100049D5C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10004841C()
{
  swift_weakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10004844C()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_1000484A0()
{
  result = qword_10009A990;
  if (!qword_10009A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A990);
  }

  return result;
}

uint64_t sub_100048510(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100048560()
{

  if (*(v0 + 24))
  {
  }

  v1 = sub_100049BC8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000485AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000485BC()
{
  if (*(v0 + 16))
  {
  }

  v1 = sub_100049BC8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000485FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

unint64_t sub_100048638(unint64_t result)
{
  if (result >= 6)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100048648(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t sub_100048658()
{
  sub_100049C50();
  v4 = sub_100049EF4(v1, v2, v3);
  sub_10000FC6C(v4, v5);
  sub_100011D00();
  v6 = sub_100049A98();
  v7(v6);
  return v0;
}

uint64_t sub_10004871C()
{
  sub_100049C50();
  v4 = sub_100049EF4(v1, v2, v3);
  sub_10000FC6C(v4, v5);
  sub_100011D00();
  v6 = sub_100049A98();
  v7(v6);
  return v0;
}

uint64_t sub_100048770()
{

  v0 = sub_100049BC8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000487A8(uint64_t a1)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    a1 = *(v1 + 32);
    v2 = 0;
  }

  return (*(v1 + 16))(a1, v2);
}

uint64_t sub_100048800()
{

  v0 = sub_100049BC8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000488CC()
{

  sub_100049E4C();

  return _swift_deallocObject(v0);
}

unint64_t sub_100048910()
{
  result = qword_10009AB38;
  if (!qword_10009AB38)
  {
    sub_1000033E0(255, &qword_1000991A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB38);
  }

  return result;
}

uint64_t sub_100048978(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049C74(a1, a2);
  sub_10000FC6C(v3, v4);
  sub_100011D00();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000489CC()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100048A04()
{

  sub_100049E4C();

  return _swift_deallocObject(v0);
}

unint64_t sub_100048A60(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v4 = sub_100049C74(0, v3);
    sub_10000FD4C(v4, v5);
    sub_100049F00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Relay.RelayError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048B68);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Relay.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Relay.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048CF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Relay.Session.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Relay.Session.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048E80);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 sub_100048EB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100048ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048F74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004902C()
{
  result = qword_10009AB50;
  if (!qword_10009AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB50);
  }

  return result;
}

unint64_t sub_100049084()
{
  result = qword_10009AB58;
  if (!qword_10009AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB58);
  }

  return result;
}

unint64_t sub_1000490DC()
{
  result = qword_10009AB60;
  if (!qword_10009AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB60);
  }

  return result;
}

unint64_t sub_100049134()
{
  result = qword_10009AB68;
  if (!qword_10009AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB68);
  }

  return result;
}

unint64_t sub_10004918C()
{
  result = qword_10009AB70;
  if (!qword_10009AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB70);
  }

  return result;
}

unint64_t sub_1000491E4()
{
  result = qword_10009AB78;
  if (!qword_10009AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB78);
  }

  return result;
}

unint64_t sub_10004923C()
{
  result = qword_10009AB80;
  if (!qword_10009AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB80);
  }

  return result;
}

unint64_t sub_100049290(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10000FD4C(&qword_10009A8C0, &qword_100076A68);
    v4();
    sub_10004A0D8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100049300()
{
  result = qword_10009ABA0;
  if (!qword_10009ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABA0);
  }

  return result;
}

unint64_t sub_100049354()
{
  result = qword_10009ABA8;
  if (!qword_10009ABA8)
  {
    sub_10000FD4C(&qword_10009A8D8, &unk_100076A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABA8);
  }

  return result;
}

unint64_t sub_1000493D8(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100049440()
{
  result = qword_100099230;
  if (!qword_100099230)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099230);
  }

  return result;
}

void sub_1000494BC(uint64_t a1)
{
  sub_10004A288();
  if (!sub_100049E1C(v3))
  {
    sub_100049E34();
    sub_10000FD4C(&qword_10009A8F8, &qword_100076A88);
    v2();
    sub_100049E64();
    atomic_store(swift_getWitnessTable(), v1);
  }

  sub_10004A29C();
}

unint64_t sub_10004952C()
{
  result = qword_10009ABB8;
  if (!qword_10009ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABB8);
  }

  return result;
}

unint64_t sub_100049580()
{
  result = qword_10009ABC0;
  if (!qword_10009ABC0)
  {
    sub_10000FD4C(&qword_10009A908, &unk_100076A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABC0);
  }

  return result;
}

unint64_t sub_100049604()
{
  result = qword_10009ABC8;
  if (!qword_10009ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABC8);
  }

  return result;
}

uint64_t sub_100049844()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100049874()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000498E0(uint64_t a1)
{

  return swift_once();
}

id sub_100049A10()
{
  v5 = *(v3 + 824);

  return [v1 v5];
}

void sub_100049A64()
{

  sub_100046464();
}

uint64_t sub_100049B4C(uint64_t a1)
{

  return swift_once();
}

id sub_100049C8C()
{
  v5 = *(v3 + 824);

  return [v0 v5];
}

uint64_t sub_100049DAC()
{

  return sub_10000FC6C(v1, v0);
}

uint64_t sub_100049F18(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_100049F54()
{

  return swift_arrayDestroy();
}

uint64_t sub_100049F70(uint64_t a1)
{

  return swift_willThrow();
}

id sub_100049F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_10001E468(a1, a2, a3, v7, a5, v5);
}

uint64_t sub_100049FA8()
{
}

BOOL sub_10004A178()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_10004A1C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10004A1E8()
{
}

uint64_t sub_10004A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a3 - 256);
  v6 = *(v3 - 344);

  return sub_100046964(a1, v5, a2, v6);
}

uint64_t sub_10004A228()
{
}

void *sub_10004A240(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10004A258()
{
}

uint64_t sub_10004A270()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10004A2C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1B40);
  sub_100003420(v0, qword_1000A1B40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004A340@<X0>(uint64_t a1@<X8>)
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C(&qword_100098BD0);
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100003420(v2, qword_1000A1B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10004A408(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_100033BFC(v1);
}

void sub_10004A470(uint64_t a1, void (**a2)(void, void))
{
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_100033654();
  a2[2](a2, 0);

  _Block_release(a2);
}

uint64_t sub_10004A63C()
{
  _StringGuts.grow(_:)(41);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010007B440;
  v1._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v1);
  return 541346128;
}

void sub_10004A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  sub_10004B318();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, -103, 0, 0, 0);
  if (qword_100098BD0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003420(v12, qword_1000A1B40);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  sub_100016F18(sub_10004B35C, v15, sub_100011C20);
  v16 = v11;
  v17 = _convertErrorToNSError(_:)();
  (a8)[2](a8, v17);

  _Block_release(a8);
}

uint64_t sub_10004A8E4()
{
  _StringGuts.grow(_:)(27);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010007B420;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  return 541346128;
}

void sub_10004ABBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C(&qword_100098BD0);
  }

  v9 = type metadata accessor for Logger();
  sub_100003420(v9, qword_1000A1B40);
  v10 = v4;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 67109378;
    *(v13 + 4) = *&v10[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v13 + 8) = 2082;
    *(v13 + 10) = sub_100014C58(a1, a2, v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "PID %d: Service Presenter Starting Service Extension '%{public}s'", v13, 0x12u);
    sub_100003458(v14);
    sub_100003534(v14);
    sub_100003534(v13);
  }

  else
  {
  }

  v15 = sub_100006E8C();
  v16 = String._bridgeToObjectiveC()();
  v18[4] = a3;
  v18[5] = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100025214;
  v18[3] = &unk_10008F740;
  v17 = _Block_copy(v18);

  [v15 relayPresenterStartServiceExtension:v16 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_10004AE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C(&qword_100098BD0);
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_1000A1B40);
  (*(v5 + 16))(v7, a1, v4);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 67109378;
    *(v13 + 4) = *&v9[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v13 + 8) = 2082;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_100014C58(v15, v17, &v22);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Service Presenter Service Extension Ready '%{public}s'", v13, 0x12u);
    sub_100003458(v14);
    sub_100003534(v14);
    sub_100003534(v13);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_100006E8C();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v19 relayPresenterServiceExtensionReady:isa];
  swift_unknownObjectRelease();
}

id sub_10004B204(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServicePresenter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10004B260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10004B298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B2B0(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004B318()
{
  result = qword_100099030;
  if (!qword_100099030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100099030);
  }

  return result;
}

uint64_t sub_10004B36C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004B38C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  sub_100011C54();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  sub_10004F710(&unk_100099180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v12 = Set.init(minimumCapacity:)();
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v9, v18, v3);
      sub_100043E48();
      (*(v14 - 8))(v11, v3);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t sub_10004B540(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1000440B4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_10004B600()
{
  if ((byte_10009AC00 & 1) == 0)
  {
    v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v1)
    {
      v37 = v1;
      if (qword_100098BE8 != -1)
      {
        swift_once();
      }

      v2 = sub_100052BBC();

      if (qword_100098BD0 != -1)
      {
        sub_10004B36C(&qword_100098BD0);
      }

      v3 = type metadata accessor for Logger();
      sub_100003420(v3, qword_1000A1B40);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (sub_10004F9D8(v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        aBlock = v7;
        *v6 = 136446210;
        if (v2)
        {
          v8 = 0x64656B636F4CLL;
        }

        else
        {
          v8 = 0x64656B636F6C6E55;
        }

        if (v2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        v10 = sub_100014C58(v8, v9, &aBlock);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v4, v0, "=== Launching Service Presenter (Screen %{public}s) ===", v6, 0xCu);
        sub_100003458(v7);
        sub_100003534(v7);
        sub_100003534(v6);
      }

      sub_10000FC6C(&qword_10009B0B0, &qword_100077178);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100077090;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v12;
      AnyHashable.init<A>(_:)();
      v13 = &type metadata for Bool;
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      aBlock = 0xD000000000000031;
      v41 = 0x800000010007B7C0;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      v14 = Dictionary.init(dictionaryLiteral:)();
      if (qword_100098B98 != -1)
      {
        swift_once();
      }

      v15 = *(qword_1000A1AE0 + 56);
      if ([v15 respondsToSelector:"overridePresenterLaunchOptions:"])
      {
        swift_unknownObjectRetain();

        v13 = &protocol witness table for AnyHashable;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = [v15 overridePresenterLaunchOptions:isa];

        swift_unknownObjectRelease();
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (sub_10004F9D8(v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, &protocol witness table for AnyHashable, "Overriding launch options", v21, 2u);
          sub_100003534(v21);
        }

        v14 = v18;
      }

      sub_1000033E0(0, &qword_10009B0B8, FBSOpenApplicationOptions_ptr);

      v23 = sub_10004C83C(v22);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (sub_10004F9D8(v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v26 = 136446723;
        *(v26 + 4) = sub_100014C58(0xD000000000000011, 0x8000000100079E40, &aBlock);
        *(v26 + 12) = 2048;
        *(v26 + 14) = *(v14 + 16);
        *(v26 + 22) = 2081;

        v28 = Dictionary.description.getter();
        v30 = v29;

        v31 = sub_100014C58(v28, v30, &aBlock);

        *(v26 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v24, v13, "Opening application with bundle identifier [%{public}s] using [%ld] options [%{private}s]", v26, 0x20u);
        swift_arrayDestroy();
        sub_100003534(v27);
        sub_100003534(v26);
      }

      v32 = String._bridgeToObjectiveC()();
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      v44 = sub_10004F38C;
      v45 = v33;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_10000CAE8;
      v43 = &unk_10008F790;
      v34 = _Block_copy(&aBlock);

      [v37 openApplication:v32 withOptions:v23 completion:v34];
      _Block_release(v34);

      byte_10009AC00 = 1;
    }

    else
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = sub_10001E468(v35, v36, -999, 0, 0, 0);
      sub_10004BE18(0, v38);
    }
  }
}

uint64_t sub_10004BCDC()
{
  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_1000A1B60, 0, 0x301);
  return swift_endAccess();
}

uint64_t sub_10004BD38()
{
  v0 = sub_10004B540(&off_10008D9C0);
  result = sub_10004BD70(&off_10008DA50, v0);
  qword_1000A1B58 = result;
  return result;
}

uint64_t sub_10004BD70(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1000440B4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_10004BE18(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_getErrorValue();
    sub_10004C390(v11, v12);
    if (qword_100098BD0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v3 = sub_100003420(v2, qword_1000A1B40);
    __chkstk_darwin(v3);
    sub_100016F18(sub_10004C820, 0, sub_10001132C);
    if (qword_100098B98 != -1)
    {
      swift_once();
    }

    sub_1000333C8();
  }

  else
  {
    if (qword_100098BD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000A1B40);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      if (a1)
      {
        v10 = [v6 pid];
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v7, v8, "Service Presenter PID %d Launched", v9, 8u);
    }

    else
    {
    }
  }

  byte_10009AC00 = 0;
}

uint64_t sub_10004C064()
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_10004F3C8();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v5 && v8 == v7)
  {

    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_11:

    if ([v3 code] == 1)
    {
      v11 = [v3 userInfo];
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100020974(v12, &v24);

      if (v25)
      {
        if (swift_dynamicCast())
        {
          v13 = sub_10004C064();

LABEL_28:
          return v13;
        }
      }

      else
      {
        sub_10001FD0C(&v24);
      }
    }

    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v5 && v14 == v7)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if ([v3 code] == 7)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10001E468(v17, v18, -202, 0, 0, 0);
    goto LABEL_28;
  }

LABEL_25:
  *&v24 = v1;
  v19 = v1;
  v20 = _getErrorEmbeddedNSError<A>(_:)();
  if (!v20)
  {
    v13 = swift_allocError();
    *v21 = v19;
    goto LABEL_28;
  }

  v13 = v20;

  return v13;
}

uint64_t sub_10004C390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v34 = *(v5 + 16);
  v34(&v32 - v9, v3, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v5 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v11, v10, a1);
  }

  v12 = _convertErrorToNSError(_:)();

  v13 = [v12 domain];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v17 == v16)
  {
  }

  else
  {
    v33 = v12;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v24 == v16)
      {

        v12 = v33;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v33;
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if ([v12 code] == 7)
      {
        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = sub_10001E468(v27, v28, -202, 0, 0, 0);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v12 = v33;
  }

  if ([v12 code] == 1)
  {
    v20 = [v12 userInfo];
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100020974(v21, &v36);

    if (v37)
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      if (swift_dynamicCast())
      {
        v22 = v35;
        v23 = sub_10004C064();

        goto LABEL_28;
      }
    }

    else
    {
      sub_10001FD0C(&v36);
    }
  }

LABEL_25:
  v34(v8, v3, a1);
  v29 = _getErrorEmbeddedNSError<A>(_:)();
  if (v29)
  {
    v23 = v29;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v23 = swift_allocError();
    (*(v5 + 32))(v30, v8, a1);
  }

LABEL_28:

  return v23;
}

id sub_10004C83C(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary:v1.super.isa];

  return v2;
}

void sub_10004C8C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion;
  if (*(*(v2 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion) + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations) != a1)
  {
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger);
    v9 = objc_allocWithZone(_s15AppPresentationC18SecureAppAssertionCMa(0));
    v10 = sub_10004E194(v7, a1);
    v11 = *(v2 + v8);
    *(v2 + v8) = v10;
  }
}

uint64_t sub_10004C9DC(char *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(char *, uint64_t))
{
  v6 = v5;
  v38 = a5;
  v11 = type metadata accessor for Logger();
  v39 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  *(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion) = 0;

  v41 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    v43 = v21;
    *v20 = 67109378;
    *(v20 + 4) = a4;
    *(v20 + 8) = 2082;
    *(v20 + 10) = sub_100014C58(a2, a3, &v43);
    _os_log_impl(&_mh_execute_header, v17, v18, "Showing Service Presenter PID %d %{public}s", v20, 0x12u);
    sub_100003458(v21);

    v14 = v36;
  }

  v42 = a2;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  v22 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger;
  v23 = v39;
  v24 = *(v39 + 16);
  v25 = v41;
  v24(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger, v41, v11);
  v24(v16, (v6 + v22), v11);
  v26 = objc_allocWithZone(_s15AppPresentationC18SecureAppAssertionCMa(0));

  *(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion) = sub_10004E194(v16, v38);
  v24(v16, v25, v11);
  _s15AppPresentationC20AppSwitcherAssertionCMa(0);
  v27 = swift_allocObject();
  v24(v14, v16, v11);

  v37 = a3;
  v28 = sub_10004D304(v42, a3, v14, v27, &unk_10008F8E0, sub_10004F968, &unk_10008F8F8, &SBSRequestAppSwitcherAppearanceForHiddenApplication);
  v29 = v25;
  v38 = *(v23 + 8);
  v38(v16, v11);
  *(v6 + 40) = v28;
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  swift_weakInit();
  v24(v16, v29, v11);
  v32 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 2) = v31;
  *(v33 + 3) = v34;
  *(v33 + 4) = v37;
  (*(v23 + 32))(&v33[v32], v16, v11);

  OS_dispatch_queue.after(_:closure:)(2.0);

  v38(v29, v11);

  return v6;
}

uint64_t sub_10004CE18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(v8 + 16);
    v16(v13, a4, v7);
    _s15AppPresentationC21SuggestedAppAssertionCMa(0);
    v17 = swift_allocObject();
    v16(v11, v13, v7);

    v18 = sub_10004D304(a2, a3, v11, v17, &unk_10008F840, sub_10004F5B4, &unk_10008F858, &SBSRequestSuggestedApplication);
    (*(v8 + 8))(v13, v7);
    *(v15 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion) = v18;
  }

  return result;
}

uint64_t sub_10004D008()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v7, v8, "Dismissing Service Presenter PID %d", v9, 8u);
  }

  else
  {
  }

  v10 = *(v3 + 8);
  v10(v5, v2);

  v10((v1 + v6), v2);

  return v1;
}

uint64_t sub_10004D220(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

char *sub_10004D304(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(NSString, void *))
{
  v40 = a7;
  v41 = a8;
  v38[1] = a5;
  v39 = a6;
  type metadata accessor for Logger();
  sub_100011C54();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  *(a4 + 2) = 0;
  *(a4 + 3) = a1;
  v45 = a1;
  *(a4 + 4) = a2;
  v42 = v13;
  v43 = v17;
  v38[0] = *(v13 + 16);
  v18 = (v38[0])(&a4[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger], a3);
  v44 = (*(*a4 + 128))(v18);
  v20 = v19;
  swift_bridgeObjectRetain_n();

  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v46 = a3;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_100014C58(v44, v20, aBlock);
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_100014C58(v45, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v22, v23, "Acquiring '%{public}s' for '%{public}s'", v24, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    v21 = v46;
    sub_100003534(v26);
    sub_100003534(v24);
  }

  v27 = v43;
  (v38[0])(v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v43);
  v28 = v42;
  v29 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  (*(v28 + 32))(v31 + v29, v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v32 = (v31 + v30);
  v33 = v45;
  *v32 = v44;
  v32[1] = v20;
  v34 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v34 = v33;
  v34[1] = a2;

  v35 = String._bridgeToObjectiveC()();
  aBlock[4] = v39;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E010;
  aBlock[3] = v40;
  v36 = _Block_copy(aBlock);

  v41(v35, v36);
  _Block_release(v36);

  (*(v28 + 8))(v46, v27);
  return a4;
}

uint64_t sub_10004D698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v36 = static OS_dispatch_queue.main.getter();
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a1;
  (*(v15 + 32))(v21 + v18, v17, v14);
  v22 = (v21 + v19);
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  v24 = (v21 + v20);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  aBlock[4] = sub_10004F68C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F8A8;
  v26 = _Block_copy(aBlock);
  v27 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004F710(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  v29 = v37;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v36;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v29, v28);
  return (*(v39 + 8))(v13, v40);
}

void sub_10004DA7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *(a1 + 16);
  *(a1 + 16) = a2;
  v13 = a2;

  oslog = Logger.logObject.getter();
  if (a2)
  {
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_100014C58(a4, a5, &v18);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_100014C58(a6, a7, &v18);
      v16 = "Acquired '%{public}s' for '%{public}s'";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v14, v16, v15, 0x16u);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_100014C58(a4, a5, &v18);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_100014C58(a6, a7, &v18);
      v16 = "Failed to Acquire '%{public}s' for '%{public}s'";
      goto LABEL_6;
    }
  }
}

uint64_t *sub_10004DCB4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger;
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v6;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = (*(*v0 + 128))();
    v13 = sub_100014C58(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100014C58(*(v0 + 24), *(v0 + 32), &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating '%s' for '%{public}s'", v10, 0x16u);
    swift_arrayDestroy();

    v6 = v18;
  }

  v14 = *(v3 + 8);
  v14(v5, v2);
  v15 = *(v1 + 16);
  if (v15)
  {
    [v15 invalidate];
    v16 = *(v1 + 16);
  }

  else
  {
    v16 = 0;
  }

  v14((v1 + v6), v2);
  return v1;
}

uint64_t sub_10004DF50(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_10004E010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10004E0D8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

char *sub_10004E194(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion] = 0;
  v6 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_logger;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations] = a2;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, "init");
  sub_10004E2EC();
  v10 = *&v9[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion];
  *&v9[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion] = v11;

  v12 = [objc_opt_self() sharedBacklight];
  [v12 addObserver:v9];

  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_10004E2EC()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);

    _os_log_impl(&_mh_execute_header, v2, v3, "Acquiring Secure App Assertion (%lx)", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  v5 = objc_opt_self();
  v6 = *(&v1->isa + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10004F8E8;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100025214;
  v10[3] = &unk_10008F948;
  v8 = _Block_copy(v10);

  v9 = [v5 acquireSecureAppAssertionWithType:6 supportedOrientations:v6 errorHandler:v8];
  _Block_release(v8);
  if (!v9)
  {
    __break(1u);
  }
}

id sub_10004E4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_logger, v3);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v7 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);

    _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating Secure App Assertion (%lx)", v10, 0xCu);
  }

  else
  {

    v8 = v7;
  }

  (*(v4 + 8))(v6, v3);
  v11 = [objc_opt_self() sharedBacklight];
  [v11 removeObserver:v7];

  v12 = *(&v7->isa + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion);
  if (v12)
  {
    [v12 invalidate];
  }

  v14.receiver = v7;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_10004E780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10004F930;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F998;
  v13 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004F710(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void sub_10004EA54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10004EAB0(a2);
  }
}

void sub_10004EAB0(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    __chkstk_darwin(a1);
    swift_errorRetain();
    sub_100016F18(sub_10004EC10, 0, sub_100011C20);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Secure App Assertion Failed", v5, 2u);
    }
  }

  v6 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion;
  v7 = *(v2 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v2 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + v6) = 0;
}

void sub_10004EC2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = NSStringFromBLSBacklightState();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100014C58(v10, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = v5;
    sub_10000FC6C(&unk_10009B0D0, &unk_100077180);
    v15 = String.init<A>(describing:)();
    v17 = sub_100014C58(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Backlight Changed: %s, for reason %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion;
  if (!*(v4 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion) && (BLSBacklightStateIsActive() & 1) == 0)
  {
    sub_10004E2EC();
    v19 = *(v4 + v18);
    *(v4 + v18) = v20;
  }
}

uint64_t sub_10004EEF0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10004EF98(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  sub_100011C54();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v2, &unk_1000A1B60);
  swift_endAccess();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    _s15AppPresentationCMa(0);
    if (swift_dynamicCast())
    {
      sub_10004C8C8(a1);
    }
  }

  else
  {
    sub_10001FD0C(v18);
  }

  if (qword_100098BD0 != -1)
  {
    sub_10004B36C(&qword_100098BD0);
  }

  v11 = sub_100003420(v4, qword_1000A1B40);
  (*(v6 + 16))(v9, v11, v4);
  v12 = *&v2[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];
  _s15AppPresentationCMa(0);
  swift_allocObject();
  v13 = sub_10004C9DC(v9, 0xD000000000000011, 0x8000000100079E40, v12, a1);
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_1000A1B60, v13, 0x301);
  swift_endAccess();
}

uint64_t sub_10004F1DC(void (*a1)(char *, uint64_t))
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C(&qword_100098BD0);
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1B40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = *(&v4->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v7 + 8) = 2048;
    *(v7 + 10) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "=== Service Presenter PID %d Ready %lu ===", v7, 0x12u);
    sub_100003534(v7);
  }

  else
  {

    v5 = v4;
  }

  return sub_10004EF98(a1);
}

uint64_t sub_10004F3B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004F3C8()
{
  result = qword_10009B0C8;
  if (!qword_10009B0C8)
  {
    sub_1000033E0(255, &qword_100099030, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B0C8);
  }

  return result;
}

uint64_t sub_10004F430()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100049D5C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10004F460()
{
  swift_weakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10004F490()
{
  type metadata accessor for Logger();
  sub_100011C54();

  v1 = sub_10004F970();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10004F548()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10004CE18(v2, v3, v4, v5);
}

uint64_t sub_10004F5B8()
{
  type metadata accessor for Logger();
  sub_100011C54();
  sub_10004F980();

  v1 = sub_10004F970();
  v2(v1);

  return _swift_deallocObject(v0);
}

void sub_10004F68C()
{
  type metadata accessor for Logger();
  sub_10004F9C0();
  sub_10004F9A8();

  sub_10004DA7C(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_10004F710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F758()
{
  type metadata accessor for Logger();
  sub_100011C54();
  sub_10004F980();
  v1 = sub_10004F970();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10004F824(void *a1)
{
  type metadata accessor for Logger();
  sub_10004F9C0();
  sub_10004F9A8();

  return sub_10004D698(a1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10004F8B8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10004F8F0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10004F980()
{
}

BOOL sub_10004F9D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10004F9F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_10009B0E0);
  sub_100003420(v0, qword_10009B0E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004FA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 56))
  {
    v4 = qword_100098BE0;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      sub_10004FE24(&qword_100098BE0);
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_10009B0E0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cancelling timer that is still alive during deinitialization.", v8, 2u);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v9 = *(v3 + 40);
  if (v9)
  {
    v10 = *(v3 + 48);
    v11 = qword_100098BE0;

    if (v11 != -1)
    {
      sub_10004FE24(&qword_100098BE0);
    }

    v12 = type metadata accessor for Logger();
    sub_100003420(v12, qword_10009B0E0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Calling completion block that was left unexecuted during deinitialization.", v15, 2u);
    }

    sub_10004B318();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_10001E468(v16, v17, -999, 0xD000000000000043, 0x800000010007B970, 0);
    v9(v18, v19);

    sub_100010FE8(v9, v10);
  }

  sub_100010FE8(*(v3 + 40), *(v3 + 48));
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_10004FCDC(uint64_t a1, uint64_t a2)
{
  sub_10004FA74(a1, a2);

  return _swift_deallocClassInstance(v2, 82, 7);
}

uint64_t sub_10004FD34()
{
  _StringGuts.grow(_:)(39);
  v1 = _typeName(_:qualified:)();

  v2._object = 0x800000010007B940;
  v2._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v1;
}

uint64_t sub_10004FE24(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004FE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v7 = sub_1000499EC(v6);
  __chkstk_darwin(v7);
  _s7SessionC8IdentityVMa(0);
  sub_100011D00();
  __chkstk_darwin(v8);
  sub_100011CD4();
  v11 = v10 - v9;
  if (sub_1000113A4(a1, 1, v12) == 1)
  {
    sub_100011668(a1, &unk_1000991E0, &qword_100075788);
    sub_10003C008(a2);
    type metadata accessor for UUID();
    sub_100011D00();
    (*(v13 + 8))(a2);
    v14 = sub_10004A098();
    return sub_100011668(v14, v15, &qword_100075788);
  }

  else
  {
    sub_100051A48(a1, v11, _s7SessionC8IdentityVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D9D0(v11, a2, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v24, *v3, v26, v27);
    *v3 = v25;
    type metadata accessor for UUID();
    sub_100011D00();
    return (*(v23 + 8))(a2);
  }
}

uint64_t sub_100050008(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *v1;
  }

  else
  {
    v4 = SidecarMapTableCreateStrong();
    *v1 = v4;
    v3 = v4;
    v2 = 0;
  }

  v5 = v2;
  v6 = SidecarMapTableAddObject();

  return v6;
}

_BYTE *sub_100050070(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) = 0;
  v7 = (v3 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = a3;
  v10 = sub_1000035F0(v8, v9);
  v13 = v10;
  v14 = a1 == 0xD000000000000019 && 0x80000001000799B0 == a2;
  if (v14 || (v10 = sub_100051AD4(v10, v11, v12, 0x80000001000799B0), (v10 & 1) != 0))
  {
    v13[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect] = 1;
  }

  if (a1 == 0xD000000000000019 && 0x8000000100079A50 == a2)
  {
    v18 = v13;
  }

  else
  {
    v16 = sub_100051AD4(v10, v11, v12, 0x8000000100079A50);
    v17 = v13;

    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v13[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect] = 1;
LABEL_15:

  return v13;
}

void sub_1000501A4(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  sub_100033444(v1);
}

uint64_t sub_1000501FC(uint64_t a1)
{
  v2 = v1;
  v4 = _s7SessionC8IdentityVMa(0);
  sub_100011D00();
  __chkstk_darwin(v5);
  sub_100011CD4();
  v8 = v7 - v6;
  v9 = type metadata accessor for SidecarIdentity(0);
  v10 = sub_1000499EC(v9);
  v11 = __chkstk_darwin(v10);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v15 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v16 = sub_1000499EC(v15);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  type metadata accessor for UUID();
  sub_100011C54();
  v66 = v20;
  v67 = v19;
  v21 = __chkstk_darwin(v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  result = sub_100006980(a1);
  if (v27)
  {
    sub_100051AF8();
    v28 = sub_100050008(a1);
    swift_endAccess();
    v65 = v28;
    v29 = sub_1000517D8(v28);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v66 + 16))(v23, v25, v67);
    v30 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    sub_10005186C(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v18);
    sub_10001137C(v18, 0, 1, v4);
    sub_100051AF8();
    sub_10004FE44(v18, v23);
    swift_endAccess();
    if (qword_100098B98 != -1)
    {
      sub_100011C88(&qword_100098B98);
    }

    sub_10005186C(a1 + v30, v8);
    v31 = sub_100051AB0();
    sub_100051A48(v31, v14, v32);
    v33 = v30;
    v34 = sub_1000278C4(v14, 0);
    sub_1000518D0(v14);
    sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
    v35 = sub_100058458(v34);
    if (!v35)
    {
      v36 = sub_1000052A4(v65);
      v38 = v37;
      if (qword_100098BB0 != -1)
      {
        sub_1000200E0(&qword_100098BB0);
      }

      v39 = type metadata accessor for Logger();
      sub_100003420(v39, qword_1000A1AE8);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v63 = v40;
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v61 = v23;
        v43 = v42;
        v44 = swift_slowAlloc();
        v62 = v25;
        v45 = v44;
        v68[0] = v44;
        *v43 = 136446210;
        v46 = sub_100014C58(v36, v38, v68);
        v47 = v33;
        v48 = v46;

        *(v43 + 4) = v48;
        v33 = v47;
        v49 = v63;
        _os_log_impl(&_mh_execute_header, v63, v41, "%{public}s: Device Not Found", v43, 0xCu);
        sub_100003458(v45);
        v50 = v45;
        v25 = v62;
        sub_100003534(v50);
        v51 = v43;
        v23 = v61;
        sub_100003534(v51);
      }

      else
      {
      }

      sub_10005186C(a1 + v33, v8);
      v52 = sub_100051AB0();
      v53 = v64;
      sub_100051A48(v52, v64, v54);
      (*(v66 + 32))(v23, v53, v67);
      v55 = objc_allocWithZone(SidecarDevice);
      v35 = sub_10005192C(v23);
    }

    v56 = v35;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v58 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink);
    v59 = String._bridgeToObjectiveC()();
    [v2 relaySession:isa openedByDevice:v56 dataLink:v58 service:v59];

    (*(v66 + 8))(v25, v67);
    return v65;
  }

  return result;
}

void sub_100050788(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_10000FCB4(a2, a2[3]);
  v5 = sub_10004A098();
  v6(v5);
  if (v7 >> 60 != 15)
  {
    v8 = sub_1000501FC(a1);
    sub_10004A098();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 relaySession:v8 receivedOPACKData:isa dataLink:*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink)];

    v10 = sub_10004A098();

    sub_100011358(v10, v11);
  }
}

void sub_10005086C(char *a1, void (**a2)(void, void))
{
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_10003306C(a1);
  a2[2](a2, 0);

  _Block_release(a2);
}

uint64_t sub_100050A38()
{
  _StringGuts.grow(_:)(40);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010007BA90;
  v1._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v1);
  return 541346128;
}

void sub_100050B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, -103, 0, 0, 0);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003420(v12, qword_1000A1AE8);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  sub_100016F18(sub_10004B35C, v15, sub_100011C20);
  v16 = v11;
  v17 = _convertErrorToNSError(_:)();
  (a8)[2](a8, v17);

  _Block_release(a8);
}

void sub_100050ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a6;
  v11 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v12 = sub_1000499EC(v11);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100051750(a2, v14);
  v16 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000113A4(v14, 1, v16) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a7;
  aBlock[5] = a8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008F9C0;
  v20 = _Block_copy(aBlock);

  v21 = type metadata accessor for ServiceProvider();
  v24.receiver = v22;
  v24.super_class = v21;
  objc_msgSendSuper2(&v24, "relaySessionOpen:reconnect:serviceIdentifier:destination:transport:completion:", v15.super.isa, isa, v18, v19, v23, v20);
  _Block_release(v20);
}

void sub_1000510C4(void *a1, void (**a2)(void, void))
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000A1AE8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v8 + 8) = 1024;
    *(v8 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PID %d: Allow Reconnect = %{BOOL}d", v8, 0xEu);
  }

  else
  {

    v6 = v5;
  }

  *(&v5->isa + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) = 0;
  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_10005123C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1000512B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  sub_100011C54();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100011CD4();
  v10 = v9 - v8;
  if (qword_100098BB0 != -1)
  {
    sub_1000200E0(&qword_100098BB0);
  }

  v11 = type metadata accessor for Logger();
  sub_100003420(v11, qword_1000A1AE8);
  (*(v6 + 16))(v10, a1, v4);
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 67109378;
    *(v15 + 4) = *&v12[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v15 + 8) = 2082;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v6 + 8))(v10, v4);
    v20 = sub_100014C58(v17, v19, &v27);

    *(v15 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "PID %d: Service Extension Ready '%{public}s'", v15, 0x12u);
    sub_100003458(v16);
    sub_100003534(v16);
    sub_100003534(v15);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  v21 = *(qword_1000A1AE0 + 176);
  if (v21)
  {
    v22 = v21;
    v23.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    [v22 relayPresenterServiceExtensionReady:v23.super.isa];
  }

  else
  {
    v24 = v12;
    v23.super.isa = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23.super.isa, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = *&v24[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      _os_log_impl(&_mh_execute_header, v23.super.isa, v25, "PID %d: No Service Presenter", v26, 8u);
      sub_100003534(v26);
    }

    else
    {

      v23.super.isa = v24;
    }
  }
}

id sub_1000516E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100051750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000517C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000517D8(int a1)
{
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v4 = -1;
  v5 = -1;
  v1 = [[NSUUID alloc] initWithUUIDBytes:v3];

  return v1;
}

uint64_t sub_10005186C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000518D0(uint64_t a1)
{
  v2 = type metadata accessor for SidecarIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10005192C(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 initWithIdentifier:isa model:v5 name:v6 version:v7];

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t sub_100051A48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100011D00();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100051AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100051AF8()
{

  return swift_beginAccess();
}

uint64_t sub_100051B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1000113A4(a1, a2, v4);
}

uint64_t sub_100051B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_10001137C(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SidecarIdentity(uint64_t a1)
{
  result = qword_10009B320;
  if (!qword_10009B320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100051C20(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100051C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  __chkstk_darwin(v5 - 8);
  sub_1000523D4();
  sub_100051F04(*(a1 + 16), v2);

  v6 = type metadata accessor for SidecarIdentity(0);
  if (sub_1000523E4())
  {
    sub_10005235C(v2, &qword_10009A718, &qword_100076940);
    v7 = 1;
  }

  else
  {
    sub_100052288(v2, a2);
    v7 = 0;
  }

  return sub_10001137C(a2, v7, 1, v6);
}

uint64_t sub_100051D6C@<X0>(char *a2@<X8>)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v4 - 8);
  sub_1000523D4();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();

  if (sub_1000523E4() == 1)
  {
    sub_10005235C(v2, &qword_1000991D8, &qword_100075780);
    v9 = 1;
  }

  else
  {
    v10 = *(v6 + 32);
    v10(v8, v2, v5);
    v10(a2, v8, v5);
    v9 = 0;
  }

  v11 = type metadata accessor for SidecarIdentity(0);
  return sub_10001137C(a2, v9, 1, v11);
}

uint64_t sub_100051F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  __chkstk_darwin(v5 - 8);
  sub_1000523D4();
  v6 = a1;
  sub_1000522EC(v6);
  if (v7)
  {
    sub_100051D6C(v2);

    v8 = type metadata accessor for SidecarIdentity(0);
    if (sub_1000523E4() != 1)
    {
      sub_100052288(v2, a2);
      v10 = a2;
      v11 = 0;
      v9 = v8;
      return sub_10001137C(v10, v11, 1, v9);
    }

    sub_10005235C(v2, &qword_10009A718, &qword_100076940);
  }

  else
  {
  }

  v9 = type metadata accessor for SidecarIdentity(0);
  v10 = a2;
  v11 = 1;
  return sub_10001137C(v10, v11, 1, v9);
}

uint64_t sub_100052008()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100010F24(isa);

  sub_100010C84();
  v1._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v1);

  return 542327881;
}

uint64_t sub_10005208C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v2, v3, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100052100()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v0, v1, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100052180(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v1, v2, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100052240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidecarIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000522EC(void *a1)
{
  v2 = [a1 idsDeviceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005235C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000FC6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000523E4()
{

  return sub_1000113A4(v0, 1, v1);
}

const char *sub_100052400()
{
  v12[0].sa_len = *v0;
  memcpy(&v12[0].sa_family, v0 + 1, 0x7FuLL);
  if (v12[0].sa_len)
  {
    sa_len = v12[0].sa_len;
  }

  else
  {
    sa_len = 128;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v4 = getnameinfo(v12, sa_len, v2, 0x401u, v3, 0x20u, 26);
  if (!v4)
  {
    v6 = String.init(cString:)();
    v7 = String.init(cString:)();
    v9 = v8;
    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    goto LABEL_8;
  }

  result = gai_strerror(v4);
  if (result)
  {
    v6 = String.init(cString:)();
LABEL_8:

    return v6;
  }

  __break(1u);
  return result;
}

ValueMetadata *type metadata accessor for Sockaddr()
{
  return &type metadata for Sockaddr;
}

{
  return &type metadata for Sockaddr;
}

uint64_t sub_100052578(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000525BC()
{
  if (qword_100098BE8 != -1)
  {
    swift_once();
  }

  if (sub_100052BC8())
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  if (sub_100052BBC())
  {
    v1 = v0 | 8;
  }

  else
  {
    v1 = v0;
  }

  IsActive = IOPMUserIsActive();

  if (IsActive)
  {
    return v1 | 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10005265C(uint64_t a1)
{
  type metadata accessor for System();
  swift_allocObject();
  result = sub_100052698();
  qword_1000A1B68 = result;
  return result;
}

uint64_t sub_100052698()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = sub_1000721C4();
  v6 = *(v0 + 16);
  sub_100013764();
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v7 = v6;
  v8 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  [v7 setDispatchQueue:v8];

  v18 = RapportDeviceChangeFlags.rawValue.getter;
  v19 = 0;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008FA68;
  v9 = _Block_copy(&aBlock);
  [v7 setPrimaryAppleIDChangedHandler:v9];
  _Block_release(v9);
  v18 = RapportDeviceChangeFlags.rawValue.getter;
  v19 = 0;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008FA90;
  v10 = _Block_copy(&aBlock);
  [v7 setScreenLockedChangedHandler:v10];
  _Block_release(v10);
  v18 = RapportDeviceChangeFlags.rawValue.getter;
  v19 = 0;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008FAB8;
  v11 = _Block_copy(&aBlock);
  [v7 setScreenOnChangedHandler:v11];
  _Block_release(v11);
  v18 = sub_100052C7C;
  v19 = v1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008FAE0;
  v12 = _Block_copy(&aBlock);

  [v7 activateWithCompletion:v12];
  _Block_release(v12);

  return v1;
}

id sub_1000529E4()
{
  sub_100072268(*(v0 + 24));
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    if (sub_100052CA0(v5, v6, v7, &type metadata for Bool, v8, v9, v10, v11, v23, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24), v26, *(&v26 + 1), v27, *(&v27 + 1), v28) && (v24 & 0x100000000000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD0C(&v28);
  }

  v12 = [v1 standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    v15 = swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    if (sub_100052CA0(v15, v16, v17, &type metadata for Bool, v18, v19, v20, v21, v23, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24), v26, *(&v26 + 1), v27, *(&v27 + 1), v28) && (v25 & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD0C(&v28);
  }

  return [*(v0 + 16) manateeAvailable];
}

uint64_t sub_100052C08()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100052C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return swift_dynamicCast();
}

void sub_100052CC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100052D24(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

BOOL sub_100052E0C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

id sub_100052E38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  sub_100011C54();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100011CD4();
  v9 = v8 - v7;
  UUID.init()();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC12SidecarRelay10TestDevice_uuid, v9, v3);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for TestDevice(0);
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100052FB8()
{
  sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_100049C0C();
  __chkstk_darwin(v2);
  v3 = sub_10005615C();
  sub_100011D00();
  __chkstk_darwin(v4);
  sub_100011CD4();
  v7 = v6 - v5;
  sub_100051F04(v0, v1);
  result = sub_1000113A4(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v1, v7);
    v9._countAndFlagsBits = sub_100052008();
    String.append(_:)(v9);

    sub_1000518D0(v7);
    return 0x6976654474736554;
  }

  return result;
}

uint64_t sub_100053278()
{
  v0 = sub_100055D9C();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t type metadata accessor for TestDevice(uint64_t a1)
{
  result = qword_10009B460;
  if (!qword_10009B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100053488(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100053530()
{
  sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_100049C0C();
  __chkstk_darwin(v2);
  v3 = sub_10005615C();
  sub_100011D00();
  __chkstk_darwin(v4);
  sub_100011CD4();
  v7 = v6 - v5;
  sub_100051F04(*(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice), v1);
  result = sub_1000113A4(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v1, v7);
    strcpy(v10, "TestSession ");
    BYTE5(v10[1]) = 0;
    HIWORD(v10[1]) = -5120;
    v9._countAndFlagsBits = sub_100052008();
    String.append(_:)(v9);

    sub_1000518D0(v7);
    return v10[0];
  }

  return result;
}

void *sub_100053694()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice);
  v2 = v1;
  return v1;
}

uint64_t sub_10005371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_100049E4C();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = OBJC_IVAR____TtC12SidecarRelay11TestSession_handlers;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + v10);
  sub_10003E3A4();
  *(v6 + v10) = v12;
  return swift_endAccess();
}

void sub_1000538DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100053990()
{
  v1 = OBJC_IVAR____TtC12SidecarRelay11TestSession_handlers;
  swift_beginAccess();
  sub_1000391EC();
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + v1);
    v4 = *(v6 + 24);
    sub_10000FC6C(&qword_10009A930, &qword_100076AA0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v4);

    sub_10000FC6C(&qword_10009B5C0, &qword_100077410);
    _NativeDictionary._delete(at:)();
    *(v0 + v1) = v6;
  }

  return swift_endAccess();
}

void sub_100053B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = sub_10001E674(4294960524, 0, 0, "SidecarRelay/TestRelay.swift", 28, 2, 105);
  if (a7)
  {
    v9 = v8;
    a7();
    v8 = v9;
  }
}

uint64_t sub_100053DD0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100011CD4();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100011C54();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100011CD4();
  v14 = v13 - v12;
  v15 = [v0 dispatchQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v26 = sub_100055CA0;
  v27 = v16;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v24 = v17;
  v25 = &unk_10008FC48;
  v18 = _Block_copy(aBlock);
  v19 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000560BC();
  sub_100055C20(v20, 255, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  sub_100056140();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

void sub_10005413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, 3328, 0, 0, 0);
  v12 = _convertErrorToNSError(_:)();
  (a8)[2](a8, 0, 0, v12);

  _Block_release(a8);
}

id sub_10005447C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1000544EC()
{
  v1 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  v4 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051F04(*(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice), v3);
  result = sub_1000113A4(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v3, v6);
    strcpy(v10, "ProxySession ");
    HIWORD(v10[1]) = -4864;
    v8._countAndFlagsBits = sub_100052008();
    String.append(_:)(v8);

    v9 = v10[0];
    sub_1000518D0(v6);
    return v9;
  }

  return result;
}

uint64_t sub_100054660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100011CD4();
  v16 = v15 - v14;
  v31 = type metadata accessor for DispatchQoS();
  sub_100011C54();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100011CD4();
  v22 = v21 - v20;
  v23 = [v7 dispatchQueue];
  sub_100049E4C();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v35 = a4;
  v36 = v24;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v33 = v25;
  v34 = a5;
  v26 = _Block_copy(aBlock);
  sub_1000485AC(a1, a2);
  static DispatchQoS.unspecified.getter();
  sub_1000560BC();
  sub_100055C20(v27, 255, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  sub_100056140();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v12 + 8))(v16, v10);
  (*(v18 + 8))(v22, v31);
}

id sub_100054988()
{
  v1 = OBJC_IVAR____TtC12SidecarRelay10TestServer_sessions;
  type metadata accessor for TestSession();
  type metadata accessor for TestServer.ProxySession();
  sub_100055C20(&qword_10009B5B0, v2, type metadata accessor for TestSession, &protocol conformance descriptor for NSObject);
  *&v0[v1] = Dictionary.init(dictionaryLiteral:)();
  v3 = OBJC_IVAR____TtC12SidecarRelay10TestServer_proxies;
  sub_100055C20(&qword_10009B5B8, 255, type metadata accessor for TestServer.ProxySession, &protocol conformance descriptor for NSObject);
  *&v0[v3] = Dictionary.init(dictionaryLiteral:)();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TestServer();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100054B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736569786F7270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100054C28(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100054C70(char a1)
{
  if (a1)
  {
    return 0x736E6F6973736573;
  }

  else
  {
    return 0x736569786F7270;
  }
}

uint64_t sub_100054CA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000FC6C(&qword_10009B598, &qword_100077400);
  sub_100011C54();
  v9 = v8;
  sub_100049C0C();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_10000FCB4(a1, a1[3]);
  sub_100055B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100011A38(&qword_100099140, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_100056114();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_100056114();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_100054E2C(void *a1)
{
  v2 = sub_10000FC6C(&unk_10009B5E0, &qword_100077590);
  sub_100011C54();
  v4 = v3;
  sub_100049C0C();
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_10000FCB4(a1, a1[3]);
  sub_100055B64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  v11 = 0;
  sub_100011A38(&qword_100099230, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000560E4();
  v9 = v12;
  v11 = 1;
  sub_1000560E4();
  (*(v4 + 8))(v7, v2);
  sub_100003458(a1);
  return v9;
}

uint64_t sub_100055010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100055038@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportDeviceChangeFlags.distance.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100055060(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005509C(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000550D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100054E2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id sub_100055120(void *a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay10TestClient_testDevice;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for TestDevice(0)) init];
  v4 = a1;
  v6 = sub_1000035F0(v4, v5);
  v7 = qword_100098B98;
  v8 = v6;
  if (v7 != -1)
  {
    sub_1000560A8();
    swift_once();
  }

  return v8;
}

uint64_t sub_1000551E0(uint64_t (*a1)(void))
{
  result = a1();
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();

    return swift_once();
  }

  return result;
}

void sub_100055230(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_1000A1AE8);
  v9 = a3;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 67109378;
    *(v12 + 4) = *&v9[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v12 + 8) = 2082;
    *(v12 + 10) = sub_100014C58(a1, a2, &v26);
    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Devices '%{public}s'", v12, 0x12u);
    sub_100003458(v13);
  }

  else
  {
  }

  v14 = *&v9[OBJC_IVAR____TtC12SidecarRelay10TestClient_testDevice];
  type metadata accessor for RapportRemoteDisplayDevice();
  swift_allocObject();
  RapportRemoteDisplayDevice.init(device:)(v14);
  sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  v15 = v14;

  v17 = sub_100058458(v16);
  if (v17)
  {
    v18 = v17;
    sub_10000FC6C(&qword_10009B5A8, &qword_100077408);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100077360;
    *(v19 + 32) = v18;
    v20 = v18;
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (a4)[2](a4, v21.super.isa, 0);
  }

  else
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = sub_10001E468(v22, v23, -200, 0, 0, 0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v21.super.isa = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v21.super.isa);
  }

  _Block_release(a4);
}

void sub_100055670(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();
    swift_once();
  }

  sub_100033444(v1);
}

void sub_1000556CC(uint64_t a1, uint64_t a2)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008FB58;
  v3 = _Block_copy(aBlock);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for TestProvider();
  objc_msgSendSuper2(&v4, "relayRegisterServiceProvider:", v3);
  _Block_release(v3);
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();
    swift_once();
  }
}

id sub_100055AA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100055B10()
{
  result = qword_10009B570;
  if (!qword_10009B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B570);
  }

  return result;
}

unint64_t sub_100055B64()
{
  result = qword_10009B5A0;
  if (!qword_10009B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5A0);
  }

  return result;
}

uint64_t sub_100055BB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100055BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100055C20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100055C68()
{

  return _swift_deallocObject(v0);
}

void sub_100055CA0()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12SidecarRelay11TestSession_valid) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12SidecarRelay11TestSession_valid) = 0;
  }
}

uint64_t sub_100055CC0()
{
  if (*(v0 + 16))
  {
  }

  sub_100049E4C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100055CFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_100055D38()
{

  sub_100049E4C();

  return _swift_deallocObject(v0);
}

id sub_100055D9C()
{
  v0 = MGGetStringAnswer();

  return v0;
}

_BYTE *storeEnumTagSinglePayload for TestServer.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100055E9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100055ED4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100055F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100055F64()
{
  result = qword_10009B5C8;
  if (!qword_10009B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5C8);
  }

  return result;
}

unint64_t sub_100055FBC()
{
  result = qword_10009B5D0;
  if (!qword_10009B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5D0);
  }

  return result;
}

unint64_t sub_100056014()
{
  result = qword_10009B5D8;
  if (!qword_10009B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5D8);
  }

  return result;
}

uint64_t sub_1000560E4()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100056114()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10005615C()
{

  return type metadata accessor for SidecarIdentity(0);
}

void *sub_10005617C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10003ECBC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v8 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  while (1)
  {
    a1(v19, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v19[0];
    v11 = v19[1];
    v12 = v19[2];
    v20 = v6;
    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      sub_10003ECBC((v13 > 1), v14 + 1, 1);
      v6 = v20;
    }

    v6[2] = v14 + 1;
    v15 = &v6[3 * v14];
    v15[4] = v10;
    v15[5] = v11;
    v15[6] = v12;
    v9 += v17;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = v5;
  if (v4)
  {
    sub_100057CB4(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10001137C(a2, v7, 1, v6);
}

BOOL sub_1000563B0()
{
  v2 = type metadata accessor for Date();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10005840C();
  swift_beginAccess();
  v6 = *(v0 + 16);
  v11 = v1;

  v7 = sub_10005617C(sub_100057E14, v10, v6);

  v8 = *(v0 + 24);
  if (!v7[2])
  {
  }

  (*(v4 + 8))(v1, v2);
  return v8 != 0;
}

uint64_t sub_1000564D4()
{
  type metadata accessor for Watchdog();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  *(result + 24) = 0;
  qword_1000A1B78 = result;
  return result;
}

uint64_t sub_10005650C()
{
  v2 = type metadata accessor for Date();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10005840C();
  swift_beginAccess();

  sub_100020D74();
  *(v0 + 16) = v6;

  sub_1000566D0();
  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_100056610(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_100057D44(&qword_10009B770, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2 = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((v2 & 1) == 0)
  {
    sub_10000FC6C(&qword_10009A850, &qword_100076A20);
    sub_100029EC8();
  }

  return v2 & 1;
}

uint64_t sub_1000566D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  v43 = v3;
  __chkstk_darwin(v4);
  sub_100011D10();
  v42 = (v5 - v6);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  type metadata accessor for DispatchWallTime();
  sub_100011C54();
  v45 = v10;
  v46 = v11;
  __chkstk_darwin(v10);
  sub_100011D10();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v44 = &v40 - v16;
  sub_10000FC6C(&unk_10009B740, &qword_100077620);
  sub_100049C0C();
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = type metadata accessor for Date();
  sub_100011C54();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100011D10();
  v26 = (v24 - v25);
  __chkstk_darwin(v27);
  v29 = &v40 - v28;
  swift_beginAccess();
  sub_100056300(*(v1 + 16), v19);
  v30 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  if (sub_1000113A4(v19, 1, v30) == 1)
  {
    result = sub_100057C34(v19);
    if (*(v1 + 24))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      *(v1 + 24) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v41 = v2;
    swift_unknownObjectRelease();
    v32 = *(v22 + 32);
    v32(v26, v19, v20);
    v32(v29, v26, v20);
    Date.timeIntervalSinceNow.getter();
    if (v33 <= 0.0)
    {
      sub_10005650C();
    }

    else
    {
      static DispatchWallTime.now()();
      + infix(_:_:)();
      v34 = *(v46 + 8);
      v46 += 8;
      v40 = v34;
      v34(v14, v45);
      if (!*(v1 + 24))
      {
        sub_100056B04(v1);
      }

      swift_getObjectType();
      sub_100056FD4(v9);
      v35 = v42;
      sub_100057048(v42);
      swift_unknownObjectRetain();
      v36 = v44;
      OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
      v37 = *(v43 + 8);
      v38 = v35;
      v39 = v41;
      v37(v38, v41);
      v37(v9, v39);
      OS_dispatch_source.activate()();
      swift_unknownObjectRelease();
      v40(v36, v45);
    }

    return (*(v22 + 8))(v29, v20);
  }

  return result;
}

uint64_t sub_100056B04(uint64_t a1)
{
  v20 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100057D44(&unk_10009C1A0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000FC6C(&unk_10009B760, &qword_100077628);
  sub_100018B20(&unk_10009C1B0, &unk_10009B760, &qword_100077628);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v8 + 8))(v10, v7);
  swift_getObjectType();
  aBlock[4] = sub_100056EA4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008FE70;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v13);
  (*(v18 + 8))(v3, v19);
  (*(v16 + 8))(v6, v17);
  *(v20 + 24) = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100056EA4()
{
  if (qword_100098BF0 != -1)
  {
    swift_once();
  }

  return sub_10005650C();
}

uint64_t sub_100056EFC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100057D44(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100056FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100057048@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000570C0()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000570E8()
{
  sub_1000570C0();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100057144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100057210(char a1)
{
  if (a1)
  {
    return 0x7463656A626FLL;
  }

  else
  {
    return 0x6974617269707865;
  }
}

uint64_t sub_100057248(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000FC6C(&qword_10009B790, &qword_100077810);
  sub_100011C54();
  v8 = v7;
  sub_100049C0C();
  __chkstk_darwin(v9);
  sub_1000583EC();
  sub_10000FCB4(a1, a1[3]);
  sub_100058098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v4, v6);
}