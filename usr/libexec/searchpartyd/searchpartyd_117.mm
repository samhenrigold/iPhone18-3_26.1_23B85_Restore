uint64_t sub_100D0563C(uint64_t a1)
{
  v4 = *v2;
  v4[63] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[20];
    v4[64] = a1;

    return _swift_task_switch(sub_100D05900, v7, 0);
  }
}

uint64_t sub_100D05900()
{
  v278 = v0;
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[60];
  v4 = *(v3 + 16);
  v216 = v2;
  if (!v4)
  {
    v270 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v5 = v0[51];
  v232 = v0[50];
  v6 = v0[48];
  v275 = _swiftEmptyArrayStorage;
  v7 = &v275;
  sub_101123DD0(0, v4, 0);
  v8 = 0;
  v9 = v275;
  v229 = v5;
  v10 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v221 = enum case for HashAlgorithm.sha256(_:);
  v217 = (v6 + 8);
  v219 = (v6 + 104);
  v240 = v10;
  v223 = v4;
  v226 = v3;
  while (1)
  {
    if (v8 >= *(v3 + 16))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v269 = v9;
    v11 = v0[54];
    v12 = *(v229 + 72);
    sub_100D11DC8(v10 + v12 * v8, v11, type metadata accessor for TimeBasedKey);
    v13 = *v11;
    v14 = sub_100A7A194(*(v11 + *(v232 + 24) + 16), *(v11 + *(v232 + 24) + 24), 0, 0);
    if (v1)
    {
      v7 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_35:
        v53 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_101385D80;
        v0[11] = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v55 = String.init<A>(describing:)();
        v57 = v56;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = sub_100008C00();
        *(v54 + 32) = v55;
        *(v54 + 40) = v57;
        os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v53, "Error deriving advertisementKey: %@", 35, 2, v54);

        sub_1001BAF88();
        v58 = swift_allocError();
        *v59 = 0;
        swift_willThrow();

        goto LABEL_96;
      }

LABEL_144:
      swift_once();
      goto LABEL_35;
    }

    v15 = v14;
    v16 = sub_100A7829C(v14, 0, 2);
    v7 = v17;
    CCECCryptorRelease();
    v18 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v106 = 0;
        goto LABEL_95;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_141;
      }

      if (v22 != 28)
      {
        goto LABEL_62;
      }

      goto LABEL_15;
    }

    if (v18)
    {
      break;
    }

    if (BYTE6(v7) != 28)
    {
      goto LABEL_62;
    }

LABEL_15:
    v267 = v13;
    v237 = v12;
    v23 = v0[49];
    v25 = v0[46];
    v24 = v0[47];
    v26 = v0[45];
    (*v219)(v23, v221, v24);
    v27 = Data.hash(algorithm:)();
    v259 = v28;
    v263 = v27;
    sub_100016590(v16, v7);
    (*v217)(v23, v24);
    v29 = type metadata accessor for EncryptedData();
    v30 = *(v29 - 8);
    v235 = *(v30 + 56);
    v235(v25, 1, 1, v29);
    sub_1000D2A70(v25, v26, &qword_1016B9AE8, &unk_1013E35D0);
    v31 = *(v30 + 48);
    v272 = v29;
    v32 = v31(v26, 1, v29);
    v33 = v0[45];
    if (v32 == 1)
    {
      sub_10000B3A8(v0[45], &qword_1016B9AE8, &unk_1013E35D0);
      v255 = 0;
      v251 = 0xF000000000000000;
    }

    else
    {
      v255 = EncryptedData.cipherText.getter();
      v251 = v34;
      (*(v30 + 8))(v33, v272);
    }

    v35 = v0[44];
    sub_1000D2A70(v0[46], v35, &qword_1016B9AE8, &unk_1013E35D0);
    v36 = v31(v35, 1, v272);
    v37 = v0[44];
    if (v36 == 1)
    {
      sub_10000B3A8(v0[44], &qword_1016B9AE8, &unk_1013E35D0);
      v38 = 0;
      v247 = 0xF000000000000000;
    }

    else
    {
      v38 = EncryptedData.initializationVector.getter();
      v247 = v39;
      (*(v30 + 8))(v37, v272);
    }

    v40 = v0[43];
    sub_1000D2A70(v0[46], v40, &qword_1016B9AE8, &unk_1013E35D0);
    v41 = v31(v40, 1, v272);
    v42 = v0[46];
    v7 = v0[43];
    v242 = v31;
    if (v41 == 1)
    {
      sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v7, &qword_1016B9AE8, &unk_1013E35D0);
      v43 = 0;
      v44 = 0xF000000000000000;
    }

    else
    {
      v43 = EncryptedData.tag.getter();
      v44 = v45;
      sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v30 + 8))(v7, v272);
    }

    sub_100018D00(v271[54], type metadata accessor for TimeBasedKey);
    v9 = v269;
    v275 = v269;
    v47 = v269[2];
    v46 = v269[3];
    if (v47 >= v46 >> 1)
    {
      v7 = &v275;
      sub_101123DD0((v46 > 1), v47 + 1, 1);
      v9 = v275;
    }

    v1 = 0;
    ++v8;
    v9[2] = v47 + 1;
    v48 = &v9[9 * v47];
    v48[4] = v267;
    v48[5] = v263;
    v48[6] = v259;
    v48[7] = v255;
    v48[8] = v251;
    v48[9] = v38;
    v48[10] = v247;
    v48[11] = v43;
    v48[12] = v44;
    v3 = v226;
    v0 = v271;
    v10 = v240;
    if (v223 == v8)
    {
      v107 = *(v226 + 16);
      if (v107)
      {
        v270 = v9;
        v108 = v271[55] + *(v232 + 24);
        v49 = _swiftEmptyArrayStorage;
        v231 = v108;
        v234 = (v30 + 8);
        v109 = v237;
        do
        {
          sub_100D11DC8(v10, v0[55], type metadata accessor for TimeBasedKey);
          v110 = *(v108 + 40);
          v111 = v0[55];
          if (v110 >> 60 == 15)
          {
            sub_100018D00(v111, type metadata accessor for TimeBasedKey);
          }

          else
          {
            v249 = v107;
            v112 = *(v108 + 32);
            v114 = v0[41];
            v113 = v0[42];
            v261 = *v111;
            v235(v113, 1, 1, v272);
            sub_1000D2A70(v113, v114, &qword_1016B9AE8, &unk_1013E35D0);
            LODWORD(v114) = v242(v114, 1, v272);
            sub_100017D5C(v112, v110);
            v115 = v0[41];
            if (v114 == 1)
            {
              sub_10000B3A8(v0[41], &qword_1016B9AE8, &unk_1013E35D0);
              v257 = 0;
              v253 = 0xF000000000000000;
            }

            else
            {
              v257 = EncryptedData.cipherText.getter();
              v253 = v116;
              (*v234)(v115, v272);
            }

            v117 = v0[40];
            sub_1000D2A70(v0[42], v117, &qword_1016B9AE8, &unk_1013E35D0);
            v118 = v242(v117, 1, v272);
            v119 = v0[40];
            v241 = v10;
            if (v118 == 1)
            {
              sub_10000B3A8(v119, &qword_1016B9AE8, &unk_1013E35D0);
              v120 = 0;
              v121 = 0xF000000000000000;
            }

            else
            {
              v120 = EncryptedData.initializationVector.getter();
              v121 = v122;
              (*v234)(v119, v272);
            }

            v123 = v271[39];
            sub_1000D2A70(v271[42], v123, &qword_1016B9AE8, &unk_1013E35D0);
            v124 = v242(v123, 1, v272);
            v125 = v271[42];
            v126 = v271[39];
            if (v124 == 1)
            {
              sub_10000B3A8(v271[42], &qword_1016B9AE8, &unk_1013E35D0);
              sub_10000B3A8(v126, &qword_1016B9AE8, &unk_1013E35D0);
              v127 = 0;
              v128 = 0xF000000000000000;
            }

            else
            {
              v127 = EncryptedData.tag.getter();
              v128 = v129;
              sub_10000B3A8(v125, &qword_1016B9AE8, &unk_1013E35D0);
              (*v234)(v126, v272);
            }

            sub_100018D00(v271[55], type metadata accessor for TimeBasedKey);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_100A5BE68(0, *(v49 + 2) + 1, 1, v49);
            }

            v131 = *(v49 + 2);
            v130 = *(v49 + 3);
            if (v131 >= v130 >> 1)
            {
              v49 = sub_100A5BE68((v130 > 1), v131 + 1, 1, v49);
            }

            *(v49 + 2) = v131 + 1;
            v132 = &v49[72 * v131];
            *(v132 + 4) = v261;
            *(v132 + 5) = v112;
            *(v132 + 6) = v110;
            *(v132 + 7) = v257;
            v107 = v249;
            *(v132 + 8) = v253;
            *(v132 + 9) = v120;
            *(v132 + 10) = v121;
            *(v132 + 11) = v127;
            *(v132 + 12) = v128;
            v0 = v271;
            v109 = v237;
            v10 = v241;
            v108 = v231;
          }

          v10 += v109;
          --v107;
        }

        while (v107);

        v1 = 0;
        v2 = v216;
LABEL_30:
        v50 = sub_100D11764(v49, v0[18], v0[19]);
        if (v1)
        {

          v51 = v0[1];

          return v51();
        }

        v60 = v50;

        v61 = *(v2 + 16);
        if (!v61)
        {
          v267 = _swiftEmptyArrayStorage;
LABEL_87:

          v133 = _swiftEmptyArrayStorage;
          goto LABEL_88;
        }

        v213 = v60;
        v1 = v0[51];
        v227 = v0[50];
        v62 = v0[48];
        v275 = _swiftEmptyArrayStorage;
        v7 = &v275;
        sub_101123DD0(0, v61, 0);
        v63 = 0;
        v64 = v275;
        v224 = v1;
        v65 = v2 + ((v1[80] + 32) & ~v1[80]);
        v220 = enum case for HashAlgorithm.sha256(_:);
        v218 = (v62 + 104);
        v215 = (v62 + 8);
        v238 = v65;
        v222 = v61;
        while (1)
        {
          if (v63 >= *(v2 + 16))
          {
            goto LABEL_143;
          }

          v268 = v64;
          v66 = v0[52];
          v67 = *(v224 + 9);
          sub_100D11DC8(v65 + v67 * v63, v66, type metadata accessor for TimeBasedKey);
          v68 = *v66;
          v69 = sub_100A7A194(*(v66 + *(v227 + 24) + 16), *(v66 + *(v227 + 24) + 24), 0, 0);
          v70 = sub_100A7829C(v69, 0, 2);
          v72 = v71;
          result = CCECCryptorRelease();
          v73 = v72 >> 62;
          if ((v72 >> 62) > 1)
          {
            if (v73 != 2)
            {
              v180 = 0;
              goto LABEL_138;
            }

            v76 = *(v70 + 16);
            v75 = *(v70 + 24);
            v21 = __OFSUB__(v75, v76);
            v74 = v75 - v76;
            if (v21)
            {
              __break(1u);
LABEL_145:
              __break(1u);
              swift_once();
              v135 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v136 = swift_allocObject();
              *(v136 + 16) = xmmword_101385D80;
              v0[13] = 0;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v137 = String.init<A>(describing:)();
              v139 = v138;
              *(v136 + 56) = &type metadata for String;
              *(v136 + 64) = sub_100008C00();
              *(v136 + 32) = v137;
              *(v136 + 40) = v139;
              os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v135, "Error deriving advertisementKey: %@", 35, 2, v136);

              sub_1001BAF88();
              v209 = swift_allocError();
              *v140 = 0;
              swift_willThrow();

LABEL_139:
              v276 = 0;
              v277 = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v211 = v276;
              v0[10] = v277;
              v0[9] = v211;
              v212._object = 0x800000010134CB30;
              v212._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v212);
              v0[14] = v209;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              goto LABEL_97;
            }
          }

          else if (v73)
          {
            LODWORD(v74) = HIDWORD(v70) - v70;
            if (__OFSUB__(HIDWORD(v70), v70))
            {
              goto LABEL_145;
            }

            v74 = v74;
          }

          else
          {
            v74 = BYTE6(v72);
          }

          if (v74 != 28)
          {
            break;
          }

          v264 = v68;
          v77 = v0[49];
          v78 = v0[47];
          v79 = v0[37];
          v80 = v0[38];
          (*v218)(v77, v220, v78);
          v81 = Data.hash(algorithm:)();
          v256 = v82;
          v260 = v81;
          sub_100016590(v70, v72);
          (*v215)(v77, v78);
          v83 = type metadata accessor for EncryptedData();
          v84 = *(v83 - 8);
          v233 = *(v84 + 56);
          v233(v80, 1, 1, v83);
          v1 = &unk_1013E35D0;
          sub_1000D2A70(v80, v79, &qword_1016B9AE8, &unk_1013E35D0);
          v85 = v79;
          v86 = v83;
          v273 = *(v84 + 48);
          v87 = v273(v85, 1, v83);
          v88 = v0[37];
          if (v87 == 1)
          {
            sub_10000B3A8(v0[37], &qword_1016B9AE8, &unk_1013E35D0);
            v248 = 0xF000000000000000;
            v252 = 0;
          }

          else
          {
            v89 = EncryptedData.cipherText.getter();
            v248 = v90;
            v252 = v89;
            (*(v84 + 8))(v88, v86);
          }

          v91 = v0[36];
          sub_1000D2A70(v0[38], v91, &qword_1016B9AE8, &unk_1013E35D0);
          v92 = v273(v91, 1, v86);
          v93 = v0[36];
          if (v92 == 1)
          {
            sub_10000B3A8(v0[36], &qword_1016B9AE8, &unk_1013E35D0);
            v243 = 0xF000000000000000;
            v245 = 0;
          }

          else
          {
            v94 = EncryptedData.initializationVector.getter();
            v243 = v95;
            v245 = v94;
            (*(v84 + 8))(v93, v86);
          }

          v236 = v67;
          v96 = v271[35];
          sub_1000D2A70(v271[38], v96, &qword_1016B9AE8, &unk_1013E35D0);
          v97 = v273(v96, 1, v86);
          v98 = v271[38];
          v7 = v271[35];
          v230 = v86;
          if (v97 == 1)
          {
            sub_10000B3A8(v98, &qword_1016B9AE8, &unk_1013E35D0);
            sub_10000B3A8(v7, &qword_1016B9AE8, &unk_1013E35D0);
            v99 = 0;
            v100 = 0xF000000000000000;
          }

          else
          {
            v99 = EncryptedData.tag.getter();
            v100 = v101;
            sub_10000B3A8(v98, &qword_1016B9AE8, &unk_1013E35D0);
            (*(v84 + 8))(v7, v86);
          }

          sub_100018D00(v271[52], type metadata accessor for TimeBasedKey);
          v64 = v268;
          v275 = v268;
          v103 = v268[2];
          v102 = v268[3];
          if (v103 >= v102 >> 1)
          {
            v7 = &v275;
            sub_101123DD0((v102 > 1), v103 + 1, 1);
            v64 = v275;
          }

          ++v63;
          v64[2] = v103 + 1;
          v104 = &v64[9 * v103];
          v104[4] = v264;
          v104[5] = v260;
          v104[6] = v256;
          v104[7] = v252;
          v104[8] = v248;
          v104[9] = v245;
          v104[10] = v243;
          v104[11] = v99;
          v104[12] = v100;
          v0 = v271;
          v2 = v216;
          v65 = v238;
          if (v222 == v63)
          {
            v181 = *(v216 + 16);
            if (!v181)
            {
              v267 = v64;
              v60 = v213;
              goto LABEL_87;
            }

            v267 = v64;
            v182 = v271[53] + *(v227 + 24);
            v133 = _swiftEmptyArrayStorage;
            v225 = v182;
            v228 = (v84 + 8);
            v183 = v236;
            do
            {
              sub_100D11DC8(v65, v0[53], type metadata accessor for TimeBasedKey);
              v184 = *(v182 + 40);
              v185 = v0[53];
              if (v184 >> 60 == 15)
              {
                sub_100018D00(v185, type metadata accessor for TimeBasedKey);
              }

              else
              {
                v262 = v133;
                v186 = *(v182 + 32);
                v188 = v0[33];
                v187 = v0[34];
                v258 = *v185;
                v233(v187, 1, 1, v230);
                sub_1000D2A70(v187, v188, &qword_1016B9AE8, &unk_1013E35D0);
                LODWORD(v188) = v273(v188, 1, v230);
                v266 = v186;
                sub_100017D5C(v186, v184);
                v189 = v0[33];
                if (v188 == 1)
                {
                  sub_10000B3A8(v0[33], &qword_1016B9AE8, &unk_1013E35D0);
                  v250 = 0xF000000000000000;
                  v254 = 0;
                }

                else
                {
                  v190 = EncryptedData.cipherText.getter();
                  v250 = v191;
                  v254 = v190;
                  (*v228)(v189, v230);
                }

                v192 = v0[32];
                sub_1000D2A70(v0[34], v192, &qword_1016B9AE8, &unk_1013E35D0);
                v193 = v273(v192, 1, v230);
                v194 = v0[32];
                v133 = v262;
                v239 = v65;
                if (v193 == 1)
                {
                  sub_10000B3A8(v194, &qword_1016B9AE8, &unk_1013E35D0);
                  v244 = 0xF000000000000000;
                  v246 = 0;
                }

                else
                {
                  v195 = EncryptedData.initializationVector.getter();
                  v244 = v196;
                  v246 = v195;
                  (*v228)(v194, v230);
                }

                v197 = v0[31];
                sub_1000D2A70(v0[34], v197, &qword_1016B9AE8, &unk_1013E35D0);
                v198 = v273(v197, 1, v230);
                v199 = v0[34];
                v200 = v0[31];
                if (v198 == 1)
                {
                  sub_10000B3A8(v0[34], &qword_1016B9AE8, &unk_1013E35D0);
                  sub_10000B3A8(v200, &qword_1016B9AE8, &unk_1013E35D0);
                  v201 = 0;
                  v202 = 0xF000000000000000;
                }

                else
                {
                  v201 = EncryptedData.tag.getter();
                  v202 = v203;
                  sub_10000B3A8(v199, &qword_1016B9AE8, &unk_1013E35D0);
                  (*v228)(v200, v230);
                }

                v182 = v225;
                sub_100018D00(v271[53], type metadata accessor for TimeBasedKey);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v133 = sub_100A5BE68(0, *(v262 + 2) + 1, 1, v262);
                }

                v205 = *(v133 + 2);
                v204 = *(v133 + 3);
                if (v205 >= v204 >> 1)
                {
                  v133 = sub_100A5BE68((v204 > 1), v205 + 1, 1, v133);
                }

                *(v133 + 2) = v205 + 1;
                v206 = &v133[72 * v205];
                *(v206 + 4) = v258;
                *(v206 + 5) = v266;
                *(v206 + 6) = v184;
                *(v206 + 7) = v254;
                *(v206 + 8) = v250;
                *(v206 + 9) = v246;
                *(v206 + 10) = v244;
                *(v206 + 11) = v201;
                *(v206 + 12) = v202;
                v0 = v271;
                v183 = v236;
                v65 = v239;
              }

              v65 += v183;
              --v181;
            }

            while (v181);

            v60 = v213;
LABEL_88:
            v134 = sub_100D11764(v133, v0[18], v0[19]);
            v147 = v0[29];
            v146 = v0[30];
            v148 = v0[27];
            v149 = v0[28];
            v274 = v0[26];
            v3 = v0[21];
            v214 = v60;
            v151 = v0[15];
            v150 = v0[16];
            v152 = v134;

            v153 = v151[3];
            v154 = v151[4];
            sub_1000035D0(v151, v153);
            (*(v154 + 192))(v153, v154);
            v155 = *v150;
            v16 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
            v156 = *(v147 + 24);
            v157 = type metadata accessor for Date();
            (*(*(v157 - 8) + 16))(v146 + v156, &v150[v16], v157);
            *(v146 + *(v147 + 20)) = v155;
            sub_100D11DC8(v146, &v149[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v149 = 2;
            *&v149[*(v3 + 24)] = v214;
            sub_100D11DC8(v146, &v148[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v148 = 3;
            *&v148[*(v3 + 24)] = v152;
            sub_100D11DC8(v146, &v274[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v274 = 0;
            *&v274[*(v3 + 24)] = v270;
            LOBYTE(v16) = 1;
            v158 = sub_100A5BE40(0, 1, 1, _swiftEmptyArrayStorage);
            v7 = v158;
            v8 = v158[2];
            v105 = v158[3];
            v15 = v8 + 1;
            if (v8 < v105 >> 1)
            {
LABEL_99:
              v159 = v271[30];
              v161 = v271[25];
              v160 = v271[26];
              v162 = v271[22];
              *(v7 + 16) = v15;
              v163 = (*(v162 + 80) + 32) & ~*(v162 + 80);
              v164 = *(v162 + 72);
              sub_100D12974(v160, v7 + v163 + v164 * v8, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v159, &v161[*(v3 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
              *v161 = v16;
              *&v161[*(v3 + 24)] = v267;
              v165 = *(v7 + 24);
              v166 = v8 + 2;
              if ((v8 + 2) > (v165 >> 1))
              {
                v7 = sub_100A5BE40((v165 > 1), v8 + 2, 1, v7);
              }

              v167 = v271[28];
              v169 = v271[24];
              v168 = v271[25];
              *(v7 + 16) = v166;
              sub_100D12974(v168, v7 + v163 + v164 * v15, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v167, v169, type metadata accessor for KeyDropInterface.KeyPackage);
              v170 = *(v7 + 24);
              v171 = v8 + 3;
              if ((v8 + 3) > (v170 >> 1))
              {
                v7 = sub_100A5BE40((v170 > 1), v8 + 3, 1, v7);
              }

              v172 = v271[27];
              v174 = v271[23];
              v173 = v271[24];
              *(v7 + 16) = v171;
              sub_100D12974(v173, v7 + v163 + v164 * v166, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v172, v174, type metadata accessor for KeyDropInterface.KeyPackage);
              v175 = *(v7 + 24);
              v265 = v163;
              if ((v8 + 4) > (v175 >> 1))
              {
                v7 = sub_100A5BE40((v175 > 1), v8 + 4, 1, v7);
              }

              v176 = v271[30];
              v177 = v271[28];
              v178 = v271[23];
              sub_100018D00(v271[27], type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v177, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v176, type metadata accessor for KeyDropInterface.KeyAlignment);
              *(v7 + 16) = v8 + 4;
              sub_100D12974(v178, v7 + v265 + v164 * v171, type metadata accessor for KeyDropInterface.KeyPackage);

              v179 = v271[1];

              return v179(v7);
            }

LABEL_147:
            v7 = sub_100A5BE40((v105 > 1), v15, 1, v7);
            goto LABEL_99;
          }
        }

        if (v73 == 2)
        {
          v208 = *(v70 + 16);
          v207 = *(v70 + 24);
          v180 = v207 - v208;
          if (!__OFSUB__(v207, v208))
          {
            goto LABEL_138;
          }

          __break(1u);
        }

        else if (v73 == 1)
        {
          if (__OFSUB__(HIDWORD(v70), v70))
          {
            __break(1u);
            return result;
          }

          v180 = HIDWORD(v70) - v70;
          goto LABEL_138;
        }

        v180 = BYTE6(v72);
LABEL_138:
        sub_100018350();
        v209 = swift_allocError();
        *v210 = 28;
        *(v210 + 8) = v180;
        *(v210 + 16) = 0;
        swift_willThrow();
        sub_100016590(v70, v72);
        goto LABEL_139;
      }

      v270 = v9;
      v1 = 0;
      v2 = v216;
LABEL_29:

      v49 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }
  }

  if (__OFSUB__(HIDWORD(v16), v16))
  {
    goto LABEL_142;
  }

  if (HIDWORD(v16) - v16 == 28)
  {
    goto LABEL_15;
  }

LABEL_62:
  if (v18 == 2)
  {
    v142 = *(v16 + 16);
    v141 = *(v16 + 24);
    v106 = v141 - v142;
    if (!__OFSUB__(v141, v142))
    {
      goto LABEL_95;
    }

    __break(1u);
LABEL_94:
    v106 = BYTE6(v7);
    goto LABEL_95;
  }

  if (v18 != 1)
  {
    goto LABEL_94;
  }

  v105 = (HIDWORD(v16) - v16);
  if (__OFSUB__(HIDWORD(v16), v16))
  {
    __break(1u);
    goto LABEL_147;
  }

  v106 = v105;
LABEL_95:
  sub_100018350();
  v58 = swift_allocError();
  *v143 = 28;
  *(v143 + 8) = v106;
  *(v143 + 16) = 0;
  swift_willThrow();
  sub_100016590(v16, v7);
LABEL_96:
  v276 = 0;
  v277 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v144 = v276;
  v0[8] = v277;
  v0[7] = v144;
  v145._object = 0x800000010134CB30;
  v145._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v145);
  v0[12] = v58;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_97:
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100D075D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 88) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return _swift_task_switch(sub_100D07600, 0, 0);
}

void sub_100D07600()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 48) = v3;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  if (v3 <= v2)
  {
    v4 = v2 - v3;
    if ((v2 - v3) >= 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  if ((v3 - v2) < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v2 - v3;
LABEL_5:
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100D076E8;
  v6 = *(v0 + 16);

  sub_100D07A78(v6, v1 & 1, v3, 0);
}

uint64_t sub_100D076E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100D07838, 0, 0);
  }
}

uint64_t sub_100D07838()
{
  v1 = *(v0 + 80);
  result = *(v0 + 56);
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 56);
  if (isUniquelyReferenced_nonNull_native && v5 <= v7[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v3;
  }

  else
  {
    v12 = v4;
  }

  v7 = sub_100A5BDF0(isUniquelyReferenced_nonNull_native, v12, 1, *(v0 + 56));
  if (!*(v1 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_5:
  v8 = (v7[3] >> 1) - v7[2];
  result = type metadata accessor for TimeBasedKey(0);
  if (v8 < v3)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_arrayInitWithCopy();

  if (v3)
  {
    v9 = v7[2];
    v10 = __OFADD__(v9, v3);
    v11 = v9 + v3;
    if (v10)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v7[2] = v11;
  }

LABEL_14:
  if (*(v0 + 64))
  {
    v13 = *(v0 + 48);
    v14 = v13 + 1;
    if (v13 != -1)
    {
      *(v0 + 48) = v14;
      *(v0 + 56) = v7;
      v15 = *(v0 + 32);
      if (v14 <= v15)
      {
        v16 = v15 - v14;
        if ((v15 - v14) >= 0)
        {
          goto LABEL_23;
        }

LABEL_32:
        __break(1u);
        return result;
      }

      if ((v14 - v15) >= 0)
      {
        v16 = v15 - v14;
LABEL_23:
        *(v0 + 64) = v16;
        v18 = *(v0 + 88);
        v19 = swift_task_alloc();
        *(v0 + 72) = v19;
        *v19 = v0;
        v19[1] = sub_100D076E8;
        v20 = *(v0 + 16);

        return sub_100D07A78(v20, v18 & 1, v14, 0);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v17 = *(v0 + 8);

  return v17(v7);
}

uint64_t sub_100D07A78(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 177) = a4;
  *(v5 + 176) = a2;
  *(v5 + 64) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100D07B44, 0, 0);
}

uint64_t sub_100D07B44()
{
  v1 = *(*(v0 + 80) + 120);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100D07B68, v1, 0);
}

uint64_t sub_100D07B68()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100D07C48;
  v3 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_100D07C48()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100D07D60, v1, 0);
}

void sub_100D07D84()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 72);
    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if (!is_mul_ok(v2, 0x60uLL))
  {
    __break(1u);
    return;
  }

  v4 = 96 * v2;
  v2 = 96 * v2 - 1;
  v5 = v4 - 96;
  if (v5 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  if (v2 < v3)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_100D07E8C;
  v7 = *(v0 + 177);
  v8 = *(v0 + 64);

  sub_100731BF4(v8, v3, v2, v1 & 1, v7, 0);
}

uint64_t sub_100D07E8C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 144) = a1;
  *(v6 + 152) = a2;
  *(v6 + 160) = v3;

  if (v3)
  {
    v7 = sub_100D083B4;
  }

  else
  {
    *(v6 + 178) = a3;
    v7 = sub_100D07FB8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D07FB8()
{
  v30 = v0;
  v1 = *(v0 + 178);

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3 = *(v0 + 144);
      v2 = *(v0 + 152);
      sub_1001BAEE0();
      swift_allocError();
      *v4 = 1;
      swift_willThrow();
      sub_100359088(v3, v2, 2u);
LABEL_8:

      v6 = *(v0 + 8);

      return v6();
    }
  }

  else
  {
    if (v1)
    {
      v8 = *(v0 + 144);

      v9 = *(v0 + 8);

      return v9(v8);
    }

    sub_100359088(*(v0 + 144), *(v0 + 152), 0);
  }

  if (*(v0 + 177))
  {
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 64);
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BF08);
  sub_10001F280(v10, v0 + 16);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v20);
    (*(*(*(v19 + 8) + 8) + 32))(v20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v15 + 8))(v14, v16);
    sub_100007BAC((v0 + 16));
    v24 = sub_1000136BC(v21, v23, &v29);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Retrying key fetch with forceGenerate: %{private,mask.hash}s.", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100007BAC((v0 + 16));
  }

  v25 = *(v0 + 176);
  v26 = swift_task_alloc();
  *(v0 + 168) = v26;
  *v26 = v0;
  v26[1] = sub_100D08420;
  v27 = *(v0 + 72);
  v28 = *(v0 + 64);

  return sub_100D07A78(v28, v25 & 1, v27, 1);
}

uint64_t sub_100D083B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D08420(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100D0854C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177BF08);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v11, v12, "Derive sharing root key: %llu.", v13, 0xCu);
  }

  v18 = a1;
  v19 = a2;
  sub_100017D5C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v18 = a3;
  dispatch thunk of CustomStringConvertible.description.getter();
  v14 = String.utf8Data.getter();
  v16 = v15;

  v18 = v14;
  v19 = v16;
  type metadata accessor for SHA256();
  sub_100D13BF8(&qword_1016B9AE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000E0A3C();
  static HKDF.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)();
  sub_100016590(v18, v19);
  return (*(v7 + 8))(v9, v6);
}

BOOL sub_100D087F0(unint64_t *a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
LABEL_6:
    v6 = *a1;
    v7 = *(a3 + *(type metadata accessor for KeyDropInterface.KeyAlignment(0) + 20));
    return v6 >= v7;
  }

  v6 = *a1;
  v7 = *(a3 + *(type metadata accessor for KeyDropInterface.KeyAlignment(0) + 20));
  if (v7)
  {
    v7 = v7 / 0x60 + 1;
  }

  return v6 >= v7;
}

void sub_100D088CC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v13)
  {
    if (v11 == v11 >> 32)
    {
LABEL_13:
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      goto LABEL_14;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v14 = objc_autoreleasePoolPush();
  sub_101122FBC(v11, v12, &v20);
  if (v2)
  {
    objc_autoreleasePoolPop(v14);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v14);
  v15 = v20;
  if (!v20)
  {
    goto LABEL_13;
  }

  v16 = [v20 modificationDate];

  if (v16)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  sub_1000D2AD8(v8, v10, &unk_101696900, &unk_10138B1E0);
  type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) != 1)
  {
    (*(v18 + 32))(a2, v10, v17);
    return;
  }

LABEL_14:
  Date.init()();
  type metadata accessor for Date();
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) != 1)
  {
    sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
  }
}

Swift::Int sub_100D08BF0(uint64_t *a1)
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
        type metadata accessor for OwnerSharingCircle(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100D09FB0(v8, v9, a1, v4);
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
    return sub_100D08D1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100D08D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v109 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v100 - v15;
  __chkstk_darwin(v14);
  v114 = &v100 - v17;
  v126 = type metadata accessor for Date();
  v18 = *(v126 - 8);
  v19 = __chkstk_darwin(v126);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v100 - v22;
  v118 = type metadata accessor for OwnerSharingCircle(0);
  v23 = __chkstk_darwin(v118);
  v117 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v128 = (&v100 - v26);
  result = __chkstk_darwin(v25);
  v30 = (&v100 - v29);
  v102 = a2;
  if (a3 != a2)
  {
    v108 = v11;
    v124 = (v18 + 56);
    v127 = (v18 + 48);
    v31 = *a4;
    v107 = (v18 + 32);
    v120 = (v18 + 8);
    v32 = *(v28 + 72);
    v33 = v31 + v32 * (a3 - 1);
    v115 = -v32;
    v116 = v31;
    v34 = a1 - a3;
    v101 = v32;
    v35 = v31 + v32 * a3;
    v110 = xmmword_101385D80;
    v113 = v16;
    v36 = v114;
    v119 = v21;
    v121 = (&v100 - v29);
    do
    {
      v106 = a3;
      v103 = v35;
      v37 = v35;
      v104 = v34;
      v38 = v34;
      v105 = v33;
      while (1)
      {
        v123 = v38;
        sub_100D11DC8(v37, v30, type metadata accessor for OwnerSharingCircle);
        sub_100D11DC8(v33, v128, type metadata accessor for OwnerSharingCircle);
        v39 = objc_autoreleasePoolPush();
        v40 = *v30;
        v41 = v30[1];
        v42 = v41 >> 62;
        v122 = v37;
        if ((v41 >> 62) > 1)
        {
          if (v42 != 2 || *(v40 + 16) == *(v40 + 24))
          {
LABEL_18:
            v51 = v126;
LABEL_22:
            v63 = *v124;
            (*v124)(v36, 1, 1, v51);
            goto LABEL_23;
          }
        }

        else if (v42)
        {
          if (v40 == v40 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v41 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v40, v41);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v46 = [v44 initForReadingFromData:isa error:&v129];

        if (!v46)
        {
          v54 = v129;
          v55 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v40, v41);
          v56 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v57 = swift_allocObject();
          *(v57 + 16) = v110;
          v129 = v55;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v58 = String.init<A>(describing:)();
          v60 = v59;
          *(v57 + 56) = &type metadata for String;
          *(v57 + 64) = sub_100008C00();
          *(v57 + 32) = v58;
          *(v57 + 40) = v60;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v46 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v46, "Unable to create unarchiver: %@", 31, 2, v57);

          v111 = 0;
LABEL_21:
          v36 = v114;
          v51 = v126;

          objc_autoreleasePoolPop(v43);
          v16 = v113;
          goto LABEL_22;
        }

        v47 = v129;
        sub_100016590(v40, v41);
        [v46 _enableStrictSecureDecodingMode];
        v48 = [objc_allocWithZone(CKRecord) initWithCoder:v46];
        if (!v48)
        {
          v61 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v62 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_21;
        }

        v49 = v48;

        objc_autoreleasePoolPop(v43);
        v50 = [v49 modificationDate];

        v36 = v114;
        v51 = v126;
        if (v50)
        {
          v52 = v109;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = 0;
        }

        else
        {
          v53 = 1;
          v52 = v109;
        }

        v16 = v113;
        v63 = *v124;
        (*v124)(v52, v53, 1, v51);
        sub_1000D2AD8(v52, v36, &unk_101696900, &unk_10138B1E0);
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          (*v107)(v125, v36, v51);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v39);
        v65 = objc_autoreleasePoolPush();
        v66 = v65;
        v67 = *v128;
        v68 = v128[1];
        v69 = v68 >> 62;
        if ((v68 >> 62) > 1)
        {
          if (v69 != 2 || *(v67 + 16) == *(v67 + 24))
          {
LABEL_36:
            v78 = v126;
LABEL_40:
            v63(v16, 1, 1, v78);
            v90 = v119;
            goto LABEL_41;
          }
        }

        else if (v69)
        {
          if (v67 == v67 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v68 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v112 = v65;
        v70 = objc_autoreleasePoolPush();
        v71 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v67, v68);
        v72 = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v73 = [v71 initForReadingFromData:v72 error:&v129];

        if (!v73)
        {
          v81 = v129;
          v82 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v67, v68);
          v83 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v110;
          v129 = v82;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v73 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v73, "Unable to create unarchiver: %@", 31, 2, v84);

          v111 = 0;
LABEL_39:
          v36 = v114;
          v78 = v126;

          objc_autoreleasePoolPop(v70);
          v66 = v112;
          v16 = v113;
          goto LABEL_40;
        }

        v74 = v129;
        sub_100016590(v67, v68);
        [v73 _enableStrictSecureDecodingMode];
        v75 = [objc_allocWithZone(CKRecord) initWithCoder:v73];
        if (!v75)
        {
          v88 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v89 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_39;
        }

        v76 = v75;

        objc_autoreleasePoolPop(v70);
        v77 = [v76 modificationDate];

        v36 = v114;
        v78 = v126;
        if (v77)
        {
          v79 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v108;
        }

        v16 = v113;
        v63(v79, v80, 1, v78);
        sub_1000D2AD8(v79, v16, &unk_101696900, &unk_10138B1E0);
        if (v64(v16, 1, v78) != 1)
        {
          v91 = v36;
          v90 = v119;
          v92 = v16;
          (*v107)(v119, v16, v78);
          v66 = v112;
          goto LABEL_43;
        }

        v90 = v119;
        v66 = v112;
LABEL_41:
        v91 = v36;
        Date.init()();
        v92 = v16;
        if (v64(v16, 1, v78) != 1)
        {
          sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v66);
        v93 = v125;
        v94 = static Date.> infix(_:_:)();
        v95 = *v120;
        (*v120)(v90, v78);
        v95(v93, v78);
        sub_100018D00(v128, type metadata accessor for OwnerSharingCircle);
        v30 = v121;
        result = sub_100018D00(v121, type metadata accessor for OwnerSharingCircle);
        if ((v94 & 1) == 0)
        {
          break;
        }

        v96 = v123;
        if (!v116)
        {
          __break(1u);
        }

        v97 = v122;
        v98 = v117;
        sub_100D12974(v122, v117, type metadata accessor for OwnerSharingCircle);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100D12974(v98, v33, type metadata accessor for OwnerSharingCircle);
        v33 += v115;
        v37 = v97 + v115;
        v99 = __CFADD__(v96, 1);
        v38 = v96 + 1;
        v16 = v92;
        v36 = v91;
        if (v99)
        {
          goto LABEL_5;
        }
      }

      v16 = v92;
      v36 = v91;
LABEL_5:
      a3 = v106 + 1;
      v33 = v105 + v101;
      v34 = v104 - 1;
      v35 = v103 + v101;
    }

    while (v106 + 1 != v102);
  }

  return result;
}

uint64_t sub_100D099E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100D0C41C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100A5B430((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_100D0C41C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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

void sub_100D09FB0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v258 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v251 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v251 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v251 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v251 - v19;
  v21 = __chkstk_darwin(v18);
  v260 = &v251 - v22;
  v23 = __chkstk_darwin(v21);
  v259 = &v251 - v24;
  v25 = __chkstk_darwin(v23);
  v271 = &v251 - v26;
  __chkstk_darwin(v25);
  v270 = &v251 - v27;
  v289 = type metadata accessor for Date();
  v28 = *(v289 - 8);
  v29 = __chkstk_darwin(v289);
  v288 = &v251 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v295 = &v251 - v32;
  v33 = __chkstk_darwin(v31);
  v269 = &v251 - v34;
  v35 = __chkstk_darwin(v33);
  v277 = &v251 - v36;
  v37 = __chkstk_darwin(v35);
  v254 = &v251 - v38;
  __chkstk_darwin(v37);
  v256 = &v251 - v39;
  v287 = type metadata accessor for OwnerSharingCircle(0);
  v272 = *(v287 - 8);
  v40 = __chkstk_darwin(v287);
  v264 = &v251 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v286 = &v251 - v43;
  v44 = __chkstk_darwin(v42);
  v298 = (&v251 - v45);
  v46 = __chkstk_darwin(v44);
  v294 = (&v251 - v47);
  v48 = __chkstk_darwin(v46);
  v281 = (&v251 - v49);
  v50 = __chkstk_darwin(v48);
  v276 = (&v251 - v51);
  v52 = __chkstk_darwin(v50);
  v253 = (&v251 - v53);
  __chkstk_darwin(v52);
  v255 = (&v251 - v54);
  v55 = a3[1];
  if (v55 >= 1)
  {
    v291 = v17;
    v56 = 0;
    v290 = (v28 + 8);
    v296 = (v28 + 56);
    v297 = (v28 + 48);
    v57 = _swiftEmptyArrayStorage;
    v275 = (v28 + 32);
    v279 = xmmword_101385D80;
    v252 = a3;
    v257 = a4;
    v274 = v11;
    v273 = v14;
    v283 = v20;
    v58 = v289;
LABEL_4:
    v265 = v57;
    v263 = v56;
    if (v56 + 1 >= v55)
    {
      v75 = v56 + 1;
      goto LABEL_68;
    }

    v278 = v55;
    v59 = *a3;
    v60 = *(v272 + 72);
    v61 = v5;
    v62 = *a3 + v60 * (v56 + 1);
    v63 = v255;
    sub_100D11DC8(v62, v255, type metadata accessor for OwnerSharingCircle);
    v292 = v60;
    v64 = v59 + v60 * v56;
    v65 = v253;
    sub_100D11DC8(v64, v253, type metadata accessor for OwnerSharingCircle);
    a4 = objc_autoreleasePoolPush();
    sub_100D088CC(v63, v256);
    if (v61)
    {
      goto LABEL_226;
    }

    objc_autoreleasePoolPop(a4);
    v66 = objc_autoreleasePoolPush();
    v67 = v254;
    sub_100D088CC(v65, v254);
    v280 = 0;
    objc_autoreleasePoolPop(v66);
    v68 = v256;
    LODWORD(v285) = static Date.> infix(_:_:)();
    v69 = v289;
    v70 = *v290;
    (*v290)(v67, v289);
    v284 = v70;
    v70(v68, v69);
    v28 = type metadata accessor for OwnerSharingCircle;
    sub_100018D00(v65, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v255, type metadata accessor for OwnerSharingCircle);
    v71 = v263 + 2;
    v72 = v59 + v292 * (v263 + 2);
    v58 = v69;
    v20 = v283;
    while (1)
    {
      v75 = v278;
      if (v278 == v71)
      {
LABEL_54:
        a3 = v252;
        a4 = v257;
        v5 = v280;
        if (v285)
        {
          if (v75 < v263)
          {
            goto LABEL_216;
          }

          if (v263 < v75)
          {
            v130 = v292 * (v75 - 1);
            v131 = v75 * v292;
            v132 = v75;
            v133 = v263;
            v134 = v263 * v292;
            do
            {
              if (v133 != --v132)
              {
                v135 = *a3;
                if (!*a3)
                {
                  goto LABEL_222;
                }

                v136 = v75;
                v28 = v135 + v134;
                sub_100D12974(v135 + v134, v264, type metadata accessor for OwnerSharingCircle);
                if (v134 < v130 || v28 >= v135 + v131)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v134 != v130)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_100D12974(v264, v135 + v130, type metadata accessor for OwnerSharingCircle);
                v20 = v283;
                v75 = v136;
              }

              ++v133;
              v130 -= v292;
              v131 -= v292;
              v134 += v292;
            }

            while (v133 < v132);
            a4 = v257;
            v58 = v289;
            v5 = v280;
          }
        }

LABEL_68:
        v137 = a3[1];
        if (v75 >= v137)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v75, v263))
        {
          goto LABEL_215;
        }

        if (v75 - v263 >= a4)
        {
LABEL_78:
          v56 = v75;
          goto LABEL_79;
        }

        v138 = v263;
        if (__OFADD__(v263, a4))
        {
          goto LABEL_217;
        }

        if ((v263 + a4) >= v137)
        {
          v139 = a3[1];
        }

        else
        {
          v139 = v263 + a4;
        }

        if (v139 >= v263)
        {
          if (v75 == v139)
          {
            v56 = v75;
            goto LABEL_80;
          }

          v280 = v5;
          v184 = *a3;
          v185 = *(v272 + 72);
          v186 = (*a3 + v185 * (v75 - 1));
          v284 = -v185;
          v285 = v184;
          v187 = v263 - v75;
          v261 = v185;
          v188 = v184 + v75 * v185;
          v262 = v139;
LABEL_133:
          v278 = v75;
          v266 = v188;
          v267 = v187;
          v189 = v187;
          v268 = v186;
          while (2)
          {
            v292 = v189;
            v190 = v294;
            sub_100D11DC8(v188, v294, type metadata accessor for OwnerSharingCircle);
            sub_100D11DC8(v186, v298, type metadata accessor for OwnerSharingCircle);
            v293 = objc_autoreleasePoolPush();
            v191 = *v190;
            v192 = v190[1];
            v193 = v192 >> 62;
            if ((v192 >> 62) > 1)
            {
              v194 = v291;
              if (v193 == 2 && *(v191 + 16) != *(v191 + 24))
              {
                goto LABEL_142;
              }

LABEL_149:
              v214 = *v296;
              (*v296)(v20, 1, 1, v58);
              goto LABEL_150;
            }

            v194 = v291;
            if (v193)
            {
              if (v191 == v191 >> 32)
              {
                goto LABEL_149;
              }
            }

            else if ((v192 & 0xFF000000000000) == 0)
            {
              goto LABEL_149;
            }

LABEL_142:
            v195 = objc_autoreleasePoolPush();
            v196 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v191, v192);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v299 = 0;
            v198 = [v196 initForReadingFromData:isa error:&v299];

            if (v198)
            {
              v199 = v299;
              sub_100016590(v191, v192);
              [v198 _enableStrictSecureDecodingMode];
              v200 = [objc_allocWithZone(CKRecord) initWithCoder:v198];
              if (v200)
              {
                v201 = v200;

                objc_autoreleasePoolPop(v195);
                v202 = [v201 modificationDate];

                v20 = v283;
                if (v202)
                {
                  v203 = v273;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v204 = 0;
                }

                else
                {
                  v204 = 1;
                  v203 = v273;
                }

                v58 = v289;
                v214 = *v296;
                (*v296)(v203, v204, 1, v289);
                sub_1000D2AD8(v203, v20, &unk_101696900, &unk_10138B1E0);
                v215 = *v297;
                if ((*v297)(v20, 1, v58) != 1)
                {
                  (*v275)(v295, v20, v58);
                  goto LABEL_152;
                }

LABEL_150:
                Date.init()();
                v215 = *v297;
                if ((*v297)(v20, 1, v58) != 1)
                {
                  sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
                }

LABEL_152:
                objc_autoreleasePoolPop(v293);
                v293 = objc_autoreleasePoolPush();
                v216 = *v298;
                v217 = v298[1];
                v218 = v217 >> 62;
                if ((v217 >> 62) > 1)
                {
                  if (v218 == 2 && *(v216 + 16) != *(v216 + 24))
                  {
                    goto LABEL_158;
                  }

LABEL_163:
                  v229 = v288;
                }

                else
                {
                  if (v218)
                  {
                    if (v216 == v216 >> 32)
                    {
                      goto LABEL_163;
                    }
                  }

                  else if ((v217 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_163;
                  }

LABEL_158:
                  v282 = v214;
                  v219 = objc_autoreleasePoolPush();
                  v220 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v216, v217);
                  v221 = Data._bridgeToObjectiveC()().super.isa;
                  v299 = 0;
                  v222 = [v220 initForReadingFromData:v221 error:&v299];

                  if (v222)
                  {
                    v223 = v299;
                    sub_100016590(v216, v217);
                    [v222 _enableStrictSecureDecodingMode];
                    v224 = [objc_allocWithZone(CKRecord) initWithCoder:v222];
                    if (v224)
                    {
                      v225 = v224;

                      objc_autoreleasePoolPop(v219);
                      v226 = [v225 modificationDate];

                      v194 = v291;
                      v20 = v283;
                      if (v226)
                      {
                        v227 = v274;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v228 = 0;
                      }

                      else
                      {
                        v228 = 1;
                        v227 = v274;
                      }

                      v229 = v288;
                      v58 = v289;
                      v282(v227, v228, 1, v289);
                      sub_1000D2AD8(v227, v194, &unk_101696900, &unk_10138B1E0);
                      if (v215(v194, 1, v58) != 1)
                      {
                        v245 = v194;
                        v239 = v20;
                        (*v275)(v229, v245, v58);
                        goto LABEL_171;
                      }

LABEL_168:
                      Date.init()();
                      if (v215(v194, 1, v58) == 1)
                      {
                        v239 = v20;
                      }

                      else
                      {
                        v240 = v194;
                        v239 = v20;
                        sub_10000B3A8(v240, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_171:
                      objc_autoreleasePoolPop(v293);
                      v241 = v295;
                      v28 = static Date.> infix(_:_:)();
                      v242 = *v290;
                      (*v290)(v229, v58);
                      v242(v241, v58);
                      a4 = type metadata accessor for OwnerSharingCircle;
                      sub_100018D00(v298, type metadata accessor for OwnerSharingCircle);
                      sub_100018D00(v294, type metadata accessor for OwnerSharingCircle);
                      if (v28)
                      {
                        v243 = v292;
                        if (!v285)
                        {
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
LABEL_224:
                          __break(1u);
                        }

                        v28 = type metadata accessor for OwnerSharingCircle;
                        a4 = v286;
                        sub_100D12974(v188, v286, type metadata accessor for OwnerSharingCircle);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_100D12974(a4, v186, type metadata accessor for OwnerSharingCircle);
                        v186 = v284 + v186;
                        v188 += v284;
                        v244 = __CFADD__(v243, 1);
                        v189 = v243 + 1;
                        v20 = v239;
                        if (v244)
                        {
                          goto LABEL_132;
                        }

                        continue;
                      }

                      v20 = v239;
LABEL_132:
                      v75 = v278 + 1;
                      v186 = &v268[v261];
                      v187 = v267 - 1;
                      v188 = v266 + v261;
                      v56 = v262;
                      if (v278 + 1 != v262)
                      {
                        goto LABEL_133;
                      }

                      a3 = v252;
                      v5 = v280;
LABEL_79:
                      v138 = v263;
LABEL_80:
                      if (v56 < v138)
                      {
                        goto LABEL_214;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v57 = v265;
                      }

                      else
                      {
                        v57 = sub_100A5B430(0, *(v265 + 2) + 1, 1, v265);
                      }

                      v28 = *(v57 + 2);
                      v140 = *(v57 + 3);
                      a4 = v28 + 1;
                      v141 = v5;
                      if (v28 >= v140 >> 1)
                      {
                        v57 = sub_100A5B430((v140 > 1), v28 + 1, 1, v57);
                      }

                      *(v57 + 2) = a4;
                      v142 = &v57[16 * v28];
                      *(v142 + 4) = v263;
                      *(v142 + 5) = v56;
                      v5 = *v258;
                      if (!*v258)
                      {
                        goto LABEL_224;
                      }

                      if (v28)
                      {
                        while (2)
                        {
                          v28 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v147 = &v57[16 * a4 + 32];
                            v148 = *(v147 - 64);
                            v149 = *(v147 - 56);
                            v153 = __OFSUB__(v149, v148);
                            v150 = v149 - v148;
                            if (v153)
                            {
                              goto LABEL_201;
                            }

                            v152 = *(v147 - 48);
                            v151 = *(v147 - 40);
                            v153 = __OFSUB__(v151, v152);
                            v145 = v151 - v152;
                            v146 = v153;
                            if (v153)
                            {
                              goto LABEL_202;
                            }

                            v154 = &v57[16 * a4];
                            v156 = *v154;
                            v155 = *(v154 + 1);
                            v153 = __OFSUB__(v155, v156);
                            v157 = v155 - v156;
                            if (v153)
                            {
                              goto LABEL_204;
                            }

                            v153 = __OFADD__(v145, v157);
                            v158 = v145 + v157;
                            if (v153)
                            {
                              goto LABEL_207;
                            }

                            if (v158 >= v150)
                            {
                              v176 = &v57[16 * v28 + 32];
                              v178 = *v176;
                              v177 = *(v176 + 1);
                              v153 = __OFSUB__(v177, v178);
                              v179 = v177 - v178;
                              if (v153)
                              {
                                goto LABEL_211;
                              }

                              if (v145 < v179)
                              {
                                v28 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_100:
                              if (v146)
                              {
                                goto LABEL_203;
                              }

                              v159 = &v57[16 * a4];
                              v161 = *v159;
                              v160 = *(v159 + 1);
                              v162 = __OFSUB__(v160, v161);
                              v163 = v160 - v161;
                              v164 = v162;
                              if (v162)
                              {
                                goto LABEL_206;
                              }

                              v165 = &v57[16 * v28 + 32];
                              v167 = *v165;
                              v166 = *(v165 + 1);
                              v153 = __OFSUB__(v166, v167);
                              v168 = v166 - v167;
                              if (v153)
                              {
                                goto LABEL_209;
                              }

                              if (__OFADD__(v163, v168))
                              {
                                goto LABEL_210;
                              }

                              if (v163 + v168 < v145)
                              {
                                goto LABEL_114;
                              }

                              if (v145 < v168)
                              {
                                v28 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v143 = *(v57 + 4);
                              v144 = *(v57 + 5);
                              v153 = __OFSUB__(v144, v143);
                              v145 = v144 - v143;
                              v146 = v153;
                              goto LABEL_100;
                            }

                            v169 = &v57[16 * a4];
                            v171 = *v169;
                            v170 = *(v169 + 1);
                            v153 = __OFSUB__(v170, v171);
                            v163 = v170 - v171;
                            v164 = v153;
LABEL_114:
                            if (v164)
                            {
                              goto LABEL_205;
                            }

                            v172 = &v57[16 * v28];
                            v174 = *(v172 + 4);
                            v173 = *(v172 + 5);
                            v153 = __OFSUB__(v173, v174);
                            v175 = v173 - v174;
                            if (v153)
                            {
                              goto LABEL_208;
                            }

                            if (v175 < v163)
                            {
                              break;
                            }
                          }

                          v180 = v28 - 1;
                          if (v28 - 1 >= a4)
                          {
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
LABEL_217:
                            __break(1u);
                            goto LABEL_218;
                          }

                          if (!*a3)
                          {
                            goto LABEL_221;
                          }

                          v181 = v57;
                          a4 = *&v57[16 * v180 + 32];
                          v182 = *&v57[16 * v28 + 40];
                          sub_100D0C658(*a3 + *(v272 + 72) * a4, *a3 + *(v272 + 72) * *&v57[16 * v28 + 32], *a3 + *(v272 + 72) * v182, v5);
                          if (v141)
                          {
                            goto LABEL_197;
                          }

                          if (v182 < a4)
                          {
                            goto LABEL_199;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v181 = sub_100B31E68(v181);
                          }

                          if (v180 >= *(v181 + 2))
                          {
                            goto LABEL_200;
                          }

                          v183 = &v181[16 * v180];
                          *(v183 + 4) = a4;
                          *(v183 + 5) = v182;
                          v300 = v181;
                          sub_100B31DDC(v28);
                          v57 = v300;
                          a4 = *(v300 + 2);
                          v58 = v289;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v55 = a3[1];
                      a4 = v257;
                      v5 = v141;
                      v20 = v283;
                      if (v56 >= v55)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_4;
                    }

                    v237 = static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v238 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v237, &_mh_execute_header, v238, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
                  }

                  else
                  {
                    v230 = v299;
                    v231 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v216, v217);
                    v232 = static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v233 = swift_allocObject();
                    *(v233 + 16) = v279;
                    v299 = v231;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v234 = String.init<A>(describing:)();
                    v236 = v235;
                    *(v233 + 56) = &type metadata for String;
                    *(v233 + 64) = sub_100008C00();
                    *(v233 + 32) = v234;
                    *(v233 + 40) = v236;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v222 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v232, &_mh_execute_header, v222, "Unable to create unarchiver: %@", 31, 2, v233);

                    v280 = 0;
                  }

                  v194 = v291;
                  v20 = v283;

                  objc_autoreleasePoolPop(v219);
                  v229 = v288;
                  v58 = v289;
                  v214 = v282;
                }

                v214(v194, 1, 1, v58);
                goto LABEL_168;
              }

              v212 = static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v213 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v212, &_mh_execute_header, v213, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
            }

            else
            {
              v205 = v299;
              v206 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v191, v192);
              v207 = static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v208 = swift_allocObject();
              *(v208 + 16) = v279;
              v299 = v206;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v209 = String.init<A>(describing:)();
              v211 = v210;
              *(v208 + 56) = &type metadata for String;
              *(v208 + 64) = sub_100008C00();
              *(v208 + 32) = v209;
              *(v208 + 40) = v211;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v198 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v207, &_mh_execute_header, v198, "Unable to create unarchiver: %@", 31, 2, v208);

              v194 = v291;

              v280 = 0;
            }

            break;
          }

          v20 = v283;

          objc_autoreleasePoolPop(v195);
          v58 = v289;
          goto LABEL_149;
        }

LABEL_218:
        __break(1u);
LABEL_219:
        v246 = sub_100B31E68(a4);
        goto LABEL_189;
      }

      v76 = v276;
      sub_100D11DC8(v72, v276, type metadata accessor for OwnerSharingCircle);
      sub_100D11DC8(v62, v281, type metadata accessor for OwnerSharingCircle);
      v77 = objc_autoreleasePoolPush();
      v78 = *v76;
      v79 = v76[1];
      v80 = v79 >> 62;
      v293 = v77;
      if ((v79 >> 62) > 1)
      {
        if (v80 != 2 || *(v78 + 16) == *(v78 + 24))
        {
          goto LABEL_25;
        }
      }

      else if (v80)
      {
        if (v78 == v78 >> 32)
        {
          goto LABEL_25;
        }
      }

      else if ((v79 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      v81 = objc_autoreleasePoolPush();
      v82 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v78, v79);
      v83 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v84 = [v82 initForReadingFromData:v83 error:&v299];

      if (!v84)
      {
        break;
      }

      v85 = v299;
      sub_100016590(v78, v79);
      [v84 _enableStrictSecureDecodingMode];
      v86 = [objc_allocWithZone(CKRecord) initWithCoder:v84];
      if (!v86)
      {
        v98 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v99 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v99, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_24;
      }

      v87 = v86;

      objc_autoreleasePoolPop(v81);
      v88 = [v87 modificationDate];

      v20 = v283;
      v58 = v289;
      if (v88)
      {
        v89 = v259;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = 0;
      }

      else
      {
        v90 = 1;
        v89 = v259;
      }

      v101 = *v296;
      (*v296)(v89, v90, 1, v58);
      v128 = v89;
      v100 = v270;
      sub_1000D2AD8(v128, v270, &unk_101696900, &unk_10138B1E0);
      v102 = *v297;
      if ((*v297)(v100, 1, v58) != 1)
      {
        (*v275)(v277, v100, v58);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v102 = *v297;
      if ((*v297)(v100, 1, v58) != 1)
      {
        sub_10000B3A8(v100, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v293);
      v103 = objc_autoreleasePoolPush();
      v105 = *v281;
      v104 = v281[1];
      v106 = v104 >> 62;
      v293 = v103;
      if ((v104 >> 62) > 1)
      {
        if (v106 != 2 || *(v105 + 16) == *(v105 + 24))
        {
LABEL_39:
          v117 = v271;
LABEL_43:
          v127 = v269;
          v101(v117, 1, 1, v58);
LABEL_44:
          Date.init()();
          if (v102(v117, 1, v58) != 1)
          {
            sub_10000B3A8(v117, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v106)
      {
        if (v105 == v105 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v104 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v282 = v101;
      v268 = objc_autoreleasePoolPush();
      v107 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v105, v104);
      v108 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v109 = [v107 initForReadingFromData:v108 error:&v299];

      if (!v109)
      {
        v118 = v299;
        v119 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v105, v104);
        v120 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v121 = swift_allocObject();
        *(v121 + 16) = v279;
        v299 = v119;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v122 = String.init<A>(describing:)();
        v124 = v123;
        *(v121 + 56) = &type metadata for String;
        *(v121 + 64) = sub_100008C00();
        *(v121 + 32) = v122;
        *(v121 + 40) = v124;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v109 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v120, &_mh_execute_header, v109, "Unable to create unarchiver: %@", 31, 2, v121);

        v20 = v283;

        v280 = 0;
LABEL_42:
        v101 = v282;

        objc_autoreleasePoolPop(v268);
        v117 = v271;
        v58 = v289;
        goto LABEL_43;
      }

      v110 = v299;
      sub_100016590(v105, v104);
      [v109 _enableStrictSecureDecodingMode];
      v111 = [objc_allocWithZone(CKRecord) initWithCoder:v109];
      if (!v111)
      {
        v125 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v126 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v126, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_42;
      }

      v112 = v111;

      objc_autoreleasePoolPop(v268);
      v113 = [v112 modificationDate];

      v114 = v282;
      if (v113)
      {
        v115 = v260;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v116 = 0;
      }

      else
      {
        v116 = 1;
        v115 = v260;
      }

      v58 = v289;
      v127 = v269;
      v114(v115, v116, 1, v289);
      v129 = v115;
      v117 = v271;
      sub_1000D2AD8(v129, v271, &unk_101696900, &unk_10138B1E0);
      if (v102(v117, 1, v58) == 1)
      {
        goto LABEL_44;
      }

      (*v275)(v127, v117, v58);
LABEL_8:
      objc_autoreleasePoolPop(v293);
      v73 = v277;
      v28 = static Date.> infix(_:_:)();
      v74 = v284;
      v284(v127, v58);
      v74(v73, v58);
      sub_100018D00(v281, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v276, type metadata accessor for OwnerSharingCircle);
      ++v71;
      v72 += v292;
      v62 += v292;
      if ((v285 ^ v28))
      {
        v75 = v71 - 1;
        goto LABEL_54;
      }
    }

    v91 = v299;
    v92 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v78, v79);
    v93 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v94 = swift_allocObject();
    *(v94 + 16) = v279;
    v299 = v92;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v95 = String.init<A>(describing:)();
    v97 = v96;
    *(v94 + 56) = &type metadata for String;
    *(v94 + 64) = sub_100008C00();
    *(v94 + 32) = v95;
    *(v94 + 40) = v97;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v84 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v84, "Unable to create unarchiver: %@", 31, 2, v94);

    v280 = 0;
LABEL_24:
    v20 = v283;
    v58 = v289;

    objc_autoreleasePoolPop(v81);
LABEL_25:
    v100 = v270;
    v101 = *v296;
    (*v296)(v270, 1, 1, v58);
    goto LABEL_26;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_186:
  v28 = *v258;
  if (*v258)
  {
    a4 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_219;
    }

    v246 = a4;
LABEL_189:
    v300 = v246;
    a4 = *(v246 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v247 = *&v246[16 * a4];
        v248 = v246;
        v249 = *&v246[16 * a4 + 24];
        sub_100D0C658(*a3 + *(v272 + 72) * v247, *a3 + *(v272 + 72) * *&v246[16 * a4 + 16], *a3 + *(v272 + 72) * v249, v28);
        if (v5)
        {
          goto LABEL_197;
        }

        if (v249 < v247)
        {
          goto LABEL_212;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_100B31E68(v248);
        }

        if (a4 - 2 >= *(v248 + 2))
        {
          goto LABEL_213;
        }

        v250 = &v248[16 * a4];
        *v250 = v247;
        *(v250 + 1) = v249;
        v300 = v248;
        sub_100B31DDC(a4 - 1);
        v246 = v300;
        a4 = *(v300 + 2);
        if (a4 <= 1)
        {
          goto LABEL_197;
        }
      }

      goto LABEL_223;
    }

LABEL_197:
  }

  else
  {
    __break(1u);
LABEL_226:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}

uint64_t sub_100D0BEE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100B31E68(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100D0DF44((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100A5B430((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100D0DF44((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100B31E68(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_100B31DDC(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100D0C41C(char *__dst, char *__src, unint64_t a3, char *a4)
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
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
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

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_100D0C658(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v195 = &v192 - v13;
  v14 = __chkstk_darwin(v12);
  *&v200 = &v192 - v15;
  v16 = __chkstk_darwin(v14);
  v199 = (&v192 - v17);
  v18 = __chkstk_darwin(v16);
  v198 = &v192 - v19;
  v20 = __chkstk_darwin(v18);
  v197 = &v192 - v21;
  v22 = __chkstk_darwin(v20);
  v206 = &v192 - v23;
  __chkstk_darwin(v22);
  v205 = &v192 - v24;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v214 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v210 = &v192 - v30;
  v31 = __chkstk_darwin(v29);
  v213 = &v192 - v32;
  __chkstk_darwin(v31);
  v212 = &v192 - v33;
  v209 = type metadata accessor for OwnerSharingCircle(0);
  v34 = __chkstk_darwin(v209);
  v202 = (&v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __chkstk_darwin(v34);
  v207 = &v192 - v37;
  v38 = __chkstk_darwin(v36);
  v218 = (&v192 - v39);
  __chkstk_darwin(v38);
  v211 = &v192 - v40;
  v42 = *(v41 + 72);
  if (!v42)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v217 = a1;
  if (a2 - a1 == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_144;
  }

  v43 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v42 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v44 = (a2 - a1) / v42;
  v221 = a4;
  v222 = v217;
  v215 = v25;
  if (v44 >= v43 / v42)
  {
    v194 = v11;
    v46 = v43 / v42 * v42;
    if (a4 < a2 || a2 + v46 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v114 = (a4 + v46);
    if (v46 < 1)
    {
LABEL_141:
      v222 = a2;
      v220 = v114;
      goto LABEL_142;
    }

    v115 = -v42;
    v213 = (v26 + 56);
    v218 = (v26 + 48);
    v193 = (v26 + 32);
    v198 = (v26 + 8);
    v196 = xmmword_101385D80;
    v116 = a4 + v46;
    v216 = a4;
    v117 = v202;
    v204 = v115;
    v118 = v217;
LABEL_81:
    v192 = v114;
    v119 = a2;
    v120 = a2 + v115;
    v208 = a2 + v115;
    v203 = a2;
    while (1)
    {
      if (v119 <= v118)
      {
        v222 = v119;
        v220 = v192;
        goto LABEL_142;
      }

      v205 = a3;
      v197 = v114;
      v206 = v116;
      v212 = (v116 + v115);
      v123 = v207;
      sub_100D11DC8(v116 + v115, v207, type metadata accessor for OwnerSharingCircle);
      sub_100D11DC8(v120, v117, type metadata accessor for OwnerSharingCircle);
      v124 = objc_autoreleasePoolPush();
      v125 = *v123;
      v126 = v123[1];
      v127 = v126 >> 62;
      if ((v126 >> 62) > 1)
      {
        if (v127 != 2 || *(v125 + 16) == *(v125 + 24))
        {
          goto LABEL_101;
        }
      }

      else if (v127)
      {
        if (v125 == v125 >> 32)
        {
          goto LABEL_101;
        }
      }

      else if ((v126 & 0xFF000000000000) == 0)
      {
        goto LABEL_101;
      }

      v128 = objc_autoreleasePoolPush();
      v129 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v125, v126);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v220 = 0;
      v131 = [v129 initForReadingFromData:isa error:&v220];

      if (!v131)
      {
        break;
      }

      v132 = v220;
      sub_100016590(v125, v126);
      [v131 _enableStrictSecureDecodingMode];
      v133 = [objc_allocWithZone(CKRecord) initWithCoder:v131];
      if (!v133)
      {
        v145 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v146 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v145, &_mh_execute_header, v146, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_100;
      }

      v134 = v133;

      objc_autoreleasePoolPop(v128);
      v135 = [v134 modificationDate];

      v115 = v204;
      if (v135)
      {
        v136 = v195;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v137 = 0;
      }

      else
      {
        v137 = 1;
        v136 = v195;
      }

      v148 = *v213;
      v186 = v136;
      v187 = v136;
      v149 = v215;
      (*v213)(v186, v137, 1, v215);
      v188 = v187;
      v147 = v199;
      sub_1000D2AD8(v188, v199, &unk_101696900, &unk_10138B1E0);
      v150 = *v218;
      if ((*v218)(v147, 1, v149) != 1)
      {
        (*v193)(v210, v147, v149);
        goto LABEL_104;
      }

LABEL_102:
      Date.init()();
      v150 = *v218;
      if ((*v218)(v147, 1, v149) != 1)
      {
        sub_10000B3A8(v147, &unk_101696900, &unk_10138B1E0);
      }

LABEL_104:
      objc_autoreleasePoolPop(v124);
      v211 = objc_autoreleasePoolPush();
      v151 = *v117;
      v152 = v117[1];
      v153 = v152 >> 62;
      if ((v152 >> 62) > 1)
      {
        v154 = v215;
        if (v153 != 2 || *(v151 + 16) == *(v151 + 24))
        {
LABEL_115:
          v165 = v212;
          v166 = v200;
LABEL_119:
          v176 = v211;
          v148(v166, 1, 1, v154);
          goto LABEL_120;
        }
      }

      else
      {
        v154 = v215;
        if (v153)
        {
          if (v151 == v151 >> 32)
          {
            goto LABEL_115;
          }
        }

        else if ((v152 & 0xFF000000000000) == 0)
        {
          goto LABEL_115;
        }
      }

      v155 = objc_autoreleasePoolPush();
      v156 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v151, v152);
      v157 = Data._bridgeToObjectiveC()().super.isa;
      v220 = 0;
      v158 = [v156 initForReadingFromData:v157 error:&v220];

      if (!v158)
      {
        v167 = v220;
        v168 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v151, v152);
        v169 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v170 = swift_allocObject();
        *(v170 + 16) = v196;
        v220 = v168;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v171 = String.init<A>(describing:)();
        v173 = v172;
        *(v170 + 56) = &type metadata for String;
        *(v170 + 64) = sub_100008C00();
        *(v170 + 32) = v171;
        *(v170 + 40) = v173;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v158 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v169, &_mh_execute_header, v158, "Unable to create unarchiver: %@", 31, 2, v170);

        v154 = v215;

        v201 = 0;
LABEL_118:
        v166 = v200;
        v115 = v204;

        objc_autoreleasePoolPop(v155);
        v165 = v212;
        goto LABEL_119;
      }

      v159 = v220;
      sub_100016590(v151, v152);
      [v158 _enableStrictSecureDecodingMode];
      v160 = [objc_allocWithZone(CKRecord) initWithCoder:v158];
      if (!v160)
      {
        v174 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v175 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v174, &_mh_execute_header, v175, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_118;
      }

      v161 = v160;

      objc_autoreleasePoolPop(v155);
      v162 = [v161 modificationDate];

      v115 = v204;
      if (v162)
      {
        v163 = v194;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v164 = 0;
      }

      else
      {
        v164 = 1;
        v163 = v194;
      }

      v176 = v211;
      v165 = v212;
      v148(v163, v164, 1, v154);
      v189 = v163;
      v166 = v200;
      sub_1000D2AD8(v189, v200, &unk_101696900, &unk_10138B1E0);
      if (v150(v166, 1, v154) != 1)
      {
        v177 = v165;
        (*v193)(v214, v166, v154);
        goto LABEL_122;
      }

LABEL_120:
      v177 = v165;
      Date.init()();
      if (v150(v166, 1, v154) != 1)
      {
        sub_10000B3A8(v166, &unk_101696900, &unk_10138B1E0);
      }

LABEL_122:
      v178 = v205;
      v179 = v205 + v115;
      objc_autoreleasePoolPop(v176);
      v180 = v210;
      v181 = v214;
      v182 = static Date.> infix(_:_:)();
      v183 = *v198;
      (*v198)(v181, v154);
      v183(v180, v154);
      v117 = v202;
      sub_100018D00(v202, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v207, type metadata accessor for OwnerSharingCircle);
      if (v182)
      {
        v190 = v216;
        v118 = v217;
        if (v178 < v203 || v179 >= v203)
        {
          a3 = v179;
          a2 = v208;
          swift_arrayInitWithTakeFrontToBack();
          v114 = v197;
          v115 = v204;
        }

        else
        {
          v185 = v178 == v203;
          v114 = v197;
          v115 = v204;
          a2 = v208;
          a3 = v179;
          if (!v185)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v116 = v206;
        if (v206 <= v190)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v184 = v177;
      v114 = v177;
      v118 = v217;
      if (v178 < v206 || v179 >= v206)
      {
        a3 = v179;
        swift_arrayInitWithTakeFrontToBack();
        v115 = v204;
        v121 = v216;
      }

      else
      {
        v185 = v178 == v206;
        v115 = v204;
        v121 = v216;
        a3 = v179;
        if (!v185)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v116 = v114;
      v122 = v184 > v121;
      v119 = v203;
      v120 = v208;
      if (!v122)
      {
        a2 = v203;
        goto LABEL_141;
      }
    }

    v138 = v220;
    v139 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v125, v126);
    v140 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v141 = swift_allocObject();
    *(v141 + 16) = v196;
    v220 = v139;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v142 = String.init<A>(describing:)();
    v144 = v143;
    *(v141 + 56) = &type metadata for String;
    *(v141 + 64) = sub_100008C00();
    *(v141 + 32) = v142;
    *(v141 + 40) = v144;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v131 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v140, &_mh_execute_header, v131, "Unable to create unarchiver: %@", 31, 2, v141);

    v201 = 0;
LABEL_100:
    v115 = v204;

    objc_autoreleasePoolPop(v128);
LABEL_101:
    v147 = v199;
    v148 = *v213;
    v149 = v215;
    (*v213)(v199, 1, 1, v215);
    goto LABEL_102;
  }

  v45 = v44 * v42;
  if (a4 < v217 || v217 + v45 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v217)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v207 = a4 + v45;
  v220 = (a4 + v45);
  if (v45 >= 1 && a2 < a3)
  {
    v210 = (v26 + 56);
    v214 = (v26 + 48);
    v199 = (v26 + 32);
    v202 = (v26 + 8);
    v200 = xmmword_101385D80;
    v203 = v42;
    v204 = a3;
    while (1)
    {
      v48 = v211;
      sub_100D11DC8(a2, v211, type metadata accessor for OwnerSharingCircle);
      v216 = a4;
      sub_100D11DC8(a4, v218, type metadata accessor for OwnerSharingCircle);
      v49 = objc_autoreleasePoolPush();
      v50 = *v48;
      v51 = v48[1];
      v52 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v52 != 2 || *(v50 + 16) == *(v50 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v52)
      {
        if (v50 == v50 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v51 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v53 = a2;
      v54 = objc_autoreleasePoolPush();
      v55 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v50, v51);
      v56 = Data._bridgeToObjectiveC()().super.isa;
      v219 = 0;
      v57 = [v55 initForReadingFromData:v56 error:&v219];

      if (!v57)
      {
        break;
      }

      v58 = v219;
      sub_100016590(v50, v51);
      [v57 _enableStrictSecureDecodingMode];
      v59 = [objc_allocWithZone(CKRecord) initWithCoder:v57];
      if (!v59)
      {
        v71 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v72 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v72, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_35;
      }

      v60 = v59;

      objc_autoreleasePoolPop(v54);
      v61 = [v60 modificationDate];

      a2 = v53;
      if (v61)
      {
        v62 = v197;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = 0;
        v25 = v215;
      }

      else
      {
        v63 = 1;
        v25 = v215;
        v62 = v197;
      }

      v74 = *v210;
      (*v210)(v62, v63, 1, v25);
      v112 = v62;
      v73 = v205;
      sub_1000D2AD8(v112, v205, &unk_101696900, &unk_10138B1E0);
      v75 = *v214;
      if ((*v214)(v73, 1, v25) != 1)
      {
        (*v199)(v212, v73, v25);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v75 = *v214;
      if ((*v214)(v73, 1, v25) != 1)
      {
        sub_10000B3A8(v73, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v49);
      v76 = objc_autoreleasePoolPush();
      v77 = *v218;
      v78 = v218[1];
      v79 = v78 >> 62;
      if ((v78 >> 62) > 1)
      {
        if (v79 != 2 || *(v77 + 16) == *(v77 + 24))
        {
LABEL_50:
          v90 = v216;
LABEL_54:
          v100 = v206;
          v74(v206, 1, 1, v25);
LABEL_55:
          Date.init()();
          v101 = a2;
          if (v75(v100, 1, v25) != 1)
          {
            sub_10000B3A8(v100, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v79)
      {
        if (v77 == v77 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v78 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v208 = a2;
      v80 = objc_autoreleasePoolPush();
      v81 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v77, v78);
      v82 = Data._bridgeToObjectiveC()().super.isa;
      v219 = 0;
      v83 = [v81 initForReadingFromData:v82 error:&v219];

      if (!v83)
      {
        v91 = v219;
        v92 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v77, v78);
        v93 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v94 = swift_allocObject();
        *(v94 + 16) = v200;
        v219 = v92;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v95 = String.init<A>(describing:)();
        v97 = v96;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_100008C00();
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v83 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v83, "Unable to create unarchiver: %@", 31, 2, v94);

        v201 = 0;
LABEL_53:
        a2 = v208;

        objc_autoreleasePoolPop(v80);
        v25 = v215;
        v90 = v216;
        goto LABEL_54;
      }

      v84 = v219;
      sub_100016590(v77, v78);
      [v83 _enableStrictSecureDecodingMode];
      v85 = [objc_allocWithZone(CKRecord) initWithCoder:v83];
      if (!v85)
      {
        v98 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v99 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v99, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_53;
      }

      v86 = v85;

      objc_autoreleasePoolPop(v80);
      v87 = [v86 modificationDate];

      a2 = v208;
      if (v87)
      {
        v88 = v198;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = 0;
        v25 = v215;
        v90 = v216;
      }

      else
      {
        v89 = 1;
        v25 = v215;
        v90 = v216;
        v88 = v198;
      }

      v74(v88, v89, 1, v25);
      v113 = v88;
      v100 = v206;
      sub_1000D2AD8(v113, v206, &unk_101696900, &unk_10138B1E0);
      if (v75(v100, 1, v25) == 1)
      {
        goto LABEL_55;
      }

      v101 = a2;
      (*v199)(v213, v100, v25);
LABEL_57:
      v102 = v204;
      objc_autoreleasePoolPop(v76);
      v104 = v212;
      v103 = v213;
      v105 = static Date.> infix(_:_:)();
      v106 = *v202;
      (*v202)(v103, v25);
      v106(v104, v25);
      sub_100018D00(v218, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v211, type metadata accessor for OwnerSharingCircle);
      if (v105)
      {
        v107 = v203;
        v108 = v101;
        a2 = v101 + v203;
        v109 = v217;
        if (v217 < v101 || v217 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v90;
        }

        else
        {
          a4 = v90;
          if (v217 != v108)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v107 = v203;
        v110 = v90 + v203;
        v109 = v217;
        a2 = v101;
        if (v217 < v90 || v217 >= v110)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v217 != v90)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v221 = v110;
        a4 = v90 + v107;
      }

      v111 = v109 + v107;
      v222 = v111;
      if (a4 < v207)
      {
        v217 = v111;
        if (a2 < v102)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v64 = v219;
    v65 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v50, v51);
    v66 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v67 = swift_allocObject();
    *(v67 + 16) = v200;
    v219 = v65;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v68 = String.init<A>(describing:)();
    v70 = v69;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100008C00();
    *(v67 + 32) = v68;
    *(v67 + 40) = v70;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v57 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v57, "Unable to create unarchiver: %@", 31, 2, v67);

    v201 = 0;
LABEL_35:
    a2 = v53;

    objc_autoreleasePoolPop(v54);
    v25 = v215;
LABEL_36:
    v73 = v205;
    v74 = *v210;
    (*v210)(v205, 1, 1, v25);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AA84(&v222, &v221, &v220);
  return 1;
}

uint64_t sub_100D0DF44(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100D0E130@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1000BC4D4(&qword_1016A5AA8, &qword_1013B35D0) + 48);
  v5 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
  v6 = *a1;
  result = sub_100D11DC8(&a1[v4], &a2[*(v5 + 48)], type metadata accessor for BookmarkMetaData);
  *a2 = v6;
  return result;
}

uint64_t sub_100D0E1B4(_OWORD *a1)
{
  v2 = type metadata accessor for AES.GCM.SealedBox();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AES.GCM.Nonce();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymmetricKey256();
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  *&v32 = KeyRepresenting.rawValue.getter();
  *(&v32 + 1) = v14;
  SymmetricKey.init<A>(data:)();
  v35 = a1[3];
  v32 = a1[3];
  sub_1001022C4(&v35, &v31);
  sub_1000E0A3C();
  v15 = v36;
  AES.GCM.Nonce.init<A>(data:)();
  if (!v15)
  {
    v36 = v10;
    v25 = v2;
    v17 = v27;
    v16 = v28;
    (*(v27 + 16))(v7, v9, v28);
    v18 = a1[1];
    v33 = a1[2];
    v34 = v18;
    v19 = a1[1];
    v31 = a1[2];
    v32 = v19;
    sub_1001022C4(&v34, v30);
    sub_1001022C4(&v33, v30);
    AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
    v21 = v17;
    v22 = v16;
    v23 = static AES.GCM.open(_:using:)();
    v10 = v36;
    v2 = v23;
    (*(v26 + 8))(v29, v25);
    (*(v21 + 8))(v9, v22);
  }

  (*(v11 + 8))(v13, v10);
  return v2;
}

uint64_t sub_100D0E5C0@<X0>(unint64_t a1@<X0>, unint64_t isUniquelyReferenced_nonNull_native@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for KeyDropJoinToken(0);
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v9;
  v10 = type metadata accessor for SharingCircleSecretValue(0);
  v82 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694DF8 != -1)
  {
LABEL_53:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BF08);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v81 = v10;
  if (!v16)
  {

    v18 = *(a1 + 16);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_46:

    v68 = 0;
    v66 = 0;
    v64 = 0;
    v21 = _swiftEmptyDictionarySingleton;
    v63 = _swiftEmptyArrayStorage;
    v69 = 0xF000000000000000;
    v67 = 0xF000000000000000;
    v65 = 0xF000000000000000;
LABEL_47:
    *isUniquelyReferenced_nonNull_native = v64;
    *(isUniquelyReferenced_nonNull_native + 8) = v65;
    *(isUniquelyReferenced_nonNull_native + 16) = v66;
    *(isUniquelyReferenced_nonNull_native + 24) = v67;
    *(isUniquelyReferenced_nonNull_native + 32) = v63;
    *(isUniquelyReferenced_nonNull_native + 40) = v68;
    *(isUniquelyReferenced_nonNull_native + 48) = v69;
    *(isUniquelyReferenced_nonNull_native + 56) = v21;
    return result;
  }

  v17 = swift_slowAlloc();
  *v17 = 134217984;
  *(v17 + 4) = *(a1 + 16);

  _os_log_impl(&_mh_execute_header, v14, v15, "Initializing SharingCircleKeychain with %ld secretValues.", v17, 0xCu);
  v10 = v81;

  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_46;
  }

LABEL_4:
  v70 = isUniquelyReferenced_nonNull_native;
  v79 = 0;
  v86 = 0;
  v88 = 0;
  v19 = 0;
  isUniquelyReferenced_nonNull_native = v82;
  v20 = a1 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
  v91 = _swiftEmptyArrayStorage;
  v78 = 0xF000000000000000;
  v21 = _swiftEmptyDictionarySingleton;
  v84 = v20;
  v85 = 0xF000000000000000;
  v87 = 0xF000000000000000;
  v80 = a1;
  v83 = v18;
  while (1)
  {
    if (v19 >= *(a1 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_100D11DC8(v20 + *(isUniquelyReferenced_nonNull_native + 72) * v19, v12, type metadata accessor for SharingCircleSecretValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100006654(v88, v87);
        v23 = *v12;
        v87 = v12[1];
        v88 = v23;
        goto LABEL_6;
      }

      v40 = *v12;
      v10 = v12[1];
      sub_100017D5C(*v12, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v21;
      v41 = sub_100771F0C(8);
      v43 = v21[2];
      v44 = (v42 & 1) == 0;
      v38 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v38)
      {
        goto LABEL_50;
      }

      a1 = v42;
      if (v21[3] >= v45)
      {
        v20 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = v41;
          sub_101005AF8();
          v20 = v84;
          v41 = v61;
        }

        isUniquelyReferenced_nonNull_native = v82;
        v21 = v89;
        if ((a1 & 1) == 0)
        {
LABEL_25:
          v21[(v41 >> 6) + 8] |= 1 << v41;
          *(v21[6] + v41) = 8;
          v47 = (v21[7] + 16 * v41);
          *v47 = v40;
          v47[1] = v10;
          sub_100006654(v86, v85);
          v48 = v21[2];
          v38 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v38)
          {
            goto LABEL_52;
          }

          v21[2] = v49;
          goto LABEL_36;
        }
      }

      else
      {
        sub_100FE7570(v45, isUniquelyReferenced_nonNull_native);
        v41 = sub_100771F0C(8);
        if ((a1 & 1) != (v46 & 1))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = v82;
        v20 = v84;
        v21 = v89;
        if ((a1 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v55 = (v21[7] + 16 * v41);
      v56 = *v55;
      v57 = v55[1];
      *v55 = v40;
      v55[1] = v10;
      sub_100016590(v56, v57);
      sub_100006654(v86, v85);
LABEL_36:
      v85 = v10;
      v86 = v40;
      a1 = v80;
      v10 = v81;
      goto LABEL_42;
    }

LABEL_5:
    sub_100018D00(v12, type metadata accessor for SharingCircleSecretValue);
LABEL_6:
    if (v18 == ++v19)
    {

      isUniquelyReferenced_nonNull_native = v70;
      v63 = v91;
      v65 = v87;
      v64 = v88;
      v67 = v85;
      v66 = v86;
      v69 = v78;
      v68 = v79;
      goto LABEL_47;
    }
  }

  if ((EnumCaseMultiPayload - 5) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v50 = v76;
    sub_100D12974(v12, v76, type metadata accessor for KeyDropJoinToken);
    sub_100D11DC8(v50, v77, type metadata accessor for KeyDropJoinToken);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v51 = v91;
    }

    else
    {
      v51 = sub_100A5B698(0, v91[2] + 1, 1, v91);
    }

    v53 = v51[2];
    v52 = v51[3];
    v91 = v51;
    if (v53 >= v52 >> 1)
    {
      v91 = sub_100A5B698((v52 > 1), v53 + 1, 1, v91);
    }

    sub_100018D00(v76, type metadata accessor for KeyDropJoinToken);
    v54 = v91;
    v91[2] = v53 + 1;
    sub_100D12974(v77, v54 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53, type metadata accessor for KeyDropJoinToken);
    v18 = v83;
    v20 = v84;
    goto LABEL_6;
  }

  v25 = *v12;
  v24 = v12[1];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v26 = PropertyListEncoder.init()();
  v89 = v25;
  v90 = v24;
  sub_10049DF20();
  v27 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v75 = v3;
  if (v3)
  {

    sub_100006654(v88, v87);
    sub_100006654(v86, v85);
    sub_100006654(v79, v78);

    return sub_100016590(v25, v24);
  }

  v3 = v27;
  a1 = v28;
  v73 = v24;
  v74 = v26;
  v72 = v25;
  sub_100017D5C(v27, v28);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v21;
  isUniquelyReferenced_nonNull_native = sub_100771F0C(10);
  v30 = v21[2];
  v31 = (v29 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_51;
  }

  v33 = v29;
  if (v21[3] >= v32)
  {
    v20 = v84;
    if ((v10 & 1) == 0)
    {
      sub_101005AF8();
      v20 = v84;
    }

    v10 = v81;
    v21 = v89;
    if ((v33 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_40:
    v58 = (v21[7] + 16 * isUniquelyReferenced_nonNull_native);
    v59 = *v58;
    v60 = v58[1];
    *v58 = v3;
    v58[1] = a1;
    sub_100016590(v59, v60);
    sub_100006654(v79, v78);

    sub_100016590(v3, a1);
LABEL_41:
    v78 = v73;
    v79 = v72;
    v3 = v75;
    a1 = v80;
    isUniquelyReferenced_nonNull_native = v82;
LABEL_42:
    v18 = v83;
    goto LABEL_6;
  }

  sub_100FE7570(v32, v10);
  v34 = sub_100771F0C(10);
  if ((v33 & 1) != (v35 & 1))
  {
    goto LABEL_55;
  }

  isUniquelyReferenced_nonNull_native = v34;
  v10 = v81;
  v20 = v84;
  v21 = v89;
  if (v33)
  {
    goto LABEL_40;
  }

LABEL_19:
  v21[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
  *(v21[6] + isUniquelyReferenced_nonNull_native) = 10;
  v36 = (v21[7] + 16 * isUniquelyReferenced_nonNull_native);
  *v36 = v3;
  v36[1] = a1;
  sub_100006654(v79, v78);

  sub_100016590(v3, a1);
  v37 = v21[2];
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (!v38)
  {
    v21[2] = v39;
    goto LABEL_41;
  }

  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0EDD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for BookmarkMetaData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016B9B70, &unk_1013E36F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39 = a1;
  v40 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v41 = v18;
  v42 = 0;
  v43 = v21 & v19;
  v44 = a2;
  v45 = a3;

  v38 = a3;

  while (1)
  {
    sub_10061D19C(v16);
    v22 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_1000128F8(v39);
    }

    v23 = *v16;
    sub_100D12974(&v16[*(v22 + 48)], v13, type metadata accessor for BookmarkMetaData);
    v24 = *a5;
    v26 = sub_100771F0C(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_101005B0C();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_100729120(v13, v33[7] + *(v11 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_100FE7AB0(v29, a4 & 1);
      v31 = sub_100771F0C(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + v26) = v23;
      sub_100D12974(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for BookmarkMetaData);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = type metadata accessor for EncryptedData();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v27 = a1;
    v36 = _swiftEmptyArrayStorage;
    sub_101123D90(0, v9, 0);
    v10 = v36;
    v29 = (v6 + 8);
    v30 = type metadata accessor for PropertyListDecoder();
    v11 = (a2 + 48);
    v28 = v8;
    while (1)
    {
      v13 = *(v11 - 2);
      v12 = *(v11 - 1);
      v14 = *v11;
      swift_allocObject();
      sub_100017D5C(v12, v14);
      v15 = PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
      v16 = v35;
      a1 = v15;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v16)
      {
        break;
      }

      v33 = v9;
      v17 = v8;
      v18 = EncryptedData.decrypt(key:)();
      v35 = 0;
      v19 = v18;
      v21 = v20;

      (*v29)(v17, v34);
      sub_100016590(v12, v14);
      v36 = v10;
      v23 = v10[2];
      v22 = v10[3];
      if (v23 >= v22 >> 1)
      {
        sub_101123D90((v22 > 1), v23 + 1, 1);
        v10 = v36;
      }

      v11 += 3;
      v10[2] = v23 + 1;
      v24 = &v10[3 * v23];
      v24[4] = v13;
      v24[5] = v19;
      v24[6] = v21;
      v9 = v33 - 1;
      v8 = v28;
      if (v33 == 1)
      {
        return v27;
      }
    }

    v35 = v16;

    sub_100016590(v12, v14);
  }

  return a1;
}

unint64_t sub_100D0F3AC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    v19 = sub_100D0F62C(_swiftEmptyArrayStorage, sub_100B31FBC, &qword_1016B9BC0, &qword_1013E3730, sub_101123DF0);
    v21 = v20;
    v23 = v22;

    return sub_1013131C0(v19, v21, v23);
  }

  v27 = v1;
  v28 = *(v1 + 16);
  result = sub_101123E28(0, v2, 0);
  v4 = v27;
  v5 = v28;
  v6 = 0;
  v7 = (v27 + 48);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v7 >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 6)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123E28((v15 > 1), v16 + 1, 1);
      v4 = v27;
      v5 = v28;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    v7 += 9;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(v7 - 1), *v7);
  v4 = v27;
  v5 = v28;
  if (v14 == 6)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_28:
    v18 = BYTE6(v10);
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_29:
    sub_100018350();
    swift_allocError();
    *v26 = 6;
    *(v26 + 8) = v18;
    *(v26 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100D0F62C(void *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v71 = a1;

  sub_100C712F8(&v71, a2, a3, a4);
  v10 = v71;
  v11 = v71[2];
  if (!v11)
  {
LABEL_23:

    return 0;
  }

  v12 = &v71[3 * v11];
  v13 = v12[1];
  v14 = v13 + 1;
  if (v13 == -1)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = v12[2];
  v15 = v12[3];
  swift_retain_n();
  v69 = v16;
  v70 = v15;
  sub_100017D5C(v16, v15);
  v17 = &v10[3 * v11 + 6];
  do
  {
    v18 = v11;
    v19 = v17;
    if (!v11)
    {
      break;
    }

    if (v11 > v10[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v21 = *(v17 - 40);
    v20 = *(v17 - 32);
    v22 = *(v17 - 24);
    sub_100017D5C(v20, v22);
    sub_100016590(v20, v22);
    if (v21 == -1)
    {
      goto LABEL_44;
    }

    v17 = (v19 - 3);
    v11 = v18 - 1;
    v23 = v21 + 1 == v14;
    v14 = v21;
  }

  while (v23);

  v14 = a1[2];
  v24 = v14 - v18;
  if (v14 <= v18)
  {
    goto LABEL_47;
  }

  v25 = v10[2];

  if (v25 < v18 || v25 < v14)
  {
    goto LABEL_48;
  }

  v71 = _swiftEmptyArrayStorage;
  sub_101123BF8(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    goto LABEL_49;
  }

  v65 = a5;
  v27 = v71;
  v28 = v19;
  v67 = v14 - v18;
  v29 = v14 - v18;
  do
  {
    v31 = *(v28 - 2);
    v30 = *(v28 - 1);
    v32 = *v28;
    sub_100017D5C(v30, *v28);
    sub_100016590(v30, v32);
    v71 = v27;
    v34 = v27[2];
    v33 = v27[3];
    if (v34 >= v33 >> 1)
    {
      sub_101123BF8((v33 > 1), v34 + 1, 1);
      v27 = v71;
    }

    v28 += 3;
    v27[2] = v34 + 1;
    v27[v34 + 4] = v31;
    --v29;
  }

  while (v29);
  v68 = sub_10030BAAC(v27);
  v36 = v35;

  if (v36)
  {
    goto LABEL_22;
  }

  v37 = _swiftEmptyArrayStorage;
  v38 = v14 - v18;
  if (v14 != v18)
  {
    v71 = _swiftEmptyArrayStorage;
    sub_101123BF8(0, v67, 0);
    v37 = v71;
    v43 = v19;
    do
    {
      v45 = *(v43 - 2);
      v44 = *(v43 - 1);
      v46 = *v43;
      sub_100017D5C(v44, *v43);
      sub_100016590(v44, v46);
      v71 = v37;
      v48 = v37[2];
      v47 = v37[3];
      if (v48 >= v47 >> 1)
      {
        sub_101123BF8((v47 > 1), v48 + 1, 1);
        v37 = v71;
      }

      v43 += 3;
      v37[2] = v48 + 1;
      v37[v48 + 4] = v45;
      --v38;
    }

    while (v38);
  }

  v39 = sub_1012BAA64(v37);
  v41 = v40;

  if (v41)
  {
LABEL_22:
    sub_100016590(v69, v70);
    goto LABEL_23;
  }

  v64 = v39;
  if (v39 < v68)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_32;
  }

  if (v14 != v18)
  {
    v71 = _swiftEmptyArrayStorage;
    v65(0, v67, 0);
    v58 = v71;
    while (v18 < v14)
    {
      v60 = *(v19 - 1);
      v59 = *v19;
      sub_100017D5C(v60, *v19);
      sub_100017D5C(v60, v59);
      sub_100016590(v60, v59);
      v71 = v58;
      v62 = v58[2];
      v61 = v58[3];
      if (v62 >= v61 >> 1)
      {
        v65(v61 > 1, v62 + 1, 1);
        v58 = v71;
      }

      v58[2] = v62 + 1;
      v63 = &v58[2 * v62];
      v63[4] = v60;
      v63[5] = v59;
      ++v18;
      v19 += 3;
      if (v14 == v18)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_45;
  }

LABEL_31:
  if (qword_101694DF8 != -1)
  {
    goto LABEL_51;
  }

LABEL_32:
  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177BF08);
  swift_bridgeObjectRetain_n();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v52 = 136315906;
    v74 = v68;
    v75 = v66;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = v64;
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 3026478;
    v53._object = 0xE300000000000000;
    String.append(_:)(v53);
    _print_unlocked<A, B>(_:_:)();
    v54 = sub_1000136BC(v71, v72, &v75);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2048;

    *(v52 + 14) = v14;

    *(v52 + 22) = 2048;
    v55 = v64 - v68;
    if ((v64 - v68) < 0)
    {
      __break(1u);
    }

    else
    {
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (!v56)
      {
        *(v52 + 24) = v57;
        *(v52 + 32) = 2048;

        *(v52 + 34) = v14;

        _os_log_impl(&_mh_execute_header, v50, v51, "Retaining range: %s out of possible %ld. %ld / %ld.", v52, 0x2Au);
        sub_100007BAC(v66);

        sub_100016590(v69, v70);

        return v68;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_100016590(v69, v70);

    swift_bridgeObjectRelease_n();

    return v68;
  }

  return result;
}

unint64_t sub_100D0FC60(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    v19 = sub_100D0F62C(_swiftEmptyArrayStorage, sub_100B31FD0, &qword_1016B9BC8, &unk_1013E3738, sub_101123E68);
    v21 = v20;
    v23 = v22;

    return sub_1013131C0(v19, v21, v23);
  }

  v27 = v1;
  v28 = *(v1 + 16);
  result = sub_101123EA0(0, v2, 0);
  v4 = v27;
  v5 = v28;
  v6 = 0;
  v7 = (v27 + 48);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v7 >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 32)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123EA0((v15 > 1), v16 + 1, 1);
      v4 = v27;
      v5 = v28;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    v7 += 9;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(v7 - 1), *v7);
  v4 = v27;
  v5 = v28;
  if (v14 == 32)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_28:
    v18 = BYTE6(v10);
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_29:
    sub_100018350();
    swift_allocError();
    *v26 = 32;
    *(v26 + 8) = v18;
    *(v26 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_100D0FEE0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for KeyDropInterface.KeyPackage(0) + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = v1;
  v23 = *(v1 + 16);
  result = sub_101123EE0(0, v2, 0);
  v4 = v22;
  v5 = v23;
  v6 = 0;
  for (i = (v22 + 48); ; i += 9)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v11 = *i >> 62;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_32;
      }

      v14 = HIDWORD(v8) - v8;
      goto LABEL_14;
    }

    if (BYTE6(v10) != 28)
    {
      goto LABEL_19;
    }

LABEL_15:
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_101123EE0((v15 > 1), v16 + 1, 1);
      v4 = v22;
      v5 = v23;
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[3 * v16];
    v17[4] = v9;
    v17[5] = v8;
    v17[6] = v10;
    if (v5 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (v11 != 2)
  {
    v18 = 0;
    goto LABEL_28;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_31;
  }

LABEL_14:
  result = sub_100017D5C(*(i - 1), *i);
  v4 = v22;
  v5 = v23;
  if (v14 == 28)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11 == 2)
  {
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
LABEL_27:
    v18 = BYTE6(v10);
    goto LABEL_28;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = HIDWORD(v8) - v8;
LABEL_28:
    sub_100018350();
    swift_allocError();
    *v21 = 28;
    *(v21 + 8) = v18;
    *(v21 + 16) = 0;
    swift_willThrow();
    sub_100016590(v8, v10);

    return _swiftEmptyArrayStorage;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_100D100F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v110 = a3;
  v109 = a2;
  v105 = type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member(0);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v106 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for EncryptedData();
  v134 = *(v123 - 8);
  __chkstk_darwin(v123);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  v129 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v132 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v103 - v12;
  v14 = __chkstk_darwin(v11);
  v126 = &v103 - v15;
  v16 = __chkstk_darwin(v14);
  v117 = &v103 - v17;
  __chkstk_darwin(v16);
  v119 = &v103 - v18;
  v120 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v19 = __chkstk_darwin(v120);
  v133 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v103 - v22;
  __chkstk_darwin(v21);
  v25 = &v103 - v24;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v122 = v8;
  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177BF08);
  sub_100D11DC8(v131, v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_bridgeObjectRetain_n();
  v127 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v121 = v7;
  v118 = v13;
  v130 = v23;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v135[0] = swift_slowAlloc();
    *v31 = 141558787;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
    v35 = sub_1000136BC(v32, v34, v135);
    v23 = v130;

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    v36 = Array.description.getter();
    v38 = sub_1000136BC(v36, v37, v135);

    *(v31 + 24) = v38;
    *(v31 + 32) = 2048;
    v39 = *(a1 + 16);

    *(v31 + 34) = v39;

    _os_log_impl(&_mh_execute_header, v28, v29, "Processing shareId: %{private,mask.hash}s,\nmembers: %s, count: %ld.", v31, 0x2Au);
    swift_arrayDestroy();

    v7 = v121;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v41 = *(a1 + 16);
  v42 = v126;
  if (!v41)
  {
    return _swiftEmptyArrayStorage;
  }

  v128 = 0;
  v43 = a1 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  v108 = (v134 + 8);
  v107 = _swiftEmptyArrayStorage;
  v129 = *(v129 + 72);
  *&v40 = 141558787;
  v112 = v40;
  *&v40 = 141559555;
  v111 = v40;
  v44 = v122;
  v46 = v132;
  v45 = v133;
  v47 = v119;
  do
  {
    v134 = v41;
    sub_100D11DC8(v43, v47, type metadata accessor for KeyDropDownloadResponse.Member);
    v49 = (v47 + *(v44 + 24));
    v50 = v49[1];
    if (v50 >> 60 == 15)
    {
      sub_100D11DC8(v131, v45, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v47, v46, type metadata accessor for KeyDropDownloadResponse.Member);
      v51 = Logger.logObject.getter();
      v52 = v47;
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v53))
      {
        v54 = swift_slowAlloc();
        v135[0] = swift_slowAlloc();
        *v54 = v112;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        sub_100018D00(v133, type metadata accessor for SharingCircleKeyManager.Instruction);
        v58 = sub_1000136BC(v55, v57, v135);
        v44 = v122;

        *(v54 + 14) = v58;
        *(v54 + 22) = 2160;
        *(v54 + 24) = 1752392040;
        *(v54 + 32) = 2081;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        sub_100018D00(v132, type metadata accessor for KeyDropDownloadResponse.Member);
        v62 = sub_1000136BC(v59, v61, v135);
        v42 = v126;

        *(v54 + 34) = v62;
        _os_log_impl(&_mh_execute_header, v51, v53, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s not yet accepted.", v54, 0x2Au);
        swift_arrayDestroy();
        v46 = v132;

        v45 = v133;

        v48 = v52;
        v7 = v121;
      }

      else
      {

        sub_100018D00(v46, type metadata accessor for KeyDropDownloadResponse.Member);
        sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
        v48 = v52;
      }

      sub_100018D00(v48, type metadata accessor for KeyDropDownloadResponse.Member);
      v47 = v52;
      v23 = v130;
    }

    else
    {
      v63 = *v49;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(v63, v50);
      PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
      v124 = v63;
      v125 = v50;
      v64 = v128;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v64)
      {

        v128 = 0;
        sub_100D11DC8(v131, v23, type metadata accessor for SharingCircleKeyManager.Instruction);
        v68 = v47;
        v69 = v47;
        v70 = v117;
        sub_100D11DC8(v68, v117, type metadata accessor for KeyDropDownloadResponse.Member);
        sub_100D11DC8(v69, v42, type metadata accessor for KeyDropDownloadResponse.Member);
        v71 = v118;
        sub_100D11DC8(v69, v118, type metadata accessor for KeyDropDownloadResponse.Member);
        swift_errorRetain();
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v135[0] = v116;
          *v74 = v111;
          *(v74 + 4) = 1752392040;
          *(v74 + 12) = 2081;
          v114 = v73;
          type metadata accessor for UUID();
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v113 = v72;
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v76;
          sub_100018D00(v130, type metadata accessor for SharingCircleKeyManager.Instruction);
          v78 = sub_1000136BC(v75, v77, v135);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2160;
          *(v74 + 24) = 1752392040;
          *(v74 + 32) = 2081;
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          sub_100018D00(v70, type metadata accessor for KeyDropDownloadResponse.Member);
          v82 = sub_1000136BC(v79, v81, v135);

          *(v74 + 34) = v82;
          *(v74 + 42) = 2080;
          v83 = v126;
          v44 = v122;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          v87 = v83;
          sub_100018D00(v83, type metadata accessor for KeyDropDownloadResponse.Member);
          v88 = sub_1000136BC(v84, v86, v135);

          *(v74 + 44) = v88;
          *(v74 + 52) = 1024;
          LODWORD(v88) = *(v71 + *(v44 + 20));
          sub_100018D00(v71, type metadata accessor for KeyDropDownloadResponse.Member);
          *(v74 + 54) = v88;
          *(v74 + 58) = 2112;
          swift_errorRetain();
          v89 = _swift_stdlib_bridgeErrorToNSError();
          *(v74 + 60) = v89;
          v90 = v115;
          *v115 = v89;
          v91 = v113;
          _os_log_impl(&_mh_execute_header, v113, v114, "Failed to process members in share-id: %{private,mask.hash}s,\nmember trust memberId: %{private,mask.hash}s,\nmember: %s, owner: %{BOOL}d. %@.", v74, 0x44u);
          sub_10000B3A8(v90, &qword_10169BB30, &unk_10138B3C0);

          swift_arrayDestroy();

          v7 = v121;

          sub_100006654(v124, v125);

          v47 = v119;
          v23 = v130;
          sub_100018D00(v119, type metadata accessor for KeyDropDownloadResponse.Member);
          v42 = v87;
          v46 = v132;
        }

        else
        {
          sub_100018D00(v71, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100006654(v124, v125);

          v42 = v126;
          sub_100018D00(v126, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100018D00(v70, type metadata accessor for KeyDropDownloadResponse.Member);
          sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
          v47 = v119;
          sub_100018D00(v119, type metadata accessor for KeyDropDownloadResponse.Member);
        }

        v45 = v133;
      }

      else
      {
        v65 = EncryptedData.decrypt(key:)();
        v67 = v66;
        sub_100D137EC();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v128 = 0;
        (*v108)(v7, v123);
        sub_100016590(v65, v67);

        v92 = v135[0];
        v93 = v135[1];
        v94 = *(v47 + *(v44 + 20));
        v95 = type metadata accessor for UUID();
        v96 = v106;
        (*(*(v95 - 8) + 16))(v106, v47, v95);
        v97 = v105;
        *(v96 + *(v105 + 20)) = v94;
        v98 = (v96 + *(v97 + 24));
        *v98 = v92;
        v98[1] = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100A5B9AC(0, v107[2] + 1, 1, v107);
        }

        v46 = v132;
        v45 = v133;
        v42 = v126;
        v100 = v107[2];
        v99 = v107[3];
        if (v100 >= v99 >> 1)
        {
          v107 = sub_100A5B9AC((v99 > 1), v100 + 1, 1, v107);
        }

        sub_100006654(v124, v125);
        sub_100018D00(v47, type metadata accessor for KeyDropDownloadResponse.Member);
        v101 = v107;
        v107[2] = v100 + 1;
        sub_100D12974(v106, v101 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v100, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      }
    }

    v43 += v129;
    v41 = v134 - 1;
  }

  while (v134 != 1);
  return v107;
}

Swift::Int sub_100D110E8(uint64_t a1, char a2)
{
  v3 = *(a1 + *(type metadata accessor for OwnerSharingCircle(0) + 28));
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v4 = &off_101607968;
      goto LABEL_11;
    }

    v5 = &off_101607940;
    v6 = &off_101607910;
  }

  else
  {
    if (!v3)
    {
      v4 = &off_101607898;
      goto LABEL_11;
    }

    v5 = &off_1016078E8;
    v6 = &off_1016078C0;
  }

  if (a2)
  {
    v4 = v6;
  }

  else
  {
    v4 = v5;
  }

LABEL_11:

  return sub_100B04978(v4);
}

void sub_100D11184()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177AE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching AuthKit account", v3, 2u);
  }

  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_altDSID];

    if (!v6 || (v7 = [objc_opt_self() sharedInstance], v8 = objc_msgSend(v7, "authKitAccountWithAltDSID:", v6), v7, v6, !v8))
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "AuthKit account not found", v11, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D11380(uint64_t a1@<X8>)
{
  sub_100D11184();
  if (!v2)
  {
    v6 = 0;
    v8 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return;
  }

  v3 = v2;
  v4 = [v2 aa_formattedUsername];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = objc_opt_self();
    v10 = [v9 sharedInstance];
    v11 = [v10 phoneAsAppleIDForAccount:v3];

    if (v11)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177AE28);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Account is MAKO", v15, 2u);
      }

      v16 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_25;
    }

    v19 = [v9 sharedInstance];
    v20 = [v19 additionalInfoForAccount:v3];

    if (v20)
    {
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v21 + 16))
      {
        goto LABEL_19;
      }

      v22 = sub_100771D58(0x6D754E656E6F6870, 0xEC00000073726562);
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_100013894(*(v21 + 56) + 32 * v22, v33);

      sub_1000BC4D4(&qword_1016A3EE8, &unk_1013E3660);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (!*(v31 + 16) || (v24 = *(v31 + 32), , , !*(v24 + 16)) || (v25 = sub_100771D58(0x6D754E656E6F6870, 0xEB00000000726562), (v26 & 1) == 0))
      {
LABEL_19:

        goto LABEL_20;
      }

      sub_100013894(*(v24 + 56) + 32 * v25, v33);

      if (swift_dynamicCast())
      {

        v16 = v31;
        v17 = v32;
        v18 = 2;
        goto LABEL_25;
      }
    }

LABEL_20:
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AE28);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Account has no phone number associated", v30, 2u);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

void *sub_100D11764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  v62 = a2;
  v6 = sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v59 = v54 - v11;
  v12 = __chkstk_darwin(v10);
  v60 = v54 - v13;
  __chkstk_darwin(v12);
  v61 = v54 - v14;
  v15 = type metadata accessor for EncryptedData();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v19)
  {
    v79 = _swiftEmptyArrayStorage;
    v57 = v9;
    sub_101123DD0(0, v19, 0);
    v21 = a1 + 32;
    v56 = (v16 + 56);
    v75 = v79;
    v22 = (v16 + 48);
    v58 = (v16 + 8);
    v23 = v19 - 1;
    v55 = (v16 + 48);
    v74 = v18;
    while (1)
    {
      v24 = *(v21 + 16);
      v77[0] = *v21;
      v77[1] = v24;
      v25 = *(v21 + 48);
      v77[2] = *(v21 + 32);
      v77[3] = v25;
      v78 = *(v21 + 64);
      sub_1003914F8(v77, v76);
      Data.spEncrypt(key:ivLength:)();
      v26 = v61;
      if (v4)
      {
        break;
      }

      v73 = v23;
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      v27 = PropertyListEncoder.init()();
      sub_100D13BF8(&qword_1016B9AF0, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
      v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v69 = v29;
      v70 = v28;
      v71 = 0;
      v72 = v21;
      v68 = *&v77[0];
      (*v56)(v26, 1, 1, v15);
      v30 = v60;
      sub_1000D2A70(v26, v60, &qword_1016B9AE8, &unk_1013E35D0);
      v31 = *v22;
      v32 = (*v22)(v30, 1, v15);
      v33 = v58;
      if (v32 == 1)
      {
        sub_10000B3A8(v30, &qword_1016B9AE8, &unk_1013E35D0);
        v67 = 0;
        v66 = 0xF000000000000000;
      }

      else
      {
        v67 = EncryptedData.cipherText.getter();
        v66 = v34;
        (*v33)(v30, v15);
      }

      v35 = v59;
      sub_1000D2A70(v26, v59, &qword_1016B9AE8, &unk_1013E35D0);
      if (v31(v35, 1, v15) == 1)
      {
        sub_10000B3A8(v35, &qword_1016B9AE8, &unk_1013E35D0);
        v65 = 0;
        v64 = 0xF000000000000000;
      }

      else
      {
        v65 = EncryptedData.initializationVector.getter();
        v64 = v36;
        (*v33)(v35, v15);
      }

      v37 = v57;
      sub_1000D2A70(v26, v57, &qword_1016B9AE8, &unk_1013E35D0);
      if (v31(v37, 1, v15) == 1)
      {
        sub_10000B3A8(v26, &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v37, &qword_1016B9AE8, &unk_1013E35D0);

        v38 = 0;
        v39 = *v33;
        v40 = 0xF000000000000000;
      }

      else
      {
        v41 = EncryptedData.tag.getter();
        v54[1] = v27;
        v42 = v41;
        v43 = v37;
        v44 = v26;
        v40 = v45;
        sub_10000B3A8(v44, &qword_1016B9AE8, &unk_1013E35D0);
        v39 = *v33;
        v46 = v43;
        v38 = v42;
        (*v33)(v46, v15);
      }

      v39(v74, v15);
      sub_100391554(v77);
      result = v75;
      v79 = v75;
      v48 = v75[2];
      v47 = v75[3];
      v49 = v72;
      if (v48 >= v47 >> 1)
      {
        sub_101123DD0((v47 > 1), v48 + 1, 1);
        result = v79;
      }

      result[2] = v48 + 1;
      v50 = &result[9 * v48];
      v51 = v70;
      v50[4] = v68;
      v50[5] = v51;
      v52 = v67;
      v50[6] = v69;
      v50[7] = v52;
      v53 = v65;
      v50[8] = v66;
      v50[9] = v53;
      v50[10] = v64;
      v50[11] = v38;
      v50[12] = v40;
      if (!v73)
      {
        return result;
      }

      v75 = result;
      v23 = v73 - 1;
      v21 = v49 + 72;
      v22 = v55;
      v4 = v71;
    }

    sub_100391554(v77);
  }

  return result;
}

uint64_t sub_100D11DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100D11E30(void (*a1)(void, void), void (*a2)(char *, void), char *a3)
{
  v72 = a2;
  v76 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v67 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v69 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v71 = (&v67 - v16);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  v19 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D11DC8(v76, v22, type metadata accessor for OwnedBeaconRecord);
  v23 = *(v20 + 28);
  v74 = v12;
  v24 = *(v12 + 16);
  v77 = v11;
  v73 = v24;
  v24(v18, &v22[v23], v11);
  v25 = v5;
  v27 = *(v5 + 16);
  v26 = v5 + 16;
  v28 = &v22[*(v20 + 40)];
  v76 = v4;
  v27(v10, v28, v4);
  v29 = v22;
  v30 = v18;
  sub_100018D00(v29, type metadata accessor for OwnedBeaconRecord);
  v31 = *a3;
  v32 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  if (v31)
  {
    v33 = ~(v31 / 0x60);
  }

  else
  {
    v33 = 0;
  }

  v75 = v10;
  v34 = sub_10088756C(v18, v10, &a3[v32], 1uLL);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v35 = v34 + v33;
  DateInterval.start.getter();
  v36 = v75;
  v26 = sub_10088756C(v18, v75, v8, 1uLL);
  v37 = *(v25 + 8);
  v38 = v76;
  v37(v8, v76);
  DateInterval.end.getter();
  v39 = sub_10088756C(v18, v36, v8, 1uLL);
  v70 = v25 + 8;
  v72 = v37;
  result = (v37)(v8, v38);
  v10 = v35;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if ((v35 & 0x8000000000000000) == 0 && v35 >= v26)
  {
    v67 = v39;
    v4 = v77;
    if (qword_101694A18 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177B538);
      v43 = v69;
      v73(v69, v30, v4);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v43;
        v68 = v30;
        v48 = v46;
        v49 = swift_slowAlloc();
        v78 = v49;
        *v48 = 141558787;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v10;
        v53 = v52;
        (*(v74 + 8))(v47, v77);
        v54 = sub_1000136BC(v50, v53, &v78);
        v10 = v51;
        v4 = v77;

        *(v48 + 14) = v54;
        *(v48 + 22) = 2048;
        *(v48 + 24) = v26;
        *(v48 + 32) = 2048;
        *(v48 + 34) = v10;
        _os_log_impl(&_mh_execute_header, v44, v45, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v48, 0x2Au);
        sub_100007BAC(v49);

        v30 = v68;
      }

      else
      {

        (*(v74 + 8))(v43, v4);
      }

      v39 = v67;
      v25 = 1;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v10)
      {
LABEL_17:
        if (v39 < v10)
        {
          if (v25 <= v39)
          {
            v55 = v39;
          }

          else
          {
            v55 = v25;
          }

          goto LABEL_26;
        }
      }

LABEL_21:
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v55 = v39 - v10;
      if (__OFSUB__(v39, v10))
      {
        goto LABEL_36;
      }

      if ((v55 & 0x8000000000000000) == 0)
      {
        if (v25 > v55)
        {
          v55 = v25;
        }

LABEL_26:
        v69 = v55;
        a3 = v71;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_33:
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_1000076D4(v56, qword_10177B538);
        v73(a3, v30, v4);
        v57 = Logger.logObject.getter();
        v58 = v30;
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v30))
        {
          v26 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v78 = v59;
          *v26 = 141559043;
          *(v26 + 4) = 1752392040;
          *(v26 + 12) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v58;
          v61 = v10;
          v10 = v62;
          v63 = v4;
          v4 = *(v74 + 8);
          (v4)(a3, v63);
          v64 = sub_1000136BC(v60, v10, &v78);

          *(v26 + 14) = v64;
          *(v26 + 22) = 2048;
          *(v26 + 24) = v25;
          *(v26 + 32) = 2048;
          v65 = v69;
          *(v26 + 34) = v69;
          *(v26 + 42) = 2048;
          *(v26 + 44) = v61;
          _os_log_impl(&_mh_execute_header, v57, v30, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v26, 0x34u);
          sub_100007BAC(v59);

          v72(v75, v76);
          (v4)(v68, v77);
        }

        else
        {

          v66 = *(v74 + 8);
          v66(a3, v4);
          v72(v75, v76);
          v66(v58, v4);
          v65 = v69;
        }

        if (v65 >= v25)
        {
          return v25;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  v4 = v77;
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v25 = v26 - v35;
  if (__OFSUB__(v26, v35))
  {
    __break(1u);
  }

  else if ((v25 & 0x8000000000000000) == 0)
  {
    if (v35 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100D12680(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = type metadata accessor for EncryptedData();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[1];
  if (v13 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();
  }

  else
  {
    v25 = v10;
    v15 = *a3;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    sub_100017D5C(v15, v13);
    PropertyListEncoder.init()();
    v23 = a1;
    v24 = a2;
    sub_100D12DB0();
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v3)
    {
      v18 = v16;
      v19 = v17;
      sub_100017D5C(v15, v13);
      Data.spEncrypt(key:ivLength:)();
      v22 = v9;
      sub_100006654(v15, v13);
      sub_100D13BF8(&qword_1016B9AF0, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
      v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      (*(v22 + 8))(v12, v25);
      sub_100016590(v18, v19);
    }

    sub_100006654(v15, v13);
  }

  return v4;
}

uint64_t sub_100D12974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D129DC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D0108C(a1, a2, v2);
}

unint64_t sub_100D12AA0()
{
  result = qword_1016B9B08;
  if (!qword_1016B9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B08);
  }

  return result;
}

unint64_t sub_100D12B68()
{
  result = qword_1016B9B48;
  if (!qword_1016B9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B48);
  }

  return result;
}

BOOL sub_100D12BE0(unint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v3 >= *(v2 + *(type metadata accessor for KeyDropInterface.KeyAlignment(0) + 20));
}

uint64_t sub_100D12C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D12C9C()
{
  result = qword_1016B9B50;
  if (!qword_1016B9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B50);
  }

  return result;
}

unint64_t sub_100D12CF0()
{
  result = qword_1016B9B58;
  if (!qword_1016B9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B58);
  }

  return result;
}

unint64_t sub_100D12D5C()
{
  result = qword_1016B9B78;
  if (!qword_1016B9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B78);
  }

  return result;
}

unint64_t sub_100D12DB0()
{
  result = qword_1016B9B80;
  if (!qword_1016B9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B80);
  }

  return result;
}

unint64_t sub_100D12E04()
{
  result = qword_1016B9B88;
  if (!qword_1016B9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B88);
  }

  return result;
}

unint64_t sub_100D12E70()
{
  result = qword_1016B9B90;
  if (!qword_1016B9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B90);
  }

  return result;
}

unint64_t sub_100D12EC4()
{
  result = qword_1016B9B98;
  if (!qword_1016B9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9B98);
  }

  return result;
}

unint64_t sub_100D12F40()
{
  result = qword_1016B9BB0;
  if (!qword_1016B9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BB0);
  }

  return result;
}

uint64_t sub_100D12F94()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100C9B8F8(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

uint64_t sub_100D130FC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v21 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v18 = *(*(v2 - 1) + 80);
  v22 = *(*(v2 - 1) + 64);

  v23 = v0;
  v20 = (v21 + 24) & ~v21;
  v3 = v0 + v20;
  sub_100016590(*(v0 + v20), *(v0 + v20 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  v17 = *(*(v9 - 8) + 8);
  v17(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  v15 = (((v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 24) & ~v18;

  v7(v23 + v15, v5);
  v7(v23 + v15 + v2[5], v5);
  v7(v23 + v15 + v2[6], v5);
  v7(v23 + v15 + v2[7], v5);

  v17(v23 + v15 + v2[12], v9);

  return _swift_deallocObject(v23, v15 + v22);
}

uint64_t sub_100D134AC()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014650;

  return sub_100C9B348(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

uint64_t sub_100D13614()
{
  v2 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v6 = (v4 + *(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100C9AD9C(v7, v0 + v3, v9, v10, v11, v0 + v6);
}

unint64_t sub_100D137EC()
{
  result = qword_1016B9BD0;
  if (!qword_1016B9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BD0);
  }

  return result;
}

uint64_t sub_100D13840(uint64_t a1)
{
  v4 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C84D88(a1, v6, v7, v1 + v5);
}

uint64_t sub_100D139A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D13A48(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100C7A0A8(a1, a2, v2);
}

unint64_t sub_100D13B44()
{
  result = qword_1016B9BE0;
  if (!qword_1016B9BE0)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_100D13BF8(&qword_1016B9BE8, type metadata accessor for KeyDropInterface.KeyPackage, &unk_10140EAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9BE0);
  }

  return result;
}

uint64_t sub_100D13BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D13C40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100C76EF8(a1, a2, v2);
}

uint64_t sub_100D13D0C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100C76BD8(a1, a2, v2);
}

uint64_t sub_100D13DD8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D13E88(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100D13F48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100D13F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_100D14018(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100D140E8(319);
    if (v2 <= 0x3F)
    {
      sub_100D14198(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100D140E8(uint64_t a1)
{
  if (!qword_1016B9D00)
  {
    sub_100D14144();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B9D00);
    }
  }
}

unint64_t sub_100D14144()
{
  result = qword_1016B9D08;
  if (!qword_1016B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9D08);
  }

  return result;
}

void sub_100D14198(uint64_t a1)
{
  if (!qword_1016B9D10)
  {
    type metadata accessor for BookmarkMetaData(255);
    sub_100D14144();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B9D10);
    }
  }
}

void sub_100D1422C(uint64_t a1)
{
  sub_100D14328(319, &qword_1016B9DC8, type metadata accessor for KeyDropJoinToken, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100D14328(319, &unk_1016B9DD0, &type metadata accessor for SymmetricKey256, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100D1438C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100D14328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100D1438C()
{
  if (!qword_1016B64C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B64C8);
    }
  }
}

uint64_t sub_100D143DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D14404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D1444C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SharingCircleKeyManager.SharingCircleKeyManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingCircleKeyManager.SharingCircleKeyManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100D14644(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100D146C4()
{
  result = qword_1016B9E98;
  if (!qword_1016B9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9E98);
  }

  return result;
}

unint64_t sub_100D1471C()
{
  result = qword_1016B9EA0;
  if (!qword_1016B9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EA0);
  }

  return result;
}

unint64_t sub_100D14770()
{
  result = qword_1016B9EB0;
  if (!qword_1016B9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EB0);
  }

  return result;
}

unint64_t sub_100D147D8()
{
  result = qword_1016B9EC0;
  if (!qword_1016B9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EC0);
  }

  return result;
}

unint64_t sub_100D14830()
{
  result = qword_1016B9EC8;
  if (!qword_1016B9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9EC8);
  }

  return result;
}

unint64_t sub_100D14888()
{
  result = qword_1016B9ED0;
  if (!qword_1016B9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9ED0);
  }

  return result;
}

uint64_t type metadata accessor for RawSearchResult(uint64_t a1)
{
  result = qword_1016B9F30;
  if (!qword_1016B9F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D149C0(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100D14AF0(319, &qword_1016BA040, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_100D14AF0(319, &unk_1016B9F40, type metadata accessor for BeaconKeyManager.IndexInformation);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          sub_100D14B44();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100D14AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100D14B44()
{
  if (!qword_10169C548)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C548);
    }
  }
}

uint64_t sub_100D14BB8()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177BF20);
  sub_1000076D4(v0, qword_10177BF20);
  return UUID.init()();
}

unint64_t sub_100D14C04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x696669746E656469;
    if (a1 != 8)
    {
      v6 = 1953393000;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656372756F73;
    if (a1 != 5)
    {
      v7 = 0x657461446E616373;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x737574617473;
    v2 = 0x656475746974616CLL;
    v3 = 0x64757469676E6F6CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D617473656D6974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100D14D44(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B9FB0, &qword_1013E3F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100D16314();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for RawSearchResult(0);
    v11[30] = 1;
    type metadata accessor for Date();
    sub_100D1642C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[26] = *(v3 + *(v9 + 36));
    v11[25] = 5;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[24] = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[15] = 7;
    type metadata accessor for BeaconKeyManager.IndexInformation(0);
    sub_100D1642C(&qword_1016B9FB8, type metadata accessor for BeaconKeyManager.IndexInformation, &unk_1014116A8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[14] = 8;
    type metadata accessor for UUID();
    sub_100D1642C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[13] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100D15128(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  Hasher._combine(_:)(*v1);
  v15 = type metadata accessor for RawSearchResult(0);
  sub_100D1642C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v16 = *&v1[v15[6]];
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  Hasher._combine(_:)(*&v16);
  v17 = *&v1[v15[7]];
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  Hasher._combine(_:)(*&v17);
  v18 = *&v1[v15[8]];
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  Hasher._combine(_:)(*&v18);
  Hasher._combine(_:)(v1[v15[9]]);
  sub_1000D2A70(&v1[v15[10]], v14, &unk_101696900, &unk_10138B1E0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v11, v8);
  }

  sub_1000D2A70(&v1[v15[11]], v7, &unk_1016C1120, &qword_1013C49D0);
  v19 = v29;
  if ((*(v28 + 48))(v7, 1, v29) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v7;
    v21 = v27;
    sub_100D162B0(v20, v27);
    Hasher._combine(_:)(1u);
    type metadata accessor for UUID();
    sub_100D1642C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v22 = (v21 + *(v19 + 20));
    sub_1000035D0(v22, v22[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    Hasher._combine(_:)(v30);
    v23 = v22[3];
    v24 = v22[4];
    sub_1000035D0(v22, v23);
    sub_10002BD40(v23, v24);
    String.hash(into:)();

    sub_100D163CC(v21, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  type metadata accessor for UUID();
  sub_100D1642C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v25 = &v2[v15[13]];
  if (v25[1])
  {
    v26 = 0;
  }

  else
  {
    v26 = *v25;
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v26);
}

uint64_t sub_100D15688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for UUID();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v5 - 8);
  v40 = v35 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v41 = v35 - v8;
  v9 = type metadata accessor for Date();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B9F98, &qword_1013E3F28);
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = type metadata accessor for RawSearchResult(0);
  __chkstk_darwin(v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D16314();
  v47 = v14;
  v18 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v19 = v45;
  v36 = v15;
  v37 = v9;
  v48 = v17;
  v59 = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v48;
  *v48 = v20;
  v58 = 1;
  v22 = sub_100D1642C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35[1] = v22;
  v24 = v36;
  (*(v44 + 32))(&v21[v36[5]], v11, v23);
  v57 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v21[v24[6]] = v25;
  v56 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v35[0] = a1;
  *&v21[v24[7]] = v26;
  v55 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v21[v24[8]] = v27;
  v53 = 5;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21[v24[9]] = v54;
  v52 = 6;
  v28 = v41;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v28, &v21[v24[10]], &unk_101696900, &unk_10138B1E0);
  type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v51 = 7;
  sub_100D1642C(&qword_1016B9FA8, type metadata accessor for BeaconKeyManager.IndexInformation, &unk_1014116D0);
  v29 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v29, &v48[v36[11]], &unk_1016C1120, &qword_1013C49D0);
  v50 = 8;
  sub_100D1642C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v42 + 32))(&v48[v36[12]], v30, v43);
  v49 = 9;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v19 + 8))(v47, v46);
  v32 = v48;
  v33 = &v48[v36[13]];
  *v33 = v31;
  v33[1] = HIBYTE(v31) & 1;
  sub_100D16368(v32, v38);
  sub_100007BAC(a1);
  return sub_100D163CC(v32, type metadata accessor for RawSearchResult);
}

uint64_t sub_100D15EBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D16654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D15EF0(uint64_t a1)
{
  v2 = sub_100D16314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D15F2C(uint64_t a1)
{
  v2 = sub_100D16314();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100D15F98()
{
  Hasher.init(_seed:)();
  sub_100D15128(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D15FDC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D15128(v2);
  return Hasher._finalize()();
}

void sub_100D1601C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = type metadata accessor for RawSearchResult(0);
  v5 = *(a1 + v4[6]);
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v5;
  v6 = String.init(format:_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = *(a1 + v4[7]);
  *(v9 + 56) = &type metadata for Double;
  *(v9 + 64) = &protocol witness table for Double;
  *(v9 + 32) = v10;
  v11 = String.init(format:_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(a1 + v4[8]);
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;
  type metadata accessor for Date();
  sub_100D1642C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v19;
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v6;
  v21._object = v8;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 47;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v11;
  v23._object = v13;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10272;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v16;
  v25._object = v18;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  *a2 = v28;
  a2[1] = v29;
}

uint64_t sub_100D16260()
{
  v1 = objc_autoreleasePoolPush();
  sub_100D1601C(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_100D162B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D16314()
{
  result = qword_1016B9FA0;
  if (!qword_1016B9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FA0);
  }

  return result;
}

uint64_t sub_100D16368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D163CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D1642C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D16474(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for RawSearchResult(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *&a1[v4[6]] != *&a2[v4[6]] || *&a1[v4[7]] != *&a2[v4[7]] || *&a1[v4[8]] != *&a2[v4[8]])
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

unint64_t sub_100D16550()
{
  result = qword_1016B9FC0;
  if (!qword_1016B9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FC0);
  }

  return result;
}

unint64_t sub_100D165A8()
{
  result = qword_1016B9FC8;
  if (!qword_1016B9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FC8);
  }

  return result;
}

unint64_t sub_100D16600()
{
  result = qword_1016B9FD0;
  if (!qword_1016B9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9FD0);
  }

  return result;
}

uint64_t sub_100D16654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101347FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657461446E616373 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010136FFA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for BeaconEstimatedLocation(uint64_t a1)
{
  result = qword_1016BA030;
  if (!qword_1016BA030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D16A0C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100157BAC(319);
      if (v3 <= 0x3F)
      {
        sub_100D16AEC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100D16AEC(uint64_t a1)
{
  if (!qword_1016BA048)
  {
    sub_1000BC580(&unk_1016BA050, &qword_1013D4810);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BA048);
    }
  }
}

uint64_t sub_100D16B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_100D16BD0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = __chkstk_darwin(v3 - 8);
  v86 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v81 - v6;
  v8 = type metadata accessor for Date();
  v91 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v88 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v81 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v89 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = v81 - v19;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001013E4030 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      sub_100D19968();
      swift_allocError();
      *v54 = 0;
      goto LABEL_21;
    }
  }

  v84 = v8;
  v22 = [a1 recordID];
  v23 = [v22 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v15;

  UUID.init(uuidString:)();
  v24 = v93;

  v25 = *(v16 + 48);
  if (v25(v14, 1, v24) == 1)
  {
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_100D19968();
    swift_allocError();
    *v26 = 1;
LABEL_21:
    swift_willThrow();

    return;
  }

  v83 = v16;
  v27 = *(v16 + 32);
  v28 = v92;
  v82 = v27;
  v27(v92, v14, v24);
  v29 = [a1 encryptedValues];
  v30 = String._bridgeToObjectiveC()();
  v85 = v29;
  v31 = [v29 objectForKeyedSubscript:v30];

  if (!v31)
  {
    goto LABEL_24;
  }

  v94 = v31;
  v32 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v81[2] = v32;
  v33 = v95;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v85 objectForKeyedSubscript:v34];

  if (!v35)
  {
    goto LABEL_24;
  }

  v94 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v36 = v95;
  v37 = String._bridgeToObjectiveC()();
  v38 = [v85 objectForKeyedSubscript:v37];

  if (!v38)
  {
    goto LABEL_24;
  }

  v94 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v39 = v95;
  v40 = String._bridgeToObjectiveC()();
  v41 = [v85 objectForKeyedSubscript:v40];

  if (!v41)
  {
    (*(v91 + 56))(v7, 1, 1, v84);
    goto LABEL_23;
  }

  v94 = v41;
  v42 = v84;
  v43 = swift_dynamicCast();
  v44 = v91;
  v81[0] = *(v91 + 56);
  v81[1] = v91 + 56;
  (v81[0])(v7, v43 ^ 1u, 1, v42);
  if ((*(v44 + 48))(v7, 1, v42) == 1)
  {
LABEL_23:
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
LABEL_24:
    v55 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    *(v56 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v56 + 64) = sub_10013A2D8();
    *(v56 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v57 = a1;
    v58 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v58, "Invalid BeaconEstimatedLocation - %@", 36, 2, v56);

    sub_100D19968();
    swift_allocError();
    *v59 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  (*(v44 + 32))(v90, v7, v42);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v85 objectForKeyedSubscript:v45];

  if (!v46)
  {
    goto LABEL_19;
  }

  v95 = v46;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v47 = v88;
  UUID.init(uuidString:)();

  v48 = v93;
  if (v25(v47, 1, v93) == 1)
  {
    sub_10000B3A8(v47, &qword_1016980D0, &unk_10138F3B0);
LABEL_19:
    v49 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_101385D80;
    *(v50 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v50 + 64) = sub_10013A2D8();
    *(v50 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v51 = a1;
    v52 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v52, "Invalid associatedBeacon - %@", 29, 2, v50);

    sub_100D19968();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v91 + 8))(v90, v84);
LABEL_25:
    (*(v83 + 8))(v28, v93);
    return;
  }

  v60 = v89;
  v82(v89, v47, v48);
  v61 = objc_autoreleasePoolPush();
  v62 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v62];
  [v62 finishEncoding];
  v63 = [v62 encodedData];
  v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  objc_autoreleasePoolPop(v61);
  v67 = v87;
  *v87 = v64;
  v67[1] = v66;
  v68 = type metadata accessor for BeaconEstimatedLocation(0);
  v69 = v83;
  v70 = *(v83 + 16);
  v71 = v93;
  v70(v67 + v68[5], v92, v93);
  v70(v67 + v68[6], v60, v71);
  *(v67 + v68[7]) = v33;
  *(v67 + v68[8]) = v36;
  *(v67 + v68[9]) = v39;
  v72 = v84;
  (*(v91 + 16))(v67 + v68[10], v90, v84);
  *(v67 + v68[11]) = 7;
  v73 = String._bridgeToObjectiveC()();
  v74 = [v85 objectForKeyedSubscript:v73];

  v75 = v71;
  if (v74)
  {
    v94 = v74;
    v76 = v86;
    v77 = swift_dynamicCast() ^ 1;
    v78 = v76;
  }

  else
  {
    v76 = v86;
    v78 = v86;
    v77 = 1;
  }

  (v81[0])(v78, v77, 1, v72);
  v79 = v68[13];
  sub_1001578A0(v76, v67 + v68[12]);

  swift_unknownObjectRelease();
  v80 = *(v69 + 8);
  v80(v89, v75);
  (*(v91 + 8))(v90, v72);
  v80(v92, v75);
  *(v67 + v79) = _swiftEmptyArrayStorage;
}

void sub_100D177C4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177BF38);
  sub_1000076D4(v0, qword_10177BF38);
  v5 = objc_autoreleasePoolPush();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v1 + 8))(v4, v0);
  objc_autoreleasePoolPop(v5);
}

void sub_100D17938(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  Data.hash(into:)();
  v10 = type metadata accessor for BeaconEstimatedLocation(0);
  type metadata accessor for UUID();
  sub_100D198C8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v11 = *(v1 + v10[7]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v1 + v10[8]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = *(v1 + v10[9]);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  sub_100D198C8(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v10[11]));
  sub_1000D3410(v1 + v10[12], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  v14 = *(v1 + v10[13]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_10083C728(a1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100D17C5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x656475746974616CLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D617473656D6974;
    v2 = 0x6E6F697461636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x657461446E616373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64757469676E6F6CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100D17DA4()
{
  Hasher.init(_seed:)();
  sub_100D17938(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D17DE8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D17938(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100D17EB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EB90(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D17F04(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10076EB90(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100D17F48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D1A100(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D17F78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100D17C5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D17FC0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D1A100(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D17FE8(uint64_t a1)
{
  v2 = sub_100D199BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D18024(uint64_t a1)
{
  v2 = sub_100D199BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D18060(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v79 = *(v4 - 8);
  __chkstk_darwin(v4);
  v67 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v6 = __chkstk_darwin(v78);
  v74 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v73 = &v64[-v8];
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v70 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v66 = &v64[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v64[-v15];
  v17 = __chkstk_darwin(v14);
  v71 = &v64[-v18];
  v19 = __chkstk_darwin(v17);
  v77 = &v64[-v20];
  __chkstk_darwin(v19);
  v75 = &v64[-v21];
  v22 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v23 = v82;
  v24 = type metadata accessor for BeaconEstimatedLocation(0);
  v80 = v2;
  v81 = v24;
  v25 = UUID.uuidString.getter();
  v76 = v16;
  if (!*(&v23 + 1))
  {

    v27 = v80;
LABEL_6:
    v29 = UUID.uuidString.getter();
    *(&v83 + 1) = &type metadata for String;
    v84 = &protocol witness table for String;
    *&v82 = v29;
    *(&v82 + 1) = v30;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v23 == __PAIR128__(v26, v25))
  {

    v27 = v80;
    goto LABEL_7;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v27 = v80;
  if ((v28 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v31 = *(v27 + v81[7]);
  if (BYTE8(v82))
  {
    v32 = v77;
LABEL_10:
    *(&v83 + 1) = &type metadata for Double;
    v84 = &protocol witness table for Double;
    *&v82 = v31;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_11;
  }

  v32 = v77;
  if (*&v82 != v31)
  {
    goto LABEL_10;
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v33 = *(v27 + v81[8]);
  if ((BYTE8(v82) & 1) != 0 || *&v82 != v33)
  {
    *(&v83 + 1) = &type metadata for Double;
    v84 = &protocol witness table for Double;
    *&v82 = v33;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v34 = *(v27 + v81[9]);
  if ((BYTE8(v82) & 1) != 0 || *&v82 != v34)
  {
    *(&v83 + 1) = &type metadata for Double;
    v84 = &protocol witness table for Double;
    *&v82 = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v35 = v75;
  v77 = v22;
  CKRecordKeyValueSetting.subscript.getter();
  v36 = v79;
  v37 = *(v79 + 16);
  v68 = v81[10];
  v69 = v37;
  v37(v32, v80 + v68, v4);
  (*(v36 + 56))(v32, 0, 1, v4);
  v38 = *(v78 + 48);
  v39 = v73;
  sub_1000D3410(v35, v73);
  sub_1000D3410(v32, &v39[v38]);
  v40 = *(v36 + 48);
  v41 = v40(v39, 1, v4);
  v72 = v40;
  if (v41 == 1)
  {
    sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
    if (v40(&v39[v38], 1, v4) == 1)
    {
      sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
      v42 = v80;
      v43 = v74;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v44 = v71;
  sub_1000D3410(v39, v71);
  if (v40(&v39[v38], 1, v4) == 1)
  {
    sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v75, &unk_101696900, &unk_10138B1E0);
    (*(v79 + 8))(v44, v4);
LABEL_22:
    sub_10000B3A8(v39, &unk_1016B1660, &unk_10138CE10);
    v42 = v80;
    v43 = v74;
LABEL_23:
    *(&v83 + 1) = v4;
    v84 = &protocol witness table for Date;
    v45 = sub_1000280DC(&v82);
    v69(v45, v42 + v68, v4);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_24;
  }

  v56 = v79;
  v57 = v32;
  v58 = v67;
  (*(v79 + 32))(v67, &v39[v38], v4);
  sub_100D198C8(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v56 + 8);
  v59(v58, v4);
  sub_10000B3A8(v57, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v75, &unk_101696900, &unk_10138B1E0);
  v59(v71, v4);
  sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
  v42 = v80;
  v43 = v74;
  if ((v65 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v46 = v76;
  CKRecordKeyValueSetting.subscript.getter();
  v47 = v81[12];
  v48 = *(v78 + 48);
  sub_1000D3410(v46, v43);
  sub_1000D3410(v42 + v47, v43 + v48);
  v49 = v72;
  v50 = v42;
  if (v72(v43, 1, v4) == 1)
  {
    sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
    v51 = v49;
    if (v49((v43 + v48), 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      return sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
    }

    goto LABEL_29;
  }

  v53 = v66;
  sub_1000D3410(v43, v66);
  v51 = v49;
  if (v49((v43 + v48), 1, v4) == 1)
  {
    sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
    (*(v79 + 8))(v53, v4);
LABEL_29:
    sub_10000B3A8(v43, &unk_1016B1660, &unk_10138CE10);
LABEL_30:
    v54 = v70;
    sub_1000D3410(v50 + v47, v70);
    if (v51(v54, 1, v4) == 1)
    {
      sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
      v82 = 0u;
      v83 = 0u;
      v84 = 0;
    }

    else
    {
      *(&v83 + 1) = v4;
      v84 = &protocol witness table for Date;
      v55 = sub_1000280DC(&v82);
      (*(v79 + 32))(v55, v54, v4);
    }

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  v60 = v79;
  v61 = v53;
  v62 = v67;
  (*(v79 + 32))(v67, v43 + v48, v4);
  sub_100D198C8(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LODWORD(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v62, v4);
  sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
  v63(v61, v4);
  v50 = v80;
  sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_30;
  }

  return swift_unknownObjectRelease();
}