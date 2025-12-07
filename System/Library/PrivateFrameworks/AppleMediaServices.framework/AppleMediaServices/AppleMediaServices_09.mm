uint64_t sub_100101D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = v7;
  v167 = a5;
  v169 = a4;
  v15 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10000307C();
  __chkstk_darwin(v16);
  sub_1000037D4();
  v171 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  sub_10000D478();
  v172 = v19;
  v20 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v20);
  sub_100003774();
  __chkstk_darwin(v21);
  sub_100003018();
  v163 = v22;
  v23 = type metadata accessor for TSDataSyncDatasetState(0);
  __chkstk_darwin(v23 - 8);
  sub_10000308C();
  sub_1001080E4();
  __chkstk_darwin(v24);
  sub_10010814C();
  __chkstk_darwin(v25);
  sub_100002DD0();
  v177 = v26;
  sub_100005238();
  __chkstk_darwin(v27);
  sub_100108044();
  __chkstk_darwin(v28);
  sub_10000D478();
  v29 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v30 = sub_1000030B8(v29);
  __chkstk_darwin(v30);
  sub_10000308C();
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  sub_10000D478();
  v185 = v36;
  v189 = a2;
  v191 = v15;
  v37 = *(a2 + *(v15 + 20));
  v176 = a1;
  if (a1)
  {
    v162 = a3;
    v38 = v37 + 4;
    sub_100007FC0();
    v41 = v40 & v39;
    v181 = v43;
    v183 = (v42 + 63) >> 6;
    sub_100108510();
    swift_bridgeObjectRetain_n();
    v44 = 0;
    v174 = v37;
    v175 = v9;
    v179 = v37 + 4;
    v45 = v9;
LABEL_3:
    v46 = v177;
    v47 = v183;
    if (!v41)
    {
      goto LABEL_5;
    }

LABEL_9:
    while (1)
    {
      sub_1001084BC();
      sub_1001087D8();
      v51 = *v49;
      v50 = v49[1];
      sub_100006D1C();
      sub_100107DFC();
      v52 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      *v181 = v51;
      v181[1] = v50;
      sub_100007FA8();
      sub_100107FA0();
      sub_10000B7B0();
      sub_100002728(v53, v54, v55, v52);

      v10 = v175;
      v46 = v177;
LABEL_10:
      sub_100012D44();
      v37 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v56 = sub_100108594();
      sub_10000B3A0(v56, v57, v37);
      if (v58)
      {
        break;
      }

      v59 = *(v185 + 8);
      sub_100007FA8();
      v61 = v60;
      v45 = v10;
      sub_100107FA0();
      sub_100108714();
      *&v198 = v61;
      *(&v198 + 1) = v59;
      __chkstk_darwin(v62);
      sub_1001083E4();
      *(v63 - 16) = &v198;
      if (sub_10015D6FC())
      {
        if (*(v176 + 16))
        {
          v37 = v176;
          v64 = sub_10014EB30(v61, v59);
          if (v65)
          {
            v160 = v61;
            v71 = *(v176 + 56) + 16 * v64;
            v72 = *v71;
            v38 = v179;
            if (*(v71 + 8) == 1)
            {
              swift_errorRetain();
              v73 = v10;
              v74 = v10;
              v10 = v72;
              sub_100103C48(v74, v72, v75, v76, v77, v78, v79, v80, v155, v156, v157, v158, v160, v162, v163, v165, v166, v167, v169, v171);
              sub_1001086B4();
              swift_isUniquelyReferenced_nonNull_native();
              *&v198 = v72;
              v37 = &v198;
              v45 = v73;
              sub_10014FF48();

              sub_100107D70(v10, 1);
              sub_100004ADC();
              sub_100107DA4(v73, v81);
              v174 = v198;
              goto LABEL_3;
            }

            v82 = v46;
            v158 = *v71;
            if (v162)
            {
              v157 = sub_1001AC070(v160, v59, v162);
              HIDWORD(v156) = v83;
            }

            else
            {
              v157 = 0;
              HIDWORD(v156) = 1;
            }

            v84 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
            v85 = *(v169 + *(v84 + 40));
            if (*(v85 + 16) && (v86 = sub_10014EB30(v160, v59), (v87 & 1) != 0))
            {
              v88 = (*(v85 + 56) + (v86 << 6));
              v89 = *(v88 + 41);
              v90 = v88[2];
              v91 = *v88;
              v193[1] = v88[1];
              v194[0] = v90;
              v193[0] = v91;
              *(v194 + 9) = v89;
              v92 = v88[1];
              v195 = *v88;
              v196 = v92;
              v197[0] = v88[2];
              *(v197 + 9) = *(v88 + 41);
              sub_1000BA2CC(v193, &v192);
              v198 = v195;
              v199 = v196;
              v200[0] = v197[0];
              *(v200 + 9) = *(v197 + 9);
            }

            else
            {
              v199 = 0u;
              memset(v200, 0, 25);
              v198 = 0u;
            }

            v201[1] = v199;
            v202[0] = v200[0];
            *(v202 + 9) = *(v200 + 9);
            v201[0] = v198;
            v37 = v163;
            sub_1001AC054(v160, v59, *(v169 + *(v84 + 36)), v163);
            sub_100102AC0(v10, v158, v157, BYTE4(v156) & 1, v201, v163, v167, v82, a7);
            if (!v7)
            {
              sub_100004E24(v163, &qword_1002DBC20, &unk_100234B00);
              sub_100004E24(&v198, &qword_1002DCC38, &qword_100236610);
              sub_100007FA8();
              sub_100107FA0();
              sub_1001086B4();
              swift_isUniquelyReferenced_nonNull_native();
              *&v195 = v163;
              v37 = &v195;
              sub_10003CF5C();
              sub_10014FF48();

              v174 = v195;
              sub_100004ADC();
              sub_100107DA4(v10, v93);
              v45 = v10;
              goto LABEL_3;
            }

            goto LABEL_45;
          }
        }
      }

      sub_100004ADC();
      sub_100107DA4(v10, v66);

      v38 = v179;
      v47 = v183;
      if (!v41)
      {
LABEL_5:
        while (1)
        {
          v48 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v48 >= v47)
          {
            v10 = v45;
            sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
            sub_100007B78();
            sub_100002728(v67, v68, v69, v70);
            v41 = 0;
            goto LABEL_10;
          }

          v41 = *(v38 + v48);
          ++v44;
          if (v41)
          {
            v44 = v48;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_44;
      }
    }
  }

  else
  {
    v182 = v35;
    v186 = v34;
    v94 = v37 + 4;
    sub_100007FC0();
    v97 = v96 & v95;
    v99 = (v98 + 63) >> 6;
    v168 = 0x8000000100273910;
    v170 = NSDebugDescriptionErrorKey;
    sub_100108510();
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v100 = &qword_1002DCC20;
    v164 = xmmword_1002329F0;
    v174 = v37;
    v178 = v99;
    v180 = v37 + 4;
LABEL_29:
    if (!v97)
    {
      goto LABEL_31;
    }

LABEL_35:
    while (1)
    {
      sub_1001084BC();
      sub_1001087D8();
      v104 = *v102;
      v103 = v102[1];
      sub_100006D1C();
      sub_100107DFC();
      v105 = v100;
      v106 = sub_100099DF4(v100, &qword_10023F680);
      *v186 = v104;
      v186[1] = v103;
      sub_100007FA8();
      sub_100107FA0();
      sub_10000B7B0();
      sub_100002728(v107, v108, v109, v106);

LABEL_36:
      sub_100012D44();
      v37 = sub_100099DF4(v105, &qword_10023F680);
      v110 = sub_100108594();
      sub_10000B3A0(v110, v111, v37);
      if (v58)
      {
        break;
      }

      v113 = *v182;
      v112 = v182[1];
      sub_100007FA8();
      sub_100107FA0();
      sub_100108714();
      *&v198 = v113;
      *(&v198 + 1) = v112;
      __chkstk_darwin(v114);
      sub_1001083E4();
      *(v115 - 16) = &v198;
      if (sub_10015D6FC())
      {
        sub_100099DF4(&qword_1002DCC30, &qword_100236608);
        inited = swift_initStackObject();
        *(inited + 16) = v164;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v122;
        *(inited + 48) = 0xD000000000000012;
        *(inited + 56) = v168;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "AMSDescription");
        *(inited + 120) = &type metadata for String;
        *(inited + 95) = -18;
        *(inited + 96) = 0xD000000000000012;
        *(inited + 104) = v168;
        v123 = Dictionary.init(dictionaryLiteral:)();
        v124 = objc_allocWithZone(NSError);
        v125 = sub_100106FE0(0xD00000000000001FLL, 0x80000001002738F0, 1, v123);
        sub_100103C48(v8, v125, v126, v127, v128, v129, v130, v131, v155, v156, v157, v158, v159, v161, v164, *(&v164 + 1), v166, v168, v170, v171);

        sub_100007FA8();
        sub_100107FA0();
        sub_1001086B4();
        swift_isUniquelyReferenced_nonNull_native();
        *&v198 = v125;
        v37 = &v198;
        sub_10014FF48();

        v174 = v198;
        sub_100004ADC();
        sub_100107DA4(v8, v132);
        v100 = v105;
        v99 = v178;
        v94 = v180;
        goto LABEL_29;
      }

      sub_100004ADC();
      sub_100107DA4(v8, v116);

      v100 = v105;
      v99 = v178;
      v94 = v180;
      if (!v97)
      {
LABEL_31:
        while (1)
        {
          v101 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v101 >= v99)
          {
            sub_100099DF4(v100, &qword_10023F680);
            sub_100007B78();
            sub_100002728(v117, v118, v119, v120);
            v97 = 0;
            v105 = v100;
            goto LABEL_36;
          }

          v97 = *(v94 + v101);
          ++v10;
          if (v97)
          {
            v10 = v101;
            goto LABEL_35;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:

        sub_100004E24(&v198, &qword_1002DCC38, &qword_100236610);
        sub_100004E24(v37, &qword_1002DBC20, &unk_100234B00);
        sub_100004ADC();
        sub_100107DA4(v10, v154);
      }
    }
  }

  sub_1000031A4();
  sub_100107DFC();
  sub_10003D1E4();
  sub_10003D1E4();
  v133 = *(v189 + v191[9]);
  v184 = *(v189 + v191[8]);
  v134 = (v189 + v191[10]);
  v188 = *v134;
  v135 = *v134;
  v190 = v134[1];
  v137 = v134[2];
  v136 = v134[3];
  *(v171 + v191[5]) = v174;
  *(v171 + v191[8]) = v184;
  *(v171 + v191[9]) = v133;
  v138 = (v171 + v191[10]);
  *v138 = v135;
  v138[1] = v190;
  v138[2] = v137;
  v138[3] = v136;
  sub_100107DFC();
  sub_1001088D8();
  sub_1001088D8();
  sub_100108498();
  sub_1001071F4(v139, v140);
  sub_100108498();
  sub_1001071F4(v141, v142);

  sub_1001086B4();

  sub_100108498();
  sub_1001071F4(v143, v144);

  sub_10000764C();
  v187 = v145;
  sub_100107DA4(v171, v146);
  *(v172 + v191[5]) = v190;
  *(v172 + v191[8]) = v184;
  *(v172 + v191[9]) = _swiftEmptyArrayStorage;
  v147 = (v172 + v191[10]);
  *v147 = v188;
  v147[1] = v190;
  v147[2] = v137;
  v147[3] = v136;
  type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v148, v149, v150, v151);
  sub_100107DFC();
  sub_10003D1E4();

  result = sub_100107DA4(v172, v187);
  *(a6 + v191[5]) = v190;
  *(a6 + v191[8]) = v184;
  *(a6 + v191[9]) = _swiftEmptyArrayStorage;
  v153 = (a6 + v191[10]);
  *v153 = v188;
  v153[1] = v190;
  v153[2] = v137;
  v153[3] = v136;
  return result;
}

uint64_t sub_100102AC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, double a9@<D0>)
{
  v206 = a7;
  v228 = a6;
  v229 = a5;
  LODWORD(v230) = a4;
  v231 = a2;
  v232 = a3;
  v210 = a8;
  v16 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v16);
  sub_100003774();
  __chkstk_darwin(v17);
  sub_100003018();
  v19 = sub_100008280(v18);
  v20 = type metadata accessor for TSDataSyncDatasetState(v19);
  sub_10000307C();
  __chkstk_darwin(v21);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v22);
  sub_1001080E4();
  __chkstk_darwin(v23);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v24);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v25);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v26);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v28);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v29);
  sub_100108044();
  __chkstk_darwin(v30);
  sub_1001083F4();
  v31 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v31);
  sub_100003774();
  __chkstk_darwin(v32);
  sub_10003CF80();
  v208 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v33);
  sub_10000306C();
  v36 = v35 - v34;
  sub_100006D1C();
  sub_100107DFC();
  sub_10000B7B0();
  sub_100002728(v37, v38, v39, v20);
  v212 = v36;
  sub_1001047CC(v10, v231, 0, v232, v230 & 1, v40, v41, v42, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
  v43 = sub_100004E24(v10, &qword_1002DBC28, &qword_100232F70);
  v44 = v229[1];
  if (v44)
  {
    v232 = v11;
    v233 = *v229;
    v234 = v44;
    v45 = *(v229 + 2);
    v235 = *(v229 + 1);
    *v236 = v45;
    *&v236[9] = *(v229 + 41);
    v46 = *&a1[v20[19]];
    __chkstk_darwin(v43);
    *(&v196 - 4) = v228;
    *(&v196 - 3) = a1;
    *(&v196 - 2) = &v233;
    *(&v196 - 1) = a9;

    v47 = v46;
    v48 = v215;
    sub_1000F8418(sub_100107D7C, (&v196 - 6), v47);
    if (v48)
    {
      sub_100006670();
      return sub_100107DA4(v212, v50);
    }

    v215 = 0;
    v53 = *a1;
    v52 = *(a1 + 1);
    v230 = v49;
    v231 = v52;
    v54 = *(a1 + 3);
    v228 = *(a1 + 2);
    v229 = v53;
    v221 = v54;
    v55 = *(a1 + 4);
    v56 = *(a1 + 5);
    v57 = *(a1 + 7);
    v226 = *(a1 + 6);
    v227 = v55;
    v224 = v57;
    v225 = v56;
    sub_100108748(v20[8]);
    sub_10003D1E4();
    v58 = v20[9];
    type metadata accessor for Date();
    sub_10000307C();
    (*(v59 + 16))(v12 + v58, &a1[v58]);
    sub_100108748(v20[10]);
    sub_10003D1E4();
    v223 = *&a1[v20[11]];
    sub_10003D1E4();
    v60 = v20[14];
    v61 = &a1[v20[13]];
    v62 = *(v61 + 1);
    v219 = *v61;
    v222 = v62;
    sub_10010829C(&a1[v60]);
    v64 = &a1[v63];
    v65 = *(v64 + 1);
    v217 = *v64;
    LODWORD(v218) = a1[v66];
    v67 = v20[18];
    LODWORD(v216) = a1[v20[17]];
    v68 = *&a1[v67];
    sub_100108748(v20[20]);
    sub_10003D1E4();
    v69 = v231;
    *v12 = v229;
    v12[1] = v69;
    v70 = v227;
    v12[2] = v228;
    v12[3] = v54;
    v72 = v224;
    v71 = v225;
    v12[4] = v70;
    v12[5] = v71;
    v12[6] = v226;
    v12[7] = v72;
    *(v12 + v20[11]) = v223;
    v73 = (v12 + v20[13]);
    *v73 = v219;
    v73[1] = v62;
    sub_1000072AC(v12 + v20[14]);
    v75 = (v12 + v74);
    *v75 = v217;
    v75[1] = v65;
    *(v12 + v20[16]) = v218;
    *(v12 + v20[17]) = v216;
    *(v12 + v20[18]) = v68;
    *(v12 + v20[19]) = v230;
    sub_100007FA8();
    v11 = v232;
    sub_100107FA0();
  }

  else
  {
    sub_100006D1C();
    sub_100005CF0();
    sub_100107DFC();
  }

  sub_100006D1C();
  sub_100107DFC();
  v76 = v11[3];
  if (v76)
  {
    v231 = v11[2];
    v232 = v76;
  }

  else
  {
    v77 = v11[1];
    v231 = *v11;
    v232 = v77;
  }

  sub_100004ADC();
  v230 = v78;
  sub_100107DA4(v11, v79);
  v80 = v9[3];
  v199 = v9[2];
  v81 = v9[5];
  v225 = v9[4];
  v82 = v9[7];
  v223 = v9[6];
  v221 = v82;
  sub_1001082B8(v20[8]);
  sub_100108880();
  v83 = v20[9];
  v222 = type metadata accessor for Date();
  sub_10000307C();
  v85 = *(v84 + 16);
  v226 = (v84 + 16);
  v227 = v85;
  v202 = v83;
  (v85)(v13 + v83, v9 + v83);
  v201 = v20[10];
  sub_100108880();
  v86 = v20[12];
  v214 = *(v9 + v20[11]);
  v200 = v86;
  sub_10003D1E4();
  v87 = v20[14];
  v88 = v9 + v20[13];
  v89 = *(v88 + 1);
  v229 = *v88;
  sub_10010829C(v9 + v87);
  v91 = (v9 + v90);
  v92 = v91[1];
  v218 = *v91;
  LODWORD(v228) = *(v9 + v93);
  v94 = v20[18];
  LODWORD(v224) = *(v9 + v20[17]);
  v219 = *(v9 + v94);
  v95 = v20[19];
  v197 = v20[20];
  v96 = *(v9 + v95);
  sub_10003D1E4();

  v97 = v96;
  v216 = v96;

  v98 = v80;

  sub_100108438(&v240);

  v99 = v221;

  v213 = v89;

  sub_100107DA4(v9, v230);
  v100 = v232;
  *v13 = v231;
  v13[1] = v100;
  v13[2] = v199;
  v13[3] = v98;
  v13[4] = v225;
  v13[5] = v81;
  v13[6] = v223;
  v13[7] = v99;
  sub_100010F9C();
  *(v13 + v101) = v102;
  v103 = (v13 + v20[13]);
  *v103 = v229;
  v103[1] = v89;
  sub_1000072AC(v13 + v20[14]);
  sub_10010821C();
  *v104 = v105;
  v104[1] = v92;
  v106 = v92;
  sub_1001081EC();
  *(v13 + v107) = v108;
  sub_100108450();
  *(v13 + v109) = v110;
  v111 = v219;
  *(v13 + v20[18]) = v219;
  *(v13 + v20[19]) = v97;
  v199 = v20[8];
  sub_1001086E4();
  v112 = v204;
  sub_10003D1E4();
  sub_1001082B8(v20[9]);
  (v227)(v112 + v113, v13 + v202, v222);
  v198 = v20[10];
  sub_10003D1E4();
  sub_10003D1E4();
  v201 = v20[20];
  sub_10003D1E4();
  sub_100005CC4(&v240);
  swift_bridgeObjectRetain_n();
  v114 = v221;
  swift_bridgeObjectRetain_n();
  sub_1000026F4(&v238);
  swift_bridgeObjectRetain_n();
  v211 = v106;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v115 = v232;
  sub_10010881C();
  swift_bridgeObjectRetain_n();
  sub_10000A81C(&v239);

  sub_100107DA4(v13, v230);
  *v112 = v231;
  v112[1] = v115;
  v112[2] = 0;
  v112[3] = 0;
  v112[4] = v225;
  v112[5] = &qword_1002318B0;
  v112[6] = v223;
  v112[7] = v114;
  sub_10000AD68(v20[11]);
  v116 = (v112 + v20[13]);
  *v116 = v229;
  v116[1] = &qword_1002DA970;
  sub_1000072AC(v112 + v20[14]);
  sub_10010821C();
  *v117 = v118;
  v117[1] = v106;
  sub_1001081EC();
  *(v112 + v119) = v120;
  sub_100108450();
  *(v112 + v121) = v122;
  sub_10000AD68(v20[18]);
  *(v112 + v20[19]) = v111;
  v202 = v20[12];
  v123 = v205;
  v124 = v222;
  v125 = v226;
  v126 = v227;
  (v227)(v205 + v202, v206, v222);
  sub_10000B7B0();
  v127 = v124;
  sub_100002728(v128, v129, v130, v124);
  v197 = v20[8];
  sub_100108328(&v227);
  sub_10003D1E4();
  v200 = v20[9];
  sub_1001086E4();
  v126();
  v199 = v20[10];
  sub_100108328(&v226);
  sub_10003D1E4();
  v206 = v20[20];
  sub_100108328(&v229);
  sub_10003D1E4();

  v131 = v221;

  sub_1000026F4(&v237);

  sub_100108604();
  sub_100005CC4(&v239);

  v132 = v232;

  sub_100107DA4(v112, v230);
  *v123 = v231;
  v123[1] = v132;
  v123[2] = 0;
  v123[3] = 0;
  v123[4] = v225;
  v123[5] = &qword_1002318B0;
  v123[6] = v223;
  v123[7] = v131;
  sub_100010F9C();
  *(v123 + v133) = v134;
  v135 = (v123 + v20[13]);
  v136 = v213;
  *v135 = v229;
  v135[1] = v136;
  sub_10010845C();
  sub_1000072AC(v137);
  sub_10010821C();
  *v138 = v139;
  v138[1] = v125;
  sub_1001081EC();
  *(v123 + v140) = v141;
  sub_100108450();
  *(v123 + v142) = v143;
  *(v123 + v20[18]) = v126;
  v144 = v126;
  *(v123 + v20[19]) = v127;
  v204 = v20[8];
  sub_100108140();
  sub_100108444();
  sub_10003D1E4();
  v214 = v20[9];
  (v227)(v127 + v214, v123 + v200, v222);
  sub_1001082B8(v20[10]);
  sub_100108140();
  sub_10003D1E4();
  v201 = v20[12];
  sub_100008774(&v230);
  sub_10003D1E4();
  v202 = v20[20];
  sub_100008774(&v234);
  sub_10003D1E4();

  v145 = v221;

  sub_10000B358(&v239);

  v146 = v232;

  sub_100107DA4(v123, v230);
  *v127 = v231;
  v127[1] = v146;
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v225;
  v127[5] = &qword_1002318B0;
  v127[6] = v223;
  v127[7] = v145;
  *(v127 + v20[11]) = 0;
  v147 = (v127 + v20[13]);
  *v147 = v229;
  v147[1] = v136;
  sub_1000072AC(v127 + v20[14]);
  sub_100002A38((v127 + v148));
  sub_1001081EC();
  *(v127 + v149) = v150;
  sub_100108450();
  *(v127 + v151) = v152;
  *(v127 + v20[18]) = v144;
  *(v127 + v20[19]) = v136;
  v153 = v136;
  v211 = v20[8];
  sub_1001082C4();
  sub_10003D1E4();
  sub_100002E6C(v20[9]);
  (v227)(v136 + v154, v127 + v214, v222);
  sub_1001084EC(v20[10]);
  sub_100108130();
  sub_1001088D8();
  sub_10010848C(v20[12]);
  sub_100108130();
  sub_1001088D8();
  v214 = v20[20];
  sub_100108130();
  sub_10003D1E4();
  sub_100003EA8(&v240);

  v155 = v144;

  v156 = v232;

  sub_100107DA4(v127, v230);
  *v136 = v231;
  v136[1] = v156;
  v136[2] = 0;
  v136[3] = 0;
  v157 = v225;
  v136[4] = v225;
  v136[5] = &qword_1002318B0;
  v136[6] = v223;
  v136[7] = v145;
  sub_100108468();
  *v158 = v159;
  v158[1] = v136;
  v160 = v136;
  sub_1000072AC(v136 + v20[14]);
  sub_10010873C(v161);
  sub_1001081EC();
  *(v136 + v162) = v163;
  sub_100108450();
  *(v136 + v164) = v165;
  *(v136 + v20[18]) = v155;
  *(v136 + v20[19]) = v136;
  sub_100004920();
  sub_10010842C();
  sub_10003D1E4();
  v220 = v20[9];
  sub_100108234();
  v227();
  sub_1001084E0(v20[10]);
  sub_100004920();
  sub_1001084F8();
  sub_10003D1E4();
  sub_100002E6C(v20[12]);
  sub_100004920();
  sub_1001084F8();
  sub_10003D1E4();
  v211 = v20[20];
  sub_100004920();
  sub_10003D1E4();
  sub_100108604();
  v166 = v221;

  sub_100108284(&v241);

  v167 = v232;

  v168 = sub_1000033CC();
  sub_100107DA4(v168, v169);
  *v155 = v231;
  *(v155 + 1) = v167;
  *(v155 + 2) = 0;
  *(v155 + 3) = 0;
  *(v155 + 4) = v157;
  *(v155 + 5) = v153;
  v170 = v223;
  *(v155 + 6) = v223;
  *(v155 + 7) = v166;
  sub_1001080F4();
  *v171 = v229;
  v171[1] = v160;
  sub_100005134(v20[14]);
  *(v172 + 8) = 1;
  v173 = (v155 + v20[15]);
  *v173 = 0;
  v173[1] = 0;
  sub_1001081EC();
  *(v155 + v174) = v175;
  LOBYTE(v153) = v224;
  *(v155 + v20[17]) = v224;
  *(v155 + v20[18]) = &qword_1002DA970;
  v176 = v216;
  *(v155 + v20[19]) = v216;
  v177 = v209;
  sub_100007B78();
  v178 = v222;
  sub_100002728(v179, v180, v181, v222);
  (v227)(v177 + v20[9], v155 + v220, v178);
  sub_100108140();
  sub_10003D1E4();
  sub_100108140();
  sub_100007664();
  sub_10003D1E4();
  sub_100108140();
  sub_10003D1E4();

  sub_100107DA4(v155, v230);
  v182 = v232;
  *v177 = v231;
  v177[1] = v182;
  v177[2] = 0;
  v177[3] = 0;
  sub_1001082DC();
  v177[4] = v184;
  v177[5] = v183;
  v185 = v221;
  v177[6] = v170;
  v177[7] = v185;
  sub_100108468();
  *v186 = v187;
  v186[1] = v160;
  v188 = v177 + v20[14];
  *v188 = 0;
  v188[8] = 1;
  sub_10010873C(v20[15]);
  sub_1001081EC();
  *(v177 + v189) = v190;
  *(v177 + v20[17]) = v153;
  sub_1000DB94C(v20[18]);
  *(v177 + v20[19]) = v176;
  sub_100007C00();
  sub_10000288C();
  sub_100107FA0();
  sub_10000B7B0();
  sub_100002728(v191, v192, v193, v208);
  sub_100109384(v210);
  sub_100004E24(v176, &qword_1002DCC10, &unk_100238220);
  v194 = sub_100005CF0();
  return sub_100107DA4(v194, v195);
}

void sub_100103C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  sub_10010818C(v28);
  v29 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v29);
  sub_100003774();
  __chkstk_darwin(v30);
  sub_100003018();
  v32 = sub_100008280(v31);
  v33 = type metadata accessor for TSDataSyncDatasetState(v32);
  sub_10000307C();
  __chkstk_darwin(v34);
  sub_10000308C();
  v37 = (v35 - v36);
  __chkstk_darwin(v38);
  sub_100008B9C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_10000D478();
  sub_10000A1C0(v42);
  v43 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v43);
  sub_100003774();
  __chkstk_darwin(v44);
  v45 = sub_100108808();
  v137 = type metadata accessor for TSDataSyncDatasetMetricsFields(v45);
  sub_10000307C();
  __chkstk_darwin(v46);
  sub_10000306C();
  sub_100006D1C();
  sub_10003CF5C();
  sub_100107DFC();
  sub_10000B7B0();
  sub_100002728(v47, v48, v49, v33);
  sub_1001057C0();
  sub_100004E24(v21, &qword_1002DBC28, &qword_100232F70);
  if (v25)
  {
    v157 = v25;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    sub_100108504();
    if (swift_dynamicCast())
    {
      v50 = [v156 domain];

      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v51;
    }

    else
    {
      v141 = 0;
      v136 = 0;
    }

    v157 = v25;
    swift_errorRetain();
    sub_100108754();
    sub_100108504();
    if (swift_dynamicCast())
    {
      [v156 code];
    }
  }

  else
  {
    v141 = 0;
    v136 = 0;
  }

  v52 = *(v27 + 1);
  v54 = *(v27 + 4);
  v53 = *(v27 + 5);
  v154 = *v27;
  v155 = v54;
  v148 = v53;
  v55 = *(v27 + 7);
  v150 = *(v27 + 6);
  v151 = v52;
  v153 = v55;
  sub_1001085EC();
  v56 = v33[9];
  type metadata accessor for Date();
  sub_10000307C();
  v133 = &v37[v56];
  v146 = v58;
  v140 = *(v57 + 16);
  v140(&v37[v56], &v27[v56]);
  sub_1001085EC();
  sub_1001085EC();
  v59 = v33[14];
  v60 = &v27[v33[13]];
  v149 = *v60;
  v152 = v60[1];
  v143 = *&v27[v59];
  v142 = v27[v59 + 8];
  v61 = &v27[v33[15]];
  v62 = v27[v33[16]];
  v63 = *v61;
  v64 = v61[1];
  v65 = v27[v33[17]];
  v66 = *&v27[v33[18]];
  v67 = *&v27[v33[19]];
  sub_10003D1E4();
  v68 = v151;
  *v37 = v154;
  *(v37 + 1) = v68;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v155;
  *(v37 + 5) = v148;
  v69 = v153;
  *(v37 + 6) = v150;
  *(v37 + 7) = v69;
  sub_100108480();
  *&v37[v70] = v71;
  v72 = &v37[v33[13]];
  v73 = v152;
  *v72 = v74;
  *(v72 + 1) = v73;
  v75 = &v37[v33[14]];
  *v75 = v143;
  v75[8] = v142;
  v76 = &v37[v33[15]];
  *v76 = v63;
  *(v76 + 1) = v64;
  v147 = v62;
  v37[v33[16]] = v62;
  v145 = v65;
  v37[v33[17]] = v65;
  *&v37[v33[18]] = v66;
  *&v37[v33[19]] = v67;
  if (v71 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_10010848C(v33[8]);
    sub_100108504();
    sub_10003D1E4();
    sub_1001084EC(v33[9]);
    (v140)(v20 + v77, v133, v146);
    sub_100108504();
    sub_10003D1E4();
    sub_10010869C(v33[12]);
    sub_100108504();
    sub_10003D1E4();
    sub_10003D1E4();
    sub_100108284(&v156);
    swift_bridgeObjectRetain_n();
    v78 = v67;
    v138 = v67;
    swift_bridgeObjectRetain_n();
    v79 = v151;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v80 = v153;
    swift_bridgeObjectRetain_n();
    v81 = v152;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_100004ADC();
    v139 = v82;
    sub_100107DA4(v37, v83);
    v84 = v155;
    *v20 = v154;
    v20[1] = v79;
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v84;
    v20[5] = v148;
    v20[6] = v150;
    v20[7] = v80;
    sub_100108480();
    *(v20 + v85) = v86;
    v87 = (v20 + v33[13]);
    *v87 = v149;
    v87[1] = v81;
    v88 = (v20 + v33[14]);
    *v88 = v143;
    sub_100108058(v88);
    sub_1001080AC();
    *v89 = v90;
    v89[1] = &qword_1002DA970;
    *(v20 + v33[16]) = v147;
    *(v20 + v33[17]) = v145;
    *(v20 + v33[18]) = v66;
    *(v20 + v33[19]) = v78;
    sub_1000035C8(&v150);
    sub_10003D1E4();
    v91 = sub_100108340(v33[9]);
    (v140)(v91, v20 + v132, v146);
    sub_1000035C8(&v155);
    sub_100002854();
    sub_10003D1E4();
    sub_1000035C8(&v154);
    sub_100002854();
    sub_10003D1E4();
    sub_1000035C8(&v153);
    sub_10003D1E4();
    v92 = v151;

    v93 = v153;

    v94 = v152;

    sub_100107DA4(v20, v139);
    v95 = v155;
    *v134 = v154;
    v134[1] = v92;
    v134[2] = 0;
    v134[3] = 0;
    v134[4] = v95;
    v134[5] = v148;
    v134[6] = v150;
    v134[7] = v93;
    sub_100108480();
    *(v134 + v96) = v97;
    v98 = (v134 + v33[13]);
    *v98 = v149;
    v98[1] = v94;
    v99 = (v134 + v33[14]);
    *v99 = v143;
    sub_100108058(v99);
    v101 = (v134 + v100);
    *v101 = v141;
    v101[1] = v136;
    sub_10000D428();
    *(v134 + v102) = v66;
    *(v134 + v33[19]) = v138;
    sub_1001081B0();
    sub_1001082C4();
    sub_10003D1E4();
    v144 = v33[9];
    sub_100107FF8();
    (v140)(v103);
    sub_1001081B0();
    sub_10003D1E4();
    sub_1001081B0();
    sub_10003D1E4();
    sub_1001081B0();
    sub_10003D1E4();
    swift_bridgeObjectRetain_n();
    v104 = v151;

    v105 = v153;

    v106 = v152;

    sub_1001080B8(&a16);

    sub_100107DA4(v134, v139);
    v107 = v155;
    *v92 = v154;
    v92[1] = v104;
    v92[2] = 0;
    v92[3] = 0;
    v92[4] = v107;
    v92[5] = v148;
    v108 = v150;
    v92[6] = v150;
    v92[7] = v105;
    sub_100108480();
    *(v92 + v109) = v110;
    v111 = (v92 + v33[13]);
    *v111 = v149;
    v111[1] = v106;
    sub_10000A834((v92 + v33[14]));
    sub_100108058(v112);
    v114 = (v92 + v113);
    *v114 = v141;
    v114[1] = v136;
    *(v92 + v33[16]) = v147;
    *(v92 + v33[17]) = v145;
    *(v92 + v33[18]) = v66;
    *(v92 + v33[19]) = &qword_1002318B0;
    sub_100007B78();
    sub_100002728(v115, v116, v117, v146);
    (v140)(v135 + v33[9], v92 + v144, v146);
    sub_10003D1E4();
    sub_100004920();
    sub_10003D1E4();
    sub_100004920();
    sub_10003D1E4();

    sub_100107DA4(v92, v139);
    v118 = v151;
    *v135 = v154;
    v135[1] = v118;
    v135[2] = 0;
    v135[3] = 0;
    v135[4] = v155;
    v135[5] = v148;
    v119 = v153;
    v135[6] = v108;
    v135[7] = v119;
    sub_100108480();
    *(v135 + v120) = v121;
    v122 = (v135 + v33[13]);
    v123 = v152;
    *v122 = v149;
    v122[1] = v123;
    sub_10000A834((v135 + v33[14]));
    sub_100108058(v124);
    v126 = (v135 + v125);
    *v126 = v141;
    v126[1] = v136;
    sub_10000D428();
    *(v135 + v127) = v66;
    *(v135 + v33[19]) = &qword_1002318B0;
    sub_100007C00();
    sub_10000288C();
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v128, v129, v130, v137);
    sub_1001082DC();
    sub_100109384(v131);
    sub_100004E24(&qword_1002DA970, &qword_1002DCC10, &unk_100238220);
    sub_100107DA4(v135, v139);
    sub_1000027F8();
  }
}

void sub_1001047CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v24;
  a20 = v25;
  v120 = v26;
  v117 = v27;
  v118 = v28;
  v116 = v29;
  v119 = v30;
  v31 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v31);
  sub_100003774();
  __chkstk_darwin(v32);
  sub_100108404();
  v33 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v33);
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &v111 - v35;
  v37 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v38);
  sub_10000308C();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  sub_100002DF4();
  __chkstk_darwin(v43);
  sub_1001080E4();
  __chkstk_darwin(v44);
  sub_1000062E0();
  __chkstk_darwin(v45);
  sub_10000D478();
  sub_10000A1C0(v46);
  sub_10003D1E4();
  v47 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v20, 1, v47);
  if (v52)
  {
    sub_100004E24(v20, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v48, v49, v50, v37);
  }

  else
  {
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v20, v51);
    sub_10000B3A0(v36, 1, v37);
    if (!v52)
    {
      sub_100007C00();
      sub_100107FA0();
      goto LABEL_8;
    }
  }

  v53 = type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v54, v55, v56, v53);
  sub_100007B78();
  sub_100002728(v57, v58, v59, v53);
  *(v41 + 32) = 0;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 40) = 1;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 80) = 0u;
  *(v41 + v37[11]) = 2;
  *(v41 + v37[12]) = 2;
  sub_1001083C4(v37[14]);
  sub_1001083C4(v37[15]);
  sub_1001083C4(v37[16]);
  sub_10000B3A0(v36, 1, v37);
  if (!v52)
  {
    sub_100004E24(v36, &qword_1002DCC10, &unk_100238220);
  }

LABEL_8:
  v60 = *v41;
  v61 = *(v41 + 8);
  v62 = *(v41 + 24);
  v134 = *(v41 + 16);
  v135 = v60;
  v63 = *(v41 + 56);
  v112 = *(v41 + 48);
  sub_1001081E0(v63);
  v64 = *(v41 + 72);
  v124 = *(v41 + 64);
  sub_1001082D0(v64);
  v65 = *(v41 + 88);
  v131 = *(v41 + 80);
  v129 = v65;
  v114 = v37[10];
  sub_1001088A0();
  v66 = v37[12];
  v136 = *(v41 + v37[11]);
  v133 = *(v41 + v66);
  sub_100002E6C(v37[13]);
  sub_1001088A0();
  v67 = v37[15];
  v68 = v41 + v37[14];
  v123 = *v68;
  v69 = v123;
  v122 = *(v68 + 8);
  sub_100108648(v41 + v67);
  v70 = v41 + v37[16];
  v125 = *v70;
  v128 = *(v70 + 8);

  v130 = v62;

  v71 = v111;

  sub_100005CC4(&a14);

  sub_100006670();
  v132 = v72;
  sub_100107DA4(v41, v73);
  v74 = v134;
  *v23 = v135;
  *(v23 + 8) = v61;
  *(v23 + 16) = v74;
  *(v23 + 24) = v62;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  sub_1001082DC();
  *(v23 + 48) = v75;
  *(v23 + 56) = v71;
  *(v23 + 64) = v124;
  *(v23 + 72) = v65;
  v76 = v65;
  v77 = v129;
  *(v23 + 80) = v131;
  *(v23 + 88) = v77;
  *(v23 + v37[11]) = v136;
  *(v23 + v37[12]) = v133;
  v78 = v23 + v37[14];
  *v78 = v69;
  LOBYTE(v69) = v122;
  *(v78 + 8) = v122;
  sub_1000109E8(v23 + v37[15]);
  sub_100013D8C((v23 + v37[16]));
  *(v79 + 8) = v128;
  v112 = v37[10];
  sub_10010808C(&a17);
  sub_10003D1E4();
  v114 = v37[13];
  sub_10010808C(&a16);
  sub_1001088C0();
  v80 = v61;
  swift_bridgeObjectRetain_n();
  v81 = v130;
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();

  sub_100107DA4(v23, v132);
  v82 = v134;
  v83 = v135;
  *v22 = v135;
  *(v22 + 8) = v61;
  *(v22 + 16) = v82;
  *(v22 + 24) = v81;
  *(v22 + 32) = 0;
  *(v22 + 40) = 1;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = v124;
  *(v22 + 72) = v76;
  *(v22 + 80) = v131;
  *(v22 + 88) = v77;
  *(v22 + v37[11]) = v136;
  *(v22 + v37[12]) = v133;
  v84 = v22 + v37[14];
  *v84 = v123;
  *(v84 + 8) = v69;
  v85 = v22 + v37[15];
  v86 = v127;
  *v85 = v127;
  LOBYTE(v81) = v126;
  *(v85 + 8) = v126;
  v87 = v22 + v37[16];
  v88 = v125;
  *v87 = v125;
  *(v87 + 8) = v128;
  v124 = v37[10];
  sub_1001082DC();
  sub_10003D1E4();
  v113 = v37[13];
  sub_100108240();
  sub_10003D1E4();

  v89 = v130;

  v90 = v129;

  sub_100107DA4(v22, v132);
  *v21 = v83;
  v21[1] = v80;
  v121 = v80;
  v91 = v134;
  v21[2] = v134;
  v21[3] = v89;
  sub_10010857C();
  v92 = v131;
  v21[10] = v131;
  v21[11] = v90;
  LOBYTE(v90) = v136;
  *(v21 + v37[11]) = v136;
  *(v21 + v37[12]) = v133;
  sub_10010845C();
  *v93 = v123;
  *(v93 + 8) = v122;
  v94 = v21 + v37[15];
  *v94 = v86;
  v94[8] = v81;
  v95 = v21 + v37[16];
  *v95 = v88;
  LOBYTE(v86) = v128;
  v95[8] = v128;
  v123 = v37[10];
  v96 = v115;
  sub_10003D1E4();
  v124 = v37[13];
  sub_100108140();
  sub_1001088C0();
  v97 = v121;

  v98 = v130;

  v99 = v129;

  sub_100107DA4(v21, v132);
  *v96 = v135;
  *(v96 + 8) = v97;
  *(v96 + 16) = v91;
  *(v96 + 24) = v98;
  *(v96 + 32) = 0;
  *(v96 + 40) = 1;
  *(v96 + 48) = 0u;
  *(v96 + 64) = 0u;
  *(v96 + 80) = v92;
  *(v96 + 88) = v99;
  *(v96 + v37[11]) = v90;
  LOBYTE(v97) = v133;
  *(v96 + v37[12]) = v133;
  v100 = v96 + v37[14];
  v101 = v117;
  *v100 = v117;
  LOBYTE(v91) = v116 & 1;
  *(v100 + 8) = v116 & 1;
  sub_1000109E8(v96 + v37[15]);
  v102 = v96 + v37[16];
  v103 = v125;
  *v102 = v125;
  *(v102 + 8) = v86;
  v104 = v119;
  sub_10003D1E4();
  sub_10003D1E4();
  sub_100107DA4(v96, v132);
  v105 = v121;
  *v104 = v135;
  *(v104 + 8) = v105;
  v106 = v130;
  *(v104 + 16) = v134;
  *(v104 + 24) = v106;
  *(v104 + 32) = 0;
  *(v104 + 40) = 1;
  *(v104 + 48) = 0u;
  *(v104 + 64) = 0u;
  v107 = v129;
  *(v104 + 80) = v131;
  *(v104 + 88) = v107;
  *(v104 + v37[11]) = v136;
  *(v104 + v37[12]) = v97;
  v108 = v104 + v37[14];
  *v108 = v101;
  *(v108 + 8) = v91;
  v109 = v104 + v37[15];
  *v109 = v118;
  *(v109 + 8) = v120 & 1;
  v110 = v104 + v37[16];
  *v110 = v103;
  *(v110 + 8) = v86;
  sub_1000027F8();
}

uint64_t sub_100104FE0(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a4;
  v62 = type metadata accessor for TimeZone();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v8 - 8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v56 - v11;
  v73 = type metadata accessor for Date();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v56 - v14;
  __chkstk_darwin(v15);
  v57 = &v56 - v16;
  __chkstk_darwin(v17);
  v68 = &v56 - v18;
  __chkstk_darwin(v19);
  v66 = &v56 - v20;
  __chkstk_darwin(v21);
  v67 = &v56 - v22;
  v23 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  __chkstk_darwin(v23 - 8);
  v25 = &v56 - v24;
  v26 = type metadata accessor for TSDataSyncTriggerEvent(0);
  __chkstk_darwin(v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(type metadata accessor for TSDataSyncDatasetState(0) + 32);
  v29 = *(a5 + 32);
  v30 = *(a5 + 48);
  v64 = *(a5 + 40);
  v65 = v30;
  v31 = *(a5 + 56);
  sub_10003D1E4();
  if (sub_100004DFC(v25, 1, v26) == 1)
  {
    sub_100004E24(v25, &qword_1002DBC20, &unk_100234B00);
  }

  else
  {
    sub_100107FA0();
    v40 = *(v26 + 32);
    v41 = *&v28[v40];
    v42 = *&v28[v40 + 8];
    v43 = &a1[v40];
    v44 = v41 == *v43 && v42 == *(v43 + 1);
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100107DA4(v28, type metadata accessor for TSDataSyncTriggerEvent);
      v32 = 0;
      return v32 & 1;
    }

    sub_100107DA4(v28, type metadata accessor for TSDataSyncTriggerEvent);
  }

  v32 = 0;
  switch(v29)
  {
    case 1:
    case 3:
      if (*&a1[*(v26 + 28) + 8])
      {
        goto LABEL_16;
      }

      v33 = v71;
      v34 = v66;
      v35 = v73;
      (*(v71 + 16))(v66, a1, v73);
      v36 = v67;
      static Date.+ infix(_:_:)();
      v37 = *(v33 + 8);
      v37(v34, v35);
      v38 = v69;
      sub_10003D1E4();
      if (sub_100004DFC(v38, 1, v35) == 1)
      {
        v39 = v68;
        goto LABEL_7;
      }

      v39 = v68;
      (*(v33 + 32))(v68, v38, v35);
      goto LABEL_22;
    case 2:
    case 4:
      if (*&a1[*(v26 + 28) + 8])
      {
LABEL_16:
        v32 = 1;
        return v32 & 1;
      }

      v45 = v65;

      if (v31)
      {
        v46._countAndFlagsBits = v64;
        v46._object = v45;
        SwifCron.init(_:)(&v74, v46);
        if (v47)
        {
          return v32 & 1;
        }

        v48 = v63;
        SwifCron.next(from:)(a1, v63);
        sub_1000ED114(&v74);
      }

      else
      {
        v50._countAndFlagsBits = v64;
        v50._object = v45;
        SwifCron.init(_:)(&v75, v50);
        if (v51)
        {
          return v32 & 1;
        }

        v52 = v60;
        static TimeZone.autoupdatingCurrent.getter();
        v48 = v63;
        SwifCron.next(from:timeZone:)(a1, v52, v63);
        (*(v61 + 8))(v52, v62);
        sub_1000ED114(&v75);
      }

      v36 = v57;
      static Date.+ infix(_:_:)();
      v54 = v71;
      v37 = *(v71 + 8);
      v35 = v73;
      v37(v48, v73);
      v38 = v59;
      sub_10003D1E4();
      v55 = sub_100004DFC(v38, 1, v35);
      v39 = v58;
      if (v55 == 1)
      {
LABEL_7:
        static Date.distantPast.getter();
        if (sub_100004DFC(v38, 1, v35) != 1)
        {
          sub_100004E24(v38, &qword_1002DA970, &qword_1002318B0);
        }
      }

      else
      {
        (*(v54 + 32))(v58, v38, v35);
      }

LABEL_22:
      sub_1000108D8();
      v49 = dispatch thunk of static Comparable.< infix(_:_:)();
      v37(v39, v35);
      v37(v36, v35);
      v32 = v49 ^ 1;
      break;
    default:
      return v32 & 1;
  }

  return v32 & 1;
}

void sub_1001057C0()
{
  sub_100004168();
  v4 = v3;
  sub_1001084E0(v5);
  v6 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  v9 = &v119 - v8;
  v10 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v10);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100108404();
  v12 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v13);
  sub_10000308C();
  sub_1000062E0();
  __chkstk_darwin(v14);
  sub_100108044();
  __chkstk_darwin(v15);
  v17 = &v119 - v16;
  __chkstk_darwin(v18);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v19);
  sub_10000D478();
  sub_10000A1C0(v20);
  if (v4)
  {
    v148 = v4;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    if (swift_dynamicCast())
    {
      v21 = v147;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  sub_10003D1E4();
  v22 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v9, 1, v22);
  v126 = v4;
  if (v27)
  {
    sub_100004E24(v9, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v23, v24, v25, v12);
    goto LABEL_11;
  }

  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v9, v26);
  sub_1000071D8(v0);
  if (v27)
  {
LABEL_11:
    v28 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v29, v30, v31, v28);
    v32 = sub_10000D500(v12[13]);
    sub_100002728(v32, v33, v34, v28);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 40) = 1;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    sub_100108108();
    *(v2 + v35) = v36;
    sub_100005134(v12[14]);
    *(v37 + 8) = 1;
    sub_100005134(v12[15]);
    *(v38 + 8) = 1;
    sub_100005134(v12[16]);
    *(v39 + 8) = 1;
    sub_1000071D8(v0);
    if (!v27)
    {
      sub_100004E24(v0, &qword_1002DCC10, &unk_100238220);
    }

    if (!v21)
    {
      goto LABEL_16;
    }

LABEL_14:
    v143 = [v21 code];
    goto LABEL_17;
  }

  sub_100007C00();
  sub_100107FA0();
  if (v21)
  {
    goto LABEL_14;
  }

LABEL_16:
  v143 = 0;
LABEL_17:
  v135 = v21 == 0;
  v40 = *v2;
  v41 = *(v2 + 8);
  v42 = *(v2 + 24);
  v141 = *(v2 + 16);
  v43 = *(v2 + 48);
  v44 = *(v2 + 64);
  v128 = *(v2 + 56);
  v129 = v44;
  v45 = *(v2 + 72);
  v131 = v43;
  v132 = v45;
  v46 = v1 + v12[10];
  v47 = *(v2 + 88);
  v145 = *(v2 + 80);
  v146 = v40;
  v123 = v46;
  sub_100108498();
  sub_10003D1E4();
  v48 = *(v2 + v12[12]);
  v138 = *(v2 + v12[11]);
  v139 = v48;
  v122 = v1 + v12[13];
  sub_100108498();
  sub_10003D1E4();
  v49 = v12[15];
  v50 = v2 + v12[14];
  v134 = *v50;
  LODWORD(v133) = *(v50 + 8);
  v137 = *(v2 + v49);
  v136 = *(v2 + v49 + 8);
  v51 = v2 + v12[16];
  v144 = *v51;
  v130 = v21;
  v52 = *(v51 + 8);

  v53 = v128;

  v54 = v132;

  sub_100006670();
  sub_100107DA4(v2, v55);
  *v1 = v146;
  *(v1 + 8) = v41;
  v142 = v41;
  *(v1 + 16) = v141;
  *(v1 + 24) = v42;
  v56 = v42;
  *(v1 + 32) = v143;
  *(v1 + 40) = v135;
  *(v1 + 48) = v131;
  *(v1 + 56) = v53;
  *(v1 + 64) = v129;
  *(v1 + 72) = v54;
  *(v1 + 80) = v145;
  *(v1 + 88) = v47;
  v140 = v47;
  v57 = v139;
  *(v1 + v12[11]) = v138;
  *(v1 + v12[12]) = v57;
  v58 = (v1 + v12[14]);
  *v58 = v134;
  sub_100108058(v58);
  sub_10010865C((v1 + v59));
  sub_100013E00(v60);
  sub_1001084D4((v1 + v61));
  v135 = v52;
  *(v62 + 8) = v52;
  v63 = v130;
  if (v130)
  {

    v64 = [v63 domain];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = v63;
  }

  else
  {

    v68 = 0;
    v65 = 0;
    v67 = 0;
  }

  v69 = v63 == 0;
  LODWORD(v128) = v63 == 0;
  sub_1001081E0(v12[10]);
  sub_10010831C();
  sub_10003D1E4();
  sub_100002E6C(v12[13]);
  sub_10010831C();
  sub_10003D1E4();
  sub_100006670();
  v130 = v70;
  sub_100107DA4(v1, v71);
  v72 = v142;
  *v17 = v146;
  *(v17 + 1) = v72;
  *(v17 + 2) = v141;
  *(v17 + 3) = v56;
  v73 = v56;
  *(v17 + 4) = v143;
  v17[40] = v69;
  *(v17 + 6) = v65;
  *(v17 + 7) = v67;
  v131 = v67;
  v74 = v132;
  *(v17 + 8) = v129;
  *(v17 + 9) = v74;
  v75 = v140;
  *(v17 + 10) = v145;
  *(v17 + 11) = v75;
  v76 = v75;
  v77 = v139;
  v17[v12[11]] = v138;
  v17[v12[12]] = v77;
  v78 = &v17[v12[14]];
  v120 = v65;
  *v78 = v134;
  sub_100108058(v78);
  sub_10010865C(&v17[v79]);
  sub_100013E00(v80);
  sub_1001084D4(&v17[v81]);
  *(v82 + 8) = v135;
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();
  v127 = v56;
  swift_bridgeObjectRetain_n();
  v83 = v76;
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v84 = static HTTPHelpers.statusCodeString(error:)();
  v129 = v84;
  v132 = v85;

  sub_100108174();
  v86 = v121;
  sub_10003D1E4();
  v126 = v12[13];
  sub_100108234();
  sub_10003D1E4();
  sub_100107DA4(v17, v130);
  v87 = v142;
  *v86 = v146;
  *(v86 + 8) = v87;
  *(v86 + 16) = v141;
  *(v86 + 24) = v73;
  *(v86 + 32) = v143;
  v88 = v128;
  *(v86 + 40) = v128;
  v89 = v131;
  *(v86 + 48) = v65;
  *(v86 + 56) = v89;
  v90 = v132;
  *(v86 + 64) = v84;
  *(v86 + 72) = v90;
  *(v86 + 80) = v145;
  *(v86 + 88) = v83;
  LOBYTE(v83) = v138;
  v91 = v139;
  *(v86 + v12[11]) = v138;
  *(v86 + v12[12]) = v91;
  v92 = (v86 + v12[14]);
  *v92 = v134;
  sub_100108058(v92);
  sub_10010865C((v86 + v93));
  sub_100013E00(v94);
  sub_1001084D4((v86 + v95));
  *(v96 + 8) = v135;
  v134 = v12[10];
  v97 = v124;
  sub_10003D1E4();
  v133 = v12[13];
  sub_10003D1E4();
  v98 = v90;
  swift_bridgeObjectRetain_n();
  v99 = v87;

  v100 = v127;

  v101 = v140;

  v102 = v131;

  sub_100107DA4(v86, v130);
  *v97 = v146;
  *(v97 + 8) = v99;
  v103 = v141;
  *(v97 + 16) = v141;
  *(v97 + 24) = v100;
  *(v97 + 32) = v143;
  *(v97 + 40) = v88;
  v104 = v120;
  *(v97 + 48) = v120;
  *(v97 + 56) = v102;
  v105 = v129;
  *(v97 + 64) = v129;
  *(v97 + 72) = v98;
  *(v97 + 80) = v145;
  *(v97 + 88) = v101;
  *(v97 + v12[11]) = v83;
  LOBYTE(v83) = v139;
  *(v97 + v12[12]) = v139;
  sub_100003C34(v97 + v12[14]);
  sub_10010865C((v97 + v106));
  LOBYTE(v102) = v135;
  sub_100013E00(v107);
  sub_1001084D4((v97 + v108));
  *(v109 + 8) = v102;
  v110 = v125;
  sub_10003D1E4();
  sub_10003D1E4();
  sub_100107DA4(v97, v130);
  v111 = v142;
  *v110 = v146;
  *(v110 + 8) = v111;
  v112 = v127;
  *(v110 + 16) = v103;
  *(v110 + 24) = v112;
  *(v110 + 32) = v143;
  *(v110 + 40) = v128;
  v114 = v131;
  v113 = v132;
  *(v110 + 48) = v104;
  *(v110 + 56) = v114;
  *(v110 + 64) = v105;
  *(v110 + 72) = v113;
  v115 = v140;
  *(v110 + 80) = v145;
  *(v110 + 88) = v115;
  *(v110 + v12[11]) = v138;
  *(v110 + v12[12]) = v83;
  sub_100003C34(v110 + v12[14]);
  sub_10000B3B8(v110 + v116);
  sub_1001084D4((v110 + v117));
  *(v118 + 8) = v102;
  sub_1000027F8();
}

void sub_100106130()
{
  sub_100004168();
  v121 = v1;
  v3 = v2;
  v5 = v4;
  v7 = sub_10010834C(v6);
  v8 = type metadata accessor for TSDataSyncDatasetState(v7);
  sub_100003724();
  __chkstk_darwin(v9);
  sub_1000037D4();
  v126 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_1000062E0();
  __chkstk_darwin(v12);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v13);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v14);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_10000D478();
  v18 = sub_100008280(v17);
  type metadata accessor for TSDataSyncTriggerEvent(v18);
  sub_100003724();
  v120 = v19;
  __chkstk_darwin(v19);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v20);
  sub_10000D478();
  v133 = v21;
  v22 = *(v3 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
  v23 = type metadata accessor for TSDataSyncExternalEvent(0);
  v24 = *(v5 + v23[8]);

  v25 = sub_1001AC0C8(v3, v24);
  if (!v25)
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = v25[2];
  if (!v26)
  {
LABEL_31:

    sub_10010958C();

    sub_1000027F8();
    return;
  }

  v27 = v23[6];
  v119 = *(v5 + v23[7]);
  v118 = *(v5 + v27);
  v117 = *(v5 + v27 + 8);
  v28 = (v5 + v23[10]);
  v29 = (v5 + v23[9]);
  v116 = *v29;
  v115 = v29[1];
  v114 = *v28;
  sub_100002E6C(v28[1]);
  v31 = v30;
  v131 = type metadata accessor for Date();
  v32 = (v31 + 40);
  v33 = *(*(v131 - 8) + 16);
  v130 = v33;
  while (1)
  {
    v35 = *(v32 - 1);
    v34 = *v32;
    v127 = v32;
    (v33)(v133, v121, v131);
    *(v133 + v120[5]) = v119;
    v36 = v133 + v120[6];
    *v36 = v118;
    *(v36 + 8) = v117;
    v37 = (v133 + v120[7]);
    *v37 = v116;
    v37[1] = v115;
    v38 = (v133 + v120[8]);
    *v38 = v114;
    v38[1] = v113;
    v39 = v22[2];

    v128 = v26;
    v129 = v34;
    v132 = v35;
    if (v39)
    {
      sub_10014EB30(v35, v34);
      if (v40)
      {
        sub_1001083B4();
        sub_100006D1C();
        sub_10000288C();
        sub_100107DFC();
        sub_100007FA8();
        sub_10000288C();
        sub_100107FA0();
        v41 = *(v39 + v8[19]);
        sub_10000C020();
        sub_100107DFC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C1C0(0, v41[2] + 1, 1, v41);
          v41 = v104;
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          sub_10013C1C0(v42 > 1, v43 + 1, 1, v41);
          v41 = v105;
        }

        v41[2] = v43 + 1;
        sub_100107FA0();
        v44 = v112[1];
        v125 = *v112;
        v45 = v112[3];
        v122 = v112[4];
        v124 = v112[2];
        v108 = v112[5];
        v110 = v112[6];
        v109 = v112[7];
        sub_1001082C4();
        sub_10003D1E4();
        v46 = sub_100108748(v8[9]);
        v130(v46);
        sub_1001085BC();
        sub_1001085BC();
        v47 = (v112 + v8[13]);
        v48 = v47[1];
        v107 = *v47;
        sub_1001087E4();
        v49 = (v112 + v8[15]);
        v50 = v49[1];
        v106 = *v49;
        v51 = *(v112 + v8[18]);
        sub_10003D1E4();
        *v22 = v125;
        v22[1] = v44;
        v22[2] = v124;
        v22[3] = v45;
        v22[4] = v122;
        v22[5] = v108;
        v22[6] = v110;
        v22[7] = v109;
        sub_1000DB94C(v8[11]);
        v52 = (v22 + v8[13]);
        *v52 = v107;
        v52[1] = v48;
        sub_10000A834((v22 + v8[14]));
        sub_100010E0C(v53);
        v54 = (v22 + v8[15]);
        *v54 = v106;
        v54[1] = v50;
        sub_100108278(v8[16]);
        sub_100108278(v8[17]);
        *(v22 + v8[18]) = v51;
        *(v22 + v8[19]) = v41;
        sub_100007FA8();
        sub_100107FA0();

        sub_10000B358(&v134);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10014EB30(v132, v34);
        sub_10000B818();
        if (__OFADD__(v57, v58))
        {
          goto LABEL_34;
        }

        v59 = v55;
        v60 = v56;
        sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
        if (sub_100108860())
        {
          v61 = sub_10014EB30(v132, v129);
          v33 = v130;
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_36;
          }

          v59 = v61;
        }

        else
        {
          v33 = v130;
        }

        v22 = v41;
        if (v60)
        {
          sub_100108728();
          v97 = sub_10010826C();
          sub_100107190(v97, v98);
        }

        else
        {
          sub_1000035B8(&v41[v59 >> 6]);
          v99 = (v41[6] + 16 * v59);
          *v99 = v132;
          v99[1] = v129;
          sub_100108728();
          sub_100007FA8();
          sub_10010826C();
          sub_100107FA0();
          v100 = v41[2];
          v94 = __OFADD__(v100, 1);
          v101 = v100 + 1;
          if (v94)
          {
            goto LABEL_35;
          }

          v41[2] = v101;
        }

        sub_100004ADC();
        sub_100107DA4(v112, v102);
        sub_100008324();
        sub_100107DA4(v133, v103);
        v26 = v128;
        goto LABEL_30;
      }
    }

    sub_100007B78();
    sub_100002728(v63, v64, v65, v131);
    v123 = v8[9];
    static Date.distantPast.getter();
    v66 = sub_10000D500(v8[10]);
    sub_100002728(v66, v67, v68, v131);
    v69 = sub_10000D500(v8[12]);
    sub_100002728(v69, v70, v71, v131);
    v72 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v73, v74, v75, v76);
    sub_100108074();
    sub_1001080F4();
    *v77 = 0;
    v77[1] = 0;
    sub_10010845C();
    sub_100108004(v78);
    sub_100004044();
    *(v0 + v79) = _swiftEmptyArrayStorage;
    sub_100099DF4(&qword_1002DCC58, &unk_100238240);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_10022E400;
    sub_10000C020();
    sub_100107DFC();
    sub_10003D1E4();
    (v130)(v111 + v8[9], v0 + v123, v131);
    sub_10010831C();
    sub_10003D1E4();
    sub_10010831C();
    sub_10003D1E4();
    sub_10003D1E4();

    sub_100004ADC();
    sub_100107DA4(v0, v81);
    sub_100108798();
    *(v111 + 48) = 0;
    *(v111 + 56) = 0;
    *(v111 + v8[11]) = 0;
    v82 = (v111 + v8[13]);
    *v82 = 0;
    v82[1] = 0;
    sub_100108004(v111 + v8[14]);
    v83 = (v111 + v8[15]);
    *v83 = 0;
    v83[1] = 0;
    *(v111 + v8[16]) = 0;
    *(v111 + v8[17]) = 0;
    *(v111 + v8[18]) = v72;
    *(v111 + v8[19]) = v80;
    sub_100007FA8();
    sub_100107FA0();
    swift_isUniquelyReferenced_nonNull_native();
    v84 = sub_10014EB30(v35, v129);
    if (__OFADD__(v22[2], (v85 & 1) == 0))
    {
      break;
    }

    v86 = v84;
    v87 = v85;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (sub_100108860())
    {
      v88 = sub_10014EB30(v35, v129);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_36;
      }

      v86 = v88;
    }

    if (v87)
    {
      sub_1001083B4();
      sub_100107190(v126, v90 + v91 * v86);
    }

    else
    {
      sub_1000035B8(&v22[v86 >> 6]);
      v92 = (v22[6] + 16 * v86);
      *v92 = v35;
      v92[1] = v129;
      sub_1001083B4();
      sub_100007FA8();
      sub_100107FA0();
      v93 = v22[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        goto LABEL_33;
      }

      v22[2] = v95;
    }

    sub_100008324();
    sub_100107DA4(v133, v96);
    v33 = v130;
LABEL_30:
    v32 = v127 + 2;
    if (!--v26)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100106C4C()
{
  v1 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v2 = sub_1000030B8(v1);
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10003CF80();
  sub_10003D1E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);
    return 0;
  }

  else
  {
    sub_1000F8344();
    sub_100107FA0();
    v7 = *(v5 + 16);

    sub_100107DA4(v5, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
  }

  return v7;
}

void *sub_100106D98(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1000D6484();
    v2 = Dictionary.init(dictionaryLiteral:)();
    v3 = v1 + 64;
    sub_100007FC0();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;

    v9 = 0;
    v30 = v8;
    v31 = v1 + 64;
    v32 = v1;
    if (!v6)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v10 = v9;
LABEL_7:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v33 = *(*(*(v1 + 56) + 24 * v11) + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10014EB30(v14, v13);
      sub_10000B818();
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      v22 = v17;
      sub_100099DF4(&qword_1002DCC40, &qword_100236618);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20))
      {
        sub_10014EB30(v14, v13);
        sub_10000A224();
        if (!v24)
        {
          goto LABEL_24;
        }

        v21 = v23;
      }

      v6 &= v6 - 1;
      if (v22)
      {
        *(v2[7] + 8 * v21) = v33;
      }

      else
      {
        sub_1001086C0();
        sub_1000035B8(v25);
        v26 = (v2[6] + 16 * v21);
        *v26 = v14;
        v26[1] = v13;
        *(v2[7] + 8 * v21) = v33;
        sub_1001086CC();
        if (v28)
        {
          goto LABEL_23;
        }

        v2[2] = v27;
      }

      v9 = v10;
      v3 = v31;
      v1 = v32;
      v8 = v30;
      if (!v6)
      {
LABEL_4:
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v10 >= v8)
          {

            return v2;
          }

          v6 = *(v3 + 8 * v10);
          ++v9;
          if (v6)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_100106FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_100107190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001071F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100107254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_1001072CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100122C48();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100107338(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100107338(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1001074F4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10010742C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10010742C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1001074F4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013BF14();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10013BF14();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
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
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_100107B28((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1001079FC(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_1001079FC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100107B28((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100107B28(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10013CAD8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10013CAD8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_100107CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_100107D70(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100107DA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100107DFC()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_100107EB0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100107254(result, 1, sub_10013C0F0);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10013CAD8((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100107FA0()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

void sub_100108074()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0;
}

void sub_1001080D0(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 200);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10010824C()
{

  return sub_1001071F4(v0, v1);
}

void sub_100108364(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

__n128 sub_100108374()
{
  result = *(v1 - 128);
  v0[5] = result;
  return result;
}

__n128 sub_100108384()
{
  result = *(v1 - 128);
  v0[5] = result;
  return result;
}

void sub_100108394(void *a1@<X8>)
{
  v2 = *(v1 - 176);
  *a1 = *(v1 - 168);
  a1[1] = v2;
}

void sub_1001083A4(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void sub_1001083C4(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void sub_100108540()
{
  *(v0 + *(v3 + 36)) = v1;
  v5 = (v0 + *(v3 + 40));
  *v5 = v2;
  v5[1] = v4;
}

double sub_10010857C()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_1001085A0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001085BC()
{

  return sub_10003D1E4();
}

uint64_t sub_1001085D4()
{
}

uint64_t sub_1001085EC()
{

  return sub_10003D1E4();
}

uint64_t sub_100108604()
{
}

void sub_10010867C()
{
  v4 = (*(v0 + 48) + 16 * v1);
  *v4 = v3;
  v4[1] = v2;
}

void sub_10010873C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_100108798()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

BOOL sub_100108840()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

BOOL sub_100108860()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100108880()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088A0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088C0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088D8()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088F0()
{

  return sub_100107E54(v0 - 112, v0 - 328);
}

void sub_100108970(uint64_t a1)
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_100108AB4(319);
    if (v2 <= 0x3F)
    {
      sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100109274(319, &qword_1002DCCD0, &type metadata for TSDataSyncDatasetIdentifier, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100109274(319, &unk_1002DCCD8, &type metadata for TSDataSyncDatasetGroupMetricsFields, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100108AB4(uint64_t a1)
{
  if (!qword_1002DCCC8)
  {
    type metadata accessor for TSDataSyncDatasetState(255);
    sub_1000D6484();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DCCC8);
    }
  }
}

uint64_t sub_100108B40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100108B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100108C20(uint64_t a1)
{
  sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v6 = type metadata accessor for Date();
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_100109274(319, &qword_1002DCD88, &type metadata for Int, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_100108E64();
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_100108EC0(319, &qword_1002DC700, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Array);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_100108EC0(319, &unk_1002DCD98, type metadata accessor for TSDataSyncDatasetMetricsFields, &type metadata accessor for Optional);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_100108E64()
{
  if (!qword_1002DCD90)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DCD90);
    }
  }
}

void sub_100108EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100108F8C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100109274(319, &qword_1002DC7B8, &type metadata for Double, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001090A4(uint64_t a1)
{
  sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100109274(319, &qword_1002DCD88, &type metadata for Int, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_100109274(319, &unk_1002DC708, &type metadata for Bool, &type metadata accessor for Optional);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_100109274(319, &qword_1002DC7B8, &type metadata for Double, &type metadata accessor for Optional);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_100109274(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001092FC(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100109384@<X0>(char *a1@<X8>)
{
  v26 = *(v1 + 1);
  v3 = *(v1 + 3);
  v29 = *(v1 + 2);
  v30 = *v1;
  v4 = *(v1 + 5);
  v5 = *(v1 + 7);
  v27 = *(v1 + 6);
  v28 = *(v1 + 4);
  v6 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_1001189C4(v6[8]);
  sub_1001185C4();
  sub_10003D1E4();
  v7 = v6[9];
  type metadata accessor for Date();
  sub_10000307C();
  (*(v8 + 16))(&a1[v7], &v1[v7]);
  sub_1001189C4(v6[10]);
  sub_1001185C4();
  sub_10003D1E4();
  sub_1001187A0();
  sub_1001185C4();
  sub_10003D1E4();
  v9 = *&v1[v6[13] + 8];
  sub_1001186C0();
  v10 = &v1[v6[15]];
  LODWORD(v19) = v1[v6[17]];
  HIDWORD(v19) = v1[v6[16]];
  v11 = *&v1[v6[18]];
  v12 = *&v1[v6[19]];
  v13 = v10[1];
  v17 = *v10;
  sub_10003D1E4();
  *a1 = v30;
  *(a1 + 1) = v26;
  *(a1 + 2) = v29;
  *(a1 + 3) = v3;
  *(a1 + 4) = v28;
  *(a1 + 5) = v4;
  *(a1 + 6) = v27;
  *(a1 + 7) = v5;
  *&a1[v6[11]] = v25;
  v14 = &a1[v6[13]];
  *v14 = v22;
  *(v14 + 1) = v9;
  sub_1001188A8(&a1[v6[14]], v17, v19, v22, *v23, v23[4], v24);
  v15 = &a1[v6[15]];
  *v15 = v18;
  *(v15 + 1) = v13;
  a1[v6[16]] = v21;
  a1[v6[17]] = v20;
  *&a1[v6[18]] = v11;
  *&a1[v6[19]] = v12;
}

uint64_t sub_10010958C()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  sub_1001184BC();
  sub_100116BCC();
  v5 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100118A10();
  sub_100118A10();
  v6 = *(v0 + v5[8]);
  v7 = *(v0 + v5[9]);
  v8 = (v0 + v5[10]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  *(v4 + v5[5]) = v2;
  *(v4 + v5[8]) = v6;
  *(v4 + v5[9]) = v7;
  v13 = (v4 + v5[10]);
  *v13 = v9;
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = v12;

  sub_10000492C();
  sub_1000027F8();

  return sub_1001071F4(v14, v15);
}

uint64_t sub_100109674@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v5 = *(v3 + 1);
  v31 = *v3;
  v6 = *(v3 + 3);
  v29 = *(v3 + 4);
  v30 = *(v3 + 2);
  v28 = *(v3 + 6);
  v26 = *(v3 + 5);
  v27 = *(v3 + 7);
  v7 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_1001189C4(v7[8]);
  sub_10003D1E4();
  v8 = v7[9];
  type metadata accessor for Date();
  sub_10000307C();
  (*(v9 + 16))(&a3[v8], &v3[v8]);
  sub_1001189C4(v7[10]);
  sub_10003D1E4();
  sub_1001187A0();
  sub_10003D1E4();
  v10 = &v3[v7[13]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = &v3[v7[15]];
  v14 = *(v13 + 1);
  v22 = v11;
  v23 = *v13;
  v24 = v3[v7[16]];
  v21 = v3[v7[17]];
  v15 = *&v3[v7[18]];
  v16 = *&v3[v7[19]];
  sub_10003D1E4();
  *a3 = v31;
  *(a3 + 1) = v5;
  *(a3 + 2) = v30;
  *(a3 + 3) = v6;
  *(a3 + 4) = v29;
  *(a3 + 5) = v26;
  *(a3 + 6) = v28;
  *(a3 + 7) = v27;
  *&a3[v7[11]] = v25;
  v17 = &a3[v7[13]];
  *v17 = v22;
  *(v17 + 1) = v12;
  v18 = &a3[v7[14]];
  *v18 = a1;
  v18[8] = a2 & 1;
  v19 = &a3[v7[15]];
  *v19 = v23;
  *(v19 + 1) = v14;
  a3[v7[16]] = v24;
  a3[v7[17]] = v21;
  *&a3[v7[18]] = v15;
  *&a3[v7[19]] = v16;
}

uint64_t static PIUnpersonalizedPrivateIdentifierMapping.Key.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001098C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 1);
  v30 = *v2;
  v5 = *(v2 + 3);
  v6 = *(v2 + 5);
  v28 = *(v2 + 4);
  v29 = *(v2 + 2);
  v26 = *(v2 + 7);
  v27 = *(v2 + 6);
  v7 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_1001185C4();
  sub_10003D1E4();
  v8 = v7[9];
  type metadata accessor for Date();
  sub_10000307C();
  (*(v9 + 16))(&a2[v8], &v2[v8]);
  sub_1001185C4();
  sub_10003D1E4();
  sub_1001187A0();
  sub_1001185C4();
  sub_10003D1E4();
  v10 = *&v2[v7[13] + 8];
  sub_1001186C0();
  v11 = &v2[v7[15]];
  v12 = *v11;
  v13 = *(v11 + 1);
  LODWORD(v19) = v2[v7[17]];
  HIDWORD(v19) = v2[v7[16]];
  v14 = *&v2[v7[19]];
  sub_10003D1E4();
  *a2 = v30;
  *(a2 + 1) = v4;
  *(a2 + 2) = v29;
  *(a2 + 3) = v5;
  *(a2 + 4) = v28;
  *(a2 + 5) = v6;
  *(a2 + 6) = v27;
  *(a2 + 7) = v26;
  *&a2[v7[11]] = v25;
  v15 = &a2[v7[13]];
  *v15 = v22;
  *(v15 + 1) = v10;
  sub_1001188A8(&a2[v7[14]], v18, v19, v22, *v23, v23[4], v24);
  v16 = &a2[v7[15]];
  *v16 = v12;
  *(v16 + 1) = v13;
  a2[v7[16]] = v21;
  a2[v7[17]] = v20;
  *&a2[v7[18]] = a1;
  *&a2[v7[19]] = v14;
}

uint64_t sub_100109AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7374657361746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100273950 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000100273970 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100109D18(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7374657361746164;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0x4274736575716572;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100109E08()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  sub_1000051B0();
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v12 = sub_1000030B8(v11);
  __chkstk_darwin(v12);
  sub_10000BA50();
  __chkstk_darwin(v13);
  sub_10011853C();
  v14 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v15);
  sub_10000308C();
  sub_1000035D4();
  __chkstk_darwin(v16);
  sub_10011852C();
  v17 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((sub_100152BEC(*(v6 + 16), *(v4 + 16)) & 1) == 0)
  {
    goto LABEL_39;
  }

  v18 = *(v6 + 24) == *(v4 + 24) && *(v6 + 32) == *(v4 + 32);
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v19 = *(v6 + 40) == *(v4 + 40) && *(v6 + 48) == *(v4 + 48);
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v71 = v0;
  v20 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10011359C(*(v6 + *(v20 + 20)), *(v4 + *(v20 + 20)));
  if ((v21 & 1) == 0)
  {
    goto LABEL_39;
  }

  v70 = v20;
  v22 = *(v14 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v17)
  {
    sub_1000071D8(v2 + v22);
    v23 = v71;
    if (v17)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_29;
    }

LABEL_27:
    v27 = v2;
LABEL_38:
    sub_100004E24(v27, &qword_1002DACF0, &qword_100232140);
    goto LABEL_39;
  }

  sub_10003D1E4();
  sub_1000071D8(v2 + v22);
  if (v24)
  {
    v25 = sub_10011887C();
    v26(v25);
    goto LABEL_27;
  }

  v28 = sub_1000035AC();
  v29(v28);
  sub_100004AF4();
  v31 = sub_100111ED0(v30);
  v69 = sub_1000AC3D8(v31);
  v32 = *(v9 + 8);
  v32(v71, v7);
  v33 = sub_10011887C();
  (v32)(v33);
  v23 = v71;
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  v34 = *(v14 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v1);
  if (!v17)
  {
    sub_10000B80C();
    sub_10003D1E4();
    sub_1000071D8(v1 + v34);
    if (!v35)
    {
      v38 = sub_1000035AC();
      v39(v38);
      sub_100004AF4();
      sub_100111ED0(v40);
      sub_100005CF0();
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v9 + 8);
      v42(v23, v7);
      v43 = sub_1000B31F0();
      (v42)(v43);
      sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    sub_100118858();
    v36 = sub_1000B31F0();
    v37(v36);
    goto LABEL_37;
  }

  sub_1000071D8(v1 + v34);
  if (!v17)
  {
LABEL_37:
    v27 = v1;
    goto LABEL_38;
  }

  sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
LABEL_41:
  if (sub_100143614(*(v6 + v70[8]), *(v4 + v70[8])) & 1) != 0 && (sub_100143614(*(v6 + v70[9]), *(v4 + v70[9])))
  {
    v44 = v70[10];
    v45 = *(v6 + v44 + 8);
    v46 = (v4 + v44);
    v48 = *v46;
    v47 = v46[1];
    v50 = v46[2];
    v49 = v46[3];
    if (v45 == 1)
    {
      if (v47 == 1)
      {
        goto LABEL_39;
      }
    }

    else if (v47 != 1)
    {
      v59 = sub_1001183E4();
      sub_10010B0B8(v59, v60, v61, v62, v48, v47, v50, v49);
      v63 = sub_100118508();
      sub_1001071F4(v63, v64);
      v65 = sub_1001183E4();
      sub_1001071F4(v65, v66);

      v67 = sub_1001183E4();
      sub_100116F0C(v67, v68);
      goto LABEL_39;
    }

    v51 = sub_100118508();
    sub_1001071F4(v51, v52);
    v53 = sub_1001183E4();
    sub_1001071F4(v53, v54);
    v55 = sub_1001183E4();
    sub_100116F0C(v55, v56);
    v57 = sub_100118508();
    sub_100116F0C(v57, v58);
  }

LABEL_39:
  sub_1000027F8();
}

void sub_10010A3AC()
{
  sub_100004868();
  v2 = sub_100099DF4(&qword_1002DD078, &unk_100236CA8);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_1000051B0();
  sub_100002810();
  v6 = sub_100116C24();
  sub_10000EE2C(&type metadata for TSDataSyncDatasetGroupState.CodingKeys, v7, v6);
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_100002898();
  sub_100111ED0(v8);
  sub_10000F3D0();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TSDataSyncDatasetGroupState(0);
    sub_100099DF4(&qword_1002DD050, &qword_100236C98);
    sub_100116D88();
    sub_10000F3D0();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v9);
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100116E44(&unk_1002DD090);
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100116EB8();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  sub_100003550();
  sub_100005074();
}

void sub_10010A6B0()
{
  sub_100004168();
  sub_100002834();
  v4 = type metadata accessor for Date();
  sub_100003724();
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v10 = sub_1000030B8(v9);
  __chkstk_darwin(v10);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v11);
  sub_10000A850();
  sub_1001113D4(v0);
  v12 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100116780(v0, *(v1 + v12[5]));
  sub_1001185C4();
  sub_10003D1E4();
  sub_10000B3A0(v3, 1, v4);
  if (v13)
  {
    sub_100008C3C();
  }

  else
  {
    v14 = sub_100013D98();
    v15(v14);
    sub_100005C20();
    sub_100004AF4();
    v17 = sub_100111ED0(v16);
    sub_100004218(v17);
    v18 = sub_100007B1C();
    v19(v18);
  }

  sub_10003D1E4();
  sub_10000B3A0(v2, 1, v4);
  if (v13)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100118914();
    v20(v8, v2, v4);
    sub_100005C20();
    sub_100004AF4();
    v22 = sub_100111ED0(v21);
    sub_100004218(v22);
    v23 = sub_100007B1C();
    v24(v23);
  }

  sub_100114920(v0, *(v1 + v12[8]));
  sub_100114920(v0, *(v1 + v12[9]));
  v25 = (v1 + v12[10]);
  v26 = v25[1];
  if (v26 == 1)
  {
    sub_100008C3C();
  }

  else
  {
    v28 = v25[2];
    v27 = v25[3];
    sub_100005C20();
    v29 = sub_1001187F4();
    sub_10010B2A4(v29, v30, v26, v28, v27);
  }

  sub_1000027F8();
}

void sub_10010A954()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v4 = sub_1000030B8(v3);
  __chkstk_darwin(v4);
  sub_10000308C();
  __chkstk_darwin(v5);
  sub_100118770();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_10000307C();
  __chkstk_darwin(v6);
  sub_10000306C();
  sub_1000051B0();
  sub_100099DF4(&qword_1002DD040, &qword_100236C90);
  sub_100003724();
  v16 = v7;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100002970();
  v17 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_1000030E4();
  v18 = v10;
  sub_10000C4FC(v2, v2[3]);
  sub_100116C24();
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v19) = 0;
    sub_100002898();
    sub_100111ED0(v11);
    sub_1001185C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100116B20();
    sub_100099DF4(&qword_1002DD050, &qword_100236C98);
    sub_100116C78();
    sub_1001188BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v18 + v17[5]) = v19;
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v12);
    sub_100118750();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    LOBYTE(v19) = 3;
    sub_100118750();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100116E44(&unk_1002DD068);
    sub_1001188BC();
    sub_100118750();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v18 + v17[8]) = v19;
    sub_1001188BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v18 + v17[9]) = v19;
    sub_100116D34();
    sub_1001188BC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = sub_10003CD30();
    v14(v13, v16);
    v15 = (v18 + v17[10]);
    *v15 = v19;
    v15[1] = v20;
    sub_100116BCC();
    sub_100004118(v2);
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_10010AFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002725F0 == a2)
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

unint64_t sub_10010B080(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_10010B0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

void sub_10010B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v24 = sub_100099DF4(&qword_1002DD0B8, &qword_100236CC8);
  sub_100003724();
  v26 = v25;
  sub_100003774();
  __chkstk_darwin(v27);
  sub_100004880();
  v28 = sub_1000E5AA8();
  sub_10000C4FC(v28, v29);
  sub_100116F54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v22)
  {
    sub_10000355C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v26 + 8))(v23, v24);
  sub_100005074();
}

void sub_10010B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    Hasher._combine(_:)(0);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  sub_100007198();

  String.hash(into:)();
}

Swift::Int sub_10010B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005BE8();
  sub_100118864();
  sub_10010B2A4(v6, v7, v8, a3, a4);
  return Hasher._finalize()();
}

void sub_10010B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v24 = v23;
  sub_100099DF4(&qword_1002DD0A8, &qword_100236CC0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v25);
  sub_100004880();
  sub_1000075BC(v24);
  sub_100116F54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = sub_100002960();
    v27(v26);
  }

  sub_100004118(v24);
  sub_100005074();
}

uint64_t sub_10010B540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E795361746164 && a2 == 0xED00006E656B6F54;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000100273790 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001002737B0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100273990 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x636E79537473616CLL && a2 == 0xEF4449746E657645;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001002739B0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001002739D0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4465726F4D736168 && a2 == 0xEB00000000617461;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x546465726564726FLL && a2 == 0xEF73726567676972;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
          }
        }
      }
    }
  }
}

unint64_t sub_10010BA80(char a1)
{
  result = 0x636E795361746164;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x69746E6564657263;
      break;
    case 4:
      result = 0x4274736575716572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x636E79537473616CLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x7465736572;
      break;
    case 13:
      result = 0x4465726F4D736168;
      break;
    case 14:
      result = 0x73616D65686373;
      break;
    case 15:
      result = 0x546465726564726FLL;
      break;
    case 16:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10010BC9C()
{
  sub_100004168();
  v5 = v4;
  v7 = v6;
  v103 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1001189B8();
  v9 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v96[-v11];
  v102 = sub_100099DF4(&qword_1002DD0A0, &qword_100236CB8);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = &v96[-v14];
  type metadata accessor for Date();
  sub_100003724();
  v107 = v17;
  v108 = v16;
  __chkstk_darwin(v16);
  sub_1000030E4();
  v106 = v18;
  v19 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v20 = sub_1000030B8(v19);
  __chkstk_darwin(v20);
  sub_10000308C();
  v104 = v21 - v22;
  sub_100005238();
  __chkstk_darwin(v23);
  sub_10011845C();
  __chkstk_darwin(v24);
  sub_10000A850();
  v25 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v26);
  sub_10000308C();
  v105 = v27 - v28;
  sub_100005238();
  __chkstk_darwin(v29);
  sub_1000035D4();
  __chkstk_darwin(v30);
  sub_10011853C();
  v31 = *v7 == *v5 && v7[1] == v5[1];
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_97;
  }

  v32 = v7[3];
  v33 = v5[3];
  if (!v32)
  {
    if (v33)
    {
      goto LABEL_97;
    }

LABEL_15:
    v35 = v7[4] == v5[4] && v7[5] == v5[5];
    if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_97;
    }

    v36 = v7[7];
    v37 = v5[7];
    if (v36)
    {
      if (!v37)
      {
        goto LABEL_97;
      }

      v38 = v7[6] == v5[6] && v36 == v37;
      if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (v37)
    {
      goto LABEL_97;
    }

    v99 = v12;
    v100 = v15;
    v98 = v0;
    v101 = type metadata accessor for TSDataSyncDatasetState(0);
    v39 = *(v25 + 48);
    sub_10003D1E4();
    v40 = v39;
    sub_10003D1E4();
    v41 = v108;
    sub_10000B3A0(v3, 1, v108);
    if (v31)
    {
      sub_1001183F8(v3 + v39);
      if (v31)
      {
        sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
        goto LABEL_40;
      }
    }

    else
    {
      sub_10003D1E4();
      sub_1001183F8(v3 + v39);
      if (!v42)
      {
        v47 = v107;
        (*(v107 + 32))(v106, v3 + v40, v41);
        sub_100004AF4();
        sub_100111ED0(v48);
        v97 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v47 + 8);
        v49(v106, v41);
        v49(v2, v41);
        sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
        if ((v97 & 1) == 0)
        {
          goto LABEL_97;
        }

LABEL_40:
        v50 = v101;
        if ((static Date.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_97;
        }

        v51 = *(v25 + 48);
        sub_10003D1E4();
        sub_10003D1E4();
        v52 = v108;
        sub_10000B3A0(v1, 1, v108);
        if (v31)
        {
          sub_1001183F8(v1 + v51);
          if (v31)
          {
            sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_51;
          }
        }

        else
        {
          sub_100007B1C();
          sub_10003D1E4();
          sub_1001183F8(v1 + v51);
          if (!v53)
          {
            v57 = v106;
            v56 = v107;
            sub_100118914();
            v58(v57, v1 + v51, v52);
            sub_100004AF4();
            sub_100111ED0(v59);
            v60 = dispatch thunk of static Equatable.== infix(_:_:)();
            v61 = *(v56 + 8);
            v62 = v57;
            v50 = v101;
            v61(v62, v52);
            v63 = sub_100118870();
            (v61)(v63);
            sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
            if ((v60 & 1) == 0)
            {
              goto LABEL_97;
            }

LABEL_51:
            if (*(v7 + v50[11]) != *(v5 + v50[11]))
            {
              goto LABEL_97;
            }

            v64 = *(v25 + 48);
            v65 = v105;
            sub_10003D1E4();
            sub_10003D1E4();
            sub_1001183F8(v65);
            if (v31)
            {
              sub_1001183F8(v65 + v64);
              if (v31)
              {
                sub_100004E24(v65, &qword_1002DA970, &qword_1002318B0);
LABEL_62:
                sub_100118900();
                if (v76)
                {
                  if (!v74)
                  {
                    goto LABEL_97;
                  }

                  sub_10000AD74(v75);
                  v79 = v31 && v77 == v78;
                  if (!v79 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v74)
                {
                  goto LABEL_97;
                }

                v80 = v50[14];
                v81 = *(v7 + v80 + 8);
                v82 = *(v5 + v80 + 8);
                if (v81)
                {
                  if (!v82)
                  {
                    goto LABEL_97;
                  }
                }

                else
                {
                  sub_100118570();
                  if (v83)
                  {
                    goto LABEL_97;
                  }
                }

                sub_100118900();
                if (v86)
                {
                  if (!v84)
                  {
                    goto LABEL_97;
                  }

                  sub_10000AD74(v85);
                  v89 = v31 && v87 == v88;
                  if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v84)
                {
                  goto LABEL_97;
                }

                if (*(v7 + v50[16]) != *(v5 + v50[16]))
                {
                  goto LABEL_97;
                }

                if (*(v7 + v50[17]) != *(v5 + v50[17]))
                {
                  goto LABEL_97;
                }

                sub_10011209C(*(v7 + *(v101 + 72)), *(v5 + *(v101 + 72)));
                if ((v90 & 1) == 0 || (sub_100142CA4(*(v7 + *(v101 + 76)), *(v5 + *(v101 + 76))) & 1) == 0)
                {
                  goto LABEL_97;
                }

                v91 = *(v102 + 48);
                v92 = v100;
                sub_10000F3D0();
                sub_10003D1E4();
                sub_10000F3D0();
                sub_10003D1E4();
                sub_10000B3A0(v92, 1, v103);
                if (v31)
                {
                  sub_10000B3A0(&v100[v91], 1, v103);
                  if (v31)
                  {
                    sub_100004E24(v100, &qword_1002DCC10, &unk_100238220);
                    goto LABEL_97;
                  }
                }

                else
                {
                  v93 = v100;
                  sub_10003D1E4();
                  sub_10000B3A0(v93 + v91, 1, v103);
                  if (!v94)
                  {
                    sub_1001184D4();
                    v95 = v100;
                    sub_100116B20();
                    sub_10003CF90();
                    sub_10010E020();
                    sub_100116B78();
                    sub_100116B78();
                    sub_100004E24(v95, &qword_1002DCC10, &unk_100238220);
                    goto LABEL_97;
                  }

                  sub_10000CFFC();
                  sub_100116B78();
                }

                v44 = &qword_1002DD0A0;
                v45 = &qword_100236CB8;
                v46 = v100;
LABEL_38:
                sub_100004E24(v46, v44, v45);
                goto LABEL_97;
              }
            }

            else
            {
              v66 = v104;
              sub_10003D1E4();
              sub_1001183F8(v65 + v64);
              if (!v67)
              {
                v69 = v107;
                (*(v107 + 32))(v106, v65 + v64, v52);
                sub_100004AF4();
                sub_100111ED0(v70);
                sub_100007B1C();
                v71 = dispatch thunk of static Equatable.== infix(_:_:)();
                v72 = *(v69 + 8);
                v73 = sub_100118870();
                v72(v73);
                (v72)(v66, v52);
                sub_100004E24(v65, &qword_1002DA970, &qword_1002318B0);
                if ((v71 & 1) == 0)
                {
                  goto LABEL_97;
                }

                goto LABEL_62;
              }

              sub_100118858();
              v68(v66, v52);
            }

            v44 = &qword_1002DACF0;
            v45 = &qword_100232140;
            v46 = v65;
            goto LABEL_38;
          }

          sub_100118858();
          v54 = sub_100118870();
          v55(v54);
        }

        v44 = &qword_1002DACF0;
        v45 = &qword_100232140;
        v46 = v1;
        goto LABEL_38;
      }

      sub_100118858();
      v43(v2, v41);
    }

    v44 = &qword_1002DACF0;
    v45 = &qword_100232140;
    v46 = v3;
    goto LABEL_38;
  }

  if (v33)
  {
    v34 = v7[2] == v5[2] && v32 == v33;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_97:
  sub_1000027F8();
}

void sub_10010C69C()
{
  sub_100004868();
  sub_100099DF4(&qword_1002DD0E8, &qword_100236CE8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002970();
  sub_100002810();
  v2 = sub_100116FA8();
  sub_10000EE2C(&type metadata for TSDataSyncDatasetState.CodingKeys, v3, v2);
  sub_10000EE1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000052E8(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000052E8(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000052E8(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v4 = type metadata accessor for TSDataSyncDatasetState(0);
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v5);
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100004598();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1001183CC(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000052E8(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(*(v4 + 56));
    sub_1000052E8(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000052E8(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001183CC(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1001183CC(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    sub_100116FFC(&qword_1002DBFA8);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DD0D0, &qword_100236CE0);
    sub_100117064(&unk_1002DD0F0);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100004070();
    sub_100111ED0(v6);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v7 = sub_100118790();
  v8(v7);
  sub_100005074();
}

void sub_10010CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v84 = v21;
  v26 = v25;
  v80 = v27;
  v28 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v28);
  sub_100003774();
  __chkstk_darwin(v29);
  v77[1] = v77 - v30;
  type metadata accessor for Date();
  sub_100003724();
  v78 = v32;
  v79 = v31;
  __chkstk_darwin(v31);
  sub_10000306C();
  sub_1001189B8();
  v33 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v34 = sub_1000030B8(v33);
  __chkstk_darwin(v34);
  sub_10000308C();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  sub_10011845C();
  __chkstk_darwin(v39);
  sub_10011853C();
  v82 = sub_100099DF4(&qword_1002DD0C0, &unk_100236CD0);
  sub_100003724();
  v41 = v40;
  sub_100003774();
  __chkstk_darwin(v42);
  sub_100002970();
  v86 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000307C();
  __chkstk_darwin(v43);
  sub_1000030E4();
  v85 = v44;
  v45 = v26[4];
  v83 = v26;
  sub_1000075BC(v26);
  sub_100116FA8();
  v81 = v23;
  sub_1001185EC();
  v46 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
    v84 = v46;
    v48 = 0;
    sub_1001187DC();
    v49 = 0;
    sub_10000AFE0();
  }

  else
  {
    v45 = v20;
    v22 = v37;
    LODWORD(v26) = v81;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v85;
    *v85 = v47;
    v52[1] = v53;
    sub_1001184EC(1);
    v52[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52[3] = v54;
    sub_1001184EC(2);
    v52[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v52[5] = v55;
    sub_1001184EC(3);
    v52[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52[7] = v56;
    sub_100004AF4();
    v58 = sub_100111ED0(v57);
    v77[0] = v24;
    v84 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    v59 = v84;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v86;
    (*(v78 + 32))(v52 + v86[9], v45, v79);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LODWORD(v45) = v59;
    v49 = v60;
    sub_100012D44();
    sub_1001184EC(7);
    v48 = v82;
    *(v85 + v60[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(a10) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v84 = 0;
    sub_100012D44();
    sub_1001184EC(9);
    v61 = v84;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v61;
    if (!v61)
    {
      v66 = (v85 + v86[13]);
      *v66 = v62;
      v66[1] = v63;
      sub_100118434(10);
      v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v84 = 0;
      sub_100118584(v67, v68, v85 + v86[14]);
      sub_100118434(11);
      v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v84 = 0;
      v70 = (v85 + v86[15]);
      *v70 = v69;
      v70[1] = v71;
      sub_100118434(12);
      v72 = KeyedDecodingContainer.decode(_:forKey:)();
      v84 = 0;
      *(v85 + v86[16]) = v72 & 1;
      sub_100118434(13);
      v73 = KeyedDecodingContainer.decode(_:forKey:)();
      v84 = 0;
      *(v85 + v86[17]) = v73 & 1;
      sub_100099DF4(&qword_1002DBF90, &qword_100233528);
      v87 = 14;
      sub_100116FFC(&qword_1002DBF98);
      sub_1001185A4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v84 = 0;
      *(v85 + v86[18]) = a10;
      sub_100099DF4(&qword_1002DD0D0, &qword_100236CE0);
      v87 = 15;
      sub_100117064(&unk_1002DD0D8);
      sub_1001185A4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v84 = 0;
      *(v85 + v86[19]) = a10;
      type metadata accessor for TSDataSyncDatasetMetricsFields(0);
      sub_100004070();
      sub_100111ED0(v74);
      sub_1001185A4();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v84 = 0;
      v75 = sub_100118610();
      v76(v75);
      sub_100012D44();
      sub_100116BCC();
      sub_100004118(v83);
      sub_100116B78();
      goto LABEL_22;
    }

    v64 = sub_100118610();
    v65(v64);
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    sub_10000AAF8();
    sub_100118448();
  }

  v50 = v85;
  sub_100004118(v83);
  if (v48)
  {
  }

  if (!v22)
  {
    if (!v26)
    {
      goto LABEL_16;
    }

LABEL_7:

    v51 = v86;
    if (v49)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (!v41)
    {
      goto LABEL_18;
    }

LABEL_9:
    (*(v78 + 8))(v50 + v51[9], v79);
    if (v45)
    {
      goto LABEL_19;
    }

LABEL_10:
    if (!v80)
    {
      goto LABEL_20;
    }

LABEL_11:
    sub_100004E24(v50 + v51[12], &qword_1002DA970, &qword_1002318B0);
    if (v81)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    goto LABEL_7;
  }

LABEL_16:
  v51 = v86;
  if (!v49)
  {
    goto LABEL_8;
  }

LABEL_17:
  sub_100004E24(v50 + v51[8], &qword_1002DA970, &qword_1002318B0);
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_18:
  if (!v45)
  {
    goto LABEL_10;
  }

LABEL_19:
  sub_100004E24(v50 + v51[10], &qword_1002DA970, &qword_1002318B0);
  if (v80)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (v81)
  {
LABEL_21:

    if ((v82 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (v82)
  {
LABEL_13:
  }

LABEL_22:
  sub_100005074();
}

uint64_t sub_10010DA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5674657361746164 && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001002725F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001002739F0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x8000000100273A10 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465766965636572 && a2 == 0xEE00616D65686353;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100273A30 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x8000000100273A50 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x5274657361746164 && a2 == 0xEF746E756F43776FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x8000000100273A70 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x617275446C6C7570 && a2 == 0xEC0000006E6F6974)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

unint64_t sub_10010DE64(char a1)
{
  result = 0x5674657361746164;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x646F43726F727265;
      break;
    case 3:
      result = 0x6D6F44726F727265;
      break;
    case 4:
      result = 0x746544726F727265;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6465766965636572;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x5274657361746164;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x617275446C6C7570;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10010E020()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  sub_1000051B0();
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v12 = sub_1000030B8(v11);
  __chkstk_darwin(v12);
  sub_10000BA50();
  __chkstk_darwin(v13);
  sub_10011853C();
  v14 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v15);
  sub_10000308C();
  sub_1000035D4();
  __chkstk_darwin(v16);
  sub_10011852C();
  v17 = *(v6 + 8);
  v18 = *(v4 + 8);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_62;
    }

    v19 = *v6 == *v4 && v17 == v18;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v18)
  {
    goto LABEL_62;
  }

  v20 = *(v6 + 24);
  v21 = *(v4 + 24);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_62;
    }

    v22 = *(v6 + 16) == *(v4 + 16) && v20 == v21;
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v21)
  {
    goto LABEL_62;
  }

  v23 = *(v4 + 40);
  if (*(v6 + 40))
  {
    if (!*(v4 + 40))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (*(v6 + 32) != *(v4 + 32))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_62;
    }
  }

  v24 = *(v6 + 56);
  v25 = *(v4 + 56);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_62;
    }

    v26 = *(v6 + 48) == *(v4 + 48) && v24 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v25)
  {
    goto LABEL_62;
  }

  v27 = *(v6 + 72);
  v28 = *(v4 + 72);
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_62;
    }

    v29 = *(v6 + 64) == *(v4 + 64) && v27 == v28;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v28)
  {
    goto LABEL_62;
  }

  v30 = *(v6 + 88);
  v31 = *(v4 + 88);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_62;
    }

    v32 = *(v6 + 80) == *(v4 + 80) && v30 == v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v31)
  {
    goto LABEL_62;
  }

  v66 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v67 = *(v14 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v19)
  {
    sub_1000071D8(v2 + v67);
    if (v19)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_64;
    }

LABEL_60:
    v36 = v2;
LABEL_61:
    sub_100004E24(v36, &qword_1002DACF0, &qword_100232140);
    goto LABEL_62;
  }

  sub_10003D1E4();
  sub_1000071D8(v2 + v67);
  if (v33)
  {
    v34 = sub_10011887C();
    v35(v34);
    goto LABEL_60;
  }

  sub_100118914();
  v37 = sub_1000035AC();
  v38(v37);
  sub_100004AF4();
  v40 = sub_100111ED0(v39);
  v65 = sub_1000AC3D8(v40);
  v68 = *(v9 + 8);
  v68(v0, v7);
  v41 = sub_10011887C();
  (v68)(v41);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v42 = *(v66 + 44);
  v43 = *(v6 + v42);
  v44 = *(v4 + v42);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_62;
    }
  }

  else if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
  {
    goto LABEL_62;
  }

  v45 = *(v66 + 48);
  v46 = *(v6 + v45);
  v47 = *(v4 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_62;
    }
  }

  else if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
  {
    goto LABEL_62;
  }

  v48 = *(v14 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v1);
  if (!v19)
  {
    sub_10000B80C();
    sub_10003D1E4();
    sub_1000071D8(v1 + v48);
    if (!v49)
    {
      sub_100118914();
      v52 = sub_1000035AC();
      v53(v52);
      sub_100004AF4();
      sub_100111ED0(v54);
      sub_100005CF0();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v9 + 8);
      v56(v0, v7);
      v57 = sub_1000B31F0();
      (v56)(v57);
      sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_84;
    }

    v50 = sub_1000B31F0();
    v51(v50);
    goto LABEL_82;
  }

  sub_1000071D8(v1 + v48);
  if (!v19)
  {
LABEL_82:
    v36 = v1;
    goto LABEL_61;
  }

  sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
LABEL_84:
  sub_10003CF48();
  if (v59)
  {
    if (!v58)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_100118570();
    if (v60)
    {
      goto LABEL_62;
    }
  }

  sub_10003CF48();
  if (v62)
  {
    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_100118570();
    if (v63)
    {
      goto LABEL_62;
    }
  }

  sub_10003CF48();
  if ((v64 & 1) == 0)
  {
    sub_10003CF28();
  }

LABEL_62:
  sub_1000027F8();
}

void sub_10010E654()
{
  sub_100004868();
  sub_100099DF4(&qword_1002DD128, &qword_100236D08);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002970();
  sub_100002810();
  v2 = sub_100117140();
  sub_10000EE2C(&type metadata for TSDataSyncDatasetMetricsFields.CodingKeys, v3, v2);
  sub_10000EE1C();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v4 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v5);
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1001183CC(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118418();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100118560(v4[14]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(v4[15]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(v4[16]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v6 = sub_100118790();
  v7(v6);
  sub_100005074();
}

void sub_10010E91C()
{
  sub_100004168();
  sub_100002834();
  v3 = type metadata accessor for Date();
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000306C();
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v6 = sub_1000030B8(v5);
  __chkstk_darwin(v6);
  sub_10000BA50();
  __chkstk_darwin(v7);
  sub_10000A850();
  if (*(v0 + 8))
  {
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (*(v0 + 24))
  {
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (*(v0 + 40) == 1)
  {
    sub_100008C3C();
  }

  else
  {
    v8 = *(v0 + 32);
    sub_100005C20();
    Hasher._combine(_:)(v8);
  }

  if (*(v0 + 56))
  {
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (*(v0 + 72))
  {
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (*(v0 + 88))
  {
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  v9 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10003D1E4();
  sub_10000B3A0(v2, 1, v3);
  if (v10)
  {
    sub_100008C3C();
  }

  else
  {
    v11 = sub_100013D98();
    v12(v11);
    sub_100005C20();
    sub_100004AF4();
    v14 = sub_100111ED0(v13);
    sub_100004218(v14);
    v15 = sub_100007B1C();
    v16(v15);
  }

  v17 = *(v0 + *(v9 + 44));
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    sub_100005C20();
    v18 = v17 & 1;
  }

  Hasher._combine(_:)(v18);
  v19 = *(v0 + *(v9 + 48));
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    sub_100005C20();
    v20 = v19 & 1;
  }

  Hasher._combine(_:)(v20);
  sub_10003D1E4();
  sub_10000B3A0(v1, 1, v3);
  if (v10)
  {
    sub_100008C3C();
  }

  else
  {
    v21 = sub_10000B80C();
    v22(v21);
    sub_100005C20();
    sub_100004AF4();
    v24 = sub_100111ED0(v23);
    sub_100004218(v24);
    v25 = sub_100007B1C();
    v26(v25);
  }

  sub_10000A840();
  if (v10)
  {
    sub_100008C3C();
  }

  else
  {
    v28 = *v27;
    sub_100005C20();
    Hasher._combine(_:)(v28);
  }

  sub_10000A840();
  if (v10)
  {
    sub_100008C3C();
  }

  else
  {
    v30 = *v29;
    sub_100005C20();
    Hasher._combine(_:)(v30);
  }

  sub_10000A840();
  if (v10)
  {
    sub_100008C3C();
  }

  else
  {
    v32 = *v31;
    sub_100005C20();
    if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    Hasher._combine(_:)(v33);
  }

  sub_1000027F8();
}

void sub_10010ECAC()
{
  sub_100004868();
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v6 = sub_1000030B8(v5);
  __chkstk_darwin(v6);
  sub_10000308C();
  __chkstk_darwin(v7);
  sub_10011852C();
  v30 = sub_100099DF4(&qword_1002DD118, &qword_100236D00);
  sub_100003724();
  v9 = v8;
  sub_100003774();
  __chkstk_darwin(v10);
  v11 = sub_10011854C();
  v33 = type metadata accessor for TSDataSyncDatasetMetricsFields(v11);
  sub_10000307C();
  __chkstk_darwin(v12);
  sub_1000030E4();
  v31 = v4;
  v32 = v13;
  v14 = v4[4];
  sub_10000C4FC(v4, v4[3]);
  sub_100117140();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100118604();
    sub_100004118(v4);
    if (v14)
    {

      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_100014024();
    *v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 8) = v15;
    sub_10000355C();
    sub_100014024();
    *(v32 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 24) = v16;
    sub_100014024();
    *(v32 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 40) = v17 & 1;
    sub_100014024();
    *(v32 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 56) = v18;
    sub_100014024();
    *(v32 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 72) = v19;
    sub_100014024();
    *(v32 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 88) = v20;
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v21);
    sub_100004FBC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    sub_1001184EC(7);
    sub_100014024();
    *(v32 + v33[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100014024();
    *(v32 + v33[12]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FBC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    sub_100004FBC();
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v22, v23, v32 + v33[14]);
    sub_100004FBC();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v24, v25, v32 + v33[15]);
    sub_100004FBC();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    (*(v9 + 8))(v1, v30);
    v29 = v32 + v33[16];
    *v29 = v26;
    *(v29 + 8) = v28 & 1;
    sub_100116BCC();
    sub_100004118(v31);
    sub_10000CFFC();
    sub_100116B78();
  }

LABEL_9:
  sub_100003550();
  sub_100005074();
}

uint64_t sub_10010F300(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65447265746661 && a2 == 0xEA00000000007961;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7869666675536469 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10010F4A0(char a1)
{
  result = 29793;
  switch(a1)
  {
    case 1:
      result = 0x72656767697274;
      break;
    case 2:
      result = 0x6C65447265746661;
      break;
    case 3:
      result = 0x7869666675536469;
      break;
    case 4:
      result = 0x4449746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010F534()
{
  sub_100002FBC();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for TSDataSyncTriggerEvent(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v1 + v4 + 8);
  v6 = *(v0 + v4 + 8);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    sub_10003CF28();
    if (v7)
    {
      return 0;
    }
  }

  v8 = *(v3 + 28);
  v9 = *(v0 + v8 + 8);
  if (!*(v1 + v8 + 8))
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_10000AD74(v1 + v8);
  v12 = v12 && v10 == v11;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v13 = *(v3 + 32);
  v14 = *(v1 + v13);
  v15 = *(v1 + v13 + 8);
  v16 = (v0 + v13);
  if (v14 == *v16 && v15 == v16[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10010F634()
{
  v2 = sub_100099DF4(&qword_1002DD110, &qword_100236CF8);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_1000051B0();
  sub_100002810();
  v6 = sub_1001170EC();
  sub_10000EE2C(&type metadata for TSDataSyncTriggerEvent.CodingKeys, v7, v6);
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v8);
  sub_1001189AC();
  sub_10000F3D0();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TSDataSyncTriggerEvent(0);
    sub_100008AD0();
    sub_1000F72DC();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100118988();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10011889C();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10011897C();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_10010F824()
{
  sub_100002834();
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v1);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for TSDataSyncTriggerEvent(0);
  Hasher._combine(_:)(*(v0 + *(v2 + 20)));
  sub_10000A840();
  if (v4)
  {
    sub_100008C3C();
  }

  else
  {
    v5 = *v3;
    sub_100005C20();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  if (*(v0 + *(v2 + 28) + 8))
  {
    sub_100005C20();
    sub_1001187F4();
    String.hash(into:)();
  }

  else
  {
    sub_100008C3C();
  }

  sub_100118844();

  return String.hash(into:)();
}

void sub_10010F914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100004868();
  v23 = v22;
  type metadata accessor for Date();
  sub_100003724();
  __chkstk_darwin(v24);
  sub_1000030E4();
  sub_1001189A0(v25);
  sub_100099DF4(&qword_1002DD100, &qword_100236CF0);
  sub_100003724();
  v44 = v27;
  v45 = v26;
  sub_100003774();
  __chkstk_darwin(v28);
  v29 = sub_10011854C();
  v30 = type metadata accessor for TSDataSyncTriggerEvent(v29);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_10000306C();
  sub_1001189B8();
  sub_1000075BC(v23);
  sub_1001170EC();
  v46 = v21;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100004118(v23);
  }

  else
  {
    sub_100004AF4();
    sub_100111ED0(v32);
    sub_1001189AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = sub_100002CC0();
    v34(v33);
    sub_100008AD0();
    sub_1000F71DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v19 + v30[5]) = BYTE6(a10);
    sub_100118988();
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v35, v36, v19 + v30[6]);
    sub_10011889C();
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = (v19 + v30[7]);
    *v38 = v37;
    v38[1] = v39;
    sub_10011897C();
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v41;
    (*(v44 + 8))(v46, v45);
    v43 = (v19 + v30[8]);
    *v43 = v40;
    v43[1] = v42;
    sub_1000038C4();
    sub_100116BCC();
    sub_100004118(v23);
    sub_100006D34();
    sub_100116B78();
  }

  sub_100005074();
}

uint64_t sub_10010FCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4572656767697274 && a2 == 0xEC000000746E6576;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x537478654E776172 && a2 == 0xED00007441636E79;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10010FDDC(char a1)
{
  if (!a1)
  {
    return 0x4572656767697274;
  }

  if (a1 == 1)
  {
    return 0x537478654E776172;
  }

  return 0x636E79537478656ELL;
}

uint64_t sub_10010FE4C()
{
  sub_100002FBC();
  if ((sub_10010F534() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TSDataSyncCalculatedEvent(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

void sub_10010FECC()
{
  sub_100004868();
  sub_100099DF4(&qword_1002DD2C8, &unk_100237560);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002970();
  sub_100002810();
  v2 = sub_100118150();
  sub_10000EE2C(&type metadata for TSDataSyncCalculatedEvent.CodingKeys, v3, v2);
  type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_10000B828();
  sub_100111ED0(v4);
  sub_1001189AC();
  sub_10000F3D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TSDataSyncCalculatedEvent(0);
    sub_10000355C();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v5);
    sub_10000F028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000F028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_100118790();
  v7(v6);
  sub_100005074();
}

uint64_t sub_10011007C()
{
  sub_10010F824();
  type metadata accessor for TSDataSyncCalculatedEvent(0);
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v0);
  sub_1000028B0();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000028B0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10011011C()
{
  sub_100005BE8();
  sub_10010F824();
  type metadata accessor for TSDataSyncCalculatedEvent(0);
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v0);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001101D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  v27 = v26;
  v51[1] = v28;
  v55 = type metadata accessor for Date();
  sub_100003724();
  v53 = v29;
  __chkstk_darwin(v30);
  sub_10000308C();
  v52 = (v31 - v32);
  sub_100005238();
  __chkstk_darwin(v33);
  v35 = v51 - v34;
  type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_10000307C();
  __chkstk_darwin(v36);
  sub_1000030E4();
  sub_1001189A0(v37);
  v57 = sub_100099DF4(&qword_1002DD2B8, &qword_100237558);
  sub_100003724();
  v54 = v38;
  sub_100003774();
  __chkstk_darwin(v39);
  sub_100002970();
  v40 = type metadata accessor for TSDataSyncCalculatedEvent(0);
  sub_10000307C();
  __chkstk_darwin(v41);
  sub_10000306C();
  v44 = v43 - v42;
  sub_1000075BC(v27);
  sub_100118150();
  v58 = v25;
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v27);
  }

  else
  {
    v51[0] = v40;
    v59 = v44;
    v45 = v54;
    v46 = v55;
    sub_10000B828();
    sub_100111ED0(v47);
    sub_1001189AC();
    sub_100118824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100007C18();
    sub_100116B20();
    sub_10000355C();
    sub_100004AF4();
    sub_100111ED0(v48);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v59 + *(v51[0] + 20);
    v56 = *(v53 + 32);
    v56(v49, v35, v46);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v59;
    (*(v45 + 8))(v58, v57);
    v56(v50 + *(v51[0] + 24), v52, v46);
    sub_100116BCC();
    sub_100004118(v27);
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_100110628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100109AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110650(uint64_t a1)
{
  v2 = sub_100116C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011068C(uint64_t a1)
{
  v2 = sub_100116C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010AFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110774(uint64_t a1)
{
  v2 = sub_100116F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001107B0(uint64_t a1)
{
  v2 = sub_100116F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100110804(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  sub_10010B2A4(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

uint64_t sub_1001108D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010B540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001108FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10010BA78();
  *a1 = result;
  return result;
}

uint64_t sub_100110924(uint64_t a1)
{
  v2 = sub_100116FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110960(uint64_t a1)
{
  v2 = sub_100116FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010DA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110A48(uint64_t a1)
{
  v2 = sub_100117140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110A84(uint64_t a1)
{
  v2 = sub_100117140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010F300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110B6C(uint64_t a1)
{
  v2 = sub_1001170EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110BA8(uint64_t a1)
{
  v2 = sub_1001170EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010FCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110C90(uint64_t a1)
{
  v2 = sub_100118150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110CCC(uint64_t a1)
{
  v2 = sub_100118150();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100110D10(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10010F824();
  type metadata accessor for Date();
  sub_100111ED0(&qword_1002DAC90);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100110E0C()
{
  v12 = *v0;

  sub_1001186A4();
  sub_100002700();
  v5 = 0x444972657375;
  if (!v6)
  {
    v5 = 0x4449746E65696C63;
    v4 = 0xE800000000000000;
  }

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v2;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  sub_1001186A4();
  String.append(_:)(*(v0 + 3));
  sub_1001186A4();
  String.append(_:)(*(v0 + 5));
  sub_1001186A4();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v10._countAndFlagsBits = AccountIdentity.altDSID.getter();
  String.append(_:)(v10);

  return v12;
}

uint64_t sub_100110EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F536469 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F446469 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100111098(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x656372756F536469;
      break;
    case 2:
      result = 0x6E69616D6F446469;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x49746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100111138()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);

  return static AccountIdentity.== infix(_:_:)();
}

uint64_t sub_100111200()
{
  v2 = sub_100099DF4(&qword_1002DD158, &qword_100236D28);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_1000051B0();
  sub_100002810();
  v6 = sub_1001171E8();
  sub_10000EE2C(&type metadata for TSDataSyncDatasetGroupIdentifier.CodingKeys, v7, v6);
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100008AD0();
    sub_1000BA430();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100118988();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10011889C();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_10011897C();
    type metadata accessor for AccountIdentity();
    sub_100008DA8();
    sub_100111ED0(v8);
    sub_10000F3D0();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_1001113D4(uint64_t a1)
{
  String.hash(into:)();
  sub_100002700();
  String.hash(into:)();

  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  type metadata accessor for AccountIdentity();
  sub_100008DA8();
  sub_100111ED0(v1);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001114BC(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1001114FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100004868();
  v22 = v21;
  v23 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v38 = v24;
  __chkstk_darwin(v25);
  sub_10000306C();
  sub_1001189B8();
  sub_100099DF4(&qword_1002DD148, &qword_100236D20);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100002970();
  v27 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_10000307C();
  __chkstk_darwin(v28);
  sub_10000306C();
  v31 = v30 - v29;
  sub_1000075BC(v22);
  sub_1001171E8();
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100004118(v22);
  }

  else
  {
    sub_100118824();
    *v31 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 8) = v32;
    sub_100008AD0();
    sub_1000BA3DC();
    sub_100118824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v31 + 16) = BYTE6(a10);
    sub_100118988();
    sub_100118824();
    *(v31 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 32) = v33;
    sub_10011889C();
    sub_100118824();
    *(v31 + 40) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 48) = v34;
    sub_10011897C();
    sub_100008DA8();
    sub_100111ED0(v35);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = sub_100008C9C();
    v37(v36);
    (*(v38 + 32))(v31 + *(v27 + 32), v19, v23);
    sub_1001184BC();
    sub_100116BCC();
    sub_100004118(v22);
    sub_100002E78();
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_1001118B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100111938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_100099DF4(&qword_1002DD140, &qword_100236D18);
  sub_100003724();
  v26 = v25;
  sub_100003774();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  sub_10000C4FC(v23, v23[3]);
  sub_100117194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007B1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v26 + 8))(v29, v24);
  sub_100005074();
}

uint64_t sub_100111A54(void *a1)
{
  sub_100099DF4(&qword_1002DD130, &qword_100236D10);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100004880();
  sub_1000075BC(a1);
  sub_100117194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v4 = sub_100005CF0();
    v5(v4);
  }

  sub_100004118(a1);
  return sub_10000492C();
}

Swift::Int sub_100111B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100111BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100110EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100111C04(uint64_t a1)
{
  v2 = sub_1001171E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100111C40(uint64_t a1)
{
  v2 = sub_1001171E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100111CF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100111D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001118B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100111DB4(uint64_t a1)
{
  v2 = sub_100117194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100111DF0(uint64_t a1)
{
  v2 = sub_100117194();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100111E2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100111A54(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100111ED0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100111FA8()
{
  result = qword_1002DD028;
  if (!qword_1002DD028)
  {
    result = swift_getWitnessTable(a5_9, &type metadata for TSDataSyncDatasetGroupMetricsFields, v0, v1);
    atomic_store(result, &qword_1002DD028);
  }

  return result;
}

unint64_t sub_100112048()
{
  result = qword_1002DD038;
  if (!qword_1002DD038)
  {
    result = swift_getWitnessTable("Ո\a", &type metadata for TSDataSyncDatasetIdentifier, v0, v1);
    atomic_store(result, &qword_1002DD038);
  }

  return result;
}

void sub_10011209C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100005CFC();
    if (v15)
    {
      v4 = 0;
      v5 = v3 + 64;
      sub_100007FC0();
      sub_1001185F8();
      v8 = v7 >> 6;
      while (v6)
      {
        sub_10000C63C();
LABEL_12:
        sub_10011861C();

        v10 = sub_10000B80C();
        sub_10014EB30(v10, v11);
        v13 = v12;

        if ((v13 & 1) == 0)
        {

          return;
        }

        sub_100118954();
        v15 = v15 && v14 == v2;
        if (v15)
        {

          sub_100118948();
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_100118948();
          if ((v16 & 1) == 0)
          {
            return;
          }
        }
      }

      v9 = v4;
      while (1)
      {
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return;
        }

        ++v9;
        if (*(v5 + 8 * v4))
        {
          sub_100118424();
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1001121D0()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000BA50();
  __chkstk_darwin(v11);
  sub_1000035D4();
  __chkstk_darwin(v12);
  sub_10000D478();
  v13 = sub_100099DF4(&qword_1002DD2D8, &unk_1002375A0);
  v14 = sub_1000030B8(v13);
  __chkstk_darwin(v14);
  sub_10000308C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10011851C();
  if (v6 != v4 && *(v6 + 16) == *(v4 + 16))
  {
    v61 = v7;
    v62 = v19;
    v20 = 0;
    v21 = v6;
    sub_1001187E8();
    sub_1000069C0();
    sub_10000D448();
    v59 = v17;
    v60 = v9;
    v57 = v6;
    v58 = v1;
    if (!v22)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_10000C63C();
      v63 = v23;
      v25 = v24 | (v20 << 6);
LABEL_9:
      v30 = (*(v6 + 48) + 16 * v25);
      v32 = *v30;
      v31 = v30[1];
      sub_1000038C4();
      sub_100116BCC();
      sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_1001188E8();
      *v59 = v32;
      v59[1] = v31;
      sub_100007C18();
      v17 = v33;
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v34, v35, v36, v9);

      v1 = v58;
LABEL_10:
      sub_100012D44();
      v37 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_10000B3A0(v62, 1, v37);
      if (v50)
      {
        break;
      }

      v38 = *v62;
      v39 = v62[1];
      sub_100007C18();
      sub_100116B20();
      sub_10014EB30(v38, v39);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        goto LABEL_37;
      }

      v9 = v60;
      sub_1000038C4();
      sub_100116BCC();
      if ((static Date.== infix(_:_:)() & 1) == 0 || *(v1 + v61[5]) != *(v0 + v61[5]))
      {
LABEL_36:
        sub_100006D34();
        sub_100116B78();
LABEL_37:
        sub_100116B78();
        break;
      }

      v42 = v61[6];
      v43 = *(v1 + v42 + 8);
      v44 = *(v0 + v42 + 8);
      if (v43)
      {
        if (!v44)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10003CF28();
        if (v45)
        {
          goto LABEL_36;
        }
      }

      v46 = v61[7];
      v47 = *(v0 + v46 + 8);
      if (*(v1 + v46 + 8))
      {
        if (!v47)
        {
          goto LABEL_36;
        }

        sub_10000AD74(v1 + v46);
        v50 = v50 && v48 == v49;
        if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v47)
      {
        goto LABEL_36;
      }

      v51 = v61[8];
      v52 = *(v1 + v51);
      v53 = *(v1 + v51 + 8);
      v54 = (v0 + v51);
      v55 = v52 == *v54 && v53 == v54[1];
      if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_36;
      }

      sub_100116B78();
      sub_100007B1C();
      sub_100116B78();
      v6 = v57;
      if (!v63)
      {
LABEL_5:
        while (1)
        {
          v26 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v26 >= v2)
          {
            v56 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
            sub_100002728(v17, 1, 1, v56);
            v63 = 0;
            goto LABEL_10;
          }

          ++v20;
          if (*(v21 + 8 * v26))
          {
            sub_10000A234();
            v63 = v27;
            v25 = v29 | (v28 << 6);
            v20 = v28;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  sub_1001188DC();
  sub_1000027F8();
}

void sub_100112600(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    sub_100005CFC();
    if (v35)
    {
      v4 = 0;
      v5 = v3 + 64;
      sub_100007FC0();
      sub_1001185F8();
      v7 = v6 >> 6;
      if (v8)
      {
        while (1)
        {
          v9 = v2;
          sub_10000C63C();
          v46 = v12;
LABEL_11:
          v16 = v11 | (v4 << 6);
          v17 = (*(v10 + 48) + 16 * v16);
          v19 = *v17;
          v18 = v17[1];
          v20 = sub_1001188C8(v16);
          v53 = v21;
          v54 = v22;
          *v55 = v23;
          *&v55[9] = v20;
          v47 = v21;
          v48 = v22;
          v25 = *&v55[8];
          v24 = v23;
          v26 = *(v20.n128_i64 + 7);
          v27 = v20.n128_u8[15];

          sub_1000BA2CC(&v53, &v50);
          if (!v18)
          {
            return;
          }

          v53 = v47;
          v54 = v48;
          *v55 = __PAIR128__(v25, v24);
          *&v55[16] = v26;
          v55[24] = v27;
          v2 = v9;
          v28 = sub_10014EB30(v19, v18);
          v30 = v29;

          if ((v30 & 1) == 0)
          {
            break;
          }

          v31 = (*(v9 + 56) + (v28 << 6));
          v33 = v31[1];
          v32 = v31[2];
          v34 = *v31;
          *&v52[9] = *(v31 + 41);
          v51 = v33;
          *v52 = v32;
          v50 = v34;
          v35 = v34 == v53 && *(&v34 + 1) == *(&v53 + 1);
          if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v36 = v51 == v54 && *(&v51 + 1) == *(&v54 + 1);
          if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v37 = 0xD000000000000013;
          v38 = 0xD000000000000013;
          v39 = "priority";
          switch(v52[0])
          {
            case 1:
              v38 = 0xD000000000000020;
              v39 = "scheduledDevicePull";
              break;
            case 2:
              v38 = 0xD000000000000020;
              v39 = "ediateDevicePull";
              break;
            case 3:
              v38 = 0xD00000000000001DLL;
              v39 = "eduledDevicePull";
              break;
            case 4:
              v38 = 0xD00000000000001DLL;
              v39 = "appTriggerImmediateDevicePull";
              break;
            default:
              break;
          }

          v40 = v39 | 0x8000000000000000;
          v41 = "priority";
          switch(v55[0])
          {
            case 1:
              v37 = 0xD000000000000020;
              v41 = "scheduledDevicePull";
              break;
            case 2:
              v37 = 0xD000000000000020;
              v41 = "ediateDevicePull";
              break;
            case 3:
              v37 = 0xD00000000000001DLL;
              v41 = "eduledDevicePull";
              break;
            case 4:
              v37 = 0xD00000000000001DLL;
              v41 = "appTriggerImmediateDevicePull";
              break;
            default:
              break;
          }

          if (v38 == v37 && v40 == (v41 | 0x8000000000000000))
          {
            sub_1000BA2CC(&v50, v49);
          }

          else
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000BA2CC(&v50, v49);

            if ((v43 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v44 = *&v52[8] == *&v55[8] && *&v52[16] == *&v55[16];
          if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_50:
            sub_1000BA304(&v53);
            v45 = &v50;
            goto LABEL_51;
          }

          sub_1000BA304(&v50);
          sub_1000BA304(&v53);
          if (v52[24] != v55[24])
          {
            return;
          }

          if (!v46)
          {
            goto LABEL_6;
          }
        }

        v45 = &v53;
LABEL_51:
        sub_1000BA304(v45);
        return;
      }

LABEL_6:
      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v7)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          v9 = v2;
          sub_100118424();
          v46 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_100112990()
{
  sub_100004168();
  if (v2 != v3 && (v4 = v3, v5 = v2, sub_100005CFC(), v6))
  {
    v7 = 0;
    sub_100007FC0();
    sub_1000062F0();
    while (v1)
    {
      sub_100118830();
LABEL_12:
      sub_1001187C0();
      v12 = *v11;
      v13 = v11[1];
      v16 = *(v15 + 8 * v14);

      v17 = sub_10014EB30(v12, v13);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(v4 + 56) + 8 * v17) != v16)
      {
        goto LABEL_14;
      }
    }

    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_14;
      }

      ++v8;
      if (*(v5 + 64 + 8 * v7))
      {
        sub_100118424();
        v1 = v10 & v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000027F8();
  }
}

void sub_100112A74()
{
  sub_100004168();
  if (v2 != v3 && (v4 = v3, v5 = v2, sub_100005CFC(), v6))
  {
    v7 = 0;
    sub_100007FC0();
    sub_1000062F0();
    while (v1)
    {
      sub_100118830();
LABEL_12:
      sub_1001187C0();
      v12 = *v11;
      v13 = v11[1];
      v16 = *(v15 + v14);

      v17 = sub_10014EB30(v12, v13);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(v4 + 56) + v17) != v16)
      {
        goto LABEL_14;
      }
    }

    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_14;
      }

      ++v8;
      if (*(v5 + 64 + 8 * v7))
      {
        sub_100118424();
        v1 = v10 & v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000027F8();
  }
}

void sub_100112B58()
{
  sub_100004168();
  v3 = v2;
  sub_100002834();
  v4 = type metadata accessor for Date();
  sub_100003724();
  v51 = v5;
  __chkstk_darwin(v6);
  sub_10000308C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_10000D478();
  v50 = v11;
  v12 = sub_100099DF4(&qword_1002DD2D0, &unk_100237590);
  v13 = sub_1000030B8(v12);
  __chkstk_darwin(v13);
  sub_10000308C();
  __chkstk_darwin(v14);
  sub_10011851C();
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_18:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v47 = v15;
    v48 = v16;
    v46 = v9;
    v17 = 0;
    v45 = v0;
    sub_1001187E8();
    v44 = v0;
    sub_1000069C0();
    sub_10000D448();
    while (v18)
    {
      sub_10000C63C();
      v49 = v19;
      v21 = v20 | (v17 << 6);
LABEL_10:
      v26 = (*(v45 + 48) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];
      (*(v51 + 16))(v50, *(v45 + 56) + *(v51 + 72) * v21, v4);
      sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_1001188E8();
      *v48 = v27;
      *(v48 + 1) = v28;
      (*(v51 + 32))(&v48[v29], v50, v4);
      sub_10000B7B0();
      sub_100002728(v30, v31, v32, &qword_1002DBC48);

LABEL_11:
      sub_100012D44();
      v33 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_1000071D8(v47);
      if (v34)
      {
        goto LABEL_18;
      }

      (*(v51 + 32))(v46, v47 + *(v33 + 48), v4);
      v35 = sub_10003CF90();
      v37 = sub_10014EB30(v35, v36);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        (*(v51 + 8))(v46, v4);
        goto LABEL_18;
      }

      (*(v51 + 16))(v50, *(v3 + 56) + *(v51 + 72) * v37, v4);
      sub_100004AF4();
      sub_100111ED0(&qword_1002E27C0);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v51 + 8);
      v42 = sub_100005CF0();
      v41(v42);
      (v41)(v46, v4);
      v18 = v49;
      if ((v40 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v22 >= v1)
      {
        v43 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
        sub_100002728(v48, 1, 1, v43);
        v49 = 0;
        goto LABEL_11;
      }

      ++v17;
      if (*(v44 + 8 * v22))
      {
        sub_10000A234();
        v49 = v23;
        v21 = v25 | (v24 << 6);
        v17 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100112F4C()
{
  sub_100004168();
  v4 = v3;
  v5 = sub_100002834();
  v6 = type metadata accessor for TSDataSyncDatasetScheduleInput(v5);
  __chkstk_darwin(v6 - 8);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v7);
  sub_100118770();
  v8 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v34 = (v10 - v11);
  sub_100005238();
  __chkstk_darwin(v12);
  sub_10011851C();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_19:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v33 = v13;
    v14 = 0;
    sub_1001187E8();
    v32 = v0;
    sub_1000069C0();
    sub_1001185F8();
    v17 = v16 >> 6;
    while (v15)
    {
      sub_10000C63C();
      v35 = v18;
      v19 = v34;
LABEL_11:
      sub_100118708();
      sub_1001183B4();
      sub_100116BCC();
      sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_1001188E8();
      *v19 = v4;
      v19[1] = v2;
      sub_100007670();
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v23, v24, v25, &qword_1002DC238);

      v4 = v33;
LABEL_12:
      sub_100012D44();
      v26 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_10000B3A0(v4, 1, v26);
      if (v27)
      {
        goto LABEL_19;
      }

      sub_100118934();
      sub_100007670();
      sub_100116B20();
      sub_10014EB30(v26, v1);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        sub_100116B78();
        goto LABEL_19;
      }

      sub_100118968();
      sub_1001183B4();
      v1 = v19;
      sub_100116BCC();
      sub_1000F1650();
      v4 = v30;
      v2 = type metadata accessor for TSDataSyncDatasetScheduleInput;
      sub_100116B78();
      sub_100002CC0();
      sub_100116B78();
      v15 = v35;
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v4 = v33;
    v19 = v34;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v31 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
        sub_100010438(v31);
        v35 = 0;
        goto LABEL_12;
      }

      ++v14;
      if (*(v32 + 8 * v20))
      {
        sub_10000A234();
        v35 = v21;
        v14 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100113274()
{
  sub_100004168();
  v4 = v3;
  v5 = sub_100002834();
  v6 = type metadata accessor for TSDataSyncDatasetSchedule(v5);
  __chkstk_darwin(v6 - 8);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v7);
  sub_100118770();
  v8 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v34 = (v10 - v11);
  sub_100005238();
  __chkstk_darwin(v12);
  sub_10011851C();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_19:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v33 = v13;
    v14 = 0;
    sub_1001187E8();
    v32 = v0;
    sub_1000069C0();
    sub_1001185F8();
    v17 = v16 >> 6;
    while (v15)
    {
      sub_10000C63C();
      v35 = v18;
      v19 = v34;
LABEL_11:
      sub_100118708();
      sub_10000B3C8();
      sub_100116BCC();
      sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_1001188E8();
      *v19 = v4;
      v19[1] = v2;
      sub_1000031BC();
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v23, v24, v25, &qword_1002DC218);

      v4 = v33;
LABEL_12:
      sub_100012D44();
      v26 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_10000B3A0(v4, 1, v26);
      if (v27)
      {
        goto LABEL_19;
      }

      sub_100118934();
      sub_1000031BC();
      sub_100116B20();
      sub_10014EB30(v26, v1);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        sub_100116B78();
        goto LABEL_19;
      }

      sub_100118968();
      sub_10000B3C8();
      v1 = v19;
      sub_100116BCC();
      sub_1000F3A30();
      v4 = v30;
      v2 = type metadata accessor for TSDataSyncDatasetSchedule;
      sub_100116B78();
      sub_100002CC0();
      sub_100116B78();
      v15 = v35;
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v4 = v33;
    v19 = v34;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v31 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
        sub_100010438(v31);
        v35 = 0;
        goto LABEL_12;
      }

      ++v14;
      if (*(v32 + 8 * v20))
      {
        sub_10000A234();
        v35 = v21;
        v14 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_10011359C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetState(0);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  __chkstk_darwin(v8 - 8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v38 = a2;
    v39 = (&v36 - v11);
    v12 = 0;
    v37 = a1;
    v13 = *(a1 + 64);
    v36 = a1 + 64;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v41 = (v16 - 1) & v16;
      v18 = __clz(__rbit64(v16)) | (v12 << 6);
      v19 = v40;
LABEL_13:
      v23 = (*(v37 + 48) + 16 * v18);
      v24 = *v23;
      v25 = v23[1];
      sub_100116BCC();
      v26 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      *v19 = v24;
      v19[1] = v25;
      sub_100116B20();
      sub_100002728(v19, 0, 1, v26);

      v20 = v39;
LABEL_14:
      sub_100012D44();
      v27 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      if (sub_100004DFC(v20, 1, v27) == 1)
      {
        return;
      }

      v28 = v7;
      v30 = *v20;
      v29 = v20[1];
      sub_100116B20();
      sub_10014EB30(v30, v29);
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        sub_100116B78();
        return;
      }

      v7 = v28;
      sub_100116BCC();
      sub_10010BC9C();
      v34 = v33;
      sub_100116B78();
      sub_100116B78();
      v16 = v41;
      if ((v34 & 1) == 0)
      {
        return;
      }
    }

    v20 = v39;
    v19 = v40;
    while (1)
    {
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v35 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
        sub_100002728(v19, 1, 1, v35);
        v41 = 0;
        goto LABEL_14;
      }

      v22 = *(v36 + 8 * v21);
      ++v12;
      if (v22)
      {
        v41 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v21 << 6);
        v12 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1001139C4()
{
  sub_100004168();
  v2 = v1;
  sub_100002834();
  v3 = type metadata accessor for Date();
  sub_100003724();
  v67 = v4;
  __chkstk_darwin(v5);
  sub_10000308C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_10000D478();
  sub_1001189A0(v10);
  v66 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v60 = v11;
  __chkstk_darwin(v12);
  sub_10000308C();
  v61 = v13 - v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_10000D478();
  v59 = v16;
  v17 = sub_100099DF4(&qword_1002DD160, &qword_100236D30);
  v18 = sub_1000030B8(v17);
  __chkstk_darwin(v18);
  sub_10000308C();
  __chkstk_darwin(v19);
  sub_10000D478();
  v63 = v21;
  if (v0 == v2 || *(v0 + 16) != *(v2 + 16))
  {
LABEL_19:
    sub_1000027F8();
  }

  else
  {
    v62 = v20;
    v57 = v8;
    v58 = v2;
    v22 = 0;
    v56 = v0;
    sub_1001187E8();
    sub_1000069C0();
    v25 = v24 & v23;
    v54 = (v26 + 63) >> 6;
    v55 = v0;
    while (v25)
    {
      v64 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v22 << 6);
LABEL_11:
      (*(v60 + 16))(v59, *(v56 + 48) + *(v60 + 72) * v27, v66);
      (*(v67 + 16))(v65, *(v56 + 56) + *(v67 + 72) * v27, v3);
      v33 = sub_100099DF4(&qword_1002DD168, &qword_100236D38);
      v34 = *(v33 + 48);
      v35 = sub_100002CC0();
      v36(v35);
      (*(v67 + 32))(v62 + v34, v65, v3);
      sub_10000B7B0();
      sub_100002728(v37, v38, v39, v33);
      v28 = v63;
      v25 = v64;
LABEL_12:
      sub_100012D44();
      v40 = sub_100005CF0();
      v42 = sub_100099DF4(v40, v41);
      sub_1000071D8(v28);
      if (v43)
      {
        goto LABEL_19;
      }

      v44 = *(v42 + 48);
      (*(v60 + 32))(v61, v28, v66);
      (*(v67 + 32))(v57, v28 + v44, v3);
      v45 = sub_10000DA08();
      v47 = v46;
      (*(v60 + 8))(v61, v66);
      if ((v47 & 1) == 0)
      {
        v52 = sub_100007B1C();
        v53(v52);
        goto LABEL_19;
      }

      (*(v67 + 16))(v65, *(v58 + 56) + *(v67 + 72) * v45, v3);
      sub_100004AF4();
      sub_100111ED0(&qword_1002E27C0);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v67 + 8);
      v49(v65, v3);
      v50 = sub_100007B1C();
      (v49)(v50);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v28 = v63;
    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v54)
      {
        v51 = sub_100099DF4(&qword_1002DD168, &qword_100236D38);
        sub_100002728(v62, 1, 1, v51);
        v25 = 0;
        goto LABEL_12;
      }

      ++v22;
      if (*(v55 + 8 * v29))
      {
        sub_10000A234();
        v64 = v30;
        v27 = v32 | (v31 << 6);
        v22 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100113EE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100005CFC();
    if (v5)
    {
      v6 = 0;
      sub_100007FC0();
      v9 = v8 & v7;
      sub_10000D448();
      while (v9)
      {
        v9 &= v9 - 1;
LABEL_12:
        sub_1001187C0();
        v15 = *v13;
        v14 = v13[1];
        sub_10011723C(v17 + 40 * v16, &v26);
        v23 = v26;
        v24 = v27;
        v18 = v28;

        if (!v14)
        {
          return;
        }

        v26 = v23;
        v27 = v24;
        v28 = v18;
        v19 = sub_10014EB30(v15, v14);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          sub_100117298(&v26);
          return;
        }

        sub_10011723C(*(a2 + 56) + 40 * v19, v25);
        v22 = static AnyHashable.== infix(_:_:)();
        sub_100117298(v25);
        sub_100117298(&v26);
        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      v10 = v6;
      while (1)
      {
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6 >= v2)
        {
          return;
        }

        ++v10;
        if (*(a1 + 64 + 8 * v6))
        {
          sub_100118424();
          v9 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011404C(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = v3 + 48;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 40);

      String.hash(into:)();
      sub_1000E5AA8();
      String.hash(into:)();
      switch(v5)
      {
        case 1:
        case 2:
          sub_1001184F8();
          break;
        case 3:
        case 4:
          sub_1001185B8();
          break;
        default:
          break;
      }

      String.hash(into:)();

      sub_10000492C();
      String.hash(into:)();
      Hasher._combine(_:)(v6);

      v4 += 64;
      --v2;
    }

    while (v2);
  }
}

void sub_1001141DC()
{
  sub_100002FBC();
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = 0;
    v7 = v0 + 32;
    do
    {
      v8 = v3;
      v4 = *(v7 + 40 * v3 + 32);

      String.hash(into:)();
      sub_100007198();
      String.hash(into:)();
      Hasher._combine(_:)(*(v4 + 16));
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v4 + 56;
        do
        {
          v9 = *(v6 + 16);
          v10 = *(v6 + 40);

          sub_1000E5AA8();
          String.hash(into:)();
          String.hash(into:)();

          sub_100007198();
          String.hash(into:)();
          switch(v9)
          {
            case 3:
            case 4:
              sub_100118994();
              break;
            default:
              break;
          }

          String.hash(into:)();

          String.hash(into:)();
          Hasher._combine(_:)(v10);
          String.hash(into:)();

          v6 += 88;
          --v5;
        }

        while (v5);
      }

      v3 = v8 + 1;
    }

    while (v8 + 1 != v2);
  }
}

void sub_1001144B8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, Swift::UInt8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_100118668();
  sub_10011849C(v33, v34);
  if (v31)
  {
    v35 = v32 + 56;
    do
    {
      v36 = *(v35 + 16);
      v37 = *(v35 + 40);

      String.hash(into:)();
      String.hash(into:)();

      sub_10000492C();
      String.hash(into:)();
      switch(v36)
      {
        case 3:
        case 4:
          sub_100118994();
          break;
        default:
          break;
      }

      String.hash(into:)();

      String.hash(into:)();
      Hasher._combine(_:)(v37);
      String.hash(into:)();

      v35 += 88;
      --v31;
    }

    while (v31);
  }

  sub_10011864C();
}

void sub_1001146DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1000E385C(__dst, &v5);
      sub_1000DE6A4();
      sub_1000E3894(__dst);
      v4 += 136;
      --v3;
    }

    while (v3);
  }
}

void sub_10011476C()
{
  sub_100004168();
  v1 = v0;
  v2 = sub_100002834();
  v3 = type metadata accessor for TSDataSyncTriggerEvent(v2);
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = *(v1 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v17 = v3[5];
    v11 = v9 + v3[6];
    v12 = v9 + v3[7];
    v13 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_1000038C4();
      sub_10003CF90();
      sub_100116BCC();
      type metadata accessor for Date();
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100008A44();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v9 + v17));
      if (*(v11 + 8) == 1)
      {
        sub_100008C3C();
      }

      else
      {
        v14 = *v11;
        sub_100005C20();
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        Hasher._combine(_:)(v15);
      }

      if (*(v12 + 8))
      {
        sub_100005C20();
        String.hash(into:)();
      }

      else
      {
        sub_100008C3C();
      }

      String.hash(into:)();
      sub_100006D34();
      sub_100116B78();
      v13 += v16;
      --v10;
    }

    while (v10);
  }

  sub_1000027F8();
}

void sub_100114920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void sub_100114998(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = v3 + 56;
    do
    {

      sub_100007198();
      String.hash(into:)();
      sub_1000028B0();
      String.hash(into:)();

      v4 += 32;
      --v2;
    }

    while (v2);
  }
}

void sub_100114A24()
{
  sub_100004168();
  sub_10011849C(v2, v3);
  if (v0)
  {
    v4 = v1 + 48;
    do
    {

      String.hash(into:)();

      sub_100118864();
      String.hash(into:)();

      v4 += 24;
      --v0;
    }

    while (v0);
  }

  sub_1000027F8();
}

void sub_100114B5C(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = v3 + 56;
    do
    {

      sub_100007198();
      String.hash(into:)();

      sub_1000028B0();
      String.hash(into:)();
      swift_bridgeObjectRelease_n();

      v4 += 32;
      --v2;
    }

    while (v2);
  }
}

void sub_100114BF4()
{
  v0 = sub_100002834();
  v1 = type metadata accessor for TSDataSyncTriggerEvent(v0);
  sub_10000307C();
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  v6 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  sub_10003D1E4();
  sub_10000B3A0(v9, 1, v1);
  if (v11)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100007198();
    sub_100116B20();
    sub_100005C20();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v10);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v5 + *(v1 + 20)));
    sub_10000A840();
    if (v11)
    {
      sub_100008C3C();
    }

    else
    {
      v13 = *v12;
      sub_100005C20();
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      Hasher._combine(_:)(v14);
    }

    if (*(v5 + *(v1 + 28) + 8))
    {
      sub_100005C20();
      sub_1001187F4();
      String.hash(into:)();
    }

    else
    {
      sub_100008C3C();
    }

    sub_100118844();
    String.hash(into:)();
    sub_100006D34();
    sub_100116B78();
  }
}

void sub_100114DC0()
{
  sub_100004168();
  v2 = v1;
  v39 = v3;
  v42 = type metadata accessor for Date();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000030E4();
  v41 = v7;
  v8 = sub_100099DF4(&qword_1002DD2D0, &unk_100237590);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v40 = (v10 - v11);
  sub_100005238();
  __chkstk_darwin(v12);
  sub_10011852C();
  v13 = v2 + 64;
  sub_100007FC0();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v19 = (v5 + 4);
  v37 = v5;

  v20 = 0;
  v21 = 0;
  v36 = v0;
  v35 = (v5 + 4);
  for (i = v2 + 64; ; v13 = i)
  {
    v43 = v20;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v16 &= v16 - 1;
    sub_100118740();
    (v37[2])(v41, v24 + v37[9] * v23, v42);
    v25 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
    v26 = *(v25 + 48);
    *v40 = v5;
    *(v40 + 1) = v2;
    v19 = v35;
    (v37[4])(&v40[v26], v41, v42);
    sub_10000B7B0();
    sub_100002728(v27, v28, v29, v25);

    v0 = v36;
LABEL_9:
    sub_100118870();
    sub_100012D44();
    v30 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
    sub_1000071D8(v0);
    if (v31)
    {

      Hasher._combine(_:)(v43);
      sub_1000027F8();
      return;
    }

    v5 = v42;
    (*v19)(v41, v0 + *(v30 + 48), v42);
    memcpy(v44, v39, 0x48uLL);

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    v32 = sub_100005CF0();
    v33(v32);
    v2 = v44;
    v20 = Hasher._finalize()() ^ v43;
  }

  v5 = v40;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      v34 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_100118684(v34);
      v16 = 0;
      goto LABEL_9;
    }

    v16 = *&v13[8 * v22];
    ++v21;
    if (v16)
    {
      v21 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100115128(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100118668();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v38 = v34 + 64;
  sub_100007FC0();
  sub_1000062F0();

  v39 = 0;
  v40 = 0;
  if (v31)
  {
    while (1)
    {
LABEL_5:
      sub_100118484();
      v43 = *(*(v35 + 56) + v42);
      memcpy(&__dst, v37, 0x48uLL);
      sub_100108334();
      v44 = swift_bridgeObjectRetain_n();
      sub_100118724(v44);
      sub_100108334();
      swift_bridgeObjectRelease_n();
      Hasher._combine(_:)(v43);
      v39 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v30)
    {

      Hasher._combine(_:)(0);
      sub_10011864C();
      return;
    }

    ++v40;
    if (*(v38 + 8 * v41))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}