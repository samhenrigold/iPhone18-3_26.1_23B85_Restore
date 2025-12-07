void sub_10046976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v8 - 8);
  v64 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v68 = &v47[-v11];
  v12 = type metadata accessor for FMFLabelledLocation();
  __chkstk_darwin(v12);
  v57 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v47[-v15];
  v20 = __chkstk_darwin(v17);
  v21 = &v47[-v18];
  v49 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v62 = *(v19 + 16);
    v63 = v19 + 16;
    v23 = *(v19 + 72);
    v58 = (v19 + 8);
    v59 = &v47[-v18];
    v55 = (v19 + 32);
    v56 = v22;
    v24 = v22 + v23 * (a3 - 1);
    v54 = -v23;
    v25 = a1 - a3;
    v48 = v23;
    v26 = v22 + v23 * a3;
    v60 = v16;
    v61 = v12;
LABEL_6:
    v52 = v24;
    v53 = a3;
    v50 = v26;
    v51 = v25;
    v69 = v24;
    while (1)
    {
      v65 = v25;
      v66 = v26;
      v28 = v62;
      (v62)(v21, v26, v12, v20);
      v28(v16, v69, v12);
      v29 = v68;
      FMFLabelledLocation.label.getter();
      v30 = type metadata accessor for FMFLabel();
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);
      if (v32(v29, 1, v30) == 1)
      {
        break;
      }

      v33 = v68;
      FMFLabel.localizedValue.getter();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v35 = String.lowercased()();
      object = v35._object;

      v36 = v64;
      FMFLabelledLocation.label.getter();
      if (v32(v36, 1, v30) == 1)
      {
        __break(1u);
        break;
      }

      FMFLabel.localizedValue.getter();
      v34(v36, v30);
      v37 = String.lowercased()();

      if (v35._countAndFlagsBits == v37._countAndFlagsBits && object == v37._object)
      {

        v27 = *v58;
        v16 = v60;
        v12 = v61;
        (*v58)(v60, v61);
        v21 = v59;
        v27(v59, v12);
LABEL_5:
        a3 = v53 + 1;
        v24 = v52 + v48;
        v25 = v51 - 1;
        v26 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return;
        }

        goto LABEL_6;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = *v58;
      v16 = v60;
      v12 = v61;
      (*v58)(v60, v61);
      v21 = v59;
      v39(v59, v12);
      v40 = v65;
      v41 = v66;
      if (v38)
      {
        if (!v56)
        {
          goto LABEL_18;
        }

        v42 = *v55;
        v43 = v57;
        (*v55)(v57, v66, v12);
        v44 = v16;
        v45 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v42(v45, v43, v12);
        v69 = v45 + v54;
        v16 = v44;
        v26 = v41 + v54;
        v46 = __CFADD__(v40, 1);
        v25 = v40 + 1;
        if (!v46)
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void sub_100469C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMFFriend();
  __chkstk_darwin(v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v34 - v11;
  v14 = __chkstk_darwin(v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = FMFFriend.name.getter();
      v27 = v26;
      if (FMFFriend.name.getter() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100469F3C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v154 = a4;
  v152 = a1;
  v5 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v149 - v9;
  __chkstk_darwin(v11);
  v162 = &v149 - v12;
  __chkstk_darwin(v13);
  v163 = &v149 - v14;
  v15 = type metadata accessor for FMFLabelledLocation();
  __chkstk_darwin(v15);
  v156 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v172 = &v149 - v18;
  __chkstk_darwin(v19);
  v21 = &v149 - v20;
  __chkstk_darwin(v22);
  v184 = &v149 - v23;
  __chkstk_darwin(v24);
  v167 = &v149 - v25;
  __chkstk_darwin(v26);
  v166 = &v149 - v27;
  __chkstk_darwin(v28);
  v33 = __chkstk_darwin(v29);
  v165 = a3;
  v34 = *(a3 + 8);
  v164 = v32;
  if (v34 < 1)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_109:
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_155;
    }

    v7 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    v141 = v7;
LABEL_112:
    v186 = v141;
    v7 = *(v141 + 2);
    v142 = v164;
    if (v7 >= 2)
    {
      while (*v165)
      {
        v143 = *&v141[16 * v7];
        v144 = v141;
        v145 = *&v141[16 * v7 + 24];
        v146 = v169;
        sub_10046BA44(&(*v165)[*(v142 + 72) * v143], &(*v165)[*(v142 + 72) * *&v141[16 * v7 + 16]], &(*v165)[*(v142 + 72) * v145], a3);
        v169 = v146;
        if (v146)
        {
          goto LABEL_123;
        }

        if (v145 < v143)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_10025EFD4(v144);
        }

        if (v7 - 2 >= *(v144 + 2))
        {
          goto LABEL_139;
        }

        v147 = &v144[16 * v7];
        *v147 = v143;
        *(v147 + 1) = v145;
        v186 = v144;
        sub_10025EF48(v7 - 1);
        v141 = v186;
        v7 = *(v186 + 2);
        v142 = v164;
        if (v7 <= 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_153;
    }

    goto LABEL_123;
  }

  v150 = &v149 - v30;
  v151 = v31;
  v35 = 0;
  v178 = (v32 + 8);
  v179 = v32 + 16;
  v175 = (v32 + 32);
  v36 = _swiftEmptyArrayStorage;
  v174 = v7;
  v176 = v15;
  v177 = v10;
  v185 = v21;
  while (1)
  {
    v157 = v36;
    v153 = v35;
    if (v35 + 1 < v34)
    {
      v168 = v34;
      v37 = *v165;
      v38 = *(v32 + 72);
      v39 = *(v32 + 16);
      v40 = v150;
      object = &(*v165)[v38 * (v35 + 1)];
      v39(v150, v33);
      v182 = v37;
      v180 = v38;
      v41 = &v37[v38 * v35];
      v42 = v40;
      v43 = v151;
      v171 = v39;
      (v39)(v151, v41, v15);
      v44 = v169;
      LODWORD(v173) = sub_1004647DC(v40, v43);
      v169 = v44;
      v7 = v167;
      if (!v44)
      {
        a3 = *v178;
        (*v178)(v43, v15);
        v170 = a3;
        (a3)(v42, v15);
        v45 = (v153 + 2);
        v46 = object;
        v47 = v180;
        v48 = v182 + v180 * (v153 + 2);
        v49 = v168;
        while (v49 != v45)
        {
          v181 = v48;
          v182 = v45;
          v53 = v171;
          v171(v166);
          object = v46;
          v53(v7, v46, v15);
          v54 = v163;
          FMFLabelledLocation.label.getter();
          v55 = type metadata accessor for FMFLabel();
          v56 = *(v55 - 8);
          v57 = *(v56 + 48);
          if (v57(v54, 1, v55) == 1)
          {
            goto LABEL_150;
          }

          FMFLabel.localizedValue.getter();
          v58 = *(v56 + 8);
          v58(v54, v55);
          v59 = String.lowercased()();

          v60 = v162;
          FMFLabelledLocation.label.getter();
          if (v57(v60, 1, v55) == 1)
          {
            goto LABEL_149;
          }

          FMFLabel.localizedValue.getter();
          v58(v60, v55);
          v61 = String.lowercased()();

          v15 = v176;
          if (v59._countAndFlagsBits == v61._countAndFlagsBits && v59._object == v61._object)
          {
            v50 = 0;
          }

          else
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v21 = v185;
          v49 = v168;
          v47 = v180;
          v51 = object;

          v7 = v167;
          a3 = v178;
          v52 = v170;
          (v170)(v167, v15);
          v52(v166, v15);
          v45 = (v182 + 1);
          v48 = &v181[v47];
          v46 = &v51[v47];
          v10 = v177;
          if ((v173 ^ v50))
          {
            v49 = v182;
            break;
          }
        }

        v32 = v164;
        v62 = v154;
        v63 = v157;
        v35 = v153;
        if (v173)
        {
          if (v49 < v153)
          {
            goto LABEL_144;
          }

          if (v153 < v49)
          {
            v7 = v47 * (v49 - 1);
            v64 = v49;
            v65 = v49 * v47;
            v168 = v64;
            v66 = v153;
            v67 = v153 * v47;
            do
            {
              if (v66 != --v64)
              {
                v68 = *v165;
                if (!*v165)
                {
                  goto LABEL_152;
                }

                a3 = &v68[v67];
                v69 = *v175;
                (*v175)(v156, &v68[v67], v15, v63);
                if (v67 < v7 || a3 >= &v68[v65])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v67 != v7)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v69(&v68[v7], v156, v15);
                v32 = v164;
                v62 = v154;
                v63 = v157;
                v21 = v185;
                v47 = v180;
              }

              ++v66;
              v7 -= v47;
              v65 -= v47;
              v67 += v47;
            }

            while (v66 < v64);
            v10 = v177;
            v35 = v153;
            v49 = v168;
          }
        }

        goto LABEL_31;
      }

      v148 = *v178;
      (*v178)(v43, v15);
      v148(v42, v15);
LABEL_123:

      return;
    }

    v49 = v35 + 1;
    v62 = v154;
LABEL_31:
    v70 = v165[1];
    if (v49 >= v70)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v49, v35))
    {
      goto LABEL_141;
    }

    if (v49 - v35 >= v62)
    {
LABEL_40:
      v72 = v49;
      if (v49 < v35)
      {
        goto LABEL_140;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v35, v62))
    {
      goto LABEL_142;
    }

    if (v35 + v62 >= v70)
    {
      v71 = v165[1];
    }

    else
    {
      v71 = v35 + v62;
    }

    if (v71 < v35)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      v141 = sub_10025EFD4(v7);
      goto LABEL_112;
    }

    if (v49 == v71)
    {
      goto LABEL_40;
    }

    v120 = *v165;
    v121 = *(v32 + 72);
    v173 = *(v32 + 16);
    v122 = v120 + v121 * (v49 - 1);
    v170 = -v121;
    v171 = v120;
    v123 = (v35 - v49);
    v155 = v121;
    v124 = v120 + v49 * v121;
    v158 = v71;
LABEL_94:
    v168 = v49;
    v159 = v124;
    v160 = v123;
    v125 = v123;
    v161 = v122;
    v126 = v122;
LABEL_95:
    v181 = v124;
    v182 = v125;
    v127 = v173;
    v173(v184, v124, v15, v33);
    v180 = v126;
    v127(v21, v126, v15);
    FMFLabelledLocation.label.getter();
    v128 = type metadata accessor for FMFLabel();
    v129 = *(v128 - 8);
    v130 = *(v129 + 48);
    if (v130(v10, 1, v128) == 1)
    {
      goto LABEL_147;
    }

    FMFLabel.localizedValue.getter();
    v131 = *(v129 + 8);
    v131(v10, v128);
    v132 = String.lowercased()();
    object = v132._object;

    v133 = v174;
    FMFLabelledLocation.label.getter();
    if (v130(v133, 1, v128) == 1)
    {
      break;
    }

    FMFLabel.localizedValue.getter();
    v131(v133, v128);
    v134 = String.lowercased()();

    v15 = v176;
    if (v132._countAndFlagsBits != v134._countAndFlagsBits || object != v134._object)
    {
      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7 = v178;
      a3 = *v178;
      v21 = v185;
      (*v178)(v185, v15);
      (a3)(v184, v15);
      v10 = v177;
      if ((v135 & 1) == 0)
      {
        goto LABEL_93;
      }

      v136 = v182;
      if (!v171)
      {
        goto LABEL_148;
      }

      a3 = *v175;
      v7 = v172;
      v137 = v181;
      (*v175)(v172, v181, v15);
      v138 = v180;
      swift_arrayInitWithTakeFrontToBack();
      (a3)(v138, v7, v15);
      v126 = (v138 + v170);
      v124 = &v137[v170];
      v139 = __CFADD__(v136, 1);
      v125 = v136 + 1;
      if (v139)
      {
        goto LABEL_93;
      }

      goto LABEL_95;
    }

    v7 = v178;
    a3 = *v178;
    v21 = v185;
    (*v178)(v185, v15);
    (a3)(v184, v15);
    v10 = v177;
LABEL_93:
    v49 = v168 + 1;
    v122 = &v161[v155];
    v123 = v160 - 1;
    v124 = &v159[v155];
    v72 = v158;
    if (v168 + 1 != v158)
    {
      goto LABEL_94;
    }

    if (v158 < v153)
    {
      goto LABEL_140;
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v72;
    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v157;
    }

    else
    {
      v36 = sub_10008B8B8(0, *(v157 + 2) + 1, 1, v157);
    }

    a3 = *(v36 + 2);
    v74 = *(v36 + 3);
    v7 = a3 + 1;
    v32 = v164;
    if (a3 >= v74 >> 1)
    {
      v140 = sub_10008B8B8((v74 > 1), a3 + 1, 1, v36);
      v32 = v164;
      v36 = v140;
    }

    *(v36 + 2) = v7;
    v75 = &v36[16 * a3];
    v76 = v158;
    *(v75 + 4) = v153;
    *(v75 + 5) = v76;
    if (!*v152)
    {
      goto LABEL_154;
    }

    if (a3)
    {
      v77 = *v152;
      while (1)
      {
        a3 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v78 = *(v36 + 4);
          v79 = *(v36 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_61:
          if (v81)
          {
            goto LABEL_129;
          }

          v94 = &v36[16 * v7];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_132;
          }

          v100 = &v36[16 * a3 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_136;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              a3 = v7 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v104 = &v36[16 * v7];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_75:
        if (v99)
        {
          goto LABEL_131;
        }

        v107 = &v36[16 * a3];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_134;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_82:
        v115 = a3 - 1;
        if (a3 - 1 >= v7)
        {
          __break(1u);
LABEL_125:
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
          goto LABEL_143;
        }

        if (!*v165)
        {
          goto LABEL_151;
        }

        v116 = v36;
        v7 = *&v36[16 * v115 + 32];
        v117 = *&v36[16 * a3 + 40];
        v118 = v169;
        sub_10046BA44(&(*v165)[*(v32 + 72) * v7], &(*v165)[*(v32 + 72) * *&v36[16 * a3 + 32]], &(*v165)[*(v32 + 72) * v117], v77);
        v169 = v118;
        if (v118)
        {
          goto LABEL_123;
        }

        if (v117 < v7)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10025EFD4(v116);
        }

        if (v115 >= *(v116 + 2))
        {
          goto LABEL_126;
        }

        v119 = &v116[16 * v115];
        *(v119 + 4) = v7;
        *(v119 + 5) = v117;
        v186 = v116;
        sub_10025EF48(a3);
        v36 = v186;
        v7 = *(v186 + 2);
        v32 = v164;
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v36[16 * v7 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_127;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_128;
      }

      v89 = &v36[16 * v7];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_130;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_133;
      }

      if (v93 >= v85)
      {
        v111 = &v36[16 * a3 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_137;
        }

        if (v80 < v114)
        {
          a3 = v7 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v34 = v165[1];
    v35 = v158;
    if (v158 >= v34)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
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
}

void sub_10046AE94(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = type metadata accessor for FMFFriend();
  __chkstk_darwin(v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v129 - v12;
  __chkstk_darwin(v13);
  v155 = &v129 - v14;
  __chkstk_darwin(v15);
  v154 = &v129 - v16;
  __chkstk_darwin(v17);
  v147 = &v129 - v18;
  __chkstk_darwin(v19);
  v146 = &v129 - v20;
  __chkstk_darwin(v21);
  v134 = &v129 - v22;
  v25 = __chkstk_darwin(v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_10046C410(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10025EFD4(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_10025EF48(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 2);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_10025EFD4(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = _swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = FMFFriend.name.getter();
      v37 = v36;
      v38 = FMFFriend.name.getter();
      v132 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = FMFFriend.name.getter();
        v52 = v51;
        if (FMFFriend.name.getter() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10008B8B8(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_10008B8B8((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_10046C410(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_10025EFD4(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_10025EF48(v31);
        v29 = v156;
        v77 = *(v156 + 2);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = FMFFriend.name.getter();
    v69 = v68;
    if (FMFFriend.name.getter() == v5 && v70 == v69)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

void sub_10046BA44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v8 - 8);
  v76 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v70 - v11);
  __chkstk_darwin(v13);
  object = &v70 - v14;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  v18 = type metadata accessor for FMFLabelledLocation();
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v77 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = &v70 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v84 = &v70 - v25;
  v80 = *(v26 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a2 - a1 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_72;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v80 == -1)
  {
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
    return;
  }

  v28 = (a2 - a1) / v80;
  v90 = a1;
  v89 = a4;
  v81 = v18;
  if (v28 >= v27 / v80)
  {
    v30 = v27 / v80 * v80;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = v77;
      v32 = v12;
    }

    else
    {
      v31 = v77;
      v32 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v49 = a4 + v30;
    if (v30 >= 1)
    {
      v50 = -v80;
      v51 = v49;
      v73 = v32;
      v74 = (v79 + 16);
      v72 = (v79 + 8);
      v85 = a4;
      v86 = a1;
      v83 = -v80;
      do
      {
        v70 = v49;
        v52 = a2;
        v53 = a2 + v50;
        v87 = v53;
        v75 = v52;
        while (1)
        {
          if (v52 <= a1)
          {
            v90 = v52;
            v88 = v70;
            goto LABEL_70;
          }

          v79 = a3;
          v80 = v51;
          v71 = v49;
          v54 = (v51 + v50);
          v55 = *v74;
          v84 = v54;
          v55(v82);
          (v55)(v31, v53, v18);
          FMFLabelledLocation.label.getter();
          v56 = type metadata accessor for FMFLabel();
          v57 = *(v56 - 8);
          v58 = *(v57 + 48);
          if (v58(v32, 1, v56) == 1)
          {
            goto LABEL_76;
          }

          FMFLabel.localizedValue.getter();
          v59 = *(v57 + 8);
          v59(v32, v56);
          v60 = String.lowercased()();
          object = v60._object;

          v61 = v76;
          FMFLabelledLocation.label.getter();
          if (v58(v61, 1, v56) == 1)
          {
            goto LABEL_77;
          }

          FMFLabel.localizedValue.getter();
          v59(v61, v56);
          v62 = String.lowercased()();

          a1 = v86;
          v18 = v81;
          if (v60._countAndFlagsBits == v62._countAndFlagsBits && object == v62._object)
          {
            v63 = 0;
          }

          else
          {
            v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v64 = v85;
          v65 = v83;

          v66 = v79;
          v67 = v79 + v65;
          v68 = *v72;
          v31 = v77;
          (*v72)(v77, v18);
          v68(v82, v18);
          if (v63)
          {
            break;
          }

          v49 = v84;
          a3 = v67;
          if (v66 < v80 || v67 >= v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            v50 = v83;
            v32 = v73;
            v53 = v87;
          }

          else
          {
            v69 = v66 == v80;
            v50 = v83;
            v32 = v73;
            v53 = v87;
            if (!v69)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = v49;
          v52 = v75;
          if (v84 <= v64)
          {
            a2 = v75;
            goto LABEL_69;
          }
        }

        a3 = v67;
        if (v66 < v75 || v67 >= v75)
        {
          a2 = v87;
          swift_arrayInitWithTakeFrontToBack();
          v49 = v71;
          v50 = v83;
          v32 = v73;
        }

        else
        {
          v69 = v66 == v75;
          v49 = v71;
          v50 = v83;
          v32 = v73;
          a2 = v87;
          if (!v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v51 = v80;
      }

      while (v80 > v64);
    }

LABEL_69:
    v90 = a2;
    v88 = v49;
  }

  else
  {
    v29 = v28 * v80;
    v83 = v24;
    if (a4 < a1 || a1 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v77 = (a4 + v29);
    v88 = a4 + v29;
    if (v29 >= 1 && a2 < a3)
    {
      v34 = *(v79 + 16);
      v75 = a3;
      v76 = v34;
      v79 += 16;
      v73 = (v79 - 8);
      v74 = v17;
      do
      {
        v86 = a1;
        v87 = a2;
        v35 = v76;
        (v76)(v84, a2, v18);
        v85 = a4;
        v35(v83, a4, v18);
        FMFLabelledLocation.label.getter();
        v36 = type metadata accessor for FMFLabel();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (v38(v17, 1, v36) == 1)
        {
          goto LABEL_74;
        }

        FMFLabel.localizedValue.getter();
        v39 = *(v37 + 8);
        v39(v17, v36);
        v40 = String.lowercased()();
        v82 = v40._object;

        v41 = object;
        FMFLabelledLocation.label.getter();
        if (v38(v41, 1, v36) == 1)
        {
          goto LABEL_75;
        }

        FMFLabel.localizedValue.getter();
        v39(v41, v36);
        v42 = String.lowercased()();

        v43 = v80;
        v18 = v81;
        if (v40._countAndFlagsBits == v42._countAndFlagsBits && v82 == v42._object)
        {

          v44 = *v73;
          (*v73)(v83, v18);
          v44(v84, v18);
          v45 = v86;
          a2 = v87;
          a4 = v85;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v47 = *v73;
          (*v73)(v83, v18);
          v47(v84, v18);
          v45 = v86;
          a2 = v87;
          a4 = v85;
          if (v46)
          {
            v17 = v74;
            v48 = v75;
            if (v86 < v87 || v86 >= v87 + v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v86 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v43;
            goto LABEL_39;
          }
        }

        v17 = v74;
        v48 = v75;
        if (v45 < a4 || v45 >= a4 + v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v45 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v89 = a4 + v43;
        a4 += v43;
LABEL_39:
        a1 = v45 + v43;
        v90 = a1;
      }

      while (a4 < v77 && a2 < v48);
    }
  }

LABEL_70:
  sub_10025F1B0(&v90, &v89, &v88);
}

void sub_10046C410(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = type metadata accessor for FMFFriend();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v11;
  __chkstk_darwin(v12);
  v69 = &v58 - v13;
  __chkstk_darwin(v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = FMFFriend.name.getter();
            v51 = v50;
            if (FMFFriend.name.getter() == v49 && v52 == v51)
            {
              v53 = 0;
            }

            else
            {
              v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = FMFFriend.name.getter();
        v31 = v30;
        if (FMFFriend.name.getter() == v29 && v32 == v31)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_10025F1C8(&v73, &v72, &v71);
}

uint64_t sub_10046CAAC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator) = 0;
  v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
  v3 = type metadata accessor for FMFLocation();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation) = 0;
  v4 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
  v5 = type metadata accessor for FMFAddress();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
  v7 = type metadata accessor for FMFLocationAlertAddressType();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
  v10 = type metadata accessor for FMFLabel();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
  v13 = type metadata accessor for FMFFriend();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription) = 0;
  *&v37[8] = &type metadata for SolariumFeatureFlag;
  *&v37[16] = sub_10000BD04();
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  if (v12)
  {
    if (qword_1006AED50 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_1006D4BA0;
  }

  else
  {
    if (qword_1006AED48 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_1006D4B40;
  }

  v16 = v15[5];
  v39 = v15[4];
  v40 = v16;
  v17 = v15[3];
  *&v37[16] = v15[2];
  v38 = v17;
  v18 = v15[1];
  v36 = *v15;
  *v37 = v18;
  v33 = v39;
  v34 = v40;
  v19 = *(&v38 + 1);
  v21 = *&v37[24];
  v20 = v38;
  v32 = *&v37[8];
  v22 = v18;
  v23 = *(&v36 + 1);
  v24 = v36;
  sub_1000BBDE8(&v36, v35);
  v25 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style;
  *v25 = v24;
  *(v25 + 8) = v23;
  *(v25 + 16) = v22;
  *(v25 + 24) = v32;
  *(v25 + 40) = v21;
  *(v25 + 48) = v20;
  *(v25 + 56) = v19;
  *(v25 + 64) = v33;
  *(v25 + 80) = v34;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton) = 0;
  v26 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
  *(v1 + v26) = [objc_allocWithZone(UIStackView) init];
  v27 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_locationRadiusTitleLabel;
  *(v1 + v27) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation) = 0;
  v28 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults) = 0;
  v8(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType, 1, 1, v7);
  v29 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery);
  *v29 = 0;
  v29[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView) = 0;
  v30 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_contactsDataController;
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();
  *(v1 + v30) = FMFContactsDataController.init(isSnapshotMode:)();
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10046CF90(void *a1)
{
  v11 = State.rawValue.getter;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10045B250;
  v10 = &unk_100640410;
  v3 = _Block_copy(&v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v11 = sub_10046D864;
  v12 = v4;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10045B250;
  v10 = &unk_100640460;
  v5 = _Block_copy(&v7);
  v6 = v1;

  [a1 animateAlongsideTransition:v3 completion:v5];
  _Block_release(v5);
  _Block_release(v3);
}

uint64_t sub_10046D110(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_10046D160()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView;
  v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView] = 1;
  v2 = [v0 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
    v4 = [v3 searchBar];

    [v4 resignFirstResponder];
  }

  v0[v1] = 0;
}

void *sub_10046D208()
{
  v1 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = type metadata accessor for FMFLocationAlertAddressType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = v6;
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v46 - v8;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
  v9 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery + 8];

  v11 = [v0 navigationItem];
  v12 = [v11 searchController];

  if (v12 && (v13 = [v12 searchBar], v12, v14 = objc_msgSend(v13, "text"), v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!v9)
    {
LABEL_4:

LABEL_11:
      (*(v5 + 104))(v52, enum case for FMFLocationAlertAddressType.custom(_:), v4);
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  if (v10 == v15 && v9 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType;
  swift_beginAccess();
  sub_100007204(&v0[v20], v3, &qword_1006B00C8, &qword_10055C900);
  v21 = *(v5 + 48);
  if (v21(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v52, enum case for FMFLocationAlertAddressType.custom(_:), v4);
    if (v21(v3, 1, v4) != 1)
    {
      sub_100012DF0(v3, &qword_1006B00C8, &qword_10055C900);
    }
  }

  else
  {
    (*(v5 + 32))(v52, v3, v4);
  }

LABEL_17:
  v22 = [v0 navigationItem];
  v23 = [v22 searchController];

  if (v23 && (v24 = [v23 searchBar], v23, v25 = objc_msgSend(v24, "text"), v24, v25))
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  result = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  if (result)
  {
    [result removeHandle:1];
    v30 = v0;
    sub_100466954();
    v31 = [objc_allocWithZone(MKLocalSearchRequest) init];
    v32 = String._bridgeToObjectiveC()();
    [v31 setNaturalLanguageQuery:v32];

    result = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
    v48 = v26;
    v49 = v28;
    if (result)
    {
      [result region];
      [v31 setRegion:?];
      v47 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v31];
      v33 = [objc_opt_self() sharedApplication];
      [v33 setNetworkActivityIndicatorVisible:1];

      v34 = v51;
      v35 = v52;
      (*(v5 + 16))(v51, v52, v4);
      v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v37 = v36 + v50;
      v38 = v4;
      v39 = (v36 + v50) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v30;
      (*(v5 + 32))(v40 + v36, v34, v38);
      *(v40 + v37) = 0;
      v41 = v40 + v39;
      v42 = v49;
      *(v41 + 8) = v48;
      *(v41 + 16) = v42;
      aBlock[4] = sub_1002789D8;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10012105C;
      aBlock[3] = &unk_1006403E8;
      v43 = _Block_copy(aBlock);
      v44 = v30;

      v45 = v47;
      [v47 startWithCompletionHandler:v43];
      _Block_release(v43);

      return (*(v5 + 8))(v35, v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10046D86C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (result)
  {
    return [result addHandleForAnnotation:*(v0 + 24)];
  }

  __break(1u);
  return result;
}

id sub_10046D8E4(double a1)
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v3 = [v1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  result = 0;
  if (v3)
  {
    v5 = a1 / 100.0;
    if (a1 / 100.0 + v13 <= 1.0)
    {
      v6 = a1 / 100.0 + v13;
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 + v12 <= 1.0)
    {
      v7 = v5 + v12;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v5 + v11;
    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    return [objc_allocWithZone(UIColor) initWithRed:v6 green:v7 blue:v9 alpha:v10];
  }

  return result;
}

uint64_t sub_10046D9DC()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_10046DA90()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10046DB30(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10046DBB8(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double sub_10046DC54(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(a1, a2, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_10046DCEC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, a2, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_10046DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(a1, a2, a3, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10046DE94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046DEDC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10046DFD0()
{
  v1 = sub_10003BF30();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528C0;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton);
  *(inited + 32) = v3;
  v4 = v3;
  sub_10049476C(inited);
  return v1;
}

void *sub_10046E08C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton;
  v4 = type metadata accessor for FMEmptyListButton();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v7 = objc_opt_self();
  *&v5[v6] = [v7 systemBlueColor];
  v5[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v2 + v3) = sub_100038758([v7 tertiarySystemFillColor], 1, 1, 0);
  *(v2 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = 0;
  v8 = OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton;
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v9[v10] = [v7 systemBlueColor];
  v9[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v2 + v8) = sub_100038758([v7 tertiarySystemFillColor], 1, 1, 0);
  *(v2 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage) = 0;
  v11 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  type metadata accessor for FMMultilineButton();
  *(v2 + v11) = [swift_getObjCClassFromMetadata() buttonWithType:1];

  v13 = sub_1000383D8(v12);
  sub_10046EE64();

  return v13;
}

void sub_10046E28C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton);
}

id sub_10046E31C()
{
  sub_10046F214();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10046E438()
{
  v1 = v0;
  sub_10003A898();
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v80._object = 0x8000000100579A00;
  v5._object = 0xED0000454C544954;
  v6.value._object = 0x80000001005799E0;
  v80._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0x5F4D4554495F4F4ELL;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v80);

  v8 = String._bridgeToObjectiveC()();

  [v2 setText:v8];

  v9 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v79 = v3;
  v10 = [v3 mainBundle];
  v81._object = 0x8000000100579A00;
  v11._object = 0xEF4547415353454DLL;
  v12.value._object = 0x80000001005799E0;
  v81._countAndFlagsBits = 0xD000000000000018;
  v11._countAndFlagsBits = 0x5F4D4554495F4F4ELL;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v81);

  v14 = String._bridgeToObjectiveC()();

  [v9 setText:v14];

  v15 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  [*(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton) setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *(v1 + v15);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setTitleColor:v19 forState:0];

  v20 = [*(v1 + v15) titleLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v21 setFont:v22];
  }

  v23 = [*(v1 + v15) titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setAdjustsFontForContentSizeCategory:1];
  }

  v25 = [*(v1 + v15) titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setLineBreakMode:0];
  }

  v27 = [*(v1 + v15) titleLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setTextAlignment:1];
  }

  v29 = *(v1 + v15);
  v30 = [v3 mainBundle];
  v82._object = 0x8000000100579A00;
  v31._countAndFlagsBits = 0xD000000000000019;
  v31._object = 0x800000010059A910;
  v32.value._object = 0x80000001005799E0;
  v82._countAndFlagsBits = 0xD000000000000018;
  v32.value._countAndFlagsBits = 0xD000000000000013;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v82);

  v34 = String._bridgeToObjectiveC()();

  [v29 setTitle:v34 forState:0];

  [*(v1 + v15) addTarget:v1 action:"handleLearnMoreButton" forControlEvents:64];
  [*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView) addArrangedSubview:*(v1 + v15)];
  v35 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView);
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v40 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000, v36, v37, v38, v39, v78);
  [v35 setImage:v40];

  v41 = *(*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v42 = [v3 mainBundle];
  v83._object = 0x8000000100579A00;
  v43._countAndFlagsBits = 0xD000000000000014;
  v43._object = 0x8000000100584560;
  v44.value._object = 0x80000001005799E0;
  v83._countAndFlagsBits = 0xD000000000000018;
  v44.value._countAndFlagsBits = 0xD000000000000013;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v83);

  v46 = String._bridgeToObjectiveC()();

  [v41 setText:v46];

  v47 = *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton);
  v48 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v49 = *(v47 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v50 = [v49 font];
  if (v50)
  {
    v51 = v50;
    sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightRegular;
    v53 = UIFontWeightTrait;
    v54 = sub_10002AB84(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
    v55 = sub_10002ACDC(v54);

    [v49 setFont:v55];

    v56 = *(v47 + v48);
    v57 = [v3 mainBundle];
    v84._object = 0x8000000100579A00;
    v58._countAndFlagsBits = 0xD000000000000019;
    v58._object = 0x8000000100584580;
    v59.value._object = 0x80000001005799E0;
    v84._countAndFlagsBits = 0xD000000000000018;
    v59.value._countAndFlagsBits = 0xD000000000000013;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v84);

    v61 = String._bridgeToObjectiveC()();

    [v56 setText:v61];

    v62 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView);
    [v62 addArrangedSubview:v47];
    v63 = *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton);
    v64 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
    v65 = *(v63 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v66 = [v65 font];
    if (v66)
    {
      v67 = v66;
      v68 = swift_initStackObject();
      *(v68 + 16) = xmmword_100552220;
      *(v68 + 32) = v53;
      v69 = v68 + 32;
      *(v68 + 40) = UIFontWeightRegular;
      v70 = sub_10002AB84(v68);
      swift_setDeallocating();
      sub_100012DF0(v69, &qword_1006B47A0, &qword_100552690);
      v71 = sub_10002ACDC(v70);

      [v65 setFont:v71];

      v72 = *(v63 + v64);
      v73 = [v79 mainBundle];
      v85._object = 0x8000000100579A00;
      v74._countAndFlagsBits = 0xD00000000000001DLL;
      v74._object = 0x80000001005845C0;
      v75.value._object = 0x80000001005799E0;
      v85._countAndFlagsBits = 0xD000000000000018;
      v75.value._countAndFlagsBits = 0xD000000000000013;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v85);

      v77 = String._bridgeToObjectiveC()();

      [v72 setText:v77];

      [v62 addArrangedSubview:v63];
      sub_10046F36C(0, 1.0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10046ED14()
{
  sub_10003B068();
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton) heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.0];

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight);
  *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setActive:1];
  }

  v5 = [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton) heightAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight);
  *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setActive:1];
  }
}

double sub_10046EE64()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24);
  type metadata accessor for FMDevicesSubscription(0);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100640578;
  swift_unknownObjectWeakAssign();
  v4 = *(v2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = v3;

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  v6 = qword_1006D4E20;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10047068C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10046DEDC;
  aBlock[3] = &unk_100640730;
  v8 = _Block_copy(aBlock);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = v9;
  swift_unknownObjectRelease();
  return result;
}

void sub_10046F0A0(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v10), (v5 & 1) == 0))
  {

    sub_10004CDB8(v10);
LABEL_11:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v11);
  sub_10004CDB8(v10);

  if (!*(&v12 + 1))
  {
LABEL_12:
    sub_100012DF0(&v11, &unk_1006B8740, &unk_100552DA0);
    return;
  }

  if (swift_dynamicCast())
  {
    v6 = *v10;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_10046F36C(1, v6);
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      *&v9[OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage] = v6;
    }
  }
}

void sub_10046F214()
{
  v1 = OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription;
  if (*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription))
  {
    v2 = *(*(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24) + 16);

    os_unfair_lock_lock((v2 + 24));
    sub_10008FB6C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));

    *(v0 + v1) = 0;

    v3 = [objc_opt_self() defaultCenter];
    v4 = v3;
    if (qword_1006AEDB8 != -1)
    {
      swift_once();
      v3 = v4;
    }

    [v3 removeObserver:v0 name:qword_1006D4E20 object:{0, v4}];
  }
}

void sub_10046F36C(char a1, double a2)
{
  v3 = v2;
  v21 = &type metadata for SolariumFeatureFlag;
  v6 = sub_10000BD04();
  v22 = v6;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v20);
  if (v7)
  {
    if (a2 >= 0.5)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else if (a2 >= 0.64)
  {
    goto LABEL_3;
  }

  v9 = sub_1000E4BAC();

  v10 = v9[2];

  v8 = v10 != 0;
LABEL_6:
  v21 = &type metadata for SolariumFeatureFlag;
  v22 = v6;
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v20);
  if (v11)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 0.64;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12 > a2;
  *&v3[OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage] = a2;
  if (a1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    v16[2] = sub_10047062C;
    v16[3] = v13;
    v16[4] = sub_10047065C;
    v16[5] = v14;
    v22 = sub_1001AB704;
    v23 = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100004AE4;
    v21 = &unk_1006406E0;
    v17 = _Block_copy(v20);
    v18 = v3;

    [v15 animateWithDuration:0x20000 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:0.4];
    _Block_release(v17);
  }

  else
  {
    v19 = v3;
    sub_1001AAA10(v19, v8, &OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton, &OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight);
    sub_1001AAA10(v19, v12 > a2, &OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton, &OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight);
  }
}

void sub_10046F63C()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) addGestureRecognizer:v1];

  v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleSecondaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton) addGestureRecognizer:v2];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTertiaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton) addGestureRecognizer:v3];
}

uint64_t sub_10046F750()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMNoItemView: action tapped", v11, 2u);
  }

  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v13, v4);
  swift_beginAccess();

  sub_100058530(v7, v12 + v13);
  swift_endAccess();
  sub_100058594(v4);

  sub_10005D4E4(v4);
  return sub_10005D4E4(v7);
}

uint64_t sub_10046FA00(const char *a1, char a2)
{
  v5 = v2;
  v6 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  v16 = *(*(v5 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v16 + v17, v8);
  swift_beginAccess();

  sub_100058530(v11, v16 + v17);
  swift_endAccess();
  sub_100058594(v8);

  sub_10005D4E4(v8);
  return sub_10005D4E4(v11);
}

uint64_t sub_10046FC58()
{
  v0 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMNoItemView: Learn more button tapped", v10, 2u);
  }

  sub_10046FFA4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100012DF0(v2, &unk_1006B0120, &qword_100552B60);
  }

  (*(v4 + 32))(v6, v2, v3);
  v12 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  sub_10015391C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10000A660(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey, &unk_100551F4C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 openURL:v15 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10046FFA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = FMIPNoItemsKBArticleLink.getter();
    v12 = sub_100005B4C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMNoItemView: getLearnMoreActionURL from %s", v8, 0xCu);
    sub_100006060(v9);
  }

  FMIPNoItemsKBArticleLink.getter();
  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_100012DF0(v4, &unk_1006B0120, &qword_100552B60);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v4, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v13);
}

uint64_t sub_100470214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v13;
    v18 = v9;
    v19 = v6;
    v20 = v11;
    v21 = v7;
    v22 = v4;
    v23 = v10;
    v24 = v17;
    *v17 = 134217984;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "FMNoItemView: devicesProvider didUpdate unknownItems %ld", v24, 0xCu);
    v10 = v23;
    v4 = v22;
    v7 = v21;
    v11 = v20;
    v6 = v19;
    v9 = v18;
    v13 = v31;
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  aBlock[4] = sub_1004705F8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640640;
  v27 = _Block_copy(aBlock);
  v28 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A660(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_100470694()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton;
  v3 = type metadata accessor for FMEmptyListButton();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v6 = objc_opt_self();
  *&v4[v5] = [v6 systemBlueColor];
  v4[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v2) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = 0;
  v7 = OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton;
  v8 = objc_allocWithZone(v3);
  v9 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v8[v9] = [v6 systemBlueColor];
  v8[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v7) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage) = 0;
  v10 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  type metadata accessor for FMMultilineButton();
  *(v1 + v10) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100470874(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = type metadata accessor for FMFPreferences();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100470EB4();
  v18 = 0;
  if (result <= 7u)
  {
    switch(result)
    {
      case 5u:
        if ((*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode) & 1) == 0)
        {
          goto LABEL_25;
        }

        break;
      case 6u:
        if (*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode) == 1)
        {
LABEL_25:

          v18 = 0;
          v26 = 1;
LABEL_31:
          [a1 setState:v26];
          return [a1 setAttributes:v18];
        }

        break;
      case 7u:
        v23 = *(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1);
        sub_100470FF0(v23);
        goto LABEL_29;
      default:
        return [a1 setAttributes:v18];
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_29:
    v18 = 0;
LABEL_30:
    v26 = v23 & 1;
    goto LABEL_31;
  }

  if (result > 9u)
  {
    if (result != 10)
    {
      if (result == 11)
      {
        return result;
      }

      return [a1 setAttributes:v18];
    }

    v32 = &type metadata for SolariumFeatureFlag;
    v33 = sub_10000BD04();
    v25 = isFeatureEnabled(_:)();
    sub_100006060(v31);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    dispatch thunk of FMFManager.preferences.getter();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100012DF0(v12, &qword_1006AF750, &qword_100552340);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      if ((FMFPreferences.hideLocation.getter() & 1) == 0)
      {
        v29 = String._bridgeToObjectiveC()();
        v30 = [objc_opt_self() systemImageNamed:v29];

        [a1 setImage:v30];
        (*(v14 + 8))(v16, v13);
        v18 = 0;
        return [a1 setAttributes:v18];
      }

      (*(v14 + 8))(v16, v13);
    }

    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() systemImageNamed:v27];

    [a1 setImage:v28];
    v18 = 0;
    return [a1 setAttributes:v18];
  }

  if (result == 8)
  {
    v23 = *(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2);
    sub_100470FF0(v23);
    if (*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode))
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v24 & 1;
    }

    else
    {

      v18 = 1;
    }

    goto LABEL_30;
  }

  if (result == 9)
  {
    v19 = *(v2 + 16);
    if (*(*(v19 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1)
    {
      v18 = 1;
      return [a1 setAttributes:v18];
    }

    v20 = *(v19 + 56);
    v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v20 + v21, v9);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v20) = sub_10005F7D0(v9, v6);
    sub_10005D4E4(v6);
    sub_10005D4E4(v9);
    if ((v20 & 1) == 0)
    {
      v32 = &type metadata for SolariumFeatureFlag;
      v33 = sub_10000BD04();
      v22 = isFeatureEnabled(_:)();
      sub_100006060(v31);
      v18 = ~v22 & 1;
      return [a1 setAttributes:v18];
    }

LABEL_24:
    v18 = 0;
  }

  return [a1 setAttributes:v18];
}

unint64_t sub_100470EB4()
{
  if ([v0 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_100012DF0(v10, &unk_1006B8740, &unk_100552DA0);
    return 11;
  }

  sub_10007EBC0(&unk_1006BC940, &qword_10055E3F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 11;
  }

  if (!*(v7 + 16) || (v1 = sub_10000726C(0xD000000000000014, 0x800000010059A990), (v2 & 1) == 0))
  {

    return 11;
  }

  v3 = (*(v7 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  v11._countAndFlagsBits = v4;
  v11._object = v5;
  result = sub_100472A30(v11);
  if (result == 11)
  {
    return 11;
  }

  return result;
}

double sub_100470FF0(char a1)
{
  if (a1 != 2)
  {
    if ([v1 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (!*(&v12 + 1))
    {
      sub_100012DF0(v13, &unk_1006B8740, &unk_100552DA0);
      return result;
    }

    sub_10007EBC0(&qword_1006BC910, &qword_10055E3E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return result;
    }

    if (a1)
    {
      if (*(v10 + 16))
      {
        v4 = sub_10000726C(0xD00000000000001CLL, 0x800000010059A9D0);
        if (v5)
        {
          sub_100006004(*(v10 + 56) + 32 * v4, v13);
          if (swift_dynamicCast())
          {
            v6 = String._bridgeToObjectiveC()();

            [v1 setTitle:v6];

            return result;
          }
        }
      }

      goto LABEL_17;
    }

    if (!*(v10 + 16) || (v7 = sub_10000726C(0xD00000000000001BLL, 0x800000010059A9B0), (v8 & 1) == 0))
    {
LABEL_17:

      return result;
    }

    sub_100006004(*(v10 + 56) + 32 * v7, v13);

    if (swift_dynamicCast())
    {
      v9 = String._bridgeToObjectiveC()();

      [v1 setTitle:v9];
    }
  }

  return result;
}

void sub_10047121C(uint64_t a1)
{
  v3 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v3);
  v5 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v193 - v7;
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_100470EB4();
    if (v9 <= 5)
    {
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v10 = *(v1 + 32);
              ObjectType = swift_getObjectType();
              swift_storeEnumTagMultiPayload();
              (*(v10 + 8))(v8, ObjectType, v10);
              swift_unknownObjectRelease();
              sub_10005D4E4(v8);
            }

            v12 = *(*(v1 + 16) + 56);
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v119 = *(v1 + 32);
              v120 = swift_getObjectType();
              swift_storeEnumTagMultiPayload();
              (*(v119 + 8))(v8, v120, v119);
              swift_unknownObjectRelease();
              sub_10005D4E4(v8);
            }

            v12 = *(*(v1 + 16) + 56);
          }
        }

        else
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v66 = *(v1 + 32);
            v67 = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            (*(v66 + 8))(v8, v67, v66);
            swift_unknownObjectRelease();
            sub_10005D4E4(v8);
          }

          v12 = *(*(v1 + 16) + 56);
        }

        goto LABEL_125;
      }

      if (v9 != 3)
      {
        if (v9 != 4)
        {
          v193 = a1;
          v158 = *(*(v1 + 16) + 56);
          v159 = objc_opt_self();

          v160 = [v159 standardUserDefaults];
          v161 = sub_10023245C(0);

          v162 = (v158 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          *v162 = v161 & 1;
          v162[1] = BYTE1(v161) & 1;
          v162[2] = BYTE2(v161) & 1;
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v163 = type metadata accessor for Logger();
          sub_100005B14(v163, qword_1006D4630);

          v164 = Logger.logObject.getter();
          v165 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v164, v165))
          {
            v166 = v158;
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v195 = v168;
            *v167 = 136315138;
            if (v162[2])
            {
              v169 = 0x10000;
            }

            else
            {
              v169 = 0;
            }

            if (v162[1])
            {
              v170 = 256;
            }

            else
            {
              v170 = 0;
            }

            v171 = sub_1002318A0(v170 | *v162 | v169);
            v173 = sub_100005B4C(v171, v172, &v195);

            *(v167 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v164, v165, "FMSelectionController: map configuration updated %s", v167, 0xCu);
            sub_100006060(v168);

            v158 = v166;
          }

          v174 = *v162;
          v175 = v162[1];
          v176 = v162[2];
          v177 = [v159 standardUserDefaults];
          My = type metadata accessor for Feature.FindMy();
          v197 = My;
          v198 = sub_1000069D8();
          v179 = sub_100008FC0(&v195);
          (*(*(My - 8) + 104))(v179, enum case for Feature.FindMy.springfieldIntegration(_:), My);
          v180 = isFeatureEnabled(_:)();
          sub_100006060(&v195);
          if (v176)
          {
            v181 = 0x10000;
          }

          else
          {
            v181 = 0;
          }

          if (v175)
          {
            v182 = 256;
          }

          else
          {
            v182 = 0;
          }

          sub_100231DAC(v177, v180 & 1, v182 | v174 | v181);

          swift_beginAccess();
          v183 = *(v158 + 16);
          if (v183 >> 62)
          {
            v184 = _CocoaArrayWrapper.endIndex.getter();
            if (!v184)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v184)
            {
              goto LABEL_206;
            }
          }

          if (v184 >= 1)
          {
            v185 = v158;

            for (i = 0; i != v184; ++i)
            {
              if ((v183 & 0xC000000000000001) != 0)
              {
                v191 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v191 = *(v183 + 8 * i + 32);
              }

              v192 = v191 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v187 = *(v192 + 8);
                v188 = swift_getObjectType();
                if (v162[2])
                {
                  v189 = 0x10000;
                }

                else
                {
                  v189 = 0;
                }

                if (v162[1])
                {
                  v190 = 256;
                }

                else
                {
                  v190 = 0;
                }

                (*(v187 + 16))(v185, v190 | *v162 | v189, v188, v187);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

          goto LABEL_212;
        }

        v48 = *(*(v1 + 16) + 56);
        v49 = OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor;
        *(v48 + OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor) = 1;
        v50 = qword_1006AEBE0;

        if (v50 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100005B14(v51, qword_1006D4630);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v199[0] = v55;
          *v54 = 136315138;
          v195 = 0;
          v196 = 0xE000000000000000;
          v194 = *(v48 + v49);
          _print_unlocked<A, B>(_:_:)();
          v56 = sub_100005B4C(v195, v196, v199);

          *(v54 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v52, v53, "FMSelectionController: mapZoomFactor %s", v54, 0xCu);
          sub_100006060(v55);
        }

        swift_beginAccess();
        v57 = *(v48 + 16);
        if (v57 >> 62)
        {
          v58 = _CocoaArrayWrapper.endIndex.getter();
          if (v58)
          {
LABEL_53:
            v193 = a1;
            if (v58 >= 1)
            {

              for (j = 0; j != v58; ++j)
              {
                if ((v57 & 0xC000000000000001) != 0)
                {
                  v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v62 = *(v57 + 8 * j + 32);
                }

                v63 = v62 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v60 = *(v63 + 8);
                  v61 = swift_getObjectType();
                  (*(v60 + 32))(v48, *(v48 + v49), v61, v60);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

LABEL_194:

              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_210;
          }
        }

        else
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v58)
          {
            goto LABEL_53;
          }
        }

LABEL_206:

        swift_unknownObjectRelease();
        return;
      }

      v103 = *(*(v1 + 16) + 56);
      v104 = OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor;
      *(v103 + OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor) = 0;
      v105 = qword_1006AEBE0;

      if (v105 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_100005B14(v106, qword_1006D4630);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v199[0] = v110;
        *v109 = 136315138;
        v195 = 0;
        v196 = 0xE000000000000000;
        v194 = *(v103 + v104);
        _print_unlocked<A, B>(_:_:)();
        v111 = sub_100005B4C(v195, v196, v199);

        *(v109 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v107, v108, "FMSelectionController: mapZoomFactor %s", v109, 0xCu);
        sub_100006060(v110);
      }

      swift_beginAccess();
      v112 = *(v103 + 16);
      if (v112 >> 62)
      {
        v113 = _CocoaArrayWrapper.endIndex.getter();
        if (!v113)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v113)
        {
          goto LABEL_206;
        }
      }

      v193 = a1;
      if (v113 >= 1)
      {

        for (k = 0; k != v113; ++k)
        {
          if ((v112 & 0xC000000000000001) != 0)
          {
            v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v117 = *(v112 + 8 * k + 32);
          }

          v118 = v117 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v115 = *(v118 + 8);
            v116 = swift_getObjectType();
            (*(v115 + 32))(v103, *(v103 + v104), v116, v115);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      goto LABEL_208;
    }

    if (v9 <= 8)
    {
      if (v9 != 6)
      {
        if (v9 != 7)
        {
          v122 = *(*(v1 + 16) + 56);
          v123 = (v122 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          v124 = *(v122 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1);
          v125 = *(v122 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2);
          v126 = v124 & (v125 ^ 1);
          if (*(v122 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode))
          {
            v125 ^= 1u;
            v124 = v126;
          }

          *v123 = *(v122 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          v123[1] = v124 & 1;
          v123[2] = v125 & 1;
          v127 = qword_1006AEBE0;

          if (v127 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_100005B14(v128, qword_1006D4630);

          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = v122;
            v133 = swift_slowAlloc();
            v195 = v133;
            *v131 = 136315138;
            if (v123[2])
            {
              v134 = 0x10000;
            }

            else
            {
              v134 = 0;
            }

            if (v123[1])
            {
              v135 = 256;
            }

            else
            {
              v135 = 0;
            }

            v136 = sub_1002318A0(v135 | *v123 | v134);
            v138 = sub_100005B4C(v136, v137, &v195);

            *(v131 + 4) = v138;
            _os_log_impl(&_mh_execute_header, v129, v130, "FMSelectionController: map configuration updated %s", v131, 0xCu);
            sub_100006060(v133);
            v122 = v132;
          }

          v139 = *v123;
          v140 = v123[1];
          v141 = v123[2];
          v142 = [objc_opt_self() standardUserDefaults];
          v143 = type metadata accessor for Feature.FindMy();
          v197 = v143;
          v198 = sub_1000069D8();
          v144 = sub_100008FC0(&v195);
          (*(*(v143 - 8) + 104))(v144, enum case for Feature.FindMy.springfieldIntegration(_:), v143);
          v145 = isFeatureEnabled(_:)();
          sub_100006060(&v195);
          if (v141)
          {
            v146 = 0x10000;
          }

          else
          {
            v146 = 0;
          }

          if (v140)
          {
            v147 = 256;
          }

          else
          {
            v147 = 0;
          }

          sub_100231DAC(v142, v145 & 1, v147 | v139 | v146);

          swift_beginAccess();
          v148 = *(v122 + 16);
          if (v148 >> 62)
          {
            v149 = _CocoaArrayWrapper.endIndex.getter();
            if (!v149)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v149 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v149)
            {
              goto LABEL_206;
            }
          }

          v193 = a1;
          if (v149 >= 1)
          {
            v150 = v122;

            for (m = 0; m != v149; ++m)
            {
              if ((v148 & 0xC000000000000001) != 0)
              {
                v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v156 = *(v148 + 8 * m + 32);
              }

              v157 = v156 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v152 = *(v157 + 8);
                v153 = swift_getObjectType();
                if (v123[2])
                {
                  v154 = 0x10000;
                }

                else
                {
                  v154 = 0;
                }

                if (v123[1])
                {
                  v155 = 256;
                }

                else
                {
                  v155 = 0;
                }

                (*(v152 + 16))(v150, v155 | *v123 | v154, v153, v152);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

          goto LABEL_211;
        }

        v13 = *(*(v1 + 16) + 56);
        v14 = (v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
        v15 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1) ^ 1;
        v16 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2) | v15;
        *v14 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
        v14[1] = v15 & 1;
        v14[2] = v16 & 1;
        v17 = qword_1006AEBE0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_100005B14(v18, qword_1006D4630);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = v13;
          v23 = swift_slowAlloc();
          v195 = v23;
          *v21 = 136315138;
          if (v14[2])
          {
            v24 = 0x10000;
          }

          else
          {
            v24 = 0;
          }

          if (v14[1])
          {
            v25 = 256;
          }

          else
          {
            v25 = 0;
          }

          v26 = sub_1002318A0(v25 | *v14 | v24);
          v28 = sub_100005B4C(v26, v27, &v195);

          *(v21 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v19, v20, "FMSelectionController: map configuration updated %s", v21, 0xCu);
          sub_100006060(v23);
          v13 = v22;
        }

        v29 = *v14;
        v30 = v14[1];
        v31 = v14[2];
        v32 = [objc_opt_self() standardUserDefaults];
        v33 = type metadata accessor for Feature.FindMy();
        v197 = v33;
        v198 = sub_1000069D8();
        v34 = sub_100008FC0(&v195);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.FindMy.springfieldIntegration(_:), v33);
        v35 = isFeatureEnabled(_:)();
        sub_100006060(&v195);
        if (v31)
        {
          v36 = 0x10000;
        }

        else
        {
          v36 = 0;
        }

        if (v30)
        {
          v37 = 256;
        }

        else
        {
          v37 = 0;
        }

        sub_100231DAC(v32, v35 & 1, v37 | v29 | v36);

        swift_beginAccess();
        v38 = *(v13 + 16);
        if (v38 >> 62)
        {
          v39 = _CocoaArrayWrapper.endIndex.getter();
          if (!v39)
          {
            goto LABEL_206;
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v39)
          {
            goto LABEL_206;
          }
        }

        v193 = a1;
        if (v39 >= 1)
        {
          v40 = v13;

          for (n = 0; n != v39; ++n)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v46 = *(v38 + 8 * n + 32);
            }

            v47 = v46 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v42 = *(v47 + 8);
              v43 = swift_getObjectType();
              if (v14[2])
              {
                v44 = 0x10000;
              }

              else
              {
                v44 = 0;
              }

              if (v14[1])
              {
                v45 = 256;
              }

              else
              {
                v45 = 0;
              }

              (*(v42 + 16))(v40, v45 | *v14 | v44, v43, v42);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_194;
        }

LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        return;
      }

      v193 = a1;
      v68 = *(*(v1 + 16) + 56);
      v69 = objc_opt_self();

      v70 = [v69 standardUserDefaults];
      v71 = sub_10023245C(1);

      v72 = (v68 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
      *v72 = v71 & 1;
      v72[1] = BYTE1(v71) & 1;
      v72[2] = BYTE2(v71) & 1;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100005B14(v73, qword_1006D4630);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v68;
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v195 = v78;
        *v77 = 136315138;
        if (v72[2])
        {
          v79 = 0x10000;
        }

        else
        {
          v79 = 0;
        }

        if (v72[1])
        {
          v80 = 256;
        }

        else
        {
          v80 = 0;
        }

        v81 = sub_1002318A0(v80 | *v72 | v79);
        v83 = sub_100005B4C(v81, v82, &v195);

        *(v77 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "FMSelectionController: map configuration updated %s", v77, 0xCu);
        sub_100006060(v78);

        v68 = v76;
      }

      v84 = *v72;
      v85 = v72[1];
      v86 = v72[2];
      v87 = [v69 standardUserDefaults];
      v88 = type metadata accessor for Feature.FindMy();
      v197 = v88;
      v198 = sub_1000069D8();
      v89 = sub_100008FC0(&v195);
      (*(*(v88 - 8) + 104))(v89, enum case for Feature.FindMy.springfieldIntegration(_:), v88);
      v90 = isFeatureEnabled(_:)();
      sub_100006060(&v195);
      if (v86)
      {
        v91 = 0x10000;
      }

      else
      {
        v91 = 0;
      }

      if (v85)
      {
        v92 = 256;
      }

      else
      {
        v92 = 0;
      }

      sub_100231DAC(v87, v90 & 1, v92 | v84 | v91);

      swift_beginAccess();
      v93 = *(v68 + 16);
      if (v93 >> 62)
      {
        v94 = _CocoaArrayWrapper.endIndex.getter();
        if (!v94)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v94)
        {
          goto LABEL_206;
        }
      }

      if (v94 >= 1)
      {
        v95 = v68;

        for (ii = 0; ii != v94; ++ii)
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v101 = *(v93 + 8 * ii + 32);
          }

          v102 = v101 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v97 = *(v102 + 8);
            v98 = swift_getObjectType();
            if (v72[2])
            {
              v99 = 0x10000;
            }

            else
            {
              v99 = 0;
            }

            if (v72[1])
            {
              v100 = 256;
            }

            else
            {
              v100 = 0;
            }

            (*(v97 + 16))(v95, v100 | *v72 | v99, v98, v97);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v9 == 9)
    {
      v12 = *(*(v1 + 16) + 56);
LABEL_125:
      swift_storeEnumTagMultiPayload();
      v121 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v12 + v121, v5);
      swift_beginAccess();

      sub_100058530(v8, v12 + v121);
      swift_endAccess();
      sub_100058594(v5);

      swift_unknownObjectRelease();
      sub_10005D4E4(v5);
      sub_10005D4E4(v8);
      return;
    }

    if (v9 == 10)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v64 = *(v1 + 32);
        v65 = swift_getObjectType();
        swift_storeEnumTagMultiPayload();
        (*(v64 + 8))(v8, v65, v64);
        swift_unknownObjectRelease();
        sub_10005D4E4(v8);
      }

      v12 = *(*(v1 + 16) + 56);
      goto LABEL_125;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004729CC()
{

  sub_10005CD20(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_100472A30(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622C78, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

UIMenu sub_100472A7C()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100552EF0;
  v41 = objc_opt_self();
  v0 = [v41 mainBundle];
  v1._countAndFlagsBits = 0xD000000000000018;
  swift__string._object = 0x8000000100587E20;
  v1._object = 0x8000000100587E00;
  swift__string._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, swift__string);

  sub_10000905C(0, &qword_1006C0A98, UICommand_ptr);
  v4 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v5 = [v42 systemImageNamed:v4];

  sub_10007EBC0(&qword_1006B0E90, &qword_10055EBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x65726F6C707865;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v3;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v3;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98, &unk_100553500);
  swift_arrayDestroy();
  v7 = sub_10007EBC0(&unk_1006BC940, &qword_10055E3F8);
  *(v43 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v41 mainBundle];
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  swift__stringa._object = 0x800000010057EE70;
  v9._object = 0x800000010057EE50;
  swift__stringa._countAndFlagsBits = 0xD00000000000002CLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v42 systemImageNamed:v12];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1005528D0;
  *(v14 + 32) = 0xD000000000000014;
  *(v14 + 40) = 0x800000010059A990;
  *(v14 + 48) = 0x74696C6C65746173;
  *(v14 + 56) = 0xE900000000000065;
  *(v14 + 64) = 0xD00000000000001BLL;
  *(v14 + 72) = 0x800000010059A9B0;
  *(v14 + 80) = v11;
  *(v14 + 96) = 0xD00000000000001CLL;
  *(v14 + 104) = 0x800000010059A9D0;
  *(v14 + 112) = v11;
  swift_bridgeObjectRetain_n();
  v15 = sub_100153A44(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v7;
  v44[0] = v15;
  *(v43 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_10000905C(0, &unk_1006AF720, UIMenu_ptr);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100552EE0;
  if (qword_1006AEB38 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1006D4160;
  if (qword_1006AEB48 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1006D4180;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v42 systemImageNamed:{v19, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1005528D0;
  *(v21 + 32) = 0xD000000000000014;
  *(v21 + 40) = 0x800000010059A990;
  strcpy((v21 + 48), "toggleTraffic");
  *(v21 + 62) = -4864;
  *(v21 + 64) = 0xD00000000000001BLL;
  *(v21 + 72) = 0x800000010059A9B0;
  *(v21 + 80) = v17;
  *(v21 + 96) = 0xD00000000000001CLL;
  *(v21 + 104) = 0x800000010059A9D0;
  *(v21 + 112) = v18;

  v22 = sub_100153A44(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v7;
  v44[0] = v22;

  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1006AEB40 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_1006D4170 + 1);
  v23 = xmmword_1006D4170;
  if (qword_1006AEB50 != -1)
  {
    swift_once();
  }

  v25 = *(&xmmword_1006D4190 + 1);
  v26 = xmmword_1006D4190;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v42 systemImageNamed:{v27, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1005528D0;
  *(v29 + 32) = 0xD000000000000014;
  *(v29 + 40) = 0x800000010059A990;
  strcpy((v29 + 48), "toggleLabels");
  *(v29 + 61) = 0;
  *(v29 + 62) = -5120;
  *(v29 + 64) = 0xD00000000000001BLL;
  *(v29 + 72) = 0x800000010059A9B0;
  *(v29 + 80) = v23;
  *(v29 + 88) = v24;
  *(v29 + 96) = 0xD00000000000001CLL;
  *(v29 + 104) = 0x800000010059A9D0;
  *(v29 + 112) = v26;
  *(v29 + 120) = v25;

  v30 = sub_100153A44(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  v44[0] = v30;

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  *(v43 + 48) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v47, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  v32 = [v41 mainBundle];
  swift__stringb._object = 0x800000010059AB60;
  v33._object = 0x800000010059AB40;
  swift__stringb._countAndFlagsBits = 0xD00000000000002DLL;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, swift__stringb);

  v45 = &type metadata for SolariumFeatureFlag;
  v46 = sub_10000BD04();
  v36 = isFeatureEnabled(_:)();
  sub_100006060(v44);
  v37 = 0;
  if (v36)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v42 systemImageNamed:v38];
  }

  v48.value.super.isa = v37;
  v48.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v35, 0, v48, 32, 0xFFFFFFFFFFFFFFFFLL, v43, v40.super.super.isa);
}

UIMenu sub_1004733DC()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100552EE0;
  v20 = objc_opt_self();
  v0 = [v20 mainBundle];
  v1._countAndFlagsBits = 0xD000000000000013;
  swift__string._object = 0x800000010059AA30;
  v1._object = 0x800000010059AA10;
  swift__string._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, swift__string);

  sub_10000905C(0, &unk_1006B50D0, UIKeyCommand_ptr);
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:v4];

  sub_10007EBC0(&qword_1006B0E90, &qword_10055EBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x6E496D6F6F7ALL;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v3;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v3;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98, &unk_100553500);
  swift_arrayDestroy();
  sub_10007EBC0(&unk_1006BC940, &qword_10055E3F8);
  *(preferredElementSize + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v20 mainBundle];
  swift__stringa._object = 0x800000010059AAA0;
  v9._object = 0x800000010059AA80;
  swift__stringa._countAndFlagsBits = 0xD000000000000026;
  v9._countAndFlagsBits = 0xD000000000000014;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v5 systemImageNamed:v12];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1005528D0;
  *(v14 + 32) = 0xD000000000000014;
  *(v14 + 40) = 0x800000010059A990;
  *(v14 + 48) = 0x74754F6D6F6F7ALL;
  *(v14 + 56) = 0xE700000000000000;
  *(v14 + 64) = 0xD00000000000001BLL;
  *(v14 + 72) = 0x800000010059A9B0;
  *(v14 + 80) = v11;
  *(v14 + 96) = 0xD00000000000001CLL;
  *(v14 + 104) = 0x800000010059A9D0;
  *(v14 + 112) = v11;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(preferredElementSize + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v15 = [v20 mainBundle];
  swift__stringb._object = 0x800000010059AB10;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x800000010059AAF0;
  swift__stringb._countAndFlagsBits = 0xD00000000000002FLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, swift__stringb);

  sub_10000905C(0, &unk_1006AF720, UIMenu_ptr);
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v22, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

UIMenu sub_1004738EC()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100552EF0;
  v1 = v0;
  v36 = v0;
  v35 = objc_opt_self();
  v2 = [v35 mainBundle];
  swift__string._object = 0x8000000100589CB0;
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100589C90;
  swift__string._countAndFlagsBits = 0xD00000000000002ALL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  sub_10000905C(0, &unk_1006B50D0, UIKeyCommand_ptr);
  v6 = String._bridgeToObjectiveC()();
  v34 = objc_opt_self();
  v7 = [v34 systemImageNamed:v6];

  sub_10007EBC0(&qword_1006B0E90, &qword_10055EBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x656C706F6570;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v5;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v5;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98, &unk_100553500);
  swift_arrayDestroy();
  sub_10007EBC0(&unk_1006BC940, &qword_10055E3F8);
  *(v1 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = [v35 mainBundle];
  swift__stringa._object = 0x8000000100589C60;
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x8000000100589C40;
  swift__stringa._countAndFlagsBits = 0xD00000000000002BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v13 = String._bridgeToObjectiveC()();
  v14 = [v34 systemImageNamed:v13];

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1005528D0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x800000010059A990;
  *(v15 + 48) = 0x73656369766564;
  *(v15 + 56) = 0xE700000000000000;
  *(v15 + 64) = 0xD00000000000001BLL;
  *(v15 + 72) = 0x800000010059A9B0;
  *(v15 + 80) = v12;
  *(v15 + 96) = 0xD00000000000001CLL;
  *(v15 + 104) = 0x800000010059A9D0;
  *(v15 + 112) = v12;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v36 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v16 = [v35 mainBundle];
  v17.value._countAndFlagsBits = 0xD000000000000013;
  swift__stringb._object = 0x8000000100579A00;
  v18._countAndFlagsBits = 0x41545F534D455449;
  v17.value._object = 0x80000001005799E0;
  swift__stringb._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0xE900000000000042;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, swift__stringb);

  v21 = String._bridgeToObjectiveC()();
  v22 = [v34 systemImageNamed:v21];

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1005528D0;
  *(v23 + 32) = 0xD000000000000014;
  *(v23 + 40) = 0x800000010059A990;
  *(v23 + 48) = 0x736D657469;
  *(v23 + 56) = 0xE500000000000000;
  *(v23 + 64) = 0xD00000000000001BLL;
  *(v23 + 72) = 0x800000010059A9B0;
  *(v23 + 80) = v20;
  *(v23 + 96) = 0xD00000000000001CLL;
  *(v23 + 104) = 0x800000010059A9D0;
  *(v23 + 112) = v20;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v36 + 48) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v24 = [v35 mainBundle];
  swift__stringc._object = 0x80000001005876A0;
  v25._countAndFlagsBits = 0x4241545F454DLL;
  swift__stringc._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, swift__stringc);

  v28 = String._bridgeToObjectiveC()();
  v29 = [v34 systemImageNamed:v28];

  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1005528D0;
  *(v30 + 32) = 0xD000000000000014;
  *(v30 + 40) = 0x800000010059A990;
  *(v30 + 48) = 25965;
  *(v30 + 56) = 0xE200000000000000;
  *(v30 + 64) = 0xD00000000000001BLL;
  *(v30 + 72) = 0x800000010059A9B0;
  *(v30 + 80) = v27;
  *(v30 + 96) = 0xD00000000000001CLL;
  *(v30 + 104) = 0x800000010059A9D0;
  *(v30 + 112) = v27;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v36 >> 62)
  {
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);
    preferredElementSize = v36;
  }

  sub_10000905C(0, &unk_1006AF720, UIMenu_ptr);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

void sub_10047419C(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuFormat];
  [a1 removeMenuForIdentifier:UIMenuToolbar];
  [a1 removeMenuForIdentifier:UIMenuSidebar];
  isa = sub_100472A7C().super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuView];

  v3 = sub_1004733DC().super.super.isa;
  [a1 insertChildMenu:v3 atStartOfMenuForIdentifier:UIMenuView];

  v4 = sub_1004738EC().super.super.isa;
  [a1 insertChildMenu:v4 atStartOfMenuForIdentifier:UIMenuView];
}

uint64_t PushPayload.payload.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PushPayload.url.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PushPayload.identifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

Swift::Int sub_1004743C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1004744B0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100474588(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100474670@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004752DC(*a1);
  *a2 = result;
  return result;
}

void sub_1004746A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7565409;
  v5 = 0xEE007472656C4170;
  v6 = 0x70416E49776F6873;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4C796150666D66;
    v3 = 0xEA00000000006461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100474748()
{
  v1 = *v0;
  v2 = 7565409;
  v3 = 0x70416E49776F6873;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4C796150666D66;
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

unint64_t sub_1004747EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004752DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100474814(uint64_t a1)
{
  v2 = sub_100476410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100474850(uint64_t a1)
{
  v2 = sub_100476410();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushPayload.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100475328(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t PushAPSData.category.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PushAPSData.sound.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

Swift::Int sub_100474988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100474A3C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100474ADC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100474B8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047576C(*a1);
  *a2 = result;
  return result;
}

void sub_100474BBC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472656C61;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (*v1 != 2)
  {
    v5 = 0x646E756F73;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567646162;
    v2 = 0xE500000000000000;
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

uint64_t sub_100474C2C()
{
  v1 = 0x7472656C61;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x646E756F73;
  }

  if (*v0)
  {
    v1 = 0x6567646162;
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

unint64_t sub_100474C98@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047576C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100474CCC(uint64_t a1)
{
  v2 = sub_1004762D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100474D08(uint64_t a1)
{
  v2 = sub_1004762D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushAPSData.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004757B8(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t PushAlert.summaryArg.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_100474DE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100474ECC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100474FA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100475084@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100475B04(*a1);
  *a2 = result;
  return result;
}

void sub_1004750B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036625250;
  v5 = 0xE800000000000000;
  v6 = 0x736772612D636F6CLL;
  v7 = 0x80000001005790C0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x2D7972616D6D7573;
    v7 = 0xEB00000000677261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79656B2D636F6CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100475158()
{
  v1 = *v0;
  v2 = 2036625250;
  v3 = 0x736772612D636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x2D7972616D6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79656B2D636F6CLL;
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

unint64_t sub_1004751F8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100475B04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100475220(uint64_t a1)
{
  v2 = sub_100476198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047525C(uint64_t a1)
{
  v2 = sub_100476198();

  return CodingKey.debugDescription.getter(a1, v2);
}

double PushAlert.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100475B50(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_1004752DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622DA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100475328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007EBC0(&qword_1006C0AD8, &qword_1005627E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v31 = a1;
  sub_1000244BC(a1, v9);
  sub_100476410();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(v31);
  }

  v10 = v6;
  v65 = 0;
  sub_100476464();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  LOBYTE(v43[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v30 + 1) = v13;
  v14 = v12;
  LOBYTE(v43[0]) = 2;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *&v30 = v14;
  LOBYTE(v43[0]) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v29 = v15;
  v64 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  (*(v10 + 8))(v8, v11);
  v36 = v60;
  v37 = v61;
  v38 = v62;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v21 = v30;
  v39 = v30;
  v22 = v63;
  LOBYTE(v40) = v63;
  *(&v40 + 1) = v29;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  v42 = v20;
  sub_1004764B8(&v32, v43);
  sub_100006060(v31);
  v43[4] = v60;
  v43[5] = v61;
  v43[6] = v62;
  v43[0] = v56;
  v43[1] = v57;
  v43[2] = v58;
  v43[3] = v59;
  v43[7] = v21;
  v44 = v22;
  v45 = v29;
  v46 = v17;
  v47 = v18;
  v48 = v20;
  result = sub_1004764F0(v43);
  v24 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v24;
  *(a2 + 160) = v42;
  v25 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v25;
  v26 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v26;
  v27 = v33;
  *a2 = v32;
  *(a2 + 16) = v27;
  v28 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_1004756FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006C0AA0, &qword_1005625D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10047576C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622E38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004757B8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = sub_10007EBC0(&qword_1006C0AC0, &qword_1005627D8);
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v25 - v6;
  sub_1000244BC(a1, a1[3]);
  sub_1004762D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(a1);
  }

  v8 = v5;
  v44 = 0;
  sub_100476324();
  v9 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = v45[0];
  v48 = v45[1];
  v49 = v45[2];
  v50 = v45[3];
  LOBYTE(v36[0]) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v10 & 1;
  LOBYTE(v36[0]) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v27 = v11;
  v43 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = *(v8 + 8);
  v26 = v14;
  v17 = v16;
  v15(v7, v9);
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v32 = v50;
  v18 = v27;
  v19 = v28;
  *&v33 = v28;
  v20 = v46;
  BYTE8(v33) = v46;
  *&v34 = v27;
  *(&v34 + 1) = v13;
  *&v35 = v26;
  *(&v35 + 1) = v17;
  sub_1004742E8(&v29, v36);
  sub_100006060(a1);
  v36[0] = v47;
  v36[1] = v48;
  v36[2] = v49;
  v36[3] = v50;
  v37 = v19;
  v38 = v20;
  v39 = v18;
  v40 = v13;
  v41 = v26;
  v42 = v17;
  result = sub_1004763E0(v36);
  v22 = v34;
  a2[4] = v33;
  a2[5] = v22;
  a2[6] = v35;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  v24 = v32;
  a2[2] = v31;
  a2[3] = v24;
  return result;
}

unint64_t sub_100475B04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622EB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_100475B50(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10007EBC0(&qword_1006C0AA8, &qword_1005627D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000244BC(a1, a1[3]);
  sub_100476198();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006060(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v29 = v9;
    LOBYTE(v35[0]) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v13;
    v26 = v12;
    v28 = v11;
    sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
    LOBYTE(v31) = 2;
    v27 = sub_1004761EC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v35[0];
    LOBYTE(v31) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v35[0];
    v36 = 4;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v28;
    v16 = v14;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = v29;
    *&v31 = v29;
    *(&v31 + 1) = v15;
    v20 = v26;
    *&v32 = v26;
    *(&v32 + 1) = v30;
    v21 = v25;
    *&v33 = v25;
    *(&v33 + 1) = v27;
    *&v34 = v16;
    *(&v34 + 1) = v18;
    sub_100476268(&v31, v35);
    sub_100006060(a1);
    v35[0] = v19;
    v35[1] = v15;
    v35[2] = v20;
    v35[3] = v30;
    v35[4] = v21;
    v35[5] = v27;
    v35[6] = v16;
    v35[7] = v18;
    sub_1004762A0(v35);
    v22 = v32;
    *a2 = v31;
    a2[1] = v22;
    v23 = v34;
    a2[2] = v33;
    a2[3] = v23;
  }
}

uint64_t sub_100475F28(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100475F40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100475F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100475FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047603C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100476084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004760F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100476138(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_100476198()
{
  result = qword_1006C0AB0;
  if (!qword_1006C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AB0);
  }

  return result;
}

unint64_t sub_1004761EC()
{
  result = qword_1006C0AB8;
  if (!qword_1006C0AB8)
  {
    sub_10007EC08(&qword_1006C0C10, &qword_100556FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AB8);
  }

  return result;
}

unint64_t sub_1004762D0()
{
  result = qword_1006C0AC8;
  if (!qword_1006C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AC8);
  }

  return result;
}

unint64_t sub_100476324()
{
  result = qword_1006C0AD0;
  if (!qword_1006C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AD0);
  }

  return result;
}

uint64_t sub_100476378(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006C0AA0, &qword_1005625D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100476410()
{
  result = qword_1006C0AE0;
  if (!qword_1006C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AE0);
  }

  return result;
}

unint64_t sub_100476464()
{
  result = qword_1006C0AE8;
  if (!qword_1006C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AE8);
  }

  return result;
}

unint64_t sub_100476554()
{
  result = qword_1006C0AF0;
  if (!qword_1006C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AF0);
  }

  return result;
}

unint64_t sub_1004765AC()
{
  result = qword_1006C0AF8;
  if (!qword_1006C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AF8);
  }

  return result;
}

unint64_t sub_100476604()
{
  result = qword_1006C0B00;
  if (!qword_1006C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B00);
  }

  return result;
}

unint64_t sub_10047665C()
{
  result = qword_1006C0B08;
  if (!qword_1006C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B08);
  }

  return result;
}

unint64_t sub_1004766B4()
{
  result = qword_1006C0B10;
  if (!qword_1006C0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B10);
  }

  return result;
}

unint64_t sub_10047670C()
{
  result = qword_1006C0B18;
  if (!qword_1006C0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B18);
  }

  return result;
}

unint64_t sub_100476764()
{
  result = qword_1006C0B20;
  if (!qword_1006C0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B20);
  }

  return result;
}

unint64_t sub_1004767BC()
{
  result = qword_1006C0B28;
  if (!qword_1006C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B28);
  }

  return result;
}

unint64_t sub_100476814()
{
  result = qword_1006C0B30;
  if (!qword_1006C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B30);
  }

  return result;
}

uint64_t sub_100476878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_1004769D8(v8, v10, 0, 0, 0, 0, 0);
    v14 = v13;

    return (v14 >> 8) & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1004769D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_10000905C(0, &qword_1006B50C0, NSPredicate_ptr);
  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552220;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10008EE84();
  *(v10 + 32) = 0xD000000000000029;
  *(v10 + 40) = 0x8000000100580FB0;
  v11 = NSPredicate.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 evaluateWithObject:v12];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 predicateForContactsMatchingEmailAddress:v15];
  }

  else
  {
    v17 = sub_100477BA0(a1, a2, 0);

    if ((v17 & 1) == 0)
    {
      v56 = 0;
      v13 = 1;
      v20 = 1;
      if (a7)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    v18 = objc_allocWithZone(CNPhoneNumber);
    v19 = String._bridgeToObjectiveC()();
    v15 = [v18 initWithStringValue:v19];

    v16 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v15];
  }

  v56 = v16;

  v20 = 0;
  if (a7)
  {
    goto LABEL_18;
  }

LABEL_8:
  sub_100477134(&v58);
  v21 = v58;
  if (v58)
  {
    v22 = sub_100478030(v58);
    v23 = v22 + 5;
    v24 = v22[2] + 1;
    while (--v24)
    {
      if (*(v23 - 1) != a1 || *v23 != a2)
      {
        v23 += 6;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return v21;
    }
  }

LABEL_18:
  v26 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((a7 & 1) != 0 || v26 != 3)
  {
    goto LABEL_34;
  }

  v27 = [objc_allocWithZone(CNContactStore) init];
  if (!v56)
  {
    goto LABEL_33;
  }

  v53 = v20;
  v28 = qword_1006AED58;
  v29 = v56;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180, &qword_100550ED0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = 0;
  v31 = [v27 unifiedContactsMatchingPredicate:v29 keysToFetch:isa error:&v57];

  v32 = v57;
  if (v31)
  {
    sub_10000905C(0, &qword_1006BFD00, CNContact_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v32;

    if (v33 >> 62)
    {
      v20 = v53;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = v53;
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_26:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v35 = *(v33 + 32);
        }

        v21 = v35;

        return v21;
      }
    }

LABEL_33:
    goto LABEL_34;
  }

  v36 = v57;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v20 = v53;
LABEL_34:
  v21 = [objc_allocWithZone(CNMutableContact) init];
  if (a4)
  {
    v37 = String._bridgeToObjectiveC()();
    [v21 setGivenName:v37];
  }

  if (a6)
  {
    v38 = String._bridgeToObjectiveC()();
    [v21 setFamilyName:v38];
  }

  if ((v13 | v20))
  {
    v39 = CNLabelOther;
    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v39 value:v40];

    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1005528C0;
    *(v42 + 32) = v41;
    v43 = v41;
    sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
    v44 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setEmailAddresses:v44];
  }

  else
  {
    v45 = objc_allocWithZone(CNPhoneNumber);
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 initWithStringValue:v46];

    v48 = [objc_allocWithZone(CNLabeledValue) initWithLabel:CNLabelOther value:v47];
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1005528C0;
    *(v49 + 32) = v48;
    v50 = v48;
    sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
    v51 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setPhoneNumbers:v51];
  }

  return v21;
}

void sub_100477134(void *a1@<X8>)
{
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  v3 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
  v4 = &selRef_pushViewController_animated_;
  if ([objc_opt_self() authorizationStatusForEntityType:0] == 3)
  {
    v5 = [objc_allocWithZone(CNContactStore) init];
    if (qword_1006AED58 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {

      sub_10007EBC0(&qword_1006AF180, &qword_100550ED0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v54 = 0;
      v7 = [v5 _ios_meContactWithKeysToFetch:isa error:&v54];

      if (!v7)
      {
        v15 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100005B14(v16, qword_1006D4630);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "No access to me card. Use device's primary account.", v19, 2u);
        }

        v5 = v17;
        goto LABEL_29;
      }

      v8 = v54;
      v9 = sub_100478030(v7);
      v10 = [objc_allocWithZone(v3[485]) p_ivar_lyt[394]];
      v11 = [v10 v4[266]];

      if (!v11)
      {
        break;
      }

      v53 = a1;
      v12 = [v11 aa_primaryEmail];
      v52 = v5;
      if (v12)
      {
        v13 = v12;
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v14;
      }

      else
      {
        v3 = 0;
        a1 = 0;
      }

      v23 = v9;
      v5 = v9[2];
      if (!v5)
      {
LABEL_27:

        v5 = v52;
        a1 = v53;
        v4 = &selRef_pushViewController_animated_;
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        v3 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
        goto LABEL_29;
      }

      v50 = v11;
      v51 = v7;
      v24 = 0;
      v25 = v9 + 5;
      while (v24 < v23[2])
      {
        if (a1)
        {
          v4 = *(v25 - 1);
          v26 = *v25;
          v22 = v25[1];
          p_ivar_lyt = v25[2];
          if (v4 == v3 && a1 == v26)
          {
            v4 = v3;
            v21 = a1;
            goto LABEL_44;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v23 = v9;
          if (v28)
          {
            v21 = v26;
LABEL_44:

            a1 = v53;
            v7 = v51;
            goto LABEL_42;
          }
        }

        v24 = (v24 + 1);
        v25 += 6;
        if (v5 == v24)
        {
          v11 = v50;
          v7 = v51;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_46:
      swift_once();
    }

    v20 = sub_100478030(v7);
    if (v20[2])
    {
      v4 = v20[4];
      v21 = v20[5];
      v22 = v20[6];
      p_ivar_lyt = v20[7];

      goto LABEL_42;
    }

LABEL_29:
  }

  v29 = [objc_allocWithZone(v3[485]) p_ivar_lyt[394]];
  v30 = [v29 v4[266]];

  if (!v30)
  {
    v7 = 0;
    v4 = 0;
    v21 = 0;
    goto LABEL_41;
  }

  v31 = [v30 aa_primaryEmail];
  if (!v31)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v30 aa_firstName];
  if (v36)
  {
    v37 = v36;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = [v30 aa_lastName];
  if (v41)
  {
    v42 = a1;
    v43 = v41;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    a1 = v42;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v7 = sub_1004769D8(v33, v35, v38, v40, v44, v46, 1);

  v47 = [v30 aa_primaryEmail];
  if (!v47)
  {
    goto LABEL_48;
  }

  v48 = v47;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v49;

LABEL_41:
  v22 = 0;
  p_ivar_lyt = 0;
LABEL_42:
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = p_ivar_lyt;
}

uint64_t sub_1004776EC()
{
  result = sub_10047770C();
  qword_1006D4CB0 = result;
  return result;
}

uint64_t sub_10047770C()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100562C20;
  *(v0 + 32) = CNContactTypeKey;
  *(v0 + 40) = CNContactIdentifierKey;
  *(v0 + 48) = CNContactGivenNameKey;
  *(v0 + 56) = CNContactFamilyNameKey;
  *(v0 + 64) = CNContactMiddleNameKey;
  *(v0 + 72) = CNContactNicknameKey;
  *(v0 + 80) = CNContactEmailAddressesKey;
  *(v0 + 88) = CNContactPhoneNumbersKey;
  *(v0 + 96) = CNContactPostalAddressesKey;
  v14 = v0;
  v1 = objc_opt_self();
  v2 = CNContactTypeKey;
  v3 = CNContactIdentifierKey;
  v4 = CNContactGivenNameKey;
  v5 = CNContactFamilyNameKey;
  v6 = CNContactMiddleNameKey;
  v7 = CNContactNicknameKey;
  v8 = CNContactEmailAddressesKey;
  v9 = CNContactPhoneNumbersKey;
  v10 = CNContactPostalAddressesKey;
  v11 = [v1 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = [objc_opt_self() descriptorForRequiredKeys];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v14;
}

uint64_t sub_10047791C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 value];
  v7 = [v6 stringValue];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100035F3C();
  StringProtocol.components(separatedBy:)();

  sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
  sub_1001500AC();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  if (v8 == a3 && v10 == a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

id sub_100477B44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMContactsUtilities();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100477BA0(uint64_t a1, unint64_t a2, int a3)
{
  v45 = a3;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  __chkstk_darwin(v22);
  if (!a2)
  {
    return a2 & 1;
  }

  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_17:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v42 = v24;
  v44 = &v40 - v23;
  static CharacterSet.decimalDigits.getter();
  static CharacterSet.whitespacesAndNewlines.getter();
  v43 = a1;
  CharacterSet.union(_:)();
  v26 = v9;
  v27 = a2;
  v28 = v5;
  v29 = v44;
  v30 = *(v6 + 8);
  v30(v26, v28);
  v30(v12, v28);
  static CharacterSet.controlCharacters.getter();
  CharacterSet.union(_:)();
  v30(v12, v28);
  v30(v15, v28);
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v30(v15, v28);
  v30(v18, v28);
  CharacterSet.inverted.getter();
  v30(v21, v28);
  v48 = v43;
  v49 = a2;
  sub_100035F3C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  if ((v31 & 1) == 0)
  {
    v30(v29, v28);
    goto LABEL_17;
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v30(v15, v28);
  v30(v18, v28);
  v32 = v42;
  CharacterSet.inverted.getter();
  v30(v21, v28);
  v33 = v43;
  v48 = v43;
  v49 = a2;

  v46 = v33;
  v47 = a2;
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v34 = v33;
  v35 = a2;
  if ((v36 & 1) == 0)
  {
    v41 = a2;
    do
    {
      String.removeSubrange(_:)();
      v33 = v48;
      v35 = v49;
      v46 = v48;
      v47 = v49;
      StringProtocol.rangeOfCharacter(from:options:range:)();
    }

    while ((v37 & 1) == 0);
    v27 = v41;
  }

  if (v45)
  {
    if (v33 == v34 && v35 == v27)
    {
      LOBYTE(a2) = 0;
    }

    else
    {
      LOBYTE(a2) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    LOBYTE(a2) = 1;
  }

  v30(v32, v28);
  v30(v44, v28);
  return a2 & 1;
}

void *sub_100478030(void *a1)
{
  v71 = type metadata accessor for CharacterSet();
  v2 = *(v71 - 8);
  __chkstk_darwin(v71);
  v78 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() stringFromContact:a1 style:0];
  if (v4)
  {
    v5 = v4;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v6;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v7 = [a1 phoneNumbers];
  sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [a1 emailAddresses];
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = &selRef_initWithScrollView_edge_;
    v73 = v8;
    if (i)
    {
      break;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_38:
    v47 = v72;
    if (v72 >> 62)
    {
      v64 = v72;
      v65 = _CocoaArrayWrapper.endIndex.getter();
      v47 = v64;
      v78 = v65;
      if (!v65)
      {
LABEL_63:

        return v13;
      }
    }

    else
    {
      v78 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v78)
      {
        goto LABEL_63;
      }
    }

    v48 = 0;
    v75 = v47 & 0xFFFFFFFFFFFFFF8;
    v76 = v47 & 0xC000000000000001;
    while (1)
    {
      if (v76)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v75 + 16))
        {
          goto LABEL_60;
        }

        v49 = *(v47 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v52 = [v49 v11[37]];
      if (v52)
      {

        result = [v50 v11[37]];
        if (!result)
        {
          goto LABEL_65;
        }

        v53 = result;
        v54 = [objc_opt_self() localizedStringForLabel:result];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v56;
      }

      else
      {
        v55 = 0;
        v8 = 0;
      }

      v57 = [v50 value];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10008BC7C(0, v13[2] + 1, 1, v13);
      }

      v2 = v13[2];
      v61 = v13[3];
      if (v2 >= v61 >> 1)
      {
        v13 = sub_10008BC7C((v61 > 1), v2 + 1, 1, v13);
      }

      v13[2] = v2 + 1;
      v62 = &v13[6 * v2];
      v62[4] = v58;
      v62[5] = v60;
      v62[6] = v55;
      v62[7] = v8;
      v63 = v79;
      v62[8] = v77;
      v62[9] = v63;
      ++v48;
      v47 = v72;
      v11 = &selRef_initWithScrollView_edge_;
      if (v51 == v78)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v12 = 0;
  v70 = v8 & 0xC000000000000001;
  v66 = v8 & 0xFFFFFFFFFFFFFF8;
  v67 = kCFAllocatorDefault;
  v69 = (v2 + 8);
  v13 = _swiftEmptyArrayStorage;
  v68 = i;
  while (1)
  {
    if (v70)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v66 + 16))
      {
        goto LABEL_59;
      }

      v14 = *(v73 + 8 * v12 + 32);
    }

    v8 = v14;
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    v15 = [v14 v11[37]];
    v76 = v12 + 1;
    if (v15)
    {
      break;
    }

    v74 = 0;
    v75 = 0;
LABEL_17:
    v21 = [v8 value];
    v22 = [v21 stringValue];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    static CharacterSet.decimalDigits.getter();
    v26._countAndFlagsBits = 0x2D232A29282BLL;
    v26._object = 0xE600000000000000;
    CharacterSet.insert(charactersIn:)(v26);
    v80 = v23;
    v81 = v25;
    sub_100035F3C();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v27)
    {

      v28 = v23;
      v2 = v25;
    }

    else
    {
      v80 = v23;
      v81 = v25;
      v29 = String.Index.utf16Offset<A>(in:)();
      v30 = String.count.getter();
      v2 = v30 - v29;
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_58;
      }

      v31 = String._bridgeToObjectiveC()();
      v32 = [v31 substringWithRange:{v29, v2}];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v33;
    }

    v34 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v34 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      sub_1001230FC();
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();

      v37 = CFPhoneNumberCreate();

      if (!v37)
      {
        goto LABEL_27;
      }

      v38 = v37;
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v40 = String;

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v41;

LABEL_27:
        (*v69)(v78, v71);
      }

      else
      {
        (*v69)(v78, v71);
      }

      v11 = &selRef_initWithScrollView_edge_;
      goto LABEL_31;
    }

    (*v69)(v78, v71);

LABEL_31:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10008BC7C(0, v13[2] + 1, 1, v13);
    }

    v43 = v13[2];
    v42 = v13[3];
    if (v43 >= v42 >> 1)
    {
      v13 = sub_10008BC7C((v42 > 1), v43 + 1, 1, v13);
    }

    v13[2] = v43 + 1;
    v44 = &v13[6 * v43];
    v44[4] = v28;
    v44[5] = v2;
    v45 = v74;
    v44[6] = v75;
    v44[7] = v45;
    v46 = v79;
    v44[8] = v77;
    v44[9] = v46;
    ++v12;
    if (v76 == v68)
    {
      goto LABEL_38;
    }
  }

  result = [v8 v11[37]];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() localizedStringForLabel:result];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v20;
    v75 = v19;

    goto LABEL_17;
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

id sub_100478820(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B50C0, NSPredicate_ptr);
  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552220;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10008EE84();
  *(v3 + 32) = 0xD000000000000029;
  *(v3 + 40) = 0x8000000100580FB0;
  v4 = NSPredicate.init(format:_:)();
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 evaluateWithObject:v5];

  swift_unknownObjectRelease();
  return v6;
}

void *sub_100478940(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a1;
  v43 = a2;
  v4 = type metadata accessor for CharacterSet();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v39 = &v35 - v9;
  v10 = [a3 emailAddresses];
  v11 = sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v11;
  v38 = a3;
  v36 = v6;
  if (v12 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
      v18 = [v16 value];
      v19 = String._bridgeToObjectiveC()();
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {

        v21 = [v16 identifier];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v22;
      }

      ++v14;
      if (v17 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v23 = v36;
  CharacterSet.init(charactersIn:)();
  v24 = v39;
  CharacterSet.inverted.getter();
  v25 = v41;
  v26 = *(v40 + 8);
  v26(v23, v41);
  v44 = v42;
  v45 = v43;
  sub_100035F3C();
  v44 = StringProtocol.components(separatedBy:)();
  sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
  sub_1001500AC();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v30 = [v38 phoneNumbers];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v32);
  *(&v35 - 4) = v24;
  *(&v35 - 3) = v27;
  *(&v35 - 2) = v29;
  v22 = sub_100110BC4(sub_100479188, (&v35 - 6), v31);

  if (v22)
  {
    v33 = [v22 identifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v26(v24, v25);
  return v22;
}

uint64_t sub_100478D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  static CharacterSet.whitespacesAndNewlines.getter();
  static CharacterSet.controlCharacters.getter();
  CharacterSet.union(_:)();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v17(v10, v4);
  v17(v13, v4);
  v20[0] = a1;
  v20[1] = a2;
  sub_100035F3C();
  v18 = StringProtocol.trimmingCharacters(in:)();
  v17(v16, v4);
  return v18;
}

id sub_100478F60()
{
  v0 = 0;
  if ([objc_opt_self() authorizationStatusForEntityType:0] == 3)
  {
    v1 = [objc_allocWithZone(CNContactStore) init];
    if (qword_1006AED58 != -1)
    {
      swift_once();
    }

    sub_10007EBC0(&qword_1006AF180, &qword_100550ED0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v0 = [v1 _ios_meContactWithKeysToFetch:isa error:&v10];

    v3 = v10;
    if (!v0)
    {
      v4 = v3;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100005B14(v5, qword_1006D4630);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "No access to me card. Use device's primary account.", v8, 2u);
      }

      v0 = 0;
      v1 = v6;
    }
  }

  return v0;
}

uint64_t sub_1004791AC(uint64_t a1)
{
  v3 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  swift_beginAccess();
  sub_10047A2DC(a1, &v1[v10]);
  swift_endAccess();
  sub_1000C5F60(&v1[v10], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(a1, &unk_1006B0120, &qword_100552B60);
    return sub_100012DF0(v5, &unk_1006B0120, &qword_100552B60);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = [v1 traitCollection];
    v13 = [v12 userInterfaceStyle];

    if (v13 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = *&v1[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    [v15 updateViewForAssetType:v14 adjustmentsURL:v17];

    sub_100012DF0(a1, &unk_1006B0120, &qword_100552B60);
    return (*(v7 + 8))(v9, v6);
  }
}

id sub_100479414()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_stackView;
  *&v0[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel;
  *&v0[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  *&v0[v6] = [objc_allocWithZone(SFAdjustedImageView) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMProductActionHeaderView(0);
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10047960C(v7);

  return v7;
}

uint64_t sub_10047960C(uint64_t a1)
{
  v2 = v1;
  sub_100479ED0();
  v69 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  [*&v1[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView] setContentMode:1];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v4 = *&v2[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel];
  *(inited + 32) = v4;
  v5 = *&v2[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel];
  *(inited + 40) = v5;
  v6 = inited & 0xC000000000000001;
  p_ivar_lyt = (inited & 0xFFFFFFFFFFFFFF8);
  v8 = v4;
  v9 = v5;
  v10 = v8;
  v70 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  for (i = v10; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v12 = i;
    [i setNumberOfLines:0];
    [v12 setTextAlignment:1];
    [v12 setAdjustsFontForContentSizeCategory:1];

    if (v6)
    {
      break;
    }

    if (p_ivar_lyt[2] >= 2)
    {
      v13 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v14 = v13;
  [v13 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  [v14 setAdjustsFontForContentSizeCategory:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_100552220;
  *(v17 + 32) = UIFontWeightTrait;
  *(v17 + 40) = UIFontWeightSemibold;
  v18 = UIFontWeightTrait;
  v19 = sub_10002AB84(v17);
  swift_setDeallocating();
  sub_100012DF0(v17 + 32, &qword_1006B47A0, &qword_100552690);
  v20 = sub_10002ACDC(v19);

  v21 = sub_100039388(0x8000);

  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  [v10 setFont:v21];

  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v10 setTextColor:v23];

  v24 = [v15 preferredFontForTextStyle:UIFontTextStyleBody];
  v25 = sub_100039388(0x8000);

  [v70 setFont:v25];
  v26 = [v22 secondaryLabelColor];
  [v70 setTextColor:v26];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v27 = *&v2[v69];
  *(inited + 32) = v27;
  *(inited + 40) = v10;
  *(inited + 48) = v70;
  v6 = inited & 0xC000000000000001;
  v28 = v27;
  if ((inited & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v29 = v28;
  }

  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  p_ivar_lyt = &selRef__enter3DMode;
  [v2 addSubview:v30];

  if (!v6)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v31 = *(inited + 40);
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v32];

  if (!v6)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v33 = *(inited + 48);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v34 = v33;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v34];

  swift_setDeallocating();
  swift_arrayDestroy();
  v68 = objc_opt_self();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1005568E0;
  v36 = [*&v2[v69] topAnchor];
  v37 = [v2 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v35 + 32) = v38;
  v39 = [*&v2[v69] leadingAnchor];
  v40 = [v2 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v35 + 40) = v41;
  v42 = [*&v2[v69] trailingAnchor];
  v43 = [v2 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v35 + 48) = v44;
  v45 = [v10 topAnchor];
  v46 = [*&v2[v69] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v35 + 56) = v47;
  v48 = [v10 leadingAnchor];
  v49 = [v2 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v35 + 64) = v50;
  v51 = [v10 trailingAnchor];
  v52 = [v2 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v35 + 72) = v53;
  v54 = [v70 topAnchor];
  v55 = [v10 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v35 + 80) = v56;
  v57 = [v70 leadingAnchor];
  v58 = [v2 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v35 + 88) = v59;
  v60 = [v70 trailingAnchor];
  v61 = [v2 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v35 + 96) = v62;
  v63 = [v70 bottomAnchor];
  v64 = [v2 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v35 + 104) = v65;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];

  return sub_100479ED0();
}

uint64_t sub_100479ED0()
{
  v1 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  swift_beginAccess();
  sub_1000C5F60(&v0[v8], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100012DF0(v3, &unk_1006B0120, &qword_100552B60);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [v0 traitCollection];
  v11 = [v10 userInterfaceStyle];

  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = *&v0[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  [v13 updateViewForAssetType:v12 adjustmentsURL:v15];

  return (*(v5 + 8))(v7, v4);
}

id sub_10047A120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMProductActionHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMProductActionHeaderView(uint64_t a1)
{
  result = qword_1006C0C60;
  if (!qword_1006C0C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047A238(uint64_t a1)
{
  sub_10018A184(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10047A2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10047A34C()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_stackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  *(v0 + v6) = [objc_allocWithZone(SFAdjustedImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

FindMy::UTAlertContextMode_optional __swiftcall UTAlertContextMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622F50, v2);

  if (v3 == 1)
  {
    v4.value = FindMy_UTAlertContextMode_itemDetectedWithYou;
  }

  else
  {
    v4.value = FindMy_UTAlertContextMode_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UTAlertContextMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10047A51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "fallback-loc-args";
  }

  else
  {
    v4 = "itemFollowingYou";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "itemFollowingYou";
  }

  else
  {
    v7 = "fallback-loc-args";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10047A5C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10047A648(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10047A6B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10047A730(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622F50, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_10047A790(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "itemFollowingYou";
  }

  else
  {
    v3 = "fallback-loc-args";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t type metadata accessor for UTAlertContext(uint64_t a1)
{
  result = qword_1006C0D08;
  if (!qword_1006C0D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UTAlertContext.roleEmoji.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext(0) + 28));

  return v1;
}

uint64_t UTAlertContext.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext(0) + 32));

  return v1;
}

uint64_t UTAlertContext.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext(0) + 36));

  return v1;
}

int *UTAlertContext.init(uuid:mode:roleId:roleEmoji:title:subtitle:latitude:longitude:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_10047AB40(a1, a9);
  result = type metadata accessor for UTAlertContext(0);
  *(a9 + result[5]) = a2;
  v22 = a9 + result[6];
  *v22 = a3;
  *(v22 + 8) = a4 & 1;
  v23 = (a9 + result[7]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + result[8]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (a9 + result[9]);
  *v25 = a10;
  v25[1] = a11;
  v26 = a9 + result[10];
  *v26 = a12;
  *(v26 + 8) = a13 & 1;
  v27 = a9 + result[11];
  *v27 = a14;
  *(v27 + 8) = a15 & 1;
  return result;
}

uint64_t sub_10047AB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t UTAlertContext.debugDescription.getter()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  v3 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v43 = 0xD000000000000017;
  v44 = 0x800000010059ACE0;
  sub_100109C84(v0, v5);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &unk_1006B20C0, &unk_100552E10);
    Substring.init(_:)();
  }

  else
  {
    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    sub_10047BEA4(10, v8, v10);
  }

  v11 = static String._fromSubstring(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3A65646F6D20;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16 = type metadata accessor for UTAlertContext(0);
  v17 = *(v1 + v16[5]);
  v18 = 0xE200000000000000;
  if (v17 == 2)
  {
    v2 = 10023;
    v19 = 0xE200000000000000;
  }

  else if (v17)
  {
    v19 = 0x8000000100579100;
    v2 = 0xD000000000000013;
  }

  else
  {
    v19 = 0x80000001005790E0;
  }

  v20._countAndFlagsBits = v2;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v23 = v43;
  v22 = v44;
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v43 = 0x3A656C746974;
  v44 = 0xE600000000000000;
  v24 = (v1 + v16[8]);
  v25 = v24[1];
  if (v25)
  {
    v26 = *v24;
  }

  else
  {
    v26 = 10023;
  }

  if (v25)
  {
    v27 = v24[1];
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x75746974616C202CLL;
  v29._object = 0xEB000000003A6564;
  String.append(_:)(v29);
  if (*(v1 + v16[10] + 8))
  {
    v30 = 24942;
  }

  else
  {
    v30 = Double.description.getter();
    v18 = v31;
  }

  v32 = v18;
  String.append(_:)(*&v30);

  v33._countAndFlagsBits = 0x7469676E6F6C202CLL;
  v33._object = 0xEC0000003A656475;
  String.append(_:)(v33);
  if (*(v1 + v16[11] + 8))
  {
    v34 = 0xE200000000000000;
    v35 = 24942;
  }

  else
  {
    v35 = Double.description.getter();
    v34 = v36;
  }

  v37 = v34;
  String.append(_:)(*&v35);

  v38._countAndFlagsBits = 62;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39 = v43;
  v40 = v44;
  v43 = v23;
  v44 = v22;

  v41._countAndFlagsBits = v39;
  v41._object = v40;
  String.append(_:)(v41);

  return v43;
}

uint64_t sub_10047AF70()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x656475746974616CLL;
  if (v1 != 6)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0x656C746974627573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C6F72;
  if (v1 != 2)
  {
    v5 = 0x6A6F6D45656C6F72;
  }

  if (*v0)
  {
    v2 = 1701080941;
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

uint64_t sub_10047B058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10047C544(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10047B08C(uint64_t a1)
{
  v2 = sub_10047BF40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047B0C8(uint64_t a1)
{
  v2 = sub_10047BF40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UTAlertContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10007EBC0(&qword_1006C0C70, &qword_100562CA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000244BC(a1, a1[3]);
  sub_10047BF40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for UUID();
  sub_10047C830(&qword_1006C0C80, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for UTAlertContext(0) + 20));
    v10[13] = 1;
    sub_10047BF94();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[9] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[8] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[7] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UTAlertContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v38 = sub_10007EBC0(&qword_1006C0C90, &qword_100562CB0);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UTAlertContext(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  sub_1000244BC(a1, v13);
  sub_10047BF40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(v39);
  }

  v14 = v7;
  type metadata accessor for UUID();
  v48 = 0;
  sub_10047C830(&qword_1006C0C98, &protocol conformance descriptor for UUID);
  v15 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10047AB40(v6, v12);
  v46 = 1;
  sub_10047BFE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12[v10[5]] = v47;
  v45 = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = &v12[v10[6]];
  *v17 = v16;
  v17[8] = v18 & 1;
  v44 = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = &v12[v10[7]];
  *v20 = v19;
  v20[1] = v21;
  v43 = 4;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = &v12[v10[8]];
  *v23 = v22;
  v23[1] = v24;
  v42 = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = &v12[v10[9]];
  *v26 = v25;
  v26[1] = v27;
  v41 = 6;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v12[v10[10]];
  *v29 = v28;
  v29[8] = v30 & 1;
  v40 = 7;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = *(v14 + 8);
  v33 = v31;
  LOBYTE(v14) = v34;
  v32(v9, v15);
  v35 = &v12[v10[11]];
  *v35 = v33;
  v35[8] = v14 & 1;
  sub_10047C03C(v12, v37);
  sub_100006060(v39);
  return sub_10047C0A0(v12);
}

BOOL _s6FindMy14UTAlertContextV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v11 = sub_10007EBC0(&qword_1006B22E8, &unk_100555270);
  __chkstk_darwin(v11 - 8);
  v13 = &v66 - v12;
  v15 = *(v14 + 56);
  sub_100109C84(a1, &v66 - v12);
  sub_100109C84(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100012DF0(v13, &unk_1006B20C0, &unk_100552E10);
      goto LABEL_9;
    }

LABEL_6:
    sub_100012DF0(v13, &qword_1006B22E8, &unk_100555270);
    return 0;
  }

  sub_100109C84(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_10047C830(&qword_1006B22F0, &protocol conformance descriptor for UUID);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_100012DF0(v13, &unk_1006B20C0, &unk_100552E10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = type metadata accessor for UTAlertContext(0);
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == 2)
    {
      return 0;
    }

    v24 = v20;
    if (v22)
    {
      v25 = 0xD000000000000013;
    }

    else
    {
      v25 = 0xD000000000000010;
    }

    if (v22)
    {
      v26 = "itemFollowingYou";
    }

    else
    {
      v26 = "fallback-loc-args";
    }

    if (v23)
    {
      v27 = 0xD000000000000013;
    }

    else
    {
      v27 = 0xD000000000000010;
    }

    if (v23)
    {
      v28 = "itemFollowingYou";
    }

    else
    {
      v28 = "fallback-loc-args";
    }

    if (v25 == v27 && (v26 | 0x8000000000000000) == (v28 | 0x8000000000000000))
    {

      v20 = v24;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v24;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v30 = v20[6];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v20[7];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v20;
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v40;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    return 0;
  }

  v42 = v20[8];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = v20;
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v47;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v49 = v20[9];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      return 0;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = v20;
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v54;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v56 = v20[10];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      return 0;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = v20[11];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if ((v63 & 1) == 0)
  {
    if (*v62 != *v64)
    {
      v65 = 1;
    }

    return (v65 & 1) == 0;
  }

  return (v65 & 1) != 0;
}

uint64_t sub_10047BEA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_10047BF40()
{
  result = qword_1006C0C78;
  if (!qword_1006C0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C78);
  }

  return result;
}

unint64_t sub_10047BF94()
{
  result = qword_1006C0C88;
  if (!qword_1006C0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C88);
  }

  return result;
}

unint64_t sub_10047BFE8()
{
  result = qword_1006C0CA0;
  if (!qword_1006C0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0CA0);
  }

  return result;
}

uint64_t sub_10047C03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTAlertContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C0A0(uint64_t a1)
{
  v2 = type metadata accessor for UTAlertContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10047C100()
{
  result = qword_1006C0CA8;
  if (!qword_1006C0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0CA8);
  }

  return result;
}

void sub_10047C18C(uint64_t a1)
{
  sub_1002992FC(319);
  if (v1 <= 0x3F)
  {
    sub_10047C2A0(319, &qword_1006C0D18, &type metadata for UTAlertContextMode);
    if (v2 <= 0x3F)
    {
      sub_10047C2A0(319, &qword_1006C0D20, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_10047C2A0(319, &qword_1006C1BE0, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10047C2A0(319, &unk_1006C0D28, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10047C2A0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for UTAlertContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UTAlertContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10047C440()
{
  result = qword_1006C0D70;
  if (!qword_1006C0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D70);
  }

  return result;
}

unint64_t sub_10047C498()
{
  result = qword_1006C0D78;
  if (!qword_1006C0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D78);
  }

  return result;
}

unint64_t sub_10047C4F0()
{
  result = qword_1006C0D80;
  if (!qword_1006C0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D80);
  }

  return result;
}

uint64_t sub_10047C544(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6A6F6D45656C6F72 && a2 == 0xE900000000000069 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_10047C7DC()
{
  result = qword_1006C0D88;
  if (!qword_1006C0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D88);
  }

  return result;
}

uint64_t sub_10047C830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10047C9DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_title];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v5 = UIFontWeightTrait;
  v6 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v7 = sub_10002ACDC(v6);

  [v2 setFont:v7];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v8];

  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010059AD20;
  v10._countAndFlagsBits = 0x474E4954494157;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14);

  v12 = String._bridgeToObjectiveC()();

  [v2 setText:v12];

  [v1 addSubview:v2];
  return [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator]];
}

void sub_10047CC14()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_title];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v2 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  v18 = [v1 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [v1 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [v1 leadingAnchor];
  v25 = [v0 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 48) = v26;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:v28];
}

id sub_10047D034(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMWaitingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10047D130(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  objc_msgSendSuper2(&v8, "viewWillAppear:", v2 & 1);
  v3 = [objc_opt_self() mainBundle];
  v9._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD000000000000034;
  v4._object = 0x800000010059ADB0;
  v5.value._object = 0x80000001005799E0;
  v9._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v9);

  v7 = String._bridgeToObjectiveC()();

  [v1 showActivityIndicatorWithStatus:v7];
}

double sub_10047D28C()
{
  v1 = sub_10007EBC0(&qword_1006B64E0, &qword_100554B80);
  __chkstk_darwin(v1 - 8);
  v3 = v29 - v2;
  v4 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_10007EBC0(&qword_1006B3B08, &unk_100558790);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = sub_10007EBC0(&qword_1006C0E38, &qword_100562FF8);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  __chkstk_darwin(v11);
  v14 = v29 - v13;
  v15 = sub_10007EBC0(&qword_1006C0E40, &unk_100563000);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v29[0] = v29 - v17;
  type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel(0);
  v18 = String._bridgeToObjectiveC()();
  [v0 setTitle:v18];

  FMIPDiscoveredAccessory.productInformation.getter();
  v19 = sub_1001B0BA8(v6, 1);
  sub_100012DF0(v6, &qword_1006C39A0, &unk_100558B20);
  v37 = v19;
  v20 = [objc_opt_self() mainRunLoop];
  v36 = v20;
  v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
  sub_10000905C(0, &qword_1006B2918, NSRunLoop_ptr);
  sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100110658();
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v3, &qword_1006B64E0, &qword_100554B80);

  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08, &unk_100558790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v22 = v30;
  Publisher.map<A>(_:)();
  (*(v31 + 8))(v10, v22);
  sub_10007EBC0(&qword_1006B5D38, &qword_100563010);
  sub_100004098(&qword_1006C0E48, &qword_1006C0E38, &qword_100562FF8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100004098(&qword_1006C0E50, &qword_1006B5D38, &qword_100563010, &protocol conformance descriptor for Just<A>);
  v23 = v29[0];
  v24 = v32;
  Publisher.catch<A>(_:)();
  (*(v33 + 8))(v14, v24);
  swift_allocObject();
  v25 = v29[1];
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006C0E58, &qword_1006C0E40, &unk_100563000, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v26 = v34;
  v27 = Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v23, v26);
  *(v25 + OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageFetchCancellable) = v27;

  return result;
}

id sub_10047D8B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10047D8C0()
{
  [objc_allocWithZone(UIImage) init];
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  return Just.init(_:)();
}

void sub_10047D92C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageView);

    [v5 setImage:v2];
  }
}

void sub_10047D9B4()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageView];
  [v1 addSubview:v2];

  [v2 setContentMode:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100555120;
  v4 = [v2 leadingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintGreaterThanOrEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintLessThanOrEqualToAnchor:v12];

  *(v3 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintGreaterThanOrEqualToAnchor:v17];

  *(v3 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 bottomAnchor];
  v23 = [v19 constraintLessThanOrEqualToAnchor:v22];

  *(v3 + 56) = v23;
  v24 = [v2 centerXAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 centerXAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];

  *(v3 + 64) = v28;
  v29 = [v2 centerYAnchor];
  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 centerYAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v3 + 72) = v33;
  v34 = [v2 heightAnchor];
  v35 = [v34 constraintEqualToConstant:140.0];

  *(v3 + 80) = v35;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

id sub_10047DF70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel(uint64_t a1)
{
  result = qword_1006C0EB8;
  if (!qword_1006C0EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047E0A0(uint64_t a1)
{
  result = type metadata accessor for FMProductAssetProvider();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FMIPDiscoveredAccessory();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10047E354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047E3AC()
{
  v0 = type metadata accessor for FMModernPlatterButtonEntry(0);
  sub_100005AB0(v0, qword_1006D4CC0);
  v1 = sub_100005B14(v0, qword_1006D4CC0);
  result = UUID.init()();
  *(v1 + *(v0 + 20)) = 1;
  return result;
}

double sub_10047E408@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100556540;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

Swift::Int sub_10047E424(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void sub_10047E4C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int sub_10047E554(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_10047E5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10047E64C(uint64_t a1, uint64_t a2)
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMModernPlatterButton(0);
  objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", isa, a2);

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v16 = sub_10047F294;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_100640D18;
  v7 = _Block_copy(&v12);
  v8 = v2;

  [v5 animateWithDuration:v7 animations:0.15];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_10047F29C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_100640D68;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:4 delay:v10 options:0 animations:0.25 completion:0.0];
  _Block_release(v10);
}

void sub_10047E87C(void *a1)
{
  v2 = [objc_opt_self() secondarySystemFillColor];
  [a1 setBackgroundColor:v2];
}

void sub_10047E908(uint64_t a1, uint64_t a2)
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMModernPlatterButton(0);
  objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", isa, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_11;
  }

  v6 = sub_1000F07E4(a1);
  if (v6)
  {
    v7 = v6;
    [v2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 locationInView:v2];
    v26.x = v16;
    v26.y = v17;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    if (CGRectContainsPoint(v27, v26))
    {
      if (qword_1006AED60 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for FMModernPlatterButtonEntry(0);
      v19 = sub_100005B14(v18, qword_1006D4CC0);
      (*((swift_isaMask & *v2) + 0x148))(v19, v2);
    }
  }

LABEL_11:
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v24[4] = sub_10047F278;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_100004AE4;
  v24[3] = &unk_100640CC8;
  v22 = _Block_copy(v24);
  v23 = v2;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.1];
  _Block_release(v22);
}