double sub_100047730@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 12;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v24[2] = v7[2];
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v24[6] = v7[6];
    v24[7] = v13;
    v24[4] = v11;
    v24[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[10];
    *(v25 + 9) = *(v7 + 169);
    v24[9] = v15;
    v25[0] = v16;
    v24[8] = v14;
    memmove(__dst, v7, 0xB9uLL);
    UInt32.init(_:)(__dst);
    sub_10005104C(v24, &v23);
    v36 = __dst[8];
    v37 = __dst[9];
    v38[0] = v27[0];
    *(v38 + 9) = *(v27 + 9);
    v32 = __dst[4];
    v33 = __dst[5];
    v34 = __dst[6];
    v35 = __dst[7];
    v28 = __dst[0];
    v29 = __dst[1];
    v30 = __dst[2];
    v31 = __dst[3];
  }

  else
  {
LABEL_5:
    sub_100051164(&v28);
  }

  v17 = v37;
  a2[8] = v36;
  a2[9] = v17;
  a2[10] = v38[0];
  *(a2 + 169) = *(v38 + 9);
  v18 = v33;
  a2[4] = v32;
  a2[5] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  result = *&v30;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

__n128 sub_100047878@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);

  sub_10004793C(v6, v7, v8, a3, v16);

  v9 = v17[0];
  *(a4 + 192) = v16[12];
  *(a4 + 208) = v9;
  *(a4 + 217) = *(v17 + 9);
  v10 = v16[9];
  *(a4 + 128) = v16[8];
  *(a4 + 144) = v10;
  v11 = v16[11];
  *(a4 + 160) = v16[10];
  *(a4 + 176) = v11;
  v12 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v12;
  v13 = v16[7];
  *(a4 + 96) = v16[6];
  *(a4 + 112) = v13;
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_10004793C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v129 = a3;
  v128 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v127 = (&v115 - v14);
  __chkstk_darwin(v15);
  v122 = &v115 - v16;
  __chkstk_darwin(v17);
  v123 = (&v115 - v18);
  __chkstk_darwin(v19);
  v124 = (&v115 - v20);
  __chkstk_darwin(v21);
  v125 = &v115 - v22;
  v277 = *(v5 + 136);
  v278 = *(v5 + 152);
  v279 = *(v5 + 168);
  v280 = *(v5 + 184);
  v273 = *(v5 + 72);
  v274 = *(v5 + 88);
  v275 = *(v5 + 104);
  v276 = *(v5 + 120);
  v269 = *(v5 + 8);
  v270 = *(v5 + 24);
  v271 = *(v5 + 40);
  v272 = *(v5 + 56);
  v289 = *(v5 + 136);
  v290 = *(v5 + 152);
  v291 = *(v5 + 168);
  v292 = *(v5 + 184);
  v285 = *(v5 + 72);
  v286 = *(v5 + 88);
  v287 = *(v5 + 104);
  v288 = *(v5 + 120);
  v281 = *(v5 + 8);
  v282 = *(v5 + 24);
  v283 = *(v5 + 40);
  v284 = *(v5 + 56);
  if (sub_10003EC1C(&v281) == 1)
  {
    sub_1000503E0(&v257);
  }

  else
  {
    v195 = v289;
    v196 = v290;
    v197 = v291;
    LOBYTE(v198) = v292;
    v191 = v285;
    v192 = v286;
    v193 = v287;
    v194 = v288;
    v187 = v281;
    v188 = v282;
    v189 = v283;
    v190 = v284;
    UInt32.init(_:)(&v187);
    v265 = v195;
    v266 = v196;
    v267 = v197;
    v261 = v191;
    v262 = v192;
    v263 = v193;
    v264 = v194;
    v257 = v187;
    v258 = v188;
    v259 = v189;
    v268 = v198;
    v260 = v190;
  }

  sub_10005104C(v5, &v187);
  sub_10005104C(v5, &v187);
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, _swiftEmptyArrayStorage))
  {
    result = sub_100051084(v5);
    v24 = *(v5 + 4);
    v25 = v24 * 1.25;
    if (v25 != INFINITY)
    {
      if (v25 > -1.0)
      {
        if (v25 < 4294967300.0)
        {
          v26 = __CFADD__(v24, 0x4000);
          v27 = v24 + 0x4000;
          if (!v26)
          {
            v28 = a1;
            if (v27 <= v25)
            {
              v29 = v25;
            }

            else
            {
              v29 = v27;
            }

            v30 = *v6;
            sub_1000503E0(&v233);
            v253 = v241;
            v254 = v242;
            v255 = v243;
            v256 = v244;
            v249 = v237;
            v250 = v238;
            v251 = v239;
            v252 = v240;
            v245 = v233;
            v246 = v234;
            v247 = v235;
            v248 = v236;

            v31 = v128;

            sub_100025F40(&v245, &qword_1005CDFD0, &qword_1004EE450);
            *(&v160[8] + 1) = v265;
            *(&v160[9] + 1) = v266;
            *(&v160[10] + 1) = v267;
            BYTE1(v160[11]) = v268;
            *(&v160[4] + 1) = v261;
            *(&v160[5] + 1) = v262;
            *(&v160[6] + 1) = v263;
            *(&v160[7] + 1) = v264;
            *(v160 + 1) = v257;
            *(&v160[1] + 1) = v258;
            *(&v160[2] + 1) = v259;
            *(&v160[3] + 1) = v260;
            *(&v137[8] + 7) = v160[8];
            *(&v137[9] + 7) = v160[9];
            *(&v137[10] + 7) = v160[10];
            *(&v137[4] + 7) = v160[4];
            *(&v137[5] + 7) = v160[5];
            *(&v137[6] + 7) = v160[6];
            *(&v137[7] + 7) = v160[7];
            *(v137 + 7) = v160[0];
            *(&v137[1] + 7) = v160[1];
            *(&v137[2] + 7) = v160[2];
            *(&v137[3] + 7) = v160[3];
            v156 = v160[8];
            v157 = v160[9];
            v158 = v160[10];
            v152 = v160[4];
            v153 = v160[5];
            v154 = v160[6];
            v155 = v160[7];
            v148 = v160[0];
            v149 = v160[1];
            v150 = v160[2];
            LOBYTE(v134) = 1;
            *(&v134 + 1) = v31;
            *&v135 = __PAIR64__(v30, v129);
            *(&v135 + 1) = v28;
            LODWORD(v136) = v29;
            *(&v136 + 1) = _swiftEmptyArrayStorage;
            LODWORD(v137[0]) = 0;
            WORD2(v137[0]) = 2;
            BYTE6(v137[0]) = 0;
            *(&v137[11] + 7) = v160[11];
            LOBYTE(v138) = 1;
            v139 = v31;
            v140 = v129;
            v141 = v30;
            v142 = v28;
            v143 = v29;
            v144 = _swiftEmptyArrayStorage;
            v145 = 0;
            v146 = 2;
            v147 = 0;
            v159 = v160[11];
            v151 = v160[3];
            sub_100050408(&v134, &v187);
            sub_100050440(&v138);
            v161 = v137[9];
            v162[0] = v137[10];
            *(v162 + 9) = *(&v137[10] + 9);
            v160[8] = v137[5];
            v160[9] = v137[6];
            v160[10] = v137[7];
            v160[11] = v137[8];
            v160[4] = v137[1];
            v160[5] = v137[2];
            v160[6] = v137[3];
            v160[7] = v137[4];
            v160[0] = v134;
            v160[1] = v135;
            v160[2] = v136;
            v160[3] = v137[0];
            result = UInt32.init(_:)(v160);
            v199 = v161;
            v200[0] = v162[0];
            *(v200 + 9) = *(v162 + 9);
            v195 = v160[8];
            v196 = v160[9];
            v197 = v160[10];
            v198 = v160[11];
LABEL_44:
            v191 = v160[4];
            v192 = v160[5];
            v193 = v160[6];
            v194 = v160[7];
            v187 = v160[0];
            v188 = v160[1];
            v189 = v160[2];
            v190 = v160[3];
            v107 = v200[0];
            a5[12] = v199;
            a5[13] = v107;
            *(a5 + 217) = *(v200 + 9);
            v108 = v196;
            a5[8] = v195;
            a5[9] = v108;
            v109 = v198;
            a5[10] = v197;
            a5[11] = v109;
            v110 = v192;
            a5[4] = v191;
            a5[5] = v110;
            v111 = v194;
            a5[6] = v193;
            a5[7] = v111;
            v112 = v188;
            *a5 = v187;
            a5[1] = v112;
            v113 = v190;
            a5[2] = v189;
            a5[3] = v113;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_55;
      }

      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v183 = v277;
  v184 = v278;
  v185 = v279;
  v186 = v280;
  v179 = v273;
  v180 = v274;
  v181 = v275;
  v182 = v276;
  v175 = v269;
  v176 = v270;
  v177 = v271;
  v178 = v272;
  v32 = sub_10003EC1C(&v175);
  v126 = a1;
  v121 = a5;
  if (v32 == 1)
  {
    goto LABEL_18;
  }

  v120 = v10;
  v160[8] = v183;
  v160[9] = v184;
  v160[10] = v185;
  LOBYTE(v160[11]) = v186;
  v160[4] = v179;
  v160[5] = v180;
  v160[6] = v181;
  v160[7] = v182;
  v160[0] = v175;
  v160[1] = v176;
  v160[2] = v177;
  v160[3] = v178;
  if (sub_10000FE74(v160) != 1)
  {
    v253 = v160[8];
    v254 = v160[9];
    v255 = v160[10];
    v249 = v160[4];
    v250 = v160[5];
    v251 = v160[6];
    v252 = v160[7];
    v245 = v160[0];
    v246 = v160[1];
    v247 = v160[2];
    v256 = v160[11];
    v248 = v160[3];
    BodyStructure.find(_:)(a1, v201);
    v215 = v201[8];
    v216 = v201[9];
    v217 = v201[10];
    v218 = v202;
    v211 = v201[4];
    v212 = v201[5];
    v213 = v201[6];
    v214 = v201[7];
    v207 = v201[0];
    v208 = v201[1];
    v209 = v201[2];
    v210 = v201[3];
    if (sub_10000FE74(&v207) == 1)
    {
      sub_100051084(v5);
      goto LABEL_17;
    }

    v227 = v215;
    v228 = v216;
    v229 = v217;
    v223 = v211;
    v224 = v212;
    v225 = v213;
    v226 = v214;
    v219 = v207;
    v220 = v208;
    v221 = v209;
    v222 = v210;
    v231[8] = v215;
    v231[9] = v216;
    v231[10] = v217;
    v231[4] = v211;
    v231[5] = v212;
    v231[6] = v213;
    v231[7] = v214;
    v231[0] = v207;
    v231[1] = v208;
    v231[2] = v209;
    v230 = v218;
    v232 = v218;
    v231[3] = v210;
    if (sub_10000FE88(v231) == 1)
    {
      UInt32.init(_:)(v231);
      v48 = v123;
      sub_100050EB8(a4, v123, type metadata accessor for MailboxTaskLogger);
      v49 = v122;
      sub_100050EB8(a4, v122, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10005104C(v5, &v187);
      sub_10000E268(v201, &v187, &qword_1005CE210, &unk_1004D0930);
      sub_10005104C(v5, &v187);
      sub_10000E268(v201, &v187, &qword_1005CE210, &unk_1004D0930);

      v50 = sub_1004A4A54();
      v51 = sub_1004A6034();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v138 = v127;
        *v52 = 68160259;
        LODWORD(v125) = v51;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v120;
        v54 = v49 + *(v120 + 20);
        *(v52 + 10) = *v54;
        *(v52 + 11) = 2082;
        v55 = *(v53 + 20);
        v124 = v50;
        v56 = v48;
        v57 = v48 + v55;
        *(v52 + 13) = sub_10015BA6C(*(v57 + 1), *(v57 + 2), &v138);
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;
        LOWORD(v54) = *(v54 + 24);
        sub_100050F20(v49, type metadata accessor for MailboxTaskLogger);
        *(v52 + 29) = v54;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        v58 = *(v57 + 4);
        LODWORD(v54) = *(v57 + 10);

        sub_100050F20(v56, type metadata accessor for MailboxTaskLogger);
        *&v187 = v58;
        DWORD2(v187) = v54;
        v59 = sub_1004A5824();
        v61 = sub_10015BA6C(v59, v60, &v138);

        *(v52 + 43) = v61;
        *(v52 + 51) = 1024;
        sub_100051084(v6);
        *(v52 + 53) = *v6;
        sub_100051084(v6);
        *(v52 + 57) = 2080;
        BodyStructure.mediaType.getter();
        v63 = v62;
        v65 = v64;

        v66 = sub_10015BA6C(v63, v65, &v138);

        *(v52 + 59) = v66;
        *(v52 + 67) = 2082;
        v67 = SectionSpecifier.Part.debugDescription.getter(v126);
        v69 = sub_10015BA6C(v67, v68, &v138);

        *(v52 + 69) = v69;
        *(v52 + 77) = 2048;
        v70 = sub_10004C0F8();
        sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
        *(v52 + 79) = v70;
        sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
        v71 = v124;
        _os_log_impl(&_mh_execute_header, v124, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding multi-part '%s' section '[%{public}s]' (approx. %{iec-bytes}ld)", v52, 0x57u);
        swift_arrayDestroy();

        sub_100051084(v6);

LABEL_28:
        sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
LABEL_32:
        v171 = v277;
        v172 = v278;
        v173 = v279;
        v174 = v280;
        v167 = v273;
        v168 = v274;
        v169 = v275;
        v170 = v276;
        v163 = v269;
        v164 = v270;
        v165 = v271;
        v166 = v272;
        goto LABEL_33;
      }

      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);
      sub_100050F20(v49, type metadata accessor for MailboxTaskLogger);
      sub_100051084(v6);
      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);

      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
      v100 = v48;
    }

    else
    {
      v122 = *(UInt32.init(_:)(v231) + 0x50);
      sub_100050EB8(a4, v125, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(a4, v124, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10005104C(v5, &v187);
      sub_10005104C(v5, &v187);
      v118 = BodyStructure.mediaType.getter();
      v119 = v72;
      v74 = v73;
      v76 = v75;
      sub_10000E268(v201, &v187, &qword_1005CE210, &unk_1004D0930);
      sub_10000E268(v201, &v187, &qword_1005CE210, &unk_1004D0930);

      v77 = sub_1004A4A54();
      v78 = sub_1004A6034();

      v123 = v76;

      v127 = v77;
      v79 = os_log_type_enabled(v77, v78);
      v80 = v120;
      if (v79)
      {
        v81 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v138 = v117;
        *v81 = 68160515;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v82 = *(v80 + 20);
        v116 = v74;
        v83 = v124;
        v84 = v124 + v82;
        *(v81 + 10) = *(&v124->isa + v82);
        *(v81 + 11) = 2082;
        v85 = *(v80 + 20);
        LODWORD(v120) = v78;
        v86 = v125;
        v87 = v125 + v85;
        *(v81 + 13) = sub_10015BA6C(*(v125 + v85 + 8), *(v125 + v85 + 16), &v138);
        *(v81 + 21) = 1040;
        *(v81 + 23) = 2;
        *(v81 + 27) = 512;
        LOWORD(v84) = *(v84 + 12);
        sub_100050F20(v83, type metadata accessor for MailboxTaskLogger);
        *(v81 + 29) = v84;
        *(v81 + 31) = 2160;
        *(v81 + 33) = 0x786F626C69616DLL;
        *(v81 + 41) = 2085;
        v88 = v86;
        v89 = *(v87 + 32);
        LODWORD(v87) = *(v87 + 40);

        sub_100050F20(v88, type metadata accessor for MailboxTaskLogger);
        *&v187 = v89;
        DWORD2(v187) = v87;
        v90 = sub_1004A5824();
        v92 = sub_10015BA6C(v90, v91, &v138);

        *(v81 + 43) = v92;
        *(v81 + 51) = 1024;
        sub_100051084(v6);
        *(v81 + 53) = *v6;
        sub_100051084(v6);
        *(v81 + 57) = 2082;
        v93 = v116;

        v94 = sub_10015BA6C(v118, v93, &v138);

        *(v81 + 59) = v94;
        *(v81 + 67) = 2082;

        v95 = sub_10015BA6C(v119, v123, &v138);

        *(v81 + 69) = v95;
        *(v81 + 77) = 2082;
        v96 = SectionSpecifier.Part.debugDescription.getter(v126);
        v98 = sub_10015BA6C(v96, v97, &v138);

        *(v81 + 79) = v98;
        *(v81 + 87) = 2048;
        sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
        *(v81 + 89) = v122;
        sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
        v99 = v127;
        _os_log_impl(&_mh_execute_header, v127, v120, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding '%{public}s/%{public}s' section '[%{public}s]' (%{iec-bytes}ld)", v81, 0x61u);
        swift_arrayDestroy();

        sub_100051084(v6);

        goto LABEL_28;
      }

      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);
      sub_100050F20(v124, type metadata accessor for MailboxTaskLogger);
      sub_100051084(v6);
      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);

      sub_100051084(v6);

      sub_100025F40(v201, &qword_1005CE210, &unk_1004D0930);
      v100 = v125;
    }

    sub_100050F20(v100, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

LABEL_17:
  v10 = v120;
LABEL_18:
  sub_100050EB8(a4, v127, type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(a4, v12, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10005104C(v5, &v187);
  sub_10005104C(v5, &v187);

  v33 = sub_1004A4A54();
  v34 = sub_1004A6014();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v160[0] = v125;
    *v35 = 68159747;
    LODWORD(v124) = v34;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    v36 = &v12[*(v10 + 20)];
    *(v35 + 10) = *v36;
    *(v35 + 11) = 2082;
    v37 = *(v10 + 20);
    v123 = v33;
    v38 = v127;
    v39 = v127 + v37;
    *(v35 + 13) = sub_10015BA6C(*(&v127[1].isa + v37), *(&v127[2].isa + v37), v160);
    *(v35 + 21) = 1040;
    *(v35 + 23) = 2;
    *(v35 + 27) = 512;
    LOWORD(v36) = *(v36 + 12);
    sub_100050F20(v12, type metadata accessor for MailboxTaskLogger);
    *(v35 + 29) = v36;
    *(v35 + 31) = 2160;
    *(v35 + 33) = 0x786F626C69616DLL;
    *(v35 + 41) = 2085;
    v40 = *(v39 + 4);
    LODWORD(v39) = *(v39 + 10);

    sub_100050F20(v38, type metadata accessor for MailboxTaskLogger);
    *&v187 = v40;
    DWORD2(v187) = v39;
    v41 = sub_1004A5824();
    v43 = sub_10015BA6C(v41, v42, v160);

    *(v35 + 43) = v43;
    *(v35 + 51) = 1024;
    sub_100051084(v6);
    *(v35 + 53) = *v6;
    sub_100051084(v6);
    *(v35 + 57) = 2082;
    v44 = SectionSpecifier.Part.debugDescription.getter(v126);
    v46 = sub_10015BA6C(v44, v45, v160);

    *(v35 + 59) = v46;
    v47 = v123;
    _os_log_impl(&_mh_execute_header, v123, v124, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Section '[%{public}s]' not found in complete body structure.", v35, 0x43u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100051084(v6);
    sub_100050F20(v12, type metadata accessor for MailboxTaskLogger);
    sub_100051084(v6);

    sub_100050F20(v127, type metadata accessor for MailboxTaskLogger);
  }

  v195 = v277;
  v196 = v278;
  v197 = v279;
  LOBYTE(v198) = v280;
  v191 = v273;
  v192 = v274;
  v193 = v275;
  v194 = v276;
  v187 = v269;
  v188 = v270;
  v189 = v271;
  v190 = v272;
  result = sub_10003EC1C(&v187);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v171 = v195;
  v172 = v196;
  v173 = v197;
  v174 = v198;
  v167 = v191;
  v168 = v192;
  v169 = v193;
  v170 = v194;
  v163 = v187;
  v164 = v188;
  v165 = v189;
  v166 = v190;
LABEL_33:
  v195 = v171;
  v196 = v172;
  v197 = v173;
  LOBYTE(v198) = v174;
  v191 = v167;
  v192 = v168;
  v193 = v169;
  v194 = v170;
  v187 = v163;
  v188 = v164;
  v189 = v165;
  v190 = v166;
  result = sub_10000FE74(&v187);
  if (result == 1)
  {
LABEL_34:
    a5 = v121;
LABEL_35:
    LODWORD(v101) = v6[1];
    goto LABEL_36;
  }

  v241 = v195;
  v242 = v196;
  v243 = v197;
  v244 = v198;
  v237 = v191;
  v238 = v192;
  v239 = v193;
  v240 = v194;
  v233 = v187;
  v234 = v188;
  v235 = v189;
  v236 = v190;
  v160[8] = v171;
  v160[9] = v172;
  v160[10] = v173;
  LOBYTE(v160[11]) = v174;
  v160[4] = v167;
  v160[5] = v168;
  v160[6] = v169;
  v160[7] = v170;
  v160[0] = v163;
  v160[1] = v164;
  v160[2] = v165;
  v160[3] = v166;
  sub_1000510B4(v160, &v138);
  BodyStructure.subscript.getter(v126, v203);
  sub_100051084(v6);
  v205[8] = v203[8];
  v205[9] = v203[9];
  v205[10] = v203[10];
  v206 = v204;
  v205[4] = v203[4];
  v205[5] = v203[5];
  v205[6] = v203[6];
  v205[7] = v203[7];
  v205[0] = v203[0];
  v205[1] = v203[1];
  v205[2] = v203[2];
  v205[3] = v203[3];
  v114 = sub_10000FE88(v205) == 1;
  a5 = v121;
  if (v114)
  {
    UInt32.init(_:)(v205);
    result = sub_100051110(v203);
    goto LABEL_35;
  }

  v101 = *(UInt32.init(_:)(v205) + 0x50);
  result = sub_100051110(v203);
  if ((v101 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!HIDWORD(v101))
  {
LABEL_36:
    v102 = v101 * 1.25;
    if (v102 != INFINITY)
    {
      if (v102 > -1.0)
      {
        if (v102 < 4294967300.0)
        {
          if (v101 < 0xFFFFC000)
          {
            if (v101 + 0x4000 <= v102)
            {
              v103 = v102;
            }

            else
            {
              v103 = v101 + 0x4000;
            }

            v104 = *v6;
            sub_1000503E0(v130);
            v132[8] = v130[8];
            v132[9] = v130[9];
            v132[10] = v130[10];
            v133 = v131;
            v132[4] = v130[4];
            v132[5] = v130[5];
            v132[6] = v130[6];
            v132[7] = v130[7];
            v132[0] = v130[0];
            v132[1] = v130[1];
            v132[2] = v130[2];
            v132[3] = v130[3];
            v105 = v126;

            v106 = v128;

            sub_100025F40(v132, &qword_1005CDFD0, &qword_1004EE450);
            *(&v160[8] + 1) = v265;
            *(&v160[9] + 1) = v266;
            *(&v160[10] + 1) = v267;
            BYTE1(v160[11]) = v268;
            *(&v160[4] + 1) = v261;
            *(&v160[5] + 1) = v262;
            *(&v160[6] + 1) = v263;
            *(&v160[7] + 1) = v264;
            *(v160 + 1) = v257;
            *(&v160[1] + 1) = v258;
            *(&v160[2] + 1) = v259;
            *(&v160[3] + 1) = v260;
            *(&v137[8] + 7) = v160[8];
            *(&v137[9] + 7) = v160[9];
            *(&v137[10] + 7) = v160[10];
            *(&v137[4] + 7) = v160[4];
            *(&v137[5] + 7) = v160[5];
            *(&v137[6] + 7) = v160[6];
            *(&v137[7] + 7) = v160[7];
            *(v137 + 7) = v160[0];
            *(&v137[1] + 7) = v160[1];
            *(&v137[2] + 7) = v160[2];
            *(&v137[3] + 7) = v160[3];
            v156 = v160[8];
            v157 = v160[9];
            v158 = v160[10];
            v152 = v160[4];
            v153 = v160[5];
            v154 = v160[6];
            v155 = v160[7];
            v148 = v160[0];
            v149 = v160[1];
            v150 = v160[2];
            LOBYTE(v134) = 1;
            *(&v134 + 1) = v106;
            *&v135 = __PAIR64__(v104, v129);
            *(&v135 + 1) = v105;
            LODWORD(v136) = v103;
            *(&v136 + 1) = _swiftEmptyArrayStorage;
            LODWORD(v137[0]) = 0;
            WORD2(v137[0]) = 2;
            BYTE6(v137[0]) = 0;
            *(&v137[11] + 7) = v160[11];
            LOBYTE(v138) = 1;
            v139 = v106;
            v140 = v129;
            v141 = v104;
            v142 = v105;
            v143 = v103;
            v144 = _swiftEmptyArrayStorage;
            v145 = 0;
            v146 = 2;
            v147 = 0;
            v159 = v160[11];
            v151 = v160[3];
            sub_100050408(&v134, &v187);
            sub_100050440(&v138);
            v161 = v137[9];
            v162[0] = v137[10];
            *(v162 + 9) = *(&v137[10] + 9);
            v160[8] = v137[5];
            v160[9] = v137[6];
            v160[10] = v137[7];
            v160[11] = v137[8];
            v160[4] = v137[1];
            v160[5] = v137[2];
            v160[6] = v137[3];
            v160[7] = v137[4];
            v160[0] = v134;
            v160[1] = v135;
            v160[2] = v136;
            v160[3] = v137[0];
            result = UInt32.init(_:)(v160);
            v198 = v160[11];
            v199 = v161;
            v200[0] = v162[0];
            *(v200 + 9) = *(v162 + 9);
            v195 = v160[8];
            v196 = v160[9];
            v197 = v160[10];
            goto LABEL_44;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

double sub_100049244@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (1)
    {
      v9 = *v8;
      v8 += 48;
      if (v9 == a1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    sub_100169078(v7, v16);
    UInt32.init(_:)(v16);
    v26 = v16[8];
    v27 = v16[9];
    v28[0] = v17[0];
    *(v28 + 9) = *(v17 + 9);
    v22 = v16[4];
    v23 = v16[5];
    v24 = v16[6];
    v25 = v16[7];
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
  }

  else
  {
LABEL_5:
    sub_100051164(&v18);
  }

  v10 = v27;
  a2[8] = v26;
  a2[9] = v10;
  a2[10] = v28[0];
  *(a2 + 169) = *(v28 + 9);
  v11 = v23;
  a2[4] = v22;
  a2[5] = v11;
  v12 = v25;
  a2[6] = v24;
  a2[7] = v12;
  v13 = v19;
  *a2 = v18;
  a2[1] = v13;
  result = *&v20;
  v15 = v21;
  a2[2] = v20;
  a2[3] = v15;
  return result;
}

uint64_t sub_10004934C(uint64_t a1, int a2, uint64_t a3)
{
  v121 = a1;
  v122 = a3;
  v120 = a2;
  v119 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v119);
  v123 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v115 - v6;
  v7 = type metadata accessor for MessageSectionData(0);
  __chkstk_darwin(v7);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v115 - v11;
  v13 = type metadata accessor for SegmentResequencer.PopResult(0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_1004A5384();
  v132 = *(v128 - 8);
  __chkstk_darwin(v128);
  v134 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005CE228, &qword_1004D0948);
  __chkstk_darwin(v17 - 8);
  v19 = &v115 - v18;
  v20 = type metadata accessor for MessageSectionData.Segment(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v126 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s25MessageSectionsToDownloadVMa(0);
  v135 = *(v23 + 24);
  v136 = v3;
  v24 = *(v3 + v135);
  v127 = *(v24 + 2);
  if (!v127)
  {
    return 0xF000000000000007;
  }

  v116 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117 = v9;
  v118 = v7;
  v125 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v24 = sub_100139890(v24);
  }

  v26 = 0;
  v27 = v24 + 88;
  v28 = v132;
  v132 += 4;
  v133 = (v28 + 6);
  v130 = (v21 + 48);
  v131 = (v21 + 56);
  v29 = v127;
  v21 = v128;
  while (1)
  {
    if (v29 == v26)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v26 >= *(v24 + 2))
    {
      goto LABEL_41;
    }

    v30 = v27 - 16;
    sub_100129368(v15);
    if ((*v133)(v15, 1, v21) == 1)
    {
      sub_100050F20(v15, type metadata accessor for SegmentResequencer.PopResult);
      (*v131)(v19, 1, 1, v20);
    }

    else
    {
      v31 = *v132;
      (*v132)(v134, v15, v21);
      if (*(v27 - 3))
      {
        sub_1000503E0(&v197);
        v32 = v129;
      }

      else
      {
        *(v27 - 3) = 1;
        v33 = *v27;
        v34 = *(v27 + 1);
        v35 = *(v27 + 3);
        v175 = *(v27 + 2);
        v176 = v35;
        v173 = v33;
        v174 = v34;
        v36 = *(v27 + 4);
        v37 = *(v27 + 5);
        v38 = *(v27 + 7);
        v179 = *(v27 + 6);
        v180 = v38;
        v177 = v36;
        v178 = v37;
        v39 = *(v27 + 8);
        v40 = *(v27 + 9);
        v41 = *(v27 + 10);
        v184 = v27[176];
        v182 = v40;
        v183 = v41;
        v181 = v39;
        memmove(&v185, v27, 0xB1uLL);
        v42 = sub_10003EC1C(&v185);
        v32 = v129;
        if (v42 == 1 || (v205 = v193, v206 = v194, v207 = v195, LOBYTE(v208) = v196, v201 = v189, v202 = v190, v203 = v191, v204 = v192, v197 = v185, v198 = v186, v199 = v187, v200 = v188, sub_10000FE74(&v197) == 1))
        {
          sub_100051270(&v161);
        }

        else
        {
          v145 = v205;
          v146 = v206;
          v147 = v207;
          v148 = v208;
          v141 = v201;
          v142 = v202;
          v143 = v203;
          v144 = v204;
          v137 = v197;
          v138 = v198;
          v139 = v199;
          v140 = v200;
          UInt32.init(_:)(&v137);
          v157 = v181;
          v158 = v182;
          v159 = v183;
          v160 = v184;
          v153 = v177;
          v154 = v178;
          v155 = v179;
          v156 = v180;
          v149 = v173;
          v150 = v174;
          v151 = v175;
          v152 = v176;
          sub_10003E6D4(&v149, &v161);
          v169 = v145;
          v170 = v146;
          v171 = v147;
          v172 = v148;
          v165 = v141;
          v166 = v142;
          v167 = v143;
          v168 = v144;
          v161 = v137;
          v162 = v138;
          v163 = v139;
          v164 = v140;
        }

        v157 = v169;
        v158 = v170;
        v159 = v171;
        v160 = v172;
        v153 = v165;
        v154 = v166;
        v155 = v167;
        v156 = v168;
        v149 = v161;
        v150 = v162;
        v151 = v163;
        v152 = v164;
        UInt32.init(_:)(&v149);
        v205 = v157;
        v206 = v158;
        v207 = v159;
        LOBYTE(v208) = v160;
        v201 = v153;
        v202 = v154;
        v203 = v155;
        v204 = v156;
        v197 = v149;
        v198 = v150;
        v199 = v151;
        v200 = v152;
      }

      v43 = *(v27 - 2);
      v44 = *(v27 - 4);
      v129 = v32 & 0xFFFFFF0000000000 | *(v27 - 2) | (v44 << 32);
      v45 = sub_100129FEC(v43, v129);
      v48 = !v44 && v47 == 2;
      v49 = v48 && (v45 | v46) == 0;
      v50 = v49;
      v21 = v128;
      v31(v19, v134, v128);
      v30 = &v19[*(v20 + 24)];
      sub_1000503E0(&v173);
      v51 = v180;
      *(v30 + 6) = v179;
      *(v30 + 7) = v51;
      v52 = v178;
      *(v30 + 4) = v177;
      *(v30 + 5) = v52;
      v30[176] = v184;
      v53 = v183;
      *(v30 + 9) = v182;
      *(v30 + 10) = v53;
      *(v30 + 8) = v181;
      v54 = v174;
      *v30 = v173;
      *(v30 + 1) = v54;
      v55 = v176;
      *(v30 + 2) = v175;
      *(v30 + 3) = v55;
      v19[*(v20 + 20)] = v50;
      v56 = *(v30 + 9);
      v193 = *(v30 + 8);
      v194 = v56;
      v195 = *(v30 + 10);
      v196 = v30[176];
      v57 = *(v30 + 5);
      v189 = *(v30 + 4);
      v190 = v57;
      v58 = *(v30 + 7);
      v191 = *(v30 + 6);
      v192 = v58;
      v59 = *(v30 + 1);
      v185 = *v30;
      v186 = v59;
      v60 = *(v30 + 3);
      v187 = *(v30 + 2);
      v188 = v60;
      v61 = v206;
      *(v30 + 8) = v205;
      *(v30 + 9) = v61;
      *(v30 + 10) = v207;
      v30[176] = v208;
      v62 = v202;
      *(v30 + 4) = v201;
      *(v30 + 5) = v62;
      v63 = v204;
      *(v30 + 6) = v203;
      *(v30 + 7) = v63;
      v64 = v198;
      *v30 = v197;
      *(v30 + 1) = v64;
      v65 = v200;
      *(v30 + 2) = v199;
      *(v30 + 3) = v65;
      sub_100025F40(&v185, &qword_1005CE230, &unk_1004D0950);
      (*v131)(v19, 0, 1, v20);
      v29 = v127;
    }

    *(v136 + v135) = v24;
    if ((*v130)(v19, 1, v20) != 1)
    {
      break;
    }

    ++v26;
    sub_100025F40(v19, &qword_1005CE228, &qword_1004D0948);
    v27 += 240;
    if (v29 == v26)
    {
      return 0xF000000000000007;
    }
  }

  v67 = v126;
  sub_100050F80(v19, v126, type metadata accessor for MessageSectionData.Segment);
  if (v26 >= *(v24 + 2))
  {
    __break(1u);
    goto LABEL_44;
  }

  v24 = *(v27 - 4);
  LODWORD(v21) = *v136;
  v68 = v125;
  sub_100050EB8(v67, &v125[*(v118 + 28)], type metadata accessor for MessageSectionData.Segment);
  *v68 = v121;
  *(v68 + 8) = v120;
  *(v68 + 12) = v21;
  *(v68 + 16) = v24;
  v70 = *(v27 - 40);
  v69 = *(v27 - 24);
  v197 = *(v27 - 56);
  v198 = v70;
  v199 = v69;
  v71 = *(v27 + 24);
  v73 = *(v27 - 8);
  v72 = *(v27 + 8);
  v203 = *(v27 + 40);
  v202 = v71;
  v200 = v73;
  v201 = v72;
  v74 = *(v27 + 88);
  v76 = *(v27 + 56);
  v75 = *(v27 + 72);
  v207 = *(v27 + 104);
  v206 = v74;
  v204 = v76;
  v205 = v75;
  v78 = *(v27 + 136);
  v77 = *(v27 + 152);
  v79 = *(v27 + 120);
  *(v210 + 9) = *(v27 + 161);
  v210[0] = v77;
  v208 = v79;
  v209 = v78;
  v80 = *(&v199 + 1);
  v81 = v200;
  v82 = BYTE4(v200);
  swift_bridgeObjectRetain_n();

  sub_100050408(&v197, &v185);
  v83 = sub_100129FEC(v80, v81 | (v82 << 32));
  v85 = v84;
  v87 = v86;
  sub_100050440(&v197);
  if (!v82 && v87 == 2 && !(v83 | v85))
  {
    v88 = v136;
    sub_100168FA8(v26, &v185);
    v30 = *(&v186 + 1);
    v67 = *(v116 + 28);
    v26 = *(v88 + v67);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v90 = *(v26 + 2);
      v89 = *(v26 + 3);
      if (v90 >= v89 >> 1)
      {
        v26 = sub_1000860D8((v89 > 1), v90 + 1, 1, v26);
      }

      sub_100050440(&v185);
      *(v26 + 2) = v90 + 1;
      *&v26[8 * v90 + 32] = v30;
      *(v136 + v67) = v26;
      goto LABEL_36;
    }

LABEL_44:
    v26 = sub_1000860D8(0, *(v26 + 2) + 1, 1, v26);
    goto LABEL_33;
  }

LABEL_36:
  v91 = v122;
  v92 = v124;
  sub_100050EB8(v122, v124, type metadata accessor for MailboxTaskLogger);
  v93 = v123;
  sub_100050EB8(v91, v123, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v94 = v125;
  v95 = v117;
  sub_100050EB8(v125, v117, type metadata accessor for MessageSectionData);

  v96 = sub_1004A4A54();
  v97 = sub_1004A6004();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = v92;
    v99 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *&v173 = v136;
    *v99 = 68160003;
    LODWORD(v135) = v97;
    *(v99 + 4) = 2;
    *(v99 + 8) = 256;
    v100 = v119;
    v101 = *(v119 + 20);
    LODWORD(v134) = v21;
    v102 = v93 + v101;
    *(v99 + 10) = *(v93 + v101);
    *(v99 + 11) = 2082;
    v103 = v98 + *(v100 + 20);
    *(v99 + 13) = sub_10015BA6C(*(v103 + 8), *(v103 + 16), &v173);
    *(v99 + 21) = 1040;
    *(v99 + 23) = 2;
    *(v99 + 27) = 512;
    LOWORD(v102) = *(v102 + 24);
    sub_100050F20(v93, type metadata accessor for MailboxTaskLogger);
    *(v99 + 29) = v102;
    *(v99 + 31) = 2160;
    *(v99 + 33) = 0x786F626C69616DLL;
    *(v99 + 41) = 2085;
    v104 = *(v103 + 32);
    LODWORD(v103) = *(v103 + 40);

    sub_100050F20(v98, type metadata accessor for MailboxTaskLogger);
    *&v185 = v104;
    DWORD2(v185) = v103;
    v105 = sub_1004A5824();
    v107 = sub_10015BA6C(v105, v106, &v173);

    *(v99 + 43) = v107;
    *(v99 + 51) = 1024;
    *(v99 + 53) = v134;
    *(v99 + 57) = 2048;
    v108 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_100050F20(v95, type metadata accessor for MessageSectionData);
    *(v99 + 59) = v108;
    *(v99 + 67) = 2082;
    v109 = SectionSpecifier.Part.debugDescription.getter(v24);
    v111 = v110;

    v112 = sub_10015BA6C(v109, v111, &v173);

    *(v99 + 69) = v112;
    _os_log_impl(&_mh_execute_header, v96, v135, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Forwarding %ld bytes for section '[%{public}s]' to the persistence.", v99, 0x4Du);
    swift_arrayDestroy();
    v94 = v125;
  }

  else
  {
    sub_100050F20(v95, type metadata accessor for MessageSectionData);
    sub_100050F20(v93, type metadata accessor for MailboxTaskLogger);

    sub_100050F20(v92, type metadata accessor for MailboxTaskLogger);
  }

  sub_100050F20(v126, type metadata accessor for MessageSectionData.Segment);
  v113 = swift_allocBox();
  sub_100050F80(v94, v114, type metadata accessor for MessageSectionData);
  return v113 | 0x5000000000000004;
}

unint64_t sub_10004A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v71 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v71);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v65 - v10;
  __chkstk_darwin(v11);
  v68 = &v65 - v12;
  __chkstk_darwin(v13);
  v69 = &v65 - v14;
  v70 = _s25MessageSectionsToDownloadVMa(0);
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v76 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v75 = &v65 - v18;
  __chkstk_darwin(v19);
  v77 = (&v65 - v20);
  v21 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));

  v23 = sub_10004D850(v22, v5, a2, a4);
  v25 = v24;

  v26 = v25;

  if (v25)
  {
    v28 = 0;
LABEL_15:
    LOBYTE(v83[0]) = v26 & 1;
    return v28 | ((v26 & 1) << 32);
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(v21 + 16))
  {
    v29 = v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23;
    v30 = v77;
    sub_100050EB8(v29, v77, _s25MessageSectionsToDownloadVMa);
    v28 = *v30;
    sub_100049244(*v30, v81);
    v83[8] = v81[8];
    v83[9] = v81[9];
    v84[0] = v82[0];
    *(v84 + 9) = *(v82 + 9);
    v83[4] = v81[4];
    v83[5] = v81[5];
    v83[6] = v81[6];
    v83[7] = v81[7];
    v83[0] = v81[0];
    v83[1] = v81[1];
    v83[2] = v81[2];
    v83[3] = v81[3];
    if (sub_100051008(v83) == 1)
    {
      v67 = v25;
      v31 = v74;
      v32 = v69;
      sub_100050EB8(v74, v69, type metadata accessor for MailboxTaskLogger);
      v33 = v68;
      sub_100050EB8(v31, v68, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = sub_1004A4A54();
      v35 = sub_1004A6004();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v66 = v28;
        v80[0] = v37;
        *v36 = 68159491;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v38 = v71;
        v39 = v33 + *(v71 + 20);
        *(v36 + 10) = *v39;
        *(v36 + 11) = 2082;
        v40 = v32 + *(v38 + 20);
        *(v36 + 13) = sub_10015BA6C(*(v40 + 8), *(v40 + 16), v80);
        *(v36 + 21) = 1040;
        *(v36 + 23) = 2;
        *(v36 + 27) = 512;
        LOWORD(v39) = *(v39 + 24);
        sub_100050F20(v33, type metadata accessor for MailboxTaskLogger);
        *(v36 + 29) = v39;
        *(v36 + 31) = 2160;
        *(v36 + 33) = 0x786F626C69616DLL;
        *(v36 + 41) = 2085;
        v41 = *(v40 + 32);
        v42 = *(v40 + 40);
        v31 = v74;

        sub_100050F20(v32, type metadata accessor for MailboxTaskLogger);
        v78 = v41;
        v79 = v42;
        v43 = sub_1004A5824();
        v45 = sub_10015BA6C(v43, v44, v80);

        *(v36 + 43) = v45;
        *(v36 + 51) = 1024;
        *(v36 + 53) = v66;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download for message %u, but we don’t have a body structure for this message.", v36, 0x39u);
        swift_arrayDestroy();
        v28 = v66;
        v30 = v77;
      }

      else
      {
        sub_100050F20(v33, type metadata accessor for MailboxTaskLogger);

        sub_100050F20(v32, type metadata accessor for MailboxTaskLogger);
      }

      v26 = v67;
      v46 = v72;
      v48 = v75;
      v47 = v76;
    }

    else
    {
      sub_100025F40(v81, &qword_1005CE208, &qword_1004D0928);
      v46 = v72;
      v48 = v75;
      v47 = v76;
      v31 = v74;
    }

    sub_100050EB8(v31, v46, type metadata accessor for MailboxTaskLogger);
    v49 = v73;
    sub_100050EB8(v31, v73, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100050EB8(v30, v48, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v30, v47, _s25MessageSectionsToDownloadVMa);
    v50 = sub_1004A4A54();
    LODWORD(v74) = sub_1004A6034();
    if (os_log_type_enabled(v50, v74))
    {
      v51 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80[0] = v72;
      *v51 = 68159747;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v71;
      v53 = v49 + *(v71 + 20);
      *(v51 + 10) = *v53;
      *(v51 + 11) = 2082;
      v54 = v28;
      v55 = v49;
      v56 = v46;
      v57 = v46 + *(v52 + 20);
      *(v51 + 13) = sub_10015BA6C(*(v57 + 8), *(v57 + 16), v80);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v53) = *(v53 + 24);
      v58 = v55;
      v28 = v54;
      sub_100050F20(v58, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v53;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v59 = *(v57 + 32);
      LODWORD(v57) = *(v57 + 40);

      sub_100050F20(v56, type metadata accessor for MailboxTaskLogger);
      v78 = v59;
      v79 = v57;
      v60 = sub_1004A5824();
      v62 = sub_10015BA6C(v60, v61, v80);

      *(v51 + 43) = v62;
      *(v51 + 51) = 2048;
      v63 = *(*(v75 + *(v70 + 28)) + 16);
      sub_100050F20(v75, _s25MessageSectionsToDownloadVMa);
      *(v51 + 53) = v63;
      *(v51 + 61) = 1024;
      LODWORD(v63) = *v76;
      sub_100050F20(v76, _s25MessageSectionsToDownloadVMa);
      *(v51 + 63) = v63;
      _os_log_impl(&_mh_execute_header, v50, v74, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download of %ld sections for message %u.", v51, 0x43u);
      swift_arrayDestroy();

      v64 = v77;
    }

    else
    {
      sub_100050F20(v47, _s25MessageSectionsToDownloadVMa);
      sub_100050F20(v48, _s25MessageSectionsToDownloadVMa);
      sub_100050F20(v49, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v46, type metadata accessor for MailboxTaskLogger);
      v64 = v30;
    }

    sub_100050F20(v64, _s25MessageSectionsToDownloadVMa);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_10004A98C(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v218 = a1;
  v3 = v2;
  v219 = a2;
  v4 = sub_1004A4644();
  v208 = *(v4 - 8);
  v209 = v4;
  __chkstk_darwin(v4);
  v206 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v207 = &v191 - v7;
  v8 = type metadata accessor for MessageData.BodySection(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v212 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v199 = &v191 - v12;
  __chkstk_darwin(v13);
  v196 = &v191 - v14;
  __chkstk_darwin(v15);
  v205 = &v191 - v16;
  __chkstk_darwin(v17);
  v204 = (&v191 - v18);
  v215 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v215);
  v210 = (&v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v211 = &v191 - v21;
  __chkstk_darwin(v22);
  v197 = &v191 - v23;
  __chkstk_darwin(v24);
  v198 = &v191 - v25;
  __chkstk_darwin(v26);
  v194 = &v191 - v27;
  __chkstk_darwin(v28);
  v195 = &v191 - v29;
  __chkstk_darwin(v30);
  v213 = &v191 - v31;
  __chkstk_darwin(v32);
  v203 = (&v191 - v33);
  __chkstk_darwin(v34);
  v202 = &v191 - v35;
  __chkstk_darwin(v36);
  v214 = (&v191 - v37);
  v38 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v38 - 8);
  v40 = &v191 - v39;
  v41 = sub_1004A5384();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v201 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v200 = &v191 - v45;
  __chkstk_darwin(v46);
  v48 = &v191 - v47;
  __chkstk_darwin(v49);
  v51 = &v191 - v50;
  v216 = *(v3 + 20);
  v52 = *(v9 + 32);
  v53 = v218;
  sub_10000E268(v218 + v52, v40, &qword_1005CE218, &unk_1004F3FD0);
  v54 = type metadata accessor for MessageData.BodyData(0);
  if ((*(*(v54 - 8) + 48))(v40, 1, v54) != 1)
  {
    v210 = *(v42 + 16);
    v211 = v3;
    v210(v48, v40, v41);
    sub_100050F20(v40, type metadata accessor for MessageData.BodyData);
    v212 = v42;
    (*(v42 + 32))(v51, v48, v41);
    v81 = *(v53 + 24);
    v192 = v41;
    v193 = v51;
    if (v81)
    {
      v82 = v219;
      v83 = v203;
      sub_100050EB8(v219, v203, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v82, v213, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v84 = v201;
      v210(v201, v51, v41);
      v85 = v205;
      sub_100050EB8(v53, v205, type metadata accessor for MessageData.BodySection);
      v86 = sub_1004A4A54();
      v87 = sub_1004A6004();
      v88 = v41;
      if (os_log_type_enabled(v86, v87))
      {
        v89 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v222 = v214;
        *v89 = 68160003;
        LODWORD(v210) = v87;
        *(v89 + 4) = 2;
        *(v89 + 8) = 256;
        v90 = v215;
        v91 = *(v215 + 20);
        v92 = v83;
        v204 = v86;
        v93 = v213;
        v94 = v213 + v91;
        *(v89 + 10) = *(v213 + v91);
        *(v89 + 11) = 2082;
        v95 = v92 + *(v90 + 20);
        *(v89 + 13) = sub_10015BA6C(*(v95 + 8), *(v95 + 16), &v222);
        *(v89 + 21) = 1040;
        *(v89 + 23) = 2;
        *(v89 + 27) = 512;
        LOWORD(v94) = *(v94 + 24);
        sub_100050F20(v93, type metadata accessor for MailboxTaskLogger);
        *(v89 + 29) = v94;
        *(v89 + 31) = 2160;
        *(v89 + 33) = 0x786F626C69616DLL;
        *(v89 + 41) = 2085;
        v96 = *(v95 + 32);
        LODWORD(v95) = *(v95 + 40);

        sub_100050F20(v92, type metadata accessor for MailboxTaskLogger);
        v220 = v96;
        v221 = v95;
        v97 = sub_1004A5824();
        v99 = sub_10015BA6C(v97, v98, &v222);

        *(v89 + 43) = v99;
        *(v89 + 51) = 1024;
        *(v89 + 53) = v216;
        *(v89 + 57) = 2048;
        v100 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v101 = v84;
        v102 = v212;
        v103 = *(v212 + 8);
        v103(v101, v88);
        *(v89 + 59) = v100;
        *(v89 + 67) = 2082;
        v82 = v219;
        v104 = SectionSpecifier.debugDescription.getter(*v85, *(v85 + 8), *(v85 + 16));
        v106 = v105;
        sub_100050F20(v85, type metadata accessor for MessageData.BodySection);
        v107 = sub_10015BA6C(v104, v106, &v222);

        *(v89 + 69) = v107;
        v108 = v204;
        _os_log_impl(&_mh_execute_header, v204, v210, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes for section '%{public}s'", v89, 0x4Du);
        swift_arrayDestroy();

        v51 = v193;
      }

      else
      {
        v154 = v84;
        v102 = v212;
        v103 = *(v212 + 8);
        v103(v154, v88);
        sub_100050F20(v213, type metadata accessor for MailboxTaskLogger);

        sub_100050F20(v83, type metadata accessor for MailboxTaskLogger);
        sub_100050F20(v85, type metadata accessor for MessageData.BodySection);
      }

      v152 = 0;
      v155 = v217;
    }

    else
    {
      LODWORD(v213) = *(v53 + 20);
      v82 = v219;
      sub_100050EB8(v219, v214, type metadata accessor for MailboxTaskLogger);
      v129 = v202;
      sub_100050EB8(v82, v202, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v130 = v200;
      v210(v200, v51, v41);
      v131 = v204;
      sub_100050EB8(v53, v204, type metadata accessor for MessageData.BodySection);
      v132 = sub_1004A4A54();
      v133 = sub_1004A6004();
      v134 = v41;
      if (os_log_type_enabled(v132, v133))
      {
        v135 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v222 = v210;
        *v135 = 68160259;
        LODWORD(v205) = v133;
        *(v135 + 4) = 2;
        *(v135 + 8) = 256;
        v136 = v215;
        v137 = v129 + *(v215 + 20);
        *(v135 + 10) = *v137;
        *(v135 + 11) = 2082;
        v138 = *(v136 + 20);
        v203 = v132;
        v139 = v214;
        v140 = v214 + v138;
        *(v135 + 13) = sub_10015BA6C(*(v214 + v138 + 8), *(v214 + v138 + 16), &v222);
        *(v135 + 21) = 1040;
        *(v135 + 23) = 2;
        *(v135 + 27) = 512;
        LOWORD(v137) = *(v137 + 24);
        sub_100050F20(v129, type metadata accessor for MailboxTaskLogger);
        *(v135 + 29) = v137;
        *(v135 + 31) = 2160;
        *(v135 + 33) = 0x786F626C69616DLL;
        *(v135 + 41) = 2085;
        v141 = *(v140 + 4);
        v142 = *(v140 + 10);

        sub_100050F20(v139, type metadata accessor for MailboxTaskLogger);
        v220 = v141;
        v221 = v142;
        v143 = sub_1004A5824();
        v145 = sub_10015BA6C(v143, v144, &v222);

        *(v135 + 43) = v145;
        *(v135 + 51) = 1024;
        *(v135 + 53) = v216;
        *(v135 + 57) = 2048;
        v146 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v102 = v212;
        v103 = *(v212 + 8);
        v103(v130, v134);
        *(v135 + 59) = v146;
        *(v135 + 67) = 1024;
        v147 = v213;
        *(v135 + 69) = v213;
        *(v135 + 73) = 2082;
        v148 = SectionSpecifier.debugDescription.getter(v131->isa, v131[1].isa, LOBYTE(v131[2].isa));
        v150 = v149;
        sub_100050F20(v131, type metadata accessor for MessageData.BodySection);
        v151 = sub_10015BA6C(v148, v150, &v222);

        *(v135 + 75) = v151;
        v152 = v147;
        v153 = v203;
        _os_log_impl(&_mh_execute_header, v203, v205, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes (offset %u) for section '%{public}s'", v135, 0x53u);
        swift_arrayDestroy();

        v82 = v219;
      }

      else
      {
        v156 = v212;
        v103 = *(v212 + 8);
        v103(v130, v134);
        v157 = v129;
        v102 = v156;
        sub_100050F20(v157, type metadata accessor for MailboxTaskLogger);

        v152 = v213;
        sub_100050F20(v214, type metadata accessor for MailboxTaskLogger);
        sub_100050F20(v131, type metadata accessor for MessageData.BodySection);
      }

      v155 = v217;
      v51 = v193;
    }

    v158 = v211;
    sub_100127F9C(v51, v152, v82);
    v159 = v51;
    if (!v155)
    {
      if (!*(v158 + 52))
      {
        v160 = *(v158 + 40);
        v161 = v207;
        sub_100129238(v160);
        v162 = v206;
        sub_1004A45C4();
        v163 = sub_1004A45E4();
        v164 = *(v208 + 8);
        v165 = v162;
        v166 = v209;
        v164(v165, v209);
        v167 = v161;
        v168 = v194;
        v169 = v166;
        v170 = v196;
        v164(v167, v169);
        v171 = v195;
        if (v163)
        {
          sub_100050EB8(v82, v195, type metadata accessor for MailboxTaskLogger);
          sub_100050EB8(v82, v168, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_100050EB8(v218, v170, type metadata accessor for MessageData.BodySection);
          v172 = sub_1004A4A54();
          v173 = sub_1004A6004();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            LODWORD(v218) = v173;
            v175 = v174;
            v176 = swift_slowAlloc();
            v217 = 0;
            v219 = v176;
            v222 = v176;
            *v175 = 68159747;
            *(v175 + 4) = 2;
            *(v175 + 8) = 256;
            v177 = v215;
            v178 = v170;
            v179 = v168;
            v180 = v168 + *(v215 + 20);
            *(v175 + 10) = *v180;
            *(v175 + 11) = 2082;
            v181 = v102;
            v182 = v171 + *(v177 + 20);
            *(v175 + 13) = sub_10015BA6C(*(v182 + 8), *(v182 + 16), &v222);
            *(v175 + 21) = 1040;
            *(v175 + 23) = 2;
            *(v175 + 27) = 512;
            LOWORD(v180) = *(v180 + 24);
            sub_100050F20(v179, type metadata accessor for MailboxTaskLogger);
            *(v175 + 29) = v180;
            *(v175 + 31) = 2160;
            *(v175 + 33) = 0x786F626C69616DLL;
            *(v175 + 41) = 2085;
            v183 = *(v182 + 32);
            LODWORD(v182) = *(v182 + 40);

            sub_100050F20(v171, type metadata accessor for MailboxTaskLogger);
            v220 = v183;
            v221 = v182;
            v184 = sub_1004A5824();
            v186 = sub_10015BA6C(v184, v185, &v222);

            *(v175 + 43) = v186;
            *(v175 + 51) = 1024;
            *(v175 + 53) = v216;
            *(v175 + 57) = 2082;
            v187 = SectionSpecifier.debugDescription.getter(*v178, *(v178 + 8), *(v178 + 16));
            v189 = v188;
            sub_100050F20(v178, type metadata accessor for MessageData.BodySection);
            v190 = sub_10015BA6C(v187, v189, &v222);

            *(v175 + 59) = v190;
            _os_log_impl(&_mh_execute_header, v172, v218, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: All data for section '%{public}s' has been received.", v175, 0x43u);
            swift_arrayDestroy();

            (*(v181 + 8))(v193, v192);
          }

          else
          {
            sub_100050F20(v168, type metadata accessor for MailboxTaskLogger);

            sub_100050F20(v171, type metadata accessor for MailboxTaskLogger);
            v103(v193, v192);
            sub_100050F20(v170, type metadata accessor for MessageData.BodySection);
          }

          return;
        }
      }

      v159 = v193;
    }

    v103(v159, v192);
    return;
  }

  v55 = v53;
  sub_100025F40(v40, &qword_1005CE218, &unk_1004F3FD0);
  if (*(v3 + 52) || (v56 = v207, sub_100129238(*(v3 + 40)), v57 = v206, sub_1004A45C4(), v58 = sub_1004A45E4(), v59 = *(v208 + 8), v60 = v57, v61 = v209, v59(v60, v209), v59(v56, v61), (v58 & 1) == 0))
  {
    v109 = v219;
    v110 = v211;
    sub_100050EB8(v219, v211, type metadata accessor for MailboxTaskLogger);
    v111 = v210;
    sub_100050EB8(v109, v210, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v112 = v212;
    sub_100050EB8(v55, v212, type metadata accessor for MessageData.BodySection);
    v113 = sub_1004A4A54();
    v114 = sub_1004A6014();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v222 = v219;
      *v115 = 68159747;
      *(v115 + 4) = 2;
      *(v115 + 8) = 256;
      v116 = v215;
      v117 = v111 + *(v215 + 20);
      *(v115 + 10) = *v117;
      *(v115 + 11) = 2082;
      v118 = v110 + *(v116 + 20);
      *(v115 + 13) = sub_10015BA6C(*(v118 + 8), *(v118 + 16), &v222);
      *(v115 + 21) = 1040;
      *(v115 + 23) = 2;
      *(v115 + 27) = 512;
      LOWORD(v117) = *(v117 + 12);
      sub_100050F20(v111, type metadata accessor for MailboxTaskLogger);
      *(v115 + 29) = v117;
      *(v115 + 31) = 2160;
      *(v115 + 33) = 0x786F626C69616DLL;
      *(v115 + 41) = 2085;
      v119 = v110;
      v120 = v112;
      v121 = *(v118 + 32);
      LODWORD(v117) = *(v118 + 40);

      sub_100050F20(v119, type metadata accessor for MailboxTaskLogger);
      v220 = v121;
      v221 = v117;
      v122 = sub_1004A5824();
      v124 = sub_10015BA6C(v122, v123, &v222);

      *(v115 + 43) = v124;
      *(v115 + 51) = 1024;
      *(v115 + 53) = v216;
      *(v115 + 57) = 2082;
      v125 = SectionSpecifier.debugDescription.getter(*v120, *(v120 + 8), *(v120 + 16));
      v127 = v126;
      sub_100050F20(v120, type metadata accessor for MessageData.BodySection);
      v128 = sub_10015BA6C(v125, v127, &v222);

      *(v115 + 59) = v128;
      _os_log_impl(&_mh_execute_header, v113, v114, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s'. Message may have been deleted.", v115, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v111, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v110, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v112, type metadata accessor for MessageData.BodySection);
    }

    sub_10005121C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v62 = v219;
    v63 = v198;
    sub_100050EB8(v219, v198, type metadata accessor for MailboxTaskLogger);
    v64 = v197;
    sub_100050EB8(v62, v197, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v65 = v199;
    sub_100050EB8(v55, v199, type metadata accessor for MessageData.BodySection);
    v66 = sub_1004A4A54();
    v67 = sub_1004A6034();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v222 = v219;
      *v68 = 68159747;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v215;
      v70 = v64 + *(v215 + 20);
      *(v68 + 10) = *v70;
      *(v68 + 11) = 2082;
      v71 = v63;
      v72 = v63 + *(v69 + 20);
      *(v68 + 13) = sub_10015BA6C(*(v72 + 8), *(v72 + 16), &v222);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      LOWORD(v70) = *(v70 + 24);
      sub_100050F20(v64, type metadata accessor for MailboxTaskLogger);
      *(v68 + 29) = v70;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v73 = *(v72 + 32);
      LODWORD(v72) = *(v72 + 40);

      sub_100050F20(v71, type metadata accessor for MailboxTaskLogger);
      v220 = v73;
      v221 = v72;
      v74 = sub_1004A5824();
      v76 = sub_10015BA6C(v74, v75, &v222);

      *(v68 + 43) = v76;
      *(v68 + 51) = 1024;
      *(v68 + 53) = v216;
      *(v68 + 57) = 2082;
      v77 = SectionSpecifier.debugDescription.getter(*v65, *(v65 + 8), *(v65 + 16));
      v79 = v78;
      sub_100050F20(v65, type metadata accessor for MessageData.BodySection);
      v80 = sub_10015BA6C(v77, v79, &v222);

      *(v68 + 59) = v80;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s', but we already have all data. Ignoring.", v68, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v64, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v63, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v65, type metadata accessor for MessageData.BodySection);
    }
  }
}

uint64_t sub_10004C0F8()
{
  v1 = *(v0 + 144);
  v24[8] = *(v0 + 128);
  v24[9] = v1;
  v24[10] = *(v0 + 160);
  v25 = *(v0 + 176);
  v2 = *(v0 + 80);
  v24[4] = *(v0 + 64);
  v24[5] = v2;
  v3 = *(v0 + 112);
  v24[6] = *(v0 + 96);
  v24[7] = v3;
  v4 = *(v0 + 16);
  v24[0] = *v0;
  v24[1] = v4;
  v5 = *(v0 + 48);
  v24[2] = *(v0 + 32);
  v24[3] = v5;
  if (sub_10000FE88(v24) != 1)
  {
    return *(UInt32.init(_:)(v24) + 0x50);
  }

  v6 = UInt32.init(_:)(v24);
  v7 = 0;
  v8 = *v6 + 32;
  v9 = *(*v6 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 184;
    v11 = *v8;
    v12 = *(v8 + 16);
    v13 = *(v8 + 48);
    v26[2] = *(v8 + 32);
    v26[3] = v13;
    v26[0] = v11;
    v26[1] = v12;
    v14 = *(v8 + 64);
    v15 = *(v8 + 80);
    v16 = *(v8 + 112);
    v26[6] = *(v8 + 96);
    v26[7] = v16;
    v26[4] = v14;
    v26[5] = v15;
    v17 = *(v8 + 128);
    v18 = *(v8 + 144);
    v19 = *(v8 + 160);
    v27 = *(v8 + 176);
    v26[9] = v18;
    v26[10] = v19;
    v26[8] = v17;
    sub_1000510B4(v26, v23);
    v20 = sub_10004C0F8();
    sub_100051110(v26);
    v8 = v10;
    v21 = __OFADD__(v7, v20);
    v7 += v20;
    if (v21)
    {
      __break(1u);
      return *(UInt32.init(_:)(v24) + 0x50);
    }
  }

  return v7;
}

Swift::Int sub_10004C218(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001419C0(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (*(v12 - 2) >= v14)
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005CDFE0, &qword_1004D01E8);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_10004C550(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10004C3D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10018900C(v2, 0);
  result = sub_100091D88(0, v2, 0);
  v4 = 0;
  v21 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v5) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return 0;
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v10)) | (v4 << 6);
        v14 = *(*(v21 + 48) + 4 * v13);
        v15 = *(v21 + 56) + 16 * v13;
        v16 = *v15;
        v22 = *(v15 + 8);
        v17 = *(v15 + 9);
        result = sub_10004CD58(v14);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          result = sub_100091D88((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v10 &= v10 - 1;
        *(v20 + 40) = v22;
        *(v20 + 41) = v17;
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v89 = v8 + 2;
    v90 = v8[2];
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v8[2 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_10004CB2C((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v12 < v10 == v16 >= v17)
        {
          v7 = v15 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v42 = v8[2];
    v41 = v8[3];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100085288((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v43;
    v44 = v8 + 4;
    v45 = &v8[2 * v42 + 4];
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = v8[4];
          v48 = v8[5];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[2 * v43];
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[2 * v46];
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v8[2 * v43];
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[2 * v46 - 2];
        v85 = *v84;
        v86 = &v44[2 * v46];
        v87 = v86[1];
        sub_10004CB2C((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > v8[2])
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = v8[2];
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove(&v44[2 * v46], v86 + 2, 16 * (v88 - 1 - v46));
        v8[2] = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[2 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[2 * v43];
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[2 * v46];
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (*v34 >= v36)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10004CB2C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_10004CD58(uint64_t a1)
{
  v2 = a1;
  v4 = v1 + 1;
  v3 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v3;
  if ((result & 1) == 0)
  {
    result = sub_100091DA8(0, *(v3 + 16) + 1, 1);
    v3 = *v4;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_100091DA8((v6 > 1), v7 + 1, 1);
    v3 = *v4;
  }

  *(v3 + 16) = v7 + 1;
  *(v3 + 4 * v7 + 32) = v2;
  v1[1] = v3;
  if (!*v1)
  {
    if (v7 < 0xF)
    {
      return result;
    }

    return sub_100188230();
  }

  swift_beginAccess();
  if (sub_1004A4754() <= v7)
  {
    return sub_100188230();
  }

  result = swift_isUniquelyReferenced_native();
  v8 = *v1;
  if ((result & 1) == 0)
  {
    if (!v8)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v9 = sub_1004A4774();

    *v1 = v9;
    v8 = v9;
  }

  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1004A6E94();
  sub_1004A6EE4(v2);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *(v8 + 16), 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (sub_1004A46F4())
  {
    while (1)
    {
      sub_1004A4744();
    }
  }

  return sub_1004A4734();
}

uint64_t sub_10004CF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_100050EB8(a1, &v20 - v12, _s19MessageHeaderStatusOMa);
  sub_100050EB8(a2, &v13[v15], _s19MessageHeaderStatusOMa);
  v16 = *(v5 + 48);
  v17 = v16(v13, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v15], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v16(&v13[v15], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100025F40(v13, &qword_1005CE1F8, &qword_1004D0918);
    v18 = 0;
    return v18 & 1;
  }

  if (!v17)
  {
    sub_100050EB8(v13, v10, _s19MessageHeaderStatusOMa);
    if (!v16(&v13[v15], 3, v4))
    {
      sub_100050F80(&v13[v15], v7, type metadata accessor for MessageHeader);
      v18 = static MessageHeader.== infix(_:_:)(v10, v7);
      sub_100050F20(v7, type metadata accessor for MessageHeader);
      sub_100050F20(v10, type metadata accessor for MessageHeader);
      sub_100050F20(v13, _s19MessageHeaderStatusOMa);
      return v18 & 1;
    }

    sub_100050F20(v10, type metadata accessor for MessageHeader);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_100050F20(v13, _s19MessageHeaderStatusOMa);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_10004D254(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v173 = v2;
  v174 = v3;
  v5 = *(a1 + 152);
  v71 = *(a1 + 136);
  v72 = v5;
  v73 = *(a1 + 168);
  v74 = *(a1 + 184);
  v6 = *(a1 + 88);
  v67 = *(a1 + 72);
  v68 = v6;
  v7 = *(a1 + 120);
  v69 = *(a1 + 104);
  v70 = v7;
  v8 = *(a1 + 24);
  v63 = *(a1 + 8);
  v64 = v8;
  v9 = *(a1 + 56);
  v65 = *(a1 + 40);
  v66 = v9;
  if (sub_10003EC1C(&v63) == 1)
  {
    v10 = *(a2 + 152);
    v169 = *(a2 + 136);
    v170 = v10;
    v171 = *(a2 + 168);
    v172 = *(a2 + 184);
    v11 = *(a2 + 88);
    v165 = *(a2 + 72);
    v166 = v11;
    v12 = *(a2 + 120);
    v167 = *(a2 + 104);
    v168 = v12;
    v13 = *(a2 + 24);
    v161 = *(a2 + 8);
    v162 = v13;
    v14 = *(a2 + 56);
    v163 = *(a2 + 40);
    v164 = v14;
    result = sub_10003EC1C(&v161);
    goto LABEL_5;
  }

  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v16 = *(a2 + 152);
  v121 = *(a2 + 136);
  v122 = v16;
  v123 = *(a2 + 168);
  v124 = *(a2 + 184);
  v17 = *(a2 + 88);
  v117 = *(a2 + 72);
  v118 = v17;
  v18 = *(a2 + 120);
  v119 = *(a2 + 104);
  v120 = v18;
  v19 = *(a2 + 24);
  v113 = *(a2 + 8);
  v114 = v19;
  v20 = *(a2 + 56);
  v115 = *(a2 + 40);
  v116 = v20;
  if (sub_10003EC1C(&v113) == 1)
  {
    return 0;
  }

  v133 = v121;
  v134 = v122;
  v135 = v123;
  v136 = v124;
  v129 = v117;
  v130 = v118;
  v131 = v119;
  v132 = v120;
  v125 = v113;
  v126 = v114;
  v127 = v115;
  v128 = v116;
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v98 = v86;
  v91 = v79;
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v90 = v78;
  if (sub_10000FE74(&v87) != 1)
  {
    v107 = v95;
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v103 = v91;
    v104 = v92;
    v105 = v93;
    v106 = v94;
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v145 = v133;
    v146 = v134;
    v147 = v135;
    v148 = v136;
    v141 = v129;
    v142 = v130;
    v143 = v131;
    v144 = v132;
    v137 = v125;
    v138 = v126;
    v139 = v127;
    v140 = v128;
    if (sub_10000FE74(&v137) == 1)
    {
      return 0;
    }

    v157 = v145;
    v158 = v146;
    v159 = v147;
    v160 = v148;
    v153 = v141;
    v154 = v142;
    v155 = v143;
    v156 = v144;
    v149 = v137;
    v150 = v138;
    v151 = v139;
    v152 = v140;
    v111[8] = v107;
    v111[9] = v108;
    v111[10] = v109;
    v112 = v110;
    v111[4] = v103;
    v111[5] = v104;
    v111[6] = v105;
    v111[7] = v106;
    v111[0] = v99;
    v111[1] = v100;
    v111[2] = v101;
    v111[3] = v102;
    if (sub_10000FE88(v111) == 1)
    {
      v21 = UInt32.init(_:)(v111);
      v22 = *(v21 + 80);
      v45 = *(v21 + 64);
      v46 = v22;
      v47 = *(v21 + 96);
      *&v48 = *(v21 + 112);
      v23 = *(v21 + 16);
      v41 = *v21;
      v42 = v23;
      v24 = *(v21 + 48);
      v43 = *(v21 + 32);
      v44 = v24;
      v169 = v157;
      v170 = v158;
      v171 = v159;
      v172 = v160;
      v165 = v153;
      v166 = v154;
      v167 = v155;
      v168 = v156;
      v161 = v149;
      v162 = v150;
      v163 = v151;
      v164 = v152;
      if (sub_10000FE88(&v161) == 1)
      {
        v25 = UInt32.init(_:)(&v161);
        v26 = *(v25 + 80);
        v56 = *(v25 + 64);
        v57 = v26;
        v58 = *(v25 + 96);
        *&v59 = *(v25 + 112);
        v27 = *(v25 + 16);
        v52 = *v25;
        v53 = v27;
        v28 = *(v25 + 48);
        v54 = *(v25 + 32);
        v55 = v28;
        return (static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v41, &v52) & 1) != 0;
      }
    }

    else
    {
      v29 = UInt32.init(_:)(v111);
      v30 = v29[9];
      v49 = v29[8];
      v50 = v30;
      v51 = v29[10];
      v31 = v29[5];
      v45 = v29[4];
      v46 = v31;
      v32 = v29[7];
      v47 = v29[6];
      v48 = v32;
      v33 = v29[1];
      v41 = *v29;
      v42 = v33;
      v34 = v29[3];
      v43 = v29[2];
      v44 = v34;
      v172 = v160;
      v170 = v158;
      v171 = v159;
      v168 = v156;
      v169 = v157;
      v166 = v154;
      v167 = v155;
      v164 = v152;
      v165 = v153;
      v162 = v150;
      v163 = v151;
      v161 = v149;
      if (sub_10000FE88(&v161) != 1)
      {
        v35 = UInt32.init(_:)(&v161);
        v36 = v35[9];
        v60 = v35[8];
        v61 = v36;
        v62 = v35[10];
        v37 = v35[5];
        v56 = v35[4];
        v57 = v37;
        v38 = v35[7];
        v58 = v35[6];
        v59 = v38;
        v39 = v35[1];
        v52 = *v35;
        v53 = v39;
        v40 = v35[3];
        v54 = v35[2];
        v55 = v40;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v41, &v52);
      }
    }

    UInt32.init(_:)(&v161);
    return 0;
  }

  v169 = v133;
  v170 = v134;
  v171 = v135;
  v172 = v136;
  v165 = v129;
  v166 = v130;
  v167 = v131;
  v168 = v132;
  v161 = v125;
  v162 = v126;
  v163 = v127;
  v164 = v128;
  result = sub_10000FE74(&v161);
LABEL_5:
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10004D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v53 = type metadata accessor for MessageHeader(0);
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v39 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  __chkstk_darwin(v45);
  v46 = v38 - v8;
  v9 = _s19MessageHeaderStatusOMa(0);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v48 = v38 - v11;
  __chkstk_darwin(v12);
  v51 = v38 - v14;
  v15 = *(a1 + 16);
  v16 = v15 == 0;
  if (v15)
  {
    v40 = v13;
    v38[1] = v4;
    v52 = (v6 + 48);
    v44 = (v6 + 56);
    v17 = 0;
    v50 = _s25MessageSectionsToDownloadVMa(0);
    v18 = (a1 + ((*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80)));
    v49 = *(*(v50 - 8) + 72);
    v43 = v15;
    while (1)
    {
      v19 = v50;
      v20 = v51;
      v21 = *(v50 + 20);
      sub_100050EB8(v18 + v21, v51, _s19MessageHeaderStatusOMa);
      v22 = *v52;
      v23 = (*v52)(v20, 3, v53);
      sub_100050F20(v20, _s19MessageHeaderStatusOMa);
      if (*(*(v18 + *(v19 + 24)) + 16))
      {
        goto LABEL_5;
      }

      v47 = v16;
      v24 = v48;
      (*v44)(v48, 1, 3, v53);
      v25 = *(v45 + 48);
      v26 = v18 + v21;
      v27 = v46;
      sub_100050EB8(v26, v46, _s19MessageHeaderStatusOMa);
      sub_100050EB8(v24, v27 + v25, _s19MessageHeaderStatusOMa);
      v28 = v22(v27, 3, v53);
      if (v28 > 1)
      {
        break;
      }

      v29 = v23;
      if (v28)
      {
        v32 = v22(v27 + v25, 3, v53) == 1;
        goto LABEL_15;
      }

      v30 = v40;
      sub_100050EB8(v27, v40, _s19MessageHeaderStatusOMa);
      if (!v22(v27 + v25, 3, v53))
      {
        v33 = v27 + v25;
        v34 = v39;
        sub_100050F80(v33, v39, type metadata accessor for MessageHeader);
        v35 = static MessageHeader.== infix(_:_:)(v30, v34);
        v36 = v34;
        v27 = v46;
        sub_100050F20(v36, type metadata accessor for MessageHeader);
        v29 = v23;
        sub_100050F20(v30, type metadata accessor for MessageHeader);
        if (v35)
        {
LABEL_3:
          sub_100050F20(v27, _s19MessageHeaderStatusOMa);
          sub_100050F20(v48, _s19MessageHeaderStatusOMa);
          v15 = v43;
LABEL_4:
          if ((sub_10001EE3C(*v18 | 0x200000000, v41, v42) & 1) == 0)
          {
            return v17;
          }

          goto LABEL_5;
        }

        sub_100050F20(v27, _s19MessageHeaderStatusOMa);
        goto LABEL_17;
      }

      sub_100050F20(v30, type metadata accessor for MessageHeader);
LABEL_16:
      sub_100025F40(v27, &qword_1005CE1F8, &qword_1004D0918);
LABEL_17:
      v15 = v43;
      sub_100050F20(v48, _s19MessageHeaderStatusOMa);
      if (!v29)
      {
        goto LABEL_4;
      }

LABEL_5:
      ++v17;
      v18 = (v18 + v49);
      v16 = v15 == v17;
      if (v15 == v17)
      {
        return 0;
      }
    }

    v32 = v28 == 2;
    v29 = v23;
    v31 = v27 + v25;
    if (v32)
    {
      v32 = v22(v31, 3, v53) == 2;
    }

    else
    {
      v32 = v22(v31, 3, v53) == 3;
    }

LABEL_15:
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10004DDC8(unsigned int a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a6;
  v87 = a1;
  v10 = a2[9];
  v121 = a2[8];
  v122 = v10;
  v123 = a2[10];
  v124 = *(a2 + 176);
  v11 = a2[5];
  v117 = a2[4];
  v118 = v11;
  v12 = a2[7];
  v119 = a2[6];
  v120 = v12;
  v13 = a2[1];
  v113 = *a2;
  v114 = v13;
  v14 = a2[3];
  v115 = a2[2];
  v116 = v14;
  v15 = _s25MessageSectionsToDownloadVMa(0);
  v82 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v84 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v79);
  v81 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v75[-v19];
  v86 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v86);
  v22 = &v75[-v21];
  v88 = type metadata accessor for DownloadTask.CommandID(0);
  v23 = *(v88 - 8);
  __chkstk_darwin(v88);
  v25 = &v75[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v75[-v27];
  v29 = sub_100078B2C(a4, a5);
  v30 = v29;
  v31 = v29[2];
  if (v31)
  {
    v77 = v20;
    v78 = a2;
    v76 = a3;
    v32 = 0;
    v33 = v29 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v85 = v33;
    while (v32 < v30[2])
    {
      sub_100050EB8(&v33[*(v23 + 72) * v32], v28, type metadata accessor for DownloadTask.CommandID);
      sub_100050EB8(v28, v25, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100050F20(v28, type metadata accessor for DownloadTask.CommandID);
        sub_100050F20(v25, type metadata accessor for DownloadTask.CommandID);
      }

      else
      {
        sub_100025FDC(v25, v22, &unk_1005D91B0, &unk_1004CF400);
        LODWORD(v101) = v87;
        v34 = MessageIdentifierSet.contains(_:)(&v101, v86);
        v33 = v85;
        sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
        sub_100050F20(v28, type metadata accessor for DownloadTask.CommandID);
        if (v34)
        {

          v35 = v80;
          v36 = v77;
          sub_100050EB8(v80, v77, type metadata accessor for MailboxTaskLogger);
          v37 = v81;
          sub_100050EB8(v35, v81, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v38 = sub_1004A4A54();
          v39 = sub_1004A6034();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *&v89 = swift_slowAlloc();
            *v40 = 68159491;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v41 = v79;
            v42 = &v37[*(v79 + 20)];
            *(v40 + 10) = *v42;
            *(v40 + 11) = 2082;
            v43 = v36 + *(v41 + 20);
            *(v40 + 13) = sub_10015BA6C(*(v43 + 8), *(v43 + 16), &v89);
            *(v40 + 21) = 1040;
            *(v40 + 23) = 2;
            *(v40 + 27) = 512;
            LOWORD(v42) = *(v42 + 12);
            sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);
            *(v40 + 29) = v42;
            *(v40 + 31) = 2160;
            *(v40 + 33) = 0x786F626C69616DLL;
            *(v40 + 41) = 2085;
            v44 = *(v43 + 32);
            LODWORD(v43) = *(v43 + 40);

            sub_100050F20(v36, type metadata accessor for MailboxTaskLogger);
            *&v101 = v44;
            DWORD2(v101) = v43;
            v45 = sub_1004A5824();
            v47 = sub_10015BA6C(v45, v46, &v89);

            *(v40 + 43) = v47;
            *(v40 + 51) = 1024;
            v23 = v87;
            *(v40 + 53) = v87;
            _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive body structure for message %u.", v40, 0x39u);
            swift_arrayDestroy();

            v25 = v83;
          }

          else
          {
            sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);

            sub_100050F20(v36, type metadata accessor for MailboxTaskLogger);
            v25 = v83;
            v23 = v87;
          }

          v49 = v78;
          v50 = v82;
          v51 = _s18InProgressMessagesVMa(0);
          v52 = v51[11];
          sub_10003E6D4(v49, &v101);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101 = *&v25[v52];
          result = sub_10001CE90(v49, v23, isUniquelyReferenced_nonNull_native);
          *&v25[v52] = v101;
          v88 = v51[7];
          v22 = *&v25[v88];
          v54 = *(v22 + 2) + 1;
          v55 = 32;
          while (--v54)
          {
            v56 = *&v22[v55];
            v55 += 192;
            if (v56 == v23)
            {
              return result;
            }
          }

          v57 = 0;
          v58 = *&v25[v51[8]];
          v59 = *(v58 + 16);
          while (v59 != v57)
          {
            if (v57 >= *(v58 + 16))
            {
              goto LABEL_29;
            }

            v60 = v84;
            sub_100050EB8(v58 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v57++, v84, _s25MessageSectionsToDownloadVMa);
            v61 = *v60;
            result = sub_100050F20(v60, _s25MessageSectionsToDownloadVMa);
            if (v61 == v23)
            {
              return result;
            }
          }

          sub_10003E6D4(v78, &v101);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v62 = v76;
            v64 = *(v22 + 2);
            v63 = *(v22 + 3);
            if (v64 >= v63 >> 1)
            {
              v22 = sub_100085E34((v63 > 1), v64 + 1, 1, v22);
            }

            v97 = v121;
            v98 = v122;
            v99 = v123;
            v100 = v124;
            v93 = v117;
            v94 = v118;
            v95 = v119;
            v96 = v120;
            v89 = v113;
            v90 = v114;
            v91 = v115;
            v92 = v116;
            result = UInt32.init(_:)(&v89);
            v103 = v91;
            v104 = v92;
            v107 = v95;
            v108 = v96;
            v105 = v93;
            v106 = v94;
            v112 = v100;
            v110 = v98;
            v111 = v99;
            v109 = v97;
            v101 = v89;
            v102 = v90;
            *(v22 + 2) = v64 + 1;
            v65 = &v22[192 * v64];
            *(v65 + 8) = v23;
            *(v65 + 9) = v62;
            v66 = v101;
            v67 = v102;
            v68 = v103;
            *(v65 + 88) = v104;
            *(v65 + 72) = v68;
            *(v65 + 56) = v67;
            *(v65 + 40) = v66;
            v69 = v105;
            v70 = v106;
            v71 = v107;
            *(v65 + 152) = v108;
            *(v65 + 136) = v71;
            *(v65 + 120) = v70;
            *(v65 + 104) = v69;
            v72 = v109;
            v73 = v110;
            v74 = v111;
            v65[216] = v112;
            *(v65 + 200) = v74;
            *(v65 + 184) = v73;
            *(v65 + 168) = v72;
            *&v25[v88] = v22;
            return result;
          }

LABEL_30:
          v22 = sub_100085E34(0, *(v22 + 2) + 1, 1, v22);
          goto LABEL_25;
        }
      }

      if (v31 == ++v32)
      {
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_10004E67C(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a3;
  v129 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10);
  v117 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v114 - v13;
  __chkstk_darwin(v14);
  v126 = &v114 - v15;
  __chkstk_darwin(v16);
  v122 = &v114 - v17;
  __chkstk_darwin(v18);
  v118 = &v114 - v19;
  __chkstk_darwin(v20);
  v119 = &v114 - v21;
  v22 = _s25MessageSectionsToDownloadVMa(0);
  v125 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v124 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v128);
  v25 = &v114 - v24;
  v130 = type metadata accessor for DownloadTask.CommandID(0);
  v26 = *(v130 - 8);
  __chkstk_darwin(v130);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v114 - v30;
  v32 = sub_100078B2C(a4, a5);
  v33 = v32;
  v34 = v32[2];
  if (v34)
  {
    v114 = v10;
    v115 = a6;
    v116 = a2;
    v35 = 0;
    v36 = v32 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v127 = v31;
    while (v35 < v33[2])
    {
      sub_100050EB8(v36 + *(v26 + 72) * v35, v31, type metadata accessor for DownloadTask.CommandID);
      sub_100050EB8(v31, v28, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025FDC(v28, v25, &unk_1005D91B0, &unk_1004CF400);
        LODWORD(v169) = v129;
        v37 = MessageIdentifierSet.contains(_:)(&v169, v128);
        v31 = v127;
        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
        sub_100050F20(v31, type metadata accessor for DownloadTask.CommandID);
        if (v37)
        {

          result = _s18InProgressMessagesVMa(0);
          v130 = *(result + 28);
          v39 = v122;
          v36 = *(v123 + v130);
          v40 = *(v36 + 16) + 1;
          v41 = 32;
          LODWORD(v28) = v129;
          v42 = v126;
          while (--v40)
          {
            v43 = *(v36 + v41);
            v41 += 192;
            if (v43 == v129)
            {
              return result;
            }
          }

          v44 = 0;
          v45 = v124;
          v46 = *(v123 + *(result + 32));
          v47 = *(v46 + 16);
          while (v47 != v44)
          {
            if (v44 >= *(v46 + 16))
            {
              goto LABEL_47;
            }

            sub_100050EB8(v46 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v44++, v45, _s25MessageSectionsToDownloadVMa);
            v48 = *v45;
            result = sub_100050F20(v45, _s25MessageSectionsToDownloadVMa);
            v49 = v48 == v28;
            v42 = v126;
            if (v49)
            {
              return result;
            }
          }

          v50 = *(v123 + 16);
          if (*(v50 + 16))
          {
            v51 = sub_100067004();
            v52 = v121;
            if (v53)
            {
              v54 = (*(v50 + 56) + 184 * v51);
              v56 = v54[2];
              v55 = v54[3];
              v57 = v54[1];
              v145 = *v54;
              v146 = v57;
              v147 = v56;
              v148 = v55;
              v58 = v54[4];
              v59 = v54[5];
              v60 = v54[7];
              v151 = v54[6];
              v152 = v60;
              v149 = v58;
              v150 = v59;
              v61 = v54[8];
              v62 = v54[9];
              v63 = v54[10];
              v156 = *(v54 + 176);
              v154 = v62;
              v155 = v63;
              v153 = v61;
              memmove(&v157, v54, 0xB1uLL);
              UInt32.init(_:)(&v157);
              sub_10003E6D4(&v145, &v169);
              v177 = v165;
              v178 = v166;
              v179 = v167;
              v180 = v168;
              v173 = v161;
              v174 = v162;
              v175 = v163;
              v176 = v164;
              v169 = v157;
              v170 = v158;
              v171 = v159;
              v172 = v160;
            }

            else
            {
              sub_1000503E0(&v169);
            }
          }

          else
          {
            sub_1000503E0(&v169);
            v52 = v121;
          }

          if (v120)
          {
            sub_100025F40(&v169, &qword_1005CDFD0, &qword_1004EE450);
            v64 = v115;
            v65 = v119;
            sub_100050EB8(v115, v119, type metadata accessor for MailboxTaskLogger);
            v66 = v118;
            sub_100050EB8(v64, v118, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v67 = sub_1004A4A54();
            v68 = sub_1004A6034();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              *&v133 = v128;
              *v69 = 68159491;
              *(v69 + 4) = 2;
              *(v69 + 8) = 256;
              v70 = v114;
              v71 = v66 + *(v114 + 20);
              *(v69 + 10) = *v71;
              *(v69 + 11) = 2082;
              v72 = v65;
              v73 = v65 + *(v70 + 20);
              *(v69 + 13) = sub_10015BA6C(*(v73 + 8), *(v73 + 16), &v133);
              *(v69 + 21) = 1040;
              *(v69 + 23) = 2;
              *(v69 + 27) = 512;
              LOWORD(v71) = *(v71 + 24);
              sub_100050F20(v66, type metadata accessor for MailboxTaskLogger);
              *(v69 + 29) = v71;
              *(v69 + 31) = 2160;
              *(v69 + 33) = 0x786F626C69616DLL;
              *(v69 + 41) = 2085;
              v74 = *(v73 + 32);
              LODWORD(v73) = *(v73 + 40);

              sub_100050F20(v72, type metadata accessor for MailboxTaskLogger);
              *&v145 = v74;
              DWORD2(v145) = v73;
              v75 = sub_1004A5824();
              v28 = sub_10015BA6C(v75, v76, &v133);

              *(v69 + 43) = v28;
              LODWORD(v28) = v129;
              *(v69 + 51) = 1024;
              *(v69 + 53) = v28;
              _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u.", v69, 0x39u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100050F20(v66, type metadata accessor for MailboxTaskLogger);

              sub_100050F20(v65, type metadata accessor for MailboxTaskLogger);
            }

            sub_1000503E0(&v157);
          }

          else
          {
            v153 = v177;
            v154 = v178;
            v155 = v179;
            v156 = v180;
            v149 = v173;
            v150 = v174;
            v151 = v175;
            v152 = v176;
            v145 = v169;
            v146 = v170;
            v147 = v171;
            v148 = v172;
            if (sub_10003EC1C(&v145) == 1)
            {
              v77 = v115;
              sub_100050EB8(v115, v52, type metadata accessor for MailboxTaskLogger);
              v78 = v117;
              sub_100050EB8(v77, v117, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v79 = sub_1004A4A54();
              v80 = sub_1004A6014();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v128 = swift_slowAlloc();
                *&v131[0] = v128;
                *v81 = 68159491;
                *(v81 + 4) = 2;
                *(v81 + 8) = 256;
                v82 = v114;
                v83 = v78 + *(v114 + 20);
                *(v81 + 10) = *v83;
                *(v81 + 11) = 2082;
                v84 = v52 + *(v82 + 20);
                *(v81 + 13) = sub_10015BA6C(*(v84 + 8), *(v84 + 16), v131);
                *(v81 + 21) = 1040;
                *(v81 + 23) = 2;
                *(v81 + 27) = 512;
                LOWORD(v83) = *(v83 + 24);
                sub_100050F20(v78, type metadata accessor for MailboxTaskLogger);
                *(v81 + 29) = v83;
                *(v81 + 31) = 2160;
                *(v81 + 33) = 0x786F626C69616DLL;
                *(v81 + 41) = 2085;
                v85 = *(v84 + 32);
                LODWORD(v84) = *(v84 + 40);

                sub_100050F20(v52, type metadata accessor for MailboxTaskLogger);
                *&v133 = v85;
                DWORD2(v133) = v84;
                v86 = sub_1004A5824();
                v28 = sub_10015BA6C(v86, v87, v131);

                *(v81 + 43) = v28;
                LODWORD(v28) = v129;
                *(v81 + 51) = 1024;
                *(v81 + 53) = v28;
                _os_log_impl(&_mh_execute_header, v79, v80, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Missing body structure.", v81, 0x39u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100050F20(v78, type metadata accessor for MailboxTaskLogger);

                sub_100050F20(v52, type metadata accessor for MailboxTaskLogger);
              }

              sub_100051270(v131);
              v141 = v131[8];
              v142 = v131[9];
              v143 = v131[10];
              v144 = v132;
              v137 = v131[4];
              v138 = v131[5];
              v139 = v131[6];
              v140 = v131[7];
              v133 = v131[0];
              v134 = v131[1];
              v99 = v131[2];
              v100 = v131[3];
            }

            else
            {
              LODWORD(v131[0]) = v28;
              MessageIdentifierSet.insert(_:)(&v133, v131, v128);
              v88 = v115;
              sub_100050EB8(v115, v39, type metadata accessor for MailboxTaskLogger);
              sub_100050EB8(v88, v42, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v89 = sub_1004A4A54();
              v90 = sub_1004A6034();
              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                LODWORD(v127) = v90;
                v92 = v91;
                v128 = swift_slowAlloc();
                *&v131[0] = v128;
                *v92 = 68159491;
                *(v92 + 4) = 2;
                *(v92 + 8) = 256;
                v93 = v114;
                v94 = v42 + *(v114 + 20);
                *(v92 + 10) = *v94;
                *(v92 + 11) = 2082;
                v95 = v39 + *(v93 + 20);
                *(v92 + 13) = sub_10015BA6C(*(v95 + 8), *(v95 + 16), v131);
                *(v92 + 21) = 1040;
                *(v92 + 23) = 2;
                *(v92 + 27) = 512;
                LOWORD(v94) = *(v94 + 24);
                sub_100050F20(v42, type metadata accessor for MailboxTaskLogger);
                *(v92 + 29) = v94;
                *(v92 + 31) = 2160;
                *(v92 + 33) = 0x786F626C69616DLL;
                *(v92 + 41) = 2085;
                v96 = *(v95 + 32);
                LODWORD(v95) = *(v95 + 40);

                sub_100050F20(v39, type metadata accessor for MailboxTaskLogger);
                *&v133 = v96;
                DWORD2(v133) = v95;
                v97 = sub_1004A5824();
                v28 = sub_10015BA6C(v97, v98, v131);

                *(v92 + 43) = v28;
                LODWORD(v28) = v129;
                *(v92 + 51) = 1024;
                *(v92 + 53) = v28;
                _os_log_impl(&_mh_execute_header, v89, v127, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Using cached body structure.", v92, 0x39u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100050F20(v42, type metadata accessor for MailboxTaskLogger);

                sub_100050F20(v39, type metadata accessor for MailboxTaskLogger);
              }

              v141 = v153;
              v142 = v154;
              v143 = v155;
              v144 = v156;
              v137 = v149;
              v138 = v150;
              v139 = v151;
              v140 = v152;
              v133 = v145;
              v134 = v146;
              v99 = v147;
              v100 = v148;
            }

            v135 = v99;
            v136 = v100;
            UInt32.init(_:)(&v133);
            v165 = v141;
            v166 = v142;
            v167 = v143;
            v168 = v144;
            v161 = v137;
            v162 = v138;
            v163 = v139;
            v164 = v140;
            v157 = v133;
            v158 = v134;
            v159 = v135;
            v160 = v136;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_43:
            v102 = *(v36 + 16);
            v101 = *(v36 + 24);
            if (v102 >= v101 >> 1)
            {
              result = sub_100085E34((v101 > 1), v102 + 1, 1, v36);
              v36 = result;
            }

            v147 = v159;
            v148 = v160;
            v151 = v163;
            v152 = v164;
            v149 = v161;
            v150 = v162;
            v156 = v168;
            v154 = v166;
            v155 = v167;
            v153 = v165;
            v145 = v157;
            v146 = v158;
            *(v36 + 16) = v102 + 1;
            v103 = v36 + 192 * v102;
            v104 = v116;
            *(v103 + 32) = v28;
            *(v103 + 36) = v104;
            v105 = v145;
            v106 = v146;
            v107 = v147;
            *(v103 + 88) = v148;
            *(v103 + 72) = v107;
            *(v103 + 56) = v106;
            *(v103 + 40) = v105;
            v108 = v149;
            v109 = v150;
            v110 = v151;
            *(v103 + 152) = v152;
            *(v103 + 136) = v110;
            *(v103 + 120) = v109;
            *(v103 + 104) = v108;
            v111 = v153;
            v112 = v154;
            v113 = v155;
            *(v103 + 216) = v156;
            *(v103 + 200) = v113;
            *(v103 + 184) = v112;
            *(v103 + 168) = v111;
            *(v123 + v130) = v36;
            return result;
          }

LABEL_48:
          result = sub_100085E34(0, *(v36 + 16) + 1, 1, v36);
          v36 = result;
          goto LABEL_43;
        }
      }

      else
      {
        sub_100050F20(v31, type metadata accessor for DownloadTask.CommandID);
        sub_100050F20(v28, type metadata accessor for DownloadTask.CommandID);
      }

      if (v34 == ++v35)
      {
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_10004F60C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v12);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v79 - v15;
  __chkstk_darwin(v16);
  v85 = &v79 - v17;
  __chkstk_darwin(v18);
  v87 = &v79 - v19;
  result = _s18InProgressMessagesVMa(0);
  v21 = *(v6 + *(result + 28));
  v22 = *(v21 + 16);
  if (v22)
  {
    v80 = v12;
    v81 = a1;
    v82 = a2;
    v83 = a3;
    v23 = 0;
    v24 = (v21 + 32);
    while (v23 < *(v21 + 16))
    {
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      *&v126[32] = v24[2];
      *&v126[48] = v27;
      *v126 = v25;
      *&v126[16] = v26;
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[7];
      *&v126[96] = v24[6];
      *&v126[112] = v30;
      *&v126[64] = v28;
      *&v126[80] = v29;
      v31 = v24[8];
      v32 = v24[9];
      v33 = v24[10];
      *&v126[169] = *(v24 + 169);
      *&v126[144] = v32;
      *&v126[160] = v33;
      *&v126[128] = v31;
      v34 = *v126;
      sub_10005104C(v126, &v114);
      if ((sub_10001EE3C(v34, a4, a5) & 1) == 0)
      {
        v110 = *&v126[136];
        v111 = *&v126[152];
        v112 = *&v126[168];
        v113 = v126[184];
        v106 = *&v126[72];
        v107 = *&v126[88];
        v108 = *&v126[104];
        v109 = *&v126[120];
        v102 = *&v126[8];
        v103 = *&v126[24];
        v104 = *&v126[40];
        v105 = *&v126[56];
        if (sub_10003EC1C(&v102) == 1)
        {
          sub_1000503E0(&v90);
          v35 = v88;
          v36 = v86;
          sub_100050EB8(v88, v86, type metadata accessor for MailboxTaskLogger);
          v37 = v84;
          sub_100050EB8(v35, v84, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10005104C(v126, &v114);
          sub_10005104C(v126, &v114);
          v38 = sub_1004A4A54();
          v39 = sub_1004A6034();
          v40 = os_log_type_enabled(v38, v39);
          v41 = v80;
          if (v40)
          {
            v42 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v89 = v88;
            *v42 = 68159491;
            LODWORD(v87) = v39;
            *(v42 + 4) = 2;
            *(v42 + 8) = 256;
            v43 = v37;
            v44 = v37 + *(v41 + 20);
            *(v42 + 10) = *v44;
            *(v42 + 11) = 2082;
            v45 = v36 + *(v41 + 20);
            *(v42 + 13) = sub_10015BA6C(*(v45 + 8), *(v45 + 16), &v89);
            *(v42 + 21) = 1040;
            *(v42 + 23) = 2;
            *(v42 + 27) = 512;
            v46 = *(v44 + 24);
            sub_100050F20(v43, type metadata accessor for MailboxTaskLogger);
            *(v42 + 29) = v46;
            *(v42 + 31) = 2160;
            *(v42 + 33) = 0x786F626C69616DLL;
            *(v42 + 41) = 2085;
            v47 = *(v45 + 32);
            LODWORD(v45) = *(v45 + 40);

            sub_100050F20(v36, type metadata accessor for MailboxTaskLogger);
            *&v114 = v47;
            DWORD2(v114) = v45;
            v48 = sub_1004A5824();
            v50 = sub_10015BA6C(v48, v49, &v89);

            *(v42 + 43) = v50;
            *(v42 + 51) = 1024;
            sub_100051084(v126);
            *(v42 + 53) = v34;
            sub_100051084(v126);
            _os_log_impl(&_mh_execute_header, v38, v87, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u.", v42, 0x39u);
            swift_arrayDestroy();

            goto LABEL_12;
          }

          sub_100051084(v126);
          sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);
          sub_100051084(v126);

          v68 = v36;
LABEL_15:
          sub_100050F20(v68, type metadata accessor for MailboxTaskLogger);
        }

        else
        {
          v98 = v110;
          v99 = v111;
          v100 = v112;
          v101 = v113;
          v94 = v106;
          v95 = v107;
          v96 = v108;
          v97 = v109;
          v90 = v102;
          v91 = v103;
          v92 = v104;
          v93 = v105;
          UInt32.init(_:)(&v90);
          v52 = v87;
          v51 = v88;
          sub_100050EB8(v88, v87, type metadata accessor for MailboxTaskLogger);
          v53 = v85;
          sub_100050EB8(v51, v85, type metadata accessor for MailboxTaskLogger);
          sub_10005104C(v126, &v114);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10005104C(v126, &v114);
          sub_10005104C(v126, &v114);
          v38 = sub_1004A4A54();
          v54 = sub_1004A6034();
          v55 = os_log_type_enabled(v38, v54);
          v56 = v80;
          if (!v55)
          {
            sub_100051084(v126);
            sub_100050F20(v53, type metadata accessor for MailboxTaskLogger);
            sub_100051084(v126);

            v68 = v52;
            goto LABEL_15;
          }

          v57 = swift_slowAlloc();
          LODWORD(v86) = v54;
          v58 = v57;
          v88 = swift_slowAlloc();
          v89 = v88;
          *v58 = 68159491;
          *(v58 + 4) = 2;
          *(v58 + 8) = 256;
          v59 = v53 + *(v56 + 20);
          *(v58 + 10) = *v59;
          *(v58 + 11) = 2082;
          v60 = *(v56 + 20);
          v61 = v53;
          v62 = v52;
          v63 = v52 + v60;
          *(v58 + 13) = sub_10015BA6C(*(v63 + 8), *(v63 + 16), &v89);
          *(v58 + 21) = 1040;
          *(v58 + 23) = 2;
          *(v58 + 27) = 512;
          LOWORD(v59) = *(v59 + 24);
          sub_100050F20(v61, type metadata accessor for MailboxTaskLogger);
          *(v58 + 29) = v59;
          *(v58 + 31) = 2160;
          *(v58 + 33) = 0x786F626C69616DLL;
          *(v58 + 41) = 2085;
          v64 = *(v63 + 32);
          LODWORD(v59) = *(v63 + 40);

          sub_100050F20(v62, type metadata accessor for MailboxTaskLogger);
          *&v114 = v64;
          DWORD2(v114) = v59;
          v65 = sub_1004A5824();
          v67 = sub_10015BA6C(v65, v66, &v89);

          *(v58 + 43) = v67;
          *(v58 + 51) = 1024;
          sub_100051084(v126);
          *(v58 + 53) = v34;
          sub_100051084(v126);
          _os_log_impl(&_mh_execute_header, v38, v86, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u (with body structure).", v58, 0x39u);
          swift_arrayDestroy();

LABEL_12:
        }

        v122 = v98;
        v123 = v99;
        v124 = v100;
        v125 = v101;
        v118 = v94;
        v119 = v95;
        v120 = v96;
        v121 = v97;
        v114 = v90;
        v115 = v91;
        v116 = v92;
        v117 = v93;
        v70 = v82;
        v69 = v83;
        v71 = v81;
        v72 = swift_allocObject();

        sub_100051084(v126);
        v73 = v123;
        *(v72 + 168) = v122;
        *(v72 + 184) = v73;
        *(v72 + 200) = v124;
        v74 = v119;
        *(v72 + 104) = v118;
        *(v72 + 120) = v74;
        v75 = v121;
        *(v72 + 136) = v120;
        *(v72 + 152) = v75;
        v76 = v115;
        *(v72 + 40) = v114;
        *(v72 + 56) = v76;
        v77 = v117;
        *(v72 + 72) = v116;
        *(v72 + 16) = v71;
        *(v72 + 24) = v70;
        *(v72 + 28) = v69 & 1;
        v78 = *&v126[4];
        *(v72 + 32) = v34;
        *(v72 + 36) = v78;
        *(v72 + 216) = v125;
        *(v72 + 88) = v77;
        return v34;
      }

      ++v23;
      result = sub_100051084(v126);
      v24 += 12;
      if (v22 == v23)
      {
        return 0xFF00000000;
      }
    }

    __break(1u);
  }

  else
  {
    return 0xFF00000000;
  }

  return result;
}

uint64_t sub_10004FE6C()
{
  result = _s18InProgressMessagesVMa(0);
  v95 = v0;
  v2 = *(v0 + *(result + 32));
  v3 = *(v2 + 2);
  if (v3)
  {
    v94 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_59:
      v2 = sub_10013987C(v2);
    }

    v4 = 0;
    v96 = v3;
    v97 = v2;
    do
    {
      if (v4 == v3)
      {
        goto LABEL_51;
      }

      if (v4 >= *(v2 + 2))
      {
        goto LABEL_52;
      }

      v5 = _s25MessageSectionsToDownloadVMa(0);
      v6 = (v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4);
      v7 = *(v6 + *(v5 + 24));
      v8 = *(v7 + 2);
      v98 = v5;
      v99 = *(v5 + 24);
      if (v8)
      {
        v9 = 0;
        v10 = 272;
        v11 = 1;
        v12 = 86;
        v3 = &v118;
        v2 = &v104;
        while ((v7[v12] & 1) == 0)
        {
          ++v9;
          v12 += 240;
          ++v11;
          v10 += 240;
          if (v8 == v9)
          {
            goto LABEL_11;
          }
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_58;
        }

        if (v9 + 1 != v8)
        {
          v20 = *(v7 + 2);
          while (v11 < v20)
          {
            v21 = &v7[v10];
            if ((v7[v10 + 54] & 1) == 0)
            {
              if (v11 != v9)
              {
                if (v9 >= v20)
                {
                  goto LABEL_48;
                }

                v22 = 240 * v9;
                v23 = &v7[240 * v9 + 32];
                v24 = *v23;
                v25 = *(v23 + 2);
                v105 = *(v23 + 1);
                v106 = v25;
                v104 = v24;
                v26 = *(v23 + 3);
                v27 = *(v23 + 4);
                v28 = *(v23 + 6);
                v109 = *(v23 + 5);
                v110 = v28;
                v107 = v26;
                v108 = v27;
                v29 = *(v23 + 7);
                v30 = *(v23 + 8);
                v31 = *(v23 + 10);
                v113 = *(v23 + 9);
                v114 = v31;
                v111 = v29;
                v112 = v30;
                v32 = *(v23 + 11);
                v33 = *(v23 + 12);
                v34 = *(v23 + 13);
                *(v117 + 9) = *(v23 + 217);
                v116 = v33;
                v117[0] = v34;
                v115 = v32;
                v35 = *v21;
                v36 = *(v21 + 2);
                v119 = *(v21 + 1);
                v120 = v36;
                v118 = v35;
                v37 = *(v21 + 3);
                v38 = *(v21 + 4);
                v39 = *(v21 + 6);
                v123 = *(v21 + 5);
                v124 = v39;
                v121 = v37;
                v122 = v38;
                v40 = *(v21 + 7);
                v41 = *(v21 + 8);
                v42 = *(v21 + 10);
                v127 = *(v21 + 9);
                v128 = v42;
                v125 = v40;
                v126 = v41;
                v43 = *(v21 + 11);
                v44 = *(v21 + 12);
                v45 = *(v21 + 13);
                *(v131 + 9) = *(v21 + 217);
                v130 = v44;
                v131[0] = v45;
                v129 = v43;
                sub_100050408(&v104, v102);
                sub_100050408(&v118, v102);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v6 + v99) = v7;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v7 = sub_100139890(v7);
                  *(v6 + v99) = v7;
                }

                if (v9 >= *(v7 + 2))
                {
                  goto LABEL_49;
                }

                v47 = &v7[v22];
                v48 = *&v7[v22 + 32];
                v49 = *&v7[v22 + 64];
                v100[1] = *&v7[v22 + 48];
                v100[2] = v49;
                v100[0] = v48;
                v50 = *&v7[v22 + 80];
                v51 = *&v7[v22 + 96];
                v52 = *&v7[v22 + 128];
                v100[5] = *&v7[v22 + 112];
                v100[6] = v52;
                v100[3] = v50;
                v100[4] = v51;
                v53 = *&v7[v22 + 144];
                v54 = *&v7[v22 + 160];
                v55 = *&v7[v22 + 192];
                v100[9] = *&v7[v22 + 176];
                v100[10] = v55;
                v100[7] = v53;
                v100[8] = v54;
                v56 = *&v7[v22 + 208];
                v57 = *&v7[v22 + 224];
                v58 = *&v7[v22 + 240];
                *(v101 + 9) = *&v7[v22 + 249];
                v100[12] = v57;
                v101[0] = v58;
                v100[11] = v56;
                v59 = v118;
                v60 = v120;
                *(v47 + 3) = v119;
                *(v47 + 4) = v60;
                *(v47 + 2) = v59;
                v61 = v121;
                v62 = v122;
                v63 = v124;
                *(v47 + 7) = v123;
                *(v47 + 8) = v63;
                *(v47 + 5) = v61;
                *(v47 + 6) = v62;
                v64 = v125;
                v65 = v126;
                v66 = v128;
                *(v47 + 11) = v127;
                *(v47 + 12) = v66;
                *(v47 + 9) = v64;
                *(v47 + 10) = v65;
                v67 = v129;
                v68 = v130;
                v69 = v131[0];
                *(v47 + 249) = *(v131 + 9);
                *(v47 + 14) = v68;
                *(v47 + 15) = v69;
                *(v47 + 13) = v67;
                sub_100050440(v100);
                v70 = *(v6 + v99);
                if (v11 >= *(v70 + 16))
                {
                  goto LABEL_50;
                }

                v71 = (v70 + v10);
                v72 = *v71;
                v73 = v71[2];
                v102[1] = v71[1];
                v102[2] = v73;
                v102[0] = v72;
                v74 = v71[3];
                v75 = v71[4];
                v76 = v71[6];
                v102[5] = v71[5];
                v102[6] = v76;
                v102[3] = v74;
                v102[4] = v75;
                v77 = v71[7];
                v78 = v71[8];
                v79 = v71[10];
                v102[9] = v71[9];
                v102[10] = v79;
                v102[7] = v77;
                v102[8] = v78;
                v80 = v71[11];
                v81 = v71[12];
                v82 = v71[13];
                *(v103 + 9) = *(v71 + 217);
                v102[12] = v81;
                v103[0] = v82;
                v102[11] = v80;
                v83 = v104;
                v84 = v106;
                v71[1] = v105;
                v71[2] = v84;
                *v71 = v83;
                v85 = v107;
                v86 = v108;
                v87 = v110;
                v71[5] = v109;
                v71[6] = v87;
                v71[3] = v85;
                v71[4] = v86;
                v88 = v111;
                v89 = v112;
                v90 = v114;
                v71[9] = v113;
                v71[10] = v90;
                v71[7] = v88;
                v71[8] = v89;
                v91 = v115;
                v92 = v116;
                v93 = v117[0];
                *(v71 + 217) = *(v117 + 9);
                v71[12] = v92;
                v71[13] = v93;
                v71[11] = v91;
                sub_100050440(v102);
                v7 = *(v6 + v99);
              }

              ++v9;
            }

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_47;
            }

            v20 = *(v7 + 2);
            ++v11;
            v10 += 240;
            if (v13 == v20)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
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
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v13 = *(v7 + 2);
LABEL_15:
        if (v13 < v9)
        {
          goto LABEL_55;
        }

        if (v9 < 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_11:
        v13 = *(v7 + 2);
        v9 = v13;
      }

      v3 = (v9 - v13);
      if (__OFADD__(v13, v9 - v13))
      {
        goto LABEL_53;
      }

      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + v99) = v7;
      if (!v14 || v9 > *(v7 + 3) >> 1)
      {
        if (v13 <= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v13;
        }

        v7 = sub_100085F94(v14, v15, 1, v7);
        *(v6 + v99) = v7;
      }

      v2 = (v7 + 32);
      result = swift_arrayDestroy();
      if (v13 != v9)
      {
        result = memmove(&v7[240 * v9 + 32], &v2[15 * v13], 240 * (*(v7 + 2) - v13));
        v16 = *(v7 + 2);
        v17 = __OFADD__(v16, v3);
        v18 = v3 + v16;
        if (v17)
        {
          goto LABEL_57;
        }

        *(v7 + 2) = v18;
      }

      *(v6 + v99) = v7;
      v2 = v97;
      if (v4 >= *(v97 + 2))
      {
        goto LABEL_54;
      }

      if (v8 != *(*(v6 + *(v98 + 24)) + 16))
      {
        LODWORD(v104) = *v6;
        v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        result = MessageIdentifierSet.insert(_:)(&v118, &v104, v19);
      }

      ++v4;
      v3 = v96;
    }

    while (v4 != v96);
    *(v95 + v94) = v97;
  }

  return result;
}

double sub_1000503E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -2;
  return result;
}

uint64_t sub_100050470(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 sub_100050484(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1000504D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t sub_100050518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000505B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s19MessageHeaderStatusOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000506AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s19MessageHeaderStatusOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100050768(uint64_t a1)
{
  _s19MessageHeaderStatusOMa(319);
  if (v1 <= 0x3F)
  {
    sub_100050E14(319, &qword_1005CE050, &_s7SectionVN);
    if (v2 <= 0x3F)
    {
      sub_100050E14(319, &unk_1005CE058, &type metadata for SectionSpecifier.Part);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100050848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000508C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MessageHeader(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005094C(uint64_t a1)
{
  v1 = type metadata accessor for MessageHeader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000509A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 185))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 184);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000509FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_100050A98(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100050B68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050C18(uint64_t a1)
{
  sub_100050D00(319);
  if (v1 <= 0x3F)
  {
    sub_100050DB8(319);
    if (v2 <= 0x3F)
    {
      sub_100050E14(319, &qword_1005CE1A8, &_s28MessageWaitingForSectionInfoVN);
      if (v3 <= 0x3F)
      {
        sub_100050E60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100050D00(uint64_t a1)
{
  if (!qword_1005CE198)
  {
    sub_100050D64();
    v1 = sub_1004A5524();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CE198);
    }
  }
}

unint64_t sub_100050D64()
{
  result = qword_1005CE1A0;
  if (!qword_1005CE1A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005CE1A0);
  }

  return result;
}

void sub_100050DB8(uint64_t a1)
{
  if (!qword_1005CDDC0)
  {
    v2 = sub_100016948();
    v4 = type metadata accessor for MessageIdentifierSet(a1, &type metadata for UID, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1005CDDC0);
    }
  }
}

void sub_100050E14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004A5CD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100050E60(uint64_t a1)
{
  if (!qword_1005CE1B0)
  {
    _s25MessageSectionsToDownloadVMa(255);
    v1 = sub_1004A5CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CE1B0);
    }
  }
}

uint64_t sub_100050EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100050F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051008(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFE)
  {
    v2 = 254;
  }

  else
  {
    v2 = *(a1 + 184);
  }

  v3 = (v2 ^ 0xFF) - 1;
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

double sub_100051164(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -3;
  return result;
}

double sub_100051190(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000511A4(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1000511B8(uint64_t a1, uint64_t a2)
{
  v4 = _s19MessageHeaderStatusOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005121C()
{
  result = qword_1005CE220;
  if (!qword_1005CE220)
  {
    result = swift_getWitnessTable(byte_1004D0D48, &_s7SectionV16MessageDataIsNilVN, v0, v1);
    atomic_store(result, &qword_1005CE220);
  }

  return result;
}

double sub_100051270(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -1;
  return result;
}

uint64_t sub_100051298()
{

  v1 = *(v0 + 216);
  if (v1 <= 0xFD)
  {
    sub_10005132C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v1 & 1);
  }

  return _swift_deallocObject(v0, 217, 7);
}

void sub_10005132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {

    sub_1000516D4(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    sub_1000514CC(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

void sub_1000514CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {

    sub_100051570(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_100051570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1000515D4(a1, a2, a3, a4, a5);

    sub_100051638(a6, a7, a8, a9);
  }
}

void sub_1000515D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_100051638(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    sub_100051690(a2, a3, a4);
  }
}

void sub_100051690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

void sub_1000516D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    sub_100051570(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

__n128 sub_10005180C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100051848(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 177))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 < 2)
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005189C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -2 - a2;
    }
  }

  return result;
}

double sub_100051900(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 176) = 0;
    result = 0.0;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 176) = ~a2;
  }

  return result;
}

unint64_t sub_100051958()
{
  result = qword_1005CE248;
  if (!qword_1005CE248)
  {
    result = swift_getWitnessTable(byte_1004D0CE0, &_s7SectionV4PartON, v0, v1);
    atomic_store(result, &qword_1005CE248);
  }

  return result;
}

uint64_t sub_1000519CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100051AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t _s18SectionDataRequestVMa(uint64_t a1)
{
  result = qword_1005CE2A8;
  if (!qword_1005CE2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051BB8(uint64_t a1)
{
  sub_100051C44(319);
  if (v1 <= 0x3F)
  {
    sub_100051CA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100051C44(uint64_t a1)
{
  if (!qword_1005CE2B8)
  {
    v2 = sub_100016948();
    v4 = type metadata accessor for MessageIdentifierSetNonEmpty(a1, &type metadata for UID, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1005CE2B8);
    }
  }
}

void sub_100051CA0()
{
  if (!qword_1005CE2C0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE2C0);
    }
  }
}

uint64_t sub_100051CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100102AF4(v7, v8);
}

uint64_t sub_100051D84@<X0>(unsigned int *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  _s18SectionDataRequestVMa(0);

  result = SectionSpecifier.init(part:kind:)(v6, 0, 2u);
  *a3 = 1;
  *(a3 + 8) = result;
  *(a3 + 16) = v9;
  *(a3 + 24) = v8 | (v5 << 32);
  *(a3 + 36) = 32;
  *(a3 + 32) = v4;
  return result;
}

uint64_t sub_100051E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v117 = a2;
  v102 = a1;
  v99 = a3;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v3 - 8);
  v98 = &v89 - v4;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v89 - v8;
  __chkstk_darwin(v9);
  v105 = &v89 - v10;
  v11 = _s18SectionDataRequestVMa(0);
  v91 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DownloadTask.CommandID(0);
  v118 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v106 = _s25MessageSectionsToDownloadVMa(0);
  v116 = *(v106 - 8);
  __chkstk_darwin(v106);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C9C0(&qword_1005CE2F8, &qword_1004D0DD8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v89 - v25;
  v109 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v109);
  v95 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v93 = &v89 - v28;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v92 = &v89 - v33;
  sub_100016D2C();
  sub_1004A7114();
  v34 = *(v21 + 56);
  v35 = v31;
  v36 = v19;
  sub_100025FDC(v35, v23, &unk_1005D91B0, &unk_1004CF400);
  v103 = v23;
  v101 = v34;
  *&v23[v34] = 0;
  v37 = *(v117 + 16);
  if (!v37)
  {
LABEL_31:
    v75 = v94;
    sub_100025FDC(v103, v94, &qword_1005CE2F8, &qword_1004D0DD8);
    v76 = v92;
    sub_100025FDC(v75, v92, &unk_1005D91B0, &unk_1004CF400);
    v77 = v93;
    sub_10000E268(v76, v93, &unk_1005D91B0, &unk_1004CF400);
    v78 = v95;
    sub_10000E268(v77, v95, &unk_1005D91B0, &unk_1004CF400);
    v79 = MessageIdentifierSet.count.getter();
    sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v76, &unk_1005D91B0, &unk_1004CF400);
    if (v79 < 1)
    {
      sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
      v82 = 1;
      v81 = v98;
    }

    else
    {
      v80 = v90;
      sub_100025FDC(v78, v90, &unk_1005D91B0, &unk_1004CF400);
      v81 = v98;
      sub_100025FDC(v80, v98, &qword_1005CD1D0, &unk_1004CF2C0);
      v82 = 0;
    }

    v83 = v99;
    v85 = v96;
    v84 = v97;
    (*(v96 + 56))(v81, v82, 1, v97);
    if ((*(v85 + 48))(v81, 1, v84) == 1)
    {
      sub_100025F40(v81, &qword_1005CD518, &qword_1004CF2F0);
      v86 = 1;
    }

    else
    {
      v87 = v81;
      v88 = v89;
      sub_100025FDC(v87, v89, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v88, v83, &qword_1005CD1D0, &unk_1004CF2C0);
      v86 = 0;
      *(v83 + *(v11 + 20)) = _swiftEmptyArrayStorage;
      *(v83 + *(v11 + 24)) = &off_100598D00;
    }

    return (*(v91 + 56))(v83, v86, 1, v11);
  }

  v38 = 0;
  v39 = 0;
  v112 = v117 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
  v113 = v11;
  v111 = *(v116 + 72);
  v100 = v13;
  v119 = v17;
  v107 = v36;
  v104 = v37;
  while (1)
  {
    result = sub_100052CF0(v112 + v111 * v38, v36, _s25MessageSectionsToDownloadVMa);
    if (v39 >> 17 <= 2)
    {
      break;
    }

    sub_100052DBC(v36, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    if (++v38 == v37)
    {
      goto LABEL_31;
    }
  }

  v110 = v39;
  v41 = *(v36 + *(v106 + 24));
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_30:
    v36 = v107;
    sub_100052DBC(v107, _s25MessageSectionsToDownloadVMa);
    v11 = v113;
    v37 = v104;
    v39 = v110;
    goto LABEL_4;
  }

  v43 = 0;
  v44 = (v41 + 32);
  while (v43 < *(v41 + 16))
  {
    v45 = *v44;
    v46 = v44[2];
    v122[1] = v44[1];
    v123 = v46;
    v122[0] = v45;
    v47 = v44[3];
    v48 = v44[4];
    v49 = v44[6];
    v126 = v44[5];
    v127 = v49;
    v124 = v47;
    v125 = v48;
    v50 = v44[7];
    v51 = v44[8];
    v52 = v44[10];
    v130 = v44[9];
    v131 = v52;
    v128 = v50;
    v129 = v51;
    v53 = v44[11];
    v54 = v44[12];
    v55 = v44[13];
    *(v134 + 9) = *(v44 + 217);
    v133 = v54;
    v134[0] = v55;
    v132 = v53;
    if ((v122[0] & 1) == 0)
    {
      v56 = v123;
      sub_100050408(v122, v121);

      v58 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v57, _swiftEmptyArrayStorage);

      result = sub_100050440(v122);
      if (v58)
      {
        v108 = *v107;
        result = sub_100071BC4(v102);
        v59 = result;
        v60 = v113;
        v61 = v100;
        v62 = v119;
        v117 = *(result + 16);
        if (v117)
        {
          v63 = 0;
          v116 = result + ((*(v118 + 80) + 32) & ~*(v118 + 80));
          while (1)
          {
            if (v63 >= *(v59 + 16))
            {
              goto LABEL_39;
            }

            sub_100052CF0(v116 + *(v118 + 72) * v63, v62, type metadata accessor for DownloadTask.CommandID);
            v66 = v114;
            sub_100052CF0(v62, v114, type metadata accessor for DownloadTask.CommandID);
            if (swift_getEnumCaseMultiPayload() != 3)
            {
              break;
            }

            sub_100052D58(v66, v61);
            if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v61 + *(v60 + 20)), _swiftEmptyArrayStorage) & 1) == 0)
            {
              sub_100052DBC(v62, type metadata accessor for DownloadTask.CommandID);
              v65 = _s18SectionDataRequestVMa;
              v64 = v61;
              goto LABEL_15;
            }

            v67 = v61;
            v68 = v61;
            v69 = v105;
            sub_10000E268(v67, v105, &qword_1005CD1D0, &unk_1004CF2C0);
            v121[0] = v108;
            v70 = MessageIdentifierSet.contains(_:)(v121, v109);
            sub_100025F40(v69, &unk_1005D91B0, &unk_1004CF400);
            if (v70)
            {
              v71 = *(v68 + *(v113 + 24));
              v61 = v68;
              if (*(v71 + 16) == 1)
              {
                v72 = *(v71 + 32);
                v62 = v119;
                sub_100052DBC(v119, type metadata accessor for DownloadTask.CommandID);
                if (!v72)
                {

                  sub_100052DBC(v61, _s18SectionDataRequestVMa);
                  goto LABEL_30;
                }
              }

              else
              {
                v62 = v119;
                sub_100052DBC(v119, type metadata accessor for DownloadTask.CommandID);
              }

              result = sub_100052DBC(v61, _s18SectionDataRequestVMa);
              v60 = v113;
            }

            else
            {
              v73 = v119;
              sub_100052DBC(v119, type metadata accessor for DownloadTask.CommandID);
              result = sub_100052DBC(v68, _s18SectionDataRequestVMa);
              v61 = v68;
              v62 = v73;
              v60 = v113;
            }

LABEL_16:
            if (v117 == ++v63)
            {
              goto LABEL_28;
            }
          }

          sub_100052DBC(v119, type metadata accessor for DownloadTask.CommandID);
          v64 = v66;
          v62 = v119;
          v65 = type metadata accessor for DownloadTask.CommandID;
LABEL_15:
          result = sub_100052DBC(v64, v65);
          goto LABEL_16;
        }

LABEL_28:

        v74 = v110 + v56;
        if (__CFADD__(v110, v56))
        {
          goto LABEL_40;
        }

        *&v103[v101] = v74;
        v120 = v108;
        MessageIdentifierSet.insert(_:)(v121, &v120, v109);
        v36 = v107;
        sub_100052DBC(v107, _s25MessageSectionsToDownloadVMa);
        v11 = v60;
        v37 = v104;
        v39 = v74;
        goto LABEL_4;
      }
    }

    ++v43;
    v44 += 15;
    if (v42 == v43)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100052950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unsigned int *a3@<X5>, uint64_t a4@<X8>)
{
  v30 = a4;
  v29 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = *(a1 + 24);
  v32 = *(a1 + 8);
  v33[0] = v16;
  *(v33 + 15) = *(a1 + 39);
  v17 = *a3;
  v18 = v16;

  v19 = sub_100053688(v17, v18, a2);

  v20 = sub_100052E1C(1, v19);

  if (*(v20 + 16))
  {
    v31 = v17;
    v21 = sub_100016948();

    MessageIdentifierSet.init(_:)(&v31, &type metadata for UID, v21);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      v22 = 1;
    }

    else
    {
      sub_100025FDC(v12, v9, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v9, v15, &qword_1005CD1D0, &unk_1004CF2C0);
      v22 = 0;
    }

    v26 = v29;
    v25 = v30;
    (*(v7 + 56))(v15, v22, 1, v29);
    result = (*(v7 + 48))(v15, 1, v26);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100025FDC(v15, v25, &qword_1005CD1D0, &unk_1004CF2C0);
      v27 = _s18SectionDataRequestVMa(0);
      *(v25 + *(v27 + 20)) = v18;
      *(v25 + *(v27 + 24)) = v20;
      return (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    }
  }

  else
  {
    v23 = _s18SectionDataRequestVMa(0);
    (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  }

  return result;
}

uint64_t sub_100052CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100052D58(uint64_t a1, uint64_t a2)
{
  v4 = _s18SectionDataRequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052E1C(uint64_t a1, char *a2)
{
  v84 = sub_1004A4614();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v70 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v69 - v8);
  v10 = sub_1004A4644();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v83 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v69 - v14;
  __chkstk_darwin(v15);
  v81 = &v69 - v16;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  __chkstk_darwin(v20);
  v85 = &v69 - v21;
  __chkstk_darwin(v22);
  v80 = &v69 - v23;
  __chkstk_darwin(v24);
  v88 = &v69 - v25;
  __chkstk_darwin(v26);
  v79 = &v69 - v27;
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage[2];
  v90 = a2;

  v78 = a1;
  if (v29 < a1)
  {
    v89 = (v11 + 32);
    v76 = (v11 + 16);
    v77 = v6;
    v75 = (v11 + 8);
    v30 = &_swiftEmptyArrayStorage[2];
    v74 = (v87 + 8);
    v31 = v10;
    v73 = v2;
    v72 = v19;
    while (1)
    {
      if (*(v2 + 46))
      {
        goto LABEL_27;
      }

      v71 = v30;
      v32 = *(v2 + 32);
      sub_1004A45C4();
      sub_1004A4634();
      v33 = *(v32 + 16);
      if (v33)
      {
        break;
      }

LABEL_8:
      v37 = *v89;
      v38 = v85;
      result = (*v89)(v85, v19, v31);
      v39 = *(v90 + 2);
      if (v39)
      {
        v40 = v90 + 36;
        v41 = v90 + 36;
        do
        {
          v42 = *v41;
          v41 += 8;
          v43 = v42 + 1;
          if (v42 == -1)
          {
            goto LABEL_31;
          }

          result = *(v40 - 1);
          if (v43 < result)
          {
            goto LABEL_32;
          }

          result = sub_1004A45F4();
          v40 = v41;
        }

        while (--v39);
      }

      v86 = v28;
      v44 = v80;
      v45 = v31;
      (v37)(v80, v38, v31);
      v87 = v37;
      v46 = v75;
      v47 = *v76;
      v48 = v88;
      (*v76)(v82, v88, v45);
      v47(v83, v44, v45);
      sub_100053640(&qword_1005CE308, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v49 = v81;
      sub_1004A6514();
      sub_1004A6504();
      v50 = *v46;
      (*v46)(v49, v45);
      v50(v44, v45);
      v51 = v79;
      (v87)(v79, v48, v45);
      v52 = v77;
      sub_1004A4624();
      sub_100053640(&qword_1005CE310, &type metadata accessor for IndexSet.RangeView, &protocol conformance descriptor for IndexSet.RangeView);
      v53 = v84;
      sub_1004A5E64();
      sub_1004A5EA4();
      if (v91[4] == v91[0])
      {
        (*v74)(v52, v53);
        v50(v51, v45);

        return v86;
      }

      v54 = sub_1004A5F34();
      v55 = v53;
      v57 = *v56;
      v54(v91, 0);
      (*v74)(v52, v55);
      result = (v50)(v51, v45);
      v58 = 393216 * (v57 / 393216);
      if (v58 > 0xFFFFFFFFLL)
      {
        goto LABEL_33;
      }

      v59 = v58 + 393215;
      if (((v58 + 393215) | v58) < 0)
      {
        goto LABEL_34;
      }

      if (v58 > 4294574080)
      {
        goto LABEL_35;
      }

      if (v59 < v58)
      {
        goto LABEL_36;
      }

      v31 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_1000861E4(0, *(v90 + 2) + 1, 1, v90);
      }

      v28 = v86;
      v19 = v72;
      v61 = *(v90 + 2);
      v60 = *(v90 + 3);
      if (v61 >= v60 >> 1)
      {
        v90 = sub_1000861E4((v60 > 1), v61 + 1, 1, v90);
      }

      v62 = v90;
      *(v90 + 2) = v61 + 1;
      v63 = &v62[8 * v61];
      *(v63 + 8) = v58;
      *(v63 + 9) = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1000861E4(0, *v71 + 1, 1, v28);
      }

      v65 = *(v28 + 2);
      v64 = *(v28 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v28 = sub_1000861E4((v64 > 1), v65 + 1, 1, v28);
      }

      *(v28 + 2) = v66;
      v30 = v28 + 16;
      v67 = &v28[8 * v65];
      *(v67 + 8) = v58;
      *(v67 + 9) = v59;
      v68 = v66 < v78;
      v2 = v73;
      if (!v68)
      {
        goto LABEL_27;
      }
    }

    v34 = v32 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v35 = *(v70 + 72);
    while (1)
    {
      sub_10000E268(v34, v9, &qword_1005CE300, &qword_1004D0DE0);
      result = *v9;
      if (v9[1] < result)
      {
        break;
      }

      sub_1004A45F4();
      sub_100025F40(v9, &qword_1005CE300, &qword_1004D0DE0);
      v34 += v35;
      if (!--v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_27:

  return v28;
}

uint64_t sub_100053640(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100053688(int a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v36 = a1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - v5;
  v38 = _s18SectionDataRequestVMa(0);
  __chkstk_darwin(v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DownloadTask.CommandID(0);
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_100071BC4(a3);
  v15 = v14[2];
  if (!v15)
  {

    return _swiftEmptyArrayStorage;
  }

  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v34 = v14;
  v17 = v14 + v16;
  v39 = *(v8 + 72);
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_100053A8C(v17, v13);
    sub_100053A8C(v13, v10);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100052D58(v10, v7);
      if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*&v7[*(v38 + 20)], v37))
      {
        v20 = v35;
        sub_10000E268(v7, v35, &qword_1005CD1D0, &unk_1004CF2C0);
        v41 = v36;
        v21 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v22 = MessageIdentifierSet.contains(_:)(&v41, v21);
        sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
        if (v22)
        {
          sub_100053AF0(v13, type metadata accessor for DownloadTask.CommandID);
          v23 = *&v7[*(v38 + 24)];

          result = sub_100053AF0(v7, _s18SectionDataRequestVMa);
          goto LABEL_12;
        }
      }

      v24 = _s18SectionDataRequestVMa;
      v25 = v7;
    }

    else
    {
      v24 = type metadata accessor for DownloadTask.CommandID;
      v25 = v10;
    }

    sub_100053AF0(v25, v24);
    result = sub_100053AF0(v13, type metadata accessor for DownloadTask.CommandID);
    v23 = _swiftEmptyArrayStorage;
LABEL_12:
    v26 = v23[2];
    v27 = *(v18 + 2);
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v28 <= *(v18 + 3) >> 1)
    {
      if (v23[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v29 = v27 + v26;
      }

      else
      {
        v29 = v27;
      }

      result = sub_1000861E4(result, v29, 1, v18);
      v18 = result;
      if (v23[2])
      {
LABEL_21:
        v30 = *(v18 + 2);
        if ((*(v18 + 3) >> 1) - v30 < v26)
        {
          goto LABEL_30;
        }

        memcpy(&v18[8 * v30 + 32], v23 + 4, 8 * v26);

        if (v26)
        {
          v31 = *(v18 + 2);
          v32 = __OFADD__(v31, v26);
          v33 = v31 + v26;
          if (v32)
          {
            goto LABEL_31;
          }

          *(v18 + 2) = v33;
        }

        goto LABEL_4;
      }
    }

    if (v26)
    {
      goto LABEL_29;
    }

LABEL_4:
    v17 += v39;
    if (!--v15)
    {

      return v18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100053A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadTask.CommandID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100053B50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100053B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 47))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100053C10()
{
  result = sub_100093190(&off_100598D98);
  qword_1005DDEF8 = result;
  return result;
}

uint64_t sub_100053C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  v20 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100056ED8(a1, v22, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100056F60(a1, _s15MissingMessagesOMa);
      sub_10005A5E8(v22, v13, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v13, v10, &qword_1005CD1D0, &unk_1004CF2C0);
      v24 = v34;
      sub_100025FDC(v10, v34, &unk_1005D91B0, &unk_1004CF400);
      sub_100056ED8(&v13[*(v11 + 24)], v7, _s15MissingMessagesO11QueriedUIDsVMa);
      v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_100025FDC(v7, v24 + *(v25 + 20), &unk_1005D91B0, &unk_1004CF400);
      v26 = &v13[*(v11 + 20)];
      v27 = *v26;
      v28 = v26[4];
      v29 = _s15MissingMessagesO10IncompleteVMa;
      v30 = v13;
    }

    else
    {
      sub_10005A5E8(v22, v4, _s15MissingMessagesO8CompleteVMa);
      sub_100016D2C();
      v24 = v34;
      sub_1004A7114();
      sub_100056F60(a1, _s15MissingMessagesOMa);
      sub_100056ED8(&v4[*(v33 + 20)], v7, _s15MissingMessagesO11QueriedUIDsVMa);
      v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_100025FDC(v7, v24 + *(v25 + 20), &unk_1005D91B0, &unk_1004CF400);
      v27 = *v4;
      v28 = v4[4];
      v29 = _s15MissingMessagesO8CompleteVMa;
      v30 = v4;
    }

    result = sub_100056F60(v30, v29);
  }

  else
  {
    sub_100016D2C();
    sub_1004A7114();
    sub_1004A7114();
    sub_100056F60(a1, _s15MissingMessagesOMa);
    v24 = v34;
    sub_100025FDC(v19, v34, &unk_1005D91B0, &unk_1004CF400);
    v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
    result = sub_100025FDC(v16, v24 + *(v25 + 20), &unk_1005D91B0, &unk_1004CF400);
    v27 = 0;
    v28 = 1;
  }

  v32 = v24 + *(v25 + 24);
  *v32 = v27;
  *(v32 + 4) = v28;
  return result;
}

void sub_100054118(uint64_t a1)
{
  v2 = v1;
  Messages = type metadata accessor for FetchMessages(0);
  __chkstk_darwin(Messages);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v96 - v8;
  __chkstk_darwin(v10);
  v105 = &v96 - v11;
  __chkstk_darwin(v12);
  v103 = &v96 - v13;
  __chkstk_darwin(v14);
  v102 = &v96 - v15;
  v107 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v107);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  __chkstk_darwin(v21);
  v23 = &v96 - v22;
  __chkstk_darwin(v24);
  v100 = &v96 - v25;
  v26 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v26 - 8);
  v28 = &v96 - v27;
  v29 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v29 - 8);
  v101 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v106 = &v96 - v32;
  __chkstk_darwin(v33);
  v35 = &v96 - v34;
  __chkstk_darwin(v36);
  v104 = &v96 - v37;
  v108 = Messages;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
LABEL_4:
    sub_100056ED8(a1, v20, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(a1, v17, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100056ED8(v2, v9, type metadata accessor for FetchMessages);
    sub_100056ED8(v2, v6, type metadata accessor for FetchMessages);
    v39 = sub_1004A4A54();
    v40 = sub_1004A6034();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v111 = v106;
      *v41 = 68159747;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v107;
      v43 = &v17[*(v107 + 20)];
      *(v41 + 10) = *v43;
      *(v41 + 11) = 2082;
      v44 = &v20[*(v42 + 20)];
      *(v41 + 13) = sub_10015BA6C(*(v44 + 1), *(v44 + 2), &v111);
      *(v41 + 21) = 1040;
      *(v41 + 23) = 2;
      *(v41 + 27) = 512;
      LOWORD(v43) = *(v43 + 12);
      sub_100056F60(v17, type metadata accessor for MailboxTaskLogger);
      *(v41 + 29) = v43;
      *(v41 + 31) = 2160;
      *(v41 + 33) = 0x786F626C69616DLL;
      *(v41 + 41) = 2085;
      v45 = *(v44 + 4);
      LODWORD(v44) = *(v44 + 10);

      sub_100056F60(v20, type metadata accessor for MailboxTaskLogger);
      v109 = v45;
      v110 = v44;
      v46 = sub_1004A5824();
      v48 = sub_10015BA6C(v46, v47, &v111);

      *(v41 + 43) = v48;
      *(v41 + 51) = 2082;
      v49 = &v9[v108[11]];
      v50 = *v49;
      LOBYTE(v44) = v49[8];
      sub_100056F60(v9, type metadata accessor for FetchMessages);
      if (v44)
      {
        v51 = 7104878;
        v52 = 0xE300000000000000;
      }

      else
      {
        v109 = v50;
        sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
        v51 = sub_1004A56E4();
        v52 = v84;
      }

      v85 = sub_10015BA6C(v51, v52, &v111);

      *(v41 + 53) = v85;
      *(v41 + 61) = 1024;
      v86 = v108[10];
      v87 = &v6[v86 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24)];
      if (v87[4])
      {
        v88 = 0;
      }

      else
      {
        v88 = *v87;
      }

      sub_100056F60(v6, type metadata accessor for FetchMessages);
      *(v41 + 63) = v88;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window %{public}s (persisted) -> %u (new)", v41, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v6, type metadata accessor for FetchMessages);
      sub_100056F60(v17, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v9, type metadata accessor for FetchMessages);
      sub_100056F60(v20, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  sub_10000E268(v2 + v108[9], v28, &qword_1005CE3B0, &unk_1004D1010);
  v38 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v38 - 8) + 48))(v28, 1, v38) == 1)
  {
    sub_100025F40(v28, &qword_1005CE3B0, &unk_1004D1010);
    goto LABEL_4;
  }

  sub_10000E268(&v28[*(v38 + 20)], v35, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100056F60(v28, type metadata accessor for NewServerMessages);
  v53 = v104;
  sub_100025FDC(v35, v104, &qword_1005CD1D0, &unk_1004CF2C0);
  v54 = v100;
  sub_100056ED8(a1, v100, type metadata accessor for MailboxTaskLogger);
  sub_100056ED8(a1, v23, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v55 = v102;
  sub_100056ED8(v2, v102, type metadata accessor for FetchMessages);
  sub_10000E268(v53, v106, &qword_1005CD1D0, &unk_1004CF2C0);
  v56 = v101;
  sub_10000E268(v53, v101, &qword_1005CD1D0, &unk_1004CF2C0);
  v57 = v103;
  sub_100056ED8(v2, v103, type metadata accessor for FetchMessages);
  v58 = v2;
  v59 = v105;
  sub_100056ED8(v58, v105, type metadata accessor for FetchMessages);
  v60 = sub_1004A4A54();
  v61 = sub_1004A6034();
  if (os_log_type_enabled(v60, v61))
  {
    v97 = v60;
    v99 = v61;
    v62 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v111 = v98;
    *v62 = 68160515;
    *(v62 + 4) = 2;
    *(v62 + 8) = 256;
    v63 = v107;
    v64 = &v23[*(v107 + 20)];
    *(v62 + 10) = *v64;
    *(v62 + 11) = 2082;
    v65 = v55;
    v66 = v54 + *(v63 + 20);
    *(v62 + 13) = sub_10015BA6C(*(v66 + 8), *(v66 + 16), &v111);
    *(v62 + 21) = 1040;
    *(v62 + 23) = 2;
    *(v62 + 27) = 512;
    LOWORD(v64) = *(v64 + 12);
    sub_100056F60(v23, type metadata accessor for MailboxTaskLogger);
    *(v62 + 29) = v64;
    *(v62 + 31) = 2160;
    *(v62 + 33) = 0x786F626C69616DLL;
    *(v62 + 41) = 2085;
    v67 = *(v66 + 32);
    LODWORD(v66) = *(v66 + 40);

    sub_100056F60(v54, type metadata accessor for MailboxTaskLogger);
    v109 = v67;
    v110 = v66;
    v68 = sub_1004A5824();
    v70 = sub_10015BA6C(v68, v69, &v111);

    *(v62 + 43) = v70;
    *(v62 + 51) = 2048;
    v71 = v57;
    v72 = v108;
    sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v73 = MessageIdentifierSet.count.getter();
    sub_100056F60(v65, type metadata accessor for FetchMessages);
    *(v62 + 53) = v73;
    *(v62 + 61) = 2048;
    v74 = v106;
    v75 = MessageIdentifierSet.count.getter();
    sub_100025F40(v74, &qword_1005CD1D0, &unk_1004CF2C0);
    *(v62 + 63) = v75;
    *(v62 + 71) = 2082;
    v76 = MessageIdentifierSet.debugDescription.getter();
    v78 = v77;
    sub_100025F40(v56, &qword_1005CD1D0, &unk_1004CF2C0);
    v79 = sub_10015BA6C(v76, v78, &v111);

    *(v62 + 73) = v79;
    *(v62 + 81) = 2082;
    v80 = v71 + v72[11];
    v81 = *v80;
    LOBYTE(v78) = *(v80 + 8);
    sub_100056F60(v71, type metadata accessor for FetchMessages);
    if (v78)
    {
      v82 = 7104878;
      v83 = 0xE300000000000000;
    }

    else
    {
      v109 = v81;
      sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
      v82 = sub_1004A56E4();
      v83 = v90;
    }

    v91 = v97;
    v92 = sub_10015BA6C(v82, v83, &v111);

    *(v62 + 83) = v92;
    *(v62 + 91) = 1024;
    v93 = v108[10];
    v94 = (v105 + v93 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24));
    if (*(v94 + 4))
    {
      v95 = 0;
    }

    else
    {
      v95 = *v94;
    }

    sub_100056F60(v105, type metadata accessor for FetchMessages);
    *(v62 + 93) = v95;
    _os_log_impl(&_mh_execute_header, v91, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with missing %ld, batch %ld UIDs %{public}s, fetched-window %{public}s (persisted) -> %u (new)", v62, 0x61u);
    swift_arrayDestroy();

    v89 = v104;
  }

  else
  {
    sub_100056F60(v59, type metadata accessor for FetchMessages);
    sub_100025F40(v106, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v55, type metadata accessor for FetchMessages);
    sub_100056F60(v23, type metadata accessor for MailboxTaskLogger);

    sub_100056F60(v57, type metadata accessor for FetchMessages);
    sub_100025F40(v56, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v54, type metadata accessor for MailboxTaskLogger);
    v89 = v53;
  }

  sub_100025F40(v89, &qword_1005CD1D0, &unk_1004CF2C0);
}

uint64_t sub_100054D60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NewServerMessages(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_10000E268(v3 + *(Messages + 36), v9, &qword_1005CE3B0, &unk_1004D1010);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100025F40(v9, &qword_1005CE3B0, &unk_1004D1010);
  }

  else
  {
    sub_10005A5E8(v9, v13, type metadata accessor for NewServerMessages);
    if ((sub_100111E58(a1, a2) & 1) == 0)
    {
      sub_1000FAA84(a3);
      sub_100056F60(v13, type metadata accessor for NewServerMessages);
      v15 = 0;
      goto LABEL_7;
    }

    sub_100056F60(v13, type metadata accessor for NewServerMessages);
  }

  v15 = 1;
LABEL_7:
  v16 = sub_10000C9C0(&qword_1005CE538, &qword_1004D0F18);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_100054FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for NewServerMessages(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F6F0(a2, a4))
  {
    return 0xF000000000000007;
  }

  Messages = type metadata accessor for FetchMessages(0);
  sub_10000E268(v4 + *(Messages + 36), v11, &qword_1005CE3B0, &unk_1004D1010);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100025F40(v11, &qword_1005CE3B0, &unk_1004D1010);
    sub_100055260();
    if (v19)
    {
      return 0xF000000000000007;
    }

    v20 = v18;
    v21 = swift_allocObject();
    v22 = *(v4 + 24);
    *(v21 + 16) = *(v4 + 16);
    *(v21 + 24) = v22;
    *(v21 + 32) = _swiftEmptyArrayStorage;
    *(v21 + 40) = v20;
    *(v21 + 48) = 0;
    v23 = v21 | 0x2000000000000006;

    return v23;
  }

  else
  {
    sub_10005A5E8(v11, v15, type metadata accessor for NewServerMessages);
    if ((sub_100019C0C(a1, a2, a3) & 1) != 0 && ((sub_100055260(), v26 = v25, v27 = v24, v28 = *&v15[*(v12 + 36)], *(v28 + 16)) || (v24 & 1) == 0))
    {
      v29 = swift_allocObject();
      v30 = *(v4 + 24);
      *(v29 + 16) = *(v4 + 16);
      *(v29 + 24) = v30;

      sub_100056F60(v15, type metadata accessor for NewServerMessages);
      *(v29 + 32) = v28;
      *(v29 + 40) = v26;
      *(v29 + 48) = v27 & 1;
      return v29 | 0x2000000000000006;
    }

    else
    {
      sub_100056F60(v15, type metadata accessor for NewServerMessages);
      return 0xF000000000000007;
    }
  }
}

void sub_100055260()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v1 - 8);
  v30 = &v29 - v2;
  v3 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FetchMessages.MissingUIDs(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_100056ED8(v0 + Messages[10], v15, type metadata accessor for FetchMessages.MissingUIDs);
  v17 = v0 + Messages[11];
  v18 = *v17;
  v32 = *(v17 + 8);
  v19 = Messages[9];
  v31 = v0;
  sub_10000E268(v0 + v19, v5, &qword_1005CE3B0, &unk_1004D1010);
  v20 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v20 - 8) + 48))(v5, 1, v20) == 1)
  {
    sub_100025F40(v5, &qword_1005CE3B0, &unk_1004D1010);
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v21 = v30;
    sub_10000E268(&v5[*(v20 + 20)], v30, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v5, type metadata accessor for NewServerMessages);
    sub_100025FDC(v21, v8, &unk_1005D91B0, &unk_1004CF400);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100025FDC(v8, v12, &unk_1005D91B0, &unk_1004CF400);
  }

  v22 = v32;
  v23 = sub_100056BCC(v18, v32, v12);
  v25 = v24;
  sub_100056F60(v15, type metadata accessor for FetchMessages.MissingUIDs);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  if ((v25 & 1) == 0 && ((v23 == v18) & ~v22) == 0)
  {
    v26 = *(v31 + Messages[7] + 8);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v26 + 8 * v27 + 24);
    }

    else
    {
      v28 = 1;
    }

    sub_1000556D0(v28, v23);
  }
}

void sub_1000556D0(unsigned int a1, unint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  if (a2 < a1)
  {
    LODWORD(v19) = 1;
    if (a1 < 2)
    {
      __break(1u);
    }

    else
    {
      v17 = HIDWORD(a2);
      LODWORD(v18) = a1 - 1;
      v16 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v19, &v18, &type metadata for UID, &v20);
      v19 = v20;
      v18 = Range<>.init<A>(_:)(&v19, &type metadata for UID, v16);
      sub_100016D2C();
      sub_1004A7124();
      v20 = __PAIR64__(v17, a2);
      v19 = Range<>.init<A>(_:)(&v20, &type metadata for UID, v16);
      sub_1004A7124();
      MessageIdentifierSet.subtracting(_:)(v15, v12);
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v6);
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      sub_1000E4C0C();
      sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590);
      sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    }
  }
}

uint64_t sub_100055968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v113 = a2;
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v5 - 8);
  v112 = &v95[-v6];
  v7 = type metadata accessor for MessageMetadata(0);
  v103 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v95[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v105);
  v11 = &v95[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v104 = &v95[-v13];
  v108 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v108);
  v116 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v115 = &v95[-v16];
  __chkstk_darwin(v17);
  v106 = &v95[-v18];
  __chkstk_darwin(v19);
  v107 = &v95[-v20];
  v21 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v21 - 8);
  v109 = &v95[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v95[-v24];
  v26 = type metadata accessor for NewServerMessages(0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v95[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v32 = &v95[-v31];
  Messages = type metadata accessor for FetchMessages(0);
  v34 = *(Messages + 36);
  v114 = a3;
  v110 = v34;
  v111 = Messages;
  sub_10000E268(a3 + v34, v25, &qword_1005CE3B0, &unk_1004D1010);
  v37 = *(v27 + 48);
  v36 = (v27 + 48);
  v35 = v37;
  v119 = v26;
  if (v37(v25, 1, v26) == 1)
  {
    sub_100025F40(v25, &qword_1005CE3B0, &unk_1004D1010);
LABEL_7:
    v59 = v116;
    v58 = v117;
    v60 = v113;
    v44 = v109;
    goto LABEL_16;
  }

  sub_10005A5E8(v25, v32, type metadata accessor for NewServerMessages);
  if (!*(*&v32[*(v119 + 36)] + 16))
  {
    sub_100056F60(v32, type metadata accessor for NewServerMessages);
    goto LABEL_7;
  }

  v100 = *&v32[*(v119 + 36)];
  v102 = v35;
  v38 = v118;
  v39 = v107;
  sub_100056ED8(v118, v107, type metadata accessor for MailboxTaskLogger);
  v40 = v106;
  sub_100056ED8(v38, v106, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v101 = v32;
  sub_100056ED8(v32, v29, type metadata accessor for NewServerMessages);
  v41 = sub_1004A4A54();
  v42 = sub_1004A6034();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v109;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v98 = v42;
    v46 = v45;
    v99 = swift_slowAlloc();
    v122[0] = v99;
    *v46 = 68159491;
    *(v46 + 4) = 2;
    *(v46 + 8) = 256;
    v47 = v108;
    v48 = *(v108 + 20);
    v97 = v41;
    v49 = &v40[v48];
    *(v46 + 10) = v40[v48];
    *(v46 + 11) = 2082;
    v50 = &v39[*(v47 + 20)];
    *(v46 + 13) = sub_10015BA6C(*(v50 + 1), *(v50 + 2), v122);
    *(v46 + 21) = 1040;
    *(v46 + 23) = 2;
    *(v46 + 27) = 512;
    v96 = *(v49 + 12);
    sub_100056F60(v40, type metadata accessor for MailboxTaskLogger);
    *(v46 + 29) = v96;
    *(v46 + 31) = 2160;
    *(v46 + 33) = 0x786F626C69616DLL;
    *(v46 + 41) = 2085;
    v51 = v39;
    v52 = *(v50 + 4);
    LODWORD(v50) = *(v50 + 10);

    sub_100056F60(v51, type metadata accessor for MailboxTaskLogger);
    v120 = v52;
    v121 = v50;
    v53 = sub_1004A5824();
    v55 = sub_10015BA6C(v53, v54, v122);

    *(v46 + 43) = v55;
    *(v46 + 51) = 2048;
    v56 = *(*&v29[*(v119 + 36)] + 16);
    sub_100056F60(v29, type metadata accessor for NewServerMessages);
    *(v46 + 53) = v56;
    v57 = v97;
    _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld new message(s).", v46, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100056F60(v29, type metadata accessor for NewServerMessages);
    sub_100056F60(v40, type metadata accessor for MailboxTaskLogger);

    sub_100056F60(v39, type metadata accessor for MailboxTaskLogger);
  }

  v58 = v117;
  sub_10013FC9C(9u);
  sub_100088568(&v120, 9);
  v61 = *(type metadata accessor for MailboxSyncState(0) + 64);
  v62 = type metadata accessor for NewestMessages(0);
  v63 = (*(*(v62 - 8) + 48))(v58 + v61, 1, v62);
  v59 = v116;
  v35 = v102;
  if (v63)
  {
    sub_100056F60(v101, type metadata accessor for NewServerMessages);
  }

  else
  {
    v107 = v36;
    sub_100016D2C();
    v64 = v11;
    sub_1004A7114();
    v65 = *(v100 + 16);
    v66 = v105;
    if (v65)
    {
      v67 = v100 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v68 = *(v103 + 72);
      do
      {
        sub_100056ED8(v67, v9, type metadata accessor for MessageMetadata);
        LODWORD(v122[0]) = *v9;
        v64 = v11;
        MessageIdentifierSet.insert(_:)(&v120, v122, v66);
        sub_100056F60(v9, type metadata accessor for MessageMetadata);
        v67 += v68;
        --v65;
      }

      while (v65);
    }

    v69 = v104;
    sub_100025FDC(v64, v104, &unk_1005D91B0, &unk_1004CF400);
    sub_1000FA440(v69);
    sub_100025F40(v69, &unk_1005D91B0, &unk_1004CF400);
    sub_100056F60(v101, type metadata accessor for NewServerMessages);
    v59 = v116;
    v35 = v102;
  }

  v60 = v113;
LABEL_16:
  v70 = v114;
  sub_10000E268(v114 + v110, v44, &qword_1005CE3B0, &unk_1004D1010);
  v71 = v35(v44, 1, v119);
  v72 = v112;
  if (v71 == 1)
  {
    sub_100025F40(v44, &qword_1005CE3B0, &unk_1004D1010);
    v73 = 1;
  }

  else
  {
    sub_10000E268(v44 + *(v119 + 20), v112, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v44, type metadata accessor for NewServerMessages);
    v73 = 0;
  }

  v74 = v118;
  v75 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v75 - 8) + 56))(v72, v73, 1, v75);
  v76 = sub_100059B90(v58, v60 & 0x101010101FFFF01, v72, (v70 + *(v111 + 28)), v74);
  v78 = v77;
  v80 = v79;
  result = sub_100025F40(v72, &qword_1005CD518, &qword_1004CF2F0);
  v82 = v115;
  if ((v80 & 1) == 0)
  {
    sub_100056ED8(v74, v115, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(v74, v59, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v83 = sub_1004A4A54();
    v84 = sub_1004A6034();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v122[0] = swift_slowAlloc();
      *v85 = 68159747;
      *(v85 + 4) = 2;
      *(v85 + 8) = 256;
      v86 = v108;
      v87 = v59 + *(v108 + 20);
      *(v85 + 10) = *v87;
      *(v85 + 11) = 2082;
      v88 = *(v86 + 20);
      v119 = v78;
      v89 = v59;
      v90 = &v82[v88];
      *(v85 + 13) = sub_10015BA6C(*&v82[v88 + 8], *&v82[v88 + 16], v122);
      *(v85 + 21) = 1040;
      *(v85 + 23) = 2;
      *(v85 + 27) = 512;
      LOWORD(v87) = *(v87 + 24);
      sub_100056F60(v89, type metadata accessor for MailboxTaskLogger);
      *(v85 + 29) = v87;
      *(v85 + 31) = 2160;
      *(v85 + 33) = 0x786F626C69616DLL;
      *(v85 + 41) = 2085;
      v91 = *(v90 + 4);
      LODWORD(v90) = *(v90 + 10);

      sub_100056F60(v82, type metadata accessor for MailboxTaskLogger);
      v120 = v91;
      v121 = v90;
      v92 = sub_1004A5824();
      v94 = sub_10015BA6C(v92, v93, v122);

      *(v85 + 43) = v94;
      *(v85 + 51) = 2048;
      *(v85 + 53) = v76;
      *(v85 + 61) = 2048;
      *(v85 + 63) = v119;
      _os_log_impl(&_mh_execute_header, v83, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Still missing %ld messages (%ld completed). Will run again.", v85, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v59, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v82, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(1u);
    return sub_100088568(&v120, 1);
  }

  return result;
}

void sub_10005660C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  if ((*(a1 + 8) & 1) != 0 || (*a1 == a2 ? (v13 = v6 == HIDWORD(*a1)) : (v13 = 0), !v13))
  {
    sub_100056ED8(a3, &v27 - v11, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(a3, v9, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v14 = sub_1004A4A54();
    v15 = sub_1004A6004();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = v6;
      v17 = v16;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v17 = 68159491;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v18 = &v9[*(v7 + 20)];
      *(v17 + 10) = *v18;
      *(v17 + 11) = 2082;
      v19 = &v12[*(v7 + 20)];
      *(v17 + 13) = sub_10015BA6C(*(v19 + 1), *(v19 + 2), &v32);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      LOWORD(v18) = *(v18 + 12);
      sub_100056F60(v9, type metadata accessor for MailboxTaskLogger);
      *(v17 + 29) = v18;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v20 = *(v19 + 4);
      LODWORD(v18) = *(v19 + 10);

      sub_100056F60(v12, type metadata accessor for MailboxTaskLogger);
      v30 = v20;
      v31 = v18;
      v21 = sub_1004A5824();
      v23 = sub_10015BA6C(v21, v22, &v32);

      *(v17 + 43) = v23;
      *(v17 + 51) = 2082;
      v30 = __PAIR64__(v28, a2);
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v24 = MessageIdentifierRange.debugDescription.getter();
      v26 = sub_10015BA6C(v24, v25, &v32);

      *(v17 + 53) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v17, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v9, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v12, type metadata accessor for MailboxTaskLogger);
    }

    *a1 = a2;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_100056974()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004CEAA0;
  *(v0 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_100026044();

  sub_1004A6674();
  return v0;
}

double sub_100056A18()
{
  if (qword_1005CCE30 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100056A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100054FA4(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_100056ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v8 = a2;
  sub_10012D0D0(v3, v4, sub_100057848, v7);
  sub_100055260();
  if ((v6 & 1) == 0)
  {
    __chkstk_darwin(v5);
    sub_1000B631C(v3, v4, sub_10005785C);
  }
}

uint64_t sub_100056BCC(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  MessageIdentifierSet.subtracting(_:)(a3, &v24 - v12);
  v14 = type metadata accessor for FetchMessages.MissingUIDs(0);
  MessageIdentifierSet.subtracting(_:)(v13, v10);
  v15 = HIDWORD(a1);
  v16 = (v4 + *(v14 + 24));
  v17 = *v16;
  v18 = *(v16 + 4);
  LOBYTE(v26) = a2 & 1;
  if (a2)
  {
    v15 = 0;
  }

  LOBYTE(v26) = v18;
  v19 = sub_100059328(v15 | ((a2 & 1) << 32), v10, v17 | (v18 << 32));
  if ((v19 & 0x100000000) != 0)
  {
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    return 0;
  }

  else
  {
    if (a2)
    {
      v20 = v19;
    }

    else
    {
      v20 = a1;
    }

    v21 = v19;
    v22 = sub_100059808(v20, v10);
    v24 = v21;
    v25 = v22;
    sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v25, &v24, &type metadata for UID, &v26);
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    return v26;
  }
}

uint64_t sub_100056DBC(void (*a1)(void))
{
  a1();
  if (v1)
  {
    return 7104878;
  }

  sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
  return sub_1004A56E4();
}

uint64_t sub_100056E20(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchMessages.MissingUIDs(0);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v6)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100056ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100056F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100056FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100057060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000570DC(uint64_t a1)
{
  sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CD840, &type metadata for UID);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000571BC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_100057348(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_1000574E0(uint64_t a1)
{
  sub_100057614(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      sub_10005767C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FetchMessages.MissingUIDs(319);
        if (v4 <= 0x3F)
        {
          sub_1000576D4(319, &qword_1005CE428, &type metadata for FetchedWindow);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100057614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_10005767C(uint64_t a1)
{
  if (!qword_1005CE420)
  {
    type metadata accessor for NewServerMessages(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CE420);
    }
  }
}

void sub_1000576D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100057720()
{
  result = qword_1005CE470;
  if (!qword_1005CE470)
  {
    result = swift_getWitnessTable(byte_1004D0EC8, &type metadata for FetchMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005CE470);
  }

  return result;
}

unint64_t sub_100057774()
{
  result = qword_1005CE478;
  if (!qword_1005CE478)
  {
    result = swift_getWitnessTable(byte_1004D0EA0, &type metadata for FetchMessages.CommandID, v0, v1);
    atomic_store(result, &qword_1005CE478);
  }

  return result;
}

unint64_t sub_1000577C8(uint64_t a1)
{
  result = sub_1000577F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000577F0()
{
  result = qword_1005CE530;
  if (!qword_1005CE530)
  {
    Messages = type metadata accessor for FetchMessages(255);
    result = swift_getWitnessTable("M_\v", Messages, v0, v1);
    atomic_store(result, &qword_1005CE530);
  }

  return result;
}

uint64_t sub_10005787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v46 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v43 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  result = sub_100111658(a1, a4);
  v49 = *(result + 16);
  if (v49)
  {
    v50 = v8;
    v51 = result;
    v43 = v6;
    v44 = v16;
    v24 = 0;
    v47 = result + 32;
    v45 = v13;
    do
    {
      if (v24 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v24;
      v25 = *(v54 + 16);
      if (!v25)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v26 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v27 = *(v48 + 72);
      v28 = v26;
      v29 = v25;
      while (1)
      {
        sub_100056ED8(v28, v22, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v22, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v28 += v27;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }

      v30 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v31 = *&v19[*(v30 + 48)];
      sub_100056F60(v19, type metadata accessor for ClientCommand);
      if (v31 != v56)
      {
        goto LABEL_8;
      }

      v33 = v44;
      v32 = v45;
      while (1)
      {
        sub_100056ED8(v26, v33, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v33, v32, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v32, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v26 += v27;
        if (!--v25)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v34 = *(v32 + *(v30 + 48));
      sub_100056F60(v32, type metadata accessor for ClientCommand);
      if (v34 != v56)
      {
        goto LABEL_13;
      }

      v35 = *(v46 + 16);
      if (v35)
      {
        v36 = v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v37 = *(v43 + 72);
        do
        {
          v38 = v52;
          sub_100056ED8(v36, v52, type metadata accessor for TaskHistory.Running);
          v39 = v50;
          sub_10005A5E8(v38, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v39, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v40 = *(v39 + 8);
            v41 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v39 + *(v41 + 64), type metadata accessor for ClientCommand);
            if (v40 == v56)
            {
              goto LABEL_22;
            }
          }

          v36 += v37;
          --v35;
        }

        while (v35);
      }

LABEL_3:
      v24 = v55 + 1;
      result = v51;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_100057D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v46 = a4;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v45 - v14;
  v15 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v15 - 8);
  __chkstk_darwin(v15);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v45 - v18;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  result = sub_100112A28(a1, a2, a3 & 1, a6);
  v50 = *(result + 16);
  if (v50)
  {
    v51 = v12;
    v52 = result;
    v45 = v10;
    v26 = 0;
    v48 = result + 32;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v56 = v26;
      v27 = *(v55 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v48 + 4 * v56);
      v28 = v55 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v29 = *(v49 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_100056ED8(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v33 = *&v21[*(v32 + 48)];
      sub_100056F60(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v34 = v47;
      while (1)
      {
        v35 = v57;
        sub_100056ED8(v28, v57, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_100056F60(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v46 + 16);
      if (v37)
      {
        v38 = v46 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v53;
          sub_100056ED8(v38, v53, type metadata accessor for TaskHistory.Running);
          v41 = v51;
          sub_10005A5E8(v40, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v56 + 1;
      result = v52;
    }

    while (v56 + 1 != v50);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_100058284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v46 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v43 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  result = sub_100112498(a1, a4);
  v49 = *(result + 16);
  if (v49)
  {
    v50 = v8;
    v51 = result;
    v43 = v6;
    v44 = v16;
    v24 = 0;
    v47 = result + 32;
    v45 = v13;
    do
    {
      if (v24 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v24;
      v25 = *(v54 + 16);
      if (!v25)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v26 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v27 = *(v48 + 72);
      v28 = v26;
      v29 = v25;
      while (1)
      {
        sub_100056ED8(v28, v22, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v22, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v28 += v27;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }

      v30 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v31 = *&v19[*(v30 + 48)];
      sub_100056F60(v19, type metadata accessor for ClientCommand);
      if (v31 != v56)
      {
        goto LABEL_8;
      }

      v33 = v44;
      v32 = v45;
      while (1)
      {
        sub_100056ED8(v26, v33, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v33, v32, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v32, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v26 += v27;
        if (!--v25)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v34 = *(v32 + *(v30 + 48));
      sub_100056F60(v32, type metadata accessor for ClientCommand);
      if (v34 != v56)
      {
        goto LABEL_13;
      }

      v35 = *(v46 + 16);
      if (v35)
      {
        v36 = v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v37 = *(v43 + 72);
        do
        {
          v38 = v52;
          sub_100056ED8(v36, v52, type metadata accessor for TaskHistory.Running);
          v39 = v50;
          sub_10005A5E8(v38, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v39, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v40 = *(v39 + 8);
            v41 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v39 + *(v41 + 64), type metadata accessor for ClientCommand);
            if (v40 == v56)
            {
              goto LABEL_22;
            }
          }

          v36 += v37;
          --v35;
        }

        while (v35);
      }

LABEL_3:
      v24 = v55 + 1;
      result = v51;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_100058788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v55 = a2;
  v47 = a1;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v44 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v44 - v22;
  result = a4(a3, v21);
  v50 = *(result + 16);
  if (v50)
  {
    v51 = v8;
    v52 = result;
    v44 = v6;
    v45 = v16;
    v25 = 0;
    v48 = result + 32;
    v46 = v13;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v56 = v25;
      v26 = *(v55 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v57 = *(v48 + 4 * v56);
      v27 = v55 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v28 = *(v49 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_100056ED8(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v32 = *&v19[*(v31 + 48)];
      sub_100056F60(v19, type metadata accessor for ClientCommand);
      if (v32 != v57)
      {
        goto LABEL_8;
      }

      v34 = v45;
      v33 = v46;
      while (1)
      {
        sub_100056ED8(v27, v34, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v34, v33, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v33, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v43 = 1;
          goto LABEL_24;
        }
      }

      v35 = *(v33 + *(v31 + 48));
      sub_100056F60(v33, type metadata accessor for ClientCommand);
      if (v35 != v57)
      {
        goto LABEL_13;
      }

      v36 = *(v47 + 16);
      if (v36)
      {
        v37 = v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v38 = *(v44 + 72);
        do
        {
          v39 = v53;
          sub_100056ED8(v37, v53, type metadata accessor for TaskHistory.Running);
          v40 = v51;
          sub_10005A5E8(v39, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v40, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v41 = *(v40 + 8);
            v42 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v40 + *(v42 + 64), type metadata accessor for ClientCommand);
            if (v41 == v57)
            {
              goto LABEL_22;
            }
          }

          v37 += v38;
          --v36;
        }

        while (v36);
      }

LABEL_3:
      v25 = v56 + 1;
      result = v52;
    }

    while (v56 + 1 != v50);
  }

  v43 = 0;
LABEL_24:

  return v43;
}

void *sub_100058C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v48 = a3;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v45 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  result = sub_10011210C(a1, a2, a5);
  v51 = result[2];
  if (v51)
  {
    v52 = v10;
    v53 = result;
    v45 = v8;
    v46 = v18;
    v26 = 0;
    v49 = result + 4;
    v47 = v15;
    do
    {
      if (v26 >= result[2])
      {
        __break(1u);
        return result;
      }

      v57 = v26;
      v27 = *(v56 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v49 + v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_100056ED8(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v33 = *&v21[*(v32 + 48)];
      sub_100056F60(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_100056ED8(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_100056F60(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v48 + 16);
      if (v37)
      {
        v38 = v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v54;
          sub_100056ED8(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_10005A5E8(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v57 + 1;
      result = v53;
    }

    while (v57 + 1 != v51);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_100059168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_100058788(a2, a3, a4, sub_100111E40);
  if (result)
  {
    sub_100056ED8(a1, v14, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v23, v14, sizeof(v23));
      Messages = type metadata accessor for FetchMessages(0);
      v17 = *(v6 + *(Messages + 28) + 8);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v17 + 8 * v18 + 24);
      }

      else
      {
        v19 = 1;
      }

      v20 = *(Messages + 36);
      v21 = type metadata accessor for NewServerMessages(0);
      if (!(*(*(v21 - 8) + 48))(v6 + v20, 1, v21))
      {
        sub_1000FAD60(v23, v19, a6);
      }

      return sub_100025D5C(v23);
    }

    else
    {
      return sub_100056F60(v14, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

unint64_t sub_100059328(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  if ((a3 & 0x100000000) != 0)
  {
    v26 = HIDWORD(a1) & 1;
    goto LABEL_18;
  }

  if (a3 != -1)
  {
    LODWORD(v31) = a3 + 1;
    LODWORD(v30) = -1;
    v27 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v31, &v30, &type metadata for UID, &v32);
    v31 = v32;
    v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v27);
    sub_100016D2C();
    sub_1004A7124();
    MessageIdentifierSet.subtracting(_:)(v17, v20);
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    MessageIdentifierSet.ranges.getter(v8);
    a1 = sub_1000E4C0C();
    LOBYTE(v26) = v28;
    sub_100025F40(v8, &qword_1005CD7A0, &unk_1004CF590);
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    if (v26)
    {
      LODWORD(a1) = 0;
    }

    else
    {
      LODWORD(a1) = HIDWORD(a1);
    }

    goto LABEL_18;
  }

  sub_10000E268(a2, &v29 - v19, &unk_1005D91B0, &unk_1004CF400);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a1 == -1)
  {
    goto LABEL_16;
  }

  v21 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v21, &v32);
  v31 = v32;
  v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v21);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.subtracting(_:)(v20, v14);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  LODWORD(v31) = 1;
  LODWORD(v30) = a1;
  static MessageIdentifier.... infix(_:_:)(&v31, &v30, &type metadata for UID, &v32);
  v31 = v32;
  v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v21);
  sub_1004A7124();
  MessageIdentifierSet.subtracting(_:)(v11, v17);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  v22 = sub_1000E5314();
  result = sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
  if ((v22 & 0x100000000) != 0 || a1 >= v22)
  {
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFFFFE) != 0)
  {
    v24 = v22 - 1;
    if (v22 - 1 > a1)
    {
      LODWORD(v31) = a1 + 1;
      LODWORD(v30) = v22 - 1;
      static MessageIdentifier.... infix(_:_:)(&v31, &v30, &type metadata for UID, &v32);
      v31 = v32;
      v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v21);
      sub_1004A7124();
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v25 = sub_1004A70E4();
      sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
      if (v25)
      {
        LOBYTE(v26) = 0;
        LODWORD(a1) = v24;
LABEL_18:
        LOBYTE(v32) = v26 & 1;
        return a1 | ((v26 & 1) << 32);
      }

LABEL_17:
      LOBYTE(v26) = 0;
      goto LABEL_18;
    }

LABEL_16:
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059808(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  __chkstk_darwin(v13);
  v15 = v24 - v14;
  if (a1 >= 2)
  {
    v16 = sub_100016948();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v16, &v27);
    v26 = v27;
    v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
    v17 = sub_100016D2C();
    sub_1004A7124();
    v24[2] = a2;
    MessageIdentifierSet.subtracting(_:)(a2, v12);
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v26) = a1;
    LODWORD(v25) = -1;
    static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
    v26 = v27;
    v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
    v24[1] = v17;
    sub_1004A7124();
    MessageIdentifierSet.subtracting(_:)(v9, v15);
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.ranges.getter(v6);
    v18 = sub_1000E4C0C();
    v20 = v19;
    sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590);
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    if (v20)
    {
      v21 = 1;
LABEL_6:
      LODWORD(v26) = v21;
      LODWORD(v25) = a1 - 1;
      static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
      v26 = v27;
      v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
      sub_1004A7124();
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v22 = sub_1004A70E4();
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      if (v22)
      {
        return v21;
      }

      else
      {
        return a1;
      }
    }

    if (HIDWORD(v18) < a1)
    {
      v21 = HIDWORD(v18) + 1;
      if (HIDWORD(v18) + 1 < a1)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

uint64_t sub_100059B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v91 = a5;
  v87 = a2;
  v89 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v89);
  v90 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v9 - 8);
  v88 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v92 = &v80[-v12];
  v84 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v84);
  v85 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v86 = &v80[-v15];
  __chkstk_darwin(v16);
  v18 = &v80[-v17];
  __chkstk_darwin(v19);
  v83 = &v80[-v20];
  v21 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v80[-v22];
  v24 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v93 = &v80[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v80[-v28];
  sub_10000E268(a3, v23, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v30 = &qword_1005CD518;
    v31 = &qword_1004CF2F0;
    v32 = v23;
  }

  else
  {
    sub_100025FDC(v23, v29, &qword_1005CD1D0, &unk_1004CF2C0);
    type metadata accessor for MailboxSyncState(0);
    sub_1000E4D18(v29);
    v32 = v29;
    v30 = &qword_1005CD1D0;
    v31 = &unk_1004CF2C0;
  }

  sub_100025F40(v32, v30, v31);
  v33 = *(type metadata accessor for MailboxSyncState(0) + 68);
  v34 = *a4;
  v35 = sub_1000D8054();
  v36 = sub_1000E5918(v34, v35 | ((HIDWORD(v35) & 1) << 32));
  v37 = v93;
  if ((v36 & 1) != 0 && (v87 & 0xFF00) == 0)
  {
    v38 = sub_1000E5108();
    v40 = v39;
    v41 = v91;
    v42 = v83;
    sub_100056ED8(v91, v83, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(v41, v18, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v43 = sub_1004A4A54();
    v44 = sub_1004A6034();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v96[0] = v87;
      *v45 = 68159491;
      v82 = v38;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v84;
      v47 = v42;
      v48 = &v18[*(v84 + 20)];
      *(v45 + 10) = *v48;
      *(v45 + 11) = 2082;
      v49 = *(v46 + 20);
      v81 = v40;
      v50 = v47 + v49;
      *(v45 + 13) = sub_10015BA6C(*(v47 + v49 + 8), *(v47 + v49 + 16), v96);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v51 = *(v48 + 12);
      sub_100056F60(v18, type metadata accessor for MailboxTaskLogger);
      *(v45 + 29) = v51;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v52 = *(v50 + 32);
      v53 = *(v50 + 40);

      sub_100056F60(v47, type metadata accessor for MailboxTaskLogger);
      v94 = v52;
      v95 = v53;
      v54 = sub_1004A5824();
      v56 = sub_10015BA6C(v54, v55, v96);

      *(v45 + 43) = v56;
      *(v45 + 51) = 2048;
      v57 = v82;
      if (v81)
      {
        v57 = 0;
      }

      *(v45 + 53) = v57;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld remaining known-to-be-missing. Requesting FindMissingMessages to re-run.", v45, 0x3Du);
      swift_arrayDestroy();
      v37 = v93;
    }

    else
    {
      sub_100056F60(v18, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v42, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(0xCu);
    sub_100088568(&v94, 12);
  }

  v58 = v90;
  sub_100056ED8(a1 + v33, v90, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v92;
    sub_10005A5E8(v58, v92, _s15MissingMessagesO10IncompleteVMa);
    v61 = v91;
    v62 = v86;
    sub_100056ED8(v91, v86, type metadata accessor for MailboxTaskLogger);
    v63 = v85;
    sub_100056ED8(v61, v85, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v64 = v88;
    sub_100056ED8(v60, v88, _s15MissingMessagesO10IncompleteVMa);
    v65 = sub_1004A4A54();
    v66 = sub_1004A6034();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96[0] = v93;
      *v67 = 68159491;
      *(v67 + 4) = 2;
      *(v67 + 8) = 256;
      v68 = v84;
      v69 = &v63[*(v84 + 20)];
      *(v67 + 10) = *v69;
      *(v67 + 11) = 2082;
      v70 = v62;
      v71 = &v62[*(v68 + 20)];
      *(v67 + 13) = sub_10015BA6C(*(v71 + 1), *(v71 + 2), v96);
      *(v67 + 21) = 1040;
      *(v67 + 23) = 2;
      *(v67 + 27) = 512;
      LOWORD(v69) = *(v69 + 12);
      sub_100056F60(v63, type metadata accessor for MailboxTaskLogger);
      *(v67 + 29) = v69;
      *(v67 + 31) = 2160;
      *(v67 + 33) = 0x786F626C69616DLL;
      *(v67 + 41) = 2085;
      v72 = *(v71 + 4);
      LODWORD(v71) = *(v71 + 10);

      sub_100056F60(v70, type metadata accessor for MailboxTaskLogger);
      v94 = v72;
      v95 = v71;
      v73 = sub_1004A5824();
      v75 = sub_10015BA6C(v73, v74, v96);

      *(v67 + 43) = v75;
      *(v67 + 51) = 2048;
      v76 = v88;
      sub_10000E268(v88, v37, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v77 = MessageIdentifierSet.count.getter();
      sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
      sub_100056F60(v76, _s15MissingMessagesO10IncompleteVMa);
      *(v67 + 53) = v77;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Missing: %ld.", v67, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v64, _s15MissingMessagesO10IncompleteVMa);
      sub_100056F60(v63, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v62, type metadata accessor for MailboxTaskLogger);
    }

    v78 = v92;
    sub_10000E268(v92, v37, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v79 = MessageIdentifierSet.count.getter();
    sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
    _s15MissingMessagesO8ProgressVMa(0);
    MessageIdentifierSet.count.getter();
    sub_100056F60(v78, _s15MissingMessagesO10IncompleteVMa);
    return v79;
  }

  else
  {
    sub_100056F60(v58, _s15MissingMessagesOMa);
    return 0;
  }
}

uint64_t sub_10005A5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005A650()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10005A6C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_10005A6FC()
{
  result = sub_100093190(&off_100598F68);
  qword_1005DDF00 = result;
  return result;
}

uint64_t sub_10005A724()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004D0FC0;
  *(v0 + 32) = &type metadata for DetectChangesToMessages;
  sub_100026044();

  sub_1004A6674();
  *(v0 + 80) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v0 + 128) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v0 + 176) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  *(v0 + 224) = type metadata accessor for FetchMessages(0);

  sub_1004A6674();
  *(v0 + 272) = type metadata accessor for FindMissingMessages(0);

  sub_1004A6674();
  *(v0 + 320) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v0;
}

uint64_t sub_10005A8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a4;
  v5 = sub_10000C9C0(&qword_1005CE540, &unk_1004D0FD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v9 = *(MessagesVMa - 8);
  __chkstk_darwin(MessagesVMa);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v31 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 28);
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v26 = v17 + 56;
  v27 = v18;
  v18(&v13[v15], 1, 1, v16);
  *&v33 = a1;
  *(&v33 + 1) = sub_10005EC80;
  *&v34 = 0;
  *(&v34 + 1) = sub_100060E90;
  *&v35 = 0;
  *(&v35 + 1) = sub_100060EF4;
  v36 = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10005EE60;
  *(v19 + 24) = 0;
  v20 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v20;
  *(v19 + 64) = v35;
  *(v19 + 80) = v36;
  v37[0] = a1;
  v37[1] = sub_10005EC80;
  v37[2] = 0;
  v37[3] = sub_100060E90;
  v37[4] = 0;
  v37[5] = sub_100061824;
  v37[6] = v19;
  swift_bridgeObjectRetain_n();
  sub_10005EEB0(v37, v7);
  if ((*(v9 + 48))(v7, 1, MessagesVMa) == 1)
  {

    sub_100025F40(v7, &qword_1005CE540, &unk_1004D0FD0);
    sub_100025F40(&v13[v15], &qword_1005CD510, &unk_1004CF2E0);
    return (*(v31 + 56))(v32, 1, 1, SearchResult);
  }

  else
  {
    v22 = v28;
    sub_100061968(v7, v28, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v23 = sub_100065B64(&v33);

    *v13 = v23;
    sub_100061968(v22, &v13[*(SearchResult + 20)], _s19UserInitiatedSearchV13FetchMessagesVMa);
    v24 = &v13[*(SearchResult + 24)];
    *v24 = v29;
    v24[8] = v30 & 1;
    sub_100025F40(&v13[v15], &qword_1005CD510, &unk_1004CF2E0);
    v27(&v13[v15], 1, 1, v16);
    v25 = v32;
    sub_100061830(v13, v32, type metadata accessor for FetchSearchResultMessages.Requests);
    (*(v31 + 56))(v25, 0, 1, SearchResult);
    return sub_100061898(v13, type metadata accessor for FetchSearchResultMessages.Requests);
  }
}

void sub_10005AD30(uint64_t a1)
{
  v2 = v1;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  __chkstk_darwin(SearchResultMessages);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v62 - v7;
  v62 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v62);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  v19 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v65 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v67 = &v62 - v26;
  __chkstk_darwin(v27);
  v68 = &v62 - v28;
  v66 = SearchResultMessages;
  sub_10005B6BC(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100025F40(v21, &qword_1005CD518, &qword_1004CF2F0);
    sub_100061830(a1, v12, type metadata accessor for MailboxTaskLogger);
    sub_100061830(a1, v9, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v29 = v63;
    sub_100061830(v2, v63, type metadata accessor for FetchSearchResultMessages);
    v30 = sub_1004A4A54();
    v31 = sub_1004A6034();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v62;
      v34 = &v9[*(v62 + 20)];
      *(v32 + 10) = *v34;
      *(v32 + 11) = 2082;
      v35 = &v12[*(v33 + 20)];
      *(v32 + 13) = sub_10015BA6C(*(v35 + 1), *(v35 + 2), &v71);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      LOWORD(v34) = *(v34 + 12);
      sub_100061898(v9, type metadata accessor for MailboxTaskLogger);
      *(v32 + 29) = v34;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v36 = *(v35 + 4);
      LODWORD(v34) = *(v35 + 10);

      sub_100061898(v12, type metadata accessor for MailboxTaskLogger);
      v69 = v36;
      v70 = v34;
      v37 = sub_1004A5824();
      v39 = sub_10015BA6C(v37, v38, &v71);

      *(v32 + 43) = v39;
      *(v32 + 51) = 2048;
      v40 = *(v66 + 48);
      SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
      v42 = v65;
      sub_10000E268(v29 + v40 + *(SearchResult + 20), v65, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v43 = MessageIdentifierSet.count.getter();
      sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
      sub_100061898(v29, type metadata accessor for FetchSearchResultMessages);
      *(v32 + 53) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, no UIDs to fetch.", v32, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100061898(v29, type metadata accessor for FetchSearchResultMessages);
      sub_100061898(v9, type metadata accessor for MailboxTaskLogger);

      sub_100061898(v12, type metadata accessor for MailboxTaskLogger);
    }
  }

  else
  {
    v44 = v68;
    sub_100025FDC(v21, v68, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061830(a1, v18, type metadata accessor for MailboxTaskLogger);
    sub_100061830(a1, v15, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v45 = v64;
    sub_100061830(v2, v64, type metadata accessor for FetchSearchResultMessages);
    sub_10000E268(v44, v67, &qword_1005CD1D0, &unk_1004CF2C0);
    v46 = sub_1004A4A54();
    v47 = sub_1004A6034();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71 = v63;
      *v48 = 68159747;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      v49 = v62;
      v50 = &v15[*(v62 + 20)];
      *(v48 + 10) = *v50;
      *(v48 + 11) = 2082;
      v51 = &v18[*(v49 + 20)];
      *(v48 + 13) = sub_10015BA6C(*(v51 + 1), *(v51 + 2), &v71);
      *(v48 + 21) = 1040;
      *(v48 + 23) = 2;
      *(v48 + 27) = 512;
      LOWORD(v50) = *(v50 + 12);
      sub_100061898(v15, type metadata accessor for MailboxTaskLogger);
      *(v48 + 29) = v50;
      *(v48 + 31) = 2160;
      *(v48 + 33) = 0x786F626C69616DLL;
      *(v48 + 41) = 2085;
      v52 = *(v51 + 4);
      LODWORD(v50) = *(v51 + 10);

      sub_100061898(v18, type metadata accessor for MailboxTaskLogger);
      v69 = v52;
      v70 = v50;
      v53 = sub_1004A5824();
      v55 = sub_10015BA6C(v53, v54, &v71);

      *(v48 + 43) = v55;
      *(v48 + 51) = 2048;
      v56 = *(v66 + 48);
      v57 = v45 + v56 + *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
      v58 = v65;
      sub_10000E268(v57, v65, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v59 = MessageIdentifierSet.count.getter();
      sub_100025F40(v58, &unk_1005D91B0, &unk_1004CF400);
      sub_100061898(v45, type metadata accessor for FetchSearchResultMessages);
      *(v48 + 53) = v59;
      *(v48 + 61) = 2048;
      v60 = v67;
      v61 = MessageIdentifierSet.count.getter();
      sub_100025F40(v60, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v48 + 63) = v61;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, %ld UIDs to fetch.", v48, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v67, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100061898(v45, type metadata accessor for FetchSearchResultMessages);
      sub_100061898(v15, type metadata accessor for MailboxTaskLogger);

      sub_100061898(v18, type metadata accessor for MailboxTaskLogger);
    }

    sub_100025F40(v68, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}