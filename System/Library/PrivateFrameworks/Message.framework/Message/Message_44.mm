void sub_1B0AC59E4(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v133 = a3;
  v132 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v131 = (&v119 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v119 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v127 = (&v119 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v128 = (&v119 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v119 - v22;
  v281 = *(v5 + 136);
  v282 = *(v5 + 152);
  v283 = *(v5 + 168);
  v284 = *(v5 + 184);
  v277 = *(v5 + 72);
  v278 = *(v5 + 88);
  v279 = *(v5 + 104);
  v280 = *(v5 + 120);
  v273 = *(v5 + 8);
  v274 = *(v5 + 24);
  v275 = *(v5 + 40);
  v276 = *(v5 + 56);
  v293 = *(v5 + 136);
  v294 = *(v5 + 152);
  v295 = *(v5 + 168);
  v296 = *(v5 + 184);
  v289 = *(v5 + 72);
  v290 = *(v5 + 88);
  v291 = *(v5 + 104);
  v292 = *(v5 + 120);
  v285 = *(v5 + 8);
  v286 = *(v5 + 24);
  v287 = *(v5 + 40);
  v288 = *(v5 + 56);
  if (sub_1B04FAE9C(&v285) == 1)
  {
    sub_1B04FAA88(&v261);
  }

  else
  {
    v199 = v293;
    v200 = v294;
    v201 = v295;
    LOBYTE(v202) = v296;
    v195 = v289;
    v196 = v290;
    v197 = v291;
    v198 = v292;
    v191 = v285;
    v192 = v286;
    v193 = v287;
    v194 = v288;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v269 = v199;
    v270 = v200;
    v271 = v201;
    v265 = v195;
    v266 = v196;
    v267 = v197;
    v268 = v198;
    v261 = v191;
    v262 = v192;
    v263 = v193;
    v272 = v202;
    v264 = v194;
  }

  sub_1B0ACE8D0(v5, &v191);
  sub_1B0ACE8D0(v5, &v191);
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, MEMORY[0x1E69E7CC0]))
  {
    sub_1B0ACE908(v5);
    v23 = *(v5 + 4);
    v24 = v23 * 1.25;
    if (v24 != INFINITY)
    {
      if (v24 > -1.0)
      {
        if (v24 < 4294967300.0)
        {
          v25 = __CFADD__(v23, 0x4000);
          v26 = v23 + 0x4000;
          if (!v25)
          {
            v27 = a1;
            if (v26 <= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v26;
            }

            v29 = *v6;
            sub_1B04FAA88(&v237);
            v257 = v245;
            v258 = v246;
            v259 = v247;
            v260 = v248;
            v253 = v241;
            v254 = v242;
            v255 = v243;
            v256 = v244;
            v249 = v237;
            v250 = v238;
            v251 = v239;
            v252 = v240;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v30 = v132;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0398EFC(&v249, &qword_1EB6E4148, &qword_1B0EE17F0);
            *(&v164[8] + 1) = v269;
            *(&v164[9] + 1) = v270;
            *(&v164[10] + 1) = v271;
            BYTE1(v164[11]) = v272;
            *(&v164[4] + 1) = v265;
            *(&v164[5] + 1) = v266;
            *(&v164[6] + 1) = v267;
            *(&v164[7] + 1) = v268;
            *(v164 + 1) = v261;
            *(&v164[1] + 1) = v262;
            *(&v164[2] + 1) = v263;
            *(&v164[3] + 1) = v264;
            *(&v141[8] + 7) = v164[8];
            *(&v141[9] + 7) = v164[9];
            *(&v141[10] + 7) = v164[10];
            *(&v141[4] + 7) = v164[4];
            *(&v141[5] + 7) = v164[5];
            *(&v141[6] + 7) = v164[6];
            *(&v141[7] + 7) = v164[7];
            *(v141 + 7) = v164[0];
            *(&v141[1] + 7) = v164[1];
            *(&v141[2] + 7) = v164[2];
            *(&v141[3] + 7) = v164[3];
            v160 = v164[8];
            v161 = v164[9];
            v162 = v164[10];
            v156 = v164[4];
            v157 = v164[5];
            v158 = v164[6];
            v159 = v164[7];
            v152 = v164[0];
            v153 = v164[1];
            v154 = v164[2];
            LOBYTE(v138) = 1;
            *(&v138 + 1) = v30;
            *&v139 = __PAIR64__(v29, v133);
            *(&v139 + 1) = v27;
            LODWORD(v140) = v28;
            *(&v140 + 1) = MEMORY[0x1E69E7CC0];
            LODWORD(v141[0]) = 0;
            WORD2(v141[0]) = 2;
            BYTE6(v141[0]) = 0;
            *(&v141[11] + 7) = v164[11];
            LOBYTE(v142) = 1;
            v143 = v30;
            v144 = v133;
            v145 = v29;
            v146 = v27;
            v147 = v28;
            v148 = MEMORY[0x1E69E7CC0];
            v149 = 0;
            v150 = 2;
            v151 = 0;
            v163 = v164[11];
            v155 = v164[3];
            sub_1B0ACE448(&v138, &v191);
            sub_1B0ACE480(&v142);
            v165 = v141[9];
            v166[0] = v141[10];
            *(v166 + 9) = *(&v141[10] + 9);
            v164[8] = v141[5];
            v164[9] = v141[6];
            v164[10] = v141[7];
            v164[11] = v141[8];
            v164[4] = v141[1];
            v164[5] = v141[2];
            v164[6] = v141[3];
            v164[7] = v141[4];
            v164[0] = v138;
            v164[1] = v139;
            v164[2] = v140;
            v164[3] = v141[0];
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v203 = v165;
            v204[0] = v166[0];
            *(v204 + 9) = *(v166 + 9);
            v199 = v164[8];
            v200 = v164[9];
            v201 = v164[10];
            v202 = v164[11];
LABEL_44:
            v195 = v164[4];
            v196 = v164[5];
            v197 = v164[6];
            v198 = v164[7];
            v191 = v164[0];
            v192 = v164[1];
            v193 = v164[2];
            v194 = v164[3];
            v110 = v204[0];
            a5[12] = v203;
            a5[13] = v110;
            *(a5 + 217) = *(v204 + 9);
            v111 = v200;
            a5[8] = v199;
            a5[9] = v111;
            v112 = v202;
            a5[10] = v201;
            a5[11] = v112;
            v113 = v196;
            a5[4] = v195;
            a5[5] = v113;
            v114 = v198;
            a5[6] = v197;
            a5[7] = v114;
            v115 = v192;
            *a5 = v191;
            a5[1] = v115;
            v116 = v194;
            a5[2] = v193;
            a5[3] = v116;
            return;
          }

          goto LABEL_57;
        }

        goto LABEL_55;
      }

      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v187 = v281;
  v188 = v282;
  v189 = v283;
  v190 = v284;
  v183 = v277;
  v184 = v278;
  v185 = v279;
  v186 = v280;
  v179 = v273;
  v180 = v274;
  v181 = v275;
  v182 = v276;
  v31 = sub_1B04FAE9C(&v179);
  v130 = a1;
  v125 = a5;
  if (v31 == 1)
  {
    goto LABEL_18;
  }

  v124 = v10;
  v164[8] = v187;
  v164[9] = v188;
  v164[10] = v189;
  LOBYTE(v164[11]) = v190;
  v164[4] = v183;
  v164[5] = v184;
  v164[6] = v185;
  v164[7] = v186;
  v164[0] = v179;
  v164[1] = v180;
  v164[2] = v181;
  v164[3] = v182;
  if (sub_1B04FAE88(v164) != 1)
  {
    v257 = v164[8];
    v258 = v164[9];
    v259 = v164[10];
    v253 = v164[4];
    v254 = v164[5];
    v255 = v164[6];
    v256 = v164[7];
    v249 = v164[0];
    v250 = v164[1];
    v251 = v164[2];
    v260 = v164[11];
    v252 = v164[3];
    BodyStructure.find(_:)(a1, v205);
    v219 = v205[8];
    v220 = v205[9];
    v221 = v205[10];
    v222 = v206;
    v215 = v205[4];
    v216 = v205[5];
    v217 = v205[6];
    v218 = v205[7];
    v211 = v205[0];
    v212 = v205[1];
    v213 = v205[2];
    v214 = v205[3];
    if (sub_1B04FAE88(&v211) == 1)
    {
      sub_1B0ACE908(v5);
      goto LABEL_17;
    }

    v231 = v219;
    v232 = v220;
    v233 = v221;
    v227 = v215;
    v228 = v216;
    v229 = v217;
    v230 = v218;
    v223 = v211;
    v224 = v212;
    v225 = v213;
    v226 = v214;
    v235[8] = v219;
    v235[9] = v220;
    v235[10] = v221;
    v235[4] = v215;
    v235[5] = v216;
    v235[6] = v217;
    v235[7] = v218;
    v235[0] = v211;
    v235[1] = v212;
    v235[2] = v213;
    v234 = v222;
    v236 = v222;
    v235[3] = v214;
    if (sub_1B0717014(v235) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v48 = v127;
      sub_1B0ACE73C(a4, v127, type metadata accessor for MailboxTaskLogger);
      v49 = v126;
      sub_1B0ACE73C(a4, v126, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0ACE8D0(v5, &v191);
      sub_1B03B5C80(v205, &v191, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE8D0(v5, &v191);
      sub_1B03B5C80(v205, &v191, &qword_1EB6E4170, &qword_1B0EC3C60);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v50 = sub_1B0E43988();
      v51 = sub_1B0E45908();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v142 = v131;
        *v52 = 68160259;
        LODWORD(v129) = v51;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v124;
        v54 = v49 + *(v124 + 20);
        *(v52 + 10) = *v54;
        *(v52 + 11) = 2082;
        v55 = *(v53 + 20);
        v128 = v50;
        v56 = v48;
        v57 = v48 + v55;
        *(v52 + 13) = sub_1B0399D64(*(v57 + 1), *(v57 + 2), &v142);
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;
        LOWORD(v54) = *(v54 + 24);
        sub_1B0ACE7A4(v49, type metadata accessor for MailboxTaskLogger);
        *(v52 + 29) = v54;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        v58 = *(v57 + 4);
        LODWORD(v54) = *(v57 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v56, type metadata accessor for MailboxTaskLogger);
        *&v191 = v58;
        DWORD2(v191) = v54;
        v59 = sub_1B0E44BA8();
        v61 = sub_1B0399D64(v59, v60, &v142);

        *(v52 + 43) = v61;
        *(v52 + 51) = 1024;
        sub_1B0ACE908(v6);
        *(v52 + 53) = *v6;
        sub_1B0ACE908(v6);
        *(v52 + 57) = 2080;
        BodyStructure.mediaType.getter();
        v63 = v62;
        v65 = v64;

        v66 = sub_1B0399D64(v63, v65, &v142);

        *(v52 + 59) = v66;
        *(v52 + 67) = 2082;
        v67 = SectionSpecifier.Part.debugDescription.getter(v130);
        v69 = sub_1B0399D64(v67, v68, &v142);

        *(v52 + 69) = v69;
        *(v52 + 77) = 2048;
        v70 = sub_1B0ACA1A0();
        sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
        *(v52 + 79) = v70;
        sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
        v71 = v128;
        _os_log_impl(&dword_1B0389000, v128, v129, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding multi-part '%s' section '[%{public}s]' (approx. %{iec-bytes}ld)", v52, 0x57u);
        v72 = v131;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v72, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);
        sub_1B0ACE908(v6);

LABEL_28:
        sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
LABEL_32:
        v175 = v281;
        v176 = v282;
        v177 = v283;
        v178 = v284;
        v171 = v277;
        v172 = v278;
        v173 = v279;
        v174 = v280;
        v167 = v273;
        v168 = v274;
        v169 = v275;
        v170 = v276;
        goto LABEL_33;
      }

      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);
      sub_1B0ACE7A4(v49, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE908(v6);
      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);

      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
      v103 = v48;
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v126 = *(v73 + 80);
      sub_1B0ACE73C(a4, v129, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(a4, v128, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0ACE8D0(v5, &v191);
      sub_1B0ACE8D0(v5, &v191);
      v122 = BodyStructure.mediaType.getter();
      v123 = v74;
      v76 = v75;
      v78 = v77;
      sub_1B03B5C80(v205, &v191, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B03B5C80(v205, &v191, &qword_1EB6E4170, &qword_1B0EC3C60);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();

      v127 = v78;

      v131 = v79;
      v81 = os_log_type_enabled(v79, v80);
      v82 = v124;
      if (v81)
      {
        v83 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v142 = v121;
        *v83 = 68160515;
        *(v83 + 4) = 2;
        *(v83 + 8) = 256;
        v84 = *(v82 + 20);
        v120 = v76;
        v85 = v128;
        v86 = v128 + v84;
        *(v83 + 10) = *(&v128->isa + v84);
        *(v83 + 11) = 2082;
        v87 = *(v82 + 20);
        LODWORD(v124) = v80;
        v88 = v129;
        v89 = v129 + v87;
        *(v83 + 13) = sub_1B0399D64(*(v129 + v87 + 8), *(v129 + v87 + 16), &v142);
        *(v83 + 21) = 1040;
        *(v83 + 23) = 2;
        *(v83 + 27) = 512;
        LOWORD(v86) = *(v86 + 12);
        sub_1B0ACE7A4(v85, type metadata accessor for MailboxTaskLogger);
        *(v83 + 29) = v86;
        *(v83 + 31) = 2160;
        *(v83 + 33) = 0x786F626C69616DLL;
        *(v83 + 41) = 2085;
        v90 = v88;
        v91 = *(v89 + 32);
        LODWORD(v89) = *(v89 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v90, type metadata accessor for MailboxTaskLogger);
        *&v191 = v91;
        DWORD2(v191) = v89;
        v92 = sub_1B0E44BA8();
        v94 = sub_1B0399D64(v92, v93, &v142);

        *(v83 + 43) = v94;
        *(v83 + 51) = 1024;
        sub_1B0ACE908(v6);
        *(v83 + 53) = *v6;
        sub_1B0ACE908(v6);
        *(v83 + 57) = 2082;
        v95 = v120;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v96 = sub_1B0399D64(v122, v95, &v142);

        *(v83 + 59) = v96;
        *(v83 + 67) = 2082;

        v97 = sub_1B0399D64(v123, v127, &v142);

        *(v83 + 69) = v97;
        *(v83 + 77) = 2082;
        v98 = SectionSpecifier.Part.debugDescription.getter(v130);
        v100 = sub_1B0399D64(v98, v99, &v142);

        *(v83 + 79) = v100;
        *(v83 + 87) = 2048;
        sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
        *(v83 + 89) = v126;
        sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
        v101 = v131;
        _os_log_impl(&dword_1B0389000, v131, v124, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding '%{public}s/%{public}s' section '[%{public}s]' (%{iec-bytes}ld)", v83, 0x61u);
        v102 = v121;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v102, -1, -1);
        MEMORY[0x1B272C230](v83, -1, -1);
        sub_1B0ACE908(v6);

        goto LABEL_28;
      }

      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);
      sub_1B0ACE7A4(v128, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE908(v6);
      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);

      sub_1B0ACE908(v6);

      sub_1B0398EFC(v205, &qword_1EB6E4170, &qword_1B0EC3C60);
      v103 = v129;
    }

    sub_1B0ACE7A4(v103, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

LABEL_17:
  v10 = v124;
LABEL_18:
  sub_1B0ACE73C(a4, v131, type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(a4, v12, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0ACE8D0(v5, &v191);
  sub_1B0ACE8D0(v5, &v191);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = sub_1B0E43988();
  v33 = sub_1B0E458E8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v164[0] = v129;
    *v34 = 68159747;
    LODWORD(v128) = v33;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    v35 = &v12[*(v10 + 20)];
    *(v34 + 10) = *v35;
    *(v34 + 11) = 2082;
    v36 = *(v10 + 20);
    v127 = v32;
    v37 = v131;
    v38 = v131 + v36;
    *(v34 + 13) = sub_1B0399D64(*(&v131[1].isa + v36), *(&v131[2].isa + v36), v164);
    *(v34 + 21) = 1040;
    *(v34 + 23) = 2;
    *(v34 + 27) = 512;
    LOWORD(v35) = *(v35 + 12);
    sub_1B0ACE7A4(v12, type metadata accessor for MailboxTaskLogger);
    *(v34 + 29) = v35;
    *(v34 + 31) = 2160;
    *(v34 + 33) = 0x786F626C69616DLL;
    *(v34 + 41) = 2085;
    v39 = *(v38 + 4);
    LODWORD(v38) = *(v38 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);
    *&v191 = v39;
    DWORD2(v191) = v38;
    v40 = sub_1B0E44BA8();
    v42 = sub_1B0399D64(v40, v41, v164);

    *(v34 + 43) = v42;
    *(v34 + 51) = 1024;
    sub_1B0ACE908(v6);
    *(v34 + 53) = *v6;
    sub_1B0ACE908(v6);
    *(v34 + 57) = 2082;
    v43 = SectionSpecifier.Part.debugDescription.getter(v130);
    v45 = sub_1B0399D64(v43, v44, v164);

    *(v34 + 59) = v45;
    v46 = v127;
    _os_log_impl(&dword_1B0389000, v127, v128, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Section '[%{public}s]' not found in complete body structure.", v34, 0x43u);
    v47 = v129;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v47, -1, -1);
    MEMORY[0x1B272C230](v34, -1, -1);
  }

  else
  {
    sub_1B0ACE908(v6);
    sub_1B0ACE7A4(v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE908(v6);

    sub_1B0ACE7A4(v131, type metadata accessor for MailboxTaskLogger);
  }

  v199 = v281;
  v200 = v282;
  v201 = v283;
  LOBYTE(v202) = v284;
  v195 = v277;
  v196 = v278;
  v197 = v279;
  v198 = v280;
  v191 = v273;
  v192 = v274;
  v193 = v275;
  v194 = v276;
  if (sub_1B04FAE9C(&v191) == 1)
  {
    goto LABEL_34;
  }

  v175 = v199;
  v176 = v200;
  v177 = v201;
  v178 = v202;
  v171 = v195;
  v172 = v196;
  v173 = v197;
  v174 = v198;
  v167 = v191;
  v168 = v192;
  v169 = v193;
  v170 = v194;
LABEL_33:
  v199 = v175;
  v200 = v176;
  v201 = v177;
  LOBYTE(v202) = v178;
  v195 = v171;
  v196 = v172;
  v197 = v173;
  v198 = v174;
  v191 = v167;
  v192 = v168;
  v193 = v169;
  v194 = v170;
  if (sub_1B04FAE88(&v191) == 1)
  {
LABEL_34:
    a5 = v125;
LABEL_35:
    LODWORD(v104) = v6[1];
    goto LABEL_36;
  }

  v245 = v199;
  v246 = v200;
  v247 = v201;
  v248 = v202;
  v241 = v195;
  v242 = v196;
  v243 = v197;
  v244 = v198;
  v237 = v191;
  v238 = v192;
  v239 = v193;
  v240 = v194;
  v164[8] = v175;
  v164[9] = v176;
  v164[10] = v177;
  LOBYTE(v164[11]) = v178;
  v164[4] = v171;
  v164[5] = v172;
  v164[6] = v173;
  v164[7] = v174;
  v164[0] = v167;
  v164[1] = v168;
  v164[2] = v169;
  v164[3] = v170;
  sub_1B07169CC(v164, &v142);
  BodyStructure.subscript.getter(v130, v207);
  sub_1B0ACE908(v6);
  v209[8] = v207[8];
  v209[9] = v207[9];
  v209[10] = v207[10];
  v210 = v208;
  v209[4] = v207[4];
  v209[5] = v207[5];
  v209[6] = v207[6];
  v209[7] = v207[7];
  v209[0] = v207[0];
  v209[1] = v207[1];
  v209[2] = v207[2];
  v209[3] = v207[3];
  v117 = sub_1B0717014(v209);
  a5 = v125;
  if (v117 == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B075E648(v207);
    goto LABEL_35;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v104 = *(v118 + 80);
  sub_1B075E648(v207);
  if ((v104 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!HIDWORD(v104))
  {
LABEL_36:
    v105 = v104 * 1.25;
    if (v105 != INFINITY)
    {
      if (v105 > -1.0)
      {
        if (v105 < 4294967300.0)
        {
          if (v104 < 0xFFFFC000)
          {
            if (v104 + 0x4000 <= v105)
            {
              v106 = v105;
            }

            else
            {
              v106 = v104 + 0x4000;
            }

            v107 = *v6;
            sub_1B04FAA88(v134);
            v136[8] = v134[8];
            v136[9] = v134[9];
            v136[10] = v134[10];
            v137 = v135;
            v136[4] = v134[4];
            v136[5] = v134[5];
            v136[6] = v134[6];
            v136[7] = v134[7];
            v136[0] = v134[0];
            v136[1] = v134[1];
            v136[2] = v134[2];
            v136[3] = v134[3];
            v108 = v130;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v109 = v132;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0398EFC(v136, &qword_1EB6E4148, &qword_1B0EE17F0);
            *(&v164[8] + 1) = v269;
            *(&v164[9] + 1) = v270;
            *(&v164[10] + 1) = v271;
            BYTE1(v164[11]) = v272;
            *(&v164[4] + 1) = v265;
            *(&v164[5] + 1) = v266;
            *(&v164[6] + 1) = v267;
            *(&v164[7] + 1) = v268;
            *(v164 + 1) = v261;
            *(&v164[1] + 1) = v262;
            *(&v164[2] + 1) = v263;
            *(&v164[3] + 1) = v264;
            *(&v141[8] + 7) = v164[8];
            *(&v141[9] + 7) = v164[9];
            *(&v141[10] + 7) = v164[10];
            *(&v141[4] + 7) = v164[4];
            *(&v141[5] + 7) = v164[5];
            *(&v141[6] + 7) = v164[6];
            *(&v141[7] + 7) = v164[7];
            *(v141 + 7) = v164[0];
            *(&v141[1] + 7) = v164[1];
            *(&v141[2] + 7) = v164[2];
            *(&v141[3] + 7) = v164[3];
            v160 = v164[8];
            v161 = v164[9];
            v162 = v164[10];
            v156 = v164[4];
            v157 = v164[5];
            v158 = v164[6];
            v159 = v164[7];
            v152 = v164[0];
            v153 = v164[1];
            v154 = v164[2];
            LOBYTE(v138) = 1;
            *(&v138 + 1) = v109;
            *&v139 = __PAIR64__(v107, v133);
            *(&v139 + 1) = v108;
            LODWORD(v140) = v106;
            *(&v140 + 1) = MEMORY[0x1E69E7CC0];
            LODWORD(v141[0]) = 0;
            WORD2(v141[0]) = 2;
            BYTE6(v141[0]) = 0;
            *(&v141[11] + 7) = v164[11];
            LOBYTE(v142) = 1;
            v143 = v109;
            v144 = v133;
            v145 = v107;
            v146 = v108;
            v147 = v106;
            v148 = MEMORY[0x1E69E7CC0];
            v149 = 0;
            v150 = 2;
            v151 = 0;
            v163 = v164[11];
            v155 = v164[3];
            sub_1B0ACE448(&v138, &v191);
            sub_1B0ACE480(&v142);
            v165 = v141[9];
            v166[0] = v141[10];
            *(v166 + 9) = *(&v141[10] + 9);
            v164[8] = v141[5];
            v164[9] = v141[6];
            v164[10] = v141[7];
            v164[11] = v141[8];
            v164[4] = v141[1];
            v164[5] = v141[2];
            v164[6] = v141[3];
            v164[7] = v141[4];
            v164[0] = v138;
            v164[1] = v139;
            v164[2] = v140;
            v164[3] = v141[0];
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v202 = v164[11];
            v203 = v165;
            v204[0] = v166[0];
            *(v204 + 9) = *(v166 + 9);
            v199 = v164[8];
            v200 = v164[9];
            v201 = v164[10];
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
}

double sub_1B0AC72EC@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
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

    sub_1B0BAFEE8(v7, v16);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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
    sub_1B0ACE938(&v18);
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

uint64_t sub_1B0AC73F4(uint64_t a1, int a2, uint64_t a3)
{
  v122 = a1;
  v123 = a3;
  v121 = a2;
  v120 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v120);
  v124 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v116 - v6;
  v7 = type metadata accessor for MessageSectionData(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v116 - v11;
  v13 = type metadata accessor for SegmentResequencer.PopResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_1B0E443C8();
  v133 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v135 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4188, &qword_1B0EC3C68);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v116 - v18;
  v20 = type metadata accessor for MessageSectionData.Segment(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s25MessageSectionsToDownloadVMa(0);
  v136 = *(v23 + 24);
  v137 = v3;
  v24 = *(v3 + v136);
  v128 = *(v24 + 2);
  if (!v128)
  {
    return 0xF000000000000007;
  }

  v117 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = v9;
  v119 = v7;
  v126 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v24 = sub_1B0B8C900(v24);
  }

  v26 = 0;
  v27 = v24 + 88;
  v28 = v133;
  v133 += 4;
  v134 = (v28 + 6);
  v131 = (v21 + 48);
  v132 = (v21 + 56);
  v29 = v128;
  v21 = v129;
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
    sub_1B0B82B94(v15);
    if ((*v134)(v15, 1, v21) == 1)
    {
      sub_1B0ACE7A4(v15, type metadata accessor for SegmentResequencer.PopResult);
      (*v132)(v19, 1, 1, v20);
    }

    else
    {
      v31 = *v133;
      (*v133)(v135, v15, v21);
      if (*(v27 - 3))
      {
        sub_1B04FAA88(&v198);
        v32 = v130;
      }

      else
      {
        *(v27 - 3) = 1;
        v33 = *v27;
        v34 = *(v27 + 1);
        v35 = *(v27 + 3);
        v176 = *(v27 + 2);
        v177 = v35;
        v174 = v33;
        v175 = v34;
        v36 = *(v27 + 4);
        v37 = *(v27 + 5);
        v38 = *(v27 + 7);
        v180 = *(v27 + 6);
        v181 = v38;
        v178 = v36;
        v179 = v37;
        v39 = *(v27 + 8);
        v40 = *(v27 + 9);
        v41 = *(v27 + 10);
        v185 = v27[176];
        v183 = v40;
        v184 = v41;
        v182 = v39;
        memmove(&v186, v27, 0xB1uLL);
        v42 = sub_1B04FAE9C(&v186);
        v32 = v130;
        if (v42 == 1 || (v206 = v194, v207 = v195, v208 = v196, LOBYTE(v209) = v197, v202 = v190, v203 = v191, v204 = v192, v205 = v193, v198 = v186, v199 = v187, v200 = v188, v201 = v189, sub_1B04FAE88(&v198) == 1))
        {
          sub_1B04FAEB0(&v162);
        }

        else
        {
          v146 = v206;
          v147 = v207;
          v148 = v208;
          v149 = v209;
          v142 = v202;
          v143 = v203;
          v144 = v204;
          v145 = v205;
          v138 = v198;
          v139 = v199;
          v140 = v200;
          v141 = v201;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v158 = v182;
          v159 = v183;
          v160 = v184;
          v161 = v185;
          v154 = v178;
          v155 = v179;
          v156 = v180;
          v157 = v181;
          v150 = v174;
          v151 = v175;
          v152 = v176;
          v153 = v177;
          sub_1B075DC38(&v150, &v162);
          v170 = v146;
          v171 = v147;
          v172 = v148;
          v173 = v149;
          v166 = v142;
          v167 = v143;
          v168 = v144;
          v169 = v145;
          v162 = v138;
          v163 = v139;
          v164 = v140;
          v165 = v141;
        }

        v158 = v170;
        v159 = v171;
        v160 = v172;
        v161 = v173;
        v154 = v166;
        v155 = v167;
        v156 = v168;
        v157 = v169;
        v150 = v162;
        v151 = v163;
        v152 = v164;
        v153 = v165;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v206 = v158;
        v207 = v159;
        v208 = v160;
        LOBYTE(v209) = v161;
        v202 = v154;
        v203 = v155;
        v204 = v156;
        v205 = v157;
        v198 = v150;
        v199 = v151;
        v200 = v152;
        v201 = v153;
      }

      v43 = *(v27 - 2);
      v44 = *(v27 - 4);
      v130 = v32 & 0xFFFFFF0000000000 | *(v27 - 2) | (v44 << 32);
      v45 = sub_1B0B83818(v43, v130);
      v48 = !v44 && v47 == 2;
      v49 = v48 && (v45 | v46) == 0;
      v50 = v49;
      v21 = v129;
      v31(v19, v135, v129);
      v30 = &v19[*(v20 + 24)];
      sub_1B04FAA88(&v174);
      v51 = v181;
      *(v30 + 6) = v180;
      *(v30 + 7) = v51;
      v52 = v179;
      *(v30 + 4) = v178;
      *(v30 + 5) = v52;
      v30[176] = v185;
      v53 = v184;
      *(v30 + 9) = v183;
      *(v30 + 10) = v53;
      *(v30 + 8) = v182;
      v54 = v175;
      *v30 = v174;
      *(v30 + 1) = v54;
      v55 = v177;
      *(v30 + 2) = v176;
      *(v30 + 3) = v55;
      v19[*(v20 + 20)] = v50;
      v56 = *(v30 + 9);
      v194 = *(v30 + 8);
      v195 = v56;
      v196 = *(v30 + 10);
      v197 = v30[176];
      v57 = *(v30 + 5);
      v190 = *(v30 + 4);
      v191 = v57;
      v58 = *(v30 + 7);
      v192 = *(v30 + 6);
      v193 = v58;
      v59 = *(v30 + 1);
      v186 = *v30;
      v187 = v59;
      v60 = *(v30 + 3);
      v188 = *(v30 + 2);
      v189 = v60;
      v61 = v207;
      *(v30 + 8) = v206;
      *(v30 + 9) = v61;
      *(v30 + 10) = v208;
      v30[176] = v209;
      v62 = v203;
      *(v30 + 4) = v202;
      *(v30 + 5) = v62;
      v63 = v205;
      *(v30 + 6) = v204;
      *(v30 + 7) = v63;
      v64 = v199;
      *v30 = v198;
      *(v30 + 1) = v64;
      v65 = v201;
      *(v30 + 2) = v200;
      *(v30 + 3) = v65;
      sub_1B0398EFC(&v186, &qword_1EB6E4190, &unk_1B0EC3C70);
      (*v132)(v19, 0, 1, v20);
      v29 = v128;
    }

    *(v137 + v136) = v24;
    if ((*v131)(v19, 1, v20) != 1)
    {
      break;
    }

    ++v26;
    sub_1B0398EFC(v19, &qword_1EB6E4188, &qword_1B0EC3C68);
    v27 += 240;
    if (v29 == v26)
    {
      return 0xF000000000000007;
    }
  }

  v67 = v127;
  sub_1B0ACE804(v19, v127, type metadata accessor for MessageSectionData.Segment);
  if (v26 >= *(v24 + 2))
  {
    __break(1u);
    goto LABEL_44;
  }

  v24 = *(v27 - 4);
  LODWORD(v21) = *v137;
  v68 = v126;
  sub_1B0ACE73C(v67, &v126[*(v119 + 28)], type metadata accessor for MessageSectionData.Segment);
  *v68 = v122;
  *(v68 + 8) = v121;
  *(v68 + 12) = v21;
  *(v68 + 16) = v24;
  v70 = *(v27 - 40);
  v69 = *(v27 - 24);
  v198 = *(v27 - 56);
  v199 = v70;
  v200 = v69;
  v71 = *(v27 + 24);
  v73 = *(v27 - 8);
  v72 = *(v27 + 8);
  v204 = *(v27 + 40);
  v203 = v71;
  v201 = v73;
  v202 = v72;
  v74 = *(v27 + 88);
  v76 = *(v27 + 56);
  v75 = *(v27 + 72);
  v208 = *(v27 + 104);
  v207 = v74;
  v205 = v76;
  v206 = v75;
  v78 = *(v27 + 136);
  v77 = *(v27 + 152);
  v79 = *(v27 + 120);
  *(v211 + 9) = *(v27 + 161);
  v211[0] = v77;
  v209 = v79;
  v210 = v78;
  v80 = *(&v200 + 1);
  v81 = v201;
  v82 = BYTE4(v201);
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE448(&v198, &v186);
  v83 = sub_1B0B83818(v80, v81 | (v82 << 32));
  v85 = v84;
  v87 = v86;
  sub_1B0ACE480(&v198);
  if (!v82 && v87 == 2 && !(v83 | v85))
  {
    v88 = v137;
    sub_1B0BAFE18(v26, &v186);
    v30 = *(&v187 + 1);
    v67 = *(v117 + 28);
    v26 = *(v88 + v67);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v90 = *(v26 + 2);
      v89 = *(v26 + 3);
      if (v90 >= v89 >> 1)
      {
        v26 = sub_1B0AFFD9C((v89 > 1), v90 + 1, 1, v26);
      }

      sub_1B0ACE480(&v186);
      *(v26 + 2) = v90 + 1;
      *&v26[8 * v90 + 32] = v30;
      *(v137 + v67) = v26;
      goto LABEL_36;
    }

LABEL_44:
    v26 = sub_1B0AFFD9C(0, *(v26 + 2) + 1, 1, v26);
    goto LABEL_33;
  }

LABEL_36:
  v91 = v123;
  v92 = v125;
  sub_1B0ACE73C(v123, v125, type metadata accessor for MailboxTaskLogger);
  v93 = v124;
  sub_1B0ACE73C(v91, v124, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v94 = v126;
  v95 = v118;
  sub_1B0ACE73C(v126, v118, type metadata accessor for MessageSectionData);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = sub_1B0E43988();
  v97 = sub_1B0E458D8();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = v92;
    v99 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v174 = v137;
    *v99 = 68160003;
    LODWORD(v136) = v97;
    *(v99 + 4) = 2;
    *(v99 + 8) = 256;
    v100 = v120;
    v101 = *(v120 + 20);
    LODWORD(v135) = v21;
    v102 = v93 + v101;
    *(v99 + 10) = *(v93 + v101);
    *(v99 + 11) = 2082;
    v103 = v98 + *(v100 + 20);
    *(v99 + 13) = sub_1B0399D64(*(v103 + 8), *(v103 + 16), &v174);
    *(v99 + 21) = 1040;
    *(v99 + 23) = 2;
    *(v99 + 27) = 512;
    LOWORD(v102) = *(v102 + 24);
    sub_1B0ACE7A4(v93, type metadata accessor for MailboxTaskLogger);
    *(v99 + 29) = v102;
    *(v99 + 31) = 2160;
    *(v99 + 33) = 0x786F626C69616DLL;
    *(v99 + 41) = 2085;
    v104 = *(v103 + 32);
    LODWORD(v103) = *(v103 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v98, type metadata accessor for MailboxTaskLogger);
    *&v186 = v104;
    DWORD2(v186) = v103;
    v105 = sub_1B0E44BA8();
    v107 = sub_1B0399D64(v105, v106, &v174);

    *(v99 + 43) = v107;
    *(v99 + 51) = 1024;
    *(v99 + 53) = v135;
    *(v99 + 57) = 2048;
    v108 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0ACE7A4(v95, type metadata accessor for MessageSectionData);
    *(v99 + 59) = v108;
    *(v99 + 67) = 2082;
    v109 = SectionSpecifier.Part.debugDescription.getter(v24);
    v111 = v110;

    v112 = sub_1B0399D64(v109, v111, &v174);

    *(v99 + 69) = v112;
    _os_log_impl(&dword_1B0389000, v96, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Forwarding %ld bytes for section '[%{public}s]' to the persistence.", v99, 0x4Du);
    v113 = v137;
    swift_arrayDestroy();
    v94 = v126;
    MEMORY[0x1B272C230](v113, -1, -1);
    MEMORY[0x1B272C230](v99, -1, -1);
  }

  else
  {
    sub_1B0ACE7A4(v95, type metadata accessor for MessageSectionData);
    sub_1B0ACE7A4(v93, type metadata accessor for MailboxTaskLogger);

    sub_1B0ACE7A4(v92, type metadata accessor for MailboxTaskLogger);
  }

  sub_1B0ACE7A4(v127, type metadata accessor for MessageSectionData.Segment);
  v114 = swift_allocBox();
  sub_1B0ACE804(v94, v115, type metadata accessor for MessageSectionData);
  return v114 | 0x5000000000000004;
}

unint64_t sub_1B0AC8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v74 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v68 - v14;
  v73 = _s25MessageSectionsToDownloadVMa(0);
  v15 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v79 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = (&v68 - v20);
  v21 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0ACB8B8(v22, v5, a2, a4);
  v25 = v24;

  v26 = v25;

  if (v25)
  {
    v28 = 0;
LABEL_15:
    LOBYTE(v86[0]) = v26 & 1;
    return v28 | ((v26 & 1) << 32);
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(v21 + 16))
  {
    v29 = v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23;
    v30 = v80;
    sub_1B0ACE73C(v29, v80, _s25MessageSectionsToDownloadVMa);
    v28 = *v30;
    sub_1B0AC72EC(*v30, v84);
    v86[8] = v84[8];
    v86[9] = v84[9];
    v87[0] = v85[0];
    *(v87 + 9) = *(v85 + 9);
    v86[4] = v84[4];
    v86[5] = v84[5];
    v86[6] = v84[6];
    v86[7] = v84[7];
    v86[0] = v84[0];
    v86[1] = v84[1];
    v86[2] = v84[2];
    v86[3] = v84[3];
    if (sub_1B0ACE88C(v86) == 1)
    {
      v70 = v25;
      v31 = v77;
      v32 = v72;
      sub_1B0ACE73C(v77, v72, type metadata accessor for MailboxTaskLogger);
      v33 = v71;
      sub_1B0ACE73C(v31, v71, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v34 = sub_1B0E43988();
      v35 = sub_1B0E458D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v69 = v28;
        v38 = v37;
        v83[0] = v37;
        *v36 = 68159491;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v39 = v74;
        v40 = v33 + *(v74 + 20);
        *(v36 + 10) = *v40;
        *(v36 + 11) = 2082;
        v41 = v32 + *(v39 + 20);
        *(v36 + 13) = sub_1B0399D64(*(v41 + 8), *(v41 + 16), v83);
        *(v36 + 21) = 1040;
        *(v36 + 23) = 2;
        *(v36 + 27) = 512;
        LOWORD(v40) = *(v40 + 24);
        sub_1B0ACE7A4(v33, type metadata accessor for MailboxTaskLogger);
        *(v36 + 29) = v40;
        *(v36 + 31) = 2160;
        *(v36 + 33) = 0x786F626C69616DLL;
        *(v36 + 41) = 2085;
        v42 = *(v41 + 32);
        v43 = *(v41 + 40);
        v31 = v77;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v32, type metadata accessor for MailboxTaskLogger);
        v81 = v42;
        v82 = v43;
        v44 = sub_1B0E44BA8();
        v46 = sub_1B0399D64(v44, v45, v83);

        *(v36 + 43) = v46;
        *(v36 + 51) = 1024;
        *(v36 + 53) = v69;
        _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download for message %u, but we don’t have a body structure for this message.", v36, 0x39u);
        swift_arrayDestroy();
        v47 = v38;
        v28 = v69;
        v30 = v80;
        MEMORY[0x1B272C230](v47, -1, -1);
        MEMORY[0x1B272C230](v36, -1, -1);
      }

      else
      {
        sub_1B0ACE7A4(v33, type metadata accessor for MailboxTaskLogger);

        sub_1B0ACE7A4(v32, type metadata accessor for MailboxTaskLogger);
      }

      v26 = v70;
      v48 = v75;
      v50 = v78;
      v49 = v79;
    }

    else
    {
      sub_1B0398EFC(v84, &qword_1EB6E4168, &qword_1B0EC3C58);
      v48 = v75;
      v50 = v78;
      v49 = v79;
      v31 = v77;
    }

    sub_1B0ACE73C(v31, v48, type metadata accessor for MailboxTaskLogger);
    v51 = v76;
    sub_1B0ACE73C(v31, v76, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ACE73C(v30, v50, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v30, v49, _s25MessageSectionsToDownloadVMa);
    v52 = sub_1B0E43988();
    LODWORD(v77) = sub_1B0E45908();
    if (os_log_type_enabled(v52, v77))
    {
      v53 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v83[0] = v75;
      *v53 = 68159747;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      v54 = v74;
      v55 = v51 + *(v74 + 20);
      *(v53 + 10) = *v55;
      *(v53 + 11) = 2082;
      v56 = v28;
      v57 = v51;
      v58 = v48;
      v59 = v48 + *(v54 + 20);
      *(v53 + 13) = sub_1B0399D64(*(v59 + 8), *(v59 + 16), v83);
      *(v53 + 21) = 1040;
      *(v53 + 23) = 2;
      *(v53 + 27) = 512;
      LOWORD(v55) = *(v55 + 24);
      v60 = v57;
      v28 = v56;
      sub_1B0ACE7A4(v60, type metadata accessor for MailboxTaskLogger);
      *(v53 + 29) = v55;
      *(v53 + 31) = 2160;
      *(v53 + 33) = 0x786F626C69616DLL;
      *(v53 + 41) = 2085;
      v61 = *(v59 + 32);
      LODWORD(v59) = *(v59 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v58, type metadata accessor for MailboxTaskLogger);
      v81 = v61;
      v82 = v59;
      v62 = sub_1B0E44BA8();
      v64 = sub_1B0399D64(v62, v63, v83);

      *(v53 + 43) = v64;
      *(v53 + 51) = 2048;
      v65 = *(*(v78 + *(v73 + 28)) + 16);
      sub_1B0ACE7A4(v78, _s25MessageSectionsToDownloadVMa);
      *(v53 + 53) = v65;
      *(v53 + 61) = 1024;
      LODWORD(v65) = *v79;
      sub_1B0ACE7A4(v79, _s25MessageSectionsToDownloadVMa);
      *(v53 + 63) = v65;
      _os_log_impl(&dword_1B0389000, v52, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download of %ld sections for message %u.", v53, 0x43u);
      v66 = v75;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v66, -1, -1);
      MEMORY[0x1B272C230](v53, -1, -1);

      v67 = v80;
    }

    else
    {
      sub_1B0ACE7A4(v49, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE7A4(v50, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE7A4(v51, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v48, type metadata accessor for MailboxTaskLogger);
      v67 = v30;
    }

    sub_1B0ACE7A4(v67, _s25MessageSectionsToDownloadVMa);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1B0AC8A34(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v225 = a1;
  v3 = v2;
  v226 = a2;
  v4 = sub_1B0E43308();
  v215 = *(v4 - 8);
  v216 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v213 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v214 = &v198 - v7;
  v8 = type metadata accessor for MessageData.BodySection(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v219 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v206 = &v198 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v198 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v212 = &v198 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v211 = (&v198 - v18);
  v222 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v222);
  v217 = (&v198 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v198 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v198 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v205 = &v198 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v201 = &v198 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v202 = &v198 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v220 = &v198 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v210 = (&v198 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v209 = &v198 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v221 = (&v198 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v198 - v39;
  v41 = sub_1B0E443C8();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v208 = &v198 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v207 = &v198 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v198 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v198 - v50;
  v223 = *(v3 + 20);
  v52 = *(v9 + 32);
  v53 = v225;
  sub_1B03B5C80(v225 + v52, v40, &qword_1EB6E4178, &unk_1B0EE7570);
  v54 = type metadata accessor for MessageData.BodyData(0);
  if ((*(*(v54 - 8) + 48))(v40, 1, v54) != 1)
  {
    v217 = *(v42 + 16);
    v218 = v3;
    v217(v48, v40, v41);
    sub_1B0ACE7A4(v40, type metadata accessor for MessageData.BodyData);
    v219 = v42;
    (*(v42 + 32))(v51, v48, v41);
    v82 = *(v53 + 24);
    v199 = v41;
    v200 = v51;
    if (v82)
    {
      v83 = v226;
      v84 = v210;
      sub_1B0ACE73C(v226, v210, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v83, v220, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v85 = v208;
      v217(v208, v51, v41);
      v86 = v212;
      sub_1B0ACE73C(v53, v212, type metadata accessor for MessageData.BodySection);
      v87 = sub_1B0E43988();
      v88 = sub_1B0E458D8();
      v89 = v41;
      if (os_log_type_enabled(v87, v88))
      {
        v90 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v229 = v221;
        *v90 = 68160003;
        LODWORD(v217) = v88;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v91 = v222;
        v92 = *(v222 + 20);
        v93 = v84;
        v211 = v87;
        v94 = v220;
        v95 = v220 + v92;
        *(v90 + 10) = *(v220 + v92);
        *(v90 + 11) = 2082;
        v96 = v93 + *(v91 + 20);
        *(v90 + 13) = sub_1B0399D64(*(v96 + 8), *(v96 + 16), &v229);
        *(v90 + 21) = 1040;
        *(v90 + 23) = 2;
        *(v90 + 27) = 512;
        LOWORD(v95) = *(v95 + 24);
        sub_1B0ACE7A4(v94, type metadata accessor for MailboxTaskLogger);
        *(v90 + 29) = v95;
        *(v90 + 31) = 2160;
        *(v90 + 33) = 0x786F626C69616DLL;
        *(v90 + 41) = 2085;
        v97 = *(v96 + 32);
        LODWORD(v96) = *(v96 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v93, type metadata accessor for MailboxTaskLogger);
        v227 = v97;
        v228 = v96;
        v98 = sub_1B0E44BA8();
        v100 = sub_1B0399D64(v98, v99, &v229);

        *(v90 + 43) = v100;
        *(v90 + 51) = 1024;
        *(v90 + 53) = v223;
        *(v90 + 57) = 2048;
        v101 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v102 = v85;
        v103 = v219;
        v104 = *(v219 + 8);
        v104(v102, v89);
        *(v90 + 59) = v101;
        *(v90 + 67) = 2082;
        v83 = v226;
        v105 = SectionSpecifier.debugDescription.getter(*v86, *(v86 + 8), *(v86 + 16));
        v107 = v106;
        sub_1B0ACE7A4(v86, type metadata accessor for MessageData.BodySection);
        v108 = sub_1B0399D64(v105, v107, &v229);

        *(v90 + 69) = v108;
        v109 = v211;
        _os_log_impl(&dword_1B0389000, v211, v217, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes for section '%{public}s'", v90, 0x4Du);
        v110 = v221;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v110, -1, -1);
        v111 = v90;
        v51 = v200;
        MEMORY[0x1B272C230](v111, -1, -1);
      }

      else
      {
        v160 = v85;
        v103 = v219;
        v104 = *(v219 + 8);
        v104(v160, v89);
        sub_1B0ACE7A4(v220, type metadata accessor for MailboxTaskLogger);

        sub_1B0ACE7A4(v84, type metadata accessor for MailboxTaskLogger);
        sub_1B0ACE7A4(v86, type metadata accessor for MessageData.BodySection);
      }

      v156 = 0;
      v161 = v224;
    }

    else
    {
      LODWORD(v220) = *(v53 + 20);
      v83 = v226;
      sub_1B0ACE73C(v226, v221, type metadata accessor for MailboxTaskLogger);
      v133 = v209;
      sub_1B0ACE73C(v83, v209, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v134 = v207;
      v217(v207, v51, v41);
      v135 = v211;
      sub_1B0ACE73C(v53, v211, type metadata accessor for MessageData.BodySection);
      v136 = sub_1B0E43988();
      v137 = sub_1B0E458D8();
      v138 = v41;
      if (os_log_type_enabled(v136, v137))
      {
        v139 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v229 = v217;
        *v139 = 68160259;
        LODWORD(v212) = v137;
        *(v139 + 4) = 2;
        *(v139 + 8) = 256;
        v140 = v222;
        v141 = v133 + *(v222 + 20);
        *(v139 + 10) = *v141;
        *(v139 + 11) = 2082;
        v142 = *(v140 + 20);
        v210 = v136;
        v143 = v221;
        v144 = v221 + v142;
        *(v139 + 13) = sub_1B0399D64(*(v221 + v142 + 8), *(v221 + v142 + 16), &v229);
        *(v139 + 21) = 1040;
        *(v139 + 23) = 2;
        *(v139 + 27) = 512;
        LOWORD(v141) = *(v141 + 24);
        sub_1B0ACE7A4(v133, type metadata accessor for MailboxTaskLogger);
        *(v139 + 29) = v141;
        *(v139 + 31) = 2160;
        *(v139 + 33) = 0x786F626C69616DLL;
        *(v139 + 41) = 2085;
        v145 = *(v144 + 4);
        v146 = *(v144 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v143, type metadata accessor for MailboxTaskLogger);
        v227 = v145;
        v228 = v146;
        v147 = sub_1B0E44BA8();
        v149 = sub_1B0399D64(v147, v148, &v229);

        *(v139 + 43) = v149;
        *(v139 + 51) = 1024;
        *(v139 + 53) = v223;
        *(v139 + 57) = 2048;
        v150 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v103 = v219;
        v104 = *(v219 + 8);
        v104(v134, v138);
        *(v139 + 59) = v150;
        *(v139 + 67) = 1024;
        v151 = v220;
        *(v139 + 69) = v220;
        *(v139 + 73) = 2082;
        v152 = SectionSpecifier.debugDescription.getter(v135->isa, v135[1].isa, LOBYTE(v135[2].isa));
        v154 = v153;
        sub_1B0ACE7A4(v135, type metadata accessor for MessageData.BodySection);
        v155 = sub_1B0399D64(v152, v154, &v229);

        *(v139 + 75) = v155;
        v156 = v151;
        v157 = v210;
        _os_log_impl(&dword_1B0389000, v210, v212, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes (offset %u) for section '%{public}s'", v139, 0x53u);
        v158 = v217;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v158, -1, -1);
        v159 = v139;
        v83 = v226;
        MEMORY[0x1B272C230](v159, -1, -1);
      }

      else
      {
        v162 = v219;
        v104 = *(v219 + 8);
        v104(v134, v138);
        v163 = v133;
        v103 = v162;
        sub_1B0ACE7A4(v163, type metadata accessor for MailboxTaskLogger);

        v156 = v220;
        sub_1B0ACE7A4(v221, type metadata accessor for MailboxTaskLogger);
        sub_1B0ACE7A4(v135, type metadata accessor for MessageData.BodySection);
      }

      v161 = v224;
      v51 = v200;
    }

    v164 = v218;
    sub_1B0B817C8(v51, v156, v83);
    v165 = v51;
    if (!v161)
    {
      if (!*(v164 + 52))
      {
        v166 = *(v164 + 40);
        v167 = v214;
        sub_1B0B82A64(v166);
        v168 = v213;
        sub_1B0E43238();
        v169 = MEMORY[0x1B2725380](v167, v168);
        v170 = *(v215 + 8);
        v171 = v168;
        v172 = v216;
        v170(v171, v216);
        v173 = v167;
        v174 = v201;
        v175 = v172;
        v176 = v203;
        v170(v173, v175);
        v177 = v202;
        if (v169)
        {
          sub_1B0ACE73C(v83, v202, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE73C(v83, v174, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE73C(v225, v176, type metadata accessor for MessageData.BodySection);
          v178 = sub_1B0E43988();
          v179 = sub_1B0E458D8();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            LODWORD(v225) = v179;
            v181 = v180;
            v182 = swift_slowAlloc();
            v224 = 0;
            v226 = v182;
            v229 = v182;
            *v181 = 68159747;
            *(v181 + 4) = 2;
            *(v181 + 8) = 256;
            v183 = v222;
            v184 = v176;
            v185 = v174;
            v186 = v174 + *(v222 + 20);
            *(v181 + 10) = *v186;
            *(v181 + 11) = 2082;
            v187 = v103;
            v188 = v177 + *(v183 + 20);
            *(v181 + 13) = sub_1B0399D64(*(v188 + 8), *(v188 + 16), &v229);
            *(v181 + 21) = 1040;
            *(v181 + 23) = 2;
            *(v181 + 27) = 512;
            LOWORD(v186) = *(v186 + 24);
            sub_1B0ACE7A4(v185, type metadata accessor for MailboxTaskLogger);
            *(v181 + 29) = v186;
            *(v181 + 31) = 2160;
            *(v181 + 33) = 0x786F626C69616DLL;
            *(v181 + 41) = 2085;
            v189 = *(v188 + 32);
            LODWORD(v188) = *(v188 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v177, type metadata accessor for MailboxTaskLogger);
            v227 = v189;
            v228 = v188;
            v190 = sub_1B0E44BA8();
            v192 = sub_1B0399D64(v190, v191, &v229);

            *(v181 + 43) = v192;
            *(v181 + 51) = 1024;
            *(v181 + 53) = v223;
            *(v181 + 57) = 2082;
            v193 = SectionSpecifier.debugDescription.getter(*v184, *(v184 + 8), *(v184 + 16));
            v195 = v194;
            sub_1B0ACE7A4(v184, type metadata accessor for MessageData.BodySection);
            v196 = sub_1B0399D64(v193, v195, &v229);

            *(v181 + 59) = v196;
            _os_log_impl(&dword_1B0389000, v178, v225, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: All data for section '%{public}s' has been received.", v181, 0x43u);
            v197 = v226;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v197, -1, -1);
            MEMORY[0x1B272C230](v181, -1, -1);

            (*(v187 + 8))(v200, v199);
          }

          else
          {
            sub_1B0ACE7A4(v174, type metadata accessor for MailboxTaskLogger);

            sub_1B0ACE7A4(v177, type metadata accessor for MailboxTaskLogger);
            v104(v200, v199);
            sub_1B0ACE7A4(v176, type metadata accessor for MessageData.BodySection);
          }

          return;
        }
      }

      v165 = v200;
    }

    v104(v165, v199);
    return;
  }

  v55 = v53;
  sub_1B0398EFC(v40, &qword_1EB6E4178, &unk_1B0EE7570);
  if (*(v3 + 52) || (v56 = v214, sub_1B0B82A64(*(v3 + 40)), v57 = v213, sub_1B0E43238(), v58 = MEMORY[0x1B2725380](v56, v57), v59 = *(v215 + 8), v60 = v57, v61 = v216, v59(v60, v216), v59(v56, v61), (v58 & 1) == 0))
  {
    v112 = v226;
    v113 = v218;
    sub_1B0ACE73C(v226, v218, type metadata accessor for MailboxTaskLogger);
    v114 = v217;
    sub_1B0ACE73C(v112, v217, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v115 = v219;
    sub_1B0ACE73C(v55, v219, type metadata accessor for MessageData.BodySection);
    v116 = sub_1B0E43988();
    v117 = sub_1B0E458E8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v229 = v226;
      *v118 = 68159747;
      *(v118 + 4) = 2;
      *(v118 + 8) = 256;
      v119 = v222;
      v120 = v114 + *(v222 + 20);
      *(v118 + 10) = *v120;
      *(v118 + 11) = 2082;
      v121 = v113 + *(v119 + 20);
      *(v118 + 13) = sub_1B0399D64(*(v121 + 8), *(v121 + 16), &v229);
      *(v118 + 21) = 1040;
      *(v118 + 23) = 2;
      *(v118 + 27) = 512;
      LOWORD(v120) = *(v120 + 12);
      sub_1B0ACE7A4(v114, type metadata accessor for MailboxTaskLogger);
      *(v118 + 29) = v120;
      *(v118 + 31) = 2160;
      *(v118 + 33) = 0x786F626C69616DLL;
      *(v118 + 41) = 2085;
      v122 = v113;
      v123 = v115;
      v124 = *(v121 + 32);
      LODWORD(v120) = *(v121 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v122, type metadata accessor for MailboxTaskLogger);
      v227 = v124;
      v228 = v120;
      v125 = sub_1B0E44BA8();
      v127 = sub_1B0399D64(v125, v126, &v229);

      *(v118 + 43) = v127;
      *(v118 + 51) = 1024;
      *(v118 + 53) = v223;
      *(v118 + 57) = 2082;
      v128 = SectionSpecifier.debugDescription.getter(*v123, *(v123 + 8), *(v123 + 16));
      v130 = v129;
      sub_1B0ACE7A4(v123, type metadata accessor for MessageData.BodySection);
      v131 = sub_1B0399D64(v128, v130, &v229);

      *(v118 + 59) = v131;
      _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s'. Message may have been deleted.", v118, 0x43u);
      v132 = v226;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v132, -1, -1);
      MEMORY[0x1B272C230](v118, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v114, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v113, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v115, type metadata accessor for MessageData.BodySection);
    }

    sub_1B0ACE9F0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v62 = v226;
    v63 = v205;
    sub_1B0ACE73C(v226, v205, type metadata accessor for MailboxTaskLogger);
    v64 = v204;
    sub_1B0ACE73C(v62, v204, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v65 = v206;
    sub_1B0ACE73C(v55, v206, type metadata accessor for MessageData.BodySection);
    v66 = sub_1B0E43988();
    v67 = sub_1B0E45908();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v229 = v226;
      *v68 = 68159747;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v222;
      v70 = v64 + *(v222 + 20);
      *(v68 + 10) = *v70;
      *(v68 + 11) = 2082;
      v71 = v63;
      v72 = v63 + *(v69 + 20);
      *(v68 + 13) = sub_1B0399D64(*(v72 + 8), *(v72 + 16), &v229);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      LOWORD(v70) = *(v70 + 24);
      sub_1B0ACE7A4(v64, type metadata accessor for MailboxTaskLogger);
      *(v68 + 29) = v70;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v73 = *(v72 + 32);
      LODWORD(v72) = *(v72 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v71, type metadata accessor for MailboxTaskLogger);
      v227 = v73;
      v228 = v72;
      v74 = sub_1B0E44BA8();
      v76 = sub_1B0399D64(v74, v75, &v229);

      *(v68 + 43) = v76;
      *(v68 + 51) = 1024;
      *(v68 + 53) = v223;
      *(v68 + 57) = 2082;
      v77 = SectionSpecifier.debugDescription.getter(*v65, *(v65 + 8), *(v65 + 16));
      v79 = v78;
      sub_1B0ACE7A4(v65, type metadata accessor for MessageData.BodySection);
      v80 = sub_1B0399D64(v77, v79, &v229);

      *(v68 + 59) = v80;
      _os_log_impl(&dword_1B0389000, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s', but we already have all data. Ignoring.", v68, 0x43u);
      v81 = v226;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v81, -1, -1);
      MEMORY[0x1B272C230](v68, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v64, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v63, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v65, type metadata accessor for MessageData.BodySection);
    }
  }
}

uint64_t sub_1B0ACA1A0()
{
  v1 = *(v0 + 144);
  v25[8] = *(v0 + 128);
  v25[9] = v1;
  v25[10] = *(v0 + 160);
  v26 = *(v0 + 176);
  v2 = *(v0 + 80);
  v25[4] = *(v0 + 64);
  v25[5] = v2;
  v3 = *(v0 + 112);
  v25[6] = *(v0 + 96);
  v25[7] = v3;
  v4 = *(v0 + 16);
  v25[0] = *v0;
  v25[1] = v4;
  v5 = *(v0 + 48);
  v25[2] = *(v0 + 32);
  v25[3] = v5;
  if (sub_1B0717014(v25) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v6 = 0;
    v8 = *v7 + 32;
    v9 = *(*v7 + 16) + 1;
    while (--v9)
    {
      v10 = v8 + 184;
      v11 = *v8;
      v12 = *(v8 + 16);
      v13 = *(v8 + 48);
      v27[2] = *(v8 + 32);
      v27[3] = v13;
      v27[0] = v11;
      v27[1] = v12;
      v14 = *(v8 + 64);
      v15 = *(v8 + 80);
      v16 = *(v8 + 112);
      v27[6] = *(v8 + 96);
      v27[7] = v16;
      v27[4] = v14;
      v27[5] = v15;
      v17 = *(v8 + 128);
      v18 = *(v8 + 144);
      v19 = *(v8 + 160);
      v28 = *(v8 + 176);
      v27[9] = v18;
      v27[10] = v19;
      v27[8] = v17;
      sub_1B07169CC(v27, v24);
      v20 = sub_1B0ACA1A0();
      sub_1B075E648(v27);
      v8 = v10;
      v21 = __OFADD__(v6, v20);
      v6 += v20;
      if (v21)
      {
        __break(1u);
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return *(v22 + 80);
  }

  return v6;
}

uint64_t sub_1B0ACA2C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B945B4(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4158, &qword_1B0EC3518);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0ACA5B8(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0ACA438(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0BCACA8(v3, 0);
  result = sub_1B0B0A024(0, v3, 0);
  v5 = 0;
  v6 = v2;
  v23 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  if ((v11 & v7) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return 0;
    }

    v12 = *(v8 + 8 * v14);
    ++v5;
    if (v12)
    {
      v5 = v14;
      do
      {
LABEL_8:
        v15 = __clz(__rbit64(v12)) | (v5 << 6);
        v16 = *(*(v23 + 48) + 4 * v15);
        v17 = *(v23 + 56) + 16 * v15;
        v18 = *v17;
        v24 = *(v17 + 8);
        v19 = *(v17 + 9);
        result = sub_1B0ACADC0(v16);
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1B0B0A024((v20 > 1), v21 + 1, 1);
        }

        *(v6 + 16) = v21 + 1;
        v22 = v6 + 16 * v21;
        *(v22 + 32) = v18;
        v12 &= v12 - 1;
        *(v22 + 40) = v24;
        *(v22 + 41) = v19;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ACA5B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v89 = (v8 + 16);
    v90 = *(v8 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v8 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B0ACAB94((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
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
  v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1B0AFF300((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 32;
    v45 = (v8 + 32 + 16 * v42);
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
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
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

        v73 = (v8 + 16 * v43);
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

        v76 = (v44 + 16 * v46);
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

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_1B0ACAB94((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v8 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v8 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v8 + 16 * v43);
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
        v80 = (v44 + 16 * v46);
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

uint64_t sub_1B0ACAB94(char *__dst, char *__src, unint64_t a3, char *a4)
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

uint64_t sub_1B0ACADC0(uint64_t a1)
{
  v2 = a1;
  v4 = v1 + 1;
  v3 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v3;
  if ((result & 1) == 0)
  {
    result = sub_1B0B0A044(0, *(v3 + 16) + 1, 1);
    v3 = *v4;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1B0B0A044((v6 > 1), v7 + 1, 1);
    v3 = *v4;
  }

  *(v3 + 16) = v7 + 1;
  *(v3 + 4 * v7 + 32) = v2;
  v1[1] = v3;
  v8 = *v1;
  if (!*v1)
  {
    if (v7 < 0xF)
    {
      return result;
    }

    return sub_1B0BCA0AC();
  }

  swift_beginAccess();
  if (MEMORY[0x1B2725670](*(v8 + 16) & 0x3FLL) <= v7)
  {
    return sub_1B0BCA0AC();
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v1;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v10 = sub_1B0E43578();

    *v1 = v10;
    v9 = v10;
  }

  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *(v9 + 16), 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (sub_1B0E434F8())
  {
    while (1)
    {
      sub_1B0E43548();
    }
  }

  return sub_1B0E43538();
}

uint64_t sub_1B0ACAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B0ACE73C(a1, &v20 - v12, _s19MessageHeaderStatusOMa);
  sub_1B0ACE73C(a2, &v13[v15], _s19MessageHeaderStatusOMa);
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
    sub_1B0398EFC(v13, &qword_1EB6E4160, &unk_1B0EC3C48);
    v18 = 0;
    return v18 & 1;
  }

  if (!v17)
  {
    sub_1B0ACE73C(v13, v10, _s19MessageHeaderStatusOMa);
    if (!v16(&v13[v15], 3, v4))
    {
      sub_1B0ACE804(&v13[v15], v7, type metadata accessor for MessageHeader);
      v18 = static MessageHeader.== infix(_:_:)(v10, v7);
      sub_1B0ACE7A4(v7, type metadata accessor for MessageHeader);
      sub_1B0ACE7A4(v10, type metadata accessor for MessageHeader);
      sub_1B0ACE7A4(v13, _s19MessageHeaderStatusOMa);
      return v18 & 1;
    }

    sub_1B0ACE7A4(v10, type metadata accessor for MessageHeader);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1B0ACE7A4(v13, _s19MessageHeaderStatusOMa);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B0ACB2BC(uint64_t a1, uint64_t a2)
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
  if (sub_1B04FAE9C(&v63) == 1)
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
    result = sub_1B04FAE9C(&v161);
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
  if (sub_1B04FAE9C(&v113) == 1)
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
  if (sub_1B04FAE88(&v87) != 1)
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
    if (sub_1B04FAE88(&v137) == 1)
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
    if (sub_1B0717014(v111) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v22 = v21[5];
      v45 = v21[4];
      v46 = v22;
      v47 = v21[6];
      *&v48 = *(v21 + 14);
      v23 = v21[1];
      v41 = *v21;
      v42 = v23;
      v24 = v21[3];
      v43 = v21[2];
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
      if (sub_1B0717014(&v161) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v26 = v25[5];
        v56 = v25[4];
        v57 = v26;
        v58 = v25[6];
        *&v59 = *(v25 + 14);
        v27 = v25[1];
        v52 = *v25;
        v53 = v27;
        v28 = v25[3];
        v54 = v25[2];
        v55 = v28;
        return (static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v41, &v52) & 1) != 0;
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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
      if (sub_1B0717014(&v161) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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
  result = sub_1B04FAE88(&v161);
LABEL_5:
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0ACB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v54 = type metadata accessor for MessageHeader(0);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v40 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v39 - v8;
  v9 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = v39 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v52 = v39 - v14;
  v15 = *(a1 + 16);
  v16 = v15 == 0;
  if (v15)
  {
    v41 = v13;
    v39[1] = v4;
    v53 = (v6 + 48);
    v45 = (v6 + 56);
    v17 = 0;
    v51 = _s25MessageSectionsToDownloadVMa(0);
    v18 = (a1 + ((*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80)));
    v50 = *(*(v51 - 8) + 72);
    v44 = v15;
    while (1)
    {
      v20 = v51;
      v21 = v52;
      v22 = *(v51 + 20);
      sub_1B0ACE73C(v18 + v22, v52, _s19MessageHeaderStatusOMa);
      v23 = *v53;
      v24 = (*v53)(v21, 3, v54);
      sub_1B0ACE7A4(v21, _s19MessageHeaderStatusOMa);
      if (*(*(v18 + *(v20 + 24)) + 16))
      {
        goto LABEL_5;
      }

      v48 = v16;
      v25 = v49;
      (*v45)(v49, 1, 3, v54);
      v26 = *(v46 + 48);
      v27 = v18 + v22;
      v28 = v47;
      sub_1B0ACE73C(v27, v47, _s19MessageHeaderStatusOMa);
      sub_1B0ACE73C(v25, v28 + v26, _s19MessageHeaderStatusOMa);
      v29 = v23(v28, 3, v54);
      if (v29 > 1)
      {
        break;
      }

      v30 = v24;
      if (v29)
      {
        v33 = v23(v28 + v26, 3, v54) == 1;
        goto LABEL_15;
      }

      v31 = v41;
      sub_1B0ACE73C(v28, v41, _s19MessageHeaderStatusOMa);
      if (!v23(v28 + v26, 3, v54))
      {
        v34 = v28 + v26;
        v35 = v40;
        sub_1B0ACE804(v34, v40, type metadata accessor for MessageHeader);
        v36 = static MessageHeader.== infix(_:_:)(v31, v35);
        v37 = v35;
        v28 = v47;
        sub_1B0ACE7A4(v37, type metadata accessor for MessageHeader);
        v30 = v24;
        sub_1B0ACE7A4(v31, type metadata accessor for MessageHeader);
        if (v36)
        {
LABEL_3:
          sub_1B0ACE7A4(v28, _s19MessageHeaderStatusOMa);
          sub_1B0ACE7A4(v49, _s19MessageHeaderStatusOMa);
          v15 = v44;
LABEL_4:
          if ((sub_1B0A9E1D0(*v18 | 0x200000000, v42, v43, v19) & 1) == 0)
          {
            return v17;
          }

          goto LABEL_5;
        }

        sub_1B0ACE7A4(v28, _s19MessageHeaderStatusOMa);
        goto LABEL_17;
      }

      sub_1B0ACE7A4(v31, type metadata accessor for MessageHeader);
LABEL_16:
      sub_1B0398EFC(v28, &qword_1EB6E4160, &unk_1B0EC3C48);
LABEL_17:
      v15 = v44;
      sub_1B0ACE7A4(v49, _s19MessageHeaderStatusOMa);
      if (!v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      ++v17;
      v18 = (v18 + v50);
      v16 = v15 == v17;
      if (v15 == v17)
      {
        return 0;
      }
    }

    v33 = v29 == 2;
    v30 = v24;
    v32 = v28 + v26;
    if (v33)
    {
      v33 = v23(v32, 3, v54) == 2;
    }

    else
    {
      v33 = v23(v32, 3, v54) == 3;
    }

LABEL_15:
    if (v33)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  return 0;
}

void sub_1B0ACBE30(unsigned int a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75[-v19];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v86);
  v22 = &v75[-v21];
  v88 = type metadata accessor for DownloadTask.CommandID(0);
  v23 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v25 = &v75[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75[-v27];
  v29 = sub_1B0AF40B4(a4, a5);
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
      sub_1B0ACE73C(&v33[*(v23 + 72) * v32], v28, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE73C(v28, v25, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0ACE7A4(v28, type metadata accessor for DownloadTask.CommandID);
        sub_1B0ACE7A4(v25, type metadata accessor for DownloadTask.CommandID);
      }

      else
      {
        sub_1B03C60A4(v25, v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        LODWORD(v101) = v87;
        v34 = MessageIdentifierSet.contains(_:)(&v101, v86);
        v33 = v85;
        sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0ACE7A4(v28, type metadata accessor for DownloadTask.CommandID);
        if (v34)
        {

          v35 = v80;
          v36 = v77;
          sub_1B0ACE73C(v80, v77, type metadata accessor for MailboxTaskLogger);
          v37 = v81;
          sub_1B0ACE73C(v35, v81, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v38 = sub_1B0E43988();
          v39 = sub_1B0E45908();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v89 = v41;
            *v40 = 68159491;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v42 = v79;
            v43 = &v37[*(v79 + 20)];
            *(v40 + 10) = *v43;
            *(v40 + 11) = 2082;
            v44 = v36 + *(v42 + 20);
            *(v40 + 13) = sub_1B0399D64(*(v44 + 8), *(v44 + 16), &v89);
            *(v40 + 21) = 1040;
            *(v40 + 23) = 2;
            *(v40 + 27) = 512;
            LOWORD(v43) = *(v43 + 12);
            sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);
            *(v40 + 29) = v43;
            *(v40 + 31) = 2160;
            *(v40 + 33) = 0x786F626C69616DLL;
            *(v40 + 41) = 2085;
            v45 = *(v44 + 32);
            LODWORD(v44) = *(v44 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v36, type metadata accessor for MailboxTaskLogger);
            *&v101 = v45;
            DWORD2(v101) = v44;
            v46 = sub_1B0E44BA8();
            v48 = sub_1B0399D64(v46, v47, &v89);

            *(v40 + 43) = v48;
            *(v40 + 51) = 1024;
            v23 = v87;
            *(v40 + 53) = v87;
            _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive body structure for message %u.", v40, 0x39u);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v41, -1, -1);
            MEMORY[0x1B272C230](v40, -1, -1);

            v25 = v83;
          }

          else
          {
            sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);

            sub_1B0ACE7A4(v36, type metadata accessor for MailboxTaskLogger);
            v25 = v83;
            v23 = v87;
          }

          v49 = v78;
          v50 = v82;
          v51 = _s18InProgressMessagesVMa(0);
          v52 = v51[11];
          sub_1B075DC38(v49, &v101);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101 = *&v25[v52];
          sub_1B0A9C3B8(v49, v23, isUniquelyReferenced_nonNull_native);
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
              return;
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
            sub_1B0ACE73C(v58 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v57++, v84, _s25MessageSectionsToDownloadVMa);
            v61 = *v60;
            sub_1B0ACE7A4(v60, _s25MessageSectionsToDownloadVMa);
            if (v61 == v23)
            {
              return;
            }
          }

          sub_1B075DC38(v78, &v101);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v62 = v76;
            v64 = *(v22 + 2);
            v63 = *(v22 + 3);
            if (v64 >= v63 >> 1)
            {
              v22 = sub_1B0AFFAF8((v63 > 1), v64 + 1, 1, v22);
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
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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
            return;
          }

LABEL_30:
          v22 = sub_1B0AFFAF8(0, *(v22 + 2) + 1, 1, v22);
          goto LABEL_25;
        }
      }

      if (v31 == ++v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
}

uint64_t sub_1B0ACC6E4(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v123 = a3;
  v132 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v117 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v117 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v122 = &v117 - v21;
  v22 = _s25MessageSectionsToDownloadVMa(0);
  v128 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v127 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v131);
  v25 = &v117 - v24;
  v133 = type metadata accessor for DownloadTask.CommandID(0);
  v26 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v117 - v30;
  v32 = sub_1B0AF40B4(a4, a5);
  v33 = v32;
  v34 = v32[2];
  if (v34)
  {
    v117 = v10;
    v118 = a6;
    v119 = a2;
    v35 = 0;
    v36 = v32 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v130 = v31;
    while (v35 < v33[2])
    {
      sub_1B0ACE73C(v36 + *(v26 + 72) * v35, v31, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE73C(v31, v28, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03C60A4(v28, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        LODWORD(v172) = v132;
        v37 = MessageIdentifierSet.contains(_:)(&v172, v131);
        v31 = v130;
        sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0ACE7A4(v31, type metadata accessor for DownloadTask.CommandID);
        if (v37)
        {

          result = _s18InProgressMessagesVMa(0);
          v133 = *(result + 28);
          v39 = v125;
          v36 = *(v126 + v133);
          v40 = *(v36 + 16) + 1;
          v41 = 32;
          v28 = v132;
          v42 = v129;
          while (--v40)
          {
            v43 = *(v36 + v41);
            v41 += 192;
            if (v43 == v132)
            {
              return result;
            }
          }

          v44 = 0;
          v45 = v127;
          v46 = *(v126 + *(result + 32));
          v47 = *(v46 + 16);
          while (v47 != v44)
          {
            if (v44 >= *(v46 + 16))
            {
              goto LABEL_47;
            }

            sub_1B0ACE73C(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v44++, v45, _s25MessageSectionsToDownloadVMa);
            v48 = *v45;
            result = sub_1B0ACE7A4(v45, _s25MessageSectionsToDownloadVMa);
            v49 = v48 == v28;
            v42 = v129;
            if (v49)
            {
              return result;
            }
          }

          v50 = *(v126 + 16);
          if (*(v50 + 16))
          {
            v51 = sub_1B03FE284(v28);
            v52 = v124;
            if (v53)
            {
              v54 = (*(v50 + 56) + 184 * v51);
              v56 = v54[2];
              v55 = v54[3];
              v57 = v54[1];
              v148 = *v54;
              v149 = v57;
              v150 = v56;
              v151 = v55;
              v58 = v54[4];
              v59 = v54[5];
              v60 = v54[7];
              v154 = v54[6];
              v155 = v60;
              v152 = v58;
              v153 = v59;
              v61 = v54[8];
              v62 = v54[9];
              v63 = v54[10];
              v159 = *(v54 + 176);
              v157 = v62;
              v158 = v63;
              v156 = v61;
              memmove(&v160, v54, 0xB1uLL);
              __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
              sub_1B075DC38(&v148, &v172);
              v180 = v168;
              v181 = v169;
              v182 = v170;
              v183 = v171;
              v176 = v164;
              v177 = v165;
              v178 = v166;
              v179 = v167;
              v172 = v160;
              v173 = v161;
              v174 = v162;
              v175 = v163;
            }

            else
            {
              sub_1B04FAA88(&v172);
            }
          }

          else
          {
            sub_1B04FAA88(&v172);
            v52 = v124;
          }

          if (v123)
          {
            sub_1B0398EFC(&v172, &qword_1EB6E4148, &qword_1B0EE17F0);
            v64 = v118;
            v65 = v122;
            sub_1B0ACE73C(v118, v122, type metadata accessor for MailboxTaskLogger);
            v66 = v121;
            sub_1B0ACE73C(v64, v121, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v67 = sub_1B0E43988();
            v68 = sub_1B0E45908();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              *&v136 = v131;
              *v69 = 68159491;
              *(v69 + 4) = 2;
              *(v69 + 8) = 256;
              v70 = v117;
              v71 = v66 + *(v117 + 20);
              *(v69 + 10) = *v71;
              *(v69 + 11) = 2082;
              v72 = v65;
              v73 = v65 + *(v70 + 20);
              *(v69 + 13) = sub_1B0399D64(*(v73 + 8), *(v73 + 16), &v136);
              *(v69 + 21) = 1040;
              *(v69 + 23) = 2;
              *(v69 + 27) = 512;
              LOWORD(v71) = *(v71 + 24);
              sub_1B0ACE7A4(v66, type metadata accessor for MailboxTaskLogger);
              *(v69 + 29) = v71;
              *(v69 + 31) = 2160;
              *(v69 + 33) = 0x786F626C69616DLL;
              *(v69 + 41) = 2085;
              v74 = *(v73 + 32);
              LODWORD(v73) = *(v73 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0ACE7A4(v72, type metadata accessor for MailboxTaskLogger);
              *&v148 = v74;
              DWORD2(v148) = v73;
              v75 = sub_1B0E44BA8();
              v28 = sub_1B0399D64(v75, v76, &v136);

              *(v69 + 43) = v28;
              LODWORD(v28) = v132;
              *(v69 + 51) = 1024;
              *(v69 + 53) = v28;
              _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u.", v69, 0x39u);
              v77 = v131;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v77, -1, -1);
              MEMORY[0x1B272C230](v69, -1, -1);
            }

            else
            {
              sub_1B0ACE7A4(v66, type metadata accessor for MailboxTaskLogger);

              sub_1B0ACE7A4(v65, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B04FAA88(&v160);
          }

          else
          {
            v156 = v180;
            v157 = v181;
            v158 = v182;
            v159 = v183;
            v152 = v176;
            v153 = v177;
            v154 = v178;
            v155 = v179;
            v148 = v172;
            v149 = v173;
            v150 = v174;
            v151 = v175;
            if (sub_1B04FAE9C(&v148) == 1)
            {
              v78 = v118;
              sub_1B0ACE73C(v118, v52, type metadata accessor for MailboxTaskLogger);
              v79 = v120;
              sub_1B0ACE73C(v78, v120, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v80 = sub_1B0E43988();
              v81 = sub_1B0E458E8();
              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                *&v134[0] = v131;
                *v82 = 68159491;
                *(v82 + 4) = 2;
                *(v82 + 8) = 256;
                v83 = v117;
                v84 = v79 + *(v117 + 20);
                *(v82 + 10) = *v84;
                *(v82 + 11) = 2082;
                v85 = v52 + *(v83 + 20);
                *(v82 + 13) = sub_1B0399D64(*(v85 + 8), *(v85 + 16), v134);
                *(v82 + 21) = 1040;
                *(v82 + 23) = 2;
                *(v82 + 27) = 512;
                LOWORD(v84) = *(v84 + 24);
                sub_1B0ACE7A4(v79, type metadata accessor for MailboxTaskLogger);
                *(v82 + 29) = v84;
                *(v82 + 31) = 2160;
                *(v82 + 33) = 0x786F626C69616DLL;
                *(v82 + 41) = 2085;
                v86 = *(v85 + 32);
                LODWORD(v85) = *(v85 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0ACE7A4(v52, type metadata accessor for MailboxTaskLogger);
                *&v136 = v86;
                DWORD2(v136) = v85;
                v87 = sub_1B0E44BA8();
                v28 = sub_1B0399D64(v87, v88, v134);

                *(v82 + 43) = v28;
                LODWORD(v28) = v132;
                *(v82 + 51) = 1024;
                *(v82 + 53) = v28;
                _os_log_impl(&dword_1B0389000, v80, v81, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Missing body structure.", v82, 0x39u);
                v89 = v131;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v89, -1, -1);
                MEMORY[0x1B272C230](v82, -1, -1);
              }

              else
              {
                sub_1B0ACE7A4(v79, type metadata accessor for MailboxTaskLogger);

                sub_1B0ACE7A4(v52, type metadata accessor for MailboxTaskLogger);
              }

              sub_1B04FAEB0(v134);
              v144 = v134[8];
              v145 = v134[9];
              v146 = v134[10];
              v147 = v135;
              v140 = v134[4];
              v141 = v134[5];
              v142 = v134[6];
              v143 = v134[7];
              v136 = v134[0];
              v137 = v134[1];
              v102 = v134[2];
              v103 = v134[3];
            }

            else
            {
              LODWORD(v134[0]) = v28;
              MessageIdentifierSet.insert(_:)(&v136, v134, v131);
              v90 = v118;
              sub_1B0ACE73C(v118, v39, type metadata accessor for MailboxTaskLogger);
              sub_1B0ACE73C(v90, v42, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v91 = sub_1B0E43988();
              v92 = sub_1B0E45908();
              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                LODWORD(v130) = v92;
                v94 = v93;
                v131 = swift_slowAlloc();
                *&v134[0] = v131;
                *v94 = 68159491;
                *(v94 + 4) = 2;
                *(v94 + 8) = 256;
                v95 = v117;
                v96 = v42 + *(v117 + 20);
                *(v94 + 10) = *v96;
                *(v94 + 11) = 2082;
                v97 = v39 + *(v95 + 20);
                *(v94 + 13) = sub_1B0399D64(*(v97 + 8), *(v97 + 16), v134);
                *(v94 + 21) = 1040;
                *(v94 + 23) = 2;
                *(v94 + 27) = 512;
                LOWORD(v96) = *(v96 + 24);
                sub_1B0ACE7A4(v42, type metadata accessor for MailboxTaskLogger);
                *(v94 + 29) = v96;
                *(v94 + 31) = 2160;
                *(v94 + 33) = 0x786F626C69616DLL;
                *(v94 + 41) = 2085;
                v98 = *(v97 + 32);
                LODWORD(v97) = *(v97 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0ACE7A4(v39, type metadata accessor for MailboxTaskLogger);
                *&v136 = v98;
                DWORD2(v136) = v97;
                v99 = sub_1B0E44BA8();
                v28 = sub_1B0399D64(v99, v100, v134);

                *(v94 + 43) = v28;
                LODWORD(v28) = v132;
                *(v94 + 51) = 1024;
                *(v94 + 53) = v28;
                _os_log_impl(&dword_1B0389000, v91, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Using cached body structure.", v94, 0x39u);
                v101 = v131;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v101, -1, -1);
                MEMORY[0x1B272C230](v94, -1, -1);
              }

              else
              {
                sub_1B0ACE7A4(v42, type metadata accessor for MailboxTaskLogger);

                sub_1B0ACE7A4(v39, type metadata accessor for MailboxTaskLogger);
              }

              v144 = v156;
              v145 = v157;
              v146 = v158;
              v147 = v159;
              v140 = v152;
              v141 = v153;
              v142 = v154;
              v143 = v155;
              v136 = v148;
              v137 = v149;
              v102 = v150;
              v103 = v151;
            }

            v138 = v102;
            v139 = v103;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v168 = v144;
            v169 = v145;
            v170 = v146;
            v171 = v147;
            v164 = v140;
            v165 = v141;
            v166 = v142;
            v167 = v143;
            v160 = v136;
            v161 = v137;
            v162 = v138;
            v163 = v139;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_43:
            v105 = *(v36 + 16);
            v104 = *(v36 + 24);
            if (v105 >= v104 >> 1)
            {
              result = sub_1B0AFFAF8((v104 > 1), v105 + 1, 1, v36);
              v36 = result;
            }

            v150 = v162;
            v151 = v163;
            v154 = v166;
            v155 = v167;
            v152 = v164;
            v153 = v165;
            v159 = v171;
            v157 = v169;
            v158 = v170;
            v156 = v168;
            v148 = v160;
            v149 = v161;
            *(v36 + 16) = v105 + 1;
            v106 = v36 + 192 * v105;
            v107 = v119;
            *(v106 + 32) = v28;
            *(v106 + 36) = v107;
            v108 = v148;
            v109 = v149;
            v110 = v150;
            *(v106 + 88) = v151;
            *(v106 + 72) = v110;
            *(v106 + 56) = v109;
            *(v106 + 40) = v108;
            v111 = v152;
            v112 = v153;
            v113 = v154;
            *(v106 + 152) = v155;
            *(v106 + 136) = v113;
            *(v106 + 120) = v112;
            *(v106 + 104) = v111;
            v114 = v156;
            v115 = v157;
            v116 = v158;
            *(v106 + 216) = v159;
            *(v106 + 200) = v116;
            *(v106 + 184) = v115;
            *(v106 + 168) = v114;
            *(v126 + v133) = v36;
            return result;
          }

LABEL_48:
          result = sub_1B0AFFAF8(0, *(v36 + 16) + 1, 1, v36);
          v36 = result;
          goto LABEL_43;
        }
      }

      else
      {
        sub_1B0ACE7A4(v31, type metadata accessor for DownloadTask.CommandID);
        sub_1B0ACE7A4(v28, type metadata accessor for DownloadTask.CommandID);
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

uint64_t sub_1B0ACD674(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v83 - v19;
  result = _s18InProgressMessagesVMa(0);
  v21 = *(v6 + *(result + 28));
  v22 = *(v21 + 16);
  if (v22)
  {
    v84 = v12;
    v85 = a1;
    v86 = a2;
    v87 = a3;
    v23 = 0;
    v24 = (v21 + 32);
    while (v23 < *(v21 + 16))
    {
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      *&v130[32] = v24[2];
      *&v130[48] = v27;
      *v130 = v25;
      *&v130[16] = v26;
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[7];
      *&v130[96] = v24[6];
      *&v130[112] = v30;
      *&v130[64] = v28;
      *&v130[80] = v29;
      v31 = v24[8];
      v32 = v24[9];
      v33 = v24[10];
      *&v130[169] = *(v24 + 169);
      *&v130[144] = v32;
      *&v130[160] = v33;
      *&v130[128] = v31;
      v34 = *v130;
      sub_1B0ACE8D0(v130, &v118);
      if ((sub_1B0A9E1D0(v34, a4, a5, v35) & 1) == 0)
      {
        v114 = *&v130[136];
        v115 = *&v130[152];
        v116 = *&v130[168];
        v117 = v130[184];
        v110 = *&v130[72];
        v111 = *&v130[88];
        v112 = *&v130[104];
        v113 = *&v130[120];
        v106 = *&v130[8];
        v107 = *&v130[24];
        v108 = *&v130[40];
        v109 = *&v130[56];
        if (sub_1B04FAE9C(&v106) == 1)
        {
          sub_1B04FAA88(&v94);
          v36 = v92;
          v37 = v90;
          sub_1B0ACE73C(v92, v90, type metadata accessor for MailboxTaskLogger);
          v38 = v88;
          sub_1B0ACE73C(v36, v88, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0ACE8D0(v130, &v118);
          v39 = sub_1B0E43988();
          v40 = sub_1B0E45908();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v84;
          if (v41)
          {
            v43 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93 = v92;
            *v43 = 68159491;
            LODWORD(v91) = v40;
            *(v43 + 4) = 2;
            *(v43 + 8) = 256;
            v44 = v38;
            v45 = v38 + *(v42 + 20);
            *(v43 + 10) = *v45;
            *(v43 + 11) = 2082;
            v46 = v37 + *(v42 + 20);
            *(v43 + 13) = sub_1B0399D64(*(v46 + 8), *(v46 + 16), &v93);
            *(v43 + 21) = 1040;
            *(v43 + 23) = 2;
            *(v43 + 27) = 512;
            v47 = *(v45 + 24);
            sub_1B0ACE7A4(v44, type metadata accessor for MailboxTaskLogger);
            *(v43 + 29) = v47;
            *(v43 + 31) = 2160;
            *(v43 + 33) = 0x786F626C69616DLL;
            *(v43 + 41) = 2085;
            v48 = *(v46 + 32);
            LODWORD(v46) = *(v46 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);
            *&v118 = v48;
            DWORD2(v118) = v46;
            v49 = sub_1B0E44BA8();
            v51 = sub_1B0399D64(v49, v50, &v93);

            *(v43 + 43) = v51;
            *(v43 + 51) = 1024;
            sub_1B0ACE908(v130);
            *(v43 + 53) = v34;
            sub_1B0ACE908(v130);
            _os_log_impl(&dword_1B0389000, v39, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u.", v43, 0x39u);
            v52 = v92;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v52, -1, -1);
            v53 = v43;
            goto LABEL_12;
          }

          sub_1B0ACE908(v130);
          sub_1B0ACE7A4(v38, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE908(v130);

          v72 = v37;
LABEL_15:
          sub_1B0ACE7A4(v72, type metadata accessor for MailboxTaskLogger);
        }

        else
        {
          v102 = v114;
          v103 = v115;
          v104 = v116;
          v105 = v117;
          v98 = v110;
          v99 = v111;
          v100 = v112;
          v101 = v113;
          v94 = v106;
          v95 = v107;
          v96 = v108;
          v97 = v109;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v55 = v91;
          v54 = v92;
          sub_1B0ACE73C(v92, v91, type metadata accessor for MailboxTaskLogger);
          v56 = v89;
          sub_1B0ACE73C(v54, v89, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0ACE8D0(v130, &v118);
          v39 = sub_1B0E43988();
          v57 = sub_1B0E45908();
          v58 = os_log_type_enabled(v39, v57);
          v59 = v84;
          if (!v58)
          {
            sub_1B0ACE908(v130);
            sub_1B0ACE7A4(v56, type metadata accessor for MailboxTaskLogger);
            sub_1B0ACE908(v130);

            v72 = v55;
            goto LABEL_15;
          }

          v60 = swift_slowAlloc();
          LODWORD(v90) = v57;
          v61 = v60;
          v92 = swift_slowAlloc();
          v93 = v92;
          *v61 = 68159491;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          v62 = v56 + *(v59 + 20);
          *(v61 + 10) = *v62;
          *(v61 + 11) = 2082;
          v63 = *(v59 + 20);
          v64 = v56;
          v65 = v55;
          v66 = v55 + v63;
          *(v61 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v93);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          LOWORD(v62) = *(v62 + 24);
          sub_1B0ACE7A4(v64, type metadata accessor for MailboxTaskLogger);
          *(v61 + 29) = v62;
          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          v67 = *(v66 + 32);
          LODWORD(v62) = *(v66 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v65, type metadata accessor for MailboxTaskLogger);
          *&v118 = v67;
          DWORD2(v118) = v62;
          v68 = sub_1B0E44BA8();
          v70 = sub_1B0399D64(v68, v69, &v93);

          *(v61 + 43) = v70;
          *(v61 + 51) = 1024;
          sub_1B0ACE908(v130);
          *(v61 + 53) = v34;
          sub_1B0ACE908(v130);
          _os_log_impl(&dword_1B0389000, v39, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u (with body structure).", v61, 0x39u);
          v71 = v92;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v71, -1, -1);
          v53 = v61;
LABEL_12:
          MEMORY[0x1B272C230](v53, -1, -1);
        }

        v126 = v102;
        v127 = v103;
        v128 = v104;
        v129 = v105;
        v122 = v98;
        v123 = v99;
        v124 = v100;
        v125 = v101;
        v118 = v94;
        v119 = v95;
        v120 = v96;
        v121 = v97;
        v74 = v86;
        v73 = v87;
        v75 = v85;
        v76 = swift_allocObject();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE908(v130);
        v77 = v127;
        *(v76 + 168) = v126;
        *(v76 + 184) = v77;
        *(v76 + 200) = v128;
        v78 = v123;
        *(v76 + 104) = v122;
        *(v76 + 120) = v78;
        v79 = v125;
        *(v76 + 136) = v124;
        *(v76 + 152) = v79;
        v80 = v119;
        *(v76 + 40) = v118;
        *(v76 + 56) = v80;
        v81 = v121;
        *(v76 + 72) = v120;
        *(v76 + 16) = v75;
        *(v76 + 24) = v74;
        *(v76 + 28) = v73 & 1;
        v82 = *&v130[4];
        *(v76 + 32) = v34;
        *(v76 + 36) = v82;
        *(v76 + 216) = v129;
        *(v76 + 88) = v81;
        return v34;
      }

      ++v23;
      result = sub_1B0ACE908(v130);
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

uint64_t sub_1B0ACDED4()
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
      v2 = sub_1B0B8C8EC(v2);
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
                sub_1B0ACE448(&v104, v102);
                sub_1B0ACE448(&v118, v102);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v6 + v99) = v7;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v7 = sub_1B0B8C900(v7);
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
                sub_1B0ACE480(v100);
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
                sub_1B0ACE480(v102);
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

        v7 = sub_1B0AFFC58(v14, v15, 1, v7);
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
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216MessageAttributeO13BodyStructureOSg(uint64_t a1)
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

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0ACE510(uint64_t a1, int a2)
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

uint64_t sub_1B0ACE558(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0ACE634(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0ACE68C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0ACE73C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACE7A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ACE804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACE88C(uint64_t a1)
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

double sub_1B0ACE938(uint64_t a1)
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

double sub_1B0ACE964(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0ACE978(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0ACE98C(uint64_t a1, uint64_t a2)
{
  v4 = _s19MessageHeaderStatusOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0ACE9F0()
{
  result = qword_1EB6E4180;
  if (!qword_1EB6E4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4180);
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0ACEAF8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0ACEB4C(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1B0ACEBB0(uint64_t a1, unsigned int a2)
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

unint64_t sub_1B0ACEC08()
{
  result = qword_1EB6E41A8;
  if (!qword_1EB6E41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E41A8);
  }

  return result;
}

uint64_t _s18SectionDataRequestVMa(uint64_t a1)
{
  result = qword_1EB6DDFD8;
  if (!qword_1EB6DDFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0ACECD8(uint64_t a1)
{
  sub_1B09AFEB4(319);
  if (v1 <= 0x3F)
  {
    sub_1B0ACED64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0ACED64()
{
  if (!qword_1EB6DB490)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB490);
    }
  }
}

uint64_t sub_1B0ACEDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1B044DB64(v7, v8);
}

uint64_t sub_1B0ACEE48@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  _s18SectionDataRequestVMa(0);
  v5 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = SectionSpecifier.init(part:kind:)(v5, 0, 2u);
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7 | (v4 << 32);
  *(a2 + 36) = 32;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1B0ACEEC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v118 = a2;
  v103 = a1;
  v100 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v90 - v10;
  v11 = _s18SectionDataRequestVMa(0);
  v92 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DownloadTask.CommandID(0);
  v119 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  v107 = _s25MessageSectionsToDownloadVMa(0);
  v117 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B0, &qword_1B0EC40F8);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v90 - v25;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v110);
  v96 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v90 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v93 = &v90 - v33;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v34 = *(v21 + 56);
  v35 = v31;
  v36 = v19;
  sub_1B03C60A4(v35, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v104 = v23;
  v102 = v34;
  *&v23[v34] = 0;
  v37 = *(v118 + 16);
  if (!v37)
  {
LABEL_31:
    v75 = v95;
    sub_1B03C60A4(v104, v95, &qword_1EB6E41B0, &qword_1B0EC40F8);
    v76 = v93;
    sub_1B03C60A4(v75, v93, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v77 = v94;
    sub_1B03B5C80(v76, v94, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v78 = v96;
    sub_1B03B5C80(v77, v96, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v79 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v76, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v79 < 1)
    {
      sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v82 = 1;
      v81 = v99;
    }

    else
    {
      v80 = v91;
      sub_1B03C60A4(v78, v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v81 = v99;
      sub_1B03C60A4(v80, v99, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v82 = 0;
    }

    v83 = v100;
    v85 = v97;
    v84 = v98;
    (*(v97 + 56))(v81, v82, 1, v98);
    if ((*(v85 + 48))(v81, 1, v84) == 1)
    {
      sub_1B0398EFC(v81, &unk_1EB6E3670, &unk_1B0E9B260);
      v86 = 1;
    }

    else
    {
      v87 = MEMORY[0x1E69E7CC0];
      v88 = v81;
      v89 = v90;
      sub_1B03C60A4(v88, v90, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v89, v83, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v86 = 0;
      *(v83 + *(v11 + 20)) = v87;
      *(v83 + *(v11 + 24)) = &unk_1F2710BC8;
    }

    return (*(v92 + 56))(v83, v86, 1, v11);
  }

  v38 = 0;
  v39 = 0;
  v113 = v118 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v114 = v11;
  v112 = *(v117 + 72);
  v101 = v13;
  v120 = v17;
  v108 = v36;
  v105 = v37;
  while (1)
  {
    result = sub_1B0ACFDB4(v113 + v112 * v38, v36, _s25MessageSectionsToDownloadVMa);
    if (v39 >> 17 <= 2)
    {
      break;
    }

    sub_1B0ACFE80(v36, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    if (++v38 == v37)
    {
      goto LABEL_31;
    }
  }

  v111 = v39;
  v41 = *(v36 + *(v107 + 24));
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_30:
    v36 = v108;
    sub_1B0ACFE80(v108, _s25MessageSectionsToDownloadVMa);
    v11 = v114;
    v37 = v105;
    v39 = v111;
    goto LABEL_4;
  }

  v43 = 0;
  v44 = (v41 + 32);
  while (v43 < *(v41 + 16))
  {
    v45 = *v44;
    v46 = v44[2];
    v123[1] = v44[1];
    v124 = v46;
    v123[0] = v45;
    v47 = v44[3];
    v48 = v44[4];
    v49 = v44[6];
    v127 = v44[5];
    v128 = v49;
    v125 = v47;
    v126 = v48;
    v50 = v44[7];
    v51 = v44[8];
    v52 = v44[10];
    v131 = v44[9];
    v132 = v52;
    v129 = v50;
    v130 = v51;
    v53 = v44[11];
    v54 = v44[12];
    v55 = v44[13];
    *(v135 + 9) = *(v44 + 217);
    v134 = v54;
    v135[0] = v55;
    v133 = v53;
    if ((v123[0] & 1) == 0)
    {
      v56 = v124;
      sub_1B0ACE448(v123, v122);
      v57 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v58 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v57, MEMORY[0x1E69E7CC0]);

      result = sub_1B0ACE480(v123);
      if (v58)
      {
        v109 = *v108;
        result = sub_1B0AED35C(v103);
        v59 = result;
        v60 = v114;
        v61 = v101;
        v62 = v120;
        v118 = *(result + 16);
        if (v118)
        {
          v63 = 0;
          v117 = result + ((*(v119 + 80) + 32) & ~*(v119 + 80));
          while (1)
          {
            if (v63 >= *(v59 + 16))
            {
              goto LABEL_39;
            }

            sub_1B0ACFDB4(v117 + *(v119 + 72) * v63, v62, type metadata accessor for DownloadTask.CommandID);
            v66 = v115;
            sub_1B0ACFDB4(v62, v115, type metadata accessor for DownloadTask.CommandID);
            if (swift_getEnumCaseMultiPayload() != 3)
            {
              break;
            }

            sub_1B0ACFE1C(v66, v61);
            if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v61 + *(v60 + 20)), MEMORY[0x1E69E7CC0]) & 1) == 0)
            {
              sub_1B0ACFE80(v62, type metadata accessor for DownloadTask.CommandID);
              v65 = _s18SectionDataRequestVMa;
              v64 = v61;
              goto LABEL_15;
            }

            v67 = v61;
            v68 = v61;
            v69 = v106;
            sub_1B03B5C80(v67, v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v122[0] = v109;
            v70 = MessageIdentifierSet.contains(_:)(v122, v110);
            sub_1B0398EFC(v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            if (v70)
            {
              v71 = *(v68 + *(v114 + 24));
              v61 = v68;
              if (*(v71 + 16) == 1)
              {
                v72 = *(v71 + 32);
                v62 = v120;
                sub_1B0ACFE80(v120, type metadata accessor for DownloadTask.CommandID);
                if (!v72)
                {

                  sub_1B0ACFE80(v61, _s18SectionDataRequestVMa);
                  goto LABEL_30;
                }
              }

              else
              {
                v62 = v120;
                sub_1B0ACFE80(v120, type metadata accessor for DownloadTask.CommandID);
              }

              result = sub_1B0ACFE80(v61, _s18SectionDataRequestVMa);
              v60 = v114;
            }

            else
            {
              v73 = v120;
              sub_1B0ACFE80(v120, type metadata accessor for DownloadTask.CommandID);
              result = sub_1B0ACFE80(v68, _s18SectionDataRequestVMa);
              v61 = v68;
              v62 = v73;
              v60 = v114;
            }

LABEL_16:
            if (v118 == ++v63)
            {
              goto LABEL_28;
            }
          }

          sub_1B0ACFE80(v120, type metadata accessor for DownloadTask.CommandID);
          v64 = v66;
          v62 = v120;
          v65 = type metadata accessor for DownloadTask.CommandID;
LABEL_15:
          result = sub_1B0ACFE80(v64, v65);
          goto LABEL_16;
        }

LABEL_28:

        v74 = v111 + v56;
        if (__CFADD__(v111, v56))
        {
          goto LABEL_40;
        }

        *&v104[v102] = v74;
        v121 = v109;
        MessageIdentifierSet.insert(_:)(v122, &v121, v110);
        v36 = v108;
        sub_1B0ACFE80(v108, _s25MessageSectionsToDownloadVMa);
        v11 = v60;
        v37 = v105;
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

uint64_t sub_1B0ACFA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unsigned int *a3@<X5>, uint64_t a4@<X8>)
{
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = *(a1 + 24);
  v32 = *(a1 + 8);
  v33[0] = v16;
  *(v33 + 15) = *(a1 + 39);
  v17 = *a3;
  v18 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0AD074C(v17, v18, a2);

  v20 = sub_1B0ACFEE0(1, v19);

  if (*(v20 + 16))
  {
    v31 = v17;
    v21 = sub_1B041C1E8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MessageIdentifierSet.init(_:)(&v31, &type metadata for UID, v21);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v22 = 1;
    }

    else
    {
      sub_1B03C60A4(v12, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v9, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
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
      sub_1B03C60A4(v15, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
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

uint64_t sub_1B0ACFDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACFE1C(uint64_t a1, uint64_t a2)
{
  v4 = _s18SectionDataRequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ACFE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ACFEE0(uint64_t a1, char *a2)
{
  v84 = sub_1B0E432D8();
  v87 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v69 - v8);
  v10 = sub_1B0E43308();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v69 - v27;
  v28 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  v90 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v78 = a1;
  if (v29 < a1)
  {
    v89 = (v11 + 32);
    v76 = (v11 + 16);
    v77 = v6;
    v75 = (v11 + 8);
    v30 = v28 + 16;
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
      sub_1B0E43238();
      sub_1B0E432F8();
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

          result = sub_1B0E43298();
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
      sub_1B0AD0704(&qword_1EB6DECB8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v49 = v81;
      sub_1B0E46018();
      sub_1B0E46008();
      v50 = *v46;
      (*v46)(v49, v45);
      v50(v44, v45);
      v51 = v79;
      (v87)(v79, v48, v45);
      v52 = v77;
      sub_1B0E432E8();
      sub_1B0AD0704(&qword_1EB6DECC0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
      v53 = v84;
      sub_1B0E45668();
      sub_1B0E456C8();
      if (v91[4] == v91[0])
      {
        (*v74)(v52, v53);
        v50(v51, v45);

        return v86;
      }

      v54 = sub_1B0E457B8();
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
        v90 = sub_1B0AFFEA8(0, *(v90 + 2) + 1, 1, v90);
      }

      v28 = v86;
      v19 = v72;
      v61 = *(v90 + 2);
      v60 = *(v90 + 3);
      if (v61 >= v60 >> 1)
      {
        v90 = sub_1B0AFFEA8((v60 > 1), v61 + 1, 1, v90);
      }

      v62 = v90;
      *(v90 + 2) = v61 + 1;
      v63 = &v62[8 * v61];
      *(v63 + 8) = v58;
      *(v63 + 9) = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1B0AFFEA8(0, *v71 + 1, 1, v28);
      }

      v65 = *(v28 + 2);
      v64 = *(v28 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v28 = sub_1B0AFFEA8((v64 > 1), v65 + 1, 1, v28);
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
      sub_1B03B5C80(v34, v9, &qword_1EB6E41B8, &qword_1B0EC4100);
      result = *v9;
      if (v9[1] < result)
      {
        break;
      }

      sub_1B0E43298();
      sub_1B0398EFC(v9, &qword_1EB6E41B8, &qword_1B0EC4100);
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

uint64_t sub_1B0AD0704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1B0AD074C(int a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - v5;
  v38 = _s18SectionDataRequestVMa(0);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DownloadTask.CommandID(0);
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1B0AED35C(a3);
  v15 = *(v14 + 16);
  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v34 = v14;
  v17 = v14 + v16;
  v39 = *(v8 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1B0AD0B50(v17, v13);
    sub_1B0AD0B50(v13, v10);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B0ACFE1C(v10, v7);
      if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*&v7[*(v38 + 20)], v37))
      {
        v20 = v35;
        sub_1B03B5C80(v7, v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v41 = v36;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
        v22 = MessageIdentifierSet.contains(_:)(&v41, v21);
        sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v22)
        {
          sub_1B0AD0BB4(v13, type metadata accessor for DownloadTask.CommandID);
          v23 = *&v7[*(v38 + 24)];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B0AD0BB4(v7, _s18SectionDataRequestVMa);
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

    sub_1B0AD0BB4(v25, v24);
    result = sub_1B0AD0BB4(v13, type metadata accessor for DownloadTask.CommandID);
    v23 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v26 = *(v23 + 16);
    v27 = *(v18 + 2);
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v28 <= *(v18 + 3) >> 1)
    {
      if (*(v23 + 16))
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

      result = sub_1B0AFFEA8(result, v29, 1, v18);
      v18 = result;
      if (*(v23 + 16))
      {
LABEL_21:
        v30 = *(v18 + 2);
        if ((*(v18 + 3) >> 1) - v30 < v26)
        {
          goto LABEL_30;
        }

        memcpy(&v18[8 * v30 + 32], (v23 + 32), 8 * v26);

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

uint64_t sub_1B0AD0B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadTask.CommandID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AD0BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy47_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0AD0C28(uint64_t *a1, int a2)
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

uint64_t sub_1B0AD0C70(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AD0CD4()
{
  result = sub_1B03D0770(&unk_1F2710C60);
  qword_1EB737DB8 = result;
  return result;
}

uint64_t sub_1B0AD0CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3D54(a1, v22, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
      sub_1B03D3E24(v22, v13, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v13, v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v24 = v34;
      sub_1B03C60A4(v10, v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D3D54(&v13[*(v11 + 24)], v7, _s15MissingMessagesO11QueriedUIDsVMa);
      v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_1B03C60A4(v7, v24 + *(v25 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v26 = &v13[*(v11 + 20)];
      v27 = *v26;
      v28 = v26[4];
      v29 = _s15MissingMessagesO10IncompleteVMa;
      v30 = v13;
    }

    else
    {
      sub_1B03D3E24(v22, v4, _s15MissingMessagesO8CompleteVMa);
      sub_1B03D06F8();
      v24 = v34;
      sub_1B0E46EE8();
      sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
      sub_1B03D3D54(&v4[*(v33 + 20)], v7, _s15MissingMessagesO11QueriedUIDsVMa);
      v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_1B03C60A4(v7, v24 + *(v25 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v27 = *v4;
      v28 = v4[4];
      v29 = _s15MissingMessagesO8CompleteVMa;
      v30 = v4;
    }

    result = sub_1B0AD3FBC(v30, v29);
  }

  else
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B0E46EE8();
    sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
    v24 = v34;
    sub_1B03C60A4(v19, v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v25 = type metadata accessor for FetchMessages.MissingUIDs(0);
    result = sub_1B03C60A4(v16, v24 + *(v25 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v27 = 0;
    v28 = 1;
  }

  v32 = v24 + *(v25 + 24);
  *v32 = v27;
  *(v32 + 4) = v28;
  return result;
}

void sub_1B0AD11DC(uint64_t a1)
{
  v2 = v1;
  Messages = type metadata accessor for FetchMessages(0);
  MEMORY[0x1EEE9AC00](Messages);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v98 - v15;
  v109 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v109);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v98 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v98 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v103 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v98 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v106 = &v98 - v37;
  v110 = Messages;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
LABEL_4:
    sub_1B03D3D54(a1, v20, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(a1, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03D3D54(v2, v9, type metadata accessor for FetchMessages);
    sub_1B03D3D54(v2, v6, type metadata accessor for FetchMessages);
    v39 = sub_1B0E43988();
    v40 = sub_1B0E45908();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v113 = v108;
      *v41 = 68159747;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v109;
      v43 = &v17[*(v109 + 20)];
      *(v41 + 10) = *v43;
      *(v41 + 11) = 2082;
      v44 = &v20[*(v42 + 20)];
      *(v41 + 13) = sub_1B0399D64(*(v44 + 1), *(v44 + 2), &v113);
      *(v41 + 21) = 1040;
      *(v41 + 23) = 2;
      *(v41 + 27) = 512;
      LOWORD(v43) = *(v43 + 12);
      sub_1B0AD3FBC(v17, type metadata accessor for MailboxTaskLogger);
      *(v41 + 29) = v43;
      *(v41 + 31) = 2160;
      *(v41 + 33) = 0x786F626C69616DLL;
      *(v41 + 41) = 2085;
      v45 = *(v44 + 4);
      LODWORD(v44) = *(v44 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v20, type metadata accessor for MailboxTaskLogger);
      v111 = v45;
      v112 = v44;
      v46 = sub_1B0E44BA8();
      v48 = sub_1B0399D64(v46, v47, &v113);

      *(v41 + 43) = v48;
      *(v41 + 51) = 2082;
      v49 = &v9[v110[11]];
      v50 = *v49;
      LOBYTE(v44) = v49[8];
      sub_1B0AD3FBC(v9, type metadata accessor for FetchMessages);
      if (v44)
      {
        v51 = 7104878;
        v52 = 0xE300000000000000;
      }

      else
      {
        v111 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
        v51 = sub_1B0E449D8();
        v52 = v84;
      }

      v85 = sub_1B0399D64(v51, v52, &v113);

      *(v41 + 53) = v85;
      *(v41 + 61) = 1024;
      v86 = v110[10];
      v87 = &v6[v86 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24)];
      if (v87[4])
      {
        v88 = 0;
      }

      else
      {
        v88 = *v87;
      }

      sub_1B0AD3FBC(v6, type metadata accessor for FetchMessages);
      *(v41 + 63) = v88;
      _os_log_impl(&dword_1B0389000, v39, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window %{public}s (persisted) -> %u (new)", v41, 0x43u);
      v89 = v108;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v89, -1, -1);
      MEMORY[0x1B272C230](v41, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v6, type metadata accessor for FetchMessages);
      sub_1B0AD3FBC(v17, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v9, type metadata accessor for FetchMessages);
      sub_1B0AD3FBC(v20, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  sub_1B03B5C80(v2 + v110[9], v28, &qword_1EB6E41C0, &unk_1B0EC4330);
  v38 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v38 - 8) + 48))(v28, 1, v38) == 1)
  {
    sub_1B0398EFC(v28, &qword_1EB6E41C0, &unk_1B0EC4330);
    goto LABEL_4;
  }

  sub_1B03B5C80(&v28[*(v38 + 20)], v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0AD3FBC(v28, type metadata accessor for NewServerMessages);
  v53 = v106;
  sub_1B03C60A4(v35, v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v54 = v102;
  sub_1B03D3D54(a1, v102, type metadata accessor for MailboxTaskLogger);
  sub_1B03D3D54(a1, v23, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v55 = v104;
  sub_1B03D3D54(v2, v104, type metadata accessor for FetchMessages);
  sub_1B03B5C80(v53, v108, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v56 = v103;
  sub_1B03B5C80(v53, v103, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v57 = v105;
  sub_1B03D3D54(v2, v105, type metadata accessor for FetchMessages);
  v58 = v2;
  v59 = v107;
  sub_1B03D3D54(v58, v107, type metadata accessor for FetchMessages);
  v60 = sub_1B0E43988();
  v61 = sub_1B0E45908();
  if (os_log_type_enabled(v60, v61))
  {
    v99 = v60;
    v101 = v61;
    v62 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v113 = v100;
    *v62 = 68160515;
    *(v62 + 4) = 2;
    *(v62 + 8) = 256;
    v63 = v109;
    v64 = &v23[*(v109 + 20)];
    *(v62 + 10) = *v64;
    *(v62 + 11) = 2082;
    v65 = v55;
    v66 = v54 + *(v63 + 20);
    *(v62 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v113);
    *(v62 + 21) = 1040;
    *(v62 + 23) = 2;
    *(v62 + 27) = 512;
    LOWORD(v64) = *(v64 + 12);
    sub_1B0AD3FBC(v23, type metadata accessor for MailboxTaskLogger);
    *(v62 + 29) = v64;
    *(v62 + 31) = 2160;
    *(v62 + 33) = 0x786F626C69616DLL;
    *(v62 + 41) = 2085;
    v67 = *(v66 + 32);
    LODWORD(v66) = *(v66 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AD3FBC(v54, type metadata accessor for MailboxTaskLogger);
    v111 = v67;
    v112 = v66;
    v68 = sub_1B0E44BA8();
    v70 = sub_1B0399D64(v68, v69, &v113);

    *(v62 + 43) = v70;
    *(v62 + 51) = 2048;
    v71 = v57;
    v72 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v73 = MessageIdentifierSet.count.getter();
    sub_1B0AD3FBC(v65, type metadata accessor for FetchMessages);
    *(v62 + 53) = v73;
    *(v62 + 61) = 2048;
    v74 = v108;
    v75 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
    *(v62 + 63) = v75;
    *(v62 + 71) = 2082;
    v76 = MessageIdentifierSet.debugDescription.getter();
    v78 = v77;
    sub_1B0398EFC(v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v79 = sub_1B0399D64(v76, v78, &v113);

    *(v62 + 73) = v79;
    *(v62 + 81) = 2082;
    v80 = v71 + v72[11];
    v81 = *v80;
    LOBYTE(v78) = *(v80 + 8);
    sub_1B0AD3FBC(v71, type metadata accessor for FetchMessages);
    if (v78)
    {
      v82 = 7104878;
      v83 = 0xE300000000000000;
    }

    else
    {
      v111 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
      v82 = sub_1B0E449D8();
      v83 = v91;
    }

    v92 = v99;
    v93 = sub_1B0399D64(v82, v83, &v113);

    *(v62 + 83) = v93;
    *(v62 + 91) = 1024;
    v94 = v110[10];
    v95 = (v107 + v94 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24));
    if (*(v95 + 4))
    {
      v96 = 0;
    }

    else
    {
      v96 = *v95;
    }

    sub_1B0AD3FBC(v107, type metadata accessor for FetchMessages);
    *(v62 + 93) = v96;
    _os_log_impl(&dword_1B0389000, v92, v101, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with missing %ld, batch %ld UIDs %{public}s, fetched-window %{public}s (persisted) -> %u (new)", v62, 0x61u);
    v97 = v100;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v97, -1, -1);
    MEMORY[0x1B272C230](v62, -1, -1);

    v90 = v106;
  }

  else
  {
    sub_1B0AD3FBC(v59, type metadata accessor for FetchMessages);
    sub_1B0398EFC(v108, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v55, type metadata accessor for FetchMessages);
    sub_1B0AD3FBC(v23, type metadata accessor for MailboxTaskLogger);

    sub_1B0AD3FBC(v57, type metadata accessor for FetchMessages);
    sub_1B0398EFC(v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v54, type metadata accessor for MailboxTaskLogger);
    v90 = v53;
  }

  sub_1B0398EFC(v90, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t sub_1B0AD1E24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for NewServerMessages(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03B5C80(v3 + *(Messages + 36), v9, &qword_1EB6E41C0, &unk_1B0EC4330);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B0398EFC(v9, &qword_1EB6E41C0, &unk_1B0EC4330);
  }

  else
  {
    sub_1B03D3E24(v9, v13, type metadata accessor for NewServerMessages);
    if ((sub_1B0B710B0(a1, a2, v15) & 1) == 0)
    {
      sub_1B0B5F454(a3);
      sub_1B0AD3FBC(v13, type metadata accessor for NewServerMessages);
      v16 = 0;
      goto LABEL_7;
    }

    sub_1B0AD3FBC(v13, type metadata accessor for NewServerMessages);
  }

  v16 = 1;
LABEL_7:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C8, &qword_1B0EC4238);
  return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

uint64_t sub_1B0AD2068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for NewServerMessages(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B0A9EA84(a2, a4, v14))
  {
    return 0xF000000000000007;
  }

  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03B5C80(v4 + *(Messages + 36), v11, &qword_1EB6E41C0, &unk_1B0EC4330);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &qword_1EB6E41C0, &unk_1B0EC4330);
    sub_1B0AD2324();
    if (v20)
    {
      return 0xF000000000000007;
    }

    v21 = v19;
    v22 = swift_allocObject();
    v23 = *(v4 + 24);
    v24 = MEMORY[0x1E69E7CC0];
    *(v22 + 16) = *(v4 + 16);
    *(v22 + 24) = v23;
    *(v22 + 32) = v24;
    *(v22 + 40) = v21;
    *(v22 + 48) = 0;
    v25 = v22 | 0x2000000000000006;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v25;
  }

  else
  {
    sub_1B03D3E24(v11, v16, type metadata accessor for NewServerMessages);
    if ((sub_1B0A991CC(a1, a2, a3) & 1) != 0 && ((sub_1B0AD2324(), v28 = v27, v29 = v26, v30 = *&v16[*(v12 + 36)], *(v30 + 16)) || (v26 & 1) == 0))
    {
      v31 = swift_allocObject();
      v32 = *(v4 + 24);
      *(v31 + 16) = *(v4 + 16);
      *(v31 + 24) = v32;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v16, type metadata accessor for NewServerMessages);
      *(v31 + 32) = v30;
      *(v31 + 40) = v28;
      *(v31 + 48) = v29 & 1;
      return v31 | 0x2000000000000006;
    }

    else
    {
      sub_1B0AD3FBC(v16, type metadata accessor for NewServerMessages);
      return 0xF000000000000007;
    }
  }
}

void sub_1B0AD2324()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FetchMessages.MissingUIDs(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03D3D54(v0 + Messages[10], v15, type metadata accessor for FetchMessages.MissingUIDs);
  v17 = v0 + Messages[11];
  v18 = *v17;
  v32 = *(v17 + 8);
  v19 = Messages[9];
  v31 = v0;
  sub_1B03B5C80(v0 + v19, v5, &qword_1EB6E41C0, &unk_1B0EC4330);
  v20 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v20 - 8) + 48))(v5, 1, v20) == 1)
  {
    sub_1B0398EFC(v5, &qword_1EB6E41C0, &unk_1B0EC4330);
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v21 = v30;
    sub_1B03B5C80(&v5[*(v20 + 20)], v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v5, type metadata accessor for NewServerMessages);
    sub_1B03C60A4(v21, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1B03C60A4(v8, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v22 = v32;
  v23 = sub_1B0AD3C90(v18, v32, v12);
  v25 = v24;
  sub_1B0AD3FBC(v15, type metadata accessor for FetchMessages.MissingUIDs);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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

    sub_1B0AD2794(v28, v23);
  }
}

void sub_1B0AD2794(unsigned int a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  MEMORY[0x1EEE9AC00](v13);
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
      v16 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v19, &v18, &type metadata for UID, &v20);
      v19 = v20;
      v18 = Range<>.init<A>(_:)(&v19, &type metadata for UID, v16);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v20 = __PAIR64__(v17, a2);
      v19 = Range<>.init<A>(_:)(&v20, &type metadata for UID, v16);
      sub_1B0E46F08();
      MessageIdentifierSet.subtracting(_:)(v15, v12);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v6);
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B4A3E8();
      sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0);
      sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }
}

uint64_t sub_1B0AD2A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a1;
  v120 = a4;
  v115 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = &v97[-v6];
  v7 = type metadata accessor for MessageMetadata(0);
  v105 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v107);
  v11 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v97[-v13];
  v110 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v110);
  v118 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v97[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v97[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v97[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v111 = &v97[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97[-v24];
  v26 = type metadata accessor for NewServerMessages(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v97[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v97[-v31];
  Messages = type metadata accessor for FetchMessages(0);
  v34 = *(Messages + 36);
  v116 = a3;
  v112 = v34;
  v113 = Messages;
  sub_1B03B5C80(a3 + v34, v25, &qword_1EB6E41C0, &unk_1B0EC4330);
  v37 = *(v27 + 48);
  v36 = (v27 + 48);
  v35 = v37;
  v121 = v26;
  if (v37(v25, 1, v26) == 1)
  {
    sub_1B0398EFC(v25, &qword_1EB6E41C0, &unk_1B0EC4330);
LABEL_7:
    v60 = v118;
    v59 = v119;
    v61 = v115;
    v44 = v111;
    goto LABEL_16;
  }

  sub_1B03D3E24(v25, v32, type metadata accessor for NewServerMessages);
  if (!*(*&v32[*(v121 + 36)] + 16))
  {
    sub_1B0AD3FBC(v32, type metadata accessor for NewServerMessages);
    goto LABEL_7;
  }

  v102 = *&v32[*(v121 + 36)];
  v104 = v35;
  v38 = v120;
  v39 = v109;
  sub_1B03D3D54(v120, v109, type metadata accessor for MailboxTaskLogger);
  v40 = v108;
  sub_1B03D3D54(v38, v108, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v103 = v32;
  sub_1B03D3D54(v32, v29, type metadata accessor for NewServerMessages);
  v41 = sub_1B0E43988();
  v42 = sub_1B0E45908();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v111;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v100 = v42;
    v46 = v45;
    v101 = swift_slowAlloc();
    v124[0] = v101;
    *v46 = 68159491;
    *(v46 + 4) = 2;
    *(v46 + 8) = 256;
    v47 = v110;
    v48 = *(v110 + 20);
    v99 = v41;
    v49 = &v40[v48];
    *(v46 + 10) = v40[v48];
    *(v46 + 11) = 2082;
    v50 = &v39[*(v47 + 20)];
    *(v46 + 13) = sub_1B0399D64(*(v50 + 1), *(v50 + 2), v124);
    *(v46 + 21) = 1040;
    *(v46 + 23) = 2;
    *(v46 + 27) = 512;
    v98 = *(v49 + 12);
    sub_1B0AD3FBC(v40, type metadata accessor for MailboxTaskLogger);
    *(v46 + 29) = v98;
    *(v46 + 31) = 2160;
    *(v46 + 33) = 0x786F626C69616DLL;
    *(v46 + 41) = 2085;
    v51 = v39;
    v52 = *(v50 + 4);
    LODWORD(v50) = *(v50 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AD3FBC(v51, type metadata accessor for MailboxTaskLogger);
    v122 = v52;
    v123 = v50;
    v53 = sub_1B0E44BA8();
    v55 = sub_1B0399D64(v53, v54, v124);

    *(v46 + 43) = v55;
    *(v46 + 51) = 2048;
    v56 = *(*&v29[*(v121 + 36)] + 16);
    sub_1B0AD3FBC(v29, type metadata accessor for NewServerMessages);
    *(v46 + 53) = v56;
    v57 = v99;
    _os_log_impl(&dword_1B0389000, v99, v100, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld new message(s).", v46, 0x3Du);
    v58 = v101;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v58, -1, -1);
    MEMORY[0x1B272C230](v46, -1, -1);
  }

  else
  {
    sub_1B0AD3FBC(v29, type metadata accessor for NewServerMessages);
    sub_1B0AD3FBC(v40, type metadata accessor for MailboxTaskLogger);

    sub_1B0AD3FBC(v39, type metadata accessor for MailboxTaskLogger);
  }

  v59 = v119;
  sub_1B03BDE74(9u);
  sub_1B03BDD7C(&v122, 9);
  v62 = *(type metadata accessor for MailboxSyncState(0) + 64);
  v63 = type metadata accessor for NewestMessages(0);
  v64 = (*(*(v63 - 8) + 48))(v59 + v62, 1, v63);
  v60 = v118;
  v35 = v104;
  if (v64)
  {
    sub_1B0AD3FBC(v103, type metadata accessor for NewServerMessages);
  }

  else
  {
    v109 = v36;
    sub_1B03D06F8();
    v65 = v11;
    sub_1B0E46EE8();
    v66 = *(v102 + 16);
    v67 = v107;
    if (v66)
    {
      v68 = v102 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v69 = *(v105 + 72);
      do
      {
        sub_1B03D3D54(v68, v9, type metadata accessor for MessageMetadata);
        LODWORD(v124[0]) = *v9;
        v65 = v11;
        MessageIdentifierSet.insert(_:)(&v122, v124, v67);
        sub_1B0AD3FBC(v9, type metadata accessor for MessageMetadata);
        v68 += v69;
        --v66;
      }

      while (v66);
    }

    v70 = v106;
    sub_1B03C60A4(v65, v106, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B5EFE4(v70);
    sub_1B0398EFC(v70, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AD3FBC(v103, type metadata accessor for NewServerMessages);
    v60 = v118;
    v35 = v104;
  }

  v61 = v115;
LABEL_16:
  v71 = v116;
  sub_1B03B5C80(v116 + v112, v44, &qword_1EB6E41C0, &unk_1B0EC4330);
  v72 = v35(v44, 1, v121);
  v73 = v114;
  if (v72 == 1)
  {
    sub_1B0398EFC(v44, &qword_1EB6E41C0, &unk_1B0EC4330);
    v74 = 1;
  }

  else
  {
    sub_1B03B5C80(v44 + *(v121 + 20), v114, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v44, type metadata accessor for NewServerMessages);
    v74 = 0;
  }

  v75 = v120;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v76 - 8) + 56))(v73, v74, 1, v76);
  v77 = sub_1B0AD6808(v59, v61 & 0x101010101FFFF01, v73, (v71 + *(v113 + 28)), v75);
  v79 = v78;
  v81 = v80;
  result = sub_1B0398EFC(v73, &unk_1EB6E3670, &unk_1B0E9B260);
  v83 = v117;
  if ((v81 & 1) == 0)
  {
    sub_1B03D3D54(v75, v117, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(v75, v60, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v84 = sub_1B0E43988();
    v85 = sub_1B0E45908();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v124[0] = v87;
      *v86 = 68159747;
      *(v86 + 4) = 2;
      *(v86 + 8) = 256;
      v88 = v110;
      v89 = v60 + *(v110 + 20);
      *(v86 + 10) = *v89;
      *(v86 + 11) = 2082;
      v90 = *(v88 + 20);
      v121 = v79;
      v91 = v60;
      v92 = &v83[v90];
      *(v86 + 13) = sub_1B0399D64(*&v83[v90 + 8], *&v83[v90 + 16], v124);
      *(v86 + 21) = 1040;
      *(v86 + 23) = 2;
      *(v86 + 27) = 512;
      LOWORD(v89) = *(v89 + 24);
      sub_1B0AD3FBC(v91, type metadata accessor for MailboxTaskLogger);
      *(v86 + 29) = v89;
      *(v86 + 31) = 2160;
      *(v86 + 33) = 0x786F626C69616DLL;
      *(v86 + 41) = 2085;
      v93 = *(v92 + 4);
      LODWORD(v92) = *(v92 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v83, type metadata accessor for MailboxTaskLogger);
      v122 = v93;
      v123 = v92;
      v94 = sub_1B0E44BA8();
      v96 = sub_1B0399D64(v94, v95, v124);

      *(v86 + 43) = v96;
      *(v86 + 51) = 2048;
      *(v86 + 53) = v77;
      *(v86 + 61) = 2048;
      *(v86 + 63) = v121;
      _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Still missing %ld messages (%ld completed). Will run again.", v86, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v87, -1, -1);
      MEMORY[0x1B272C230](v86, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v60, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v83, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(1u);
    return sub_1B03BDD7C(&v122, 1);
  }

  return result;
}

void sub_1B0AD36D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if ((*(a1 + 8) & 1) != 0 || (*a1 == a2 ? (v13 = v6 == HIDWORD(*a1)) : (v13 = 0), !v13))
  {
    sub_1B03D3D54(a3, &v28 - v11, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(a3, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v14 = sub_1B0E43988();
    v15 = sub_1B0E458D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = v6;
      v17 = v16;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v17 = 68159491;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v18 = &v9[*(v7 + 20)];
      *(v17 + 10) = *v18;
      *(v17 + 11) = 2082;
      v19 = &v12[*(v7 + 20)];
      *(v17 + 13) = sub_1B0399D64(*(v19 + 1), *(v19 + 2), &v33);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      LOWORD(v18) = *(v18 + 12);
      sub_1B0AD3FBC(v9, type metadata accessor for MailboxTaskLogger);
      *(v17 + 29) = v18;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v20 = *(v19 + 4);
      LODWORD(v18) = *(v19 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v12, type metadata accessor for MailboxTaskLogger);
      v31 = v20;
      v32 = v18;
      v21 = sub_1B0E44BA8();
      v23 = sub_1B0399D64(v21, v22, &v33);

      *(v17 + 43) = v23;
      *(v17 + 51) = 2082;
      v31 = __PAIR64__(v29, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v24 = MessageIdentifierRange.debugDescription.getter();
      v26 = sub_1B0399D64(v24, v25, &v33);

      *(v17 + 53) = v26;
      _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v17, 0x3Du);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v27, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v9, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v12, type metadata accessor for MailboxTaskLogger);
    }

    *a1 = a2;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_1B0AD3A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC1E70;
  *(v0 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v0;
}

double sub_1B0AD3ADC()
{
  if (qword_1EB6DDF70 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AD3B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0AD2068(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_1B0AD3B90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v8 = a2;
  sub_1B0B86564(v3, v4, sub_1B0AD44C0, v7);
  sub_1B0AD2324();
  if ((v6 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1B0B256B4(v3, v4, sub_1B0AD44D4);
  }
}

uint64_t sub_1B0AD3C90(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
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
  v19 = sub_1B0AD5FA0(v15 | ((a2 & 1) << 32), v10, v17 | (v18 << 32));
  if ((v19 & 0x100000000) != 0)
  {
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
    v22 = sub_1B0AD6480(v20, v10);
    v24 = v21;
    v25 = v22;
    sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v25, &v24, &type metadata for UID, &v26);
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v26;
  }
}

uint64_t sub_1B0AD3E80(void (*a1)(void))
{
  a1();
  if (v1)
  {
    return 7104878;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
  return sub_1B0E449D8();
}

uint64_t sub_1B0AD3EE4(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchMessages.MissingUIDs(0);
  if ((sub_1B0E46E08() & 1) == 0)
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

uint64_t sub_1B0AD3FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0AD4044(uint64_t a1)
{
  sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DE198, &type metadata for UID);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AD4158(uint64_t a1)
{
  sub_1B0AD428C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      sub_1B0AD42F4(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FetchMessages.MissingUIDs(319);
        if (v4 <= 0x3F)
        {
          sub_1B0AD434C(319, &qword_1EB6DCC80, &type metadata for FetchedWindow);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0AD428C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1B0AD42F4(uint64_t a1)
{
  if (!qword_1EB6DDAC8)
  {
    type metadata accessor for NewServerMessages(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DDAC8);
    }
  }
}

void sub_1B0AD434C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B0AD4398()
{
  result = qword_1EB6DDF68;
  if (!qword_1EB6DDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF68);
  }

  return result;
}

unint64_t sub_1B0AD43EC()
{
  result = qword_1EB6DDF60;
  if (!qword_1EB6DDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF60);
  }

  return result;
}

unint64_t sub_1B0AD4440(uint64_t a1)
{
  result = sub_1B0AD4468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AD4468()
{
  result = qword_1EB6DDF58;
  if (!qword_1EB6DDF58)
  {
    type metadata accessor for FetchMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF58);
  }

  return result;
}

uint64_t sub_1B0AD44F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v46 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  result = sub_1B0B708B0(a1, a4);
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
        sub_1B03D3D54(v28, v22, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v22, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v28 += v27;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v31 = *&v19[*(v30 + 48)];
      sub_1B0AD3FBC(v19, type metadata accessor for ClientCommand);
      if (v31 != v56)
      {
        goto LABEL_8;
      }

      v33 = v44;
      v32 = v45;
      while (1)
      {
        sub_1B03D3D54(v26, v33, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v33, v32, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v32, type metadata accessor for TaskHistory.Previous);
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
      sub_1B0AD3FBC(v32, type metadata accessor for ClientCommand);
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
          sub_1B03D3D54(v36, v52, type metadata accessor for TaskHistory.Running);
          v39 = v50;
          sub_1B03D3E24(v38, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v39, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v40 = *(v39 + 8);
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v39 + *(v41 + 64), type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AD49E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v46 = a4;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v14;
  v15 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  result = sub_1B0B71C80(a1, a2, a3 & 1, a6);
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
        sub_1B03D3D54(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v33 = *&v21[*(v32 + 48)];
      sub_1B0AD3FBC(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v34 = v47;
      while (1)
      {
        v35 = v57;
        sub_1B03D3D54(v28, v57, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v34, type metadata accessor for TaskHistory.Previous);
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
      sub_1B0AD3FBC(v34, type metadata accessor for ClientCommand);
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
          sub_1B03D3D54(v38, v53, type metadata accessor for TaskHistory.Running);
          v41 = v51;
          sub_1B03D3E24(v40, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AD4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v46 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  result = sub_1B0B716F0(a1, a4);
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
        sub_1B03D3D54(v28, v22, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v22, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v28 += v27;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v31 = *&v19[*(v30 + 48)];
      sub_1B0AD3FBC(v19, type metadata accessor for ClientCommand);
      if (v31 != v56)
      {
        goto LABEL_8;
      }

      v33 = v44;
      v32 = v45;
      while (1)
      {
        sub_1B03D3D54(v26, v33, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v33, v32, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v32, type metadata accessor for TaskHistory.Previous);
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
      sub_1B0AD3FBC(v32, type metadata accessor for ClientCommand);
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
          sub_1B03D3D54(v36, v52, type metadata accessor for TaskHistory.Running);
          v39 = v50;
          sub_1B03D3E24(v38, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v39, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v40 = *(v39 + 8);
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v39 + *(v41 + 64), type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AD5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v55 = a2;
  v47 = a1;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v44 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
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
        sub_1B03D3D54(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v32 = *&v19[*(v31 + 48)];
      sub_1B0AD3FBC(v19, type metadata accessor for ClientCommand);
      if (v32 != v57)
      {
        goto LABEL_8;
      }

      v34 = v45;
      v33 = v46;
      while (1)
      {
        sub_1B03D3D54(v27, v34, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v34, v33, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v33, type metadata accessor for TaskHistory.Previous);
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
      sub_1B0AD3FBC(v33, type metadata accessor for ClientCommand);
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
          sub_1B03D3D54(v37, v53, type metadata accessor for TaskHistory.Running);
          v40 = v51;
          sub_1B03D3E24(v39, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v40, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v41 = *(v40 + 8);
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v40 + *(v42 + 64), type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AD58EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v48 = a3;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v45 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  result = sub_1B0B71364(a1, a2, a5);
  v51 = *(result + 16);
  if (v51)
  {
    v52 = v10;
    v53 = result;
    v45 = v8;
    v46 = v18;
    v26 = 0;
    v49 = result + 32;
    v47 = v15;
    do
    {
      if (v26 >= *(result + 16))
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

      v58 = *(v49 + 4 * v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_1B03D3D54(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v33 = *&v21[*(v32 + 48)];
      sub_1B0AD3FBC(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_1B03D3D54(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v34, type metadata accessor for TaskHistory.Previous);
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
      sub_1B0AD3FBC(v34, type metadata accessor for ClientCommand);
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
          sub_1B03D3D54(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_1B03D3E24(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AD5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_1B0AD5400(a2, a3, a4, sub_1B0B71098);
  if (result)
  {
    sub_1B03D3D54(a1, v14, type metadata accessor for UntaggedResponse);
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
        sub_1B0B5F730(v23, v19, a6);
      }

      return sub_1B0AA4C0C(v23);
    }

    else
    {
      return sub_1B0AD3FBC(v14, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

unint64_t sub_1B0AD5FA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v18);
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
    v27 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v31, &v30, &type metadata for UID, &v32);
    v31 = v32;
    v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v27);
    sub_1B03D06F8();
    sub_1B0E46F08();
    MessageIdentifierSet.subtracting(_:)(v17, v20);
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    MessageIdentifierSet.ranges.getter(v8);
    a1 = sub_1B0B4A3E8();
    LOBYTE(v26) = v28;
    sub_1B0398EFC(v8, &unk_1EB6E2780, &unk_1B0E9C5E0);
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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

  sub_1B03B5C80(a2, &v29 - v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a1 == -1)
  {
    goto LABEL_16;
  }

  v21 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v21, &v32);
  v31 = v32;
  v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v21);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.subtracting(_:)(v20, v14);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  LODWORD(v31) = 1;
  LODWORD(v30) = a1;
  static MessageIdentifier.... infix(_:_:)(&v31, &v30, &type metadata for UID, &v32);
  v31 = v32;
  v30 = Range<>.init<A>(_:)(&v31, &type metadata for UID, v21);
  sub_1B0E46F08();
  MessageIdentifierSet.subtracting(_:)(v11, v17);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = sub_1B0B4AAF0();
  result = sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
      sub_1B0E46F08();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v25 = sub_1B0E46EB8();
      sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AD6480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  if (a1 >= 2)
  {
    v16 = sub_1B041C1E8();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v16, &v27);
    v26 = v27;
    v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
    v17 = sub_1B03D06F8();
    sub_1B0E46F08();
    v24[2] = a2;
    MessageIdentifierSet.subtracting(_:)(a2, v12);
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v26) = a1;
    LODWORD(v25) = -1;
    static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
    v26 = v27;
    v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
    v24[1] = v17;
    sub_1B0E46F08();
    MessageIdentifierSet.subtracting(_:)(v9, v15);
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.ranges.getter(v6);
    v18 = sub_1B0B4A3E8();
    v20 = v19;
    sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0);
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v20)
    {
      v21 = 1;
LABEL_6:
      LODWORD(v26) = v21;
      LODWORD(v25) = a1 - 1;
      static MessageIdentifier.... infix(_:_:)(&v26, &v25, &type metadata for UID, &v27);
      v26 = v27;
      v25 = Range<>.init<A>(_:)(&v26, &type metadata for UID, v16);
      sub_1B0E46F08();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v22 = sub_1B0E46EB8();
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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

uint64_t sub_1B0AD6808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v93 = a5;
  v89 = a2;
  v91 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v82[-v12];
  v86 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v82[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v82[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v82[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v82[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v82[-v28];
  sub_1B03B5C80(a3, v23, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v30 = &unk_1EB6E3670;
    v31 = &unk_1B0E9B260;
    v32 = v23;
  }

  else
  {
    sub_1B03C60A4(v23, v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
    type metadata accessor for MailboxSyncState(0);
    sub_1B0B4A4F4(v29);
    v32 = v29;
    v30 = &unk_1EB6E26C0;
    v31 = &unk_1B0E9DE10;
  }

  sub_1B0398EFC(v32, v30, v31);
  v33 = *(type metadata accessor for MailboxSyncState(0) + 68);
  v34 = *a4;
  v35 = sub_1B0B3EF14();
  v36 = sub_1B0B4B0F4(v34, v35 | ((HIDWORD(v35) & 1) << 32));
  v37 = v95;
  if ((v36 & 1) != 0 && (v89 & 0xFF00) == 0)
  {
    v38 = sub_1B0B4A8E4();
    v40 = v39;
    v41 = v93;
    v42 = v85;
    sub_1B03D3D54(v93, v85, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(v41, v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v43 = sub_1B0E43988();
    v44 = sub_1B0E45908();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v98[0] = v89;
      *v45 = 68159491;
      v84 = v38;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v86;
      v47 = v42;
      v48 = &v18[*(v86 + 20)];
      *(v45 + 10) = *v48;
      *(v45 + 11) = 2082;
      v49 = *(v46 + 20);
      v83 = v40;
      v50 = v47 + v49;
      *(v45 + 13) = sub_1B0399D64(*(v47 + v49 + 8), *(v47 + v49 + 16), v98);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v51 = *(v48 + 12);
      sub_1B0AD3FBC(v18, type metadata accessor for MailboxTaskLogger);
      *(v45 + 29) = v51;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v52 = *(v50 + 32);
      v53 = *(v50 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v47, type metadata accessor for MailboxTaskLogger);
      v96 = v52;
      v97 = v53;
      v54 = sub_1B0E44BA8();
      v56 = sub_1B0399D64(v54, v55, v98);

      *(v45 + 43) = v56;
      *(v45 + 51) = 2048;
      v57 = v84;
      if (v83)
      {
        v57 = 0;
      }

      *(v45 + 53) = v57;
      _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld remaining known-to-be-missing. Requesting FindMissingMessages to re-run.", v45, 0x3Du);
      v58 = v89;
      swift_arrayDestroy();
      v37 = v95;
      MEMORY[0x1B272C230](v58, -1, -1);
      MEMORY[0x1B272C230](v45, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v18, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v42, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(0xCu);
    sub_1B03BDD7C(&v96, 12);
  }

  v59 = v92;
  sub_1B03D3D54(a1 + v33, v92, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v94;
    sub_1B03D3E24(v59, v94, _s15MissingMessagesO10IncompleteVMa);
    v62 = v93;
    v63 = v88;
    sub_1B03D3D54(v93, v88, type metadata accessor for MailboxTaskLogger);
    v64 = v87;
    sub_1B03D3D54(v62, v87, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v65 = v90;
    sub_1B03D3D54(v61, v90, _s15MissingMessagesO10IncompleteVMa);
    v66 = sub_1B0E43988();
    v67 = sub_1B0E45908();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98[0] = v95;
      *v68 = 68159491;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v86;
      v70 = &v64[*(v86 + 20)];
      *(v68 + 10) = *v70;
      *(v68 + 11) = 2082;
      v71 = v63;
      v72 = &v63[*(v69 + 20)];
      *(v68 + 13) = sub_1B0399D64(*(v72 + 1), *(v72 + 2), v98);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      LOWORD(v70) = *(v70 + 12);
      sub_1B0AD3FBC(v64, type metadata accessor for MailboxTaskLogger);
      *(v68 + 29) = v70;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v73 = *(v72 + 4);
      LODWORD(v72) = *(v72 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v71, type metadata accessor for MailboxTaskLogger);
      v96 = v73;
      v97 = v72;
      v74 = sub_1B0E44BA8();
      v76 = sub_1B0399D64(v74, v75, v98);

      *(v68 + 43) = v76;
      *(v68 + 51) = 2048;
      v77 = v90;
      sub_1B03B5C80(v90, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v78 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AD3FBC(v77, _s15MissingMessagesO10IncompleteVMa);
      *(v68 + 53) = v78;
      _os_log_impl(&dword_1B0389000, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Missing: %ld.", v68, 0x3Du);
      v79 = v95;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v79, -1, -1);
      MEMORY[0x1B272C230](v68, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v65, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0AD3FBC(v64, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v63, type metadata accessor for MailboxTaskLogger);
    }

    v80 = v94;
    sub_1B03B5C80(v94, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v81 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    _s15MissingMessagesO8ProgressVMa(0);
    MessageIdentifierSet.count.getter();
    sub_1B0AD3FBC(v80, _s15MissingMessagesO10IncompleteVMa);
    return v81;
  }

  else
  {
    sub_1B0AD3FBC(v59, _s15MissingMessagesOMa);
    return 0;
  }
}

uint64_t sub_1B0AD7288(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AD72C4()
{
  result = sub_1B03D0770(&unk_1F2710E30);
  qword_1EB737D38 = result;
  return result;
}

uint64_t sub_1B0AD72EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC42E0;
  *(v0 + 32) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 80) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 128) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 176) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 224) = type metadata accessor for FetchMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 272) = type metadata accessor for FindMissingMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 320) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v0;
}

uint64_t sub_1B0AD74BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D0, &unk_1B0EC42F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v9 = *(MessagesVMa - 8);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v31 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v26 = v17 + 56;
  v27 = v18;
  v18(&v13[v15], 1, 1, v16);
  *&v33 = a1;
  *(&v33 + 1) = sub_1B0ADB848;
  *&v34 = 0;
  *(&v34 + 1) = sub_1B0ADDA58;
  *&v35 = 0;
  *(&v35 + 1) = sub_1B0ADDABC;
  v36 = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0ADBA28;
  *(v19 + 24) = 0;
  v20 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v20;
  *(v19 + 64) = v35;
  *(v19 + 80) = v36;
  v37[0] = a1;
  v37[1] = sub_1B0ADB848;
  v37[2] = 0;
  v37[3] = sub_1B0ADDA58;
  v37[4] = 0;
  v37[5] = sub_1B0ADE394;
  v37[6] = v19;
  swift_bridgeObjectRetain_n();
  sub_1B0ADBA78(v37, v7);
  if ((*(v9 + 48))(v7, 1, MessagesVMa) == 1)
  {

    sub_1B0398EFC(v7, &qword_1EB6E41D0, &unk_1B0EC42F0);
    sub_1B0398EFC(&v13[v15], &qword_1EB6E3920, &qword_1B0E9B070);
    return (*(v31 + 56))(v32, 1, 1, SearchResult);
  }

  else
  {
    v22 = v28;
    sub_1B0ADE4D8(v7, v28, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v23 = sub_1B0AE1AC8(&v33);

    *v13 = v23;
    sub_1B0ADE4D8(v22, &v13[*(SearchResult + 20)], _s19UserInitiatedSearchV13FetchMessagesVMa);
    v24 = &v13[*(SearchResult + 24)];
    *v24 = v29;
    v24[8] = v30 & 1;
    sub_1B0398EFC(&v13[v15], &qword_1EB6E3920, &qword_1B0E9B070);
    v27(&v13[v15], 1, 1, v16);
    v25 = v32;
    sub_1B0ADE3A0(v13, v32, type metadata accessor for FetchSearchResultMessages.Requests);
    (*(v31 + 56))(v25, 0, 1, SearchResult);
    return sub_1B0ADE408(v13, type metadata accessor for FetchSearchResultMessages.Requests);
  }
}

void sub_1B0AD78F8(uint64_t a1)
{
  v2 = v1;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  MEMORY[0x1EEE9AC00](SearchResultMessages);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v64 - v7;
  v64 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v64 - v28;
  v68 = SearchResultMessages;
  sub_1B0AD8284(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1B0398EFC(v21, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0ADE3A0(a1, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0ADE3A0(a1, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v29 = v65;
    sub_1B0ADE3A0(v2, v65, type metadata accessor for FetchSearchResultMessages);
    v30 = sub_1B0E43988();
    v31 = sub_1B0E45908();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v73 = v33;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v34 = v64;
      v35 = &v9[*(v64 + 20)];
      *(v32 + 10) = *v35;
      *(v32 + 11) = 2082;
      v36 = &v12[*(v34 + 20)];
      *(v32 + 13) = sub_1B0399D64(*(v36 + 1), *(v36 + 2), &v73);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      LOWORD(v35) = *(v35 + 12);
      sub_1B0ADE408(v9, type metadata accessor for MailboxTaskLogger);
      *(v32 + 29) = v35;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v37 = *(v36 + 4);
      LODWORD(v35) = *(v36 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ADE408(v12, type metadata accessor for MailboxTaskLogger);
      v71 = v37;
      v72 = v35;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v73);

      *(v32 + 43) = v40;
      *(v32 + 51) = 2048;
      v41 = *(v68 + 48);
      SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
      v43 = v67;
      sub_1B03B5C80(v29 + v41 + *(SearchResult + 20), v67, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v44 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ADE408(v29, type metadata accessor for FetchSearchResultMessages);
      *(v32 + 53) = v44;
      _os_log_impl(&dword_1B0389000, v30, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, no UIDs to fetch.", v32, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v33, -1, -1);
      MEMORY[0x1B272C230](v32, -1, -1);
    }

    else
    {
      sub_1B0ADE408(v29, type metadata accessor for FetchSearchResultMessages);
      sub_1B0ADE408(v9, type metadata accessor for MailboxTaskLogger);

      sub_1B0ADE408(v12, type metadata accessor for MailboxTaskLogger);
    }
  }

  else
  {
    v45 = v70;
    sub_1B03C60A4(v21, v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE3A0(a1, v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0ADE3A0(a1, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v46 = v66;
    sub_1B0ADE3A0(v2, v66, type metadata accessor for FetchSearchResultMessages);
    sub_1B03B5C80(v45, v69, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v47 = sub_1B0E43988();
    v48 = sub_1B0E45908();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v49 = 68159747;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v50 = v64;
      v51 = &v15[*(v64 + 20)];
      *(v49 + 10) = *v51;
      *(v49 + 11) = 2082;
      v52 = &v18[*(v50 + 20)];
      *(v49 + 13) = sub_1B0399D64(*(v52 + 1), *(v52 + 2), &v73);
      *(v49 + 21) = 1040;
      *(v49 + 23) = 2;
      *(v49 + 27) = 512;
      LOWORD(v51) = *(v51 + 12);
      sub_1B0ADE408(v15, type metadata accessor for MailboxTaskLogger);
      *(v49 + 29) = v51;
      *(v49 + 31) = 2160;
      *(v49 + 33) = 0x786F626C69616DLL;
      *(v49 + 41) = 2085;
      v53 = *(v52 + 4);
      LODWORD(v51) = *(v52 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ADE408(v18, type metadata accessor for MailboxTaskLogger);
      v71 = v53;
      v72 = v51;
      v54 = sub_1B0E44BA8();
      v56 = sub_1B0399D64(v54, v55, &v73);

      *(v49 + 43) = v56;
      *(v49 + 51) = 2048;
      v57 = *(v68 + 48);
      v58 = v46 + v57 + *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
      v59 = v67;
      sub_1B03B5C80(v58, v67, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v60 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ADE408(v46, type metadata accessor for FetchSearchResultMessages);
      *(v49 + 53) = v60;
      *(v49 + 61) = 2048;
      v61 = v69;
      v62 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v49 + 63) = v62;
      _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, %ld UIDs to fetch.", v49, 0x47u);
      v63 = v65;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v63, -1, -1);
      MEMORY[0x1B272C230](v49, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v69, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0ADE408(v46, type metadata accessor for FetchSearchResultMessages);
      sub_1B0ADE408(v15, type metadata accessor for MailboxTaskLogger);

      sub_1B0ADE408(v18, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B0398EFC(v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }
}

uint64_t sub_1B0AD8284@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v55 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v55 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v62 = &v55 - v31;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v32 = *(SearchResult + 20);
  v63 = v1;
  v33 = v1 + v32;
  sub_1B03B5C80(v1 + v32, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MessageIdentifierSet.subtracting(_:)(v33 + *(MessagesVMa + 20), v24);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v33 + *(MessagesVMa + 24), v8, &qword_1EB6E3920, &qword_1B0E9B070);
  v60 = v15;
  v35 = *(v15 + 48);
  if (v35(v8, 1, v14) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v35(v8, 1, v14) != 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v8, v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.subtracting(_:)(v21, v27);
  sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v36 = SearchResult;
  v37 = v63;
  v38 = v59;
  sub_1B03B5C80(v63 + *(SearchResult + 28), v59, &qword_1EB6E3920, &qword_1B0E9B070);
  v39 = v35(v38, 1, v14);
  v40 = v58;
  if (v39 == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v41 = v35(v38, 1, v14);
    v42 = v61;
    if (v41 != 1)
    {
      sub_1B0398EFC(v38, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v38, v58, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v42 = v61;
  }

  MessageIdentifierSet.subtracting(_:)(v40, v42);
  sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v43 = (v37 + *(v36 + 24));
  if (v43[1])
  {
    v44 = v65;
    (*(v60 + 56))(v65, 1, 1, v14);
    sub_1B03D06F8();
    v45 = v64;
    sub_1B0E46EE8();
    v46 = v35(v44, 1, v14);
    v47 = v62;
    if (v46 != 1)
    {
      sub_1B0398EFC(v44, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v70 = *v43;
    v48 = sub_1B041C1E8();
    v69 = Range<>.init<A>(_:)(&v70, &type metadata for UID, v48);
    sub_1B03D06F8();
    v49 = v65;
    sub_1B0E46F08();
    (*(v60 + 56))(v49, 0, 1, v14);
    v45 = v64;
    sub_1B03C60A4(v49, v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v47 = v62;
  }

  MessageIdentifierSet.subtracting(_:)(v45, v47);
  sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v53 = 1;
    v52 = v68;
  }

  else
  {
    v50 = v56;
    sub_1B03C60A4(v47, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v51 = v50;
    v52 = v68;
    sub_1B03C60A4(v51, v68, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v53 = 0;
  }

  return (*(v66 + 56))(v52, v53, 1, v67);
}

uint64_t sub_1B0AD89D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v71 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for NewServerMessages(0);
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v56 - v31;
  if (sub_1B0B7131C(a1, a2, v30))
  {
    goto LABEL_15;
  }

  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v61 = v3;
  v33 = v3 + SearchResultMessages[12];
  sub_1B0AD989C(v32);
  v57 = v9;
  v58 = v8;
  v59 = *(v9 + 48);
  v34 = v59(v32, 1, v8);
  sub_1B0398EFC(v32, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v34 == 1 || (SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0), sub_1B03B5C80(v33 + *(SearchResult + 28), v22, &qword_1EB6E3920, &qword_1B0E9B070), v36 = 1, v37 = (*(v67 + 48))(v22, 1, v68), sub_1B0398EFC(v22, &qword_1EB6E3920, &qword_1B0E9B070), v37 != 1))
  {
    v38 = SearchResultMessages[13];
    sub_1B03B5C80(v61 + v38, v17, &qword_1EB6E41C0, &unk_1B0EC4330);
    if ((*(v69 + 48))(v17, 1, v70) == 1)
    {
      sub_1B0398EFC(v17, &qword_1EB6E41C0, &unk_1B0EC4330);
      sub_1B0AD8284(v28);
      v39 = v58;
      if (v59(v28, 1, v58) == 1)
      {
        v25 = v28;
LABEL_14:
        sub_1B0398EFC(v25, &unk_1EB6E3670, &unk_1B0E9B260);
LABEL_15:
        v36 = 1;
        goto LABEL_16;
      }

      sub_1B03C60A4(v28, v65, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v41 = v64;
      MessageIdentifierSet.suffix(_:)(47, v68, v64);
      if (MessageIdentifierSet.count.getter() < 1)
      {
        sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v43 = 1;
      }

      else
      {
        v42 = v63;
        sub_1B03C60A4(v41, v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03C60A4(v42, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v43 = 0;
      }

      (*(v57 + 56))(v25, v43, 1, v39);
      if (v59(v25, 1, v39) == 1)
      {
        sub_1B0398EFC(v65, &unk_1EB6E26C0, &unk_1B0E9DE10);
        goto LABEL_14;
      }

      v46 = v62;
      sub_1B03C60A4(v25, v62, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v47 = v61;
      v48 = *(v61 + 40);
      LODWORD(v68) = *(v61 + 48);
      v49 = v70;
      v40 = v66;
      sub_1B03B5C80(v46, v66 + v70[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
      v50 = SearchResultMessages[10];
      v51 = (v47 + SearchResultMessages[9]);
      LODWORD(v63) = *v51;
      LODWORD(v59) = v51[1];
      LODWORD(v58) = v51[2];
      v52 = v51[3];
      v53 = v51[4];
      LODWORD(v67) = *(v47 + v50);
      LODWORD(v64) = *(v47 + SearchResultMessages[11]);
      v54 = v49[9];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0398EFC(v46, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v65, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v40 + v54) = MEMORY[0x1E69E7CC0];
      *v40 = v48;
      *(v40 + 8) = v68;
      v55 = (v40 + v49[6]);
      *v55 = v63;
      v55[1] = v59;
      v55[2] = v58;
      v55[3] = v52;
      v55[4] = v53;
      *(v40 + v49[7]) = v67;
      *(v40 + v49[8]) = v64;
      sub_1B0398EFC(v47 + v38, &qword_1EB6E41C0, &unk_1B0EC4330);
      sub_1B0ADE3A0(v40, v47 + v38, type metadata accessor for NewServerMessages);
      (*(v69 + 56))(v47 + v38, 0, 1, v49);
    }

    else
    {
      v40 = v66;
      sub_1B0ADE4D8(v17, v66, type metadata accessor for NewServerMessages);
    }

    sub_1B0B5F454(v71);
    sub_1B0ADE408(v40, type metadata accessor for NewServerMessages);
    v36 = 0;
  }

LABEL_16:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4210, &unk_1B0EC4468);
  return (*(*(v44 - 8) + 56))(v71, v36, 1, v44);
}

uint64_t sub_1B0AD91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v61 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v58 = *(SearchResult - 8);
  v59 = SearchResult;
  MEMORY[0x1EEE9AC00](SearchResult);
  v57 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v62 = v4;
  sub_1B0AD989C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v25 = &unk_1EB6E3670;
    v26 = &unk_1B0E9B260;
    v27 = v17;
  }

  else
  {
    sub_1B03C60A4(v17, v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v63 = 1;
    if ((sub_1B0A9ECD4(0x100000000uLL, a2, a4, v28) & 1) == 0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v35 = *(v34 + 48);
      v36 = *(v62 + 24);
      *v37 = *(v62 + 16);
      v37[1] = v36;
      sub_1B03C60A4(v23, v37 + v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0x100000000;
    }

    v25 = &unk_1EB6E26C0;
    v26 = &unk_1B0E9DE10;
    v27 = v23;
  }

  sub_1B0398EFC(v27, v25, v26);
  v30 = v60;
  v29 = v61;
  if (sub_1B0A995AC(v60, a2, v61))
  {
    v64 = 1;
    if ((sub_1B0A9ECD4(0x100000001uLL, a2, a4, v31) & 1) == 0)
    {
      v32 = v62;
      sub_1B03B5C80(v62 + *(SearchResultMessages + 52), v14, &qword_1EB6E41C0, &unk_1B0EC4330);
      v33 = type metadata accessor for NewServerMessages(0);
      if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
      {
        sub_1B0398EFC(v14, &qword_1EB6E41C0, &unk_1B0EC4330);
      }

      else
      {
        v39 = *&v14[*(v33 + 36)];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ADE408(v14, type metadata accessor for NewServerMessages);
        if (*(v39 + 16))
        {
          v40 = swift_allocObject();
          v41 = *(v32 + 24);
          *(v40 + 16) = *(v32 + 16);
          *(v40 + 24) = v41;
          *(v40 + 32) = v39;
          *(v40 + 40) = 0;
          *(v40 + 48) = 1;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return 0x100000001;
        }
      }
    }
  }

  v42 = v62;
  sub_1B0ADA33C(v30, a2, v29, a4, v9);
  v43 = v59;
  if ((*(v58 + 48))(v9, 1, v59) == 1)
  {
    sub_1B0398EFC(v9, &qword_1EB6E41E0, &unk_1B0EC4580);
    return 0;
  }

  else
  {
    v44 = v57;
    sub_1B0ADE4D8(v9, v57, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v45 = *v44;
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4200, &qword_1B0EC4450);
    v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4208, &unk_1B0EC4458) - 8);
    v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1B0EC1E70;
    v50 = v43;
    v51 = v49 + v48;
    v52 = v47[14];
    v53 = *(v42 + 48);
    *v51 = *(v42 + 40);
    *(v51 + 8) = v53;
    v54 = v56;
    sub_1B03B5C80(v44 + *(v50 + 20), v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v54, v51 + v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v55 = sub_1B0BABCA4(v49);
    swift_setDeallocating();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0398EFC(v51, &qword_1EB6E4208, &unk_1B0EC4458);
    swift_deallocClassInstance();
    sub_1B0ADE408(v44, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    result = v45;
    *(v46 + 24) = v55;
  }

  return result;
}

uint64_t sub_1B0AD989C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v3 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v18 = *(SearchResult - 8);
  v93 = SearchResult;
  v94 = v18;
  MEMORY[0x1EEE9AC00](SearchResult);
  v106 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v100 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v88 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v85 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v85 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v85 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v101 = &v85 - v36;
  v92 = v2;
  v37 = *v2;
  v38 = sub_1B03D06F8();
  v107 = v34;
  v87 = v38;
  sub_1B0E46EE8();
  v99 = v37;
  v39 = *(v37 + 16);
  v110 = v11;
  if (v39)
  {
    v40 = &v22[*(v93 + 20)];
    v41 = *(_s19UserInitiatedSearchV13FetchMessagesVMa(0) + 24);
    v42 = v99 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v43 = (v100 + 48);
    v44 = *(v94 + 72);
    v103 = v44;
    v104 = (v3 + 16);
    do
    {
      sub_1B0ADE3A0(v42, v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_1B03B5C80(v40 + v41, v16, &qword_1EB6E3920, &qword_1B0E9B070);
      if ((*v43)(v16, 1, v111) == 1)
      {
        sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
        v45 = v108;
        sub_1B03B5C80(v40, v108, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v104)(v105, v45, v109);
        sub_1B0E46ED8();
        v44 = v103;
        sub_1B0ADE408(v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v46 = v45;
        v47 = &unk_1EB6E1AF0;
        v48 = &unk_1B0E9AF40;
      }

      else
      {
        sub_1B0ADE408(v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v46 = v16;
        v47 = &qword_1EB6E3920;
        v48 = &qword_1B0E9B070;
      }

      sub_1B0398EFC(v46, v47, v48);
      v42 += v44;
      --v39;
    }

    while (v39);
  }

  v49 = v101;
  sub_1B03C60A4(v107, v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0E46E98())
  {
    sub_1B0398EFC(v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v50 = 1;
    v51 = v97;
    v52 = v98;
    v53 = v96;
  }

  else
  {
    sub_1B03B5C80(v49, v102, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v54 = v99;
    v55 = *(v99 + 16);
    v56 = v111;
    if (v55)
    {
      v57 = &v106[*(v93 + 20)];
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      v59 = v106;
      v107 = *(MessagesVMa + 24);
      v60 = v54 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v61 = (v100 + 48);
      v62 = *(v94 + 72);
      do
      {
        sub_1B0ADE3A0(v60, v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v66 = v110;
        sub_1B03B5C80(v57 + v107, v110, &qword_1EB6E3920, &qword_1B0E9B070);
        if ((*v61)(v66, 1, v56) == 1)
        {
          sub_1B0ADE408(v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v63 = v110;
          v64 = &qword_1EB6E3920;
          v65 = &qword_1B0E9B070;
        }

        else
        {
          sub_1B0398EFC(v110, &qword_1EB6E3920, &qword_1B0E9B070);
          v67 = v108;
          sub_1B03B5C80(v57, v108, &unk_1EB6E26C0, &unk_1B0E9DE10);
          sub_1B0E46EC8();
          v56 = v111;
          sub_1B0ADE408(v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v63 = v67;
          v64 = &unk_1EB6E1AF0;
          v65 = &unk_1B0E9AF40;
        }

        sub_1B0398EFC(v63, v64, v65);
        v60 += v62;
        --v55;
        v59 = v106;
      }

      while (v55);
    }

    sub_1B03C60A4(v102, v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v68 = type metadata accessor for FetchSearchResultMessages.Requests(0);
    v69 = v92;
    v70 = v92 + *(v68 + 24);
    if (v70[8])
    {
      v71 = v100;
      v72 = v90;
      (*(v100 + 56))(v90, 1, 1, v56);
      v73 = v88;
      sub_1B0E46EE8();
      v74 = (*(v71 + 48))(v72, 1, v56);
      v52 = v98;
      v53 = v96;
      if (v74 != 1)
      {
        sub_1B0398EFC(v72, &qword_1EB6E3920, &qword_1B0E9B070);
      }
    }

    else
    {
      v113 = *v70;
      v75 = sub_1B041C1E8();
      v112 = Range<>.init<A>(_:)(&v113, &type metadata for UID, v75);
      v76 = v90;
      sub_1B0E46F08();
      (*(v100 + 56))(v76, 0, 1, v56);
      v73 = v88;
      sub_1B03C60A4(v76, v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v52 = v98;
      v53 = v96;
    }

    v77 = v89;
    v78 = v95;
    MessageIdentifierSet.subtracting(_:)(v73, v89);
    sub_1B0398EFC(v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v79 = v69 + *(v68 + 20);
    v80 = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v81 = v91;
    MessageIdentifierSet.subtracting(_:)(v79 + *(v80 + 20), v91);
    sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v82 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v82 < 1)
    {
      sub_1B0398EFC(v81, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v50 = 1;
    }

    else
    {
      v83 = v86;
      sub_1B03C60A4(v81, v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v83, v52, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v50 = 0;
    }

    v51 = v97;
  }

  return (*(v53 + 56))(v52, v50, 1, v51);
}