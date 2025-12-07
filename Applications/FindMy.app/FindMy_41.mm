void sub_1004523B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for FMDeviceCellViewModel(0);
  __chkstk_darwin(v34);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_100027C48(v22, v16, type metadata accessor for FMDeviceCellViewModel);
      sub_100027C48(v19, v12, type metadata accessor for FMDeviceCellViewModel);
      v23 = sub_1004512E4(v16, v12);
      sub_10002A160(v12, type metadata accessor for FMDeviceCellViewModel);
      sub_10002A160(v16, type metadata accessor for FMDeviceCellViewModel);
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = v33;
        sub_10032AA04(v22, v33);
        swift_arrayInitWithTakeFrontToBack();
        sub_10032AA04(v24, v19);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1004525E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v177 = a1;
  v191 = type metadata accessor for FMIPItemState();
  v8 = *(v191 - 8);
  __chkstk_darwin(v191);
  v197 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v196 = &v173 - v11;
  v12 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v12 - 8);
  v200 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v173 - v15;
  v210 = type metadata accessor for FMIPItem();
  v17 = *(v210 - 8);
  __chkstk_darwin(v210);
  v190 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v202 = &v173 - v20;
  v21 = type metadata accessor for FMDeviceCellViewModel(0);
  v192 = *(v21 - 1);
  __chkstk_darwin(v21);
  v179 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v207 = &v173 - v24;
  __chkstk_darwin(v25);
  v211 = &v173 - v26;
  __chkstk_darwin(v27);
  v201 = &v173 - v28;
  __chkstk_darwin(v29);
  v184 = &v173 - v30;
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v175 = &v173 - v33;
  __chkstk_darwin(v34);
  v194 = a3;
  v37 = a3[1];
  if (v37 >= 1)
  {
    v174 = &v173 - v35;
    v183 = v36;
    v38 = 0;
    v203 = (v17 + 48);
    v199 = (v17 + 32);
    v188 = (v8 + 8);
    v198 = (v17 + 8);
    v39 = _swiftEmptyArrayStorage;
    v176 = a4;
    v204 = v16;
    v40 = v210;
    v208 = v21;
    while (1)
    {
      v41 = v38;
      v182 = v39;
      v178 = v38;
      if ((v38 + 1) >= v37)
      {
        v57 = (v38 + 1);
        v56 = v201;
        goto LABEL_26;
      }

      v189 = v37;
      v42 = *v194;
      v43 = *(v192 + 72);
      v44 = v38;
      v45 = *v194 + v43 * (v38 + 1);
      v46 = v174;
      sub_100027C48(v45, v174, type metadata accessor for FMDeviceCellViewModel);
      v17 = v175;
      sub_100027C48(v42 + v43 * v44, v175, type metadata accessor for FMDeviceCellViewModel);
      LODWORD(v209) = sub_1004512E4(v46, v17);
      if (v5)
      {
        sub_10002A160(v17, type metadata accessor for FMDeviceCellViewModel);
        sub_10002A160(v46, type metadata accessor for FMDeviceCellViewModel);
        goto LABEL_147;
      }

      v193 = 0;
      sub_10002A160(v17, type metadata accessor for FMDeviceCellViewModel);
      sub_10002A160(v46, type metadata accessor for FMDeviceCellViewModel);
      v47 = v44 + 2;
      v206 = v43;
      v48 = v42 + v43 * (v44 + 2);
      v49 = v189;
      do
      {
        if (v49 == v47)
        {
          goto LABEL_10;
        }

        v50 = v183;
        sub_100027C48(v48, v183, type metadata accessor for FMDeviceCellViewModel);
        v51 = v184;
        sub_100027C48(v45, v184, type metadata accessor for FMDeviceCellViewModel);
        v52 = v193;
        v53 = sub_1004512E4(v50, v51);
        v193 = v52;
        if (v52)
        {
          sub_10002A160(v51, type metadata accessor for FMDeviceCellViewModel);
          sub_10002A160(v50, type metadata accessor for FMDeviceCellViewModel);

          return;
        }

        v54 = v53;
        v55 = v51;
        v17 = type metadata accessor for FMDeviceCellViewModel;
        sub_10002A160(v55, type metadata accessor for FMDeviceCellViewModel);
        sub_10002A160(v50, type metadata accessor for FMDeviceCellViewModel);
        ++v47;
        v48 += v206;
        v45 += v206;
      }

      while (((v209 ^ v54) & 1) == 0);
      v189 = (v47 - 1);
LABEL_10:
      v5 = v193;
      a4 = v176;
      v40 = v210;
      v56 = v201;
      v41 = v178;
      if ((v209 & 1) == 0)
      {
LABEL_25:
        v57 = v189;
        goto LABEL_26;
      }

      v57 = v189;
      if (v189 < v178)
      {
        goto LABEL_170;
      }

      if (v178 < v189)
      {
        v17 = v206 * (v189 - 1);
        v58 = v189 * v206;
        v59 = v189;
        v60 = v206;
        v61 = v178;
        v62 = v178 * v206;
        do
        {
          if (v61 != --v59)
          {
            v63 = *v194;
            if (!*v194)
            {
              goto LABEL_174;
            }

            sub_10032AA04(v63 + v62, v179);
            if (v62 < v17 || v63 + v62 >= (v63 + v58))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10032AA04(v179, v63 + v17);
            v16 = v204;
            v41 = v178;
          }

          ++v61;
          v17 -= v60;
          v58 -= v60;
          v62 += v60;
        }

        while (v61 < v59);
        v5 = v193;
        a4 = v176;
        v40 = v210;
        v21 = v208;
        goto LABEL_25;
      }

LABEL_26:
      v64 = v194[1];
      if (v57 >= v64)
      {
        goto LABEL_38;
      }

      v189 = v57;
      if (__OFSUB__(v57, v41))
      {
        goto LABEL_166;
      }

      if (v57 - v41 >= a4)
      {
        v57 = v189;
LABEL_38:
        if (v57 < v41)
        {
          goto LABEL_165;
        }

        goto LABEL_39;
      }

      if (__OFADD__(v41, a4))
      {
        break;
      }

      if (&v41[a4] >= v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = &v41[a4];
      }

      if (v65 < v41)
      {
        goto LABEL_169;
      }

      if (v189 == v65)
      {
        v57 = v189;
        if (v189 < v41)
        {
          goto LABEL_165;
        }

        goto LABEL_39;
      }

      v193 = v5;
      v111 = *v194;
      v112 = *(v192 + 72);
      v113 = *v194 + v112 * (v189 - 1);
      v205 = -v112;
      v206 = v111;
      v114 = &v41[-v189];
      v180 = v112;
      v115 = v111 + v189 * v112;
      v181 = v65;
      while (2)
      {
        v185 = v115;
        v186 = v114;
        v116 = v114;
        v187 = v113;
        while (2)
        {
          sub_100027C48(v115, v56, type metadata accessor for FMDeviceCellViewModel);
          v117 = v211;
          sub_100027C48(v113, v211, type metadata accessor for FMDeviceCellViewModel);
          v118 = v21[15];
          v119 = *(v56 + v118);
          v120 = *(v117 + v118);
          if (v119 != v120)
          {
            v122 = v119 < v120;
            goto LABEL_123;
          }

          v209 = v116;
          sub_1001104A8(v56 + v21[6], v16);
          v121 = *v203;
          if ((*v203)(v16, 1, v40) == 1)
          {
            sub_100012DF0(v16, &qword_1006B07D0, qword_100552820);
            goto LABEL_99;
          }

          v123 = v40;
          v124 = *v199;
          v125 = v202;
          (*v199)(v202, v16, v123);
          v126 = v211 + v21[6];
          v127 = v200;
          sub_1001104A8(v126, v200);
          if (v121(v127, 1, v123) == 1)
          {
            (*v198)(v125, v123);
            sub_100012DF0(v127, &qword_1006B07D0, qword_100552820);
            v56 = v201;
            v16 = v204;
            v21 = v208;
            v116 = v209;
            goto LABEL_103;
          }

          v136 = v123;
          v137 = v190;
          v124(v190, v127, v136);
          v138 = v196;
          FMIPItem.state.getter();
          v139 = v137;
          v140 = v197;
          static FMIPItemState.isBTConnected.getter();
          v141 = sub_10000A5D0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
          v142 = v191;
          v195 = v141;
          v143 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v144 = *v188;
          (*v188)(v140, v142);
          v144(v138, v142);
          if (v143)
          {
            v145 = v196;
            FMIPItem.state.getter();
            v146 = v197;
            static FMIPItemState.isBTConnected.getter();
            v147 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v144(v146, v142);
            v144(v145, v142);
            v148 = *v198;
            v149 = v210;
            (*v198)(v139, v210);
            v148(v202, v149);
            v16 = v204;
            v21 = v208;
            v116 = v209;
            v56 = v201;
            if (v147)
            {
LABEL_120:
              v150 = (v56 + v21[17]);
              v151 = v150[1];
              v152 = *(v56 + 16);
              v153 = *(v56 + 24);
              v214 = *v150;
              v215 = v151;

              v154._countAndFlagsBits = v152;
              v154._object = v153;
              String.append(_:)(v154);
              v156 = v214;
              v155 = v215;
              v157 = (v211 + v208[17]);
              v158 = v157[1];
              v159 = *(v211 + 16);
              v160 = *(v211 + 24);
              v214 = *v157;
              v215 = v158;

              v161._countAndFlagsBits = v159;
              v161._object = v160;
              String.append(_:)(v161);
              v162 = v214;
              v163 = v215;
              v214 = v156;
              v215 = v155;
              v21 = v208;
              v212 = v162;
              v213 = v163;
              sub_100035F3C();
              v164 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              v16 = v204;

              v122 = v164 == -1;
              goto LABEL_123;
            }
          }

          else
          {
            v166 = *v198;
            v167 = v210;
            (*v198)(v139, v210);
            v166(v202, v167);
            v16 = v204;
            v21 = v208;
            v56 = v201;
LABEL_99:
            v116 = v209;
          }

LABEL_103:
          v128 = v21[14];
          v129 = round(*(v56 + v128));
          v130 = v129 > -9.22337204e18;
          if (v129 >= 9.22337204e18)
          {
            v130 = 0;
          }

          if (v130)
          {
            v131 = 30 * (v129 / 30);
          }

          else
          {
            v131 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v132 = round(*(v211 + v128));
          if (v132 > -9.22337204e18 && v132 < 9.22337204e18)
          {
            v134 = 30 * (v132 / 30);
            if (v131 == v134)
            {
              goto LABEL_120;
            }

            if (v130)
            {
              v135 = 30 * (v129 / 30);
              goto LABEL_122;
            }

LABEL_121:
            v135 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_122;
          }

          v134 = 0x7FFFFFFFFFFFFFFFLL;
          if (v131 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_120;
          }

          if (!v130)
          {
            goto LABEL_121;
          }

          v135 = 30 * (v129 / 30);
          v134 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_122:
          v122 = v135 < v134;
LABEL_123:
          v17 = type metadata accessor for FMDeviceCellViewModel;
          sub_10002A160(v211, type metadata accessor for FMDeviceCellViewModel);
          sub_10002A160(v56, type metadata accessor for FMDeviceCellViewModel);
          if (v122)
          {
            if (!v206)
            {
              goto LABEL_171;
            }

            v17 = v207;
            sub_10032AA04(v115, v207);
            swift_arrayInitWithTakeFrontToBack();
            sub_10032AA04(v17, v113);
            v113 += v205;
            v115 += v205;
            v165 = __CFADD__(v116++, 1);
            v40 = v210;
            if (v165)
            {
              goto LABEL_94;
            }

            continue;
          }

          break;
        }

        v40 = v210;
LABEL_94:
        v113 = v187 + v180;
        v114 = v186 - 1;
        v115 = v185 + v180;
        v57 = v181;
        if (++v189 != v181)
        {
          continue;
        }

        break;
      }

      v5 = v193;
      v41 = v178;
      if (v181 < v178)
      {
        goto LABEL_165;
      }

LABEL_39:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v39 = v182;
      }

      else
      {
        v39 = sub_10008B8B8(0, *(v182 + 2) + 1, 1, v182);
      }

      v67 = *(v39 + 2);
      v66 = *(v39 + 3);
      v17 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        v39 = sub_10008B8B8((v66 > 1), v67 + 1, 1, v39);
      }

      *(v39 + 2) = v17;
      v68 = &v39[16 * v67];
      *(v68 + 4) = v41;
      *(v68 + 5) = v57;
      if (!*v177)
      {
        goto LABEL_175;
      }

      v38 = v57;
      if (v67)
      {
        v40 = v210;
        v69 = *v177;
        while (1)
        {
          v70 = v17 - 1;
          if (v17 >= 4)
          {
            break;
          }

          if (v17 == 3)
          {
            v71 = *(v39 + 4);
            v72 = *(v39 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_59:
            if (v74)
            {
              goto LABEL_154;
            }

            v87 = &v39[16 * v17];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_157;
            }

            v93 = &v39[16 * v70 + 32];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_160;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_161;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                v70 = v17 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v97 = &v39[16 * v17];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_73:
          if (v92)
          {
            goto LABEL_156;
          }

          v100 = &v39[16 * v70];
          v102 = *(v100 + 4);
          v101 = *(v100 + 5);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_159;
          }

          if (v103 < v91)
          {
            goto LABEL_90;
          }

LABEL_80:
          v108 = v70 - 1;
          if (v70 - 1 >= v17)
          {
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
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            v168 = sub_10025EFD4(v17);
            goto LABEL_136;
          }

          if (!*v194)
          {
            goto LABEL_172;
          }

          v41 = v39;
          v17 = *&v39[16 * v108 + 32];
          v109 = *&v39[16 * v70 + 40];
          sub_100453804(*v194 + *(v192 + 72) * v17, *v194 + *(v192 + 72) * *&v39[16 * v70 + 32], *v194 + *(v192 + 72) * v109, v69);
          if (v5)
          {
            goto LABEL_147;
          }

          if (v109 < v17)
          {
            goto LABEL_150;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_10025EFD4(v41);
          }

          if (v108 >= *(v41 + 2))
          {
            goto LABEL_151;
          }

          v110 = &v41[16 * v108];
          *(v110 + 4) = v17;
          *(v110 + 5) = v109;
          v216 = v41;
          sub_10025EF48(v70);
          v39 = v216;
          v17 = *(v216 + 2);
          v16 = v204;
          v40 = v210;
          if (v17 <= 1)
          {
            goto LABEL_90;
          }
        }

        v75 = &v39[16 * v17 + 32];
        v76 = *(v75 - 64);
        v77 = *(v75 - 56);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_152;
        }

        v80 = *(v75 - 48);
        v79 = *(v75 - 40);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_153;
        }

        v82 = &v39[16 * v17];
        v84 = *v82;
        v83 = *(v82 + 1);
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_155;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_158;
        }

        if (v86 >= v78)
        {
          v104 = &v39[16 * v70 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_164;
          }

          if (v73 < v107)
          {
            v70 = v17 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

      v40 = v210;
LABEL_90:
      v37 = v194[1];
      a4 = v176;
      if (v38 >= v37)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_133:
  v41 = *v177;
  if (*v177)
  {
    v17 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_167;
    }

    v168 = v17;
LABEL_136:
    v216 = v168;
    v17 = *(v168 + 2);
    if (v17 < 2)
    {
LABEL_147:

      return;
    }

    while (*v194)
    {
      v169 = *&v168[16 * v17];
      v170 = v168;
      v171 = *&v168[16 * v17 + 24];
      sub_100453804(*v194 + *(v192 + 72) * v169, *v194 + *(v192 + 72) * *&v168[16 * v17 + 16], *v194 + *(v192 + 72) * v171, v41);
      if (v5)
      {
        goto LABEL_147;
      }

      if (v171 < v169)
      {
        goto LABEL_162;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_10025EFD4(v170);
      }

      if (v17 - 2 >= *(v170 + 2))
      {
        goto LABEL_163;
      }

      v172 = &v170[16 * v17];
      *v172 = v169;
      *(v172 + 1) = v171;
      v216 = v170;
      sub_10025EF48(v17 - 1);
      v168 = v216;
      v17 = *(v216 + 2);
      if (v17 <= 1)
      {
        goto LABEL_147;
      }
    }

    goto LABEL_173;
  }

LABEL_176:
  __break(1u);
}

void sub_100453804(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for FMDeviceCellViewModel(0);
  __chkstk_darwin(v63);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_64;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v22 = (a2 - a1) / v20;
  v66 = a1;
  v65 = a4;
  v62 = v20;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    v58 = v16;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v11;
    }

    else
    {
      v26 = v11;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v35 = a4 + v25;
    v36 = v4;
    if (v25 >= 1)
    {
      v37 = -v62;
      v38 = a4 + v25;
      v55 = a4;
      v56 = a1;
      v54 = -v62;
      do
      {
        v52 = v35;
        v39 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v66 = a2;
            v64 = v52;
            goto LABEL_62;
          }

          v61 = a3;
          v62 = v38;
          v53 = v35;
          v60 = (v38 + v37);
          sub_100027C48(v38 + v37, v26, type metadata accessor for FMDeviceCellViewModel);
          v42 = v26;
          v43 = v58;
          sub_100027C48(v39, v58, type metadata accessor for FMDeviceCellViewModel);
          v44 = sub_1004512E4(v42, v43);
          if (v36)
          {
            sub_10002A160(v43, type metadata accessor for FMDeviceCellViewModel);
            sub_10002A160(v42, type metadata accessor for FMDeviceCellViewModel);
            v66 = v57;
            v64 = v53;
            goto LABEL_62;
          }

          v45 = v44;
          v59 = 0;
          v46 = v39;
          v47 = v61;
          v48 = v61 + v37;
          sub_10002A160(v43, type metadata accessor for FMDeviceCellViewModel);
          sub_10002A160(v42, type metadata accessor for FMDeviceCellViewModel);
          v26 = v42;
          if (v45)
          {
            break;
          }

          v49 = v60;
          v35 = v60;
          a3 = v47 + v37;
          if (v47 < v62 || v48 >= v62)
          {
            v40 = v60;
            swift_arrayInitWithTakeFrontToBack();
            v35 = v40;
            v39 = v46;
            v36 = v59;
          }

          else
          {
            v50 = v47 == v62;
            v39 = v46;
            v36 = v59;
            if (!v50)
            {
              v51 = v60;
              swift_arrayInitWithTakeBackToFront();
              v35 = v51;
            }
          }

          v38 = v35;
          a1 = v56;
          v41 = v49 > v55;
          v37 = v54;
          a2 = v57;
          if (!v41)
          {
            goto LABEL_58;
          }
        }

        a3 = v47 + v37;
        if (v47 < v57 || v48 >= v57)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v59;
          v37 = v54;
        }

        else
        {
          a2 = v46;
          v36 = v59;
          v37 = v54;
          if (v47 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v62;
        v35 = v53;
      }

      while (v62 > v55);
    }

LABEL_58:
    v66 = a2;
    v64 = v35;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v4;
    }

    else
    {
      v24 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v61 = a4 + v23;
    v64 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v28 = v62;
      v59 = v18;
      v60 = v14;
      while (1)
      {
        v29 = a3;
        sub_100027C48(a2, v18, type metadata accessor for FMDeviceCellViewModel);
        sub_100027C48(a4, v14, type metadata accessor for FMDeviceCellViewModel);
        v30 = sub_1004512E4(v18, v14);
        if (v24)
        {
          break;
        }

        v31 = v30;
        v32 = v14;
        v33 = a4;
        sub_10002A160(v32, type metadata accessor for FMDeviceCellViewModel);
        sub_10002A160(v18, type metadata accessor for FMDeviceCellViewModel);
        if (v31)
        {
          v34 = a2 + v28;
          if (a1 < a2 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v34;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v34;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v33 + v28;
        }

        v14 = v60;
        v28 = v62;
        a1 += v62;
        v66 = a1;
        v18 = v59;
        if (a4 >= v61 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10002A160(v14, type metadata accessor for FMDeviceCellViewModel);
      sub_10002A160(v18, type metadata accessor for FMDeviceCellViewModel);
    }
  }

LABEL_62:
  sub_10025F138(&v66, &v65, &v64);
}

uint64_t sub_100453E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "FMMultipartEntityListDataSource: didUpdate %ld devices", v15, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = sub_100454438;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FB78;
  v18 = _Block_copy(aBlock);

  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v21);
}

void sub_100454204(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = FMIPDevice.debugDescription.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100005B4C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMultipartEntityListDataSource: didUpdate single device %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_100454440(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0, &unk_100558FA0);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v6 + 4) = v8;
    v7->super.isa = v8.super.isa;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMMultipartEntityListDataSource: itemAger itemsDidAge %@", v6, 0xCu);
    sub_100012DF0(v7, &unk_1006AF760, &qword_100552DB0);
  }

  v9 = *(v2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator);

  v10 = FMIPManager.devices.getter();

  v11 = *(*(v9 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v12 = v11;
  sub_10044E91C(v10, v11, 0);
}

char *sub_100454620(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v44 = a1;
  v4 = type metadata accessor for FMIPDevice();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v46);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v39 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_deviceSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_locationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v2[v14] = sub_10002BE70();
  v40 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updateQueue;
  v39 = sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_10000A5D0(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0, &unk_100550420);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0, &unk_100550420);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  v15 = v43;
  v16 = v44;
  *&v2[v40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delayedUpdateWorkItem] = 0;
  v17 = &v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource__listTitle];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled] = 0;
  v18 = &v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_listSubtitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator] = v16;
  v19 = v47;
  *&v3[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_tableView] = v47;
  v20 = *(v16 + 56);
  v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v22 = v20 + v21;
  v23 = v45;
  sub_100027C48(v22, v15, type metadata accessor for FMSelectedSection);
  sub_100027C48(v15, v23, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v25 = v48;
    v24 = v49;
    v26 = v50;
    (*(v49 + 32))(v48, v23, v50);
    (*(v24 + 16))(&v3[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_selectedDevice], v25, v26);
    v27 = type metadata accessor for FMMultipartEntityListDataSource(0);
    v51.receiver = v3;
    v51.super_class = v27;

    v28 = v19;
    v29 = objc_msgSendSuper2(&v51, "init");
    sub_10007EBC0(&unk_1006BBCD0, &qword_10055D928);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = v29;
    v32 = String._bridgeToObjectiveC()();
    [v28 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v32];

    *(*&v31[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_itemAger] + 24) = &off_10063FA70;
    swift_unknownObjectWeakAssign();

    sub_10044FD80();
    v33 = FMIPManager.devices.getter();
    v34 = *(*(v16 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v35 = v34;
    sub_10044E91C(v33, v34, 0);

    (*(v24 + 8))(v25, v26);
    sub_10002A160(v15, type metadata accessor for FMSelectedSection);
    return v31;
  }

  else
  {

    v37 = v19;
    sub_10002A160(v23, type metadata accessor for FMSelectedSection);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(95);
    v38._countAndFlagsBits = 0xD00000000000005DLL;
    v38._object = 0x8000000100599E10;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100454D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0, CLLocation_ptr);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v15 + 4) = v17;
    v16->super.isa = v17.super.isa;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMMultipartEntityListDataSource: locationProvider didUpdate locations %@", v15, 0xCu);
    sub_100012DF0(v16, &unk_1006AF760, &qword_100552DB0);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a1;
  aBlock[4] = sub_10045513C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FBC8;
  v20 = _Block_copy(aBlock);

  v21 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v23);
}

void sub_100455144()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_10044F284(v4, v0 + v2, v5, v7, v8);
}

double sub_1004551E8()
{
  type metadata accessor for FMIPDevice();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_10044F938(v1, v2);
}

id sub_1004552A0(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v6 = [objc_allocWithZone(FMRelativeDateFormatter) init];
    [v6 setFormattingContext:a2];
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100455328()
{
  v1 = v0;
  v2 = [v0 layer];
  v63 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v64 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v5 = _UISheetCornerRadius;
  v6 = 26.0;
  if ((v4 & 1) == 0)
  {
    v6 = _UISheetCornerRadius;
  }

  [v2 setCornerRadius:v6];

  v7 = [v1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v3;
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100006060(v62);
  if (v8)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v9 = [v1 traitCollection];
    v10 = sub_100356E0C(v9);

    [v1 setBackgroundColor:v10];
    [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView]];
  }

  else
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v11 = [v1 traitCollection];
    v12 = sub_100356E0C(v11);

    [v1 setBackgroundColor:v12];
    v13 = [v1 layer];
    [v13 setShouldRasterize:1];

    v14 = [v1 layer];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];
    v17 = v16;

    [v14 setRasterizationScale:v17];
    v18 = [v1 layer];
    v19 = [objc_opt_self() blackColor];
    v20 = [v19 CGColor];

    [v18 setShadowColor:v20];
    v21 = [v1 layer];
    LODWORD(v22) = 1031127695;
    [v21 setShadowOpacity:v22];

    v23 = [v1 layer];
    [v23 setShadowRadius:16.0];

    v24 = [v1 layer];
    [v24 setShadowOffset:{0.0, 0.0}];
  }

  v25 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView];
  v26 = [v25 layer];
  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v3;
  v27 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v28 = 26.0;
  if ((v27 & 1) == 0)
  {
    v28 = v5;
  }

  [v26 setCornerRadius:v28];

  v29 = [v25 layer];
  [v29 setCornerCurve:kCACornerCurveContinuous];

  v30 = [v25 layer];
  [v30 setMasksToBounds:1];

  [v1 addSubview:v25];
  v60 = objc_opt_self();
  v31 = [v60 clearColor];
  [v25 setBackgroundColor:v31];

  v61 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView];
  [v61 setAxis:1];
  v32 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  v33 = [v32 titleLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v34 setFont:v35];
  }

  v36 = [v32 titleLabel];
  [v36 setAdjustsFontForContentSizeCategory:1];

  [v32 setContentHorizontalAlignment:4];
  [v32 addTarget:v1 action:"handleAction" forControlEvents:64];
  v37 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton];
  v38 = [v37 titleLabel];
  if (v38)
  {
    v39 = v38;
    v40 = UIFontTextStyleBody;
    v41 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v39 setFont:v41];
  }

  else
  {
    v40 = UIFontTextStyleBody;
  }

  v42 = [v37 titleLabel];
  [v42 setAdjustsFontForContentSizeCategory:1];

  [v37 setContentHorizontalAlignment:4];
  [v37 addTarget:v1 action:"handleSecondaryAction" forControlEvents:64];
  v43 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v58 = objc_opt_self();
  v44 = [v58 preferredFontForTextStyle:v40];
  v45 = sub_100039388(0x8000);

  v46 = sub_100039388(2);
  [v43 setFont:v46];

  [v43 setNumberOfLines:0];
  v59 = v37;
  v47 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator];
  v48 = [v60 labelColor];
  v49 = [v48 colorWithAlphaComponent:0.1];

  [v47 setBackgroundColor:v49];
  v50 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator];
  v51 = [v60 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.1];

  [v50 setBackgroundColor:v52];
  [v25 addSubview:*&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView]];
  [v25 addSubview:v43];
  v53 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel];
  v54 = [v58 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v53 setFont:v54];

  v55 = [v60 secondaryLabelColor];
  [v53 setTextColor:v55];

  [v53 setNumberOfLines:0];
  sub_1000D5EB8();
  [v25 addSubview:v53];
  v56 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  [v56 setSpacing:*&qword_1006D4750];
  [v56 setAxis:1];
  [v56 addArrangedSubview:v32];
  [v56 addArrangedSubview:v50];
  [v56 addArrangedSubview:v59];
  [v32 setHidden:1];
  [v50 setHidden:1];
  [v59 setHidden:1];
  [v25 addSubview:v47];
  [v25 addSubview:v61];
  return [v25 addSubview:v56];
}

void sub_100455CF8()
{
  v175 = &type metadata for SolariumFeatureFlag;
  v167 = sub_10000BD04();
  v176 = v167;
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v174);
  v2 = 16.0;
  if ((v1 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
LABEL_32:
      swift_once();
    }

    v2 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005568E0;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
  *(inited + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  *(inited + 40) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel];
  *(inited + 48) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator];
  *(inited + 56) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator];
  *(inited + 64) = v8;
  v9 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  *(inited + 72) = v9;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton];
  *(inited + 80) = v10;
  v11 = v0;
  v12 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView];
  *(inited + 88) = v12;
  v170 = *&v11[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView];
  *(inited + 96) = v170;
  v168 = v11;
  v171 = *&v11[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView];
  *(inited + 104) = v171;
  v164 = v4;
  v169 = v5;
  v162 = v6;
  v165 = v7;
  v166 = v8;
  v13 = v9;
  v163 = v10;
  v14 = v12;
  v15 = v170;
  v0 = v171;
  for (i = 4; i != 14; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((i - 4) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v17 = *(inited + 8 * i);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v160 = v0;
  v161 = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
  v175 = &type metadata for SolariumFeatureFlag;
  v176 = v167;
  v19 = isFeatureEnabled(_:)();
  sub_100006060(v174);
  p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  if (v19)
  {
    v21 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v172 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1005521F0;
    v23 = [v21 topAnchor];
    v24 = [v168 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v22 + 32) = v25;
    v26 = [v21 bottomAnchor];
    v27 = [v168 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v22 + 40) = v28;
    v29 = [v21 leadingAnchor];
    v30 = [v168 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v22 + 48) = v31;
    v32 = [v21 trailingAnchor];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v33 = [v168 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v22 + 56) = v34;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v172 activateConstraints:isa];
  }

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1005521F0;
  v38 = [v15 p_ivar_lyt[429]];
  v39 = [v168 p_ivar_lyt[429]];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [v15 bottomAnchor];
  v42 = [v168 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v37 + 40) = v43;
  v44 = [v15 leadingAnchor];
  v45 = [v168 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v37 + 48) = v46;
  v47 = [v15 trailingAnchor];
  v48 = [v168 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v37 + 56) = v49;
  sub_10002B27C();
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v173 = v36;
  [v36 activateConstraints:v50];

  v51 = [v164 image];
  if (v51)
  {

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100552EF0;
    v53 = [v164 p_ivar_lyt[429]];
    v54 = [v168 p_ivar_lyt[429]];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v2];

    *(v52 + 32) = v55;
    v56 = [v164 leadingAnchor];
    v57 = [v168 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:14.0];

    *(v52 + 40) = v58;
    v59 = [v164 trailingAnchor];
    v60 = [v168 trailingAnchor];
    v61 = [v59 constraintLessThanOrEqualToAnchor:v60 constant:-v2];

    *(v52 + 48) = v61;
    v62 = Array._bridgeToObjectiveC()().super.isa;

    [v36 activateConstraints:v62];

    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100552EF0;
    v64 = [v169 p_ivar_lyt[429]];
    v65 = [v164 bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:10.0];

    *(v63 + 32) = v66;
    v67 = [v169 leadingAnchor];
    v68 = [v168 leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:v2];

    *(v63 + 40) = v69;
    v70 = [v169 trailingAnchor];
    v71 = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100552EF0;
    v73 = [v169 p_ivar_lyt[429]];
    v74 = [v168 p_ivar_lyt[429]];
    v75 = [v73 constraintEqualToAnchor:v74 constant:v2];

    *(v63 + 32) = v75;
    v76 = [v169 leadingAnchor];
    v77 = [v168 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:v2];

    *(v63 + 40) = v78;
    v70 = [v169 trailingAnchor];
    v71 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v72 = [v168 trailingAnchor];
  v79 = [v70 constraintEqualToAnchor:v72 constant:-v2];

  *(v63 + 48) = v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v173 v71[436]];

  v175 = &type metadata for SolariumFeatureFlag;
  v176 = v167;
  LOBYTE(v80) = isFeatureEnabled(_:)();
  sub_100006060(v174);
  if (v80)
  {
    v81 = -v2;
    v82 = v2;
  }

  else
  {
    v81 = 0.0;
    if (v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator])
    {
      v82 = 0.0;
    }

    else
    {
      v82 = v2;
    }
  }

  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100555120;
  v84 = [v162 topAnchor];
  v85 = [v169 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:2.0];

  *(v83 + 32) = v86;
  v87 = [v162 leadingAnchor];
  v88 = [v169 leadingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v83 + 40) = v89;
  v90 = [v162 trailingAnchor];
  v91 = [v169 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v83 + 48) = v92;
  v93 = [v165 topAnchor];
  v94 = [v162 bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:15.0];

  *(v83 + 56) = v95;
  v96 = [v165 leadingAnchor];
  v97 = [v168 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v82];

  *(v83 + 64) = v98;
  v99 = [v165 trailingAnchor];
  v100 = [v168 trailingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:v81];

  *(v83 + 72) = v101;
  v102 = [v165 heightAnchor];
  v103 = [v102 constraintEqualToConstant:1.0];

  *(v83 + 80) = v103;
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = v83;

  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1005521F0;
  v105 = [v165 leadingAnchor];
  v106 = [v168 leadingAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:v82];

  *(v104 + 32) = v107;
  v108 = [v165 trailingAnchor];
  v109 = [v168 trailingAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:v81];

  *(v104 + 40) = v110;
  v111 = [v165 topAnchor];
  v112 = [v169 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:15.0];

  *(v104 + 48) = v113;
  v114 = [v165 heightAnchor];
  v115 = [v114 constraintEqualToConstant:1.0];

  *(v104 + 56) = v115;
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = v104;

  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v173 deactivateConstraints:v116];

  v117 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v117];

  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100552EF0;
  v119 = [v14 topAnchor];
  v120 = [v165 bottomAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];

  *(v118 + 32) = v121;
  v122 = [v14 leadingAnchor];
  v123 = [v168 leadingAnchor];
  v124 = [v122 constraintEqualToAnchor:v123 constant:v2];

  *(v118 + 40) = v124;
  v125 = [v14 trailingAnchor];
  v126 = [v168 trailingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-v2];

  *(v118 + 48) = v127;
  v128 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v128];

  v129 = [v160 topAnchor];
  v130 = [v14 bottomAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:8.0];

  v132 = [v160 bottomAnchor];
  v133 = [v168 bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:-12.0];

  v135 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint];
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = v131;
  v136 = v131;

  v137 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint];
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = v134;
  v138 = v134;

  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_100552F00;
  *(v139 + 32) = v136;
  v140 = v136;
  v141 = [v160 leadingAnchor];
  v142 = [v168 leadingAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:v2];

  *(v139 + 40) = v143;
  v144 = [v160 trailingAnchor];
  v145 = [v168 trailingAnchor];
  v146 = [v144 constraintEqualToAnchor:v145 constant:-v2];

  *(v139 + 48) = v146;
  *(v139 + 56) = v138;
  v147 = v138;
  v148 = [v166 heightAnchor];
  v149 = [v148 constraintEqualToConstant:1.0];

  *(v139 + 64) = v149;
  v150 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v150];

  v151 = [v161 titleLabel];
  if (v151)
  {
    v152 = v151;
    v153 = [v151 text];

    v154 = v163;
    if (v153)
    {

      v155 = 0;
    }

    else
    {
      v155 = 1;
    }
  }

  else
  {
    v155 = 1;
    v154 = v163;
  }

  v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = v155;
  sub_1004571E0();
  v156 = [v154 titleLabel];
  if (v156 && (v157 = v156, v158 = [v156 text], v157, v158))
  {

    v159 = 0;
  }

  else
  {
    v159 = 1;
  }

  v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = v159;
  sub_1004571E0();
}

id sub_1004571E0()
{
  v1 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden;
  if (*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden);
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator) setHidden:v2];
  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton) setHidden:*(v0 + v1)];
  v3 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden;
  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton) setHidden:*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden)];
  if (*(v0 + v1) == 1 && *(v0 + v3) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint);
    if (v4)
    {
      [v4 setConstant:0.0];
    }

    result = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint);
    if (result)
    {
      v6 = -3.0;
LABEL_14:

      return [result setConstant:v6];
    }
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint);
    if (v7)
    {
      [v7 setConstant:8.0];
    }

    result = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint);
    if (result)
    {
      v6 = -12.0;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_100457338()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel);

  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = objc_opt_self();
  sub_10002B27C();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v5];
}

id sub_100457618(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPlatterImageAndButtonGroupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004577A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *(v1 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *(v1 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *(v1 + v5) = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v7 = objc_opt_self();
  *(v1 + v6) = [v7 buttonWithType:1];
  v8 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *(v1 + v8) = [v7 buttonWithType:1];
  v9 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *(v1 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *(v1 + v11) = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v13 = type metadata accessor for FMPlatterBackgroundView();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *(v1 + v16) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden) = 1;
  v17 = (v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100457A64()
{
  if (*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar])
  {
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }

    v1 = *&xmmword_1006D4380;
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 2)
    {
      v4 = *&xmmword_1006D43C0 - v1;
    }

    else
    {
      v4 = -v1;
    }
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint];

  return [v5 setConstant:v4];
}

id sub_100457B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100457C94()
{
  result = qword_1006C04B0;
  if (!qword_1006C04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C04B0);
  }

  return result;
}

unint64_t sub_100457CEC()
{
  result = qword_1006C04B8;
  if (!qword_1006C04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C04B8);
  }

  return result;
}

id sub_100457D40(void *a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  v4 = *&v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5 = a1;

  v12[3] = &type metadata for SolariumFeatureFlag;
  v12[4] = sub_10000BD04();
  LOBYTE(v4) = isFeatureEnabled(_:)();
  result = sub_100006060(v12);
  if (v4)
  {
    v7 = 0.0;
    if (*v3)
    {
      v8 = *v3;
      [v8 removeFromSuperview];
      [v2 addSubview:v8];
      sub_1000419C8();

      if (*v3)
      {
        if (qword_1006AEBA8 != -1)
        {
          swift_once();
        }

        v9 = *&xmmword_1006D4380;
        v10 = [v2 traitCollection];
        v11 = [v10 horizontalSizeClass];

        if (v11 == 2)
        {
          v7 = *&xmmword_1006D43C0 - v9;
        }

        else
        {
          v7 = -v9;
        }
      }
    }

    return [*&v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint] setConstant:v7];
  }

  return result;
}

void sub_100457EA0()
{
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 0;
  v1 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground;
  *(v0 + v2) = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber;
  *(v0 + v4) = [objc_allocWithZone(_UIGrabber) init];
  v5 = (v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle) = 2;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_100457FF8(uint64_t a1, unint64_t a2, Class isa)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {

    if (!a2)
    {
      v14 = 0;
      if (!isa)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_7:
    v14 = String._bridgeToObjectiveC()();
    if (!isa)
    {
LABEL_9:
      v15 = type metadata accessor for FMApplication();
      v18.receiver = v4;
      v18.super_class = v15;
      v16 = objc_msgSendSuper2(&v18, "runTest:options:", v14, isa);

      return v16;
    }

LABEL_8:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  result = swift_slowAlloc();
  v17 = result;
  *v11 = 136315138;
  if (a2)
  {
    v13 = result;
    *(v11 + 4) = sub_100005B4C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "FMApplication: runTest: %s ", v11, 0xCu);
    sub_100006060(v13);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_10045828C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100458380(void *a1)
{
  v2 = v1;
  v24 = &type metadata for SolariumFeatureFlag;
  v25 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(&v22);
  if (v4)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4)
  {
    v6 = "SEARCH_BAR_PLACEHOLDER";
  }

  else
  {
    v6 = "extended-launch-time";
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v22 = 0xD000000000000012;
  v23 = 0x800000010057A180;
  v7._object = (v6 | 0x8000000000000000);
  v7._countAndFlagsBits = v5;
  String.append(_:)(v7);
  v8 = v2;
  v9 = v22;
  v10 = v23;
  v11 = [objc_opt_self() mainBundle];
  v26._object = v10;
  v12._object = (v6 | 0x8000000000000000);
  v12._countAndFlagsBits = v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v26._countAndFlagsBits = v9;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v26);

  v14 = String._bridgeToObjectiveC()();

  [a1 setPlaceholder:v14];

  result = *(v8 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
  if (result)
  {
    [result setHidden:0];
    v16 = [a1 text];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100464D0C(v18, v20, v21);
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100458614(void *a1)
{
  v3 = type metadata accessor for FMFLocationAlertAddressType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v30 - v9;
  [a1 resignFirstResponder];
  v11 = [a1 text];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v14;
    v15 = [v1 navigationItem];
    v16 = [v15 searchController];

    if (v16)
    {
      [v16 setActive:0];
    }

    (*(v4 + 104))(v10, enum case for FMFLocationAlertAddressType.custom(_:), v3);
    v17 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
    if (v17)
    {
      v32 = v13;
      [v17 removeHandle:1];
      sub_100466954();
      v18 = [objc_allocWithZone(MKLocalSearchRequest) init];
      [v18 setNaturalLanguageQuery:v12];

      v19 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
      if (v19)
      {
        [v19 region];
        [v18 setRegion:?];
        v20 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v18];
        v21 = [objc_opt_self() sharedApplication];
        [v21 setNetworkActivityIndicatorVisible:1];

        (*(v4 + 16))(v6, v10, v3);
        v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
        v23 = v22 + v5;
        v31 = v10;
        v24 = (v22 + v5) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 16) = v1;
        (*(v4 + 32))(v25 + v22, v6, v3);
        *(v25 + v23) = 0;
        v26 = v25 + v24;
        v27 = v33;
        *(v26 + 8) = v32;
        *(v26 + 16) = v27;
        aBlock[4] = sub_1002789D8;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10012105C;
        aBlock[3] = &unk_10063FEF0;
        v28 = _Block_copy(aBlock);
        v29 = v1;

        [v20 startWithCompletionHandler:v28];
        _Block_release(v28);

        (*(v4 + 8))(v31, v3);
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100458A38(void *a1)
{
  [a1 setText:0];
  v2 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
  *v2 = 0;
  *(v2 + 1) = 0;

  v3 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (v3)
  {
    [v3 setHidden:1];
    sub_100464D0C(0, 0xE000000000000000, v4);
    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 setToolbarHidden:0 animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100458B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for FindingMode(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4CF0);
  sub_10045ADE4(a1, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32[0] = v19;
    *v18 = 136315138;
    sub_10045ADE4(v13, v10);
    v20 = String.init<A>(describing:)();
    v30 = v6;
    v21 = v8;
    v22 = v7;
    v23 = a1;
    v25 = v24;
    sub_10045AC0C(v13);
    v26 = sub_100005B4C(v20, v25, v32);
    a1 = v23;
    v7 = v22;
    v8 = v21;
    v6 = v30;

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "🧭 FMFindingExperienceCoordinator: Did update finding experience mode: %s", v18, 0xCu);
    sub_100006060(v19);

    v2 = v31;
  }

  else
  {

    sub_10045AC0C(v13);
  }

  sub_10045ADE4(a1, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v27 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
  swift_beginAccess();
  sub_10045AE48(v6, v2 + v27);
  return swift_endAccess();
}

void sub_100458E70()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMFindingExperienceCoordinator: Creating spBTFindingSession", v5, 2u);
  }

  v6 = [objc_allocWithZone(SPBTFindingSessionConfig) initWithOptInRawRSSIMeasurement:0];
  v7 = [objc_allocWithZone(SPBTFindingSession) initWithConfig:v6];

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  *(v1 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession) = v7;
  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_10045AB94;
    v12[5] = v10;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100004AE4;
    v12[3] = &unk_10063FF40;
    v11 = _Block_copy(v12);

    [v9 setSessionInvalidatedCallback:v11];
    _Block_release(v11);
  }
}

void *sub_100459068(uint64_t a1)
{
  v1 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v1 - 8);
  v111 = &v99 - v2;
  v3 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v3 - 8);
  v108 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v110 = &v99 - v6;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v99 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  __chkstk_darwin(v19);
  v112 = &v99 - v20;
  v113 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v113);
  v114 = (&v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v99 - v23;
  __chkstk_darwin(v25);
  v27 = &v99 - v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v101 = v14;
    v105 = v7;
    sub_100458E70();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = sub_100005B14(v30, qword_1006D4630);
    v32 = v29;
    v106 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v102 = v18;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v103 = v15;
      v38 = v37;
      v115[0] = v37;
      *v36 = 136315138;
      v104 = v8;
      v39 = v13;
      v40 = v12;
      v41 = v24;
      v42 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
      swift_beginAccess();
      v43 = v32 + v42;
      v24 = v41;
      v12 = v40;
      v13 = v39;
      sub_10045AB9C(v43, v27);
      v44 = String.init<A>(describing:)();
      v46 = sub_100005B4C(v44, v45, v115);

      *(v36 + 4) = v46;
      v8 = v104;
      _os_log_impl(&_mh_execute_header, v33, v34, "FMFindingExperienceCoordinator: SPBTFindingSession invalidated, determining whether to re-set up for mode: %s", v36, 0xCu);
      sub_100006060(v38);
      v15 = v103;
    }

    v47 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
    swift_beginAccess();
    sub_10045AB9C(v32 + v47, v24);
    v48 = type metadata accessor for FindingMode(0);
    if ((*(*(v48 - 8) + 48))(v24, 1, v48) == 1)
    {

      return sub_100012DF0(v24, &qword_1006B4058, &qword_100555D08);
    }

    sub_10045AB9C(v24, v114);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {

        sub_10045AC0C(v114);
      }

      else
      {
        v50 = v114;
        v114 = *(v13 + 32);
        (v114)(v112, v50, v12);

        v51 = UUID.uuidString.getter();
        v52 = v110;
        sub_1000E5180(v51, v53, v110);

        v54 = v105;
        if ((*(v8 + 48))(v52, 1, v105) == 1)
        {
          sub_100012DF0(v52, &unk_1006BBCE0, &unk_1005534C0);
        }

        else
        {
          v64 = v109;
          (*(v8 + 32))(v109, v52, v54);
          if (FMIPDevice.isLocalFindable.getter())
          {
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&_mh_execute_header, v65, v66, "FMFindingExperienceCoordinator: Currently in proximity discovery, re-running start finding", v67, 2u);
            }

            v68 = v102;
            v69 = v112;
            (*(v13 + 16))(v102, v112, v12);
            v70 = (*(v13 + 80) + 16) & ~*(v13 + 80);
            v71 = swift_allocObject();
            (v114)(v71 + v70, v68, v12);
            sub_1001A4520(v69, sub_10045AD1C, v71);

            (*(v8 + 8))(v109, v105);
            (*(v13 + 8))(v69, v12);
            return sub_100012DF0(v24, &qword_1006B4058, &qword_100555D08);
          }

          (*(v8 + 8))(v64, v54);
        }

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "FMFindingExperienceCoordinator: Currently in proximity finding mode, but device isn't local findable. Returning.", v80, 2u);

          v81 = v32;
        }

        else
        {
          v81 = v78;
          v78 = v32;
        }

        (*(v13 + 8))(v112, v12);
      }

      return sub_100012DF0(v24, &qword_1006B4058, &qword_100555D08);
    }

    v104 = v8;
    v55 = v32;
    v113 = v24;
    v56 = *v114;
    v57 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v59 = v58;
    v60 = v111;
    UUID.init(uuidString:)();
    if ((*(v13 + 48))(v60, 1, v12) == 1)
    {

      sub_100012DF0(v60, &unk_1006B20C0, &unk_100552E10);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "FMFindingExperienceCoordinator: Currently in proximity finding mode, no findable. Returning.", v63, 2u);
      }

LABEL_16:

      v24 = v113;
      return sub_100012DF0(v24, &qword_1006B4058, &qword_100555D08);
    }

    v72 = *(v13 + 32);
    v103 = v15;
    v114 = v72;
    (v72)(v15, v60, v12);

    v73 = v108;
    sub_1000E5180(v57, v59, v108);
    v74 = v73;

    v75 = v104;
    v76 = v73;
    v77 = v105;
    if ((*(v104 + 48))(v76, 1, v105) == 1)
    {

      sub_100012DF0(v74, &unk_1006BBCE0, &unk_1005534C0);
    }

    else
    {
      v82 = v74;
      v83 = v107;
      (*(v75 + 32))(v107, v82, v77);
      if (FMIPDevice.isLocalFindable.getter())
      {
        v112 = v56;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "FMFindingExperienceCoordinator: Currently in proximity finding mode, re-running start finding", v86, 2u);
        }

        v87 = swift_allocObject();
        v100 = v55;
        swift_unknownObjectWeakInit();
        v88 = v102;
        (*(v13 + 16))(v102, v103, v12);
        v89 = (*(v13 + 80) + 24) & ~*(v13 + 80);
        v90 = (v101 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = swift_allocObject();
        *(v91 + 16) = v87;
        (v114)(v91 + v89, v88, v12);
        v92 = (v91 + v90);
        *v92 = v57;
        v92[1] = v59;

        v93 = v103;
        v94 = v100;
        sub_1001A4520(v103, sub_10045AC68, v91);

        (*(v104 + 8))(v107, v105);
        (*(v13 + 8))(v93, v12);
        goto LABEL_16;
      }

      (*(v75 + 8))(v83, v77);
    }

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    v97 = os_log_type_enabled(v95, v96);
    v24 = v113;
    if (v97)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "FMFindingExperienceCoordinator: Currently in proximity finding mode, but device isn't local findable. Returning.", v98, 2u);
    }

    else
    {
    }

    (*(v13 + 8))(v103, v12);
    return sub_100012DF0(v24, &qword_1006B4058, &qword_100555D08);
  }

  return result;
}

void sub_100459CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPActionStatus();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for FMIPActionStatus.success(_:), v9, v11);
  sub_10045AD9C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v10 + 8))(v13, v9);
  if (v31 == v30)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    (*(v6 + 16))(v8, a3, v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      sub_10045AD9C(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      v22 = sub_100005B4C(v19, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMFindingExperienceCoordinator: Finding action RESTART succeeded for identifier: %s", v17, 0xCu);
      sub_100006060(v18);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v26 + 4) = v28;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMFindingExperienceCoordinator: Finding action RESTART failed with error %@", v26, 0xCu);
      sub_100012DF0(v27, &unk_1006AF760, &qword_100552DB0);
    }
  }
}

double sub_10045A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v18 = a4;
    (*(v13 + 104))(v15, enum case for FMIPActionStatus.success(_:), v12);
    sub_10045AD9C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v13 + 8))(v15, v12);
    v19 = &off_1006AE000;
    if (v46 == v45)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100005B14(v20, qword_1006D4630);
      (*(v9 + 16))(v11, v18, v8);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46 = v24;
        *v23 = 136315138;
        sub_10045AD9C(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v9 + 8))(v11, v8);
        v28 = sub_100005B4C(v25, v27, &v46);
        v19 = &off_1006AE000;

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "FMFindingExperienceCoordinator: Finding action RESTART succeeded for identifier: %s", v23, 0xCu);
        sub_100006060(v24);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100005B14(v29, qword_1006D4630);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        if (a2)
        {
          swift_errorRetain();
          v34 = _swift_stdlib_bridgeErrorToNSError();
          v35 = v34;
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        *(v32 + 4) = v34;
        *v33 = v35;
        _os_log_impl(&_mh_execute_header, v30, v31, "FMFindingExperienceCoordinator: Finding action RESTART failed with error %@", v32, 0xCu);
        sub_100012DF0(v33, &unk_1006AF760, &qword_100552DB0);
      }
    }

    if (v19[380] != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "FMFindingExperienceCoordinator: Now re-running start fast advt", v39, 2u);
    }

    v40 = v44;

    v41 = v42;
    sub_1001A5844(v43, v40, 1, v42, v43, v40);
  }

  return result;
}

void sub_10045A78C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100005B4C(a3, a4, &v13);
    *(v8 + 12) = 2080;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100005B4C(v9, v10, &v13);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v7, "FMFindingExperienceCoordinator: Fast advertisement RESTARTED for identifier: %s. With error?: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_10045A9A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingExperienceCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFindingExperienceCoordinator(uint64_t a1)
{
  result = qword_1006C0650;
  if (!qword_1006C0650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10045AA94(uint64_t a1)
{
  sub_10045AB3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10045AB3C(uint64_t a1)
{
  if (!qword_1006B3F78)
  {
    type metadata accessor for FindingMode(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B3F78);
    }
  }
}

uint64_t sub_10045AB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045AC0C(uint64_t a1)
{
  v2 = type metadata accessor for FindingMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10045AC68(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10045A1B4(a1, a2, v7, v2 + v6, v9, v10);
}

void sub_10045AD1C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100459CF4(a1, a2, v6);
}

uint64_t sub_10045AD9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10045ADE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045AE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10045AEB8(unint64_t a1, void *a2)
{
  v27 = a2;
  v3 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v3 - 8);
  v26 = &v23 - v4;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v29 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = enum case for FMFLocationAlertAddressType.custom(_:);
    v25 = i;
    while (1)
    {
      if (v29)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 placemark];
      v11 = [v10 title];

      if (v11)
      {
        v12 = a1;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = type metadata accessor for FMFLocationAlertAddressType();
        v17 = *(v16 - 8);
        v18 = v26;
        (*(v17 + 104))(v26, v24, v16);
        (*(v17 + 56))(v18, 0, 1, v16);
        v19 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
        v20 = v8;
        sub_1002D2770(v13, v15, v18, v20);
        v8 = v21;
        v22 = v27;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        a1 = v12;
        i = v25;
      }

      ++v6;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_10045B15C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10046645C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

double sub_10045B250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

double sub_10045B2B0()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [objc_opt_self() redPinColor];
  v3 = [v0 systemRedColor];
  *&xmmword_1006D4B40 = 0x4038000000000000;
  *(&xmmword_1006D4B40 + 1) = v1;
  qword_1006D4B50 = 0x3FB999999999999ALL;
  unk_1006D4B58 = v2;
  *&xmmword_1006D4B60 = v3;
  result = 0.0;
  *(&xmmword_1006D4B60 + 8) = 0u;
  *&algn_1006D4B70[8] = 0u;
  *(&xmmword_1006D4B80 + 8) = 0u;
  qword_1006D4B98 = 0;
  return result;
}

double sub_10045B370()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [objc_opt_self() redPinColor];
  v3 = [v0 systemRedColor];
  v4 = [v0 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  *&xmmword_1006D4BA0 = 0x4038000000000000;
  *(&xmmword_1006D4BA0 + 1) = v1;
  qword_1006D4BB0 = 0x3FB999999999999ALL;
  unk_1006D4BB8 = v2;
  *&xmmword_1006D4BC0 = v3;
  *(&xmmword_1006D4BC0 + 8) = xmmword_1005622B0;
  qword_1006D4BD8 = v5;
  result = 1.0;
  xmmword_1006D4BE0 = xmmword_1005622C0;
  unk_1006D4BF0 = xmmword_1005622D0;
  return result;
}

void sub_10045B4B4()
{
  v1 = v0;
  v245 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v246 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  if ((v3 & 1) == 0)
  {
    v4 = [objc_opt_self() mainBundle];
    v247._object = 0x800000010059A740;
    v5._countAndFlagsBits = 0x594649544F4ELL;
    v247._countAndFlagsBits = 0xD000000000000018;
    v5._object = 0xE600000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v247);

    v7 = String._bridgeToObjectiveC()();

    [v1 setTitle:v7];
  }

  v8 = [objc_allocWithZone(MKMapView) init];
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v10 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView] = v8;
  v11 = v8;

  if (!v11)
  {
    __break(1u);
    goto LABEL_75;
  }

  [v11 setMapType:{objc_msgSend(objc_opt_self(), "storedMapType")}];

  v12 = *&v1[v9];
  if (!v12)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_10000905C(0, &unk_1006BEF70, MKMarkerAnnotationView_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  [v14 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v15];

  v16 = *&v1[v9];
  if (!v16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v16 setDelegate:v1];
  v17 = *&v1[v9];
  if (!v17)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v18 = [v17 layer];
  v19 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style];
  [v18 setCornerRadius:*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 40]];

  v20 = *&v1[v9];
  if (!v20)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = [v20 layer];
  v22 = *(v19 + 7);
  if (v22)
  {
    v23 = [v22 CGColor];
  }

  else
  {
    v23 = 0;
  }

  [v21 setBorderColor:v23];

  v24 = *&v1[v9];
  if (!v24)
  {
    goto LABEL_79;
  }

  v25 = [v24 layer];
  [v25 setBorderWidth:*(v19 + 8)];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!*&v1[v9])
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v27 = v26;
  [v26 addSubview:?];

  v28 = [objc_allocWithZone(FMMapDragRadiusView) init];
  v29 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
  v30 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView] = v28;
  v31 = v28;

  if (!v31)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v233 = objc_opt_self();
  v32 = [v233 clearColor];
  [v31 setBackgroundColor:v32];

  v33 = *&v1[v29];
  if (!v33)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v33 setMapView:*&v1[v9]];
  v34 = *&v1[v29];
  if (!v34)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v34 setDelegate:v1];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v234 = v19;
  if (!*&v1[v29])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v36 = v35;
  [v35 addSubview:?];

  v245 = &type metadata for SolariumFeatureFlag;
  v246 = v2;
  v237 = v2;
  LOBYTE(v36) = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  v37 = objc_opt_self();
  v38 = [v37 mainBundle];
  v248._object = 0x800000010059A780;
  v39._object = 0x800000010059A760;
  v248._countAndFlagsBits = 0xD000000000000024;
  v39._countAndFlagsBits = 0xD000000000000012;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v248);

  v232 = v9;
  if (v36)
  {
    v231 = v37;
    *&v230 = type metadata accessor for FMFenceMapViewController(0);
    v245 = v230;
    v243 = v1;
    v236 = "chooseSmallRadiusActionWithSender:";
    v42 = qword_1006AEBF0;
    v235 = v1;
    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_1006D4648;
    v44 = unk_1006D4650;
    v46 = qword_1006D4658;
    v45 = unk_1006D4660;
    v229 = xmmword_1006D4668;
    v47 = qword_1006D4678;
    v48 = type metadata accessor for FMModernButton();
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v50 = v43;
    *(v50 + 1) = v44;
    *(v50 + 2) = v46;
    *(v50 + 3) = v45;
    *(v50 + 2) = v229;
    *(v50 + 6) = v47;
    v242.receiver = v49;
    v242.super_class = v48;
    *&v229 = v48;
    v51 = v43;
    v52 = v44;
    v53 = v46;
    v54 = v45;
    v55 = objc_msgSendSuper2(&v242, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v56 = String._bridgeToObjectiveC()();

    [v55 setTitle:v56 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740, &unk_100552DA0);
    v57 = v241;
    if (v241)
    {
      v58 = sub_1000244BC(v240, v241);
      v59 = *(v57 - 8);
      v60 = __chkstk_darwin(v58);
      v62 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62, v60);
      v63 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v59 + 8))(v62, v57);
      sub_100006060(v240);
    }

    else
    {
      v63 = 0;
    }

    [v55 addTarget:v63 action:v236 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v85 = [v55 heightAnchor];
    v86 = &v55[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v87 = [v85 constraintEqualToConstant:*&v55[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v87 setActive:1];
    [v55 setTitleColor:*(v86 + 1) forState:0];
    [v55 setTitleColor:*(v86 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740, &unk_100552DA0);

    v236 = v55;
    v88 = [v231 mainBundle];
    v251._object = 0x800000010059A7D0;
    v89._countAndFlagsBits = 0xD000000000000013;
    v89._object = 0x800000010059A7B0;
    v251._countAndFlagsBits = 0xD000000000000025;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v251);

    v245 = v230;
    v91 = v235;
    v243 = v235;
    v227 = "chooseMediumRadiusActionWithSender:";
    v92 = qword_1006D4648;
    v93 = unk_1006D4650;
    v95 = qword_1006D4658;
    v94 = unk_1006D4660;
    v228 = xmmword_1006D4668;
    v96 = qword_1006D4678;
    v97 = v229;
    v98 = objc_allocWithZone(v229);
    v99 = &v98[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v99 = v92;
    *(v99 + 1) = v93;
    *(v99 + 2) = v95;
    *(v99 + 3) = v94;
    *(v99 + 2) = v228;
    *(v99 + 6) = v96;
    v239.receiver = v98;
    v239.super_class = v97;
    *&v228 = v91;
    v100 = v92;
    v101 = v93;
    v102 = v95;
    v103 = v94;
    v104 = objc_msgSendSuper2(&v239, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v105 = String._bridgeToObjectiveC()();

    [v104 setTitle:v105 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740, &unk_100552DA0);
    v106 = v241;
    if (v241)
    {
      v107 = sub_1000244BC(v240, v241);
      v108 = *(v106 - 8);
      v109 = __chkstk_darwin(v107);
      v111 = &v226 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 16))(v111, v109);
      v112 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v108 + 8))(v111, v106);
      sub_100006060(v240);
    }

    else
    {
      v112 = 0;
    }

    [v104 addTarget:v112 action:v227 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v113 = [v104 heightAnchor];
    v114 = &v104[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v115 = [v113 constraintEqualToConstant:*&v104[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v115 setActive:1];
    [v104 setTitleColor:*(v114 + 1) forState:0];
    [v104 setTitleColor:*(v114 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740, &unk_100552DA0);

    v235 = v104;
    v116 = [v231 mainBundle];
    v252._object = 0x800000010059A820;
    v117._object = 0x800000010059A800;
    v252._countAndFlagsBits = 0xD000000000000024;
    v117._countAndFlagsBits = 0xD000000000000012;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v252);

    v245 = v230;
    v119 = v228;
    v243 = v228;
    v231 = "chooseLargeRadiusActionWithSender:";
    v120 = qword_1006D4648;
    v121 = unk_1006D4650;
    v122 = qword_1006D4658;
    v123 = unk_1006D4660;
    v230 = xmmword_1006D4668;
    v124 = qword_1006D4678;
    v125 = v229;
    v126 = objc_allocWithZone(v229);
    v127 = &v126[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v127 = v120;
    *(v127 + 1) = v121;
    *(v127 + 2) = v122;
    *(v127 + 3) = v123;
    *(v127 + 2) = v230;
    *(v127 + 6) = v124;
    v238.receiver = v126;
    v238.super_class = v125;
    v128 = v119;
    v129 = v120;
    v130 = v121;
    v131 = v122;
    v132 = v123;
    v83 = objc_msgSendSuper2(&v238, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v133 = String._bridgeToObjectiveC()();

    [v83 setTitle:v133 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740, &unk_100552DA0);
    v134 = v241;
    if (v241)
    {
      v135 = sub_1000244BC(v240, v241);
      v136 = *(v134 - 8);
      v137 = __chkstk_darwin(v135);
      v139 = &v226 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v136 + 16))(v139, v137);
      v140 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v136 + 8))(v139, v134);
      sub_100006060(v240);
    }

    else
    {
      v140 = 0;
    }

    v75 = v236;
    v84 = v237;
    [v83 addTarget:v140 action:v231 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
    v141 = [v83 heightAnchor];
    v142 = &v83[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v143 = [v141 constraintEqualToConstant:*&v83[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v143 setActive:1];
    [v83 setTitleColor:*(v142 + 1) forState:0];
    [v83 setTitleColor:*(v142 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740, &unk_100552DA0);

    v76 = v235;
  }

  else
  {
    v64 = type metadata accessor for FMFenceMapViewController(0);
    v245 = v64;
    v235 = v64;
    v243 = v1;
    v65 = type metadata accessor for FMStickyRoundedButton();
    v66 = objc_allocWithZone(v65);
    v67 = v1;
    v236 = sub_1001C943C(v41._countAndFlagsBits, v41._object, &v243, "chooseSmallRadiusActionWithSender:");
    v68 = [v37 mainBundle];
    v249._object = 0x800000010059A7D0;
    v69._countAndFlagsBits = 0xD000000000000013;
    v69._object = 0x800000010059A7B0;
    v249._countAndFlagsBits = 0xD000000000000025;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v249);
    v72 = v37;

    v245 = v64;
    v243 = v67;
    v73 = objc_allocWithZone(v65);
    v74 = v67;
    v75 = v236;
    v76 = sub_1001C943C(v71._countAndFlagsBits, v71._object, &v243, "chooseMediumRadiusActionWithSender:");
    v77 = [v72 mainBundle];
    v250._object = 0x800000010059A820;
    v78._object = 0x800000010059A800;
    v250._countAndFlagsBits = 0xD000000000000024;
    v78._countAndFlagsBits = 0xD000000000000012;
    v79._countAndFlagsBits = 0;
    v79._object = 0xE000000000000000;
    v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v250);

    v245 = v64;
    v243 = v74;
    v81 = objc_allocWithZone(v65);
    v82 = v74;
    v83 = sub_1001C943C(v80._countAndFlagsBits, v80._object, &v243, "chooseLargeRadiusActionWithSender:");
    v84 = v237;
  }

  v144 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton] = v75;
  v145 = v83;

  v146 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton] = v76;

  v147 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton] = v145;

  v245 = &type metadata for SolariumFeatureFlag;
  v246 = v84;
  v148 = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  v235 = v76;
  v236 = v75;
  v231 = v145;
  if (v148)
  {
    v149 = [v1 navigationItem];
    [v149 setPreferredSearchBarPlacement:2];

    v150 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
    [*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView] setAxis:0];
    [*&v1[v150] setDistribution:3];
    [*&v1[v150] addArrangedSubview:v75];
    [*&v1[v150] addArrangedSubview:v76];
    [*&v1[v150] addArrangedSubview:v145];
    v151 = [v1 view];
    if (!v151)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v152 = v151;
    [v151 addSubview:*&v1[v150]];
LABEL_43:

    v172 = [v1 navigationController];
    if (v172)
    {
      v173 = v172;
      v174 = [v172 view];

      if (!v174)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v175 = [v233 secondarySystemBackgroundColor];
      [v174 setBackgroundColor:v175];
    }

    if ((v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage] & 1) == 0)
    {
      v176 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelActionWithSender:"];
      v177 = [v1 navigationItem];
      [v177 setLeftBarButtonItem:v176];
    }

    v178 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneActionWithSender:"];
    v179 = [v1 navigationItem];
    [v179 setRightBarButtonItem:v178];

    v180 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
    v181 = [v1 traitCollection];
    v182 = [v181 horizontalSizeClass];

    v183 = [v1 traitCollection];
    v184 = [v183 verticalSizeClass];

    v186 = v182 == 1 || v184 == 1;
    [v180 setHidesNavigationBarDuringPresentation:v186];
    [v180 setObscuresBackgroundDuringPresentation:0];
    [v180 setSearchResultsUpdater:v1];
    v187 = [v180 searchBar];
    v245 = &type metadata for SolariumFeatureFlag;
    v246 = v237;
    v188 = isFeatureEnabled(_:)();
    sub_100006060(&v243);
    if (v188)
    {
      v189 = 0xD000000000000022;
    }

    else
    {
      v189 = 0xD000000000000016;
    }

    if (v188)
    {
      v190 = "SEARCH_BAR_PLACEHOLDER";
    }

    else
    {
      v190 = "extended-launch-time";
    }

    v243 = 0;
    v244 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v243 = 0xD000000000000012;
    v244 = 0x800000010057A180;
    v191._object = (v190 | 0x8000000000000000);
    v191._countAndFlagsBits = v189;
    String.append(_:)(v191);
    v192 = v243;
    v193 = v244;
    v194 = [objc_opt_self() mainBundle];
    v253._object = v193;
    v195._object = (v190 | 0x8000000000000000);
    v195._countAndFlagsBits = v189;
    v196._countAndFlagsBits = 0;
    v196._object = 0xE000000000000000;
    v253._countAndFlagsBits = v192;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v195, 0, v194, v196, v253);

    v197 = String._bridgeToObjectiveC()();

    [v187 setPlaceholder:v197];

    v198 = [v180 searchBar];
    [v198 setDelegate:v1];

    v199 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController];
    *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController] = v180;
    v200 = v180;

    v201 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
    v202 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView;
    v203 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
    *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView] = v201;
    v204 = v201;

    if (v204)
    {
      [v204 setDataSource:v1];

      v205 = *&v1[v202];
      v206 = v232;
      v207 = v234;
      if (v205)
      {
        [v205 setDelegate:v1];
        v208 = *&v1[v202];
        v209 = v237;
        v210 = v235;
        if (v208)
        {
          [v208 setKeyboardDismissMode:2];
          v211 = *&v1[v202];
          if (v211)
          {
            [v211 setHidden:1];
            v212 = *&v1[v202];
            if (v212)
            {
              [v212 setAutoresizingMask:0];
              v245 = &type metadata for SolariumFeatureFlag;
              v246 = v209;
              v213 = isFeatureEnabled(_:)();
              sub_100006060(&v243);
              if (v213)
              {
                v214 = *&v1[v202];
                if (!v214)
                {
LABEL_98:
                  __break(1u);
                  goto LABEL_99;
                }

                v215 = v214;
                v216 = [v233 secondarySystemBackgroundColor];
                [v215 setBackgroundColor:v216];

                v217 = *&v1[v202];
                if (!v217)
                {
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                [v217 setSeparatorInset:{0.0, v207[6], 0.0, v207[6]}];
              }

              v218 = [v1 view];
              if (v218)
              {
                v219 = v231;
                if (*&v1[v202])
                {
                  v220 = v218;
                  [v218 addSubview:?];

                  v221 = [v1 navigationItem];
                  [v221 setHidesSearchBarWhenScrolling:1];

                  v222 = [v1 navigationItem];
                  [v222 setSearchController:v200];

                  v223 = *&v1[v206];
                  if (v223)
                  {
                    [v223 setShowsUserLocation:1];
                    v224 = *&v1[v206];
                    if (v224)
                    {
                      v225 = v224;
                      [v225 setUserTrackingMode:0 animated:1];

                      return;
                    }

                    goto LABEL_95;
                  }

LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v153 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v75];
  v154 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v76];
  v155 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v145];
  v156 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:6 target:0 action:0];
  [v156 setWidth:*v234];
  v157 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_100555120;
  *(v158 + 32) = v156;
  *(v158 + 40) = v153;
  *(v158 + 48) = v157;
  *(v158 + 56) = v154;
  *(v158 + 64) = v157;
  *(v158 + 72) = v155;
  *(v158 + 80) = v156;
  sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
  v159 = v156;
  v160 = v157;
  v152 = v159;
  v161 = v153;
  v162 = v154;
  v163 = v155;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:isa];

  v165 = [v1 navigationController];
  if (v165)
  {
    v166 = v165;
    v167 = [v165 toolbar];

    if (!v167)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    [v167 setTranslucent:0];
  }

  v168 = [v1 navigationController];
  if (!v168)
  {
LABEL_42:

    goto LABEL_43;
  }

  v169 = v168;
  v170 = [v168 toolbar];

  if (v170)
  {
    v171 = [v233 secondarySystemBackgroundColor];
    [v170 setBackgroundColor:v171];

    goto LABEL_42;
  }

LABEL_101:
  __break(1u);
}

void sub_10045CF44()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_38;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EF0;
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = [v4 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v3 + 32) = v10;
  v11 = *&v0[v1];
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = [v11 leadingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 leadingAnchor];
  v126 = &v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style];
  v17 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 48];
  v18 = [v12 constraintEqualToAnchor:v16 constant:v17];

  *(v3 + 40) = v18;
  v19 = *&v0[v1];
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = [v19 trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v20 constraintEqualToAnchor:v25 constant:-v17];

  *(v3 + 48) = v26;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v127 = v23;
  [v23 activateConstraints:isa];

  v28 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v128[3] = &type metadata for SolariumFeatureFlag;
  v128[4] = sub_10000BD04();
  v29 = isFeatureEnabled(_:)();
  sub_100006060(v128);
  if ((v29 & 1) == 0)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1005528C0;
    v58 = *&v0[v1];
    if (!v58)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v47 = [v58 bottomAnchor];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v59 = [v0 view];
    v55 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v56 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    if (!v59)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v60 = v59;
    v50 = (v57 + 32);
    v61 = [v59 safeAreaLayoutGuide];

    v52 = [v61 bottomAnchor];
    v53 = [v47 constraintEqualToAnchor:v52];
LABEL_18:
    v62 = v53;

    *v50 = v62;
    v63 = Array._bridgeToObjectiveC()().super.isa;

    [v127 activateConstraints:v63];

    v64 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
    v65 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
    if (v65)
    {
      [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1005521F0;
      v67 = *&v0[v64];
      if (v67)
      {
        v68 = [v67 topAnchor];
        v69 = [v0 p_ivar_lyt[433]];
        if (v69)
        {
          v70 = v69;
          v71 = [v69 safeAreaLayoutGuide];

          v72 = [v71 topAnchor];
          v73 = [v68 v55[437]];

          *(v66 + 32) = v73;
          v74 = *&v0[v64];
          if (v74)
          {
            v75 = [v74 bottomAnchor];
            v76 = [v0 p_ivar_lyt[433]];
            if (v76)
            {
              v77 = v76;
              v78 = [v76 safeAreaLayoutGuide];

              v79 = [v78 bottomAnchor];
              v80 = [v75 v55[437]];

              *(v66 + 40) = v80;
              v81 = *&v0[v64];
              if (v81)
              {
                v82 = [v81 v56[432]];
                v83 = [v0 p_ivar_lyt[433]];
                if (v83)
                {
                  v84 = v83;
                  v85 = [v83 safeAreaLayoutGuide];

                  v86 = [v85 v56[432]];
                  v87 = [v82 v55[437]];

                  *(v66 + 48) = v87;
                  v88 = *&v0[v64];
                  if (v88)
                  {
                    v89 = [v88 trailingAnchor];
                    v90 = [v0 p_ivar_lyt[433]];
                    if (v90)
                    {
                      v91 = v90;
                      v92 = [v90 safeAreaLayoutGuide];

                      v93 = [v92 trailingAnchor];
                      v94 = [v89 v55[437]];

                      *(v66 + 56) = v94;
                      v95 = Array._bridgeToObjectiveC()().super.isa;

                      [v127 activateConstraints:v95];

                      v96 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView;
                      v97 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
                      if (v97)
                      {
                        [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
                        v98 = swift_allocObject();
                        *(v98 + 16) = xmmword_1005521F0;
                        v99 = *&v0[v96];
                        if (v99)
                        {
                          v100 = [v99 topAnchor];
                          v101 = [v0 p_ivar_lyt[433]];
                          if (v101)
                          {
                            v102 = v101;
                            v103 = [v101 safeAreaLayoutGuide];

                            v104 = [v103 topAnchor];
                            v105 = [v100 v55[437]];

                            *(v98 + 32) = v105;
                            v106 = *&v0[v96];
                            if (v106)
                            {
                              v107 = [v106 bottomAnchor];
                              v108 = [v0 p_ivar_lyt[433]];
                              if (v108)
                              {
                                v109 = v108;
                                v110 = [v108 safeAreaLayoutGuide];

                                v111 = [v110 bottomAnchor];
                                v112 = [v107 v55[437]];

                                *(v98 + 40) = v112;
                                v113 = *&v0[v96];
                                if (v113)
                                {
                                  v114 = [v113 v56[432]];
                                  v115 = [v0 p_ivar_lyt[433]];
                                  if (v115)
                                  {
                                    v116 = v115;
                                    v117 = [v115 v56[432]];

                                    v118 = [v114 v55[437]];
                                    *(v98 + 48) = v118;
                                    v119 = *&v0[v96];
                                    if (v119)
                                    {
                                      v120 = [v119 trailingAnchor];
                                      v121 = [v0 p_ivar_lyt[433]];
                                      if (v121)
                                      {
                                        v122 = v121;
                                        v123 = [v121 trailingAnchor];

                                        v124 = [v120 v55[437]];
                                        *(v98 + 56) = v124;
                                        v125 = Array._bridgeToObjectiveC()().super.isa;

                                        [v127 activateConstraints:v125];

                                        return;
                                      }

                                      goto LABEL_61;
                                    }

LABEL_60:
                                    __break(1u);
LABEL_61:
                                    __break(1u);
                                    goto LABEL_62;
                                  }

LABEL_59:
                                  __break(1u);
                                  goto LABEL_60;
                                }

LABEL_58:
                                __break(1u);
                                goto LABEL_59;
                              }

LABEL_57:
                              __break(1u);
                              goto LABEL_58;
                            }

LABEL_56:
                            __break(1u);
                            goto LABEL_57;
                          }

LABEL_55:
                          __break(1u);
                          goto LABEL_56;
                        }

LABEL_54:
                        __break(1u);
                        goto LABEL_55;
                      }

LABEL_53:
                      __break(1u);
                      goto LABEL_54;
                    }

LABEL_52:
                    __break(1u);
                    goto LABEL_53;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1005521F0;
  v31 = [*&v0[v28] leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = v126[10];
  v36 = [v31 constraintEqualToAnchor:v34 constant:v35];

  *(v30 + 32) = v36;
  v37 = [*&v0[v28] trailingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v37 constraintEqualToAnchor:v40 constant:-v35];
  *(v30 + 40) = v41;
  v42 = [*&v0[v28] bottomAnchor];
  v43 = *&v0[v1];
  if (!v43)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v44 = [v43 bottomAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:-v126[11]];

  *(v30 + 48) = v45;
  v46 = *&v0[v1];
  if (!v46)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v47 = [v46 bottomAnchor];
  v48 = [v0 view];
  if (v48)
  {
    v49 = v48;
    v50 = (v30 + 56);
    v51 = [v48 safeAreaLayoutGuide];

    v52 = [v51 bottomAnchor];
    v53 = [v47 constraintEqualToAnchor:v52 constant:-v126[9]];
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    v55 = (&LocateDeviceIntentResponse__metaData + 16);
    v56 = (&LocateDeviceIntentResponse__metaData + 16);
    goto LABEL_18;
  }

LABEL_68:
  __break(1u);
}

void sub_10045DBB8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FMFenceMapViewController(0);
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(v2 + 48);
  type metadata accessor for FMPeopleSubscription(0);
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v4 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100640060;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + 32);

  os_unfair_lock_lock((v5 + 24));
  sub_10000E7C0((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription] = v4;

  sub_10045B4B4();
  sub_10045CF44();
  v6 = objc_allocWithZone(UILongPressGestureRecognizer);
  v7 = v1;
  v8 = [v6 initWithTarget:v7 action:"longPressActionWithSender:"];
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v10 = *&v7[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v10 addGestureRecognizer:v8];
  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v7 action:"mapTappedActionWithSender:"];

  v12 = *&v7[v9];
  if (v12)
  {
    [v12 addGestureRecognizer:v11];

    sub_10045E6E4();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10045DDE0(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription;
  if (!*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription])
  {
    goto LABEL_4;
  }

  v4 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
  if (v4)
  {
    v5 = *(*(v4 + 48) + 32);

    os_unfair_lock_lock((v5 + 24));
    sub_10008FB88((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    *&v1[v3] = 0;

LABEL_4:
    v6.receiver = v1;
    v6.super_class = type metadata accessor for FMFenceMapViewController(0);
    return objc_msgSendSuper2(&v6, "viewWillDisappear:", v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_10045DF1C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FMFenceMapViewController(0);
  result = objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion];
  if ((v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion + 32] & 1) == 0)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = fabs(*v4);
    if (fabs(v6) <= 180.0 && v7 <= 90.0)
    {
      v9 = v4[2];
      if (v9 >= 0.0 && v9 <= 180.0)
      {
        v11 = v4[3];
        if (v11 >= 0.0 && v11 <= 360.0)
        {
          result = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
          if (result)
          {
            result = [result setRegion:1 animated:?];
            *v4 = v5;
            v4[1] = v6;
            v4[2] = v9;
            v4[3] = v11;
            *(v4 + 32) = 0;
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

void sub_10045E09C(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v33 - v15;
  v17 = [a2 traitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = [a2 traitCollection];
  v20 = [v19 verticalSizeClass];

  if (v18 != 1 && v20 != 1)
  {
    return;
  }

  v21 = *&a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (!v21)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  [v21 setHidden:1];
  v22 = [a2 navigationItem];
  v23 = [v22 searchController];

  if (v23)
  {
    [v23 setActive:0];
  }

  v24 = *&a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = [v24 selectedAnnotations];
  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((v26 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:

      type metadata accessor for FMFenceMapAnnotation(0);
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
        v33 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v34 = v10;
        v35 = *(v35 + 8);
        (v35)(v12, v10);
        v29 = swift_allocObject();
        *(v29 + 16) = a2;
        *(v29 + 24) = v28;
        aBlock[4] = sub_10046D86C;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006404B0;
        v30 = _Block_copy(aBlock);
        v31 = a2;
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100037970();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v32 = v33;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);
        swift_unknownObjectRelease();

        (*(v38 + 8))(v6, v4);
        (*(v36 + 8))(v9, v37);
        (v35)(v16, v34);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return;
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_10045E6E4()
{
  v1 = v0;
  v183 = type metadata accessor for FMFAddress();
  v2 = *(v183 - 8);
  __chkstk_darwin(v183);
  v175 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v173 = &v166 - v8;
  __chkstk_darwin(v9);
  v177 = &v166 - v10;
  __chkstk_darwin(v11);
  v176 = &v166 - v12;
  v179 = type metadata accessor for FMFLabel();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v174 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v166 - v15;
  v17 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v17 - 8);
  v19 = &v166 - v18;
  v20 = type metadata accessor for FMFLocationAlertAddressType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v166 - v23;
  *&v28 = __chkstk_darwin(v25).n128_u64[0];
  v29 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation;
  v30 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation);
  if (v30)
  {
    v182 = v2;
    v180 = v27;
    v184 = &v166 - v26;
    v31 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
    swift_beginAccess();
    sub_100007204(v1 + v31, v19, &qword_1006B00C8, &qword_10055C900);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_100012DF0(v19, &qword_1006B00C8, &qword_10055C900);
      v32 = *(v1 + v29);
      if (v32)
      {
        if (*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius + 8))
        {
          v33 = 2817.5;
        }

        else
        {
          v33 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius);
        }

        v34 = v32;
        [v34 coordinate];
        v36 = v35;
        [v34 coordinate];
        v189.latitude = v36;
        v190 = MKCoordinateRegionMakeWithDistance(v189, v33, v33);
        v37 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
        v38 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
        if (v38)
        {
          [v38 regionThatFits:{v190.center.latitude, v190.center.longitude, v190.span.latitudeDelta, v190.span.longitudeDelta}];
          if (fabs(v40) > 180.0 || fabs(v39) > 90.0 || v41 < 0.0 || v41 > 180.0 || v42 < 0.0 || v42 > 360.0)
          {

            goto LABEL_40;
          }

          v43 = *(v1 + v37);
          if (v43)
          {
            v44 = v42;
            v45 = v41;
            v46 = v40;
            v47 = v39;
            v48 = v43;
            [v48 setRegion:1 animated:{v47, v46, v45, v44}];

            v49 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
            *v49 = v47;
            *(v49 + 8) = v46;
            *(v49 + 16) = v45;
            *(v49 + 24) = v44;
            *(v49 + 32) = 0;
LABEL_40:
            *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 1;
            return;
          }

          goto LABEL_120;
        }

        goto LABEL_117;
      }

      goto LABEL_16;
    }

    (*(v21 + 32))(v184, v19, v20);
    v57 = v30;
    [v57 coordinate];
    v59 = v58;
    v170 = v57;
    [v57 coordinate];
    v61 = v60;
    v62 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius);
    if (*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius + 8) == 1)
    {
      if (qword_1006AED88 != -1)
      {
        swift_once();
      }

      v62 = &qword_1006D4D20;
    }

    v181 = v20;
    v63 = *v62;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100005B14(v64, qword_1006D4630);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v172 = v6;
    v171 = v1;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v187 = v69;
      *v68 = 136315138;
      v70 = Double.description.getter();
      v72 = sub_100005B4C(v70, v71, &v187);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "FMFenceMapViewController: radius %s", v68, 0xCu);
      sub_100006060(v69);
    }

    v73 = *(v21 + 104);
    v74 = v181;
    v73(v24, enum case for FMFLocationAlertAddressType.friendLocation(_:), v181);
    sub_10000A618(&unk_1006C07F0, &type metadata accessor for FMFLocationAlertAddressType, &protocol conformance descriptor for FMFLocationAlertAddressType);
    v75 = v21;
    v76 = v74;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v167 = v75;
    v77 = *(v75 + 8);
    v77(v24, v76);
    v169 = v75 + 8;
    v168 = v77;
    if (v187 != v185)
    {
      v73(v24, enum case for FMFLocationAlertAddressType.custom(_:), v76);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v77(v24, v76);
      if (v187 != v185)
      {
        v73(v24, enum case for FMFLocationAlertAddressType.currentLocation(_:), v76);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v77(v24, v76);
        if (v187 != v185)
        {
          v179 = 0;
          v115 = 0;
          v178 = 0;
          object = 0;
          v86 = v183;
          v79 = v171;
          v87 = v167;
          v82 = (&xmmword_1006D3FF8 + 8);
          goto LABEL_74;
        }

        v99 = [objc_opt_self() mainBundle];
        v188._object = 0x800000010059A700;
        v100._object = 0x800000010059A6D0;
        v188._countAndFlagsBits = 0xD00000000000003FLL;
        v100._countAndFlagsBits = 0xD00000000000002DLL;
        v101._countAndFlagsBits = 0;
        v101._object = 0xE000000000000000;
        v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, v188);
        countAndFlagsBits = v102._countAndFlagsBits;
        object = v102._object;

        v103 = (v102._object >> 56) & 0xF;
        if ((v102._object & 0x2000000000000000) == 0)
        {
          v103 = v102._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        v86 = v183;
        v79 = v171;
        v87 = v167;
        if (!v103)
        {
          v178 = v102._countAndFlagsBits;
          v179 = 0;
          v115 = 0;
          v82 = (&xmmword_1006D3FF8 + 8);
          goto LABEL_74;
        }

        v82 = &xmmword_1006D3FF8 + 8;
        v104 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
        swift_beginAccess();
        v105 = v79 + v104;
        v106 = v173;
        sub_100007204(v105, v173, &qword_1006B0040, &qword_100552AE0);
        v107 = v182;
        if (!(*(v182 + 48))(v106, 1, v86))
        {
          v118 = v175;
          (*(v107 + 16))(v175, v106, v86);
          sub_100012DF0(v106, &qword_1006B0040, &qword_100552AE0);
          v119 = FMFAddress.displayAddressWithoutStreetName.getter();
          v121 = v120;
          (*(v107 + 8))(v118, v86);
          if (v121)
          {
            v114 = v119;
          }

          else
          {
            v114 = 0;
          }

          if (v121)
          {
            v115 = v121;
          }

          else
          {
            v115 = 0xE000000000000000;
          }

          v82 = &xmmword_1006D3FF8 + 8;
          if (v102._countAndFlagsBits != v114)
          {
            goto LABEL_71;
          }

          goto LABEL_60;
        }

        sub_100012DF0(v106, &qword_1006B0040, &qword_100552AE0);
        goto LABEL_55;
      }
    }

    v78 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
    v79 = v171;
    swift_beginAccess();
    sub_100007204(v79 + v78, v16, &qword_1006B0038, &unk_10055EDB0);
    v80 = v178;
    v81 = v179;
    if ((*(v178 + 48))(v16, 1, v179))
    {
      sub_100012DF0(v16, &qword_1006B0038, &unk_10055EDB0);
      v82 = &xmmword_1006D3FF8 + 8;
      v83 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
      swift_beginAccess();
      v84 = v176;
      sub_100007204(v79 + v83, v176, &qword_1006B0040, &qword_100552AE0);
      v85 = v182;
      v86 = v183;
      if ((*(v182 + 48))(v84, 1, v183))
      {
        sub_100012DF0(v84, &qword_1006B0040, &qword_100552AE0);
        v87 = v167;
      }

      else
      {
        v108 = v175;
        (*(v85 + 16))(v175, v84, v86);
        sub_100012DF0(v84, &qword_1006B0040, &qword_100552AE0);
        countAndFlagsBits = FMFAddress.displayAddressWithStreetName.getter();
        object = v109;
        (*(v85 + 8))(v108, v86);
        v87 = v167;
        if (object)
        {
          goto LABEL_49;
        }
      }

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v97 = v174;
      (*(v80 + 16))(v174, v16, v81);
      sub_100012DF0(v16, &qword_1006B0038, &unk_10055EDB0);
      countAndFlagsBits = FMFLabel.localizedValue.getter();
      object = v98;
      (*(v80 + 8))(v97, v81);
      v86 = v183;
      v85 = v182;
      v87 = v167;
      v82 = (&xmmword_1006D3FF8 + 8);
    }

LABEL_49:
    v110 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v110 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v110)
    {
      v178 = countAndFlagsBits;
LABEL_73:
      v179 = 0;
      v115 = 0;
      goto LABEL_74;
    }

    v111 = *(v82 + 386);
    swift_beginAccess();
    v112 = v79 + v111;
    v113 = v177;
    sub_100007204(v112, v177, &qword_1006B0040, &qword_100552AE0);
    if ((*(v85 + 48))(v113, 1, v86))
    {
      sub_100012DF0(v113, &qword_1006B0040, &qword_100552AE0);
    }

    else
    {
      v116 = v175;
      (*(v85 + 16))(v175, v113, v86);
      sub_100012DF0(v113, &qword_1006B0040, &qword_100552AE0);
      v114 = FMFAddress.displayAddressWithoutStreetName.getter();
      v115 = v117;
      (*(v85 + 8))(v116, v86);
      if (v115)
      {
        if (countAndFlagsBits != v114)
        {
          goto LABEL_71;
        }

LABEL_60:
        if (object == v115)
        {
          countAndFlagsBits = v114;
          object = v115;
LABEL_72:
          v178 = countAndFlagsBits;

          goto LABEL_73;
        }

LABEL_71:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v179 = v114;
          v178 = countAndFlagsBits;
LABEL_74:
          v122 = *(v87 + 16);
          v123 = v180;
          v124 = v181;
          v122(v180, v184, v181);
          v125 = *(v82 + 386);
          swift_beginAccess();
          sub_100007204(v79 + v125, v172, &qword_1006B0040, &qword_100552AE0);
          v126 = type metadata accessor for FMFenceMapAnnotation(0);
          v127 = objc_allocWithZone(v126);
          (*(v182 + 56))(&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v86);
          *&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
          v128 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
          *&v127[v128] = dispatch_group_create();
          v129 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
          *&v127[v129] = [objc_allocWithZone(CLGeocoder) init];
          v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
          *&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
          v130 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
          if (qword_1006AED88 != -1)
          {
            swift_once();
          }

          v131 = *&qword_1006D4D20;
          *&v127[v130] = qword_1006D4D20;
          v122(&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v123, v124);
          v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 0;
          v186.receiver = v127;
          v186.super_class = v126;
          v132 = objc_msgSendSuper2(&v186, "init");
          v133 = v132;
          if (object)
          {
            v134 = String._bridgeToObjectiveC()();
          }

          else
          {
            v134 = 0;
          }

          v135 = v172;
          v136 = v183;
          v137 = v171;
          [v132 setTitle:v134];

          if (v115)
          {

            v138 = String._bridgeToObjectiveC()();
          }

          else
          {
            v138 = 0;
          }

          [v132 setSubtitle:v138];

          [v132 setCoordinate:{v59, v61}];
          v139 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
          swift_beginAccess();
          sub_100278A8C(v135, &v132[v139]);
          swift_endAccess();
          if (qword_1006AED90 != -1)
          {
            swift_once();
          }

          if (v131 > v63)
          {
            v140 = v131;
          }

          else
          {
            v140 = v63;
          }

          if (v140 >= *&qword_1006D4D28)
          {
            v141 = *&qword_1006D4D28;
          }

          else
          {
            v141 = v140;
          }

          *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v141;
          v142 = [objc_opt_self() circleWithCenterCoordinate:v59 radius:{v61, v141}];
          v143 = *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
          *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v142;

          v144 = (*(v182 + 48))(v135, 1, v136);
          v145 = v168;
          if (v144 == 1)
          {

            v146 = v181;
LABEL_96:
            dispatch_group_enter(*&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
            sub_100485F88(v148, v149, v150);
            v145(v180, v146);
            sub_100012DF0(v135, &qword_1006B0040, &qword_100552AE0);
            sub_10045FC64(v132, v151, v152);

            v145(v184, v146);
            v153 = *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation);
            *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation) = v132;

            *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 1;
            return;
          }

          v146 = v181;
          if (v115)
          {
            goto LABEL_93;
          }

          v154 = [v132 title];
          if (v154)
          {
            v155 = v145;
            v156 = v154;
            v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;

            v160 = sub_100486C44();
            v162 = v161;
            if (v159)
            {
              if (v161)
              {
                if (v157 == v160 && v161 == v159)
                {

                  v147 = 0;
                  v145 = v155;
                  goto LABEL_94;
                }

                v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v145 = v155;
                if (v165)
                {
                  goto LABEL_114;
                }

                goto LABEL_111;
              }

              v145 = v155;
LABEL_110:

LABEL_111:
              v179 = sub_100486C44();
              if (v164)
              {
LABEL_93:
                v147 = String._bridgeToObjectiveC()();
LABEL_94:

LABEL_95:
                [v132 setSubtitle:v147];

                goto LABEL_96;
              }

LABEL_114:
              v147 = 0;
              goto LABEL_95;
            }

            v145 = v155;
          }

          else
          {
            sub_100486C44();
            v162 = v163;
          }

          if (!v162)
          {
            goto LABEL_114;
          }

          goto LABEL_110;
        }

        goto LABEL_72;
      }
    }

LABEL_55:
    v114 = 0;
    v115 = 0xE000000000000000;
    if (countAndFlagsBits)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

LABEL_16:
  v50 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v51 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v51)
  {
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v52 = [v51 userLocation];
  v53 = [v52 location];

  if (v53)
  {

    v54 = *(v1 + v50);
    if (v54)
    {
      v55 = v54;
      v56 = [v55 userLocation];
      [v55 selectAnnotation:v56 animated:1];

      return;
    }

    goto LABEL_116;
  }

  v90 = *(v1 + v50);
  if (!v90)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    return;
  }

  [v90 centerCoordinate];
  if (fabs(v92) <= 180.0 && fabs(v91) <= 90.0)
  {
    v93 = *(v1 + v50);
    if (v93)
    {
      v94 = v91;
      v95 = v92;
      [v93 setRegion:1 animated:?];
      v96 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v96 = v94;
      *(v96 + 8) = v95;
      *(v96 + 16) = xmmword_1005622E0;
      *(v96 + 32) = 0;
      return;
    }

    goto LABEL_119;
  }
}

void sub_10045FC64(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    v15 = [v10 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100005B4C(v16, v18, &aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMFenceMapViewController: addAndSelectAnnotation %s", v13, 0xCu);
    sub_100006060(v14);
  }

  v20 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v21 = *(v4 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  [v10 coordinate];
  v66 = MKCoordinateRegionMakeWithDistance(v65, *&v10[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] * 3.5, *&v10[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] * 3.5);
  [v22 regionThatFits:{v66.center.latitude, v66.center.longitude, v66.span.latitudeDelta, v66.span.longitudeDelta}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = fabs(v24);
  v32 = fabs(v26) > 180.0 || v31 > 90.0;
  if (v32 || (v28 >= 0.0 ? (v33 = v28 > 180.0) : (v33 = 1), v33 || (v30 >= 0.0 ? (v34 = v30 > 360.0) : (v34 = 1), v34)))
  {
LABEL_20:
    v52 = v6;
    v37 = *(v4 + v20);
    if (v37)
    {
      [v37 addAnnotation:v10];
      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v38 = static OS_dispatch_queue.main.getter();
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v10;
      v63 = sub_10046D108;
      v64 = v40;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_100004AE4;
      v62 = &unk_100640348;
      v41 = _Block_copy(&aBlock);
      v42 = v10;

      v43 = v54;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v51[2] = sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v51[1] = sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      v51[3] = sub_100037970();
      v44 = v56;
      v45 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);

      v52 = *(v52 + 8);
      (v52)(v44, v45);
      v55 = *(v55 + 8);
      (v55)(v43, v57);
      v51[0] = *&v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup];
      v46 = static OS_dispatch_queue.main.getter();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = v42;
      v63 = sub_10046D158;
      v64 = v48;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_100004AE4;
      v62 = &unk_100640398;
      v49 = _Block_copy(&aBlock);
      v50 = v42;

      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v49);

      (v52)(v44, v45);
      (v55)(v43, v57);

      return;
    }

    goto LABEL_23;
  }

  v35 = *(v4 + v20);
  if (v35)
  {
    [v35 setRegion:1 animated:{v24, v26, v28, v30}];
    v36 = v4 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
    *v36 = v24;
    *(v36 + 8) = v26;
    *(v36 + 16) = v28;
    *(v36 + 24) = v30;
    *(v36 + 32) = 0;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void sub_100460368(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 selectAnnotation:a2 animated:1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004603FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = [v9 viewForAnnotation:a2];

      if (v10)
      {
        v11 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
        swift_beginAccess();
        sub_100007204(a2 + v11, v5, &qword_1006B0040, &qword_100552AE0);
        v12 = type metadata accessor for FMFAddress();
        v13 = (*(*(v12 - 8) + 48))(v5, 1, v12) != 1;
        sub_100012DF0(v5, &qword_1006B0040, &qword_100552AE0);
        [v10 setCanShowCallout:v13];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004605A0(void *a1, uint64_t a2, char *a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v58 = a6;
  v13 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v13 - 8);
  v15 = v53 - v14;
  v16 = type metadata accessor for FMFLocationAlertAddressType();
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_2;
  }

  if (!a1)
  {
    return;
  }

  v56 = a7;
  v57 = v17;
  v27 = [a1 mapItems];
  sub_10000905C(0, &qword_1006C0800, MKMapItem_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v29)
  {
LABEL_2:
    v21 = *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController];
    if (v21)
    {
      v22 = [v21 searchBar];
      v23 = [objc_opt_self() mainBundle];
      v61._object = 0x800000010058B160;
      v24._object = 0x800000010058B140;
      v61._countAndFlagsBits = 0xD00000000000002CLL;
      v24._countAndFlagsBits = 0xD00000000000001ALL;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v61);

      v58 = String._bridgeToObjectiveC()();

      [v22 setPlaceholder:v58];

      v26 = v58;
    }
  }

  else
  {
    v30 = [a1 mapItems];
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
LABEL_12:
        v59 = _swiftEmptyArrayStorage;
        __chkstk_darwin(v32);
        v55 = a4;
        v53[-6] = a4;
        v53[-5] = &v59;
        v53[-4] = v31;
        LOBYTE(v53[-3]) = a5 & 1;
        v61._object = a3;
        sub_100190528(sub_10046D83C, &v53[-8], v31);
        v33 = *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
        if (v33)
        {
          v54 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
          v34 = v59;
          v35 = v59 >> 62;
          if (v59 >> 62)
          {
            v52 = v33;

            sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
            _bridgeCocoaArray<A>(_:)();
          }

          else
          {
            v36 = v33;

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v53[1] = sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v33 addAnnotations:isa];

          v38 = v57;
          (*(v57 + 104))(v20, enum case for FMFLocationAlertAddressType.droppedPin(_:), v16);
          sub_10000A618(&qword_1006BA958, &type metadata accessor for FMFLocationAlertAddressType, &protocol conformance descriptor for FMFLocationAlertAddressType);
          LOBYTE(isa) = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v38 + 8))(v20, v16);
          if ((isa & 1) != 0 || (v35 ? (v39 = _CocoaArrayWrapper.endIndex.getter()) : (v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10)), !v39))
          {
LABEL_30:
            v44 = *&a3[v54];
            if (v44)
            {

              v45 = v44;
              if (v35)
              {
                _bridgeCocoaArray<A>(_:)();
              }

              else
              {
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              }

              v41 = Array._bridgeToObjectiveC()().super.isa;

              [v44 showAnnotations:v41 animated:1];

              goto LABEL_35;
            }

            goto LABEL_46;
          }

          if ((v34 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_23;
          }

          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v40 = *(v34 + 32);
LABEL_23:
            v41 = v40;
            if (v35)
            {
              v42 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v42 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v42 == 1)
            {
              v43 = *&a3[v54];
              if (v43)
              {
                [v43 selectAnnotation:v41 animated:1];
LABEL_35:
                v46 = v55;

                *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults] = v31;

                v47 = v57;
                (*(v57 + 16))(v15, v46, v16);
                (*(v47 + 56))(v15, 0, 1, v16);
                v48 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType;
                swift_beginAccess();
                sub_1000BBF40(v15, &a3[v48], &qword_1006B00C8, &qword_10055C900);
                swift_endAccess();
                v49 = &a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
                v50 = v56;
                *v49 = v58;
                *(v49 + 1) = v50;

                v51 = [objc_opt_self() sharedApplication];
                [v51 setNetworkActivityIndicatorVisible:0];

                return;
              }

LABEL_47:
              __break(1u);
              return;
            }

            goto LABEL_30;
          }

          __break(1u);
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_100460D10(id *a1, uint64_t a2, void *a3, unint64_t a4, int a5, uint64_t a6)
{
  v103 = a6;
  v104 = a5;
  v109 = a3;
  v110 = a4;
  v8 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v8 - 8);
  v117 = &v103 - v9;
  v10 = type metadata accessor for FMFLocationAlertAddressType();
  v11 = *(v10 - 8);
  v113 = v10;
  v114 = v11;
  __chkstk_darwin(v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FMFAddress();
  v14 = *(v115 - 8);
  *&v15 = __chkstk_darwin(v115).n128_u64[0];
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = [*a1 placemark];
  FMFAddress.init(from:)();
  v20 = [v18 placemark];
  v21 = [v20 region];

  if (v21)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v108 = v22 == 0;
    if (v22)
    {
      [v22 radius];
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = v113;
  }

  else
  {
    v108 = 1;
    v24 = 0.0;
    v25 = v113;
  }

  v26 = [v18 placemark];
  [v26 coordinate];
  v28 = v27;
  v30 = v29;

  v31 = [v18 name];
  v105 = v18;
  if (v31)
  {
    v32 = v13;
    v33 = v31;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v34;

    v13 = v32;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v35 = *(v114 + 16);
  v35(v13, a2, v25);
  v36 = *(v14 + 16);
  v37 = v117;
  v111 = v17;
  v38 = v115;
  v36(v117, v17, v115);
  v112 = v14;
  v39 = *(v14 + 56);
  v39(v37, 0, 1, v38);
  v40 = type metadata accessor for FMFenceMapAnnotation(0);
  v41 = v13;
  v42 = objc_allocWithZone(v40);
  v39(&v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v38);
  *&v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
  v43 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
  *&v42[v43] = dispatch_group_create();
  v44 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
  *&v42[v44] = [objc_allocWithZone(CLGeocoder) init];
  v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
  v45 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v46 = *&qword_1006D4D20;
  *&v42[v45] = qword_1006D4D20;
  v47 = v41;
  v35(&v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v41, v25);
  v42[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 1;
  v116.receiver = v42;
  v116.super_class = v40;
  v48 = objc_msgSendSuper2(&v116, "init");
  v49 = v48;
  v50 = v25;
  if (v107)
  {
    v51 = v48;
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = v48;
    v52 = 0;
  }

  v54 = v115;
  v55 = v111;
  v56 = v112;
  [v49 setTitle:v52];

  [v49 setSubtitle:0];
  [v49 setCoordinate:{v28, v30}];

  v57 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  v58 = v49 + v57;
  v59 = v117;
  sub_100278A8C(v117, v58);
  swift_endAccess();
  if (qword_1006AED90 != -1)
  {
    swift_once();
  }

  if (v108)
  {
    v60 = v46;
  }

  else
  {
    v60 = v24;
  }

  if (v46 > v60)
  {
    v60 = v46;
  }

  if (v60 >= *&qword_1006D4D28)
  {
    v61 = *&qword_1006D4D28;
  }

  else
  {
    v61 = v60;
  }

  v115 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  *(v49 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius) = v61;
  v62 = [objc_opt_self() circleWithCenterCoordinate:v28 radius:{v30, v61}];
  v63 = *(v49 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay);
  *(v49 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay) = v62;

  v64 = v49;
  if ((*(v56 + 48))(v59, 1, v54) != 1)
  {
    v65 = [v49 title];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = sub_100486C44();
      if (v69)
      {
        if (v71)
        {
          if (v67 == v70 && v71 == v69)
          {

            v64 = 0;
LABEL_36:
            v50 = v113;

LABEL_41:
            [v49 setSubtitle:v64];

            goto LABEL_42;
          }

          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v74)
          {
LABEL_40:
            v64 = 0;
            v50 = v113;
            goto LABEL_41;
          }

LABEL_34:
          sub_100486C44();
          if (v73)
          {
            v64 = String._bridgeToObjectiveC()();
            goto LABEL_36;
          }

          goto LABEL_40;
        }

LABEL_33:

        goto LABEL_34;
      }

      v50 = v113;
      if (v71)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_100486C44();
      if (v72)
      {
        goto LABEL_33;
      }
    }

    v64 = 0;
    goto LABEL_41;
  }

LABEL_42:

  dispatch_group_enter(*(v49 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup));
  sub_100485F88(v75, v76, v77);
  (*(v114 + 8))(v47, v50);
  sub_100012DF0(v59, &qword_1006B0040, &qword_100552AE0);
  v78 = v49;
  v79 = v109;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v80 = v110;
  if (v110 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_62;
    }
  }

  else if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

  if ((v80 & 0xC000000000000001) != 0)
  {
    v81 = v55;
    v83 = v105;
    v102 = v105;
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v81 = v55;
    v82 = *(v80 + 32);
    v83 = v105;
    v84 = v105;
    v85 = v82;
  }

  v86 = v85;
  sub_10000905C(0, &qword_1006C0800, MKMapItem_ptr);
  v87 = static NSObject.== infix(_:_:)();

  v55 = v81;
  if ((v87 & 1) == 0 || (v104 & 1) == 0)
  {
LABEL_62:

    (*(v56 + 8))(v55, v54);
    return;
  }

  v88 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v89 = *(v103 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (v89)
  {
    v90 = v89;
    [v78 coordinate];
    v119 = MKCoordinateRegionMakeWithDistance(v118, *(v49 + v115) * 3.5, *(v49 + v115) * 3.5);
    [v90 regionThatFits:{v119.center.latitude, v119.center.longitude, v119.span.latitudeDelta, v119.span.longitudeDelta}];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;

    if (fabs(v94) > 180.0 || fabs(v92) > 90.0 || v96 < 0.0 || v96 > 180.0 || v98 < 0.0 || v98 > 360.0)
    {

      (*(v56 + 8))(v81, v54);
      return;
    }

    v99 = v103;
    v100 = *(v103 + v88);
    if (v100)
    {
      [v100 setRegion:1 animated:{v92, v94, v96, v98}];

      (*(v56 + 8))(v81, v54);
      v101 = v99 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v101 = v92;
      *(v101 + 8) = v94;
      *(v101 + 16) = v96;
      *(v101 + 24) = v98;
      *(v101 + 32) = 0;
      return;
    }

    goto LABEL_66;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_100461728()
{
  v1 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  if (!*(v0 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator))
  {
LABEL_16:
    __break(1u);

    __break(1u);
    return;
  }

  v10 = dispatch thunk of FMFManager.friends.getter();

  v27 = *(v10 + 16);
  if (v27)
  {
    v11 = 0;
    v25 = (v5 + 32);
    v26 = v5 + 16;
    v21 = (v5 + 8);
    v12 = _swiftEmptyArrayStorage;
    v23 = v4;
    v24 = v3;
    v22 = v10;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      (*(v5 + 16))(v9, v10 + v13 + v14 * v11, v4);
      FMFFriend.location.getter();
      v15 = type metadata accessor for FMFLocation();
      v16 = (*(*(v15 - 8) + 48))(v3, 1, v15);
      sub_100012DF0(v3, &qword_1006AF740, &unk_100552330);
      if (v16 == 1)
      {
        (*v21)(v9, v4);
      }

      else
      {
        v17 = *v25;
        (*v25)(v28, v9, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001671C0(0, v12[2] + 1, 1);
          v12 = v29;
        }

        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_1001671C0((v19 > 1), v20 + 1, 1);
          v12 = v29;
        }

        v12[2] = v20 + 1;
        v4 = v23;
        v17(v12 + v13 + v20 * v14, v28, v23);
        v3 = v24;
        v10 = v22;
      }

      if (v27 == ++v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_14:

  v29 = v12;

  sub_10046946C(&v29);
}

void sub_100461A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v330 = type metadata accessor for DispatchWorkItemFlags();
  v308 = *(v330 - 8);
  __chkstk_darwin(v330);
  v329 = &v285 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for DispatchQoS();
  v307 = *(v328 - 8);
  __chkstk_darwin(v328);
  v327 = &v285 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = type metadata accessor for FMFLabelledLocation();
  v334 = *(v335 - 8);
  __chkstk_darwin(v335);
  v324 = &v285 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v317 = &v285 - v8;
  __chkstk_darwin(v9);
  v316 = (&v285 - v10);
  __chkstk_darwin(v11);
  v333 = &v285 - v12;
  __chkstk_darwin(v13);
  v304 = &v285 - v14;
  __chkstk_darwin(v15);
  v315 = &v285 - v16;
  __chkstk_darwin(v17);
  v326 = &v285 - v18;
  v19 = sub_10007EBC0(&unk_1006B0670, &unk_100554180);
  __chkstk_darwin(v19 - 8);
  v296 = &v285 - v20;
  v298 = type metadata accessor for FMFContact();
  v297 = *(v298 - 8);
  __chkstk_darwin(v298);
  v290 = &v285 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v22 - 8);
  v325 = &v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v322 = &v285 - v25;
  __chkstk_darwin(v26);
  v28 = &v285 - v27;
  __chkstk_darwin(v29);
  v323 = (&v285 - v30);
  __chkstk_darwin(v31);
  v291 = &v285 - v32;
  v319 = type metadata accessor for FMFFriend();
  v314 = *(v319 - 8);
  __chkstk_darwin(v319);
  v295 = &v285 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v313 = &v285 - v35;
  v36 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v36 - 8);
  v318 = &v285 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v309 = &v285 - v39;
  __chkstk_darwin(v40);
  v303 = &v285 - v41;
  __chkstk_darwin(v42);
  v288 = &v285 - v43;
  __chkstk_darwin(v44);
  v289 = &v285 - v45;
  __chkstk_darwin(v46);
  v331 = &v285 - v47;
  v48 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v48 - 8);
  v311 = &v285 - v49;
  v320 = type metadata accessor for FMFLocationAlertAddressType();
  v312 = *(v320 - 1);
  __chkstk_darwin(v320);
  v300 = &v285 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v51 - 8);
  v292 = &v285 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v285 - v54;
  v56 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v56 - 8);
  v294 = &v285 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v305 = &v285 - v59;
  __chkstk_darwin(v60);
  v62 = &v285 - v61;
  v63 = type metadata accessor for FMFLocation();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v293 = &v285 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v299 = &v285 - v67;
  __chkstk_darwin(v68);
  v70 = &v285 - v69;
  v340 = _swiftEmptyArrayStorage;
  v71 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
  swift_beginAccess();
  v332 = v3;
  sub_100007204(v3 + v71, v62, &qword_1006AF740, &unk_100552330);
  v302 = *(v64 + 48);
  v72 = v302(v62, 1, v63);
  v306 = v64;
  if (v72 == 1)
  {
    v73 = &qword_1006AF740;
    v74 = &unk_100552330;
    v75 = v62;
LABEL_5:
    sub_100012DF0(v75, v73, v74);
    v77 = v331;
    v78 = [objc_opt_self() mainBundle];
    v341._object = 0x800000010059A700;
    v79._object = 0x800000010059A6D0;
    v341._countAndFlagsBits = 0xD00000000000003FLL;
    v79._countAndFlagsBits = 0xD00000000000002DLL;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v341);

    v82 = v311;
    (*(v312 + 56))(v311, 1, 1, v320);
    v83 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
    v84 = sub_1002D06C0(v81._countAndFlagsBits, v81._object, v82, 0, 0, 0, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_11;
  }

  (*(v64 + 32))(v70, v62, v63);
  FMFLocation.address.getter();
  v76 = type metadata accessor for FMFAddress();
  if ((*(*(v76 - 8) + 48))(v55, 1, v76) == 1)
  {
    (*(v64 + 8))(v70, v63);
    v73 = &qword_1006B0040;
    v74 = &qword_100552AE0;
    v75 = v55;
    goto LABEL_5;
  }

  sub_100012DF0(v55, &qword_1006B0040, &qword_100552AE0);
  v85 = [objc_opt_self() mainBundle];
  v342._object = 0x800000010059A700;
  v86._object = 0x800000010059A6D0;
  v342._countAndFlagsBits = 0xD00000000000003FLL;
  v86._countAndFlagsBits = 0xD00000000000002DLL;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v88 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v85, v87, v342);

  v89 = v300;
  (*(v312 + 104))(v300, enum case for FMFLocationAlertAddressType.currentLocation(_:), v320);
  v90 = v299;
  (*(v64 + 16))(v299, v70, v63);
  v91 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
  v92 = sub_1002D0C50(v88._countAndFlagsBits, v88._object, v89, v90);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v64 + 8))(v70, v63);
  v77 = v331;
LABEL_11:
  v331 = v340;
  v93 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
  v94 = v332;
  v95 = *(v332 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe) == 1;
  v321 = v28;
  if (v95)
  {
    v301 = v63;
    v310 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
    v96 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
    swift_beginAccess();
    sub_100007204(v94 + v96, v77, &qword_1006B0050, &unk_1005538A0);
    v97 = v314;
    v98 = *(v314 + 48);
    v99 = v319;
    if (v98(v77, 1, v319))
    {
      sub_100012DF0(v77, &qword_1006B0050, &unk_1005538A0);
      v100 = v306;
      v101 = v305;
      (*(v306 + 56))(v305, 1, 1, v301);
LABEL_16:
      sub_100012DF0(v101, &qword_1006AF740, &unk_100552330);
LABEL_17:
      v108 = v303;
      sub_100007204(v332 + v96, v303, &qword_1006B0050, &unk_1005538A0);
      v109 = v319;
      if (v98(v108, 1, v319))
      {
        sub_100012DF0(v108, &qword_1006B0050, &unk_1005538A0);
        v102 = v332;
        v103 = _swiftEmptyArrayStorage;
        v110 = v309;
        v93 = v310;
        goto LABEL_34;
      }

      v287 = v98;
      v111 = v314;
      v112 = v295;
      (*(v314 + 16))(v295, v108, v109);
      sub_100012DF0(v108, &qword_1006B0050, &unk_1005538A0);
      v113 = v294;
      FMFFriend.location.getter();
      (*(v111 + 8))(v112, v109);
      v114 = v301;
      if (v302(v113, 1, v301) == 1)
      {
        v115 = &qword_1006AF740;
        v116 = &unk_100552330;
        v117 = v113;
      }

      else
      {
        v122 = v291;
        FMFLocation.label.getter();
        (*(v100 + 8))(v113, v114);
        v123 = type metadata accessor for FMFLabel();
        v124 = *(v123 - 8);
        if ((*(v124 + 48))(v122, 1, v123) != 1)
        {
          v129 = FMFLabel.localizedValue.getter();
          v131 = v130;
          (*(v124 + 8))(v122, v123);
          v132 = [objc_opt_self() mainBundle];
          v343._object = 0x800000010059A700;
          v133._object = 0x800000010059A6D0;
          v343._countAndFlagsBits = 0xD00000000000003FLL;
          v133._countAndFlagsBits = 0xD00000000000002DLL;
          v134._countAndFlagsBits = 0;
          v134._object = 0xE000000000000000;
          v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v343);

          v136 = v311;
          (*(v312 + 56))(v311, 1, 1, v320);
          v137 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
          v138 = sub_1002D06C0(v135._countAndFlagsBits, v135._object, v136, v129, v131, 0, 0);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v102 = v332;
          v103 = _swiftEmptyArrayStorage;
          v110 = v309;
          if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_152;
          }

          goto LABEL_32;
        }

        v115 = &qword_1006B0038;
        v116 = &unk_10055EDB0;
        v117 = v122;
      }

      sub_100012DF0(v117, v115, v116);
LABEL_26:
      v102 = v332;
      v103 = _swiftEmptyArrayStorage;
      v110 = v309;
      goto LABEL_33;
    }

    v104 = *(v97 + 16);
    v287 = v98;
    v105 = v313;
    v285 = v104;
    v104(v313, v77, v99);
    sub_100012DF0(v77, &qword_1006B0050, &unk_1005538A0);
    v101 = v305;
    FMFFriend.location.getter();
    v106 = v105;
    v98 = v287;
    v286 = *(v97 + 8);
    v286(v106, v99);
    v107 = v302(v101, 1, v301);
    v100 = v306;
    if (v107 == 1)
    {
      goto LABEL_16;
    }

    v118 = v293;
    v119 = v301;
    (*(v306 + 32))(v293, v101, v301);
    v120 = v292;
    FMFLocation.address.getter();
    v121 = type metadata accessor for FMFAddress();
    if ((*(*(v121 - 8) + 48))(v120, 1, v121) == 1)
    {
      (*(v100 + 8))(v118, v119);
      sub_100012DF0(v120, &qword_1006B0040, &qword_100552AE0);
      v98 = v287;
      goto LABEL_17;
    }

    sub_100012DF0(v120, &qword_1006B0040, &qword_100552AE0);
    v125 = v289;
    sub_100007204(v332 + v96, v289, &qword_1006B0050, &unk_1005538A0);
    v126 = v319;
    if (v287(v125, 1, v319))
    {
      sub_100012DF0(v125, &qword_1006B0050, &unk_1005538A0);
    }

    else
    {
      v262 = v313;
      v285(v313, v125, v126);
      sub_100012DF0(v125, &qword_1006B0050, &unk_1005538A0);
      v292 = FMFFriend.shortName.getter();
      v264 = v263;
      v286(v262, v126);
      v305 = v264;
      if (v264)
      {
        v265 = v292;
        goto LABEL_138;
      }
    }

    v127 = v288;
    sub_100007204(v332 + v96, v288, &qword_1006B0050, &unk_1005538A0);
    v128 = v319;
    v98 = v287;
    if (v287(v127, 1, v319))
    {
      sub_100012DF0(v127, &qword_1006B0050, &unk_1005538A0);

      (*(v100 + 8))(v293, v301);
      goto LABEL_17;
    }

    v266 = v313;
    v285(v313, v127, v128);
    sub_100012DF0(v127, &qword_1006B0050, &unk_1005538A0);
    v267 = FMFFriend.name.getter();
    v268 = v128;
    v265 = v267;
    v305 = v269;
    v286(v266, v268);

LABEL_138:
    v270 = [objc_opt_self() mainBundle];
    v271._countAndFlagsBits = 0xD000000000000027;
    v344._object = 0x800000010057AD90;
    v271._object = 0x800000010057AD60;
    v344._countAndFlagsBits = 0xD000000000000039;
    v272._countAndFlagsBits = 0;
    v272._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v271, 0, v270, v272, v344);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v273 = swift_allocObject();
    *(v273 + 16) = xmmword_100552220;
    *(v273 + 56) = &type metadata for String;
    *(v273 + 64) = sub_10008EE84();
    v274 = v305;
    *(v273 + 32) = v265;
    *(v273 + 40) = v274;
    v275 = String.init(format:_:)();
    v277 = v276;

    v278 = v300;
    (*(v312 + 104))(v300, enum case for FMFLocationAlertAddressType.friendLocation(_:), v320);
    v279 = v299;
    v280 = v293;
    v281 = v301;
    (*(v100 + 16))(v299, v293, v301);
    v282 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
    v283 = sub_1002D0C50(v275, v277, v278, v279);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v100 + 8))(v280, v281);
    v331 = v340;
    goto LABEL_26;
  }

  v102 = v332;
  v103 = _swiftEmptyArrayStorage;
LABEL_37:
  v142 = sub_100478F60();
  if (v142)
  {
    while (1)
    {
      v143 = v142;
      v144 = objc_opt_self();
      v309 = v143;
      v110 = v143;
      v145 = [v144 stringFromContact:v110 style:0];
      if (!v145)
      {

        goto LABEL_54;
      }

      v146 = v145;
      v320 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v148 = v147;

      v138 = [v110 postalAddresses];
      sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
      v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v150 = v149;
      if (v149 >> 62)
      {
        v138 = v149;
        v284 = _CocoaArrayWrapper.endIndex.getter();
        v150 = v149;
        v103 = v284;
        if (!v284)
        {
LABEL_150:

          v102 = v332;
          v103 = _swiftEmptyArrayStorage;
          goto LABEL_54;
        }
      }

      else
      {
        v103 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v103)
        {
          goto LABEL_150;
        }
      }

      v310 = v93;
      if (v103 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_152:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_32:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v331 = v340;
LABEL_33:
      v93 = v310;
      v98 = v287;
LABEL_34:
      if (*(v102 + v93) != 1)
      {
        goto LABEL_37;
      }

      v139 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
      swift_beginAccess();
      sub_100007204(v102 + v139, v110, &qword_1006B0050, &unk_1005538A0);
      v140 = v319;
      if (v98(v110, 1, v319))
      {
        sub_100012DF0(v110, &qword_1006B0050, &unk_1005538A0);
        v141 = v296;
        (*(v297 + 56))(v296, 1, 1, v298);
LABEL_52:
        sub_100012DF0(v141, &unk_1006B0670, &unk_100554180);
        goto LABEL_53;
      }

      v160 = v314;
      v161 = v313;
      (*(v314 + 16))(v313, v110, v140);
      sub_100012DF0(v110, &qword_1006B0050, &unk_1005538A0);
      v141 = v296;
      FMFFriend.contact.getter();
      v162 = v160;
      v93 = v310;
      (*(v162 + 8))(v161, v140);
      v163 = v297;
      v164 = v298;
      if ((*(v297 + 48))(v141, 1, v298) == 1)
      {
        goto LABEL_52;
      }

      v259 = v290;
      (*(v163 + 32))(v290, v141, v164);
      FMFContact.storeUUID.getter();
      sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
      v260 = swift_allocObject();
      *(v260 + 16) = xmmword_1005528C0;
      *(v260 + 32) = [objc_opt_self() descriptorForRequiredKeys];
      v261 = dispatch thunk of FMFContactsDataController.contact(for:keysToFetch:)();
      v93 = v310;

      (*(v163 + 8))(v259, v164);
      v142 = v261;
      if (!v261)
      {
        goto LABEL_53;
      }
    }

    v151 = 0;
    v331 = (v150 & 0xC000000000000001);
    v152 = v150;
    do
    {
      if (v331)
      {
        v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v153 = *(v150 + 8 * v151 + 32);
      }

      v154 = v153;
      v155 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
      v156 = v110;
      v157 = v110;

      v158 = v154;
      v159 = sub_1002D1F7C(v320, v148, v157, v158, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v151;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v110 = v156;
      v150 = v152;
    }

    while (v103 != v151);
    v331 = v340;

    v102 = v332;
    v103 = _swiftEmptyArrayStorage;
    v93 = v310;
  }

  else
  {
LABEL_53:
    v309 = 0;
  }

LABEL_54:
  v165 = *(v102 + v93);
  v339 = v103;
  v166 = *(v102 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator);
  if (v165 == 1)
  {
    if (!v166)
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v167 = *(v166 + 48);

    v168 = dispatch thunk of FMFManager.labelledLocations.getter();

    if (v168)
    {
      v169 = v168;
    }

    else
    {
      v169 = v103;
    }

    v170 = *(v169 + 16);
    v317 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
    swift_beginAccess();
    if (v170)
    {
      v171 = 0;
      v172 = v334 + 16;
      v316 = (v314 + 48);
      v311 = (v314 + 16);
      v310 = (v314 + 8);
      v314 = v334 + 32;
      v320 = (v334 + 8);
      v173 = _swiftEmptyArrayStorage;
      v174 = v335;
      v175 = v326;
      while (1)
      {
        if (v171 >= *(v169 + 16))
        {
          goto LABEL_143;
        }

        v325 = ((*(v334 + 80) + 32) & ~*(v334 + 80));
        v324 = *(v334 + 72);
        (*(v334 + 16))(v175, &v325[v169 + v324 * v171], v174);
        v176 = v323;
        FMFLabelledLocation.label.getter();
        v177 = v176;
        v167 = type metadata accessor for FMFLabel();
        v178 = *(v167 - 8);
        if ((*(v178 + 48))(v177, 1, v167) == 1)
        {
          sub_100012DF0(v177, &qword_1006B0038, &unk_10055EDB0);
        }

        else
        {
          v322 = v173;
          v179 = v172;
          v180 = v169;
          v181 = v170;
          FMFLabel.localizedValue.getter();
          (*(v178 + 8))(v177, v167);
          v182 = v319;

          v183 = FMFLabelledLocation.userId.getter();
          v167 = v184;
          v185 = v318;
          sub_100007204(&v317[v332], v318, &qword_1006B0050, &unk_1005538A0);
          if ((*v316)(v185, 1, v182))
          {
            sub_100012DF0(v185, &qword_1006B0050, &unk_1005538A0);
            v170 = v181;
            v169 = v180;
            v172 = v179;
            v173 = v322;
            if (!v167)
            {
              goto LABEL_77;
            }

LABEL_75:

            goto LABEL_62;
          }

          v312 = v183;
          v186 = v313;
          (*v311)(v313, v185, v182);
          sub_100012DF0(v185, &qword_1006B0050, &unk_1005538A0);
          v187 = FMFFriend.identifier.getter();
          v189 = v188;
          (*v310)(v186, v182);
          v170 = v181;
          v169 = v180;
          v172 = v179;
          if (!v167)
          {
            v173 = v322;
            if (!v189)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }

          v173 = v322;
          if (!v189)
          {
            goto LABEL_75;
          }

          if (v312 == v187 && v167 == v189)
          {

LABEL_77:
            v191 = *v314;
            v174 = v335;
            (*v314)(v315, v326, v335);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v173;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001675DC(0, *(v173 + 16) + 1, 1);
              v174 = v335;
              v173 = aBlock[0];
            }

            v194 = *(v173 + 16);
            v193 = *(v173 + 24);
            v167 = v194 + 1;
            if (v194 >= v193 >> 1)
            {
              sub_1001675DC((v193 > 1), v194 + 1, 1);
              v174 = v335;
              v173 = aBlock[0];
            }

            *(v173 + 16) = v167;
            v191(&v325[v173 + v194 * v324], v315, v174);
            v175 = v326;
            goto LABEL_63;
          }

          v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v190)
          {
            goto LABEL_77;
          }
        }

LABEL_62:
        v175 = v326;
        v174 = v335;
        (*v320)(v326, v335);
LABEL_63:
        if (v170 == ++v171)
        {
          goto LABEL_101;
        }
      }
    }

    v173 = v103;
    v174 = v335;
LABEL_101:

    aBlock[0] = v173;

    sub_1004693C4(aBlock);

    v214 = aBlock[0];
    v215 = v304;
    v326 = *(aBlock[0] + 16);
    if (v326)
    {
      v216 = 0;
      v217 = v334 + 16;
      v324 = v334 + 8;
      v325 = aBlock[0];
      v218 = v321;
      while (1)
      {
        if (v216 >= *(v214 + 2))
        {
          goto LABEL_145;
        }

        v219 = *(v334 + 16);
        v219(v215, &v214[((*(v334 + 80) + 32) & ~*(v334 + 80)) + *(v334 + 72) * v216], v174);
        v220 = v217;
        v221 = v174;
        FMFLabelledLocation.label.getter();
        v222 = type metadata accessor for FMFLabel();
        v223 = *(v222 - 8);
        if ((*(v223 + 48))(v218, 1, v222) == 1)
        {
          break;
        }

        v224 = FMFLabel.localizedValue.getter();
        v226 = v225;
        (*(v223 + 8))(v218, v222);
        v227 = v333;
        v219(v333, v215, v221);
        v228 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
        v229 = sub_1002D1934(v224, v226, v227, 0, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v217 = v220;
        if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v331 = v340;
        v167 = v229;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v214 = v325;
        if (*((v339 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v339 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v216;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v174 = v335;
        (*v324)(v215, v335);
        if (v326 == v216)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    goto LABEL_122;
  }

  if (!v166)
  {
LABEL_156:
    __break(1u);

    __break(1u);
    return;
  }

  v195 = dispatch thunk of FMFManager.labelledLocations.getter();

  if (v195)
  {
    v167 = v195;
  }

  else
  {
    v167 = v103;
  }

  v196 = *(v167 + 16);
  if (v196)
  {
    v197 = 0;
    v320 = (v334 + 32);
    v326 = (v334 + 8);
    v321 = _swiftEmptyArrayStorage;
    v198 = v335;
    v199 = v316;
    v323 = v167;
    while (1)
    {
      if (v197 >= *(v167 + 16))
      {
        goto LABEL_144;
      }

      v200 = (*(v334 + 80) + 32) & ~*(v334 + 80);
      v201 = *(v334 + 72);
      (*(v334 + 16))(v199, v167 + v200 + v201 * v197, v198);
      v202 = v322;
      FMFLabelledLocation.label.getter();
      v203 = v202;
      v204 = type metadata accessor for FMFLabel();
      v205 = *(v204 - 8);
      if ((*(v205 + 48))(v203, 1, v204) == 1)
      {
        sub_100012DF0(v203, &qword_1006B0038, &unk_10055EDB0);
        v198 = v335;
      }

      else
      {
        FMFLabel.localizedValue.getter();
        (*(v205 + 8))(v203, v204);

        FMFLabelledLocation.userId.getter();
        if (!v206)
        {
          v207 = v199;
          v208 = *v320;
          v198 = v335;
          (*v320)(v317, v207, v335);
          v209 = v321;
          v210 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v209;
          if ((v210 & 1) == 0)
          {
            sub_1001675DC(0, v209[2] + 1, 1);
            v198 = v335;
            v209 = aBlock[0];
          }

          v212 = v209[2];
          v211 = v209[3];
          v213 = v209;
          v167 = v323;
          if (v212 >= v211 >> 1)
          {
            sub_1001675DC((v211 > 1), v212 + 1, 1);
            v198 = v335;
            v213 = aBlock[0];
          }

          v213[2] = v212 + 1;
          v321 = v213;
          v208(v213 + v200 + v212 * v201, v317, v198);
          v199 = v316;
          goto LABEL_90;
        }

        v198 = v335;
        v167 = v323;
      }

      (*v326)(v199, v198);
LABEL_90:
      if (v196 == ++v197)
      {
        goto LABEL_112;
      }
    }
  }

  v321 = v103;
  v198 = v335;
LABEL_112:

  v167 = v321;
  aBlock[0] = v321;

  sub_1004693C4(aBlock);

  v230 = aBlock[0];
  v231 = v325;
  v326 = *(aBlock[0] + 16);
  if (v326)
  {
    v232 = 0;
    v323 = (v334 + 8);
    v233 = v324;
    while (1)
    {
      if (v232 >= *(v230 + 16))
      {
        goto LABEL_146;
      }

      v234 = *(v334 + 16);
      v234(v233, v230 + ((*(v334 + 80) + 32) & ~*(v334 + 80)) + *(v334 + 72) * v232, v198);
      v235 = v198;
      FMFLabelledLocation.label.getter();
      v236 = type metadata accessor for FMFLabel();
      v237 = *(v236 - 8);
      if ((*(v237 + 48))(v231, 1, v236) == 1)
      {
        goto LABEL_154;
      }

      v238 = FMFLabel.localizedValue.getter();
      v239 = v231;
      v241 = v240;
      (*(v237 + 8))(v239, v236);
      v242 = v333;
      v234(v333, v233, v235);
      v243 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
      v244 = sub_1002D1934(v238, v241, v242, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v340 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v331 = v340;
      v167 = v244;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v339 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v339 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v232;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v233 = v324;
      v198 = v335;
      (*v323)(v324, v335);
      v231 = v325;
      if (v326 == v232)
      {
LABEL_121:
        v167 = v339;
        goto LABEL_123;
      }
    }
  }

LABEL_122:
  v167 = _swiftEmptyArrayStorage;
LABEL_123:

  if (v167 >> 62)
  {
    goto LABEL_147;
  }

  for (i = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v246 = 0;
    v326 = (v167 & 0xC000000000000001);
    v325 = (v167 & 0xFFFFFFFFFFFFFF8);
    v323 = v338;
    v322 = (v308 + 8);
    v321 = (v307 + 8);
    v324 = i;
    v247 = v329;
    while (1)
    {
      if (v326)
      {
        v248 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v246 >= *(v325 + 2))
        {
          goto LABEL_142;
        }

        v248 = *(v167 + 8 * v246 + 32);
      }

      v249 = v248;
      if (__OFADD__(v246, 1))
      {
        break;
      }

      v335 = v246 + 1;
      v334 = *&v248[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup];
      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v250 = static OS_dispatch_queue.main.getter();
      v251 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v252 = swift_allocObject();
      *(v252 + 16) = v251;
      *(v252 + 24) = v249;
      v338[2] = sub_10046D100;
      v338[3] = v252;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v338[0] = sub_100004AE4;
      v338[1] = &unk_1006402F8;
      v253 = _Block_copy(aBlock);

      v333 = v249;
      v254 = v327;
      static DispatchQoS.unspecified.getter();
      v336 = _swiftEmptyArrayStorage;
      sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      sub_100037970();
      v255 = v167;
      v256 = v330;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v253);

      v257 = v256;
      v167 = v255;
      (*v322)(v247, v257);
      (*v321)(v254, v328);

      v258 = v324;

      ++v246;
      if (v335 == v258)
      {
        goto LABEL_148;
      }
    }

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
LABEL_147:
    ;
  }

LABEL_148:
}

uint64_t sub_1004647DC(uint64_t a1, uint64_t a2)
{
  v17[3] = a2;
  v2 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  FMFLabelledLocation.label.getter();
  v8 = type metadata accessor for FMFLabel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  result = v10(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  FMFLabel.localizedValue.getter();
  v12 = *(v9 + 8);
  v12(v7, v8);
  v13 = String.lowercased()();
  v17[0] = v13._countAndFlagsBits;

  FMFLabelledLocation.label.getter();
  result = v10(v4, 1, v8);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  FMFLabel.localizedValue.getter();
  v12(v4, v8);
  v14 = String.lowercased()();

  if (v17[0] == v14._countAndFlagsBits && v13._object == v14._object)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

void sub_100464A00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 visibleCells];

      sub_10000905C(0, &qword_1006B00B0, UITableViewCell_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for FMFenceMapTableViewCell();
          if (swift_dynamicCastClass())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v9;
          if (v12 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v13 = sub_100537628(_swiftEmptyArrayStorage);

      if (v13)
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v13 >> 62)
        {
          goto LABEL_34;
        }

        for (j = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v16 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *(v14 + 16))
              {
                goto LABEL_33;
              }

              v17 = *(v13 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v20 = OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record;
            v21 = *&v17[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record];
            if (v21)
            {
              type metadata accessor for FMFenceMapTransientRecord(0);
              v22 = v14;
              v23 = v21;
              v24 = a2;
              v25 = static NSObject.== infix(_:_:)();

              v14 = v22;
              if (v25)
              {

                v26 = *&v18[v20];
                *&v18[v20] = v24;
                v27 = v24;

                sub_1003D1198();
                return;
              }
            }

            ++v16;
            if (v19 == j)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          ;
        }

LABEL_35:
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100464D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v128 = *(v6 - 8);
  __chkstk_darwin(v6);
  v126 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DispatchQoS();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for DispatchQoS.QoSClass();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for FMFLocationAlertAddressType();
  v118 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v11 - 8);
  v136 = &v115 - v12;
  v143 = type metadata accessor for FMFLocation();
  v117 = *(v143 - 8);
  __chkstk_darwin(v143);
  v133 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v115 - v15;
  v137 = type metadata accessor for FMFFriend();
  v147 = *(v137 - 8);
  __chkstk_darwin(v137);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v142 = &v115 - v20;
  __chkstk_darwin(v21);
  v145 = &v115 - v22;
  __chkstk_darwin(v23);
  v130 = &v115 - v24;
  v122 = a1;
  v123 = a2;
  v27 = String.lowercased()();
  object = v27._object;
  countAndFlagsBits = v27._countAndFlagsBits;
  v29 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords;
  v129 = v3;
  if (!*&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords])
  {
    v30 = v129;
    sub_100461A98(v27._countAndFlagsBits, v27._object, v26);
    *&v30[v29] = v31;

    object = v27._object;
    countAndFlagsBits = v27._countAndFlagsBits;
  }

  v32 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v32 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v148 = object;
    v116 = v6;
    v157 = _swiftEmptyArrayStorage;
    if (*&v129[v29])
    {
      v33 = *&v129[v29];
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
    }

    sub_100494798(v33);
    v34 = v157;
    v156 = _swiftEmptyArrayStorage;
    if (v157 >> 62)
    {
      goto LABEL_82;
    }

    for (i = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v132 = v16;
      v146 = v18;
      if (i)
      {
        v36 = 0;
        v144 = (v34 & 0xC000000000000001);
        v16 = (v34 & 0xFFFFFFFFFFFFFF8);
        v18 = &type metadata for String;
        while (1)
        {
          if (v144)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v37 = *(v34 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (*&v37[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8] && (aBlock = String.lowercased()(), v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), v40 = StringProtocol.contains<A>(_:)(), , (v40 & 1) != 0) || *&v38[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8] && (aBlock = String.lowercased()(), v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), v41 = StringProtocol.contains<A>(_:)(), , (v41 & 1) != 0) || *&v38[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8] && (aBlock = String.lowercased()(), v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), v42 = StringProtocol.contains<A>(_:)(), , (v42 & 1) != 0))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v36;
          if (v39 == i)
          {
            v43 = v156;
            v18 = v146;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
      }

      else
      {
        v43 = _swiftEmptyArrayStorage;
LABEL_33:

        v157 = v43;
        v46 = *&v129[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults];
        v47 = _swiftEmptyArrayStorage;
        v16 = v145;
        if (v46)
        {
          v156 = _swiftEmptyArrayStorage;
          v48 = v46 & 0xFFFFFFFFFFFFFF8;
          if (v46 >> 62)
          {
            v49 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v49)
          {
            v34 = 0;
            v144 = (v46 & 0xC000000000000001);
            v141 = v46;
            while (1)
            {
              if (v144)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v34 >= *(v48 + 16))
                {
                  goto LABEL_81;
                }

                v51 = *(v46 + 8 * v34 + 32);
              }

              v52 = v51;
              v18 = (v34 + 1);
              if (__OFADD__(v34, 1))
              {
                goto LABEL_80;
              }

              v53 = [v51 name];
              if (v53 && (v54 = v53, static String._unconditionallyBridgeFromObjectiveC(_:)(), v54, v55 = String.lowercased()(), , aBlock = v55, v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), LOBYTE(v54) = StringProtocol.contains<A>(_:)(), , (v54 & 1) != 0) || (v56 = [v52 placemark], v57 = objc_msgSend(v56, "locality"), v56, v57) && (v58 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v60 = v59, v57, aBlock._countAndFlagsBits = v58, aBlock._object = v60, v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), v61 = StringProtocol.contains<A>(_:)(), , (v61 & 1) != 0) || (v62 = objc_msgSend(v52, "placemark"), v63 = objc_msgSend(v62, "subLocality"), v62, v63) && (v64 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v66 = v65, v63, aBlock._countAndFlagsBits = v64, aBlock._object = v66, v154 = countAndFlagsBits, v155 = v148, sub_100035F3C(), v67 = StringProtocol.contains<A>(_:)(), , (v67 & 1) != 0))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v34;
              v50 = v18 == v49;
              v18 = v146;
              v46 = v141;
              if (v50)
              {
                v47 = v156;
                break;
              }
            }
          }
        }

        sub_10045AEB8(v47, &v157);

        sub_100461728();
        v34 = v68;
        v141 = *(v68 + 16);
        if (!v141)
        {
          v144 = _swiftEmptyArrayStorage;
          v70 = v137;
LABEL_67:

          v84 = v144[2];
          if (v84)
          {
            v85 = *(v147 + 16);
            v86 = v144 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
            v148 = *(v147 + 72);
            v146 = (v117 + 48);
            v141 = (v117 + 32);
            LODWORD(v140) = enum case for FMFLocationAlertAddressType.friendLocation(_:);
            v139 = (v118 + 104);
            v138 = (v117 + 16);
            v131 = (v117 + 8);
            v147 += 16;
            v87 = (v147 - 8);
            v88 = v136;
            v142 = v85;
            v89 = v143;
            do
            {
              (v85)(v16, v86, v70);
              (v85)(v18, v16, v70);
              FMFFriend.location.getter();
              if ((*v146)(v88, 1, v89) == 1)
              {
                v90 = *v87;
                (*v87)(v18, v70);
                v90(v16, v70);
                sub_100012DF0(v88, &qword_1006AF740, &unk_100552330);
              }

              else
              {
                v91 = v132;
                (*v141)(v132, v88, v89);
                v92 = FMFFriend.name.getter();
                v94 = v93;
                v95 = v134;
                (*v139)(v134, v140, v135);
                v96 = v18;
                v97 = v133;
                (*v138)(v133, v91, v89);
                v98 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));
                v99 = sub_1002D0C50(v92, v94, v95, v97);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                (*v131)(v91, v89);
                v100 = *v87;
                v70 = v137;
                (*v87)(v96, v137);
                v101 = v145;
                v100(v145, v70);
                v88 = v136;
                v18 = v96;
                v16 = v101;
                v85 = v142;
              }

              v86 += v148;
              --v84;
            }

            while (v84);
          }

          v102 = v129;
          *&v129[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords] = v157;

          v103 = *&v102[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
          if (v103)
          {
            [v103 reloadData];
            sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
            v104 = v120;
            v105 = v119;
            v106 = v121;
            (*(v120 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v121);
            v107 = static OS_dispatch_queue.global(qos:)();
            (*(v104 + 8))(v105, v106);
            v108 = swift_allocObject();
            v109 = v123;
            v108[2] = v122;
            v108[3] = v109;
            v108[4] = v102;
            v152 = sub_10046D0EC;
            v153 = v108;
            aBlock._countAndFlagsBits = _NSConcreteStackBlock;
            aBlock._object = 1107296256;
            v150 = sub_100004AE4;
            v151 = &unk_100640230;
            v110 = _Block_copy(&aBlock);

            v111 = v102;
            v112 = v124;
            static DispatchQoS.unspecified.getter();
            v154 = _swiftEmptyArrayStorage;
            sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
            sub_100037970();
            v113 = v126;
            v114 = v116;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v110);

            (*(v128 + 8))(v113, v114);
            (*(v125 + 8))(v112, v127);

            return;
          }

          __break(1u);
LABEL_85:
          __break(1u);
          return;
        }

        v69 = 0;
        v139 = (v147 + 16);
        v131 = (v147 + 8);
        v138 = (v147 + 32);
        v144 = _swiftEmptyArrayStorage;
        v70 = v137;
        v71 = v130;
        v140 = countAndFlagsBits;
        while (v69 < *(v34 + 16))
        {
          v72 = (*(v147 + 80) + 32) & ~*(v147 + 80);
          v73 = v34;
          v74 = *(v147 + 72);
          (*(v147 + 16))(v71, v34 + v72 + v74 * v69, v70);
          v75 = v71;
          FMFFriend.name.getter();
          v76 = String.lowercased()();

          aBlock = v76;
          v154 = countAndFlagsBits;
          v155 = v148;
          sub_100035F3C();
          v77 = StringProtocol.contains<A>(_:)();

          if (v77)
          {
            v78 = *v138;
            (*v138)(v142, v75, v70);
            v79 = v144;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v156 = v79;
            if (isUniquelyReferenced_nonNull_native)
            {
              v71 = v75;
            }

            else
            {
              sub_1001671C0(0, v79[2] + 1, 1);
              v71 = v130;
              v79 = v156;
            }

            v34 = v73;
            v82 = v79[2];
            v81 = v79[3];
            v83 = v79;
            if (v82 >= v81 >> 1)
            {
              sub_1001671C0((v81 > 1), v82 + 1, 1);
              v71 = v130;
              v83 = v156;
            }

            v83[2] = v82 + 1;
            v144 = v83;
            v78(v83 + v72 + v82 * v74, v142, v70);
          }

          else
          {
            (*v131)(v75, v70);
            v71 = v75;
            v34 = v73;
          }

          ++v69;
          countAndFlagsBits = v140;
          v16 = v145;
          v18 = v146;
          if (v141 == v69)
          {
            goto LABEL_67;
          }
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }
  }

  v44 = v129;
  *&v129[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords] = *&v129[v29];

  v45 = *&v44[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (!v45)
  {
    goto LABEL_85;
  }

  [v45 reloadData];
}

uint64_t sub_100465F14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 predicateForContactsMatchingString:v12 accountIdentifier:0 containerIdentifier:0 groupIdentifier:0];

  v14 = [objc_allocWithZone(CNContactStore) init];
  if (qword_1006AED58 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180, &qword_100550ED0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:isa error:aBlock];

  v17 = aBlock[0];
  if (v16)
  {
    sub_10000905C(0, &qword_1006BFD00, CNContact_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v17;
  }

  else
  {
    v20 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v18 = 0;
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = a3;
  aBlock[4] = sub_10046D0F8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640280;
  v23 = _Block_copy(aBlock);
  v24 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v27);
}

void sub_100466384(unint64_t a1, uint64_t a2)
{
  v8 = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_10045B15C(a1, &v8);
    v3 = v8;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords;
  if (*(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords))
  {
    v5 = *(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = v5;

  sub_100494798(v3);
  *(a2 + v4) = v7;

  v6 = *(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
  if (v6)
  {
    [v6 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10046645C(void *a1, void *a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() stringFromContact:*a1 style:0];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v3 postalAddresses];
  sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v9;
  if (v9 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v9;
    v11 = v20;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    v21 = v10 & 0xC000000000000001;
    v22 = v10;
    do
    {
      if (v21)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord(0));

      v16 = v3;
      v17 = v3;
      v18 = v14;
      v19 = sub_1002D1F7C(v23, v7, v17, v18, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v12;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v16;
      v10 = v22;
    }

    while (v11 != v12);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_100466684(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v3)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v4 = [v3 overlays];
  sub_10007EBC0(&unk_1006C2490, qword_100562450);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_30:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v1;
  v14 = a1;
  if (v6)
  {
    v8 = 0;
    a1 = v5 & 0xC000000000000001;
    do
    {
      v1 = v8;
      while (1)
      {
        if (a1)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          swift_unknownObjectRetain();
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v1;
        if (v8 == v6)
        {
          goto LABEL_19;
        }
      }

      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
    }

    while (v8 != v6);
  }

LABEL_19:

  v9 = *(v7 + v15);
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v7;
  v11 = v9;

  if (_swiftEmptyArrayStorage >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 removeOverlays:isa];

  if (!v14)
  {
    goto LABEL_25;
  }

  v13 = *(v10 + v15);
  if (!v13)
  {
LABEL_34:
    __break(1u);
    return;
  }

  [v13 addOverlay:v14];
LABEL_25:
}

void sub_100466954()
{
  v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v3)
  {
    __break(1u);
LABEL_27:

    __break(1u);
    goto LABEL_28;
  }

  isa = [v3 overlays];
  if (!isa)
  {
    sub_10007EBC0(&unk_1006C2490, qword_100562450);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v4 = *(v1 + v2);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  [v5 removeOverlays:isa];

  v6 = *(v1 + v2);
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v7 = [v6 annotations];
  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v16 = v2;
      v17 = v1;
      v2 = 0;
      while ((v8 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v1 = v17;
          v2 = v16;
          goto LABEL_22;
        }

LABEL_14:
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        ++v2;
        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }

      if (v2 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRetain();
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_22:

  v11 = *(v1 + v2);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v11;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v12 removeAnnotations:v13];

  v14 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation) = 0;

  v15 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery);
  *v15 = 0;
  v15[1] = 0;
}

id sub_100466C20(char *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  v4 = *&a1[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
  [a1 coordinate];
  v30 = MKCoordinateRegionMakeWithDistance(v28, v4 * 3.5, v4 * 3.5);
  v5 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  [result regionThatFits:{v30.center.latitude, v30.center.longitude, v30.span.latitudeDelta, v30.span.longitudeDelta}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *&a1[v3];
  [a1 coordinate];
  v31 = MKCoordinateRegionMakeWithDistance(v29, v15 * 3.5, v15 * 3.5);
  result = *(v1 + v5);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [result regionThatFits:{v31.center.latitude, v31.center.longitude, v31.span.latitudeDelta, v31.span.longitudeDelta}];
  result = *(v1 + v5);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v16;
  v19 = v17;
  result = [result region];
  if (v21 != v18 || v20 != v19)
  {
    result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
    if (result)
    {
      result = [result removeHandle:0];
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v23 = fabs(v8);
  if (fabs(v10) <= 180.0 && v23 <= 90.0 && v12 >= 0.0 && v12 <= 180.0 && v14 >= 0.0 && v14 <= 360.0)
  {
    result = *(v1 + v5);
    if (result)
    {
      result = [result setRegion:1 animated:{v8, v10, v12, v14}];
      v27 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v27 = v8;
      *(v27 + 8) = v10;
      *(v27 + 16) = v12;
      *(v27 + 24) = v14;
      *(v27 + 32) = 0;
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_100466DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = [v13 selectedAnnotations];
  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_21:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_21;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
LABEL_7:

  type metadata accessor for FMFenceMapAnnotation(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    if (!*(v16 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark))
    {
      v31[1] = *(v16 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup);
      v22 = v5;
      v23 = v16;
      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v31[0] = static OS_dispatch_queue.main.getter();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v3;
      *(v24 + 24) = v23;
      aBlock[4] = sub_10046CAA4;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100640140;
      v25 = _Block_copy(aBlock);
      v26 = v3;
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v31[2] = _swiftEmptyArrayStorage;
      sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      sub_100037970();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v31[0];
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v25);

      (*(v22 + 8))(v7, v4);
      (*(v9 + 8))(v12, v8);
      swift_unknownObjectWeakDestroy();
      swift_unknownObjectRelease();

      return;
    }

    v17 = v16;
    v18 = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
    if (v18)
    {
      v19 = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler + 8];
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v17;
      sub_100062900(v18, v19);
      v21 = v3;
      swift_unknownObjectRetain();
      v18(v17, sub_10046D0D8, v20);

      swift_unknownObjectRelease();

      sub_10001835C(v18, v19);
      return;
    }

    v28 = &v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 1);
      ObjectType = swift_getObjectType();
      (*(v29 + 8))(v17, 0, ObjectType, v29);
      swift_unknownObjectRelease();
    }

    sub_1004676B8(v3);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100467358(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 1);
    v23 = v13;
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(a3, a1 & 1, ObjectType, v15);
    v13 = v23;
    swift_unknownObjectRelease();
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a1 & 1;
  aBlock[4] = sub_10046D0E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006401B8;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_1004676B8(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v12 - v4;
  if (a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage] == 1)
  {
    v6 = [a1 navigationController];
    if (v6)
    {
      v12 = v6;

      v7 = v12;
    }
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
    if (v8)
    {
      v9 = *(v8 + 56);
      v10 = type metadata accessor for FMSelectionPendingAction(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      sub_1000BBF40(v5, v9 + v11, &unk_1006B8DD0, &unk_100555060);
      swift_endAccess();

      [a1 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100467884(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
  if (v4)
  {
    v5 = *&a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler + 8];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_100062900(v4, v5);
    v7 = a1;
    v8 = a2;
    v4(a2, sub_10046D8E0, v6);

    sub_10001835C(v4, v5);
  }

  else
  {
    v9 = &a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(a2, 0, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    sub_1004676B8(a1);
  }
}

id sub_1004679C4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *&a1;
  }

  v4 = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton);
  if (v4)
  {
    [v4 setSelected:v3 == 100.0];
  }

  v5 = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton);
  if (v5)
  {
    [v5 setSelected:v3 == 250.0];
  }

  result = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton);
  if (result)
  {

    return [result setSelected:v3 == 375.0];
  }

  return result;
}

id sub_100467A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v42 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = v35 - v17;
  v19 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
  v20 = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  if (v20)
  {
    v21 = [v20 annotation];
    if (v21)
    {
      v22 = v21;
      if (v43)
      {
      }

      else
      {
        v37 = v4;
        v38 = v3;
        v23 = *&v3[v19];
        if (v23)
        {
          [v23 removeHandle:1];
        }

        *&v22[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v42;
        sub_100486AA8();
        v24 = *&v22[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
        v25 = v24;
        v26 = v38;
        sub_100466684(v24);

        sub_100466C20(v22);
        sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
        v35[0] = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v27 = *(v12 + 8);
        v35[1] = v12 + 8;
        v36 = v27;
        v27(v14, v11);
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = v22;
        aBlock[4] = sub_10046939C;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006400F0;
        v29 = _Block_copy(aBlock);
        v30 = v26;
        v31 = v22;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100037970();
        v32 = v37;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v35[0];
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v41 + 8))(v6, v32);
        (*(v40 + 8))(v10, v39);
        v36(v18, v11);
      }
    }
  }

  return sub_1004679C4(v42, v43 & 1);
}

id sub_100467F18(void *a1)
{
  result = [a1 annotation];
  if (result)
  {

    sub_100466684(0);
    if (a1)
    {
      [a1 removeHandle:1];
    }

    result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    if (result)
    {

      return [result setUserInteractionEnabled:0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10046801C(void *a1)
{
  if (a1)
  {
    v3 = [a1 annotation];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
      sub_1004679C4(*&v3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius], 0);
      [v4 coordinate];
      v25 = MKCoordinateRegionMakeWithDistance(v24, *&v4[v5] * 3.5, *&v4[v5] * 3.5);
      v6 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
      result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
      if (!result)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      [result regionThatFits:{v25.center.latitude, v25.center.longitude, v25.span.latitudeDelta, v25.span.longitudeDelta}];
      v12 = fabs(v8);
      if (fabs(v9) <= 180.0 && v12 <= 90.0 && v10 >= 0.0 && v10 <= 180.0 && v11 >= 0.0 && v11 <= 360.0)
      {
        result = *(v1 + v6);
        if (!result)
        {
LABEL_25:
          __break(1u);
          return result;
        }

        v16 = v8;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        [result setRegion:1 animated:?];
        v20 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
        *v20 = v16;
        *(v20 + 8) = v17;
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        *(v20 + 32) = 0;
      }

      v21 = *&v4[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
      v22 = v21;
      sub_100466684(v21);

      [a1 addHandleForAnnotation:v4];
    }
  }

  result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  return [result setUserInteractionEnabled:1];
}

void sub_100468460(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v3 - 8);
  v5 = v51 - v4;
  v6 = type metadata accessor for FMFLocationAlertAddressType();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] != 1)
  {
    return;
  }

  v54 = v10;
  v55 = v6;
  v56 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation;
  v11 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    if (!v12)
    {
LABEL_15:
      __break(1u);
      return;
    }

    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1005528C0;
    *(v13 + 32) = v11;
    v14 = v11;
    v15 = v12;
    sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 removeAnnotations:isa];
  }

  v17 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  [a1 locationInView:*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView)];
  v53 = v1;
  v18 = *(v1 + v17);
  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v18 convertPoint:*(v1 + v17) toCoordinateFromView:?];
  v21 = [objc_allocWithZone(CLLocation) initWithLatitude:v19 longitude:v20];
  v22 = [objc_opt_self() mainBundle];
  v58._object = 0x800000010059A690;
  v23._object = 0x800000010059A660;
  v58._countAndFlagsBits = 0xD000000000000033;
  v23._countAndFlagsBits = 0xD000000000000021;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v51[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v58)._countAndFlagsBits;

  v52 = v21;
  [v21 coordinate];
  v26 = v25;
  v28 = v27;
  v29 = v54;
  v30 = v55;
  (*(v7 + 104))(v54, enum case for FMFLocationAlertAddressType.droppedPin(_:), v55);
  v31 = type metadata accessor for FMFAddress();
  v32 = *(*(v31 - 8) + 56);
  v32(v5, 1, 1, v31);
  v33 = type metadata accessor for FMFenceMapAnnotation(0);
  v34 = objc_allocWithZone(v33);
  v32(&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v31);
  *&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
  v35 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
  *&v34[v35] = dispatch_group_create();
  v36 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
  *&v34[v36] = [objc_allocWithZone(CLGeocoder) init];
  v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
  *&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
  v37 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v38 = *&qword_1006D4D20;
  *&v34[v37] = qword_1006D4D20;
  (*(v7 + 16))(&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v29, v30);
  v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 0;
  v57.receiver = v34;
  v57.super_class = v33;
  v39 = objc_msgSendSuper2(&v57, "init");
  v40 = String._bridgeToObjectiveC()();

  [v39 setTitle:v40];

  [v39 setSubtitle:0];
  [v39 setCoordinate:{v26, v28}];

  v41 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_100278A8C(v5, &v39[v41]);
  swift_endAccess();
  if (qword_1006AED90 != -1)
  {
    swift_once();
  }

  if (v38 >= *&qword_1006D4D28)
  {
    v38 = *&qword_1006D4D28;
  }

  *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v38;
  v42 = [objc_opt_self() circleWithCenterCoordinate:v26 radius:{v28, v38}];
  v43 = *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
  *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v42;

  dispatch_group_enter(*&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
  sub_100485F88(v44, v45, v46);
  (*(v7 + 8))(v29, v30);
  sub_100012DF0(v5, &qword_1006B0040, &qword_100552AE0);
  v47 = v53;
  sub_10045FC64(v39, v48, v49);

  v50 = *(v47 + v56);
  *(v47 + v56) = v39;
}

id sub_100468CCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFenceMapViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFenceMapViewController(uint64_t a1)
{
  result = qword_1006C07C0;
  if (!qword_1006C07C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100468FE4(uint64_t a1)
{
  sub_10046927C(319, &qword_1006C07D0, &type metadata accessor for FMFLocation);
  if (v1 <= 0x3F)
  {
    sub_10046927C(319, &qword_1006BA950, &type metadata accessor for FMFAddress);
    if (v2 <= 0x3F)
    {
      sub_10046927C(319, &qword_1006C07E0, &type metadata accessor for FMFLocationAlertAddressType);
      if (v3 <= 0x3F)
      {
        sub_10046927C(319, &qword_1006C07E8, &type metadata accessor for FMFLabel);
        if (v4 <= 0x3F)
        {
          sub_10046927C(319, &qword_1006AFE60, &type metadata accessor for FMFFriend);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10046927C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1004692D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004692EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100469334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10046939C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (result)
  {
    return [result addHandleForAnnotation:*(v0 + 24)];
  }

  return result;
}

void sub_1004693C4(void *a1)
{
  v2 = *(type metadata accessor for FMFLabelledLocation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3E0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100469514(v5);
  *a1 = v3;
}

void sub_10046946C(void *a1)
{
  v2 = *(type metadata accessor for FMFFriend() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100469640(v5);
  *a1 = v3;
}

void sub_100469514(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFLabelledLocation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFLabelledLocation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100469F3C(v8, v9, a1, v4);
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
    sub_10046976C(0, v2, 1, a1);
  }
}

void sub_100469640(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFFriend();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFFriend() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10046AE94(v8, v9, a1, v4);
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
    sub_100469C34(0, v2, 1, a1);
  }
}