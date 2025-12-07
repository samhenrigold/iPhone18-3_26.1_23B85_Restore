Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.verify()()
{
  v3 = v1;
  v4 = v0;
  v286 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v258 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v258 - v12;
  v14 = sub_225CCE4D4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v258 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 48);
  if (v19 && v19[2])
  {
    v266 = v8;
    v267 = v16;
    v284 = &type metadata for DateProvider;
    v285 = &protocol witness table for DateProvider;
    error = sub_225B2D350(MEMORY[0x277D84F90]);
    v280 = 0;
    sub_225AF18AC(v4, &v276);
    if (v2)
    {
      sub_225AF2230(&error);
      v266 = 0;
      v24 = v2;
      v265 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v268 = swift_allocError();
      v26 = v25;
      swift_getErrorValue();
      v27 = v272;
      v28 = v2;
      sub_225B21FAC(v27, &error);

      v29 = v280;
      v267 = 0x8000000225D1C180;
      if (v280)
      {
        v264 = error;
        v30 = v282;
        v263 = v281;
        v32 = v283;
        v31 = v284;
      }

      else
      {
        error = v2;
        v48 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v49 = v276;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_225CD30F0;
          *(v50 + 32) = 20;
          v51 = [v49 code];
          v52 = MEMORY[0x277D83BF8];
          *(v50 + 64) = MEMORY[0x277D83B88];
          *(v50 + 72) = v52;
          *(v50 + 40) = v51;
          v32 = sub_225B2C374(v50);
          swift_setDeallocating();
          sub_2259CB640(v50 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v53 = v2;
          v264 = 0;
          v263 = 0;
          v30 = 0;
          v29 = MEMORY[0x277D84F90];
        }

        else
        {
          error = v2;
          v54 = v2;
          v55 = sub_225CCE954();
          v56 = swift_dynamicCast();
          v57 = *(v55 - 8);
          (*(v57 + 56))(v11, v56 ^ 1u, 1, v55);
          LODWORD(v57) = (*(v57 + 48))(v11, 1, v55);
          sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
          if (v57)
          {
            v58 = 0;
          }

          else
          {
            v58 = 23;
          }

          v264 = v58;
          v29 = MEMORY[0x277D84F90];
          v32 = sub_225B2C374(MEMORY[0x277D84F90]);
          v59 = v2;
          v263 = 0xD000000000000022;
          v30 = 0x8000000225D1C180;
        }

        v31 = v2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v32;
      sub_225B2C4A0(v265, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

      v61 = error;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_225B29AA0(0, *(v29 + 2) + 1, 1, v29);
      }

      v63 = *(v29 + 2);
      v62 = *(v29 + 3);
      if (v63 >= v62 >> 1)
      {
        v29 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v29);
      }

      *(v29 + 2) = v63 + 1;
      v64 = &v29[56 * v63];
      v65 = v267;
      *(v64 + 4) = 0xD000000000000022;
      *(v64 + 5) = v65;
      *(v64 + 6) = 0xD000000000000020;
      *(v64 + 7) = 0x8000000225D1BF90;
      *(v64 + 8) = 0x2928796669726576;
      *(v64 + 9) = 0xE800000000000000;
      *(v64 + 10) = 262;
      *v26 = v264;
      v66 = v263;
      *(v26 + 8) = v29;
      *(v26 + 16) = v66;
      *(v26 + 24) = v30;
      *(v26 + 32) = v61;
      *(v26 + 40) = v31;
      swift_willThrow();
    }

    else
    {
      v265 = v13;
      v21 = v276;
      v20 = v277;
      v22 = v278;
      v23 = decodeCertificateChain(fromBase64DER:)(v19);
      v273 = v21;
      v274 = v20;
      LODWORD(v264) = v22;
      v275 = v22;
      v67 = DIPOIDVerifier.verifyChain(_:forUsage:)(v23, &v273);
      v268 = 0;
      sub_225AF2230(&error);

      sub_2259F6140(v21, v20, v264);
      v68 = SecTrustCopyKey(v67);
      if (!v68)
      {
        v86 = v67;
        v267 = 0x8000000225D1BF90;
        v102 = MEMORY[0x277D84F90];
        v103 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v105 = v104;
        v106 = sub_225CCE954();
        v107 = *(v106 - 8);
        v108 = v265;
        (*(v107 + 56))(v265, 1, 1, v106);
        LODWORD(v106) = (*(v107 + 48))(v108, 1, v106);
        sub_2259CB640(v108, &unk_27D73B050, &unk_225CD3AD0);
        if (v106)
        {
          v109 = 1142;
        }

        else
        {
          v109 = 23;
        }

        v110 = sub_225B2C374(v102);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        error = v110;
        sub_225B2C4A0(v103, sub_225B2AC40, 0, v111, &error);

        v112 = error;
        v113 = sub_225B29AA0(0, 1, 1, v102);
        v115 = *(v113 + 2);
        v114 = *(v113 + 3);
        if (v115 >= v114 >> 1)
        {
          v113 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v113);
        }

        *(v113 + 2) = v115 + 1;
        v116 = &v113[56 * v115];
        *(v116 + 4) = 0xD00000000000003BLL;
        *(v116 + 5) = 0x8000000225D1C1B0;
        *(v116 + 6) = 0xD000000000000020;
        *(v116 + 7) = v267;
        *(v116 + 8) = 0x2928796669726576;
        *(v116 + 9) = 0xE800000000000000;
        *(v116 + 10) = 267;
        *v105 = v109;
        *(v105 + 8) = v113;
        *(v105 + 16) = 0xD00000000000003BLL;
        *(v105 + 24) = 0x8000000225D1C1B0;
        *(v105 + 32) = v112;
        *(v105 + 40) = 0;
        swift_willThrow();
        goto LABEL_45;
      }

      v264 = v68;
      v69 = *(v3 + 8);
      error = *v3;
      v280 = v69;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v70 = *(v3 + 16);
      v71 = *(v3 + 24);

      MEMORY[0x22AA6CE70](v70, v71);

      sub_225CCE4B4();
      v72 = sub_225CCE484();
      v74 = v73;

      (*(v15 + 8))(v18, v267);
      if (v74 >> 60 == 15)
      {
LABEL_33:
        v86 = v67;
        v267 = 0x8000000225D1BF90;
        v87 = MEMORY[0x277D84F90];
        v88 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v90 = v89;
        v91 = sub_225CCE954();
        v92 = *(v91 - 8);
        v93 = v265;
        (*(v92 + 56))(v265, 1, 1, v91);
        LODWORD(v91) = (*(v92 + 48))(v93, 1, v91);
        sub_2259CB640(v93, &unk_27D73B050, &unk_225CD3AD0);
        if (v91)
        {
          v94 = 1143;
        }

        else
        {
          v94 = 23;
        }

        v95 = sub_225B2C374(v87);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        error = v95;
        sub_225B2C4A0(v88, sub_225B2AC40, 0, v96, &error);

        v97 = error;
        v98 = sub_225B29AA0(0, 1, 1, v87);
        v100 = *(v98 + 2);
        v99 = *(v98 + 3);
        if (v100 >= v99 >> 1)
        {
          v98 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v98);
        }

        *(v98 + 2) = v100 + 1;
        v101 = &v98[56 * v100];
        *(v101 + 4) = 0xD000000000000044;
        *(v101 + 5) = 0x8000000225D1C1F0;
        *(v101 + 6) = 0xD000000000000020;
        *(v101 + 7) = v267;
        *(v101 + 8) = 0x2928796669726576;
        *(v101 + 9) = 0xE800000000000000;
        *(v101 + 10) = 272;
        *v90 = v94;
        *(v90 + 8) = v98;
        *(v90 + 16) = 0xD000000000000044;
        *(v90 + 24) = 0x8000000225D1C1F0;
        *(v90 + 32) = v97;
        *(v90 + 40) = 0;
        swift_willThrow();

LABEL_45:
        return;
      }

      v267 = v72;
      v75 = *(v3 + 40);
      v276 = *(v3 + 32);
      v277 = v75;
      v273 = 45;
      v274 = 0xE100000000000000;
      v270 = 43;
      v271 = 0xE100000000000000;
      sub_2259D8654();
      v276 = sub_225CCF064();
      v277 = v76;
      v273 = 95;
      v274 = 0xE100000000000000;
      v270 = 47;
      v271 = 0xE100000000000000;
      v77 = sub_225CCF064();
      v79 = v78;

      error = v77;
      v280 = v79;

      v80 = sub_225CCE5D4();

      v81 = v80 & 3;
      if (v80 <= 0)
      {
        v81 = -(-v80 & 3);
      }

      if (v81 >= 1)
      {
        v82 = sub_225CCE6D4();
        MEMORY[0x22AA6CE70](v82);
      }

      v83 = sub_225CCCF04();
      v85 = v84;
      sub_2259CB6FC(v83, v84);

      if (v85 >> 60 == 15)
      {
        sub_2259B97A8(v267, v74);
        goto LABEL_33;
      }

      sub_2259B97A8(v83, v85);
      v117 = v267;
      if (!*(v3 + 72))
      {
        v263 = v267;
        v136 = v74;
        goto LABEL_57;
      }

      if (*(v3 + 72) == 1)
      {
        if (!*(v3 + 64) || (v118 = sub_225CCCF04(), v119 >> 60 == 15))
        {
          v266 = v83;
          v263 = 0x8000000225D1C310;
          v262 = 0x8000000225D1BF90;
          v120 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v122 = v121;
          v123 = sub_225CCE954();
          v124 = *(v123 - 8);
          v125 = v265;
          (*(v124 + 56))(v265, 1, 1, v123);
          LODWORD(v123) = (*(v124 + 48))(v125, 1, v123);
          sub_2259CB640(v125, &unk_27D73B050, &unk_225CD3AD0);
          if (v123)
          {
            v126 = 0;
          }

          else
          {
            v126 = 23;
          }

          v127 = MEMORY[0x277D84F90];
          v128 = sub_225B2C374(MEMORY[0x277D84F90]);
          v129 = swift_isUniquelyReferenced_nonNull_native();
          error = v128;
          sub_225B2C4A0(v120, sub_225B2AC40, 0, v129, &error);

          v130 = error;
          v131 = sub_225B29AA0(0, 1, 1, v127);
          v133 = *(v131 + 2);
          v132 = *(v131 + 3);
          if (v133 >= v132 >> 1)
          {
            v131 = sub_225B29AA0((v132 > 1), v133 + 1, 1, v131);
          }

          *(v131 + 2) = v133 + 1;
          v134 = &v131[56 * v133];
          v135 = v263;
          *(v134 + 4) = 0xD000000000000036;
          *(v134 + 5) = v135;
          *(v134 + 6) = 0xD000000000000020;
          *(v134 + 7) = v262;
          *(v134 + 8) = 0x2928796669726576;
          *(v134 + 9) = 0xE800000000000000;
          *(v134 + 10) = 278;
          *v122 = v126;
          *(v122 + 8) = v131;
          *(v122 + 16) = 0xD000000000000036;
LABEL_84:
          *(v122 + 24) = v135;
          *(v122 + 32) = v130;
          *(v122 + 40) = 0;
          swift_willThrow();

          sub_2259B97A8(v266, v85);
          v154 = v267;
          v155 = v74;
LABEL_85:
          sub_2259B97A8(v154, v155);
          return;
        }

        error = v118;
        v280 = v119;
        v193 = sub_225CCCF74();
        v194 = DigestSha256(v193);

        if (v194)
        {
          v195 = sub_225CCCFA4();
          v197 = v196;

          sub_225CCCFC4();
          sub_2259BEF00(v195, v197);
          sub_2259B97A8(v117, v74);
          v136 = v280;
          v263 = error;
LABEL_57:
          v137 = sub_225CCCF74();
          v138 = ECDSASHA256RawToDER(v137);

          if (!v138)
          {
            v267 = v136;
            v266 = v83;
            v262 = 0x8000000225D1BF90;
            v139 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            swift_allocError();
            v141 = v140;
            v142 = sub_225CCE954();
            v143 = *(v142 - 8);
            v144 = v265;
            (*(v143 + 56))(v265, 1, 1, v142);
            LODWORD(v142) = (*(v143 + 48))(v144, 1, v142);
            sub_2259CB640(v144, &unk_27D73B050, &unk_225CD3AD0);
            if (v142)
            {
              v145 = 1144;
            }

            else
            {
              v145 = 23;
            }

            v146 = MEMORY[0x277D84F90];
            v147 = sub_225B2C374(MEMORY[0x277D84F90]);
            v148 = swift_isUniquelyReferenced_nonNull_native();
            error = v147;
            sub_225B2C4A0(v139, sub_225B2AC40, 0, v148, &error);

            v149 = error;
            v150 = sub_225B29AA0(0, 1, 1, v146);
            v152 = *(v150 + 2);
            v151 = *(v150 + 3);
            if (v152 >= v151 >> 1)
            {
              v150 = sub_225B29AA0((v151 > 1), v152 + 1, 1, v150);
            }

            *(v150 + 2) = v152 + 1;
            v153 = &v150[56 * v152];
            *(v153 + 4) = 0xD00000000000003FLL;
            *(v153 + 5) = 0x8000000225D1C290;
            *(v153 + 6) = 0xD000000000000020;
            *(v153 + 7) = v262;
            *(v153 + 8) = 0x2928796669726576;
            *(v153 + 9) = 0xE800000000000000;
            *(v153 + 10) = 288;
            *v141 = v145;
            *(v141 + 8) = v150;
            *(v141 + 16) = 0xD00000000000003FLL;
            *(v141 + 24) = 0x8000000225D1C290;
            *(v141 + 32) = v149;
            *(v141 + 40) = 0;
            swift_willThrow();
            sub_2259BEF00(v263, v267);

            v154 = v266;
            v155 = v85;
            goto LABEL_85;
          }

          goto LABEL_66;
        }

        v266 = v83;
        v262 = 0x8000000225D1BF90;
        v223 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v263 = swift_allocError();
        v225 = v224;
        v226 = sub_225CCE954();
        v227 = *(v226 - 8);
        v228 = v265;
        (*(v227 + 56))(v265, 1, 1, v226);
        LODWORD(v226) = (*(v227 + 48))(v228, 1, v226);
        sub_2259CB640(v228, &unk_27D73B050, &unk_225CD3AD0);
        if (v226)
        {
          v229 = 0;
        }

        else
        {
          v229 = 23;
        }

        v230 = MEMORY[0x277D84F90];
        v231 = sub_225B2C374(MEMORY[0x277D84F90]);
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v276 = v231;
        sub_225B2C4A0(v223, sub_225B2AC40, 0, v232, &v276);

        v233 = v276;
        v234 = sub_225B29AA0(0, 1, 1, v230);
        v236 = *(v234 + 2);
        v235 = *(v234 + 3);
        if (v236 >= v235 >> 1)
        {
          v234 = sub_225B29AA0((v235 > 1), v236 + 1, 1, v234);
        }

        *(v234 + 2) = v236 + 1;
        v237 = &v234[56 * v236];
        *(v237 + 4) = 0xD000000000000041;
        *(v237 + 5) = 0x8000000225D1C240;
        *(v237 + 6) = 0xD000000000000020;
        *(v237 + 7) = v262;
        *(v237 + 8) = 0x2928796669726576;
        *(v237 + 9) = 0xE800000000000000;
        *(v237 + 10) = 281;
        *v225 = v229;
        *(v225 + 8) = v234;
        *(v225 + 16) = 0xD000000000000041;
        *(v225 + 24) = 0x8000000225D1C240;
        *(v225 + 32) = v233;
        *(v225 + 40) = 0;
        swift_willThrow();
        sub_2259B97A8(v267, v74);

        sub_2259B97A8(v266, v85);
        sub_2259BEF00(error, v280);
      }

      else
      {
        v156 = sub_225CCCF74();
        v157 = DigestSha256(v156);

        if (!v157)
        {
          v266 = v83;
          v263 = 0x8000000225D1C240;
          v262 = 0x8000000225D1BF90;
          v180 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v122 = v181;
          v182 = sub_225CCE954();
          v183 = *(v182 - 8);
          v184 = v265;
          (*(v183 + 56))(v265, 1, 1, v182);
          LODWORD(v182) = (*(v183 + 48))(v184, 1, v182);
          sub_2259CB640(v184, &unk_27D73B050, &unk_225CD3AD0);
          if (v182)
          {
            v185 = 0;
          }

          else
          {
            v185 = 23;
          }

          v186 = MEMORY[0x277D84F90];
          v187 = sub_225B2C374(MEMORY[0x277D84F90]);
          v188 = swift_isUniquelyReferenced_nonNull_native();
          error = v187;
          sub_225B2C4A0(v180, sub_225B2AC40, 0, v188, &error);

          v130 = error;
          v189 = sub_225B29AA0(0, 1, 1, v186);
          v191 = *(v189 + 2);
          v190 = *(v189 + 3);
          if (v191 >= v190 >> 1)
          {
            v189 = sub_225B29AA0((v190 > 1), v191 + 1, 1, v189);
          }

          *(v189 + 2) = v191 + 1;
          v192 = &v189[56 * v191];
          v135 = v263;
          *(v192 + 4) = 0xD000000000000041;
          *(v192 + 5) = v135;
          *(v192 + 6) = 0xD000000000000020;
          *(v192 + 7) = v262;
          *(v192 + 8) = 0x2928796669726576;
          *(v192 + 9) = 0xE800000000000000;
          *(v192 + 10) = 293;
          *v122 = v185;
          *(v122 + 8) = v189;
          *(v122 + 16) = 0xD000000000000041;
          goto LABEL_84;
        }

        v263 = sub_225CCCFA4();
        v136 = v158;

        sub_2259B97A8(v117, v74);
        v159 = sub_225CCCF74();
        v138 = ECDSASHA256RawToDER(v159);

        if (v138)
        {
LABEL_66:
          v267 = v136;
          v160 = sub_225CCCFA4();
          v265 = v161;

          sub_2259B97A8(v83, v85);
          v162 = objc_opt_self();
          v163 = [v162 standardUserDefaults];
          if (qword_28105B9F0 != -1)
          {
            swift_once();
          }

          v164 = byte_28105B9F8;
          if (byte_28105B9F8 == 1)
          {
            v165 = sub_225CCE444();
            v166 = [v163 BOOLForKey_];

            if (v166)
            {
              sub_2259BEF00(v263, v267);

              sub_2259BEF00(v160, v265);
              return;
            }
          }

          else
          {
          }

          v167 = [v162 standardUserDefaults];
          v168 = v167;
          if (v164)
          {
            v169 = sub_225CCE444();
            v170 = [v168 BOOLForKey_];

            v171 = v263;
            v172 = v265;
            if (v170)
            {

              sub_2259BEF00(v171, v267);
              v173 = v160;
              v174 = v172;
LABEL_115:
              sub_2259BEF00(v173, v174);
              return;
            }
          }

          else
          {

            v171 = v263;
          }

          v175 = *MEMORY[0x277CDC300];
          error = 0;
          v176 = v267;
          v177 = sub_225CCCF74();
          v178 = sub_225CCCF74();
          v179 = v264;
          LODWORD(v175) = SecKeyVerifySignature(v264, v175, v177, v178, &error);

          if (v175)
          {

            sub_2259BEF00(v171, v176);
            v173 = v160;
          }

          else
          {
            v262 = v160;
            LOWORD(v276) = 253;
            v198 = errorFromCFError(_:_:_:)(error, 0xD000000000000023, 0x8000000225D174F0, &v276);
            swift_willThrow();
            v199 = "ed to hash the public key";
            v200 = v198;
            v201 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            v268 = swift_allocError();
            v203 = v202;
            swift_getErrorValue();
            v204 = v269;
            v205 = v198;
            sub_225B21FAC(v204, &error);

            v206 = v280;
            if (v280)
            {
              v266 = error;
              v261 = v281;
              v260 = v282;
              v207 = v283;
              v259 = v284;
            }

            else
            {
              v258 = "ed to hash the public key";
              error = v198;
              v238 = v198;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
              sub_2259E4540();
              if (swift_dynamicCast())
              {
                v239 = v276;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
                v240 = swift_allocObject();
                *(v240 + 16) = xmmword_225CD30F0;
                *(v240 + 32) = 20;
                v241 = [v239 code];
                v242 = MEMORY[0x277D83BF8];
                *(v240 + 64) = MEMORY[0x277D83B88];
                *(v240 + 72) = v242;
                *(v240 + 40) = v241;
                v207 = sub_225B2C374(v240);
                swift_setDeallocating();
                sub_2259CB640(v240 + 32, &qword_27D73B060, &unk_225CD3AE0);
                swift_deallocClassInstance();

                v243 = v198;
                v266 = 0;
                v261 = 0;
                v260 = 0;
                v206 = MEMORY[0x277D84F90];
              }

              else
              {
                error = v198;
                v244 = v198;
                v245 = sub_225CCE954();
                v246 = v266;
                v247 = swift_dynamicCast();
                v248 = *(v245 - 8);
                (*(v248 + 56))(v246, v247 ^ 1u, 1, v245);
                LODWORD(v248) = (*(v248 + 48))(v246, 1, v245);
                sub_2259CB640(v246, &unk_27D73B050, &unk_225CD3AD0);
                if (v248)
                {
                  v249 = 0;
                }

                else
                {
                  v249 = 23;
                }

                v266 = v249;
                v206 = MEMORY[0x277D84F90];
                v207 = sub_225B2C374(MEMORY[0x277D84F90]);
                v250 = v198;
                v261 = 0xD000000000000037;
                v260 = 0x8000000225D1C2D0;
              }

              v259 = v198;
              v199 = v258;
            }

            v251 = v199 | 0x8000000000000000;
            v252 = swift_isUniquelyReferenced_nonNull_native();
            error = v207;
            sub_225B2C4A0(v201, sub_225B2AC40, 0, v252, &error);

            v253 = error;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v206 = sub_225B29AA0(0, *(v206 + 2) + 1, 1, v206);
            }

            v255 = *(v206 + 2);
            v254 = *(v206 + 3);
            if (v255 >= v254 >> 1)
            {
              v206 = sub_225B29AA0((v254 > 1), v255 + 1, 1, v206);
            }

            *(v206 + 2) = v255 + 1;
            v256 = &v206[56 * v255];
            *(v256 + 4) = 0xD000000000000037;
            *(v256 + 5) = 0x8000000225D1C2D0;
            *(v256 + 6) = 0xD000000000000020;
            *(v256 + 7) = v251;
            *(v256 + 8) = 0x2928796669726576;
            *(v256 + 9) = 0xE800000000000000;
            *(v256 + 10) = 308;
            *v203 = v266;
            v257 = v261;
            *(v203 + 8) = v206;
            *(v203 + 16) = v257;
            *(v203 + 24) = v260;
            *(v203 + 32) = v253;
            *(v203 + 40) = v259;
            swift_willThrow();
            sub_2259BEF00(v263, v267);

            v173 = v262;
          }

          v174 = v265;
          goto LABEL_115;
        }

        v267 = v136;
        v266 = v83;
        v262 = 0x8000000225D1BF90;
        v208 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v210 = v209;
        v211 = sub_225CCE954();
        v212 = *(v211 - 8);
        v213 = v265;
        (*(v212 + 56))(v265, 1, 1, v211);
        LODWORD(v211) = (*(v212 + 48))(v213, 1, v211);
        sub_2259CB640(v213, &unk_27D73B050, &unk_225CD3AD0);
        if (v211)
        {
          v214 = 1144;
        }

        else
        {
          v214 = 23;
        }

        v215 = MEMORY[0x277D84F90];
        v216 = sub_225B2C374(MEMORY[0x277D84F90]);
        v217 = swift_isUniquelyReferenced_nonNull_native();
        error = v216;
        sub_225B2C4A0(v208, sub_225B2AC40, 0, v217, &error);

        v218 = error;
        v219 = sub_225B29AA0(0, 1, 1, v215);
        v221 = *(v219 + 2);
        v220 = *(v219 + 3);
        if (v221 >= v220 >> 1)
        {
          v219 = sub_225B29AA0((v220 > 1), v221 + 1, 1, v219);
        }

        *(v219 + 2) = v221 + 1;
        v222 = &v219[56 * v221];
        *(v222 + 4) = 0xD00000000000003FLL;
        *(v222 + 5) = 0x8000000225D1C290;
        *(v222 + 6) = 0xD000000000000020;
        *(v222 + 7) = v262;
        *(v222 + 8) = 0x2928796669726576;
        *(v222 + 9) = 0xE800000000000000;
        *(v222 + 10) = 297;
        *v210 = v214;
        *(v210 + 8) = v219;
        *(v210 + 16) = 0xD00000000000003FLL;
        *(v210 + 24) = 0x8000000225D1C290;
        *(v210 + 32) = v218;
        *(v210 + 40) = 0;
        swift_willThrow();

        sub_2259B97A8(v266, v85);
        sub_2259BEF00(v263, v267);
      }
    }
  }

  else
  {
    v268 = 0x8000000225D1BF90;
    v33 = v13;
    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v33, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v33, 1, v38);
    sub_2259CB640(v33, &unk_27D73B050, &unk_225CD3AD0);
    if (v38)
    {
      v40 = 107;
    }

    else
    {
      v40 = 23;
    }

    v41 = sub_225B2C374(v34);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    error = v41;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, v42, &error);

    v43 = error;
    v44 = sub_225B29AA0(0, 1, 1, v34);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[56 * v46];
    *(v47 + 4) = 0xD00000000000002DLL;
    *(v47 + 5) = 0x8000000225D1C150;
    *(v47 + 6) = 0xD000000000000020;
    *(v47 + 7) = v268;
    *(v47 + 8) = 0x2928796669726576;
    *(v47 + 9) = 0xE800000000000000;
    *(v47 + 10) = 254;
    *v37 = v40;
    *(v37 + 8) = v44;
    *(v37 + 16) = 0xD00000000000002DLL;
    *(v37 + 24) = 0x8000000225D1C150;
    *(v37 + 32) = v43;
    *(v37 + 40) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.setCertificateChain(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  if (*(a1._rawValue + 2))
  {

    v1[6]._rawValue = a1._rawValue;
  }

  else
  {
    v22 = 0x8000000225D1C380;
    v23 = 0x8000000225D1BF90;
    v6 = MEMORY[0x277D84F90];
    v7 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v9 = v8;
    v10 = sub_225CCE954();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v5, 1, 1, v10);
    LODWORD(v10) = (*(v11 + 48))(v5, 1, v10);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v10)
    {
      v12 = 108;
    }

    else
    {
      v12 = 23;
    }

    v13 = sub_225B2C374(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v13;
    sub_225B2C4A0(v7, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v24);

    v15 = v24;
    v16 = sub_225B29AA0(0, 1, 1, v6);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_225B29AA0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[56 * v18];
    *(v19 + 4) = 0xD000000000000026;
    *(v19 + 5) = 0x8000000225D1C350;
    v20 = v23;
    *(v19 + 6) = 0xD000000000000020;
    *(v19 + 7) = v20;
    v21 = v22;
    *(v19 + 8) = 0xD000000000000017;
    *(v19 + 9) = v21;
    *(v19 + 10) = 160;
    *v9 = v12;
    *(v9 + 8) = v16;
    *(v9 + 16) = 0xD000000000000026;
    *(v9 + 24) = 0x8000000225D1C350;
    *(v9 + 32) = v15;
    *(v9 + 40) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall JWSSignedJSON.setSalt(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v1[17] = countAndFlagsBits;
  v1[18] = object;
  v4 = v1[12];
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    v1[12] = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_225B29BC8(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_225B29BC8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 1953259891;
  *(v7 + 5) = 0xE400000000000000;
  v1[12] = v4;
}

uint64_t sub_225AEF938(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v127 - v5;
  v6 = sub_225CCE4D4();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x28223BE20](v8);
  v135 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCC9A4();
  v140 = *(v10 - 8);
  v141 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v17 = UTCTimestamp(_:)();
  v19 = v18;
  (*(v14 + 8))(v16, v13);

  *(v2 + 120) = v17;
  *(v2 + 128) = v19;
  v20 = *(v2 + 96);
  if (!v20)
  {
    v20 = MEMORY[0x277D84F90];
    *(v2 + 96) = MEMORY[0x277D84F90];
  }

  v21 = a1[2];
  v139 = a1[3];
  v22 = a1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_225B29BC8(0, *(v20 + 2) + 1, 1, v20);
  }

  v25 = *(v20 + 2);
  v24 = *(v20 + 3);
  if (v25 >= v24 >> 1)
  {
    v20 = sub_225B29BC8((v24 > 1), v25 + 1, 1, v20);
  }

  *(v20 + 2) = v25 + 1;
  v26 = &v20[16 * v25];
  *(v26 + 4) = 0x64657461657263;
  *(v26 + 5) = 0xE700000000000000;
  *(v2 + 96) = v20;
  sub_225CCC9E4();
  swift_allocObject();
  v27 = sub_225CCC9D4();
  *v12 = 0x7974696E69666E49;
  v12[1] = 0xE800000000000000;
  v12[2] = 0x74696E69666E492DLL;
  v12[3] = 0xE900000000000079;
  v12[4] = 5136718;
  v12[5] = 0xE300000000000000;
  (*(v140 + 104))(v12, *MEMORY[0x277CC8788], v141);
  sub_225CCC9B4();
  v28 = *(v2 + 88);
  v29 = *(v2 + 120);
  v162[2] = *(v2 + 104);
  v162[3] = v29;
  v162[4] = *(v2 + 136);
  v162[0] = *(v2 + 72);
  v162[1] = v28;
  v30 = *(v2 + 88);
  v31 = *(v2 + 120);
  v159 = *(v2 + 104);
  v160 = v31;
  v161 = *(v2 + 136);
  v157 = *(v2 + 72);
  v158 = v30;
  v32 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, v21, v139, v22);
  v141 = v21;
  v33 = v32;
  v34 = *(v32 - 8);
  (*(v34 + 16))(&v152, v162, v32);
  swift_getWitnessTable();
  v35 = v142;
  v36 = sub_225CCC9C4();
  if (!v35)
  {
    v38 = v36;
    v39 = v37;
    v154 = v159;
    v155 = v160;
    v156 = v161;
    v152 = v157;
    v153 = v158;
    (*(v34 + 8))(&v152, v33);
    v40 = sub_225CCCF84();
    v139 = v39;
    v140 = v27;
    v145 = v40;
    v146 = v41;
    *&v143[0] = 43;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 45;
    v150 = 0xE100000000000000;
    sub_2259D8654();
    v142 = v22;
    v42 = sub_225CCF064();
    v130 = v38;
    v44 = v43;

    v145 = v42;
    v146 = v44;
    *&v143[0] = 47;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 95;
    v150 = 0xE100000000000000;
    v45 = sub_225CCF064();
    v47 = v46;

    v145 = v45;
    v146 = v47;
    *&v143[0] = 61;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 0;
    v150 = 0xE000000000000000;
    v48 = sub_225CCF064();
    v50 = v49;

    *v2 = v48;
    *(v2 + 8) = v50;
    v51 = sub_225CCC9C4();
    v87 = v86;
    v129 = v48;
    v134 = v50;
    v142 = 0;
    v88 = v51;
    v145 = sub_225CCCF84();
    v146 = v89;
    *&v143[0] = 43;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 45;
    v150 = 0xE100000000000000;
    v90 = sub_225CCF064();
    v141 = v87;
    v91 = v88;
    v93 = v92;

    v145 = v90;
    v146 = v93;
    *&v143[0] = 47;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 95;
    v150 = 0xE100000000000000;
    v94 = sub_225CCF064();
    v96 = v95;

    v145 = v94;
    v146 = v96;
    *&v143[0] = 61;
    *(&v143[0] + 1) = 0xE100000000000000;
    v149 = 0;
    v150 = 0xE000000000000000;
    v97 = sub_225CCF064();
    v99 = v98;

    v127 = v99;
    v128 = v97;
    *(v2 + 16) = v97;
    *(v2 + 24) = v99;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v100 = off_28105B918;
    v101 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v102 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v102));
    v104 = v135;
    v103 = v136;
    v105 = v137;
    v136[2](v135, &v100[v101], v137);
    os_unfair_lock_unlock(&v100[v102]);
    v106 = v141;
    sub_2259CB710(v91, v141);
    v107 = sub_225CCD934();
    v108 = sub_225CCED04();
    sub_2259BEF00(v91, v106);
    v109 = os_log_type_enabled(v107, v108);
    v138 = v91;
    if (!v109)
    {

      (v103[1])(v104, v105);
      v119 = v134;
      v120 = v129;
LABEL_39:
      v145 = v120;
      v146 = v119;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);

      MEMORY[0x22AA6CE70](v128, v127);

      v126 = v131;
      sub_225CCE4B4();
      v59 = sub_225CCE484();

      sub_2259BEF00(v130, v139);

      sub_2259BEF00(v138, v141);
      (*(v132 + 8))(v126, v133);
      return v59;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v148 = v111;
    *v110 = 136315138;
    sub_2259CB710(v91, v106);
    v112 = v142;
    v113 = sub_2259D7EC8(v91, v106);
    v142 = v112;
    if (v114)
    {
      v115 = v113;
      v116 = v114;
      v117 = v91;
      v118 = v106;
    }

    else
    {
      v149 = v91;
      v150 = v106;
      sub_2259CB710(v91, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC38, &qword_225CE69D0);
      if (swift_dynamicCast())
      {
        sub_2259D8B6C(v143, &v145);
        __swift_project_boxed_opaque_existential_1(&v145, v147);
        if (sub_225CCF5A4())
        {
          sub_2259BEF00(v138, v141);
          __swift_project_boxed_opaque_existential_1(&v145, v147);
          v121 = v142;
          sub_225CCF594();
          v142 = v121;
          v116 = *(&v143[0] + 1);
          v115 = *&v143[0];
          __swift_destroy_boxed_opaque_existential_0(&v145);
LABEL_38:
          v119 = v134;
          v120 = v129;
          v125 = sub_2259BE198(v115, v116, &v148);

          *(v110 + 4) = v125;
          _os_log_impl(&dword_2259A7000, v107, v108, "jws signed payload is %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          MEMORY[0x22AA6F950](v111, -1, -1);
          MEMORY[0x22AA6F950](v110, -1, -1);

          (v136[1])(v135, v137);
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_0(&v145);
      }

      else
      {
        v144 = 0;
        memset(v143, 0, sizeof(v143));
        sub_2259CB640(v143, &qword_27D73AC40, &qword_225CD4180);
      }

      v122 = v138;
      v123 = v141;
      v115 = sub_2259D6F7C(v138, v141);
      v116 = v124;
      v117 = v122;
      v118 = v123;
    }

    sub_2259BEF00(v117, v118);
    goto LABEL_38;
  }

  v154 = v159;
  v155 = v160;
  v156 = v161;
  v152 = v157;
  v153 = v158;
  (*(v34 + 8))(&v152, v33);

  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D1C490);
  swift_getErrorValue();
  sub_225CCF904();
  v141 = *(&v157 + 1);
  v52 = v157;
  v53 = "ed to hash the public key";
  v54 = v35;
  v140 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v142 = swift_allocError();
  v56 = v55;
  swift_getErrorValue();
  v57 = v151;
  v58 = v35;
  sub_225B21FAC(v57, &v157);

  v59 = *(&v157 + 1);
  if (*(&v157 + 1))
  {
    v138 = v158;
    v139 = v157;
    v136 = *(&v159 + 1);
    v60 = v159;
    v137 = *(&v158 + 1);
    v61 = v52;
  }

  else
  {
    v135 = "ed to hash the public key";
    *&v157 = v35;
    v62 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v63 = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v65 = [v63 code];
      v66 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v66;
      *(inited + 40) = v65;
      v60 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v67 = v35;
      v137 = 0;
      v138 = 0;
      v59 = MEMORY[0x277D84F90];
      v139 = 121;
      v136 = v35;
      v61 = v52;
    }

    else
    {
      *&v157 = v35;
      v68 = v35;
      v69 = sub_225CCE954();
      v70 = v134;
      v71 = swift_dynamicCast();
      v72 = *(v69 - 8);
      (*(v72 + 56))(v70, v71 ^ 1u, 1, v69);
      LODWORD(v72) = (*(v72 + 48))(v70, 1, v69);
      sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
      if (v72)
      {
        v73 = 121;
      }

      else
      {
        v73 = 23;
      }

      v139 = v73;
      v74 = v141;

      v59 = MEMORY[0x277D84F90];
      v60 = sub_225B2C374(MEMORY[0x277D84F90]);
      v75 = v35;
      v61 = v52;
      v137 = v74;
      v138 = v52;
      v136 = v35;
    }

    v53 = v135;
  }

  v76 = v53 | 0x8000000000000000;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  *&v157 = v60;
  sub_225B2C4A0(v140, sub_225B2AC40, 0, v77, &v157);

  v78 = v157;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_225B29AA0(0, *(v59 + 16) + 1, 1, v59);
  }

  v80 = *(v59 + 16);
  v79 = *(v59 + 24);
  if (v80 >= v79 >> 1)
  {
    v59 = sub_225B29AA0((v79 > 1), v80 + 1, 1, v59);
  }

  *(v59 + 16) = v80 + 1;
  v81 = (v59 + 56 * v80);
  v82 = v141;
  v81[4] = v61;
  v81[5] = v82;
  v81[6] = 0xD000000000000020;
  v81[7] = v76;
  v81[8] = 0x5365426F54746567;
  v81[9] = 0xEF292864656E6769;
  v81[10] = 209;
  v83 = v138;
  *v56 = v139;
  *(v56 + 8) = v59;
  *(v56 + 16) = v83;
  v84 = v136;
  *(v56 + 24) = v137;
  *(v56 + 32) = v78;
  *(v56 + 40) = v84;
  swift_willThrow();

  return v59;
}

void JWSSignedJSON.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v119 = a1;
  v124 = sub_225CCF324();
  v117 = *(v124 - 1);
  v5 = MEMORY[0x28223BE20](v124);
  v116 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v123 = v110 - v7;
  v8 = a2[2];
  v9 = a2[4];
  v118 = a2[3];
  type metadata accessor for JWSSignedJSON.CodingKeys(255, v8, v118, v9);
  swift_getWitnessTable();
  v10 = sub_225CCF7F4();
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x28223BE20](v10);
  v120 = v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v18 = v110 - v17;
  v19 = v3[3];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = *v3;
  v22 = v3[1];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v3[4];
  v25 = v3[5];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v113 = v3[2];
    v114 = v21;
    v110[0] = v25;
    v110[1] = v24;
    v111 = v16;
    v112 = v15;
    v27 = v119[3];
    v115 = v119[4];
    __swift_project_boxed_opaque_existential_1(v119, v27);
    v28 = v120;
    sub_225CCFCE4();
    v29 = v3[8];
    v128 = *(v3 + 3);
    v129 = v29;
    LOBYTE(v134) = 0;
    type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader(0, v8, v118, v9);

    swift_getWitnessTable();
    v30 = v122;
    v31 = v125;
    sub_225CCF7E4();
    if (v31)
    {

      (*(v121 + 8))(v28, v30);
      v32 = v123;
      v134 = v31;
      v47 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      v48 = v124;
      if (swift_dynamicCast())
      {

        v50 = v116;
        v49 = v117;
        (*(v117 + 32))(v116, v32, v48);
        v123 = 0x8000000225D1C3E0;
        v51 = swift_allocError();
        (*(v49 + 16))(v52, v50, v48);
        v121 = "ed to hash the public key";
        v122 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v125 = swift_allocError();
        v54 = v53;
        swift_getErrorValue();
        v55 = v127;
        v56 = v51;
        sub_225B21FAC(v55, &v128);

        v57 = *(&v128 + 1);
        if (*(&v128 + 1))
        {
          v119 = v129;
          v120 = v128;
          v118 = v130;
          v58 = v131;
          v59 = v132;
        }

        else
        {
          *&v128 = v51;
          v68 = v51;
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v69 = v126;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v71 = [v69 code];
            v72 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v72;
            *(inited + 40) = v71;
            v58 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

            v73 = v51;
            v118 = 0;
            v119 = 0;
            v57 = MEMORY[0x277D84F90];
            v120 = 121;
          }

          else
          {
            *&v128 = v51;
            v80 = v51;
            v81 = sub_225CCE954();
            v82 = v112;
            v83 = swift_dynamicCast();
            v84 = *(v81 - 8);
            (*(v84 + 56))(v82, v83 ^ 1u, 1, v81);
            LODWORD(v81) = (*(v84 + 48))(v82, 1, v81);
            sub_2259CB640(v82, &unk_27D73B050, &unk_225CD3AD0);
            if (v81)
            {
              v85 = 121;
            }

            else
            {
              v85 = 23;
            }

            v120 = v85;
            v57 = MEMORY[0x277D84F90];
            v58 = sub_225B2C374(MEMORY[0x277D84F90]);
            v86 = v51;
            v118 = v123;
            v119 = 0xD000000000000012;
          }

          v59 = v51;
        }

        v87 = v121 | 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v128 = v58;
        sub_225B2C4A0(v122, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v128);

        v89 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_225B29AA0(0, *(v57 + 2) + 1, 1, v57);
        }

        v91 = *(v57 + 2);
        v90 = *(v57 + 3);
        if (v91 >= v90 >> 1)
        {
          v57 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v57);
        }

        *(v57 + 2) = v91 + 1;
        v92 = &v57[56 * v91];
        v93 = v123;
        *(v92 + 4) = 0xD000000000000012;
        *(v92 + 5) = v93;
        *(v92 + 6) = 0xD000000000000020;
        *(v92 + 7) = v87;
        *(v92 + 8) = 0x742865646F636E65;
        *(v92 + 9) = 0xEB00000000293A6FLL;
        *(v92 + 10) = 243;
        v94 = v119;
        *v54 = v120;
        *(v54 + 8) = v57;
        *(v54 + 16) = v94;
        *(v54 + 24) = v118;
        *(v54 + 32) = v89;
        *(v54 + 40) = v59;
        swift_willThrow();
        (*(v117 + 8))(v116, v124);
      }

      else
      {

        v124 = 0x8000000225D1C3A0;
        v122 = "ed to hash the public key";
        v60 = v31;
        v123 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v125 = swift_allocError();
        v62 = v61;
        swift_getErrorValue();
        v63 = v133;
        v64 = v31;
        sub_225B21FAC(v63, &v128);

        v65 = *(&v128 + 1);
        if (*(&v128 + 1))
        {
          v120 = v129;
          v121 = v128;
          v119 = v130;
          v66 = v131;
          v67 = v132;
        }

        else
        {
          *&v128 = v31;
          v74 = v31;
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v75 = v134;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            v76 = swift_initStackObject();
            *(v76 + 16) = xmmword_225CD30F0;
            *(v76 + 32) = 20;
            v77 = [v75 code];
            v78 = MEMORY[0x277D83BF8];
            *(v76 + 64) = MEMORY[0x277D83B88];
            *(v76 + 72) = v78;
            *(v76 + 40) = v77;
            v66 = sub_225B2C374(v76);
            swift_setDeallocating();
            sub_2259CB640(v76 + 32, &qword_27D73B060, &unk_225CD3AE0);

            v79 = v31;
            v120 = 0;
            v121 = 0;
            v119 = 0;
            v65 = MEMORY[0x277D84F90];
          }

          else
          {
            *&v128 = v31;
            v95 = v31;
            v96 = sub_225CCE954();
            v97 = v111;
            v98 = swift_dynamicCast();
            v99 = *(v96 - 8);
            (*(v99 + 56))(v97, v98 ^ 1u, 1, v96);
            LODWORD(v96) = (*(v99 + 48))(v97, 1, v96);
            sub_2259CB640(v97, &unk_27D73B050, &unk_225CD3AD0);
            if (v96)
            {
              v100 = 0;
            }

            else
            {
              v100 = 23;
            }

            v121 = v100;
            v65 = MEMORY[0x277D84F90];
            v66 = sub_225B2C374(MEMORY[0x277D84F90]);
            v101 = v31;
            v119 = v124;
            v120 = 0xD000000000000037;
          }

          v67 = v31;
        }

        v102 = v122 | 0x8000000000000000;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        *&v128 = v66;
        sub_225B2C4A0(v123, sub_225B2AC40, 0, v103, &v128);

        v104 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_225B29AA0(0, *(v65 + 2) + 1, 1, v65);
        }

        v106 = *(v65 + 2);
        v105 = *(v65 + 3);
        if (v106 >= v105 >> 1)
        {
          v65 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v65);
        }

        *(v65 + 2) = v106 + 1;
        v107 = &v65[56 * v106];
        v108 = v124;
        *(v107 + 4) = 0xD000000000000037;
        *(v107 + 5) = v108;
        *(v107 + 6) = 0xD000000000000020;
        *(v107 + 7) = v102;
        *(v107 + 8) = 0x742865646F636E65;
        *(v107 + 9) = 0xEB00000000293A6FLL;
        *(v107 + 10) = 246;
        v109 = v120;
        *v62 = v121;
        *(v62 + 8) = v65;
        *(v62 + 16) = v109;
        *(v62 + 24) = v119;
        *(v62 + 32) = v104;
        *(v62 + 40) = v67;
        swift_willThrow();
      }
    }

    else
    {

      LOBYTE(v128) = 1;
      sub_225CCF784();
      LOBYTE(v128) = 2;
      sub_225CCF784();
      LOBYTE(v128) = 3;
      sub_225CCF784();
      (*(v121 + 8))(v28, v30);
    }
  }

  else
  {
LABEL_12:
    v124 = 0x8000000225D1BF90;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v18, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v18, 1, v37);
    sub_2259CB640(v18, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 108;
    }

    else
    {
      v39 = 23;
    }

    v40 = sub_225B2C374(v33);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, v41, &v128);

    v42 = v128;
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = 0xD00000000000002DLL;
    *(v46 + 5) = 0x8000000225D1C400;
    *(v46 + 6) = 0xD000000000000020;
    *(v46 + 7) = v124;
    *(v46 + 8) = 0x742865646F636E65;
    *(v46 + 9) = 0xEB00000000293A6FLL;
    *(v46 + 10) = 233;
    *v36 = v39;
    *(v36 + 8) = v43;
    *(v36 + 16) = 0xD00000000000002DLL;
    *(v36 + 24) = 0x8000000225D1C400;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    swift_willThrow();
  }
}

void sub_225AF18AC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71[-v6];
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v5);
  v78 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = a1;
  v76 = *(a1 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_225CCD954();
  v14 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v71[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105AED8 != -1)
  {
    swift_once();
  }

  v16 = *(off_28105AEE0 + 2);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  v18 = *(v17 + 16);
  v77 = v8;
  if (v18 && (v19 = sub_2259F1900(v8), (v20 & 1) != 0))
  {
    v21 = *(v17 + 56) + 24 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    sub_2259F6128(*v21, v23, *(v21 + 16));
    os_unfair_lock_unlock((v16 + 24));
    if (v24 != 255)
    {
      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 16) = v24;
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock((v16 + 24));
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v75 = v7;
  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  v28 = v14;
  v29 = *(v14 + 16);
  v31 = v79;
  v30 = v80;
  v29(v79, &v25[v26], v80);
  os_unfair_lock_unlock(&v25[v27]);
  v32 = v76;
  v33 = v81;
  (*(v76 + 16))(v13, v84, v81);
  v34 = sub_225CCD934();
  v35 = sub_225CCED04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v72 = v35;
    v37 = v13;
    v38 = v36;
    v73 = v36;
    v74 = swift_slowAlloc();
    v82 = v74;
    *v38 = 136446210;
    v40 = v77;
    v39 = v78;
    (*(v9 + 16))(v78, &v37[*(v33 + 60)], v77);
    swift_getDynamicType();
    (*(v9 + 8))(v39, v40);
    v41 = sub_225CCFD24();
    v42 = v32;
    v43 = v28;
    v45 = v44;
    (*(v42 + 8))(v37, v81);
    v46 = v41;
    v33 = v81;
    v47 = sub_2259BE198(v46, v45, &v82);

    v48 = v73;
    *(v73 + 4) = v47;
    v49 = v48;
    _os_log_impl(&dword_2259A7000, v34, v72, "No cert type registered for JWSSignedJSON %{public}s", v48, 0xCu);
    v50 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x22AA6F950](v50, -1, -1);
    MEMORY[0x22AA6F950](v49, -1, -1);

    (*(v43 + 8))(v79, v80);
  }

  else
  {

    (*(v32 + 8))(v13, v33);
    (*(v28 + 8))(v31, v30);
    v40 = v77;
    v39 = v78;
  }

  v82 = 0;
  v83 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D1C430);
  (*(v9 + 16))(v39, v84 + *(v33 + 60), v40);
  swift_getDynamicType();
  (*(v9 + 8))(v39, v40);
  v51 = sub_225CCFD24();
  MEMORY[0x22AA6CE70](v51);

  v53 = v82;
  v52 = v83;
  v84 = 0x8000000225D1BF90;
  v81 = 0x8000000225D1C470;
  v54 = MEMORY[0x277D84F90];
  v55 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v57 = v56;
  v58 = sub_225CCE954();
  v59 = *(v58 - 8);
  v60 = v75;
  (*(v59 + 56))(v75, 1, 1, v58);
  LODWORD(v58) = (*(v59 + 48))(v60, 1, v58);
  sub_2259CB640(v60, &unk_27D73B050, &unk_225CD3AD0);
  if (v58)
  {
    v61 = 108;
  }

  else
  {
    v61 = 23;
  }

  v62 = sub_225B2C374(v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v62;
  sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

  v64 = v82;
  v65 = sub_225B29AA0(0, 1, 1, v54);
  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[56 * v67];
  *(v68 + 4) = v53;
  *(v68 + 5) = v52;
  v69 = v84;
  *(v68 + 6) = 0xD000000000000020;
  *(v68 + 7) = v69;
  v70 = v81;
  *(v68 + 8) = 0xD000000000000015;
  *(v68 + 9) = v70;
  *(v68 + 10) = 316;
  *v57 = v61;
  *(v57 + 8) = v65;
  *(v57 + 16) = v53;
  *(v57 + 24) = v52;
  *(v57 + 32) = v64;
  *(v57 + 40) = 0;
  swift_willThrow();
}

unint64_t sub_225AF20F8()
{
  result = qword_27D73D4F0[0];
  if (!qword_27D73D4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73D4F0);
  }

  return result;
}

unint64_t sub_225AF217C()
{
  result = qword_28105B6D8;
  if (!qword_28105B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6D8);
  }

  return result;
}

uint64_t sub_225AF22D8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader(319, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(319, v1, v2, v3);
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_225AF23B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 152) & ~v6) + v7;
  v11 = 8 * (((v6 - 104) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 80) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_225AF255C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 152) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 104) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 104) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v9 + 80) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_225AF27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225AF2808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_225AF2864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_225AF28CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225AF2908(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_225AF2964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t UTCTimestamp(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8, &qword_225CDC6E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_225CCD1C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_225CCE444();
  [v7 setDateFormat_];

  sub_225CCD134();
  v9 = sub_225CCD154();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_225CCD2A4();
  v10 = sub_225CCD2D4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_225CCD2C4();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  v13 = sub_225CCD034();
  v14 = [v7 stringFromDate_];

  v15 = sub_225CCE474();
  return v15;
}

CoreIDVShared::ISO18013Version __swiftcall ISO18013Version.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  result = ISO18013Version.init(_:)(stringLiteral);
  if (v6 == 1)
  {
    v4 = 0uLL;
  }

  else
  {
    v4 = v5;
  }

  *v2 = v4;
  return result;
}

CoreIDVShared::ISO18013Version_optional __swiftcall ISO18013Version.init(_:)(Swift::String a1)
{
  v54 = v1;
  v59 = 46;
  v60 = 0xE100000000000000;
  v57 = &v59;
  v2 = sub_225AF3824(0x7FFFFFFFFFFFFFFFLL, 1, sub_225AF3BE4, v56, a1._countAndFlagsBits, a1._object, 0x2EuLL);
  v5 = v2;
  v6 = *(v2 + 16);
  if (!v6)
  {
    v55 = MEMORY[0x277D84F90];
LABEL_77:
    v42 = *(v55 + 16);
    if (v42)
    {
      v43 = (v55 + 32);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v48 = *v43++;
        v47 = v48;
        if ((v48 & 0x8000000000000000) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2259D5304(0, v44[2] + 1, 1);
            v44 = v59;
          }

          v46 = v44[2];
          v45 = v44[3];
          if (v46 >= v45 >> 1)
          {
            sub_2259D5304((v45 > 1), v46 + 1, 1);
            v44 = v59;
          }

          v44[2] = v46 + 1;
          v44[v46 + 4] = v47;
        }

        --v42;
      }

      while (v42);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v50 = *(v5 + 16);

    if (v50 == 2 && v44[2] == 2)
    {
      v52 = v44[4];
      v53 = v44[5];

      *v54 = v52;
      *(v54 + 8) = v53;
      *(v54 + 16) = 0;
    }

    else
    {

      *v54 = 0;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
    }

    goto LABEL_98;
  }

  v7 = 0;
  v55 = MEMORY[0x277D84F90];
  while (v7 < *(v5 + 16))
  {
    v8 = (v5 + 32 + 32 * v7++);
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];

    v2 = MEMORY[0x22AA6CD90](v12, v11, v10, v9);
    v13 = HIBYTE(v3) & 0xF;
    v14 = v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v15 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      goto LABEL_66;
    }

    if ((v3 & 0x1000000000000000) == 0)
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v59 = v2;
        v60 = v3 & 0xFFFFFFFFFFFFFFLL;
        if (v2 == 43)
        {
          if ((v3 & 0xF00000000000000) == 0)
          {
            goto LABEL_94;
          }

          v14 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            v27 = &v59 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v2 == 45)
        {
          if ((v3 & 0xF00000000000000) == 0)
          {
            goto LABEL_96;
          }

          v14 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            v21 = &v59 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if ((v3 & 0xF00000000000000) != 0)
        {
          v17 = 0;
          v32 = &v59;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            v32 = (v32 + 1);
            if (!--v13)
            {
              goto LABEL_63;
            }
          }
        }
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v2 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v40 = v3;
          v2 = sub_225CCF354();
          v14 = v41;
          v3 = v40;
        }

        v16 = *v2;
        if (v16 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_97;
          }

          if (--v14)
          {
            v17 = 0;
            if (!v2)
            {
              goto LABEL_63;
            }

            v24 = (v2 + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v16 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_95;
          }

          if (--v14)
          {
            v17 = 0;
            if (v2)
            {
              v18 = (v2 + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_64;
                }

                v20 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  goto LABEL_64;
                }

                v17 = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  goto LABEL_64;
                }

                ++v18;
                if (!--v14)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_63:
            LOBYTE(v14) = 0;
LABEL_65:
            v58 = v14;
            v35 = v14;

            if ((v35 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_64;
          }

          v17 = 0;
          if (!v2)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v30 = *v2 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v2;
            if (!--v14)
            {
              goto LABEL_65;
            }
          }
        }
      }

LABEL_64:
      v17 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_65;
    }

    v58 = 0;
    v17 = sub_2259F3F08(v2, v3, 10);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
LABEL_70:
      v2 = swift_isUniquelyReferenced_nonNull_native();
      if ((v2 & 1) == 0)
      {
        v2 = sub_225B29CD4(0, *(v55 + 16) + 1, 1, v55);
        v55 = v2;
      }

      v39 = *(v55 + 16);
      v38 = *(v55 + 24);
      if (v39 >= v38 >> 1)
      {
        v2 = sub_225B29CD4((v38 > 1), v39 + 1, 1, v55);
        v55 = v2;
      }

      *(v55 + 16) = v39 + 1;
      *(v55 + 8 * v39 + 32) = v17;
    }

LABEL_66:
    if (v7 == v6)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result.value.minor = v3;
  result.value.major = v2;
  result.is_nil = v4;
  return result;
}

uint64_t ISO18013Version.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5._countAndFlagsBits = sub_225CCF954();
    ISO18013Version.init(_:)(v5);
    if (v9 == 1)
    {
      sub_225CCF2D4();
      swift_allocError();
      sub_225CCF264();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      *a2 = v7;
      a2[1] = v8;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013Version.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  sub_225CCF824();
  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  __swift_mutable_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_225CCF9D4();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t ISO18013Version.description.getter()
{
  v2 = sub_225CCF824();
  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  return v2;
}

BOOL static ISO18013Version.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_225AF3724(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_225AF3744(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_225AF3764(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_225AF3784(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_225AF37D4@<X0>(Swift::String *a1@<X0>, _OWORD *a2@<X8>)
{
  result = ISO18013Version.init(_:)(*a1);
  if (v6)
  {
    v4 = 0uLL;
  }

  else
  {
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_225AF3824@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_225CCE704();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_225B29DD8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_225B29DD8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_225CCE6E4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_225CCE5E4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_225CCE5E4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_225CCE704();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_225B29DD8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_225CCE704();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_225B29DD8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_225B29DD8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_225CCE5E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AF3BE4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_225CCF934() & 1;
  }
}

unint64_t sub_225AF3C40()
{
  result = qword_27D73D578;
  if (!qword_27D73D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D578);
  }

  return result;
}

unint64_t sub_225AF3C98()
{
  result = qword_27D73D580;
  if (!qword_27D73D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D580);
  }

  return result;
}

unint64_t sub_225AF3CFC()
{
  result = qword_27D73D588;
  if (!qword_27D73D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D588);
  }

  return result;
}

uint64_t sub_225AF3D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x61645F6874726962;
  }

  if (v2)
  {
    v4 = 0xEA00000000006574;
  }

  else
  {
    v4 = 0x8000000225D0B9B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x61645F6874726962;
  }

  if (*a2)
  {
    v6 = 0x8000000225D0B9B0;
  }

  else
  {
    v6 = 0xEA00000000006574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AF3E30()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF3EBC(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AF3F34()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF3FBC@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_225AF401C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0B9B0;
  v3 = 0x61645F6874726962;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEA00000000006574;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_225AF4064()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x61645F6874726962;
  }
}

uint64_t sub_225AF40A8@<X0>(char *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_225AF410C(uint64_t a1)
{
  v2 = sub_225AF4E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AF4148(uint64_t a1)
{
  v2 = sub_225AF4E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO23220.BirthDate.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCCB74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ISO23220.BirthDate.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_225CCD0B4();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8, &qword_225CDC6E8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v41 - v6;
  v7 = sub_225CCD1E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0, &unk_225CDC6F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_225CCD284();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ISO23220.BirthDate(0);
  v21 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCCB54();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v23 = sub_225CCCB74();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_2259CB640(v16, &qword_27D73BCB0, &unk_225CDC6F0);
  }

  else
  {
    v41 = a1;
    (*(v18 + 32))(v20, v16, v17);
    sub_225CCD204();
    (*(v8 + 104))(v11, *MEMORY[0x277CC9830], v7);
    v24 = sub_225CCD1D4();
    v25 = *(v8 + 8);
    v25(v11, v7);
    v25(v13, v7);
    if (v24)
    {
      v26 = v46;
      v27 = v41;
      sub_225CCCB64();
      v28 = sub_225CCD2D4();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v26, 1, v28) == 1)
      {
        (*(v18 + 8))(v20, v17);
        sub_2259CB640(v26, &qword_27D73BCA8, &qword_225CDC6E8);
      }

      else
      {
        v31 = v43;
        _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
        v32 = sub_225CCD2B4();
        (*(v44 + 8))(v31, v45);
        (*(v18 + 8))(v20, v17);
        (*(v29 + 8))(v26, v28);
        if (!v32)
        {
          v37 = sub_225CCCB74();
          v38 = v42;
          (*(*(v37 - 8) + 32))(v42, v27, v37);
          v39 = v38;
          v40 = v48;
          sub_225AF4854(v39, v48);
          v35 = v40;
          v34 = 0;
          return (*(v21 + 56))(v35, v34, 1, v47);
        }
      }

      v33 = sub_225CCCB74();
      (*(*(v33 - 8) + 8))(v27, v33);
    }

    else
    {
      v30 = sub_225CCCB74();
      (*(*(v30 - 8) + 8))(v41, v30);
      (*(v18 + 8))(v20, v17);
    }
  }

  v34 = 1;
  v35 = v48;
  return (*(v21 + 56))(v35, v34, 1, v47);
}

uint64_t type metadata accessor for ISO23220.BirthDate(uint64_t a1)
{
  result = qword_27D73D5C0;
  if (!qword_27D73D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225AF4854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO23220.BirthDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO23220.BirthDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D590, &qword_225CE6C20);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v32 - v4;
  v40 = sub_225CCD0B4();
  v35 = *(v40 - 1);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCCB74();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D598, &qword_225CE6C28);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AF4E38();
  v15 = v41;
  sub_225CCFCA4();
  if (!v15)
  {
    v33 = v14;
    v17 = v37;
    v16 = v38;
    v41 = v8;
    v43 = 0;
    sub_225AF5D70(&qword_27D73BE48, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_225CCF6E4();
    v32 = v9;
    v18 = v17;
    v19 = v39;
    Date.utcDayRepresentation.getter(v17);
    (*(v35 + 8))(v19, v40);
    v20 = v36;
    v21 = v6;
    if ((*(v36 + 48))(v18, 1, v6) == 1)
    {
      sub_2259CB640(v18, &qword_27D73D590, &qword_225CE6C20);
      v42 = 0;
      sub_225CCF2D4();
      swift_allocError();
      sub_2259D8B24(&qword_27D73D5A8, &qword_27D73D598, &qword_225CE6C28, MEMORY[0x277D844D0]);
      v22 = v32;
      sub_225CCF284();
      swift_willThrow();
      (*(v16 + 8))(v11, v22);
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v23 = *(v20 + 32);
    v23(v41, v18, v6);
    v24 = sub_225AF5628(v11);
    v40 = v23;
    if (v24)
    {
      v25 = v33;
      v26 = v34;
      if ((v24 & 0x100) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v29 = v24;
      sub_225CCCB04();
      v24 = v29;
      v21 = v6;
      v25 = v33;
      v26 = v34;
      if ((v24 & 0x100) != 0)
      {
LABEL_6:
        v27 = v38;
        if ((v24 & 0x10000) != 0)
        {
LABEL_8:
          (*(v27 + 8))(v11, v32);
          v40(v25, v41, v21);
          sub_225AF4854(v25, v26);
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

LABEL_7:
        sub_225CCCAD4();
        v21 = v6;
        goto LABEL_8;
      }
    }

    v30 = v24;
    sub_225CCCB24();
    v31 = v30;
    v21 = v6;
    v27 = v38;
    if ((v31 & 0x10000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AF4E38()
{
  result = qword_27D73D5A0;
  if (!qword_27D73D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5A0);
  }

  return result;
}

uint64_t ISO23220.BirthDate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_225CCD0B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5B0, &qword_225CE6C30);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_225AF4E38();
  v26 = v10;
  v12 = v24[2];
  sub_225CCFCE4();
  sub_225CCCAE4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2259CB640(v4, &unk_27D73FD00, &qword_225CDC6E0);
    v13 = sub_225CCF324();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D8, &qword_225CE6040);
    v16 = sub_225CCCB74();
    v15[3] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v12, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8, &qword_225CE2718);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_225CD30F0;
    *(v18 + 56) = &type metadata for ISO23220.BirthDate.CodingKeys;
    *(v18 + 64) = v11;
    *(v18 + 32) = 0;
    sub_225CCF294();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D841A8], v13);
    swift_willThrow();
    return (*(v25 + 8))(v26, v27);
  }

  else
  {
    v20 = v25;
    (*(v6 + 32))(v8, v4, v5);
    v29 = 0;
    sub_225AF5D70(&qword_27D73BE18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v21 = v26;
    v22 = v27;
    v23 = v24[1];
    sub_225CCF7E4();
    if (!v23)
    {
      sub_225AF5C6C(v12);
      v28 = 1;
      sub_225CCF784();
    }

    (*(v6 + 8))(v8, v5);
    return (*(v20 + 8))(v21, v22);
  }
}

uint64_t ISO23220.BirthDate.hash(into:)(uint64_t a1)
{
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);

  return sub_225CCE354();
}

uint64_t ISO23220.BirthDate.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF541C()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF54A4(uint64_t a1)
{
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);

  return sub_225CCE354();
}

uint64_t sub_225AF5528()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF55B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_225CCF814() & 1;
  }
}

uint64_t sub_225AF5628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5E8, &qword_225CE6E60);
  v45 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5F0, &qword_225CE6E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5F8, &qword_225CE6E70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  LOBYTE(v47) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D598, &qword_225CE6C28);
  v16 = v46;
  result = sub_225CCF624();
  if (!v16)
  {
    v42 = v15;
    v43 = v10;
    v44 = v14;
    if (v18)
    {
      v40 = v12;
      v41 = a1;
      v19 = v18;
      v20 = result;
      v46 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D600, &qword_225CE6E78);
      v21 = v7;
      sub_225CCD814();
      sub_2259D8B24(&qword_27D73D608, &qword_27D73D5E8, &qword_225CE6E60, MEMORY[0x277D85AC0]);
      v22 = v5;
      sub_225CCD804();
      v39 = v20;
      v23 = v19;
      sub_225CCE704();
      v24 = v43;
      v25 = v46;
      sub_225CCD834();
      if (v25)
      {

        v26 = *(v45 + 8);
        v26(v22, v2);
        v26(v21, v2);
        v27 = v40;
        v28 = v11;
        (*(v40 + 56))(v24, 1, 1, v11);
        v46 = 0;
      }

      else
      {
        v46 = 0;

        v29 = *(v45 + 8);
        v29(v22, v2);
        v29(v21, v2);
        v27 = v40;
        v28 = v11;
      }

      v30 = (*(v27 + 48))(v24, 1, v28);
      v31 = v24;
      v32 = v27;
      v33 = v44;
      if (v30 == 1)
      {
        sub_2259CB640(v31, &qword_27D73D5F0, &qword_225CE6E68);
        v51 = 1;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_225CCF204();

        v47 = 0xD000000000000033;
        v48 = 0x8000000225D1C5C0;
        MEMORY[0x22AA6CE70](v39, v23);

        MEMORY[0x22AA6CE70](41, 0xE100000000000000);
        sub_225CCF2D4();
        swift_allocError();
        sub_2259D8B24(&qword_27D73D5A8, &qword_27D73D598, &qword_225CE6C28, MEMORY[0x277D844D0]);
        sub_225CCF284();

        return swift_willThrow();
      }

      else
      {

        (*(v32 + 32))(v33, v31, v28);
        swift_getKeyPath();
        sub_225CCD854();

        v34 = sub_225AF55B0(v47, v48, v49, v50, 808464432, 0xE400000000000000);

        swift_getKeyPath();
        sub_225CCD854();

        v35 = sub_225AF55B0(v47, v48, v49, v50, 12336, 0xE200000000000000);

        swift_getKeyPath();
        sub_225CCD854();

        v36 = sub_225AF55B0(v47, v48, v49, v50, 12336, 0xE200000000000000);

        (*(v32 + 8))(v33, v28);
        if (v36)
        {
          v37 = 0x10000;
        }

        else
        {
          v37 = 0;
        }

        if (v35)
        {
          v38 = 256;
        }

        else
        {
          v38 = 0;
        }

        return v38 & 0xFFFFFFFE | v34 & 1 | v37;
      }
    }

    else
    {
      return 65793;
    }
  }

  return result;
}

uint64_t sub_225AF5C6C(uint64_t a1)
{
  sub_225CCCAF4();
  if (v1)
  {
    v2 = 825307441;
  }

  else
  {
    v2 = 808464432;
  }

  MEMORY[0x22AA6CE70](v2, 0xE400000000000000);

  sub_225CCCB14();
  if (v3)
  {
    v4 = 12593;
  }

  else
  {
    v4 = 12336;
  }

  MEMORY[0x22AA6CE70](v4, 0xE200000000000000);

  sub_225CCCAC4();
  if (v5)
  {
    v6 = 12593;
  }

  else
  {
    v6 = 12336;
  }

  MEMORY[0x22AA6CE70](v6, 0xE200000000000000);

  return 0;
}

uint64_t sub_225AF5D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225AF5DF0(uint64_t a1)
{
  result = sub_225CCCB74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225AF5E70()
{
  result = qword_27D73D5D0;
  if (!qword_27D73D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5D0);
  }

  return result;
}

unint64_t sub_225AF5EC8()
{
  result = qword_27D73D5D8;
  if (!qword_27D73D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5D8);
  }

  return result;
}

unint64_t sub_225AF5F20()
{
  result = qword_27D73D5E0;
  if (!qword_27D73D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5E0);
  }

  return result;
}

CoreIDVShared::ProvisioningFailureReson_optional __swiftcall ProvisioningFailureReson.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProvisioningFailureReson.rawValue.getter()
{
  v1 = 0xD000000000000018;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  if (v2 != 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_225AF606C()
{
  result = qword_27D73D610;
  if (!qword_27D73D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D610);
  }

  return result;
}

uint64_t sub_225AF60C0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF6190(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AF624C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AF6324(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = *v1;
  v4 = "approximate_mask";
  v5 = "DOB_PII_HASH_MISMATCH";
  v6 = "EXPIRY_PII_HASH_MISMATCH";
  v7 = 0xD00000000000001DLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000001CLL;
    v6 = "NATIONALITY_PII_HASH_MISMATCH";
  }

  if (v3 == 2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v2 = 0xD000000000000015;
    v4 = "HOLDER_PII_HASH_MISMATCH";
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v7;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t AlertConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AlertConfiguration.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AlertConfiguration.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AlertConfiguration.defaultButtonTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AlertConfiguration.defaultButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AlertConfiguration.alternateButtonTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AlertConfiguration.alternateButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall AlertConfiguration.init(title:message:defaultButtonTitle:alternateButtonTitle:)(CoreIDVShared::AlertConfiguration *__return_ptr retstr, Swift::String title, Swift::String message, Swift::String defaultButtonTitle, Swift::String_optional alternateButtonTitle)
{
  retstr->title = title;
  retstr->message = message;
  retstr->defaultButtonTitle = defaultButtonTitle;
  retstr->alternateButtonTitle = alternateButtonTitle;
}

void sub_225AF65F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - v4;
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[6];
  v12 = v0[7];
  v40 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D640, &qword_225CE7158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  v14 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = inited;
  v16 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v14;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  v17 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 104) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v18 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 144) = v16;
  *(inited + 112) = v18;
  *(inited + 120) = v10;
  *(inited + 128) = v9;

  v19 = v18;
  v20 = v17;
  v21 = v14;
  v22 = sub_225B2E194(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D648, &unk_225CE7160);
  swift_arrayDestroy();
  v47 = v22;
  v23 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v12)
  {
    v46 = v16;
    *&v45 = v40;
    *(&v45 + 1) = v12;
    sub_2259B9624(&v45, v44);
    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v22;
    sub_225A047EC(v44, v24, isUniquelyReferenced_nonNull_native);

    v47 = v43;
  }

  else
  {
    v26 = v23;
    sub_225B2ADD0(v26, &v45);

    sub_2259CB640(&v45, &qword_27D73DD90, &unk_225CD4950);
  }

  v27 = v42;
  if (!*MEMORY[0x277CBF208])
  {
    goto LABEL_22;
  }

  v28 = qword_28105B8B8;
  v29 = *MEMORY[0x277CBF208];
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = [qword_28105E338 resourceURL];
  v31 = v41;
  if (v30)
  {
    v32 = v30;
    sub_225CCCE34();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_225CCCEA4();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v27, v33, 1, v34);
  sub_2259D88EC(v27, v31, &unk_27D73E090, &qword_225CD8ED0);
  if ((*(v35 + 48))(v31, 1, v34) == 1)
  {
    sub_2259CB640(v31, &unk_27D73E090, &qword_225CD8ED0);
    sub_225B2ADD0(v29, &v45);

    sub_2259CB640(&v45, &qword_27D73DD90, &unk_225CD4950);
  }

  else
  {
    v46 = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (*(v35 + 32))(boxed_opaque_existential_1, v31, v34);
    sub_2259B9624(&v45, v44);
    v37 = v47;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v37;
    sub_225A047EC(v44, v29, v38);

    v47 = v43;
  }

  type metadata accessor for CFString(0);
  sub_225AF91CC(&qword_27D73A9C8, type metadata accessor for CFString, &unk_225CD3A8C);
  sub_225CCE2B4();
}

uint64_t AlertPresentationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_225AF6B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620, &unk_225CE6FD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628, &qword_225CE6FF8);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D73D650, &qword_225CE7170);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_2259D88EC(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], &qword_27D73D620, &unk_225CE6FD0);
  off_27D73D618 = v4;
  return result;
}

uint64_t AlertPresenter.present(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620, &unk_225CE6FD0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AF6DD4, 0, 0);
}

uint64_t sub_225AF6DD4(uint64_t a1, uint64_t a2)
{
  v40 = v2;
  if (qword_27D739F80 != -1)
  {
    swift_once();
  }

  v3 = off_27D73D618;
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_225AF7558;
  *(v5 + 24) = KeyPath;
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v3[v6]);
  sub_225AF7560();
  os_unfair_lock_unlock(&v3[v6]);
  v7 = v2[5];

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628, &qword_225CE6FF8);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_2259CB640(v7, &qword_27D73D620, &unk_225CE6FD0);
  if (v9 == 1)
  {
    v10 = v2[3];
    v11 = v10[1];
    v39[0] = *v10;
    v39[1] = v11;
    v12 = v10[3];
    v39[2] = v10[2];
    v39[3] = v12;
    sub_225AF65F8();
    v14 = v13;
    v15 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v13);
    v2[6] = v15;

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v15, sub_225AF7590, 0);
    v2[7] = RunLoopSource;
    v17 = swift_task_alloc();
    v2[8] = v17;
    *(v17 + 16) = RunLoopSource;
    v18 = swift_task_alloc();
    v2[9] = v18;
    *(v18 + 16) = v15;
    v19 = swift_task_alloc();
    v2[10] = v19;
    *v19 = v2;
    v19[1] = sub_225AF731C;
    v20 = v2[2];

    return MEMORY[0x282200830](v20, &unk_225CE7008, v17, sub_225AF7A8C, v18, 0, 0, &type metadata for AlertPresentationOutcome);
  }

  else
  {
    v21 = v2[4];
    v22 = MEMORY[0x277D84F90];
    v23 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v25 = v24;
    v26 = sub_225CCE954();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v21, 1, 1, v26);
    v28 = (*(v27 + 48))(v21, 1, v26);
    sub_2259CB640(v21, &unk_27D73B050, &unk_225CD3AD0);
    v29 = sub_225B2C374(v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = v29;
    sub_225B2C4A0(v23, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v39);

    v31 = *&v39[0];
    v32 = sub_225B29AA0(0, 1, 1, v22);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[56 * v34];
    *(v35 + 4) = 0xD00000000000004DLL;
    *(v35 + 5) = 0x8000000225D1C600;
    *(v35 + 6) = 0xD000000000000022;
    *(v35 + 7) = 0x8000000225D1C650;
    strcpy(v35 + 64, "present(with:)");
    v35[79] = -18;
    *(v35 + 10) = 74;
    if (v28)
    {
      v36 = 107;
    }

    else
    {
      v36 = 23;
    }

    *v25 = v36;
    *(v25 + 8) = v32;
    *(v25 + 16) = 0xD00000000000004DLL;
    *(v25 + 24) = 0x8000000225D1C600;
    *(v25 + 32) = v31;
    *(v25 + 40) = 0;
    swift_willThrow();

    v37 = v2[1];

    return v37();
  }
}

uint64_t sub_225AF731C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225AF74C4;
  }

  else
  {

    v2 = sub_225AF7440;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AF7440()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225AF74C4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225AF7598(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_225AF75B8, 0, 0);
}

uint64_t sub_225AF75B8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_225AF76B0;
  v4 = v0[2];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x28746E6573657270, 0xEE00293A68746977, sub_225AF8A14, v2, &type metadata for AlertPresentationOutcome);
}

uint64_t sub_225AF76B0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2259FE0C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225AF77EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return sub_225AF7598(a1, v4);
}

void sub_225AF788C(uint64_t a1, __CFRunLoopSource *a2)
{
  if (qword_27D739F80 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = off_27D73D618;
  MEMORY[0x28223BE20](a1);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v3[v5]);
  sub_225AF8A1C(&v3[v4]);
  os_unfair_lock_unlock(&v3[v5]);
  v6 = CFRunLoopGetMain();
  CFRunLoopAddSource(v6, a2, *MEMORY[0x277CBF048]);
}

uint64_t sub_225AF79BC(uint64_t a1, uint64_t a2)
{
  sub_2259CB640(a1, &qword_27D73D620, &unk_225CE6FD0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628, &qword_225CE6FF8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_225AF7A94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return AlertPresenter.present(with:)(a1, a2);
}

uint64_t static AlertConfiguration.digitalPresentmentAlertDisplayConfiguration(isFaceIDDevice:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_225CCCCD4();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE434();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v8 - 8);
  if (a1)
  {
    sub_225CCE3D4();
    if (qword_27D73A7C0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_27D7429E8);
    v10 = *(v38 + 16);
    v10(v6, v9, v4);
    sub_225CCD1B4();
    sub_225CCCD04();
    v11 = sub_225CCE4F4();
    v34 = v12;
    v35 = v11;
    sub_225CCE3D4();
    v36 = v10;
    v10(v6, v9, v4);
  }

  else
  {
    sub_225CCE3D4();
    if (qword_27D73A7C0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_27D7429E8);
    v14 = *(v38 + 16);
    v14(v6, v13, v4);
    sub_225CCD1B4();
    sub_225CCCD04();
    v15 = sub_225CCE4F4();
    v34 = v16;
    v35 = v15;
    sub_225CCE3D4();
    v36 = v14;
    v14(v6, v13, v4);
  }

  sub_225CCD1B4();
  sub_225CCCD04();
  v17 = sub_225CCE4F4();
  v32 = v18;
  v33 = v17;
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_27D7429E8);
  v20 = v4;
  v21 = v4;
  v22 = v36;
  v36(v6, v19, v20);
  sub_225CCD1B4();
  sub_225CCCD04();
  v38 = sub_225CCE4F4();
  v31 = v23;
  sub_225CCE3D4();
  v22(v6, v19, v21);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v25 = v37;
  v26 = v34;
  *v37 = v35;
  v25[1] = v26;
  v27 = v32;
  v25[2] = v33;
  v25[3] = v27;
  v28 = v31;
  v25[4] = v38;
  v25[5] = v28;
  v25[6] = result;
  v25[7] = v29;
  return result;
}

uint64_t static AlertConfiguration.webPresentmentNoEligibleDocumentsAlertDisplayConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_225CCCCD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE434();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27D7429E8);
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  sub_225CCD1B4();
  sub_225CCCD04();
  v11 = sub_225CCE4F4();
  v19 = v12;
  v20 = v11;
  sub_225CCE3D4();
  v10(v6, v9, v3);
  sub_225CCD1B4();
  sub_225CCCD04();
  v18 = sub_225CCE4F4();
  v14 = v13;
  sub_225CCE3D4();
  v10(v6, v9, v3);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v16 = v19;
  *a1 = v20;
  a1[1] = v16;
  a1[2] = v18;
  a1[3] = v14;
  a1[4] = result;
  a1[5] = v17;
  a1[6] = 0;
  a1[7] = 0;
  return result;
}

uint64_t static AlertConfiguration.webPresentmentProviderOptInAlertDisplayConfiguration(appName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_225CCCCD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCE434();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v12 - 8);
  sub_225CC7064(a1, a2);
  v13 = sub_225CCE4F4();
  v29 = v14;
  v30 = v13;
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_27D7429E8);
  v16 = *(v8 + 16);
  v16(v10, v15, v7);
  sub_225CCD1B4();
  sub_225CCCD04();
  v17 = sub_225CCE4F4();
  v27 = v18;
  v28 = v17;
  sub_225CCE3D4();
  v16(v10, v15, v7);
  sub_225CCD1B4();
  sub_225CCCD04();
  v19 = sub_225CCE4F4();
  v26 = v20;
  sub_225CCE3D4();
  v16(v10, v15, v7);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v22 = v29;
  *a3 = v30;
  a3[1] = v22;
  v23 = v27;
  a3[2] = v28;
  a3[3] = v23;
  v24 = v26;
  a3[4] = v19;
  a3[5] = v24;
  a3[6] = result;
  a3[7] = v25;
  return result;
}

unint64_t sub_225AF87C4()
{
  result = qword_27D73D630;
  if (!qword_27D73D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D630);
  }

  return result;
}

uint64_t sub_225AF8818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_225AF8860(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of AlertPresenting.present(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_225AF8A38(uint64_t a1)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v46 - v2;
  v3 = sub_225CCD954();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620, &unk_225CE6FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628, &qword_225CE6FF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v11;
  if (qword_27D739F80 != -1)
  {
    swift_once();
  }

  v12 = off_27D73D618;
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x28223BE20](KeyPath);
  *(&v46 - 2) = sub_225AF9214;
  *(&v46 - 1) = v14;
  v15 = *(*v12 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v12[v16]);
  v51 = v15;
  sub_225AF9218();
  v52 = v16;
  os_unfair_lock_unlock(&v12[v16]);

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v26 = v53;
    (*(v10 + 32))(v53, v8, v9);
    switch(v48)
    {
      case 3:
        sub_225CCE954();
        sub_225AF91CC(&qword_27D73D638, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v27 = swift_allocError();
        sub_225CCE284();
        v54 = v27;
        break;
      case 1:
        LOBYTE(v54) = 1;
        goto LABEL_14;
      case 0:
        LOBYTE(v54) = 0;
LABEL_14:
        sub_225CCE934();
LABEL_23:
        v44 = v52;
        os_unfair_lock_lock(&v12[v52]);
        v45 = v51;
        sub_2259CB640(&v12[v51], &qword_27D73D620, &unk_225CE6FD0);
        (*(v10 + 56))(&v12[v45], 1, 1, v9);
        os_unfair_lock_unlock(&v12[v44]);
        return (*(v10 + 8))(v26, v9);
      default:
        v49 = 0x8000000225D1C650;
        v28 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v50 = swift_allocError();
        v30 = v29;
        v31 = sub_225CCE954();
        v32 = *(v31 - 8);
        v33 = v47;
        (*(v32 + 56))(v47, 1, 1, v31);
        LODWORD(v31) = (*(v32 + 48))(v33, 1, v31);
        sub_2259CB640(v33, &unk_27D73B050, &unk_225CD3AD0);
        if (v31)
        {
          v34 = 107;
        }

        else
        {
          v34 = 23;
        }

        v35 = MEMORY[0x277D84F90];
        v36 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v36;
        sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v54);

        v38 = v54;
        v39 = sub_225B29AA0(0, 1, 1, v35);
        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
        }

        v26 = v53;
        *(v39 + 2) = v41 + 1;
        v42 = &v39[56 * v41];
        *(v42 + 4) = 0xD000000000000038;
        *(v42 + 5) = 0x8000000225D1C8C0;
        v43 = v49;
        *(v42 + 6) = 0xD000000000000022;
        *(v42 + 7) = v43;
        strcpy(v42 + 64, "present(with:)");
        v42[79] = -18;
        *(v42 + 10) = 92;
        *v30 = v34;
        *(v30 + 8) = v39;
        *(v30 + 16) = 0xD000000000000038;
        *(v30 + 24) = 0x8000000225D1C8C0;
        *(v30 + 32) = v38;
        *(v30 + 40) = 0;
        v54 = v50;
        break;
    }

    sub_225CCE924();
    goto LABEL_23;
  }

  sub_2259CB640(v8, &qword_27D73D620, &unk_225CE6FD0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v21 = v49;
  v20 = v50;
  (*(v49 + 16))(v5, &v17[v18], v50);
  os_unfair_lock_unlock(&v17[v19]);
  v22 = sub_225CCD934();
  v23 = sub_225CCED14();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2259A7000, v22, v23, "AlertPresenter unexpected nil value for alert continuation.", v24, 2u);
    MEMORY[0x22AA6F950](v24, -1, -1);
  }

  return (*(v21 + 8))(v5, v20);
}

uint64_t sub_225AF91CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225AF9230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t AsyncPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncPromise.init()(v0, v1, v2, v3);
  return v0;
}

void *AsyncPromise.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncPromise.State(0, *(*v4 + 80), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  swift_storeEnumTagMultiPayload();
  v9 = sub_225B515E8(v8, v5);
  (*(v6 + 8))(v8, v5);
  v4[2] = v9;
  return v4;
}

uint64_t AsyncPromise.value.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*v1 + 80);
  v2[6] = v3;
  sub_225CCEFC4();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v4 = sub_225CCEB24();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_225CCEB34();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2[14] = swift_task_alloc();
  v6 = sub_225CCFC34();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = type metadata accessor for AsyncPromise.State(0, v3, v7, v8);
  v2[19] = v9;
  v2[20] = *(v9 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AF96F8, 0, 0);
}

uint64_t sub_225AF96F8()
{
  v38 = v0;
  v1 = v0[6];
  v2 = *(v0[5] + 16);
  *swift_task_alloc() = v1;
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = sub_225AF7558;
  v4[4] = KeyPath;

  sub_225B51530(sub_225AFAE1C, v4, v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = v0[14];
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v11, 1, v16);
    sub_2259DB318(v11);
    if (v16)
    {
      v18 = 108;
    }

    else
    {
      v18 = 23;
    }

    v36 = v18;
    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

    v21 = v37;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    v26 = v0[20];
    v25 = v0[21];
    v27 = v0[19];
    *(v22 + 2) = v24 + 1;
    v28 = &v22[56 * v24];
    *(v28 + 4) = 0xD00000000000002BLL;
    *(v28 + 5) = 0x8000000225D1C930;
    *(v28 + 6) = 0xD000000000000020;
    *(v28 + 7) = 0x8000000225D1C900;
    *(v28 + 8) = 0x65756C6176;
    *(v28 + 9) = 0xE500000000000000;
    *(v28 + 10) = 36;
    *v15 = v36;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD00000000000002BLL;
    *(v15 + 24) = 0x8000000225D1C930;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    swift_willThrow();
    (*(v26 + 8))(v25, v27);

    v35 = v0[1];
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[4];
    (*(v9 + 32))(v7, v0[21], v8);
    (*(v9 + 16))(v6, v7, v8);
    sub_225AF9230(v8, (v0 + 3), v10);
    (*(v0[16] + 8))(v0[18], v0[15]);

    v35 = v0[1];
LABEL_10:

    return v35();
  }

  v30 = v0[6];
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  sub_225B51530(sub_225AFAE4C, v31, v2);

  sub_225CCE9F4();
  v32 = swift_task_alloc();
  v0[22] = v32;
  *v32 = v0;
  v32[1] = sub_225AF9C48;
  v33 = v0[7];
  v34 = v0[8];

  return MEMORY[0x2822005A8](v33, 0, 0, v34, v0 + 2);
}

uint64_t sub_225AF9C48()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_225AFA0E8;
  }

  else
  {
    v2 = sub_225AF9D5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AF9D5C()
{
  v27 = v0;
  v1 = v0[7];
  v2 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    v5 = MEMORY[0x277D84F90];
    v6 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v4, 1, 1, v9);
    (*(v10 + 48))(v4, 1, v9);
    sub_2259DB318(v4);
    v11 = sub_225B2C374(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v13 = v26;
    v14 = sub_225B29AA0(0, 1, 1, v5);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    *(v14 + 2) = v16 + 1;
    v20 = &v14[56 * v16];
    *(v20 + 4) = 0;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0xD000000000000020;
    *(v20 + 7) = 0x8000000225D1C900;
    *(v20 + 8) = 0x65756C6176;
    *(v20 + 9) = 0xE500000000000000;
    *(v20 + 10) = 46;
    *v8 = 23;
    *(v8 + 8) = v14;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v13;
    *(v8 + 40) = 0;
    swift_willThrow();
    (*(v18 + 8))(v17, v19);

    v21 = v0[1];
  }

  else
  {
    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v3 + 32))(v24, v23, v22);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_225AFA0E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v5 = sub_225CCEAC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = sub_225CCEAF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v15 = type metadata accessor for AsyncPromise.State(0, a2, v13, v14);
  (*(*(v15 - 8) + 8))(a1, v15);
  sub_225AFA3F8(v8);
  sub_225CCEAA4();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 32))(a1, v12, v9);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225AFA3F8@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v4 = sub_225CCEAC4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t AsyncPromise.fulfill(value:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v4 = sub_225CCFC34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  (*(*(v3 - 8) + 16))(&v12 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  sub_225AFA5E0(v7, v8, v9, v10);
  return (*(v5 + 8))(v7, v4);
}

void sub_225AFA5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v7 = *(*v4 + 80);
  v8 = a1;
  type metadata accessor for AsyncPromise.State(0, v7, a3, a4);
  sub_225B51530(sub_225AFAFB4, &v6, v5);
}

uint64_t AsyncPromise.fail(error:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v2 = sub_225CCFC34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  *(&v11 - v4) = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  sub_225AFA5E0(v5, v7, v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_225AFA780(char *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v46 = sub_225CCFC34();
  v48 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46);
  v41 = &v39 - v6;
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCEAB4();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v39 - v9);
  v43 = sub_225CCEAF4();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v39 - v12;
  v42 = sub_225CCD954();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AsyncPromise.State(0, a3, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  (*(v19 + 16))(&v39 - v20, a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v23 = off_28105B918;
      v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v25));
      v26 = v40;
      v27 = v42;
      v40[2](v15, &v23[v24], v42);
      os_unfair_lock_unlock(&v23[v25]);
      v28 = sub_225CCD934();
      v29 = sub_225CCED14();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2259A7000, v28, v29, "AsyncPromise attempting to fulfill result but a result is already set", v30, 2u);
        MEMORY[0x22AA6F950](v30, -1, -1);
      }

      (v26[1])(v15, v27);
      return (*(v19 + 8))(v21, v18);
    }

    else
    {
      (*(v19 + 8))(a1, v18);
      (*(v48 + 16))(a1, v45, v46);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v40 = v10;
    v42 = v8;
    (*(v19 + 8))(a1, v18);
    v32 = v43;
    (*(v11 + 32))(v13, v21, v43);
    v33 = *(v48 + 16);
    v35 = v45;
    v34 = v46;
    v48 += 16;
    v33(v41, v45, v46);
    v36 = v47;
    sub_225AF9230(v34, &v49, v44);
    v37 = (v11 + 8);
    if (v36)
    {
      sub_225CCEAE4();
      (*v37)(v13, v32);
    }

    else
    {
      v38 = v40;
      sub_225CCEAD4();
      (*(v39 + 8))(v38, v42);
      (*v37)(v13, v43);
    }

    v33(a1, v35, v46);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t AsyncPromise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225AFAEFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  result = sub_225CCEAF4();
  if (v2 <= 0x3F)
  {
    result = sub_225CCFC34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AsyncQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncQueue.init()();
  return v0;
}

uint64_t AsyncQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v28 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D758, &qword_225CE71F0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760, &qword_225CE71F8);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D768, &qword_225CE7200);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v32 = v0;
  swift_defaultActor_initialize();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D778, &qword_225CE7210);
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v33);
  sub_225CCEA14();
  sub_225A0DE54(v16, v14, &qword_27D73D768, &qword_225CE7200);
  result = (*(v18 + 48))(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v32;
    (*(v18 + 32))(v32 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v14, v17);
    v21 = sub_225CCE994();
    v22 = v31;
    (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
    v24 = v29;
    v23 = v30;
    (*(v6 + 16))(v29, v10, v30);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    (*(v6 + 32))(v26 + v25, v24, v23);
    v27 = sub_225AFBC30(0, 0, v22, &unk_225CE7220, v26);
    (*(v6 + 8))(v10, v23);
    *(v20 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__task) = v27;
    sub_2259CB640(v16, &qword_27D73D768, &qword_225CE7200);
    return v20;
  }

  return result;
}

uint64_t sub_225AFB49C(uint64_t a1, uint64_t a2)
{
  sub_2259CB640(a2, &qword_27D73D768, &qword_225CE7200);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_225AFB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D790, &unk_225CE7320);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AFB64C, 0, 0);
}

uint64_t sub_225AFB64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760, &qword_225CE71F8);
  sub_225CCE9F4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_225AFB718;
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_225AFB718()
{

  return MEMORY[0x2822009F8](sub_225AFB814, 0, 0);
}

uint64_t sub_225AFB814()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_225CCEA44())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_2259AA0D0(v1, v2);
LABEL_5:

    v3 = v0[1];

    return v3();
  }

  v6 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_225AFB990;

  return v6();
}

uint64_t sub_225AFB990()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_2259AA0D0(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_225AFB718;
  v6 = *(v1 + 40);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v6);
}

uint64_t sub_225AFBB34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760, &qword_225CE71F8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_225A02E94;

  return sub_225AFB580(a1, v6, v7, v1 + v5);
}

uint64_t sub_225AFBC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_225A0DE54(a3, v25 - v10, &qword_27D73FE00, &qword_225CD75C0);
  v12 = sub_225CCE994();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2259CB640(v11, &qword_27D73FE00, &qword_225CD75C0);
  }

  else
  {
    sub_225CCE984();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_225CCE904();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_225CCE544() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2259CB640(a3, &qword_27D73FE00, &qword_225CD75C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2259CB640(a3, &qword_27D73FE00, &qword_225CD75C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_225AFBF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_225A0DE54(a3, v25 - v10, &qword_27D73FE00, &qword_225CD75C0);
  v12 = sub_225CCE994();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2259CB640(v11, &qword_27D73FE00, &qword_225CD75C0);
  }

  else
  {
    sub_225CCE984();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_225CCE904();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_225CCE544() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D788, &qword_225CE72D8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2259CB640(a3, &qword_27D73FE00, &qword_225CD75C0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2259CB640(a3, &qword_27D73FE00, &qword_225CD75C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D788, &qword_225CE72D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AsyncQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v2);
  sub_225CCE9D4();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v2);
  sub_225CCE9D4();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_225AFC4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780, &qword_225CE7228);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &unk_225CE7238;
  v10[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  sub_225CCE9C4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_225AFC60C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2259FE39C;

  return v5();
}

uint64_t sub_225AFC6F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFC60C(a1, v4);
}

uint64_t sub_225AFC7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225AFC7D4, 0, 0);
}

uint64_t sub_225AFC7D4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_225AFC8C4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0x3A5F28636E797361, 0xE900000000000029, sub_225AFCC14, v1, v4);
}

uint64_t sub_225AFC8C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225AFC9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v22 = a2;
  v7 = sub_225CCE944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780, &qword_225CE7228);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 2) = a5;
  *(v16 + 3) = v17;
  *(v16 + 4) = v21;
  (*(v8 + 32))(&v16[v15], v10, v7);
  v23 = &unk_225CE7300;
  v24 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  sub_225CCE9C4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_225AFCC20(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *(a5 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_225AFCD80;

  return v10(v7);
}

uint64_t sub_225AFCD80()
{

  return MEMORY[0x2822009F8](sub_225AFCE7C, 0, 0);
}

uint64_t sub_225AFCE7C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v0[5], v1, v2);
  sub_225CCE944();
  sub_225CCE934();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225AFCF88, 0, 0);
}

uint64_t sub_225AFCF88()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_225AFD078;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x3A5F28636E797361, 0xE900000000000029, sub_225AFD468, v1, v4);
}

uint64_t sub_225AFD078()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225AFD1B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225AFD1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225AFD218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v7 = sub_225CCE944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780, &qword_225CE7228);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 2) = a5;
  *(v16 + 3) = v17;
  *(v16 + 4) = v21;
  (*(v8 + 32))(&v16[v15], v10, v7);
  v23 = &unk_225CE72F0;
  v24 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770, &qword_225CE7208);
  sub_225CCE9C4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_225AFD474(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *(a5 - 8);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_225AFD5D4;

  return v10(v7);
}

uint64_t sub_225AFD5D4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225AFD7DC;
  }

  else
  {
    v2 = sub_225AFD6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AFD6E8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCE944();
  sub_225CCE934();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFD7DC()
{
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCE944();
  sub_225CCE924();

  v1 = v0[1];

  return v1();
}

uint64_t type metadata accessor for AsyncQueue(uint64_t a1)
{
  result = qword_28105BF08;
  if (!qword_28105BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_225AFD8F4(uint64_t a1)
{
  sub_225AFDC98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AsyncQueue.async<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_225A02E94;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 136) + **(*v4 + 136));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2259FE39C;

  return v12(a1, a2, a3, a4);
}

void sub_225AFDC98(uint64_t a1)
{
  if (!qword_28105B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73D778, &qword_225CE7210);
    v1 = sub_225CCE9E4();
    if (!v2)
    {
      atomic_store(v1, &qword_28105B8E0);
    }
  }
}

uint64_t sub_225AFDCFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_225AFDDF4;

  return v6(a1);
}

uint64_t sub_225AFDDF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225AFDEEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_225AFDFE0;

  return v5(v2 + 32);
}

uint64_t sub_225AFDFE0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_225AFE0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFDEEC(a1, v4);
}

uint64_t sub_225AFE1AC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v6 = *(sub_225CCE944() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2259FE39C;

  return sub_225AFD474(a1, v8, v9, v1 + v7, v5);
}

uint64_t sub_225AFE2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = *(sub_225CCE944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225AFCC20(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_225AFE3D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFDCFC(a1, v4);
}

CoreIDVShared::EnrolledBiometricType_optional __swiftcall EnrolledBiometricType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EnrolledBiometricType.rawValue.getter()
{
  if (*v0)
  {
    return 0x444965636146;
  }

  else
  {
    return 0x44496863756F54;
  }
}

uint64_t sub_225AFE52C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x444965636146;
  }

  else
  {
    v3 = 0x44496863756F54;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x444965636146;
  }

  else
  {
    v5 = 0x44496863756F54;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AFE5D0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AFE650(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AFE6BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AFE738@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_225AFE798(uint64_t *a1@<X8>)
{
  v2 = 0x44496863756F54;
  if (*v1)
  {
    v2 = 0x444965636146;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_225AFE80C(char *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  sub_225AFF2A4();
  v3 = [v2 biometryType];

  if (v3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 == 1)
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_225AFE884()
{
  (*(*v0 + 104))(&var1);
  v1 = 0x4449206863756F54;
  if (var1)
  {
    v1 = 0x44492065636146;
  }

  if (var1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_225AFE910()
{
  (*(*v0 + 104))(&v3);
  if (v3 == 2)
  {
    v1 = 0;
  }

  else
  {
    if (v3)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_225CCF934();
    }
  }

  return v1 & 1;
}

uint64_t sub_225AFEA28()
{
  (*(**v0 + 104))(&v3);
  v1 = 0x4449206863756F54;
  if (v3)
  {
    v1 = 0x44492065636146;
  }

  if (v3 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_225AFEB08()
{
  v57 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v40 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v51 = 0;
  v4 = [v3 canEvaluatePolicy:2 error:&v51];
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = v51;
  if (v51)
  {
    type metadata accessor for Code(0);
    v51 = -5;
    sub_225AFF830();
    v6 = v5;
    v7 = sub_225CCCBE4();

    if (v7)
    {

LABEL_5:
      return v4;
    }
  }

  v45 = "olicy unsuccessful";
  v8 = v5;
  v9 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v47 = swift_allocError();
  v46 = v10;
  v48 = v8;
  if (!v5)
  {
    v15 = sub_225CCE954();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    goto LABEL_14;
  }

  v41 = v9;
  v40 = v5;
  swift_getErrorValue();
  v11 = v50;
  v12 = v8;
  sub_225B21FAC(v11, &v51);

  v13 = v52;
  if (!v52)
  {
    v51 = v12;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v17 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v19 = [v17 code];
      v20 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v20;
      *(inited + 40) = v19;
      v14 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v21 = v16;
      v43 = 0;
      v42 = 0;
      v44 = 0;
      v13 = MEMORY[0x277D84F90];
      v5 = v40;
      goto LABEL_12;
    }

    v51 = v16;
    v22 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v15 = sub_225CCE954();
    v23 = swift_dynamicCast();
    (*(*(v15 - 8) + 56))(v2, v23 ^ 1u, 1, v15);
    v5 = v40;
    v8 = v48;
    v9 = v41;
LABEL_14:
    sub_225CCE954();
    v24 = (*(*(v15 - 8) + 48))(v2, 1, v15);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = 23;
    }

    v44 = v25;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C374(MEMORY[0x277D84F90]);
    v26 = v8;
    v43 = 0x8000000225D1CA00;
    v42 = 0xD000000000000032;
    goto LABEL_18;
  }

  v44 = v51;
  v42 = v53;
  v43 = v54;
  v14 = v55;
  v5 = v56;
LABEL_12:
  v9 = v41;
LABEL_18:
  v45 |= 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v14;
  sub_225B2C4A0(v9, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v51);

  v28 = v51;
  v29 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_225B29AA0(0, *(v13 + 2) + 1, 1, v13);
  }

  v30 = v4;
  v32 = *(v13 + 2);
  v31 = *(v13 + 3);
  v33 = v3;
  if (v32 >= v31 >> 1)
  {
    v13 = sub_225B29AA0((v31 > 1), v32 + 1, 1, v13);
  }

  v34 = v48;

  *(v13 + 2) = v32 + 1;
  v35 = &v13[56 * v32];
  *(v35 + 4) = 0xD000000000000032;
  *(v35 + 5) = 0x8000000225D1CA00;
  v36 = v45;
  *(v35 + 6) = 0xD000000000000024;
  *(v35 + 7) = v36;
  strcpy(v35 + 64, "isPasscodeSet");
  *(v35 + 39) = -4864;
  *(v35 + 10) = 61;
  v37 = v46;
  *v46 = v44;
  v38 = v42;
  v37[1] = v13;
  v37[2] = v38;
  v37[3] = v43;
  v37[4] = v28;
  v37[5] = v29;
  swift_willThrow();

  return v30;
}

BOOL sub_225AFF14C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v10[0] = 0;
  if (([v0 canEvaluatePolicy:1 error:v10] & 1) != 0 || !v10[0])
  {
    goto LABEL_9;
  }

  v1 = v10[0];
  v2 = [v1 domain];
  v3 = sub_225CCE474();
  v5 = v4;

  if (v3 == 0xD00000000000001DLL && 0x8000000225D1C9E0 == v5)
  {
  }

  else
  {
    v7 = sub_225CCF934();

    if ((v7 & 1) == 0)
    {

LABEL_9:
      return 0;
    }
  }

  v9 = [v1 code];

  return v9 == -8;
}

uint64_t sub_225AFF2A4()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  if (sub_225AFF14C())
  {

    return 1;
  }

  else
  {
    v26[0] = 0;
    v25 = [v4 canEvaluatePolicy:1 error:v26];
    if (v26[0])
    {
      v6 = qword_28105B910;
      v7 = v26[0];
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = off_28105B918;
      v9 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v10 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v10));
      (*(v1 + 16))(v3, &v8[v9], v0);
      os_unfair_lock_unlock(&v8[v10]);
      v11 = v7;
      v12 = sub_225CCD934();
      v13 = sub_225CCED14();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v24 = v1;
        v15 = v14;
        v23 = swift_slowAlloc();
        v26[0] = v23;
        *v15 = 136446210;
        v16 = [v11 localizedDescription];
        v17 = sub_225CCE474();
        v19 = v18;

        v20 = sub_2259BE198(v17, v19, v26);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_2259A7000, v12, v13, "LA canEvaluatePolicy returned error: %{public}s", v15, 0xCu);
        v21 = v23;
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA6F950](v21, -1, -1);
        MEMORY[0x22AA6F950](v15, -1, -1);

        (*(v24 + 8))(v3, v0);
      }

      else
      {

        (*(v1 + 8))(v3, v0);
      }
    }

    else
    {
    }

    return v25;
  }
}

unint64_t sub_225AFF5FC()
{
  result = qword_27D73D798;
  if (!qword_27D73D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D798);
  }

  return result;
}

unint64_t sub_225AFF830()
{
  result = qword_27D73AA88;
  if (!qword_27D73AA88)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AA88);
  }

  return result;
}

uint64_t sub_225AFF8B8()
{
  v0 = type metadata accessor for DIPAccountManager();
  v1 = swift_allocObject();
  DIPAccountManager.init()();
  v5 = v0;
  v6 = &protocol witness table for DIPAccountManager;
  *&v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B8, &qword_225CE7540);
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  result = sub_2259A9C20(&v4, v2 + 16);
  qword_28105A7F0 = v2;
  return result;
}

uint64_t DIPAccountManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DIPAccountManager.init()();
  return v0;
}

void static DIPAccountManager.sharedInstance.getter(uint64_t a1@<X8>)
{
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28105A7F0;
  os_unfair_lock_lock((qword_28105A7F0 + 56));
  sub_225A32940(&v2[4], a1);

  os_unfair_lock_unlock(v2 + 14);
}

void sub_225AFF9FC(uint64_t a1@<X8>)
{
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28105A7F0;
  os_unfair_lock_lock((qword_28105A7F0 + 56));
  sub_225A32940(&v2[4], a1);

  os_unfair_lock_unlock(v2 + 14);
}

uint64_t sub_225AFFA7C(uint64_t a1)
{
  v1 = sub_225A32940(a1, v4);
  if (qword_28105A7E8 != -1)
  {
    v1 = swift_once();
  }

  v2 = qword_28105A7F0;
  MEMORY[0x28223BE20](v1);
  os_unfair_lock_lock((v2 + 56));
  sub_225B05894((v2 + 16));
  os_unfair_lock_unlock((v2 + 56));
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t static DIPAccountManager.sharedInstance.setter(void *a1)
{
  v1 = a1;
  if (qword_28105A7E8 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_28105A7F0;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v2 + 56));
  sub_225AFFEE8((v2 + 16));
  os_unfair_lock_unlock((v2 + 56));
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

void (*static DIPAccountManager.sharedInstance.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v4 = qword_28105A7F0;
  *(v3 + 80) = qword_28105A7F0;
  os_unfair_lock_lock(v4 + 14);
  sub_225A32940(&v4[4], v3);
  os_unfair_lock_unlock(v4 + 14);
  return sub_225AFFCC8;
}

void sub_225AFFCC8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = sub_225A32940(*a1, (v2 + 5));
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v3 + 56));
    sub_225B05894((v3 + 16));
    os_unfair_lock_unlock((v3 + 56));
    __swift_destroy_boxed_opaque_existential_0(v2 + 5);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v3 + 56));
    sub_225B05894((v3 + 16));
    os_unfair_lock_unlock((v3 + 56));
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  free(v2);
}

void *DIPAccountManager.init()()
{
  v0[2] = 0xD000000000000015;
  v0[3] = 0x8000000225D1CA70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7A0, &unk_225CE7490);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() defaultStore];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  }

  v0[4] = v2;
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v0[5];
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock((v4 + 24));
  sub_225AFFFA0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v0;
}

uint64_t sub_225AFFEE8(void *a1)
{
  v3 = *(v1 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A32940(v3, a1);
}

Swift::Void __swiftcall DIPAccountManager.reloadPrimaryAccount()()
{
  v1 = [*(v0 + 32) aa_primaryAppleAccount];
  v2 = *(v0 + 40);
  os_unfair_lock_lock((v2 + 24));
  sub_225B058B0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

id sub_225AFFFA0(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.verifyAccountStatus(requireHSA2:)(Swift::Bool requireHSA2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v66 - v4;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = DIPAccountManager.primaryAppleAccount()();
  if (v16)
  {
    v69 = v16;
    if (!requireHSA2)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v40 = off_28105B918;
      v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v42));
      (*(v7 + 16))(v15, &v40[v41], v6);
      os_unfair_lock_unlock(&v40[v42]);
      v23 = sub_225CCD934();
      v43 = sub_225CCED04();
      if (!os_log_type_enabled(v23, v43))
      {
        goto LABEL_22;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2259A7000, v23, v43, "HSA2 check is not required", v25, 2u);
      goto LABEL_21;
    }

    v17 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v18 = sub_225CCE444();
      v19 = [v17 BOOLForKey_];

      if (v19)
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v20 = off_28105B918;
        v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v22));
        (*(v7 + 16))(v13, &v20[v21], v6);
        os_unfair_lock_unlock(&v20[v22]);
        v23 = sub_225CCD934();
        v24 = sub_225CCED04();
        if (!os_log_type_enabled(v23, v24))
        {
          v15 = v13;
          goto LABEL_22;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2259A7000, v23, v24, "Not requiring HSA2 because of user defaults settings", v25, 2u);
        v15 = v13;
LABEL_21:
        MEMORY[0x22AA6F950](v25, -1, -1);
LABEL_22:

        (*(v7 + 8))(v15, v6);
        return;
      }
    }

    else
    {
    }

    v44 = v69;
    v45 = sub_225B04ABC(v69);
    if (v1)
    {
    }

    else
    {
      if (v45)
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v46 = off_28105B918;
        v47 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v48 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v48));
        (*(v7 + 16))(v10, &v46[v47], v6);
        os_unfair_lock_unlock(&v46[v48]);
        v23 = sub_225CCD934();
        v49 = sub_225CCED04();
        if (!os_log_type_enabled(v23, v49))
        {
          v15 = v10;
          goto LABEL_22;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2259A7000, v23, v49, "User has HSA2 enabled", v25, 2u);
        v15 = v10;
        goto LABEL_21;
      }

      v67 = 0x8000000225D1CAF0;
      v68 = 0x8000000225D1CAC0;
      v50 = MEMORY[0x277D84F90];
      v51 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v53 = v52;
      v54 = sub_225CCE954();
      v55 = *(v54 - 8);
      (*(v55 + 56))(v5, 1, 1, v54);
      LODWORD(v54) = (*(v55 + 48))(v5, 1, v54);
      sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
      if (v54)
      {
        v56 = 19;
      }

      else
      {
        v56 = 23;
      }

      v57 = sub_225B2C374(v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v57;
      sub_225B2C4A0(v51, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v70);

      v59 = v70;
      v60 = sub_225B29AA0(0, 1, 1, v50);
      v62 = *(v60 + 2);
      v61 = *(v60 + 3);
      if (v62 >= v61 >> 1)
      {
        v60 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v60);
      }

      *(v60 + 2) = v62 + 1;
      v63 = &v60[56 * v62];
      *(v63 + 4) = 0xD00000000000001CLL;
      *(v63 + 5) = 0x8000000225D1CB20;
      v64 = v68;
      *(v63 + 6) = 0xD000000000000025;
      *(v63 + 7) = v64;
      v65 = v67;
      *(v63 + 8) = 0xD000000000000021;
      *(v63 + 9) = v65;
      *(v63 + 10) = 87;
      *v53 = v56;
      *(v53 + 8) = v60;
      *(v53 + 16) = 0xD00000000000001CLL;
      *(v53 + 24) = 0x8000000225D1CB20;
      *(v53 + 32) = v59;
      *(v53 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v68 = 0x8000000225D1CAF0;
    v69 = 0x8000000225D1CAC0;
    v26 = MEMORY[0x277D84F90];
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v5, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v5, 1, v30);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 4;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v26);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v33;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, v34, &v70);

    v35 = v70;
    v36 = sub_225B29AA0(0, 1, 1, v26);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD000000000000028;
    *(v39 + 5) = 0x8000000225D1CA90;
    *(v39 + 6) = 0xD000000000000025;
    *(v39 + 7) = v69;
    *(v39 + 8) = 0xD000000000000021;
    *(v39 + 9) = v68;
    *(v39 + 10) = 70;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = 0xD000000000000028;
    *(v29 + 24) = 0x8000000225D1CA90;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    swift_willThrow();
  }
}

ACAccount_optional __swiftcall DIPAccountManager.primaryAppleAccount()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 40);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 24));
  if (v7)
  {
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v9 = off_28105B918;
    v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v11));
    (*(v3 + 16))(v5, &v9[v10], v2);
    os_unfair_lock_unlock(&v9[v11]);
    v12 = sub_225CCD934();
    v13 = sub_225CCED04();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2259A7000, v12, v13, "Primary account is nil. Will attempt to reload", v14, 2u);
      MEMORY[0x22AA6F950](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v15 = [*(v1 + 32) aa_primaryAppleAccount];
    *&v20[-16] = MEMORY[0x28223BE20](v15);
    os_unfair_lock_lock((v6 + 24));
    sub_225B058B0((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  os_unfair_lock_lock((v6 + 24));
  v16 = *(v6 + 16);
  v17 = v16;
  os_unfair_lock_unlock((v6 + 24));
  v19 = v16;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

Swift::Void __swiftcall DIPAccountManager.resetPrimaryAccount()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2259A7000, v9, v10, "resetting the primary account", v11, 2u);
    MEMORY[0x22AA6F950](v11, -1, -1);
  }

  v12 = (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 40);
  MEMORY[0x28223BE20](v12);
  *&v14[-16] = 0;
  os_unfair_lock_lock((v13 + 24));
  sub_225B058B0((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryAppleAccountDSID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v43 - v1;
  v3 = DIPAccountManager.primaryAppleAccount()();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aa_personID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_225CCE474();
      v9 = v8;

      v10 = v7;
      v11 = v9;
    }

    else
    {
      v43 = 0x8000000225D1CB40;
      v44 = 0x8000000225D1CAC0;
      v26 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v28 = v27;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v2, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v2, 1, v29);
      sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
      if (v29)
      {
        v31 = 4;
      }

      else
      {
        v31 = 23;
      }

      v32 = MEMORY[0x277D84F90];
      v33 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v33;
      sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v45);

      v35 = v45;
      v36 = sub_225B29AA0(0, 1, 1, v32);
      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[56 * v38];
      *(v39 + 4) = 0xD000000000000017;
      *(v39 + 5) = 0x8000000225D1CB60;
      v40 = v44;
      *(v39 + 6) = 0xD000000000000025;
      *(v39 + 7) = v40;
      v41 = v43;
      *(v39 + 8) = 0xD000000000000019;
      *(v39 + 9) = v41;
      *(v39 + 10) = 119;
      *v28 = v31;
      *(v28 + 8) = v36;
      *(v28 + 16) = 0xD000000000000017;
      *(v28 + 24) = 0x8000000225D1CB60;
      *(v28 + 32) = v35;
      *(v28 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v43 = 0x8000000225D1CB40;
    v44 = 0x8000000225D1CAC0;
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v2, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v2, 1, v16);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v16)
    {
      v18 = 4;
    }

    else
    {
      v18 = 23;
    }

    v19 = sub_225B2C374(v12);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, v20, &v45);

    v21 = v45;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[56 * v24];
    *(v25 + 4) = 0xD000000000000028;
    *(v25 + 5) = 0x8000000225D1CA90;
    *(v25 + 6) = 0xD000000000000025;
    *(v25 + 7) = v44;
    *(v25 + 8) = 0xD000000000000019;
    *(v25 + 9) = v43;
    *(v25 + 10) = 116;
    *v15 = v18;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD000000000000028;
    *(v15 + 24) = 0x8000000225D1CA90;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    v10 = swift_willThrow();
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryAppleAccountIdentifier()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v28 - v1;
  v3 = DIPAccountManager.primaryAppleAccount()();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];
    if (v5)
    {
      v7 = v5;
      v8 = sub_225CCE474();
      v10 = v9;

      v5 = v8;
      v6 = v10;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v28 = 0x8000000225D1CB80;
    v29 = 0x8000000225D1CAC0;
    v11 = MEMORY[0x277D84F90];
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    v15 = sub_225CCE954();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v2, 1, 1, v15);
    LODWORD(v15) = (*(v16 + 48))(v2, 1, v15);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v15)
    {
      v17 = 4;
    }

    else
    {
      v17 = 23;
    }

    v18 = sub_225B2C374(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v30);

    v20 = v30;
    v21 = sub_225B29AA0(0, 1, 1, v11);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD000000000000028;
    *(v24 + 5) = 0x8000000225D1CA90;
    v25 = v29;
    *(v24 + 6) = 0xD000000000000025;
    *(v24 + 7) = v25;
    v26 = v28;
    *(v24 + 8) = 0xD00000000000001FLL;
    *(v24 + 9) = v26;
    *(v24 + 10) = 130;
    *v14 = v17;
    *(v14 + 8) = v21;
    *(v14 + 16) = 0xD000000000000028;
    *(v14 + 24) = 0x8000000225D1CA90;
    *(v14 + 32) = v20;
    *(v14 + 40) = 0;
    v5 = swift_willThrow();
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryiCloudAccountAltDSID()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - v2;
  v4 = [*(v0 + 32) aida_accountForPrimaryiCloudAccount];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 aida_alternateDSID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_225CCE474();
      v10 = v9;

      v11 = v8;
      v12 = v10;
    }

    else
    {
      v42 = 0x8000000225D1CBA0;
      v43 = 0x8000000225D1CAC0;
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v29 = v28;
      v30 = sub_225CCE954();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v3, 1, 1, v30);
      LODWORD(v30) = (*(v31 + 48))(v3, 1, v30);
      sub_2259CB640(v3, &unk_27D73B050, &unk_225CD3AD0);
      if (v30)
      {
        v32 = 4;
      }

      else
      {
        v32 = 23;
      }

      v33 = MEMORY[0x277D84F90];
      v34 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v34;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v44);

      v36 = v44;
      v37 = sub_225B29AA0(0, 1, 1, v33);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[56 * v39];
      *(v40 + 4) = 0xD000000000000026;
      *(v40 + 5) = 0x8000000225D1CBC0;
      *(v40 + 6) = 0xD000000000000025;
      *(v40 + 7) = v43;
      *(v40 + 8) = 0xD00000000000001DLL;
      *(v40 + 9) = v42;
      *(v40 + 10) = 140;
      *v29 = v32;
      *(v29 + 8) = v37;
      *(v29 + 16) = 0xD000000000000026;
      *(v29 + 24) = 0x8000000225D1CBC0;
      *(v29 + 32) = v36;
      *(v29 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v42 = 0x8000000225D1CBA0;
    v43 = 0x8000000225D1CAC0;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v16 = v15;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v3, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v3, 1, v17);
    sub_2259CB640(v3, &unk_27D73B050, &unk_225CD3AD0);
    if (v17)
    {
      v19 = 4;
    }

    else
    {
      v19 = 23;
    }

    v20 = sub_225B2C374(v13);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v20;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, v21, &v44);

    v22 = v44;
    v23 = sub_225B29AA0(0, 1, 1, v13);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD000000000000028;
    *(v26 + 5) = 0x8000000225D1CA90;
    *(v26 + 6) = 0xD000000000000025;
    *(v26 + 7) = v43;
    *(v26 + 8) = 0xD00000000000001DLL;
    *(v26 + 9) = v42;
    *(v26 + 10) = 137;
    *v16 = v19;
    *(v16 + 8) = v23;
    *(v16 + 16) = 0xD000000000000028;
    *(v16 + 24) = 0x8000000225D1CA90;
    *(v16 + 32) = v22;
    *(v16 + 40) = 0;
    v11 = swift_willThrow();
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t DIPAccountManager.renewGrandslamToken(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225B01B0C, 0, 0);
}

uint64_t sub_225B01B0C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_225B01C10;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000017, 0x8000000225D1CBF0, sub_225B054DC, v4, v6);
}

uint64_t sub_225B01C10()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B01D2C;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B01D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B01D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  DIPAccountManager.renewGrandslamToken(_:completionHandler:)(a3, a4, sub_225B0580C, v12);
}

uint64_t sub_225B01EF0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    return sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    return sub_225CCE934();
  }
}

void DIPAccountManager.renewGrandslamToken(_:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = v4[4];
  if (a2)
  {
    v12 = sub_225CCE444();
    v13 = [v11 aida:v12 accountForAltDSID:?];
  }

  else
  {
    v13 = [v11 aida_accountForPrimaryiCloudAccount];
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7A8, &qword_225CE74A8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_225CD30F0;
    v16 = v4[2];
    v17 = v4[3];
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;

    v18 = v13;

    v19 = sub_225CCE7F4();

    v47 = sub_225B054E8;
    v48 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_225B03040;
    v46 = &block_descriptor_10;
    v20 = _Block_copy(&aBlock);

    [v11 aida:v18 renewCredentialsForAccount:v19 services:1 force:v20 completion:?];

LABEL_9:

    _Block_release(v20);
    return;
  }

  if (a2)
  {

    v21 = sub_225CCE444();
    v22 = [v11 aa:v21 appleAccountWithAltDSID:?];

    if (v22)
    {
LABEL_8:
      v18 = v22;
      v19 = sub_225CCE444();
      v47 = sub_225B054E8;
      v48 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_225B03040;
      v46 = &block_descriptor_2;
      v20 = _Block_copy(&aBlock);

      [v11 renewCredentialsForAccount:v18 force:0 reason:v19 completion:v20];

      goto LABEL_9;
    }
  }

  else
  {

    v22 = [v11 aa_primaryAppleAccount];
    if (v22)
    {
      goto LABEL_8;
    }
  }

  v41 = 0x8000000225D1CC10;
  v42 = 0x8000000225D1CAC0;
  v23 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v24 = swift_allocError();
  v26 = v25;
  v27 = sub_225CCE954();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v10, 1, 1, v27);
  LODWORD(v27) = (*(v28 + 48))(v10, 1, v27);
  sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
  if (v27)
  {
    v29 = 4;
  }

  else
  {
    v29 = 23;
  }

  v30 = MEMORY[0x277D84F90];
  v31 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v31;
  sub_225B2C4A0(v23, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

  v33 = aBlock;
  v34 = sub_225B29AA0(0, 1, 1, v30);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[56 * v36];
  *(v37 + 4) = 0xD000000000000028;
  *(v37 + 5) = 0x8000000225D1CA90;
  v38 = v42;
  *(v37 + 6) = 0xD000000000000025;
  *(v37 + 7) = v38;
  v39 = v41;
  *(v37 + 8) = 0xD000000000000029;
  *(v37 + 9) = v39;
  *(v37 + 10) = 203;
  *v26 = v29;
  *(v26 + 8) = v34;
  *(v26 + 16) = 0xD000000000000028;
  *(v26 + 24) = 0x8000000225D1CA90;
  *(v26 + 32) = v33;
  *(v26 + 40) = 0;
  a3(v24);
}

void sub_225B024F4(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  if (a2)
  {
    v92 = "ed into an Apple account";
    v91 = "renewGrandslamToken(_:)";
    v14 = a2;
    v15 = a2;
    v93 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v94 = swift_allocError();
    v17 = v16;
    swift_getErrorValue();
    v18 = v105;
    v19 = a2;
    sub_225B21FAC(v18, &v99);

    v20 = v100;
    v97 = a3;
    v96 = a4;
    v95 = 0x8000000225D1CDE0;
    if (v100)
    {
      v90 = v99;
      v21 = v102;
      v89 = v101;
      v22 = v103;
      v23 = v104;
    }

    else
    {
      v99 = a2;
      v44 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v45 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v47 = [v45 code];
        v48 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v48;
        *(inited + 40) = v47;
        v22 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v49 = a2;
        v21 = 0;
        v89 = 0;
        v20 = MEMORY[0x277D84F90];
        v90 = 99;
        v23 = a2;
      }

      else
      {
        v99 = a2;
        v50 = a2;
        v51 = sub_225CCE954();
        v52 = swift_dynamicCast();
        v53 = *(v51 - 8);
        (*(v53 + 56))(v13, v52 ^ 1u, 1, v51);
        v54 = (*(v53 + 48))(v13, 1, v51);
        sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
        if (v54)
        {
          v55 = 99;
        }

        else
        {
          v55 = 23;
        }

        v90 = v55;
        v20 = MEMORY[0x277D84F90];
        v22 = sub_225B2C374(MEMORY[0x277D84F90]);
        v56 = a2;
        v89 = 0xD00000000000001BLL;
        v23 = a2;
        v21 = 0x8000000225D1CDE0;
      }
    }

    v57 = v92 | 0x8000000000000000;
    v58 = v91 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v22;
    sub_225B2C4A0(v93, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v99);

    v60 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_225B29AA0(0, *(v20 + 2) + 1, 1, v20);
    }

    v62 = *(v20 + 2);
    v61 = *(v20 + 3);
    if (v62 >= v61 >> 1)
    {
      v20 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v20);
    }

    *(v20 + 2) = v62 + 1;
    v63 = &v20[56 * v62];
    v64 = v95;
    *(v63 + 4) = 0xD00000000000001BLL;
    *(v63 + 5) = v64;
    *(v63 + 6) = 0xD000000000000025;
    *(v63 + 7) = v57;
    *(v63 + 8) = 0xD000000000000029;
    *(v63 + 9) = v58;
    *(v63 + 10) = 168;
    *v17 = v90;
    v65 = v89;
    *(v17 + 8) = v20;
    *(v17 + 16) = v65;
    *(v17 + 24) = v21;
    *(v17 + 32) = v60;
    *(v17 + 40) = v23;
    v66 = v94;
    v97(v94);
  }

  else
  {
    if (!a1)
    {
      a3(0);
      return;
    }

    v24 = a3;
    if (a1 == 1)
    {
      v25 = 0x8000000225D1CDB0;
      v95 = 0x8000000225D1CAC0;
      v94 = 0x8000000225D1CC10;
      v67 = MEMORY[0x277D84F90];
      v68 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v29 = v69;
      v70 = sub_225CCE954();
      v71 = *(v70 - 8);
      (*(v71 + 56))(v11, 1, 1, v70);
      LODWORD(v70) = (*(v71 + 48))(v11, 1, v70);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v70)
      {
        v32 = 99;
      }

      else
      {
        v32 = 23;
      }

      v72 = sub_225B2C374(v67);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v72;
      sub_225B2C4A0(v68, sub_225B2AC40, 0, v73, &v99);

      v35 = v99;
      v36 = sub_225B29AA0(0, 1, 1, v67);
      v75 = *(v36 + 2);
      v74 = *(v36 + 3);
      if (v75 >= v74 >> 1)
      {
        v36 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v36);
      }

      *(v36 + 2) = v75 + 1;
      v39 = &v36[56 * v75];
      v40 = 0xD000000000000020;
      *(v39 + 4) = 0xD000000000000020;
      *(v39 + 5) = 0x8000000225D1CDB0;
      v76 = v95;
      *(v39 + 6) = 0xD000000000000025;
      *(v39 + 7) = v76;
      v77 = v94;
      *(v39 + 8) = 0xD000000000000029;
      *(v39 + 9) = v77;
      v43 = 177;
    }

    else if (a1 == 2)
    {
      v25 = 0x8000000225D1CD90;
      v95 = 0x8000000225D1CAC0;
      v94 = 0x8000000225D1CC10;
      v26 = MEMORY[0x277D84F90];
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v29 = v28;
      v30 = sub_225CCE954();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v11, 1, 1, v30);
      LODWORD(v30) = (*(v31 + 48))(v11, 1, v30);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v30)
      {
        v32 = 99;
      }

      else
      {
        v32 = 23;
      }

      v33 = sub_225B2C374(v26);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v33;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, v34, &v99);

      v35 = v99;
      v36 = sub_225B29AA0(0, 1, 1, v26);
      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[56 * v38];
      v40 = 0xD000000000000019;
      *(v39 + 4) = 0xD000000000000019;
      *(v39 + 5) = 0x8000000225D1CD90;
      v41 = v95;
      *(v39 + 6) = 0xD000000000000025;
      *(v39 + 7) = v41;
      v42 = v94;
      *(v39 + 8) = 0xD000000000000029;
      *(v39 + 9) = v42;
      v43 = 180;
    }

    else
    {
      v25 = 0x8000000225D1CD60;
      v95 = 0x8000000225D1CAC0;
      v94 = 0x8000000225D1CC10;
      v78 = MEMORY[0x277D84F90];
      v79 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v29 = v80;
      v81 = sub_225CCE954();
      v82 = *(v81 - 8);
      (*(v82 + 56))(v11, 1, 1, v81);
      LODWORD(v81) = (*(v82 + 48))(v11, 1, v81);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v81)
      {
        v32 = 99;
      }

      else
      {
        v32 = 23;
      }

      v83 = sub_225B2C374(v78);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v83;
      sub_225B2C4A0(v79, sub_225B2AC40, 0, v84, &v99);

      v35 = v99;
      v36 = sub_225B29AA0(0, 1, 1, v78);
      v86 = *(v36 + 2);
      v85 = *(v36 + 3);
      if (v86 >= v85 >> 1)
      {
        v36 = sub_225B29AA0((v85 > 1), v86 + 1, 1, v36);
      }

      *(v36 + 2) = v86 + 1;
      v39 = &v36[56 * v86];
      v40 = 0xD000000000000021;
      *(v39 + 4) = 0xD000000000000021;
      *(v39 + 5) = 0x8000000225D1CD60;
      v87 = v95;
      *(v39 + 6) = 0xD000000000000025;
      *(v39 + 7) = v87;
      v88 = v94;
      *(v39 + 8) = 0xD000000000000029;
      *(v39 + 9) = v88;
      v43 = 183;
    }

    *(v39 + 10) = v43;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = v40;
    *(v29 + 24) = v25;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    v24(a2);
  }
}

void sub_225B03040(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::String __swiftcall DIPAccountManager.appleAuthHeader(_:)(Swift::String_optional a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v140 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v139 - v6;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v139 - v12;
  if (v14)
  {
    v15 = *(v2 + 32);
    v16 = sub_225CCE444();
    v17 = [v15 aida:v16 accountForAltDSID:?];

    v18 = qword_28105B910;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = off_28105B918;
    v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v22));
    (*(v9 + 16))(v13, &v20[v21], v8);
    os_unfair_lock_unlock(&v20[v22]);
    v23 = sub_225CCD934();
    v24 = v9;
    v25 = sub_225CCED34();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = v8;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2259A7000, v23, v25, "using altDSID for authorization", v27, 2u);
      v28 = v27;
      v8 = v26;
      MEMORY[0x22AA6F950](v28, -1, -1);

      (*(v24 + 8))(v13, v26);
    }

    else
    {

      (*(v24 + 8))(v13, v8);
    }

    v9 = v24;
  }

  else
  {
    v19 = [*(v2 + 32) aida_accountForPrimaryiCloudAccount];
  }

  v143 = v9;
  if (v19)
  {
    v29 = [v19 aida_alternateDSID];
    if (v29)
    {
      v30 = v29;
      v31 = sub_225CCE474();
      v33 = v32;

      v34 = sub_225CCE444();
      v35 = [v19 aida:v34 tokenForService:?];

      if (v35)
      {
        v36 = sub_225CCE474();
        v38 = v37;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0, &qword_225CEF1C0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_225CD4890;
        v40 = MEMORY[0x277D837D0];
        *(v39 + 56) = MEMORY[0x277D837D0];
        v41 = sub_225B05508();
        *(v39 + 32) = v31;
        *(v39 + 40) = v33;
        *(v39 + 96) = v40;
        *(v39 + 104) = v41;
        *(v39 + 64) = v41;
        *(v39 + 72) = v36;
        *(v39 + 80) = v38;
        v42 = sub_225CCE4A4();
        v44 = v43;

        v45 = v42;
        goto LABEL_47;
      }

      v141 = v8;

      v64 = 0x8000000225D1CCB0;
      v145 = 0x8000000225D1CAC0;
      v144 = 0x8000000225D1CC60;
      v84 = MEMORY[0x277D84F90];
      v85 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v67 = swift_allocError();
      v69 = v86;
      v87 = sub_225CCE954();
      v88 = *(v87 - 8);
      (*(v88 + 56))(v7, 1, 1, v87);
      LODWORD(v87) = (*(v88 + 48))(v7, 1, v87);
      sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
      if (v87)
      {
        v72 = 4;
      }

      else
      {
        v72 = 23;
      }

      v89 = sub_225B2C374(v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v89;
      sub_225B2C4A0(v85, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v147);

      v75 = v147;
      v76 = sub_225B29AA0(0, 1, 1, v84);
      v92 = *(v76 + 2);
      v91 = *(v76 + 3);
      if (v92 >= v91 >> 1)
      {
        v76 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v76);
      }

      *(v76 + 2) = v92 + 1;
      v79 = &v76[56 * v92];
      v80 = 0xD00000000000001DLL;
      *(v79 + 4) = 0xD00000000000001DLL;
      *(v79 + 5) = 0x8000000225D1CCB0;
      v93 = v145;
      *(v79 + 6) = 0xD000000000000025;
      *(v79 + 7) = v93;
      v94 = v144;
      *(v79 + 8) = 0xD000000000000013;
      *(v79 + 9) = v94;
      v83 = 230;
    }

    else
    {
      v141 = v8;
      v64 = 0x8000000225D1CBC0;
      v145 = 0x8000000225D1CAC0;
      v144 = 0x8000000225D1CC60;
      v65 = MEMORY[0x277D84F90];
      v66 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v67 = swift_allocError();
      v69 = v68;
      v70 = sub_225CCE954();
      v71 = *(v70 - 8);
      (*(v71 + 56))(v7, 1, 1, v70);
      LODWORD(v70) = (*(v71 + 48))(v7, 1, v70);
      sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
      if (v70)
      {
        v72 = 4;
      }

      else
      {
        v72 = 23;
      }

      v73 = sub_225B2C374(v65);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v73;
      sub_225B2C4A0(v66, sub_225B2AC40, 0, v74, &v147);

      v75 = v147;
      v76 = sub_225B29AA0(0, 1, 1, v65);
      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[56 * v78];
      v80 = 0xD000000000000026;
      *(v79 + 4) = 0xD000000000000026;
      *(v79 + 5) = 0x8000000225D1CBC0;
      v81 = v145;
      *(v79 + 6) = 0xD000000000000025;
      *(v79 + 7) = v81;
      v82 = v144;
      *(v79 + 8) = 0xD000000000000013;
      *(v79 + 9) = v82;
      v83 = 227;
    }

    *(v79 + 10) = v83;
    *v69 = v72;
    *(v69 + 8) = v76;
    *(v69 + 16) = v80;
    *(v69 + 24) = v64;
    *(v69 + 32) = v75;
    *(v69 + 40) = 0;
    v63 = v67;
    swift_willThrow();
  }

  else
  {
    v145 = 0x8000000225D1CAC0;
    v144 = 0x8000000225D1CC60;
    v46 = MEMORY[0x277D84F90];
    v47 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v48 = swift_allocError();
    v50 = v49;
    v51 = sub_225CCE954();
    v52 = *(v51 - 8);
    (*(v52 + 56))(v7, 1, 1, v51);
    LODWORD(v51) = (*(v52 + 48))(v7, 1, v51);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v51)
    {
      v53 = 4;
    }

    else
    {
      v53 = 23;
    }

    v54 = sub_225B2C374(v46);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v54;
    sub_225B2C4A0(v47, sub_225B2AC40, 0, v55, &v147);

    v56 = v147;
    v57 = sub_225B29AA0(0, 1, 1, v46);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    v141 = v8;
    *(v57 + 2) = v59 + 1;
    v60 = &v57[56 * v59];
    *(v60 + 4) = 0xD000000000000028;
    *(v60 + 5) = 0x8000000225D1CA90;
    v61 = v145;
    *(v60 + 6) = 0xD000000000000025;
    *(v60 + 7) = v61;
    v62 = v144;
    *(v60 + 8) = 0xD000000000000013;
    *(v60 + 9) = v62;
    *(v60 + 10) = 224;
    *v50 = v53;
    *(v50 + 8) = v57;
    *(v50 + 16) = 0xD000000000000028;
    *(v50 + 24) = 0x8000000225D1CA90;
    *(v50 + 32) = v56;
    *(v50 + 40) = 0;
    v63 = v48;
    swift_willThrow();
  }

  v95 = v63;
  v96 = sub_225B2C248(MEMORY[0x277D84F90]);
  swift_getErrorValue();
  v97 = v153;
  v98 = v63;
  sub_225B21FAC(v97, &v147);

  v99 = v148;
  if (v148)
  {
    v100 = v63;
    v101 = v147;
    v102 = v149;
    v103 = v150;
    v105 = v151;
    v104 = v152;
  }

  else
  {
    v147 = v63;
    v106 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v107 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v109 = [v107 code];
      v110 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v110;
      *(inited + 40) = v109;
      v105 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v111 = v63;
      v102 = 0;
      v103 = 0;
      v99 = MEMORY[0x277D84F90];
      v104 = v63;
      v101 = 105;
      v100 = v104;
    }

    else
    {
      v147 = v63;
      v112 = v63;
      v113 = sub_225CCE954();
      v114 = v140;
      v115 = swift_dynamicCast();
      v116 = v63;
      v117 = *(v113 - 8);
      (*(v117 + 56))(v114, v115 ^ 1u, 1, v113);
      v118 = (*(v117 + 48))(v114, 1, v113);
      sub_2259CB640(v114, &unk_27D73B050, &unk_225CD3AD0);
      if (v118)
      {
        v101 = 105;
      }

      else
      {
        v101 = 23;
      }

      v99 = MEMORY[0x277D84F90];
      v105 = sub_225B2C374(MEMORY[0x277D84F90]);
      v119 = v116;
      v102 = 0xD000000000000024;
      v100 = v116;
      v104 = v116;
      v103 = 0x8000000225D1CC80;
    }
  }

  v120 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v105;
  sub_225B2C4A0(v96, sub_225B2AC40, 0, v120, &v147);

  v121 = v147;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v99 = sub_225B29AA0(0, *(v99 + 2) + 1, 1, v99);
  }

  v123 = *(v99 + 2);
  v122 = *(v99 + 3);
  if (v123 >= v122 >> 1)
  {
    v99 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v99);
  }

  v140 = v100;

  *(v99 + 2) = v123 + 1;
  v124 = &v99[56 * v123];
  *(v124 + 4) = 0xD000000000000024;
  *(v124 + 5) = 0x8000000225D1CC80;
  v125 = v145;
  *(v124 + 6) = 0xD000000000000025;
  *(v124 + 7) = v125;
  v126 = v144;
  *(v124 + 8) = 0xD000000000000013;
  *(v124 + 9) = v126;
  *(v124 + 10) = 237;
  sub_2259CB5EC();
  v127 = swift_allocError();
  *v128 = v101;
  *(v128 + 8) = v99;
  *(v128 + 16) = v102;
  *(v128 + 24) = v103;
  *(v128 + 32) = v121;
  *(v128 + 40) = v104;

  v129 = v104;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v130 = off_28105B918;
  v131 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v132 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v132));
  v133 = v143;
  v134 = &v130[v131];
  v135 = v142;
  v136 = v141;
  (*(v143 + 16))(v142, v134, v141);
  os_unfair_lock_unlock(&v130[v132]);
  v44 = 0xE000000000000000;
  DIPLogError(_:message:log:)(v127, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v127);
  (*(v133 + 8))(v135, v136);

  v45 = 0;
LABEL_47:
  v137 = v44;
  result._object = v137;
  result._countAndFlagsBits = v45;
  return result;
}

ACAccount_optional __swiftcall DIPAccountManager.getAccount(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = *(v1 + 32);
  v33 = countAndFlagsBits;
  v38 = object;
  v11 = sub_225CCE444();
  v12 = [v10 accountTypeWithAccountTypeIdentifier_];

  v37 = v12;
  v13 = [v10 accountsWithAccountType_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_225CCE814();
  }

  else
  {
    v15 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  v34 = *(v5 + 16);
  v35 = v17;
  v34(v9, &v16[v17], v4);
  os_unfair_lock_unlock(&v16[v18]);

  v19 = v5;
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();

  if (os_log_type_enabled(v20, v21))
  {
    v32 = v4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40[0] = v23;
    *v22 = 134349314;
    if (v15)
    {
      v24 = *(v15 + 16);
    }

    else
    {
      v24 = 0;
    }

    *(v22 + 4) = v24;

    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2259BE198(v33, v38, v40);
    _os_log_impl(&dword_2259A7000, v20, v21, "AccountStore returned %{public}ld accounts of type %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v22, -1, -1);

    v25 = *(v19 + 8);
    v4 = v32;
    v25(v9, v32);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v9, v4);
  }

  if (v15)
  {
    if (*(v15 + 16))
    {
      sub_2259CB810(v15 + 32, v40);

      sub_2259D8718(0, &qword_281059A48, 0x277CB8F30);
      if (swift_dynamicCast())
      {

        v27 = v39;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_lock(&v16[v18]);
  v28 = v36;
  v34(v36, &v16[v35], v4);
  os_unfair_lock_unlock(&v16[v18]);
  v29 = sub_225CCD934();
  v30 = sub_225CCECF4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2259A7000, v29, v30, "Couldn't get accounts", v31, 2u);
    MEMORY[0x22AA6F950](v31, -1, -1);
  }

  v25(v28, v4);
  v27 = 0;
LABEL_20:
  result.value.super.isa = v27;
  result.is_nil = v26;
  return result;
}

id static DIPAccountManager.isPrimaryAppleAccount(account:)(void *a1)
{
  result = [a1 accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result identifier];

  if (!v4)
  {
    sub_225CCE474();
    goto LABEL_11;
  }

  v5 = sub_225CCE474();
  v7 = v6;

  v8 = sub_225CCE474();
  if (!v7)
  {
LABEL_11:

    return 0;
  }

  if (v5 == v8 && v7 == v9)
  {

    return [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  }

  v11 = sub_225CCF934();

  result = 0;
  if (v11)
  {
    return [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  }

  return result;
}

id static DIPAccountManager.isChildAccount(account:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 userUnderAgeForAccount_];

  return v3;
}

uint64_t DIPAccountManager.deinit()
{

  return v0;
}

uint64_t DIPAccountManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_225B046C0()
{
  v1 = *v0;
  v2 = [*(v1 + 32) aa_primaryAppleAccount];
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_225B058B0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_225B04834(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_225B0485C, 0, 0);
}

uint64_t sub_225B0485C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_225B04960;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000017, 0x8000000225D1CBF0, sub_225B0588C, v4, v6);
}

uint64_t sub_225B04960()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B058AC;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B04ABC(void *a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v74 - v6;
  v8 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  if (qword_28105AA78 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_28105AA80);
  sub_2259CB588(v17, v10);
  DIPSignpost.init(_:)(v10, v16);
  v18 = [a1 aida_alternateDSID];
  if (!v18)
  {
    v83 = 0x8000000225D1CAC0;
    v82 = 0x8000000225D1CE20;
    v26 = MEMORY[0x277D84F90];
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v84 = swift_allocError();
    v14 = v28;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v7, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v7, 1, v29);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 96;
    }

    else
    {
      v31 = 23;
    }

    v32 = sub_225B2C374(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v32;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v87);

    v34 = v87;
    v35 = sub_225B29AA0(0, 1, 1, v26);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    *(v38 + 4) = 0xD000000000000016;
    *(v38 + 5) = 0x8000000225D1CE00;
    v39 = v83;
    *(v38 + 6) = 0xD000000000000025;
    *(v38 + 7) = v39;
    v40 = v82;
    *(v38 + 8) = 0xD000000000000017;
    *(v38 + 9) = v40;
    *(v38 + 10) = 253;
    *v14 = v31;
    *(v14 + 8) = v35;
    *(v14 + 16) = 0xD000000000000016;
    *(v14 + 24) = 0x8000000225D1CE00;
    *(v14 + 32) = v34;
    *(v14 + 40) = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v19 = v18;
  v20 = [objc_opt_self() sharedInstance];
  if (qword_28105AB30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_28105AB38);
  sub_2259CB588(v21, v10);
  DIPSignpost.init(_:)(v10, v14);
  v87 = 0;
  v22 = [v20 authKitAccountWithAltDSID:v19 error:&v87];

  if (!v22)
  {
    v41 = v87;
    v42 = sub_225CCCCC4();

    swift_willThrow();
    v83 = 0x8000000225D1CE40;
    v81 = "ed into an Apple account";
    v80 = "could not get alt dsid";
    v43 = v42;
    v82 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v84 = swift_allocError();
    v45 = v44;
    swift_getErrorValue();
    v46 = v86;
    v47 = v42;
    sub_225B21FAC(v46, &v87);

    v48 = v88;
    if (v88)
    {
      v79 = v87;
      v78 = v89;
      v77 = v90;
      v49 = v91;
      v76 = v92;
    }

    else
    {
      v87 = v42;
      v50 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v51 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v53 = [v51 code];
        v54 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v54;
        *(inited + 40) = v53;
        v49 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v55 = v42;
        v77 = 0;
        v78 = 0;
        v48 = MEMORY[0x277D84F90];
        v56 = 96;
        v57 = &v95;
      }

      else
      {
        v87 = v42;
        v58 = v42;
        v59 = sub_225CCE954();
        v60 = swift_dynamicCast();
        v61 = *(v59 - 8);
        (*(v61 + 56))(v5, v60 ^ 1u, 1, v59);
        LODWORD(v61) = (*(v61 + 48))(v5, 1, v59);
        sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
        if (v61)
        {
          v62 = 96;
        }

        else
        {
          v62 = 23;
        }

        v79 = v62;
        v48 = MEMORY[0x277D84F90];
        v49 = sub_225B2C374(MEMORY[0x277D84F90]);
        v63 = v42;
        v78 = 0xD00000000000001DLL;
        v56 = v83;
        v57 = &v94;
      }

      *(v57 - 32) = v56;
      v76 = v42;
    }

    v75 = v81 | 0x8000000000000000;
    v81 = v80 | 0x8000000000000000;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v49;
    sub_225B2C4A0(v82, sub_225B2AC40, 0, v64, &v87);

    v65 = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_225B29AA0(0, *(v48 + 2) + 1, 1, v48);
    }

    v67 = *(v48 + 2);
    v66 = *(v48 + 3);
    if (v67 >= v66 >> 1)
    {
      v48 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v48);
    }

    *(v48 + 2) = v67 + 1;
    v68 = &v48[56 * v67];
    v69 = v83;
    *(v68 + 4) = 0xD00000000000001DLL;
    *(v68 + 5) = v69;
    v70 = v75;
    *(v68 + 6) = 0xD000000000000025;
    *(v68 + 7) = v70;
    v71 = v81;
    *(v68 + 8) = 0xD000000000000017;
    *(v68 + 9) = v71;
    *(v68 + 10) = 262;
    *v45 = v79;
    v72 = v78;
    *(v45 + 8) = v48;
    *(v45 + 16) = v72;
    *(v45 + 24) = v77;
    *(v45 + 32) = v65;
    *(v45 + 40) = v76;
    swift_willThrow();

    sub_2259CB6A0(v14);
LABEL_28:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v16);
    return v14 & 1;
  }

  v23 = v87;
  v24 = v22;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v25 = [v20 securityLevelForAccount_];

  sub_2259CB6A0(v14);
  LOBYTE(v14) = v25 == 4;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v16);
  return v14 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_225B05508()
{
  result = qword_281059B68;
  if (!qword_281059B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B68);
  }

  return result;
}

uint64_t dispatch thunk of DIPAccountManagerProtocol.renewGrandslamToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2259FE39C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_225B0580C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);

  return sub_225B01EF0(a1);
}

uint64_t DIPRecordError(_:message:log:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  DIPLogError(_:message:log:)(a1, a2, a3);

  return _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(a1);
}

char *sub_225B05900(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_2259D52A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v18;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = sub_225CCF144();
          goto LABEL_3;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = SecCertificateCopyData(v7);
      v9 = sub_225CCCFA4();
      v11 = v10;

      v12 = sub_225CCCF84();
      v14 = v13;
      sub_2259BEF00(v9, v11);

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2259D52A4((v15 > 1), v16 + 1, 1);
      }

      ++v5;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (v2 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL sub_225B05A90(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_225CCFBD4();
  v4 = qword_225CE8F68[a1];
  MEMORY[0x22AA6E420](v4);
  v5 = sub_225CCFC24();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_225CE8F68[*(*(a2 + 48) + 2 * v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_225B05B70(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_225CCFBD4();
    DIPError.PropertyKey.rawValue.getter();
    sub_225CCE5B4();

    v4 = sub_225CCFC24();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xED00004449776F6CLL;
        v9 = 0x666B726F576F6E69;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x69766F72506F6E69;
            v8 = 0xED00004449726564;
            break;
          case 2:
            v9 = 0x6C666B726F577073;
            v8 = 0xEC0000004449776FLL;
            break;
          case 3:
            v9 = 0x6469766F72507073;
            v8 = 0xEC00000044497265;
            break;
          case 4:
            v9 = 0x7475626972747461;
            v8 = 0xEB00000000444965;
            break;
          case 5:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C380;
            break;
          case 6:
            v9 = 0x5255726576726573;
            v8 = 0xE90000000000004CLL;
            break;
          case 7:
            v9 = 0xD000000000000010;
            v8 = 0x8000000225D0C3A0;
            break;
          case 8:
            v9 = 0xD000000000000013;
            v8 = 0x8000000225D0C3C0;
            break;
          case 9:
            v9 = 0x4974736575716572;
            v8 = 0xE900000000000044;
            break;
          case 0xA:
            v9 = 0x61737265766E6F63;
            v8 = 0xEE0044496E6F6974;
            break;
          case 0xB:
            v9 = 0xD000000000000010;
            v8 = 0x8000000225D0C3F0;
            break;
          case 0xC:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C410;
            break;
          case 0xD:
            v9 = 0xD000000000000013;
            v8 = 0x8000000225D0C430;
            break;
          case 0xE:
            v9 = 0x63655264756F6C63;
            v8 = 0xEF656E6F5A64726FLL;
            break;
          case 0xF:
            v9 = 0x6552656369766564;
            v8 = 0xEC0000006E6F6967;
            break;
          case 0x10:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C470;
            break;
          case 0x11:
            v9 = 0x6761735574726563;
            v8 = 0xE900000000000065;
            break;
          case 0x12:
            v9 = 0x6573616261746164;
            v8 = 0xEE006E6D756C6F43;
            break;
          case 0x13:
            v9 = 0x74737973656C6966;
            v8 = 0xEE00687461506D65;
            break;
          case 0x14:
            v9 = 0x69796C7265646E75;
            v8 = 0xEF6F6E727245676ELL;
            break;
          case 0x15:
            v9 = 0x636E456567616D69;
            v8 = 0xED0000676E69646FLL;
            break;
          case 0x16:
            v8 = 0xE400000000000000;
            v9 = 1701273968;
            break;
          case 0x17:
            v9 = 0x636E75614C6F6E69;
            v8 = 0xED00007265695468;
            break;
          case 0x18:
            v8 = 0xE800000000000000;
            v9 = 0x746E756F43797274;
            break;
          case 0x19:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C4F0;
            break;
          case 0x1A:
            v9 = 0xD000000000000016;
            v8 = 0x8000000225D0C510;
            break;
          default:
            break;
        }

        v10 = 0x666B726F576F6E69;
        v11 = 0xED00004449776F6CLL;
        switch(a1)
        {
          case 1:
            v12 = 0x69766F72506F6E69;
            v13 = 0x4449726564;
            goto LABEL_64;
          case 2:
            v11 = 0xEC0000004449776FLL;
            if (v9 != 0x6C666B726F577073)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 3:
            v14 = 0x6469766F72507073;
            v15 = 1145664101;
            goto LABEL_53;
          case 4:
            v11 = 0xEB00000000444965;
            if (v9 != 0x7475626972747461)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 5:
            v11 = 0x8000000225D0C380;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 6:
            v11 = 0xE90000000000004CLL;
            if (v9 != 0x5255726576726573)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 7:
            v11 = 0x8000000225D0C3A0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 8:
            v11 = 0x8000000225D0C3C0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 9:
            v11 = 0xE900000000000044;
            if (v9 != 0x4974736575716572)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 10:
            v16 = 0x61737265766E6F63;
            v17 = 0x44496E6F6974;
            goto LABEL_77;
          case 11:
            v11 = 0x8000000225D0C3F0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 12:
            v11 = 0x8000000225D0C410;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 13:
            v11 = 0x8000000225D0C430;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 14:
            v11 = 0xEF656E6F5A64726FLL;
            if (v9 != 0x63655264756F6C63)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 15:
            v14 = 0x6552656369766564;
            v15 = 1852795239;
LABEL_53:
            v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v14)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 16:
            v11 = 0x8000000225D0C470;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 17:
            v11 = 0xE900000000000065;
            if (v9 != 0x6761735574726563)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 18:
            v16 = 0x6573616261746164;
            v17 = 0x6E6D756C6F43;
            goto LABEL_77;
          case 19:
            v16 = 0x74737973656C6966;
            v17 = 0x687461506D65;
LABEL_77:
            v11 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v16)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 20:
            v11 = 0xEF6F6E727245676ELL;
            if (v9 != 0x69796C7265646E75)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 21:
            v12 = 0x636E456567616D69;
            v13 = 0x676E69646FLL;
LABEL_64:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v12)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 22:
            v11 = 0xE400000000000000;
            if (v9 != 1701273968)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 23:
            v10 = 0x636E75614C6F6E69;
            v11 = 0xED00007265695468;
            goto LABEL_80;
          case 24:
            v11 = 0xE800000000000000;
            if (v9 != 0x746E756F43797274)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 25:
            v11 = 0x8000000225D0C4F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 26:
            v11 = 0x8000000225D0C510;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          default:
LABEL_80:
            if (v9 != v10)
            {
              goto LABEL_82;
            }

LABEL_81:
            if (v8 == v11)
            {

              v18 = 1;
              return v18 & 1;
            }

LABEL_82:
            v18 = sub_225CCF934();

            if (v18)
            {
              return v18 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v18 & 1;
            }

            break;
        }
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}