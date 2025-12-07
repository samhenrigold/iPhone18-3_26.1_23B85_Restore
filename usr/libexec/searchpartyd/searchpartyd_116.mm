void sub_100CE6EAC()
{
  v306 = v0;
  v304 = (v0 + 232);
  v303 = (v0 + 808);
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1120);
  sub_100D11DC8(v3, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v300 = v5;
    v6 = *(v0 + 1928);
    v293 = v4;
    v7 = *(v0 + 1920);
    v295 = *(v0 + 1912);
    v8 = *(v0 + 2509);
    v9 = swift_slowAlloc();
    v305[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v305);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v305);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v305);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v295, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v305);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v305);

    *(v9 + 64) = v27;
    v28 = v293;
    _os_log_impl(&_mh_execute_header, v293, v300, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v29 = *(v0 + 1928);
  v30 = *(v0 + 1920);
  v31 = *(v0 + 1912);

  sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v32 = *(v0 + 2208);
LABEL_6:
    v33 = *(v0 + 2200) + 1;
    if (v33 == *(v0 + 2184))
    {

      v247 = *(v0 + 1896);
      v248 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v248, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v247, type metadata accessor for OwnedBeaconRecord);

      v249 = *(v0 + 8);

      v249(v32);
      return;
    }

    *(v0 + 2208) = v32;
    *(v0 + 2200) = v33;
    *(v0 + 2192) = 0;
    v34 = *(v0 + 2176);
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = *(v0 + 2048);
    v36 = *(v0 + 1120);
    v37 = *(v34 + v33 + 32);
    *(v0 + 2509) = v37;
    sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 2048);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v305[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = sub_100C71778();
      v45 = v44;
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      v46 = sub_1000136BC(v43, v45, v305);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v47 = sub_10125403C(v37);
      v49 = sub_1000136BC(v47, v48, v305);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Keys to upload: %{public}s. Creating package for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v37)
    {
      case 1:
        v254 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v254 + 16) && (v255 = sub_100771F0C(1), (v256 & 1) != 0))
        {
          v257 = *(v0 + 1752);
          sub_100D11DC8(*(v254 + 56) + *(*(v0 + 1720) + 72) * v255, v257, type metadata accessor for BookmarkMetaData);
          v258 = *(v257 + 8);
          sub_100018D00(v257, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v258 = 0;
        }

        *(v0 + 2216) = v258;
        v287 = *(v0 + 2504);
        v288 = *(v0 + 1120);
        v289 = swift_task_alloc();
        *(v0 + 2224) = v289;
        *v289 = v0;
        v289[1] = sub_100CBBD44;
        v290 = *(v0 + 1704);

        sub_100CFC71C(v290, v288 + v287);
        return;
      case 4:
        v259 = swift_task_alloc();
        *(v0 + 2328) = v259;
        *v259 = v0;
        v259[1] = sub_100CC4E24;
        v260 = *(v0 + 1896);
        v261 = *(v0 + 1408);
        v262 = *(v0 + 1120);

        sub_100CF172C(v261, v262, v260, v0 + 880);
        return;
      case 5:
        v218 = *(v0 + 1768);
        v219 = *(v0 + 1760);
        v220 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v220, &qword_1016B0478, &unk_1013CDC10);
        v221 = *(v218 + 48);
        *(v0 + 2344) = v221;
        *(v0 + 2352) = (v218 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v219) = v221(v220, 1, v219);
        sub_10000B3A8(v220, &qword_1016B0478, &unk_1013CDC10);
        if (v219 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2360) = v266;
          *v266 = v0;
          v267 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v222 = *(v0 + 2344);
        v223 = *(v0 + 1760);
        v224 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v224, &qword_1016B0478, &unk_1013CDC10);
        v225 = v222(v224, 1, v223);
        v226 = *(v0 + 1368);
        if (v225 == 1)
        {
          v227 = *(v0 + 2000);
          v228 = *(v0 + 1120);
          sub_10000B3A8(v226, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v228, v227, type metadata accessor for SharingCircleKeyManager.Instruction);
          v28 = Logger.logObject.getter();
          v203 = static os_log_type_t.error.getter();
          v229 = os_log_type_enabled(v28, v203);
          v205 = *(v0 + 2000);
          if (v229)
          {
            v234 = swift_slowAlloc();
            v305[0] = swift_slowAlloc();
            *v234 = 136446466;
            v240 = sub_100C71778();
            v242 = v241;
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            v243 = sub_1000136BC(v240, v242, v305);

            *(v234 + 4) = v243;
            *(v234 + 12) = 2082;
            v239 = 5;
LABEL_64:
            v244 = sub_10125403C(v239);
            v246 = sub_1000136BC(v244, v245, v305);

            *(v234 + 14) = v246;
            _os_log_impl(&_mh_execute_header, v28, v203, "No key alignment available for %{public}s. No package created for %{public}s", v234, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v226, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v279 = swift_task_alloc();
        *(v0 + 2376) = v279;
        *v279 = v0;
        v279[1] = sub_100CCA6E8;
        v272 = *(v0 + 2152);
        v273 = *(v0 + 2144);
        v274 = *(v0 + 1896);
        v275 = *(v0 + 1792);
        v276 = *(v0 + 1400);
        v277 = *(v0 + 1120);
        v278 = 0;
LABEL_88:

        sub_100CF2904(v276, v277, v274, v275, v278, v273, v272);
        return;
      case 6:
        v206 = *(v0 + 1768);
        v207 = *(v0 + 1760);
        v208 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v208, &qword_1016B0478, &unk_1013CDC10);
        v209 = *(v206 + 48);
        *(v0 + 2392) = v209;
        *(v0 + 2400) = (v206 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v207) = v209(v208, 1, v207);
        sub_10000B3A8(v208, &qword_1016B0478, &unk_1013CDC10);
        if (v207 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2408) = v266;
          *v266 = v0;
          v267 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v210 = *(v0 + 2392);
        v211 = *(v0 + 1760);
        v212 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v212, &qword_1016B0478, &unk_1013CDC10);
        v213 = v210(v212, 1, v211);
        v214 = *(v0 + 1352);
        if (v213 != 1)
        {
          sub_100D12974(v214, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v271 = swift_task_alloc();
          *(v0 + 2424) = v271;
          *v271 = v0;
          v271[1] = sub_100CD0008;
          v272 = *(v0 + 2152);
          v273 = *(v0 + 2144);
          v274 = *(v0 + 1896);
          v275 = *(v0 + 1784);
          v276 = *(v0 + 1392);
          v277 = *(v0 + 1120);
          v278 = 1;
          goto LABEL_88;
        }

        v215 = *(v0 + 1984);
        v216 = *(v0 + 1120);
        sub_10000B3A8(v214, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v216, v215, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v217 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1984);
        if (v217)
        {
          v234 = swift_slowAlloc();
          v305[0] = swift_slowAlloc();
          *v234 = 136446466;
          v230 = sub_100C71778();
          v232 = v231;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v233 = sub_1000136BC(v230, v232, v305);

          *(v234 + 4) = v233;
          *(v234 + 12) = 2082;
          v239 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v50 = *(v0 + 936);
        if (*(v50 + 16))
        {
          v51 = sub_100771F0C(v37);
          if (v52)
          {
            v53 = *(v0 + 2152);
            v54 = *(v0 + 2144);
            v55 = *(v0 + 1680);
            v56 = (*(v50 + 56) + 16 * v51);
            v58 = *v56;
            v57 = v56[1];
            v59 = type metadata accessor for EncryptedData();
            (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
            sub_100017D5C(v58, v57);
            sub_100017D5C(v58, v57);
            sub_10125A120(1, v58, v57, v55, v304);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v60 = swift_allocObject();
            v61 = *(v0 + 264);
            v62 = *(v0 + 280);
            v63 = *v304;
            *(v60 + 48) = *(v0 + 248);
            *(v60 + 64) = v61;
            *(v60 + 80) = v62;
            *(v60 + 96) = *(v0 + 296);
            *(v60 + 16) = xmmword_101385D80;
            *(v60 + 32) = v63;
            sub_10002E98C(v54, v53);
            sub_1003914F8(v304, v0 + 736);
            v64 = sub_100D11764(v60, v54, v53);
            v301 = v58;
            v65 = *(v0 + 1808);
            v66 = *(v0 + 1520);
            v67 = *(v0 + 1512);
            v68 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v60 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v65, &v66[*(v68 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v66 = v37;
            *&v66[*(v68 + 24)] = v64;
            sub_100D11DC8(v66, v67, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
            }

            v70 = v32[2];
            v69 = v32[3];
            if (v70 >= v69 >> 1)
            {
              v32 = sub_100A5BE40((v69 > 1), v70 + 1, 1, v32);
            }

            v71 = *(v0 + 1960);
            v72 = *(v0 + 1520);
            v73 = *(v0 + 1512);
            v74 = *(v0 + 1504);
            v75 = *(v0 + 1424);
            v76 = *(v0 + 1120);
            v32[2] = v70 + 1;
            sub_100D12974(v73, v32 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v76, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v72, v74, type metadata accessor for KeyDropInterface.KeyPackage);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            v79 = os_log_type_enabled(v77, v78);
            v80 = *(v0 + 1960);
            v81 = *(v0 + 1520);
            v82 = *(v0 + 1504);
            if (v79)
            {
              v83 = swift_slowAlloc();
              v305[0] = swift_slowAlloc();
              *v83 = 136446466;
              v296 = v57;
              v298 = v81;
              v84 = sub_100C71778();
              v86 = v85;
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              v87 = sub_1000136BC(v84, v86, v305);

              *(v83 + 4) = v87;
              *(v83 + 12) = 2082;
              v88 = sub_101255410();
              v90 = v89;
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              v91 = sub_1000136BC(v88, v90, v305);

              *(v83 + 14) = v91;
              _os_log_impl(&_mh_execute_header, v77, v78, "Keys to upload: %{public}s,\nadded: %{public}s.", v83, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v304);
              sub_100016590(v301, v296);
              sub_100018D00(v298, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v304);
              sub_100016590(v301, v57);
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v192 = *(v0 + 1768);
        v193 = *(v0 + 1760);
        v194 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v194, &qword_1016B0478, &unk_1013CDC10);
        v195 = *(v192 + 48);
        *(v0 + 2440) = v195;
        *(v0 + 2448) = (v192 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v193) = v195(v194, 1, v193);
        sub_10000B3A8(v194, &qword_1016B0478, &unk_1013CDC10);
        if (v193 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2456) = v266;
          *v266 = v0;
          v267 = sub_100CD2EEC;
LABEL_83:
          v266[1] = v267;
          v268 = *(v0 + 2160);
          v269 = *(v0 + 1896);
          v270 = *(v0 + 1128);

          sub_100CF0FB4(v269, v268, v270);
          return;
        }

        v196 = *(v0 + 2440);
        v197 = *(v0 + 1760);
        v198 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v198, &qword_1016B0478, &unk_1013CDC10);
        v199 = v196(v198, 1, v197);
        v200 = *(v0 + 1336);
        if (v199 != 1)
        {
          sub_100D12974(v200, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v280 = swift_task_alloc();
          *(v0 + 2472) = v280;
          *v280 = v0;
          v280[1] = sub_100CD5928;
          v281 = *(v0 + 2152);
          v282 = *(v0 + 2144);
          v283 = *(v0 + 1896);
          v284 = *(v0 + 1776);
          v285 = *(v0 + 1384);
          v286 = *(v0 + 1120);

          sub_100CF3F94(v285, v286, v283, v284, v282, v281);
          return;
        }

        v201 = *(v0 + 1968);
        v202 = *(v0 + 1120);
        sub_10000B3A8(v200, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v202, v201, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v204 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1968);
        if (v204)
        {
          v234 = swift_slowAlloc();
          v305[0] = swift_slowAlloc();
          *v234 = 136446466;
          v235 = sub_100C71778();
          v237 = v236;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v238 = sub_1000136BC(v235, v237, v305);

          *(v234 + 4) = v238;
          *(v234 + 12) = 2082;
          v239 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v92 = *(v0 + 1824);
        v93 = *(v0 + 1816);
        v94 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v94, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v92 + 48))(v94, 1, v93) == 1)
        {
          v95 = *(v0 + 1192);
          v96 = *(v0 + 1184);
          v97 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v95 + 56))(v97, 1, 1, v96);
          goto LABEL_32;
        }

        v98 = *(v0 + 1896);
        v99 = *(v0 + 1872);
        v100 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v98 + *(v99 + 24), v100, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v117 = *(v0 + 1192);
            v118 = *(v0 + 1184);
            v119 = *(v0 + 1176);
            v120 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v120, type metadata accessor for StableIdentifier);
            (*(v117 + 56))(v119, 1, 1, v118);
            goto LABEL_32;
          }

          v113 = *(v0 + 1824);
          v114 = *(v0 + 1816);
          v115 = *(v0 + 1160);
          v116 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v106 = *(v115 + *(v116 + 96));
          (*(v113 + 8))(v115, v114);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v102 = *(v0 + 1824);
          v103 = *(v0 + 1160);
          v104 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v105 = (v103 + *(v104 + 96));
          v106 = *v105;
          LOBYTE(v103) = v105[1];

          v107 = *(v102 + 8);
          if (v103)
          {
            v108 = *(v0 + 1816);
            v109 = *(v0 + 1192);
            v110 = *(v0 + 1184);
            v111 = *(v0 + 1176);
            v112 = *(v0 + 1160);
            v107(*(v0 + 1840), v108);
            (*(v109 + 56))(v111, 1, 1, v110);
            v107(v112, v108);
            goto LABEL_32;
          }

          v107(*(v0 + 1160), *(v0 + 1816));
        }

        v121 = *(v0 + 1192);
        v122 = *(v0 + 1184);
        v123 = *(v0 + 1176);
        (*(v0 + 2104))(v123, *(v0 + 1840), *(v0 + 1816));
        *(v123 + *(v122 + 20)) = v106;
        (*(v121 + 56))(v123, 0, 1, v122);
LABEL_32:
        v124 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v124, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v124, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v125 = *(v0 + 1904);
        v126 = *(v0 + 1120);
        sub_100D12974(v124, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v127 = *(v126 + *(v125 + 44));
        if (!*(v127 + 16))
        {
          goto LABEL_38;
        }

        v128 = sub_100771F0C(12);
        if ((v129 & 1) == 0)
        {
          goto LABEL_38;
        }

        v130 = *(v0 + 1768);
        v131 = *(v0 + 1760);
        v132 = *(v0 + 1736);
        v133 = *(v0 + 1712);
        v134 = *(v0 + 1320);
        sub_100D11DC8(*(v127 + 56) + *(*(v0 + 1720) + 72) * v128, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v135 = *(v0 + 1248);
          v136 = *(v0 + 1240);
          v137 = *(v0 + 1216);
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = *(v0 + 1320);
          v139 = *(v0 + 1280);
          v140 = *(v0 + 1248);
          v141 = *(v0 + 1240);
          v142 = *(v0 + 1216);
          (*(v140 + 16))(v142, v138 + *(*(v0 + 1760) + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
        }

        v143 = *(v0 + 1896);
        v144 = *(v0 + 1272);
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        v146 = *(v0 + 1272);
        v147 = *(v0 + 1248);
        v148 = *(v0 + 1240);
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v145) = dispatch thunk of static Comparable.< infix(_:_:)();
        v149 = *(v147 + 8);
        v149(v146, v148);
        if (v145)
        {
          v150 = *(v0 + 1200);
          v149(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v150, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v151 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v153 = v152;
          v302 = v149;
          v154 = *(v0 + 2152);
          v155 = *(v0 + 2144);
          v156 = *(v0 + 1680);
          v157 = v151;

          v158 = type metadata accessor for EncryptedData();
          (*(*(v158 - 8) + 56))(v156, 1, 1, v158);
          sub_100017D5C(v157, v153);
          v297 = v157;
          v299 = v153;
          sub_10125A120(1, v157, v153, v156, v303);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v159 = swift_allocObject();
          v160 = *(v0 + 840);
          v161 = *(v0 + 856);
          v162 = *v303;
          *(v159 + 48) = *(v0 + 824);
          *(v159 + 64) = v160;
          *(v159 + 80) = v161;
          *(v159 + 96) = *(v0 + 872);
          *(v159 + 16) = xmmword_101385D80;
          *(v159 + 32) = v162;
          sub_10002E98C(v155, v154);
          sub_1003914F8(v303, v0 + 448);
          v163 = sub_100D11764(v159, v155, v154);
          v164 = *(v0 + 1808);
          v165 = *(v0 + 1472);
          v166 = *(v0 + 1464);
          v167 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v159 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v164, &v165[*(v167 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v165 = 12;
          *&v165[*(v167 + 24)] = v163;
          sub_100D11DC8(v165, v166, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
          }

          v169 = v32[2];
          v168 = v32[3];
          if (v169 >= v168 >> 1)
          {
            v32 = sub_100A5BE40((v168 > 1), v169 + 1, 1, v32);
          }

          v170 = *(v0 + 1944);
          v171 = *(v0 + 1472);
          v172 = *(v0 + 1464);
          v173 = *(v0 + 1456);
          v174 = *(v0 + 1424);
          v175 = *(v0 + 1120);
          v32[2] = v169 + 1;
          sub_100D12974(v172, v32 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v169, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v175, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v178 = os_log_type_enabled(v176, v177);
          v179 = *(v0 + 1944);
          v180 = *(v0 + 1456);
          v181 = *(v0 + 1280);
          v292 = *(v0 + 1472);
          v294 = *(v0 + 1240);
          v182 = *(v0 + 1200);
          if (v178)
          {
            v183 = swift_slowAlloc();
            v305[0] = swift_slowAlloc();
            *v183 = 136446466;
            v291 = v181;
            v184 = sub_100C71778();
            v186 = v185;
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            v187 = sub_1000136BC(v184, v186, v305);

            *(v183 + 4) = v187;
            *(v183 + 12) = 2082;
            v188 = sub_101255410();
            v190 = v189;
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            v191 = sub_1000136BC(v188, v190, v305);

            *(v183 + 14) = v191;
            _os_log_impl(&_mh_execute_header, v176, v177, "Keys to upload: %{public}s,\nadded: %{public}s.", v183, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v303);
            sub_100016590(v297, v299);
            sub_100018D00(v292, type metadata accessor for KeyDropInterface.KeyPackage);
            v302(v291, v294);
          }

          else
          {

            sub_100391554(v303);
            sub_100016590(v297, v299);
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v292, type metadata accessor for KeyDropInterface.KeyPackage);
            v302(v181, v294);
          }

          sub_100018D00(v182, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v263 = swift_task_alloc();
        *(v0 + 2488) = v263;
        *v263 = v0;
        v263[1] = sub_100CD880C;
        v264 = *(v0 + 1896);
        v265 = *(v0 + 1232);

        sub_100CF5FBC(v265, v264);
        return;
      case 16:
        v250 = swift_task_alloc();
        *(v0 + 2496) = v250;
        *v250 = v0;
        v250[1] = sub_100CDBC44;
        v251 = *(v0 + 1896);
        v252 = *(v0 + 1264);
        v253 = *(v0 + 1144);

        sub_100CF6C9C(v252, v253, v251);
        return;
      default:
        goto LABEL_6;
    }
  }
}

void sub_100CE96E0()
{
  v304 = v0;
  v302 = (v0 + 232);
  v301 = (v0 + 808);
  sub_100018D00(*(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1120);
  sub_100D11DC8(v3, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v298 = v5;
    v6 = *(v0 + 1928);
    v291 = v4;
    v7 = *(v0 + 1920);
    v293 = *(v0 + 1912);
    v8 = *(v0 + 2509);
    v9 = swift_slowAlloc();
    v303[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v303);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v303);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v303);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v293, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v303);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v303);

    *(v9 + 64) = v27;
    v28 = v291;
    _os_log_impl(&_mh_execute_header, v291, v298, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v29 = *(v0 + 1928);
  v30 = *(v0 + 1920);
  v31 = *(v0 + 1912);

  sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v32 = *(v0 + 2208);
LABEL_6:
    v33 = *(v0 + 2200) + 1;
    if (v33 == *(v0 + 2184))
    {

      v245 = *(v0 + 1896);
      v246 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v246, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v245, type metadata accessor for OwnedBeaconRecord);

      v247 = *(v0 + 8);

      v247(v32);
      return;
    }

    *(v0 + 2208) = v32;
    *(v0 + 2200) = v33;
    *(v0 + 2192) = 0;
    v34 = *(v0 + 2176);
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = *(v0 + 2048);
    v36 = *(v0 + 1120);
    v37 = *(v34 + v33 + 32);
    *(v0 + 2509) = v37;
    sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 2048);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v303[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = sub_100C71778();
      v45 = v44;
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      v46 = sub_1000136BC(v43, v45, v303);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v47 = sub_10125403C(v37);
      v49 = sub_1000136BC(v47, v48, v303);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Keys to upload: %{public}s. Creating package for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v37)
    {
      case 1:
        v252 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v252 + 16) && (v253 = sub_100771F0C(1), (v254 & 1) != 0))
        {
          v255 = *(v0 + 1752);
          sub_100D11DC8(*(v252 + 56) + *(*(v0 + 1720) + 72) * v253, v255, type metadata accessor for BookmarkMetaData);
          v256 = *(v255 + 8);
          sub_100018D00(v255, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v256 = 0;
        }

        *(v0 + 2216) = v256;
        v285 = *(v0 + 2504);
        v286 = *(v0 + 1120);
        v287 = swift_task_alloc();
        *(v0 + 2224) = v287;
        *v287 = v0;
        v287[1] = sub_100CBBD44;
        v288 = *(v0 + 1704);

        sub_100CFC71C(v288, v286 + v285);
        return;
      case 4:
        v257 = swift_task_alloc();
        *(v0 + 2328) = v257;
        *v257 = v0;
        v257[1] = sub_100CC4E24;
        v258 = *(v0 + 1896);
        v259 = *(v0 + 1408);
        v260 = *(v0 + 1120);

        sub_100CF172C(v259, v260, v258, v0 + 880);
        return;
      case 5:
        v216 = *(v0 + 1768);
        v217 = *(v0 + 1760);
        v218 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v218, &qword_1016B0478, &unk_1013CDC10);
        v219 = *(v216 + 48);
        *(v0 + 2344) = v219;
        *(v0 + 2352) = (v216 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v217) = v219(v218, 1, v217);
        sub_10000B3A8(v218, &qword_1016B0478, &unk_1013CDC10);
        if (v217 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2360) = v264;
          *v264 = v0;
          v265 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v220 = *(v0 + 2344);
        v221 = *(v0 + 1760);
        v222 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v222, &qword_1016B0478, &unk_1013CDC10);
        v223 = v220(v222, 1, v221);
        v224 = *(v0 + 1368);
        if (v223 == 1)
        {
          v225 = *(v0 + 2000);
          v226 = *(v0 + 1120);
          sub_10000B3A8(v224, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v226, v225, type metadata accessor for SharingCircleKeyManager.Instruction);
          v28 = Logger.logObject.getter();
          v203 = static os_log_type_t.error.getter();
          v227 = os_log_type_enabled(v28, v203);
          v205 = *(v0 + 2000);
          if (v227)
          {
            v232 = swift_slowAlloc();
            v303[0] = swift_slowAlloc();
            *v232 = 136446466;
            v238 = sub_100C71778();
            v240 = v239;
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            v241 = sub_1000136BC(v238, v240, v303);

            *(v232 + 4) = v241;
            *(v232 + 12) = 2082;
            v237 = 5;
LABEL_64:
            v242 = sub_10125403C(v237);
            v244 = sub_1000136BC(v242, v243, v303);

            *(v232 + 14) = v244;
            _os_log_impl(&_mh_execute_header, v28, v203, "No key alignment available for %{public}s. No package created for %{public}s", v232, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v224, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v277 = swift_task_alloc();
        *(v0 + 2376) = v277;
        *v277 = v0;
        v277[1] = sub_100CCA6E8;
        v270 = *(v0 + 2152);
        v271 = *(v0 + 2144);
        v272 = *(v0 + 1896);
        v273 = *(v0 + 1792);
        v274 = *(v0 + 1400);
        v275 = *(v0 + 1120);
        v276 = 0;
LABEL_88:

        sub_100CF2904(v274, v275, v272, v273, v276, v271, v270);
        return;
      case 6:
        v206 = *(v0 + 1768);
        v207 = *(v0 + 1760);
        v208 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v208, &qword_1016B0478, &unk_1013CDC10);
        v209 = *(v206 + 48);
        *(v0 + 2392) = v209;
        *(v0 + 2400) = (v206 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v207) = v209(v208, 1, v207);
        sub_10000B3A8(v208, &qword_1016B0478, &unk_1013CDC10);
        if (v207 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2408) = v264;
          *v264 = v0;
          v265 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v210 = *(v0 + 2392);
        v211 = *(v0 + 1760);
        v212 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v212, &qword_1016B0478, &unk_1013CDC10);
        if (v210(v212, 1, v211) != 1)
        {
          sub_100D12974(*(v0 + 1352), *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v269 = swift_task_alloc();
          *(v0 + 2424) = v269;
          *v269 = v0;
          v269[1] = sub_100CD0008;
          v270 = *(v0 + 2152);
          v271 = *(v0 + 2144);
          v272 = *(v0 + 1896);
          v273 = *(v0 + 1784);
          v274 = *(v0 + 1392);
          v275 = *(v0 + 1120);
          v276 = 1;
          goto LABEL_88;
        }

        v213 = *(v0 + 1984);
        v214 = *(v0 + 1120);
        sub_10000B3A8(*(v0 + 1352), &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v214, v213, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v215 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1984);
        if (v215)
        {
          v232 = swift_slowAlloc();
          v303[0] = swift_slowAlloc();
          *v232 = 136446466;
          v228 = sub_100C71778();
          v230 = v229;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v231 = sub_1000136BC(v228, v230, v303);

          *(v232 + 4) = v231;
          *(v232 + 12) = 2082;
          v237 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v50 = *(v0 + 936);
        if (*(v50 + 16))
        {
          v51 = sub_100771F0C(v37);
          if (v52)
          {
            v53 = *(v0 + 2152);
            v54 = *(v0 + 2144);
            v55 = *(v0 + 1680);
            v56 = (*(v50 + 56) + 16 * v51);
            v58 = *v56;
            v57 = v56[1];
            v59 = type metadata accessor for EncryptedData();
            (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
            sub_100017D5C(v58, v57);
            sub_100017D5C(v58, v57);
            sub_10125A120(1, v58, v57, v55, v302);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v60 = swift_allocObject();
            v61 = *(v0 + 264);
            v62 = *(v0 + 280);
            v63 = *v302;
            *(v60 + 48) = *(v0 + 248);
            *(v60 + 64) = v61;
            *(v60 + 80) = v62;
            *(v60 + 96) = *(v0 + 296);
            *(v60 + 16) = xmmword_101385D80;
            *(v60 + 32) = v63;
            sub_10002E98C(v54, v53);
            sub_1003914F8(v302, v0 + 736);
            v64 = sub_100D11764(v60, v54, v53);
            v299 = v58;
            v65 = *(v0 + 1808);
            v66 = *(v0 + 1520);
            v67 = *(v0 + 1512);
            v68 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v60 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v65, &v66[*(v68 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v66 = v37;
            *&v66[*(v68 + 24)] = v64;
            sub_100D11DC8(v66, v67, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
            }

            v70 = v32[2];
            v69 = v32[3];
            if (v70 >= v69 >> 1)
            {
              v32 = sub_100A5BE40((v69 > 1), v70 + 1, 1, v32);
            }

            v71 = *(v0 + 1960);
            v72 = *(v0 + 1520);
            v73 = *(v0 + 1512);
            v74 = *(v0 + 1504);
            v75 = *(v0 + 1424);
            v76 = *(v0 + 1120);
            v32[2] = v70 + 1;
            sub_100D12974(v73, v32 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v76, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v72, v74, type metadata accessor for KeyDropInterface.KeyPackage);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            v79 = os_log_type_enabled(v77, v78);
            v80 = *(v0 + 1960);
            v81 = *(v0 + 1520);
            v82 = *(v0 + 1504);
            if (v79)
            {
              v83 = swift_slowAlloc();
              v303[0] = swift_slowAlloc();
              *v83 = 136446466;
              v294 = v57;
              v296 = v81;
              v84 = sub_100C71778();
              v86 = v85;
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              v87 = sub_1000136BC(v84, v86, v303);

              *(v83 + 4) = v87;
              *(v83 + 12) = 2082;
              v88 = sub_101255410();
              v90 = v89;
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              v91 = sub_1000136BC(v88, v90, v303);

              *(v83 + 14) = v91;
              _os_log_impl(&_mh_execute_header, v77, v78, "Keys to upload: %{public}s,\nadded: %{public}s.", v83, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v302);
              sub_100016590(v299, v294);
              sub_100018D00(v296, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v302);
              sub_100016590(v299, v57);
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v192 = *(v0 + 1768);
        v193 = *(v0 + 1760);
        v194 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v194, &qword_1016B0478, &unk_1013CDC10);
        v195 = *(v192 + 48);
        *(v0 + 2440) = v195;
        *(v0 + 2448) = (v192 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v193) = v195(v194, 1, v193);
        sub_10000B3A8(v194, &qword_1016B0478, &unk_1013CDC10);
        if (v193 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2456) = v264;
          *v264 = v0;
          v265 = sub_100CD2EEC;
LABEL_83:
          v264[1] = v265;
          v266 = *(v0 + 2160);
          v267 = *(v0 + 1896);
          v268 = *(v0 + 1128);

          sub_100CF0FB4(v267, v266, v268);
          return;
        }

        v196 = *(v0 + 2440);
        v197 = *(v0 + 1760);
        v198 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v198, &qword_1016B0478, &unk_1013CDC10);
        v199 = v196(v198, 1, v197);
        v200 = *(v0 + 1336);
        if (v199 != 1)
        {
          sub_100D12974(v200, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v278 = swift_task_alloc();
          *(v0 + 2472) = v278;
          *v278 = v0;
          v278[1] = sub_100CD5928;
          v279 = *(v0 + 2152);
          v280 = *(v0 + 2144);
          v281 = *(v0 + 1896);
          v282 = *(v0 + 1776);
          v283 = *(v0 + 1384);
          v284 = *(v0 + 1120);

          sub_100CF3F94(v283, v284, v281, v282, v280, v279);
          return;
        }

        v201 = *(v0 + 1968);
        v202 = *(v0 + 1120);
        sub_10000B3A8(v200, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v202, v201, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v204 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1968);
        if (v204)
        {
          v232 = swift_slowAlloc();
          v303[0] = swift_slowAlloc();
          *v232 = 136446466;
          v233 = sub_100C71778();
          v235 = v234;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v236 = sub_1000136BC(v233, v235, v303);

          *(v232 + 4) = v236;
          *(v232 + 12) = 2082;
          v237 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v92 = *(v0 + 1824);
        v93 = *(v0 + 1816);
        v94 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v94, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v92 + 48))(v94, 1, v93) == 1)
        {
          v95 = *(v0 + 1192);
          v96 = *(v0 + 1184);
          v97 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v95 + 56))(v97, 1, 1, v96);
          goto LABEL_32;
        }

        v98 = *(v0 + 1896);
        v99 = *(v0 + 1872);
        v100 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v98 + *(v99 + 24), v100, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v117 = *(v0 + 1192);
            v118 = *(v0 + 1184);
            v119 = *(v0 + 1176);
            v120 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v120, type metadata accessor for StableIdentifier);
            (*(v117 + 56))(v119, 1, 1, v118);
            goto LABEL_32;
          }

          v113 = *(v0 + 1824);
          v114 = *(v0 + 1816);
          v115 = *(v0 + 1160);
          v116 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v106 = *(v115 + *(v116 + 96));
          (*(v113 + 8))(v115, v114);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v102 = *(v0 + 1824);
          v103 = *(v0 + 1160);
          v104 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v105 = (v103 + *(v104 + 96));
          v106 = *v105;
          LOBYTE(v103) = v105[1];

          v107 = *(v102 + 8);
          if (v103)
          {
            v108 = *(v0 + 1816);
            v109 = *(v0 + 1192);
            v110 = *(v0 + 1184);
            v111 = *(v0 + 1176);
            v112 = *(v0 + 1160);
            v107(*(v0 + 1840), v108);
            (*(v109 + 56))(v111, 1, 1, v110);
            v107(v112, v108);
            goto LABEL_32;
          }

          v107(*(v0 + 1160), *(v0 + 1816));
        }

        v121 = *(v0 + 1192);
        v122 = *(v0 + 1184);
        v123 = *(v0 + 1176);
        (*(v0 + 2104))(v123, *(v0 + 1840), *(v0 + 1816));
        *(v123 + *(v122 + 20)) = v106;
        (*(v121 + 56))(v123, 0, 1, v122);
LABEL_32:
        v124 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v124, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v124, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v125 = *(v0 + 1904);
        v126 = *(v0 + 1120);
        sub_100D12974(v124, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v127 = *(v126 + *(v125 + 44));
        if (!*(v127 + 16))
        {
          goto LABEL_38;
        }

        v128 = sub_100771F0C(12);
        if ((v129 & 1) == 0)
        {
          goto LABEL_38;
        }

        v130 = *(v0 + 1768);
        v131 = *(v0 + 1760);
        v132 = *(v0 + 1736);
        v133 = *(v0 + 1712);
        v134 = *(v0 + 1320);
        sub_100D11DC8(*(v127 + 56) + *(*(v0 + 1720) + 72) * v128, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v135 = *(v0 + 1248);
          v136 = *(v0 + 1240);
          v137 = *(v0 + 1216);
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = *(v0 + 1320);
          v139 = *(v0 + 1280);
          v140 = *(v0 + 1248);
          v141 = *(v0 + 1240);
          v142 = *(v0 + 1216);
          (*(v140 + 16))(v142, v138 + *(*(v0 + 1760) + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
        }

        v143 = *(v0 + 1896);
        v144 = *(v0 + 1272);
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        v146 = *(v0 + 1272);
        v147 = *(v0 + 1248);
        v148 = *(v0 + 1240);
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v145) = dispatch thunk of static Comparable.< infix(_:_:)();
        v149 = *(v147 + 8);
        v149(v146, v148);
        if (v145)
        {
          v150 = *(v0 + 1200);
          v149(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v150, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v151 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v153 = v152;
          v300 = v149;
          v154 = *(v0 + 2152);
          v155 = *(v0 + 2144);
          v156 = *(v0 + 1680);
          v157 = v151;

          v158 = type metadata accessor for EncryptedData();
          (*(*(v158 - 8) + 56))(v156, 1, 1, v158);
          sub_100017D5C(v157, v153);
          v295 = v157;
          v297 = v153;
          sub_10125A120(1, v157, v153, v156, v301);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v159 = swift_allocObject();
          v160 = *(v0 + 840);
          v161 = *(v0 + 856);
          v162 = *v301;
          *(v159 + 48) = *(v0 + 824);
          *(v159 + 64) = v160;
          *(v159 + 80) = v161;
          *(v159 + 96) = *(v0 + 872);
          *(v159 + 16) = xmmword_101385D80;
          *(v159 + 32) = v162;
          sub_10002E98C(v155, v154);
          sub_1003914F8(v301, v0 + 448);
          v163 = sub_100D11764(v159, v155, v154);
          v164 = *(v0 + 1808);
          v165 = *(v0 + 1472);
          v166 = *(v0 + 1464);
          v167 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v159 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v164, &v165[*(v167 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v165 = 12;
          *&v165[*(v167 + 24)] = v163;
          sub_100D11DC8(v165, v166, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
          }

          v169 = v32[2];
          v168 = v32[3];
          if (v169 >= v168 >> 1)
          {
            v32 = sub_100A5BE40((v168 > 1), v169 + 1, 1, v32);
          }

          v170 = *(v0 + 1944);
          v171 = *(v0 + 1472);
          v172 = *(v0 + 1464);
          v173 = *(v0 + 1456);
          v174 = *(v0 + 1424);
          v175 = *(v0 + 1120);
          v32[2] = v169 + 1;
          sub_100D12974(v172, v32 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v169, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v175, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v178 = os_log_type_enabled(v176, v177);
          v179 = *(v0 + 1944);
          v180 = *(v0 + 1456);
          v181 = *(v0 + 1280);
          v290 = *(v0 + 1472);
          v292 = *(v0 + 1240);
          v182 = *(v0 + 1200);
          if (v178)
          {
            v183 = swift_slowAlloc();
            v303[0] = swift_slowAlloc();
            *v183 = 136446466;
            v289 = v181;
            v184 = sub_100C71778();
            v186 = v185;
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            v187 = sub_1000136BC(v184, v186, v303);

            *(v183 + 4) = v187;
            *(v183 + 12) = 2082;
            v188 = sub_101255410();
            v190 = v189;
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            v191 = sub_1000136BC(v188, v190, v303);

            *(v183 + 14) = v191;
            _os_log_impl(&_mh_execute_header, v176, v177, "Keys to upload: %{public}s,\nadded: %{public}s.", v183, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v301);
            sub_100016590(v295, v297);
            sub_100018D00(v290, type metadata accessor for KeyDropInterface.KeyPackage);
            v300(v289, v292);
          }

          else
          {

            sub_100391554(v301);
            sub_100016590(v295, v297);
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v290, type metadata accessor for KeyDropInterface.KeyPackage);
            v300(v181, v292);
          }

          sub_100018D00(v182, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v261 = swift_task_alloc();
        *(v0 + 2488) = v261;
        *v261 = v0;
        v261[1] = sub_100CD880C;
        v262 = *(v0 + 1896);
        v263 = *(v0 + 1232);

        sub_100CF5FBC(v263, v262);
        return;
      case 16:
        v248 = swift_task_alloc();
        *(v0 + 2496) = v248;
        *v248 = v0;
        v248[1] = sub_100CDBC44;
        v249 = *(v0 + 1896);
        v250 = *(v0 + 1264);
        v251 = *(v0 + 1144);

        sub_100CF6C9C(v250, v251, v249);
        return;
      default:
        goto LABEL_6;
    }
  }
}

void sub_100CEBF30()
{
  v306 = v0;
  v304 = (v0 + 232);
  v303 = (v0 + 808);
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1120);
  sub_100D11DC8(v3, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v300 = v5;
    v6 = *(v0 + 1928);
    v293 = v4;
    v7 = *(v0 + 1920);
    v295 = *(v0 + 1912);
    v8 = *(v0 + 2509);
    v9 = swift_slowAlloc();
    v305[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v305);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v305);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v305);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v295, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v305);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v305);

    *(v9 + 64) = v27;
    v28 = v293;
    _os_log_impl(&_mh_execute_header, v293, v300, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v29 = *(v0 + 1928);
  v30 = *(v0 + 1920);
  v31 = *(v0 + 1912);

  sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v32 = *(v0 + 2208);
LABEL_6:
    v33 = *(v0 + 2200) + 1;
    if (v33 == *(v0 + 2184))
    {

      v247 = *(v0 + 1896);
      v248 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v248, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v247, type metadata accessor for OwnedBeaconRecord);

      v249 = *(v0 + 8);

      v249(v32);
      return;
    }

    *(v0 + 2208) = v32;
    *(v0 + 2200) = v33;
    *(v0 + 2192) = 0;
    v34 = *(v0 + 2176);
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = *(v0 + 2048);
    v36 = *(v0 + 1120);
    v37 = *(v34 + v33 + 32);
    *(v0 + 2509) = v37;
    sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 2048);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v305[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = sub_100C71778();
      v45 = v44;
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      v46 = sub_1000136BC(v43, v45, v305);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v47 = sub_10125403C(v37);
      v49 = sub_1000136BC(v47, v48, v305);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Keys to upload: %{public}s. Creating package for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v37)
    {
      case 1:
        v254 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v254 + 16) && (v255 = sub_100771F0C(1), (v256 & 1) != 0))
        {
          v257 = *(v0 + 1752);
          sub_100D11DC8(*(v254 + 56) + *(*(v0 + 1720) + 72) * v255, v257, type metadata accessor for BookmarkMetaData);
          v258 = *(v257 + 8);
          sub_100018D00(v257, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v258 = 0;
        }

        *(v0 + 2216) = v258;
        v287 = *(v0 + 2504);
        v288 = *(v0 + 1120);
        v289 = swift_task_alloc();
        *(v0 + 2224) = v289;
        *v289 = v0;
        v289[1] = sub_100CBBD44;
        v290 = *(v0 + 1704);

        sub_100CFC71C(v290, v288 + v287);
        return;
      case 4:
        v259 = swift_task_alloc();
        *(v0 + 2328) = v259;
        *v259 = v0;
        v259[1] = sub_100CC4E24;
        v260 = *(v0 + 1896);
        v261 = *(v0 + 1408);
        v262 = *(v0 + 1120);

        sub_100CF172C(v261, v262, v260, v0 + 880);
        return;
      case 5:
        v218 = *(v0 + 1768);
        v219 = *(v0 + 1760);
        v220 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v220, &qword_1016B0478, &unk_1013CDC10);
        v221 = *(v218 + 48);
        *(v0 + 2344) = v221;
        *(v0 + 2352) = (v218 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v219) = v221(v220, 1, v219);
        sub_10000B3A8(v220, &qword_1016B0478, &unk_1013CDC10);
        if (v219 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2360) = v266;
          *v266 = v0;
          v267 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v222 = *(v0 + 2344);
        v223 = *(v0 + 1760);
        v224 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v224, &qword_1016B0478, &unk_1013CDC10);
        v225 = v222(v224, 1, v223);
        v226 = *(v0 + 1368);
        if (v225 == 1)
        {
          v227 = *(v0 + 2000);
          v228 = *(v0 + 1120);
          sub_10000B3A8(v226, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v228, v227, type metadata accessor for SharingCircleKeyManager.Instruction);
          v28 = Logger.logObject.getter();
          v203 = static os_log_type_t.error.getter();
          v229 = os_log_type_enabled(v28, v203);
          v205 = *(v0 + 2000);
          if (v229)
          {
            v234 = swift_slowAlloc();
            v305[0] = swift_slowAlloc();
            *v234 = 136446466;
            v240 = sub_100C71778();
            v242 = v241;
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            v243 = sub_1000136BC(v240, v242, v305);

            *(v234 + 4) = v243;
            *(v234 + 12) = 2082;
            v239 = 5;
LABEL_64:
            v244 = sub_10125403C(v239);
            v246 = sub_1000136BC(v244, v245, v305);

            *(v234 + 14) = v246;
            _os_log_impl(&_mh_execute_header, v28, v203, "No key alignment available for %{public}s. No package created for %{public}s", v234, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v226, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v279 = swift_task_alloc();
        *(v0 + 2376) = v279;
        *v279 = v0;
        v279[1] = sub_100CCA6E8;
        v272 = *(v0 + 2152);
        v273 = *(v0 + 2144);
        v274 = *(v0 + 1896);
        v275 = *(v0 + 1792);
        v276 = *(v0 + 1400);
        v277 = *(v0 + 1120);
        v278 = 0;
LABEL_88:

        sub_100CF2904(v276, v277, v274, v275, v278, v273, v272);
        return;
      case 6:
        v206 = *(v0 + 1768);
        v207 = *(v0 + 1760);
        v208 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v208, &qword_1016B0478, &unk_1013CDC10);
        v209 = *(v206 + 48);
        *(v0 + 2392) = v209;
        *(v0 + 2400) = (v206 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v207) = v209(v208, 1, v207);
        sub_10000B3A8(v208, &qword_1016B0478, &unk_1013CDC10);
        if (v207 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2408) = v266;
          *v266 = v0;
          v267 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v210 = *(v0 + 2392);
        v211 = *(v0 + 1760);
        v212 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v212, &qword_1016B0478, &unk_1013CDC10);
        v213 = v210(v212, 1, v211);
        v214 = *(v0 + 1352);
        if (v213 != 1)
        {
          sub_100D12974(v214, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v271 = swift_task_alloc();
          *(v0 + 2424) = v271;
          *v271 = v0;
          v271[1] = sub_100CD0008;
          v272 = *(v0 + 2152);
          v273 = *(v0 + 2144);
          v274 = *(v0 + 1896);
          v275 = *(v0 + 1784);
          v276 = *(v0 + 1392);
          v277 = *(v0 + 1120);
          v278 = 1;
          goto LABEL_88;
        }

        v215 = *(v0 + 1984);
        v216 = *(v0 + 1120);
        sub_10000B3A8(v214, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v216, v215, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v217 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1984);
        if (v217)
        {
          v234 = swift_slowAlloc();
          v305[0] = swift_slowAlloc();
          *v234 = 136446466;
          v230 = sub_100C71778();
          v232 = v231;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v233 = sub_1000136BC(v230, v232, v305);

          *(v234 + 4) = v233;
          *(v234 + 12) = 2082;
          v239 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v50 = *(v0 + 936);
        if (*(v50 + 16))
        {
          v51 = sub_100771F0C(v37);
          if (v52)
          {
            v53 = *(v0 + 2152);
            v54 = *(v0 + 2144);
            v55 = *(v0 + 1680);
            v56 = (*(v50 + 56) + 16 * v51);
            v58 = *v56;
            v57 = v56[1];
            v59 = type metadata accessor for EncryptedData();
            (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
            sub_100017D5C(v58, v57);
            sub_100017D5C(v58, v57);
            sub_10125A120(1, v58, v57, v55, v304);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v60 = swift_allocObject();
            v61 = *(v0 + 264);
            v62 = *(v0 + 280);
            v63 = *v304;
            *(v60 + 48) = *(v0 + 248);
            *(v60 + 64) = v61;
            *(v60 + 80) = v62;
            *(v60 + 96) = *(v0 + 296);
            *(v60 + 16) = xmmword_101385D80;
            *(v60 + 32) = v63;
            sub_10002E98C(v54, v53);
            sub_1003914F8(v304, v0 + 736);
            v64 = sub_100D11764(v60, v54, v53);
            v301 = v58;
            v65 = *(v0 + 1808);
            v66 = *(v0 + 1520);
            v67 = *(v0 + 1512);
            v68 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v60 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v65, &v66[*(v68 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v66 = v37;
            *&v66[*(v68 + 24)] = v64;
            sub_100D11DC8(v66, v67, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
            }

            v70 = v32[2];
            v69 = v32[3];
            if (v70 >= v69 >> 1)
            {
              v32 = sub_100A5BE40((v69 > 1), v70 + 1, 1, v32);
            }

            v71 = *(v0 + 1960);
            v72 = *(v0 + 1520);
            v73 = *(v0 + 1512);
            v74 = *(v0 + 1504);
            v75 = *(v0 + 1424);
            v76 = *(v0 + 1120);
            v32[2] = v70 + 1;
            sub_100D12974(v73, v32 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v76, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v72, v74, type metadata accessor for KeyDropInterface.KeyPackage);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            v79 = os_log_type_enabled(v77, v78);
            v80 = *(v0 + 1960);
            v81 = *(v0 + 1520);
            v82 = *(v0 + 1504);
            if (v79)
            {
              v83 = swift_slowAlloc();
              v305[0] = swift_slowAlloc();
              *v83 = 136446466;
              v296 = v57;
              v298 = v81;
              v84 = sub_100C71778();
              v86 = v85;
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              v87 = sub_1000136BC(v84, v86, v305);

              *(v83 + 4) = v87;
              *(v83 + 12) = 2082;
              v88 = sub_101255410();
              v90 = v89;
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              v91 = sub_1000136BC(v88, v90, v305);

              *(v83 + 14) = v91;
              _os_log_impl(&_mh_execute_header, v77, v78, "Keys to upload: %{public}s,\nadded: %{public}s.", v83, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v304);
              sub_100016590(v301, v296);
              sub_100018D00(v298, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v304);
              sub_100016590(v301, v57);
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v192 = *(v0 + 1768);
        v193 = *(v0 + 1760);
        v194 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v194, &qword_1016B0478, &unk_1013CDC10);
        v195 = *(v192 + 48);
        *(v0 + 2440) = v195;
        *(v0 + 2448) = (v192 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v193) = v195(v194, 1, v193);
        sub_10000B3A8(v194, &qword_1016B0478, &unk_1013CDC10);
        if (v193 == 1)
        {
          v266 = swift_task_alloc();
          *(v0 + 2456) = v266;
          *v266 = v0;
          v267 = sub_100CD2EEC;
LABEL_83:
          v266[1] = v267;
          v268 = *(v0 + 2160);
          v269 = *(v0 + 1896);
          v270 = *(v0 + 1128);

          sub_100CF0FB4(v269, v268, v270);
          return;
        }

        v196 = *(v0 + 2440);
        v197 = *(v0 + 1760);
        v198 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v198, &qword_1016B0478, &unk_1013CDC10);
        v199 = v196(v198, 1, v197);
        v200 = *(v0 + 1336);
        if (v199 != 1)
        {
          sub_100D12974(v200, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v280 = swift_task_alloc();
          *(v0 + 2472) = v280;
          *v280 = v0;
          v280[1] = sub_100CD5928;
          v281 = *(v0 + 2152);
          v282 = *(v0 + 2144);
          v283 = *(v0 + 1896);
          v284 = *(v0 + 1776);
          v285 = *(v0 + 1384);
          v286 = *(v0 + 1120);

          sub_100CF3F94(v285, v286, v283, v284, v282, v281);
          return;
        }

        v201 = *(v0 + 1968);
        v202 = *(v0 + 1120);
        sub_10000B3A8(v200, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v202, v201, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        v204 = os_log_type_enabled(v28, v203);
        v205 = *(v0 + 1968);
        if (v204)
        {
          v234 = swift_slowAlloc();
          v305[0] = swift_slowAlloc();
          *v234 = 136446466;
          v235 = sub_100C71778();
          v237 = v236;
          sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
          v238 = sub_1000136BC(v235, v237, v305);

          *(v234 + 4) = v238;
          *(v234 + 12) = 2082;
          v239 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v92 = *(v0 + 1824);
        v93 = *(v0 + 1816);
        v94 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v94, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v92 + 48))(v94, 1, v93) == 1)
        {
          v95 = *(v0 + 1192);
          v96 = *(v0 + 1184);
          v97 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v95 + 56))(v97, 1, 1, v96);
          goto LABEL_32;
        }

        v98 = *(v0 + 1896);
        v99 = *(v0 + 1872);
        v100 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v98 + *(v99 + 24), v100, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v117 = *(v0 + 1192);
            v118 = *(v0 + 1184);
            v119 = *(v0 + 1176);
            v120 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v120, type metadata accessor for StableIdentifier);
            (*(v117 + 56))(v119, 1, 1, v118);
            goto LABEL_32;
          }

          v113 = *(v0 + 1824);
          v114 = *(v0 + 1816);
          v115 = *(v0 + 1160);
          v116 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v106 = *(v115 + *(v116 + 96));
          (*(v113 + 8))(v115, v114);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v102 = *(v0 + 1824);
          v103 = *(v0 + 1160);
          v104 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v105 = (v103 + *(v104 + 96));
          v106 = *v105;
          LOBYTE(v103) = v105[1];

          v107 = *(v102 + 8);
          if (v103)
          {
            v108 = *(v0 + 1816);
            v109 = *(v0 + 1192);
            v110 = *(v0 + 1184);
            v111 = *(v0 + 1176);
            v112 = *(v0 + 1160);
            v107(*(v0 + 1840), v108);
            (*(v109 + 56))(v111, 1, 1, v110);
            v107(v112, v108);
            goto LABEL_32;
          }

          v107(*(v0 + 1160), *(v0 + 1816));
        }

        v121 = *(v0 + 1192);
        v122 = *(v0 + 1184);
        v123 = *(v0 + 1176);
        (*(v0 + 2104))(v123, *(v0 + 1840), *(v0 + 1816));
        *(v123 + *(v122 + 20)) = v106;
        (*(v121 + 56))(v123, 0, 1, v122);
LABEL_32:
        v124 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v124, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v124, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v125 = *(v0 + 1904);
        v126 = *(v0 + 1120);
        sub_100D12974(v124, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v127 = *(v126 + *(v125 + 44));
        if (!*(v127 + 16))
        {
          goto LABEL_38;
        }

        v128 = sub_100771F0C(12);
        if ((v129 & 1) == 0)
        {
          goto LABEL_38;
        }

        v130 = *(v0 + 1768);
        v131 = *(v0 + 1760);
        v132 = *(v0 + 1736);
        v133 = *(v0 + 1712);
        v134 = *(v0 + 1320);
        sub_100D11DC8(*(v127 + 56) + *(*(v0 + 1720) + 72) * v128, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v135 = *(v0 + 1248);
          v136 = *(v0 + 1240);
          v137 = *(v0 + 1216);
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = *(v0 + 1320);
          v139 = *(v0 + 1280);
          v140 = *(v0 + 1248);
          v141 = *(v0 + 1240);
          v142 = *(v0 + 1216);
          (*(v140 + 16))(v142, v138 + *(*(v0 + 1760) + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
        }

        v143 = *(v0 + 1896);
        v144 = *(v0 + 1272);
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        v146 = *(v0 + 1272);
        v147 = *(v0 + 1248);
        v148 = *(v0 + 1240);
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v145) = dispatch thunk of static Comparable.< infix(_:_:)();
        v149 = *(v147 + 8);
        v149(v146, v148);
        if (v145)
        {
          v150 = *(v0 + 1200);
          v149(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v150, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v151 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v153 = v152;
          v302 = v149;
          v154 = *(v0 + 2152);
          v155 = *(v0 + 2144);
          v156 = *(v0 + 1680);
          v157 = v151;

          v158 = type metadata accessor for EncryptedData();
          (*(*(v158 - 8) + 56))(v156, 1, 1, v158);
          sub_100017D5C(v157, v153);
          v297 = v157;
          v299 = v153;
          sub_10125A120(1, v157, v153, v156, v303);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v159 = swift_allocObject();
          v160 = *(v0 + 840);
          v161 = *(v0 + 856);
          v162 = *v303;
          *(v159 + 48) = *(v0 + 824);
          *(v159 + 64) = v160;
          *(v159 + 80) = v161;
          *(v159 + 96) = *(v0 + 872);
          *(v159 + 16) = xmmword_101385D80;
          *(v159 + 32) = v162;
          sub_10002E98C(v155, v154);
          sub_1003914F8(v303, v0 + 448);
          v163 = sub_100D11764(v159, v155, v154);
          v164 = *(v0 + 1808);
          v165 = *(v0 + 1472);
          v166 = *(v0 + 1464);
          v167 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v159 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v164, &v165[*(v167 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v165 = 12;
          *&v165[*(v167 + 24)] = v163;
          sub_100D11DC8(v165, v166, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
          }

          v169 = v32[2];
          v168 = v32[3];
          if (v169 >= v168 >> 1)
          {
            v32 = sub_100A5BE40((v168 > 1), v169 + 1, 1, v32);
          }

          v170 = *(v0 + 1944);
          v171 = *(v0 + 1472);
          v172 = *(v0 + 1464);
          v173 = *(v0 + 1456);
          v174 = *(v0 + 1424);
          v175 = *(v0 + 1120);
          v32[2] = v169 + 1;
          sub_100D12974(v172, v32 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v169, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v175, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v178 = os_log_type_enabled(v176, v177);
          v179 = *(v0 + 1944);
          v180 = *(v0 + 1456);
          v181 = *(v0 + 1280);
          v292 = *(v0 + 1472);
          v294 = *(v0 + 1240);
          v182 = *(v0 + 1200);
          if (v178)
          {
            v183 = swift_slowAlloc();
            v305[0] = swift_slowAlloc();
            *v183 = 136446466;
            v291 = v181;
            v184 = sub_100C71778();
            v186 = v185;
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            v187 = sub_1000136BC(v184, v186, v305);

            *(v183 + 4) = v187;
            *(v183 + 12) = 2082;
            v188 = sub_101255410();
            v190 = v189;
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            v191 = sub_1000136BC(v188, v190, v305);

            *(v183 + 14) = v191;
            _os_log_impl(&_mh_execute_header, v176, v177, "Keys to upload: %{public}s,\nadded: %{public}s.", v183, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v303);
            sub_100016590(v297, v299);
            sub_100018D00(v292, type metadata accessor for KeyDropInterface.KeyPackage);
            v302(v291, v294);
          }

          else
          {

            sub_100391554(v303);
            sub_100016590(v297, v299);
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v292, type metadata accessor for KeyDropInterface.KeyPackage);
            v302(v181, v294);
          }

          sub_100018D00(v182, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v263 = swift_task_alloc();
        *(v0 + 2488) = v263;
        *v263 = v0;
        v263[1] = sub_100CD880C;
        v264 = *(v0 + 1896);
        v265 = *(v0 + 1232);

        sub_100CF5FBC(v265, v264);
        return;
      case 16:
        v250 = swift_task_alloc();
        *(v0 + 2496) = v250;
        *v250 = v0;
        v250[1] = sub_100CDBC44;
        v251 = *(v0 + 1896);
        v252 = *(v0 + 1264);
        v253 = *(v0 + 1144);

        sub_100CF6C9C(v252, v253, v251);
        return;
      default:
        goto LABEL_6;
    }
  }
}

void sub_100CEE764()
{
  v304 = v0;
  v302 = (v0 + 232);
  v301 = (v0 + 808);
  sub_100018D00(*(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1120);
  sub_100D11DC8(v3, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v298 = v5;
    v6 = *(v0 + 1928);
    v291 = v4;
    v7 = *(v0 + 1920);
    v293 = *(v0 + 1912);
    v8 = *(v0 + 2509);
    v9 = swift_slowAlloc();
    v303[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v303);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v303);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v303);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v293, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v303);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v303);

    *(v9 + 64) = v27;
    v28 = v291;
    _os_log_impl(&_mh_execute_header, v291, v298, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v29 = *(v0 + 1928);
  v30 = *(v0 + 1920);
  v31 = *(v0 + 1912);

  sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v32 = *(v0 + 2208);
LABEL_6:
    v33 = *(v0 + 2200) + 1;
    if (v33 == *(v0 + 2184))
    {

      v245 = *(v0 + 1896);
      v246 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v246, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v245, type metadata accessor for OwnedBeaconRecord);

      v247 = *(v0 + 8);

      v247(v32);
      return;
    }

    *(v0 + 2208) = v32;
    *(v0 + 2200) = v33;
    *(v0 + 2192) = 0;
    v34 = *(v0 + 2176);
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = *(v0 + 2048);
    v36 = *(v0 + 1120);
    v37 = *(v34 + v33 + 32);
    *(v0 + 2509) = v37;
    sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 2048);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v303[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = sub_100C71778();
      v45 = v44;
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      v46 = sub_1000136BC(v43, v45, v303);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v47 = sub_10125403C(v37);
      v49 = sub_1000136BC(v47, v48, v303);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Keys to upload: %{public}s. Creating package for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v37)
    {
      case 1:
        v252 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v252 + 16) && (v253 = sub_100771F0C(1), (v254 & 1) != 0))
        {
          v255 = *(v0 + 1752);
          sub_100D11DC8(*(v252 + 56) + *(*(v0 + 1720) + 72) * v253, v255, type metadata accessor for BookmarkMetaData);
          v256 = *(v255 + 8);
          sub_100018D00(v255, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v256 = 0;
        }

        *(v0 + 2216) = v256;
        v285 = *(v0 + 2504);
        v286 = *(v0 + 1120);
        v287 = swift_task_alloc();
        *(v0 + 2224) = v287;
        *v287 = v0;
        v287[1] = sub_100CBBD44;
        v288 = *(v0 + 1704);

        sub_100CFC71C(v288, v286 + v285);
        return;
      case 4:
        v257 = swift_task_alloc();
        *(v0 + 2328) = v257;
        *v257 = v0;
        v257[1] = sub_100CC4E24;
        v258 = *(v0 + 1896);
        v259 = *(v0 + 1408);
        v260 = *(v0 + 1120);

        sub_100CF172C(v259, v260, v258, v0 + 880);
        return;
      case 5:
        v216 = *(v0 + 1768);
        v217 = *(v0 + 1760);
        v218 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v218, &qword_1016B0478, &unk_1013CDC10);
        v219 = *(v216 + 48);
        *(v0 + 2344) = v219;
        *(v0 + 2352) = (v216 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v217) = v219(v218, 1, v217);
        sub_10000B3A8(v218, &qword_1016B0478, &unk_1013CDC10);
        if (v217 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2360) = v264;
          *v264 = v0;
          v265 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v220 = *(v0 + 2344);
        v221 = *(v0 + 1760);
        v222 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v222, &qword_1016B0478, &unk_1013CDC10);
        v223 = v220(v222, 1, v221);
        v224 = *(v0 + 1368);
        if (v223 == 1)
        {
          v225 = *(v0 + 2000);
          v226 = *(v0 + 1120);
          sub_10000B3A8(v224, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v226, v225, type metadata accessor for SharingCircleKeyManager.Instruction);
          v28 = Logger.logObject.getter();
          v201 = static os_log_type_t.error.getter();
          v227 = os_log_type_enabled(v28, v201);
          v203 = *(v0 + 2000);
          if (v227)
          {
            v232 = swift_slowAlloc();
            v303[0] = swift_slowAlloc();
            *v232 = 136446466;
            v238 = sub_100C71778();
            v240 = v239;
            sub_100018D00(v203, type metadata accessor for SharingCircleKeyManager.Instruction);
            v241 = sub_1000136BC(v238, v240, v303);

            *(v232 + 4) = v241;
            *(v232 + 12) = 2082;
            v237 = 5;
LABEL_64:
            v242 = sub_10125403C(v237);
            v244 = sub_1000136BC(v242, v243, v303);

            *(v232 + 14) = v244;
            _os_log_impl(&_mh_execute_header, v28, v201, "No key alignment available for %{public}s. No package created for %{public}s", v232, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v224, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v277 = swift_task_alloc();
        *(v0 + 2376) = v277;
        *v277 = v0;
        v277[1] = sub_100CCA6E8;
        v270 = *(v0 + 2152);
        v271 = *(v0 + 2144);
        v272 = *(v0 + 1896);
        v273 = *(v0 + 1792);
        v274 = *(v0 + 1400);
        v275 = *(v0 + 1120);
        v276 = 0;
LABEL_88:

        sub_100CF2904(v274, v275, v272, v273, v276, v271, v270);
        return;
      case 6:
        v204 = *(v0 + 1768);
        v205 = *(v0 + 1760);
        v206 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v206, &qword_1016B0478, &unk_1013CDC10);
        v207 = *(v204 + 48);
        *(v0 + 2392) = v207;
        *(v0 + 2400) = (v204 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v205) = v207(v206, 1, v205);
        sub_10000B3A8(v206, &qword_1016B0478, &unk_1013CDC10);
        if (v205 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2408) = v264;
          *v264 = v0;
          v265 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v208 = *(v0 + 2392);
        v209 = *(v0 + 1760);
        v210 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v210, &qword_1016B0478, &unk_1013CDC10);
        v211 = v208(v210, 1, v209);
        v212 = *(v0 + 1352);
        if (v211 != 1)
        {
          sub_100D12974(v212, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v269 = swift_task_alloc();
          *(v0 + 2424) = v269;
          *v269 = v0;
          v269[1] = sub_100CD0008;
          v270 = *(v0 + 2152);
          v271 = *(v0 + 2144);
          v272 = *(v0 + 1896);
          v273 = *(v0 + 1784);
          v274 = *(v0 + 1392);
          v275 = *(v0 + 1120);
          v276 = 1;
          goto LABEL_88;
        }

        v213 = *(v0 + 1984);
        v214 = *(v0 + 1120);
        sub_10000B3A8(v212, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v214, v213, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v201 = static os_log_type_t.error.getter();
        v215 = os_log_type_enabled(v28, v201);
        v203 = *(v0 + 1984);
        if (v215)
        {
          v232 = swift_slowAlloc();
          v303[0] = swift_slowAlloc();
          *v232 = 136446466;
          v228 = sub_100C71778();
          v230 = v229;
          sub_100018D00(v203, type metadata accessor for SharingCircleKeyManager.Instruction);
          v231 = sub_1000136BC(v228, v230, v303);

          *(v232 + 4) = v231;
          *(v232 + 12) = 2082;
          v237 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v50 = *(v0 + 936);
        if (*(v50 + 16))
        {
          v51 = sub_100771F0C(v37);
          if (v52)
          {
            v53 = *(v0 + 2152);
            v54 = *(v0 + 2144);
            v55 = *(v0 + 1680);
            v56 = (*(v50 + 56) + 16 * v51);
            v58 = *v56;
            v57 = v56[1];
            v59 = type metadata accessor for EncryptedData();
            (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
            sub_100017D5C(v58, v57);
            sub_100017D5C(v58, v57);
            sub_10125A120(1, v58, v57, v55, v302);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v60 = swift_allocObject();
            v61 = *(v0 + 264);
            v62 = *(v0 + 280);
            v63 = *v302;
            *(v60 + 48) = *(v0 + 248);
            *(v60 + 64) = v61;
            *(v60 + 80) = v62;
            *(v60 + 96) = *(v0 + 296);
            *(v60 + 16) = xmmword_101385D80;
            *(v60 + 32) = v63;
            sub_10002E98C(v54, v53);
            sub_1003914F8(v302, v0 + 736);
            v64 = sub_100D11764(v60, v54, v53);
            v299 = v58;
            v65 = *(v0 + 1808);
            v66 = *(v0 + 1520);
            v67 = *(v0 + 1512);
            v68 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v60 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v65, &v66[*(v68 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v66 = v37;
            *&v66[*(v68 + 24)] = v64;
            sub_100D11DC8(v66, v67, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
            }

            v70 = v32[2];
            v69 = v32[3];
            if (v70 >= v69 >> 1)
            {
              v32 = sub_100A5BE40((v69 > 1), v70 + 1, 1, v32);
            }

            v71 = *(v0 + 1960);
            v72 = *(v0 + 1520);
            v73 = *(v0 + 1512);
            v74 = *(v0 + 1504);
            v75 = *(v0 + 1424);
            v76 = *(v0 + 1120);
            v32[2] = v70 + 1;
            sub_100D12974(v73, v32 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v76, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v72, v74, type metadata accessor for KeyDropInterface.KeyPackage);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            v79 = os_log_type_enabled(v77, v78);
            v80 = *(v0 + 1960);
            v81 = *(v0 + 1520);
            v82 = *(v0 + 1504);
            if (v79)
            {
              v83 = swift_slowAlloc();
              v303[0] = swift_slowAlloc();
              *v83 = 136446466;
              v294 = v57;
              v296 = v81;
              v84 = sub_100C71778();
              v86 = v85;
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              v87 = sub_1000136BC(v84, v86, v303);

              *(v83 + 4) = v87;
              *(v83 + 12) = 2082;
              v88 = sub_101255410();
              v90 = v89;
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              v91 = sub_1000136BC(v88, v90, v303);

              *(v83 + 14) = v91;
              _os_log_impl(&_mh_execute_header, v77, v78, "Keys to upload: %{public}s,\nadded: %{public}s.", v83, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v302);
              sub_100016590(v299, v294);
              sub_100018D00(v296, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v302);
              sub_100016590(v299, v57);
              sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v192 = *(v0 + 1768);
        v193 = *(v0 + 1760);
        v194 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v194, &qword_1016B0478, &unk_1013CDC10);
        v195 = *(v192 + 48);
        *(v0 + 2440) = v195;
        *(v0 + 2448) = (v192 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v193) = v195(v194, 1, v193);
        sub_10000B3A8(v194, &qword_1016B0478, &unk_1013CDC10);
        if (v193 == 1)
        {
          v264 = swift_task_alloc();
          *(v0 + 2456) = v264;
          *v264 = v0;
          v265 = sub_100CD2EEC;
LABEL_83:
          v264[1] = v265;
          v266 = *(v0 + 2160);
          v267 = *(v0 + 1896);
          v268 = *(v0 + 1128);

          sub_100CF0FB4(v267, v266, v268);
          return;
        }

        v196 = *(v0 + 2440);
        v197 = *(v0 + 1760);
        v198 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v198, &qword_1016B0478, &unk_1013CDC10);
        if (v196(v198, 1, v197) != 1)
        {
          sub_100D12974(*(v0 + 1336), *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v278 = swift_task_alloc();
          *(v0 + 2472) = v278;
          *v278 = v0;
          v278[1] = sub_100CD5928;
          v279 = *(v0 + 2152);
          v280 = *(v0 + 2144);
          v281 = *(v0 + 1896);
          v282 = *(v0 + 1776);
          v283 = *(v0 + 1384);
          v284 = *(v0 + 1120);

          sub_100CF3F94(v283, v284, v281, v282, v280, v279);
          return;
        }

        v199 = *(v0 + 1968);
        v200 = *(v0 + 1120);
        sub_10000B3A8(*(v0 + 1336), &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v200, v199, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = Logger.logObject.getter();
        v201 = static os_log_type_t.error.getter();
        v202 = os_log_type_enabled(v28, v201);
        v203 = *(v0 + 1968);
        if (v202)
        {
          v232 = swift_slowAlloc();
          v303[0] = swift_slowAlloc();
          *v232 = 136446466;
          v233 = sub_100C71778();
          v235 = v234;
          sub_100018D00(v203, type metadata accessor for SharingCircleKeyManager.Instruction);
          v236 = sub_1000136BC(v233, v235, v303);

          *(v232 + 4) = v236;
          *(v232 + 12) = 2082;
          v237 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v203, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v92 = *(v0 + 1824);
        v93 = *(v0 + 1816);
        v94 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v94, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v92 + 48))(v94, 1, v93) == 1)
        {
          v95 = *(v0 + 1192);
          v96 = *(v0 + 1184);
          v97 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v95 + 56))(v97, 1, 1, v96);
          goto LABEL_32;
        }

        v98 = *(v0 + 1896);
        v99 = *(v0 + 1872);
        v100 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v98 + *(v99 + 24), v100, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v117 = *(v0 + 1192);
            v118 = *(v0 + 1184);
            v119 = *(v0 + 1176);
            v120 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v120, type metadata accessor for StableIdentifier);
            (*(v117 + 56))(v119, 1, 1, v118);
            goto LABEL_32;
          }

          v113 = *(v0 + 1824);
          v114 = *(v0 + 1816);
          v115 = *(v0 + 1160);
          v116 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v106 = *(v115 + *(v116 + 96));
          (*(v113 + 8))(v115, v114);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v102 = *(v0 + 1824);
          v103 = *(v0 + 1160);
          v104 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v105 = (v103 + *(v104 + 96));
          v106 = *v105;
          LOBYTE(v103) = v105[1];

          v107 = *(v102 + 8);
          if (v103)
          {
            v108 = *(v0 + 1816);
            v109 = *(v0 + 1192);
            v110 = *(v0 + 1184);
            v111 = *(v0 + 1176);
            v112 = *(v0 + 1160);
            v107(*(v0 + 1840), v108);
            (*(v109 + 56))(v111, 1, 1, v110);
            v107(v112, v108);
            goto LABEL_32;
          }

          v107(*(v0 + 1160), *(v0 + 1816));
        }

        v121 = *(v0 + 1192);
        v122 = *(v0 + 1184);
        v123 = *(v0 + 1176);
        (*(v0 + 2104))(v123, *(v0 + 1840), *(v0 + 1816));
        *(v123 + *(v122 + 20)) = v106;
        (*(v121 + 56))(v123, 0, 1, v122);
LABEL_32:
        v124 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v124, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v124, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v125 = *(v0 + 1904);
        v126 = *(v0 + 1120);
        sub_100D12974(v124, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v127 = *(v126 + *(v125 + 44));
        if (!*(v127 + 16))
        {
          goto LABEL_38;
        }

        v128 = sub_100771F0C(12);
        if ((v129 & 1) == 0)
        {
          goto LABEL_38;
        }

        v130 = *(v0 + 1768);
        v131 = *(v0 + 1760);
        v132 = *(v0 + 1736);
        v133 = *(v0 + 1712);
        v134 = *(v0 + 1320);
        sub_100D11DC8(*(v127 + 56) + *(*(v0 + 1720) + 72) * v128, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v135 = *(v0 + 1248);
          v136 = *(v0 + 1240);
          v137 = *(v0 + 1216);
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = *(v0 + 1320);
          v139 = *(v0 + 1280);
          v140 = *(v0 + 1248);
          v141 = *(v0 + 1240);
          v142 = *(v0 + 1216);
          (*(v140 + 16))(v142, v138 + *(*(v0 + 1760) + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
        }

        v143 = *(v0 + 1896);
        v144 = *(v0 + 1272);
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        v146 = *(v0 + 1272);
        v147 = *(v0 + 1248);
        v148 = *(v0 + 1240);
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v145) = dispatch thunk of static Comparable.< infix(_:_:)();
        v149 = *(v147 + 8);
        v149(v146, v148);
        if (v145)
        {
          v150 = *(v0 + 1200);
          v149(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v150, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v151 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v153 = v152;
          v300 = v149;
          v154 = *(v0 + 2152);
          v155 = *(v0 + 2144);
          v156 = *(v0 + 1680);
          v157 = v151;

          v158 = type metadata accessor for EncryptedData();
          (*(*(v158 - 8) + 56))(v156, 1, 1, v158);
          sub_100017D5C(v157, v153);
          v295 = v157;
          v297 = v153;
          sub_10125A120(1, v157, v153, v156, v301);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v159 = swift_allocObject();
          v160 = *(v0 + 840);
          v161 = *(v0 + 856);
          v162 = *v301;
          *(v159 + 48) = *(v0 + 824);
          *(v159 + 64) = v160;
          *(v159 + 80) = v161;
          *(v159 + 96) = *(v0 + 872);
          *(v159 + 16) = xmmword_101385D80;
          *(v159 + 32) = v162;
          sub_10002E98C(v155, v154);
          sub_1003914F8(v301, v0 + 448);
          v163 = sub_100D11764(v159, v155, v154);
          v164 = *(v0 + 1808);
          v165 = *(v0 + 1472);
          v166 = *(v0 + 1464);
          v167 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v159 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v164, &v165[*(v167 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v165 = 12;
          *&v165[*(v167 + 24)] = v163;
          sub_100D11DC8(v165, v166, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_100A5BE40(0, v32[2] + 1, 1, v32);
          }

          v169 = v32[2];
          v168 = v32[3];
          if (v169 >= v168 >> 1)
          {
            v32 = sub_100A5BE40((v168 > 1), v169 + 1, 1, v32);
          }

          v170 = *(v0 + 1944);
          v171 = *(v0 + 1472);
          v172 = *(v0 + 1464);
          v173 = *(v0 + 1456);
          v174 = *(v0 + 1424);
          v175 = *(v0 + 1120);
          v32[2] = v169 + 1;
          sub_100D12974(v172, v32 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v169, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v175, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v178 = os_log_type_enabled(v176, v177);
          v179 = *(v0 + 1944);
          v180 = *(v0 + 1456);
          v181 = *(v0 + 1280);
          v290 = *(v0 + 1472);
          v292 = *(v0 + 1240);
          v182 = *(v0 + 1200);
          if (v178)
          {
            v183 = swift_slowAlloc();
            v303[0] = swift_slowAlloc();
            *v183 = 136446466;
            v289 = v181;
            v184 = sub_100C71778();
            v186 = v185;
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            v187 = sub_1000136BC(v184, v186, v303);

            *(v183 + 4) = v187;
            *(v183 + 12) = 2082;
            v188 = sub_101255410();
            v190 = v189;
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            v191 = sub_1000136BC(v188, v190, v303);

            *(v183 + 14) = v191;
            _os_log_impl(&_mh_execute_header, v176, v177, "Keys to upload: %{public}s,\nadded: %{public}s.", v183, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v301);
            sub_100016590(v295, v297);
            sub_100018D00(v290, type metadata accessor for KeyDropInterface.KeyPackage);
            v300(v289, v292);
          }

          else
          {

            sub_100391554(v301);
            sub_100016590(v295, v297);
            sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v179, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v290, type metadata accessor for KeyDropInterface.KeyPackage);
            v300(v181, v292);
          }

          sub_100018D00(v182, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v261 = swift_task_alloc();
        *(v0 + 2488) = v261;
        *v261 = v0;
        v261[1] = sub_100CD880C;
        v262 = *(v0 + 1896);
        v263 = *(v0 + 1232);

        sub_100CF5FBC(v263, v262);
        return;
      case 16:
        v248 = swift_task_alloc();
        *(v0 + 2496) = v248;
        *v248 = v0;
        v248[1] = sub_100CDBC44;
        v249 = *(v0 + 1896);
        v250 = *(v0 + 1264);
        v251 = *(v0 + 1144);

        sub_100CF6C9C(v250, v251, v249);
        return;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_100CF0FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v3[15] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for StableIdentifier(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_projectBox();

  return _swift_task_switch(sub_100CF112C, a3, 0);
}

uint64_t sub_100CF112C()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v0[24] = v3;
  sub_100D11DC8(v2 + v3[6], v1, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100018D00(v1, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload)
  {
    v5 = v0[13];
    v0[5] = v3;
    v0[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v6 = sub_1000280DC(v0 + 2);
    sub_100D11DC8(v5, v6, type metadata accessor for OwnedBeaconRecord);
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_100CF1400;
    v8 = v0[16];

    return sub_100C9FBF0(v8, (v0 + 2));
  }

  else
  {
    v11 = v0[19];
    v10 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[13];
    static Date.trustedNow.getter(v10);
    v15 = v3[8];
    v16 = sub_10088756C(v14 + v3[5], v14 + v15, v10, 0);
    (*(v11 + 16))(v13, v14 + v15, v12);
    v17 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    *(v13 + *(v17 + 20)) = v16;
    (*(v11 + 32))(v13 + *(v17 + 24), v10, v12);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    v18 = v0[23];
    v19 = v0[17];
    swift_beginAccess();
    sub_100D12C2C(v19, v18);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100CF1400()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_100CF1694;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_100007BAC((v2 + 16));
    v4 = sub_100CF1528;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CF1528()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  (*(v2 + 16))(v3, v0[13] + *(v0[24] + 32), v1);
  v6 = *v4;
  v7 = *(v5 + 36);
  v8 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  (*(v2 + 32))(v3 + *(v8 + 24), &v4[v7], v1);
  *(v3 + *(v8 + 20)) = v6;
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = v0[23];
  v10 = v0[17];
  swift_beginAccess();
  sub_100D12C2C(v10, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100CF1694()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v5[21] = swift_task_alloc();
  v6 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = *(type metadata accessor for BookmarkMetaData(0) - 8);
  v5[27] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9B30, &unk_1013E3698);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100CF18D8, v4, 0);
}

uint64_t sub_100CF18D8()
{
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[23];
  v4 = *(v3 + 56);
  v0[31] = v4;
  v0[32] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100CF19A0;
  v7 = v0[16];
  v6 = v0[17];

  return sub_100CF9A0C(v7, 4, v6);
}

uint64_t sub_100CF19A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = v2;

  v6 = v4[19];
  if (v2)
  {
    v7 = sub_100CF2728;
  }

  else
  {
    v7 = sub_100CF1AD8;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_100CF1AD8()
{
  v39 = v0;
  v1 = *(*(v0 + 128) + *(*(v0 + 160) + 44));
  if (*(v1 + 16))
  {
    v2 = sub_100771F0C(4);
    if (v3)
    {
      v4 = *(v0 + 280);
      v5 = *(v0 + 216);
      sub_100D11DC8(*(v1 + 56) + *(*(v0 + 208) + 72) * v2, v5, type metadata accessor for BookmarkMetaData);
      v6 = *(v5 + 8);
      sub_100018D00(v5, type metadata accessor for BookmarkMetaData);
      if (v6 < v4)
      {
        v7 = *(v0 + 280);
        goto LABEL_6;
      }

LABEL_9:
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 168);
      v13 = *(v0 + 128);
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177BF08);
      sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 240);
      v19 = *(v0 + 168);
      if (v17)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
        v25 = sub_1000136BC(v22, v24, &v38);

        *(v20 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "Wild bundle reached highWater mark. Not uploading wild bundle for %{private,mask.hash}s.", v20, 0x16u);
        sub_100007BAC(v21);
      }

      else
      {

        sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      sub_10000B3A8(v18, &qword_1016B9B30, &unk_1013E3698);
      (*(v0 + 248))(*(v0 + 120), 1, 1, *(v0 + 176));

      v32 = *(v0 + 8);
      goto LABEL_21;
    }
  }

  v7 = *(v0 + 280);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = *(v0 + 144);
  *(v0 + 56) = v8[1];
  v9 = *(v0 + 272);
  *(v0 + 296) = v9;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    v11 = v9 - v7;
    if (v11 >= 0)
    {
      v10 = -v11;
      goto LABEL_14;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if ((v7 - v9) < 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  *(v0 + 304) = v10;
  v26 = *(v0 + 64);
  if (v26 >> 60 == 15)
  {
    v27 = 8;
LABEL_18:
    v30 = *(v0 + 240);
    sub_1001BAEE0();
    swift_allocError();
    *v31 = v27;
    swift_willThrow();
    sub_10000B3A8(v30, &qword_1016B9B30, &unk_1013E3698);

    v32 = *(v0 + 8);
LABEL_21:

    v32();
    return;
  }

  v28 = *(v0 + 56);
  *(v0 + 72) = *v8;
  v29 = *(v0 + 80);
  if (v29 >> 60 == 15)
  {
    v27 = 9;
    goto LABEL_18;
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 72);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord(0);
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v35 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v33, v35, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v0 + 56, v0 + 88, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 72, v0 + 104, &qword_1016977A8, &qword_1013D6820);
  v36 = swift_task_alloc();
  *(v0 + 312) = v36;
  *v36 = v0;
  v36[1] = sub_100CF2098;
  v37 = *(v0 + 200);

  sub_100D01E78(v37, v0 + 16, v9, v28, v26, v34, v29);
}

uint64_t sub_100CF2098()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_100CF27F8;
  }

  else
  {
    v5 = *(v2 + 152);
    sub_100007BAC((v2 + 16));
    v4 = sub_100CF21C0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CF21C0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1000D2A70(*(v0 + 240), v1, &qword_1016B9B30, &unk_1013E3698);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  if (v4 == 1)
  {
    v8 = *(v0 + 200);
    v31 = *(v0 + 176);
    sub_10000B3A8(v6, &qword_1016B9B30, &unk_1013E3698);
    sub_10000B3A8(v0 + 72, &qword_1016977A8, &qword_1013D6820);
    sub_10000B3A8(v0 + 56, &qword_1016977A8, &qword_1013D6820);
    sub_10000B3A8(v7, &qword_1016B9B30, &unk_1013E3698);
    sub_100D12974(v8, v6, type metadata accessor for KeyDropInterface.KeyPackage);
    result = v5(v6, 0, 1, v31);
    if (*(v0 + 304))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1000D2AD8(*(v0 + 240), *(v0 + 120), &qword_1016B9B30, &unk_1013E3698);

    v19 = *(v0 + 8);
LABEL_15:

    return v19();
  }

  v14 = *(v0 + 224);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  sub_100D12974(*(v0 + 232), v16, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v16 + *(v17 + 20), &v14[*(v17 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  v32 = *(v15 + *(v17 + 24));

  sub_100397FD4(v18);
  sub_10000B3A8(v0 + 72, &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8(v0 + 56, &qword_1016977A8, &qword_1013D6820);
  sub_100018D00(v16, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v15, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_10000B3A8(v6, &qword_1016B9B30, &unk_1013E3698);
  *v14 = 4;
  *&v14[*(v17 + 24)] = v32;
  v5(v14, 0, 1, v17);
  result = sub_1000D2AD8(v14, v6, &qword_1016B9B30, &unk_1013E3698);
  if (!*(v0 + 304))
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = *(v0 + 296);
  v11 = v10 + 1;
  if (v10 == -1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 296) = v11;
  v12 = *(v0 + 280);
  v13 = v12 - v11;
  if (v12 < v11)
  {
    if ((v11 - v12) >= 0)
    {
      v13 = v12 - v11;
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((v12 - v11) < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_10:
  *(v0 + 304) = v13;
  v20 = *(v0 + 64);
  if (v20 >> 60 == 15)
  {
    v21 = 8;
LABEL_14:
    v24 = *(v0 + 240);
    sub_1001BAEE0();
    swift_allocError();
    *v25 = v21;
    swift_willThrow();
    sub_10000B3A8(v24, &qword_1016B9B30, &unk_1013E3698);

    v19 = *(v0 + 8);
    goto LABEL_15;
  }

  v22 = *(v0 + 56);
  *(v0 + 72) = **(v0 + 144);
  v23 = *(v0 + 80);
  if (v23 >> 60 == 15)
  {
    v21 = 9;
    goto LABEL_14;
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 72);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord(0);
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v28 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v26, v28, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v0 + 56, v0 + 88, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 72, v0 + 104, &qword_1016977A8, &qword_1013D6820);
  v29 = swift_task_alloc();
  *(v0 + 312) = v29;
  *v29 = v0;
  v29[1] = sub_100CF2098;
  v30 = *(v0 + 200);

  return sub_100D01E78(v30, v0 + 16, v11, v22, v20, v27, v23);
}

uint64_t sub_100CF2728()
{
  sub_10000B3A8(*(v0 + 240), &qword_1016B9B30, &unk_1013E3698);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF27F8()
{
  v1 = v0[30];
  sub_10000B3A8((v0 + 9), &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8((v0 + 7), &qword_1016977A8, &qword_1013D6820);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100CF2904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = v7;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 320) = a5;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  *(v8 + 176) = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = type metadata accessor for TimeBasedKey(0);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = *(type metadata accessor for BookmarkMetaData(0) - 8);
  *(v8 + 264) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 272) = v13;
  *v13 = v8;
  v13[1] = sub_100CF2B20;
  if (a5)
  {
    v14 = 6;
  }

  else
  {
    v14 = 5;
  }

  return sub_100CF9A0C(a2, v14, a3);
}

uint64_t sub_100CF2B20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[21];

    return _swift_task_switch(sub_100CF2CC8, v7, 0);
  }
}

void sub_100CF2CC8()
{
  v33 = v0;
  v1 = *(v0 + 288);
  if ((*(v0 + 320) & 1) != 0 || !v1)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (v1 < v3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v4 = *(*(v0 + 128) + *(*(v0 + 176) + 44));
  if (*(v4 + 16) && ((*(v0 + 320) & 1) == 0 ? (v5 = 5) : (v5 = 6), v6 = sub_100771F0C(v5), (v7 & 1) != 0))
  {
    v8 = *(v0 + 264);
    sub_100D11DC8(*(v4 + 56) + *(*(v0 + 256) + 72) * v6, v8, type metadata accessor for BookmarkMetaData);
    v9 = *(v8 + 8);
    sub_100018D00(v8, type metadata accessor for BookmarkMetaData);
    if (v9 >= v1)
    {
LABEL_13:
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 184);
      v11 = *(v0 + 128);
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177BF08);
      sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 184);
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32 = v18;
        *v17 = 134218755;
        *(v17 + 4) = v1;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v9;
        *(v17 + 22) = 2160;
        *(v17 + 24) = 1752392040;
        *(v17 + 32) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        v22 = sub_1000136BC(v19, v21, &v32);

        *(v17 + 34) = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "Address key package reached highWater mark (%llu > %llu). Not uploading address keys for %{private,mask.hash}s.", v17, 0x2Au);
        sub_100007BAC(v18);
      }

      else
      {

        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v29 = *(v0 + 120);
      v30 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

      v31 = *(v0 + 8);

      v31();
      return;
    }
  }

  else
  {
    v9 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  v23 = *(v0 + 320);
  v24 = *(v0 + 136);
  *(v0 + 40) = type metadata accessor for OwnedBeaconRecord(0);
  *(v0 + 48) = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v25 = sub_1000280DC((v0 + 16));
  sub_100D11DC8(v24, v25, type metadata accessor for OwnedBeaconRecord);
  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = sub_100CF31AC;
  v27 = *(v0 + 280);
  v28 = *(v0 + 288);

  sub_100D075D8(v0 + 16, v23 & 1, v27, v28);
}

uint64_t sub_100CF31AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = v4[21];

    v6 = sub_100CF3BE0;
    v7 = v5;
  }

  else
  {
    v8 = v4[21];
    v4[39] = a1;
    sub_100007BAC(v4 + 2);
    v6 = sub_100CF32F8;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100CF32F8()
{
  v81 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 144);
  v4 = *(v0 + 320) & 1;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = sub_10013CFC0(sub_100D12BBC, v5, v1);

  v7 = v6[2];
  if (!v7)
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_35:
    v54 = sub_100D11764(v10, *(v0 + 152), *(v0 + 160));
    if (v2)
    {

      v55 = *(v0 + 8);
    }

    else
    {
      v56 = v54;
      v57 = *(v0 + 320);
      v58 = *(v0 + 144);
      v59 = *(v0 + 120);

      if (v57)
      {
        v60 = 6;
      }

      else
      {
        v60 = 5;
      }

      v61 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      sub_100D11DC8(v58, &v59[*(v61 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v59 = v60;
      *&v59[*(v61 + 24)] = v56;
      (*(*(v61 - 8) + 56))(v59, 0, 1, v61);

      v55 = *(v0 + 8);
    }

    return v55();
  }

  v8 = *(v0 + 240);
  v70 = *(v0 + 232);
  sub_101123DD0(0, v7, 0);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v71 = v8;
  v68 = v6;
  v69 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v67 = v7;
  while (1)
  {
    if (v9 >= v6[2])
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v78 = v10;
    v11 = *(v0 + 248);
    sub_100D11DC8(&v69[*(v71 + 72) * v9], v11, type metadata accessor for TimeBasedKey);
    v12 = sub_100A7A194(*(v11 + *(v70 + 24) + 16), *(v11 + *(v70 + 24) + 24), 0, 0);
    if (v2)
    {
      v10 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_30:
        v46 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_101385D80;
        *(v0 + 104) = v2;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v48 = String.init<A>(describing:)();
        v50 = v49;
        *(v47 + 56) = &type metadata for String;
        *(v47 + 64) = sub_100008C00();
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v46, "Error deriving advertisementKey: %@", 35, 2, v47);

        sub_1001BAF88();
        v51 = swift_allocError();
        *v52 = 0;
        swift_willThrow();

LABEL_50:
        v79 = 0;
        v80 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v65 = v80;
        *(v0 + 72) = v79;
        *(v0 + 80) = v65;
        v66._object = 0x800000010134CB30;
        v66._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v66);
        *(v0 + 112) = v51;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        return _assertionFailure(_:_:file:line:flags:)();
      }

LABEL_54:
      swift_once();
      goto LABEL_30;
    }

    v13 = sub_100A7829C(v12, 0, 2);
    v10 = v14;
    result = CCECCryptorRelease();
    v16 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v16 == 2)
      {
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        v19 = __OFSUB__(v17, v18);
        v20 = v17 - v18;
        if (v19)
        {
          goto LABEL_52;
        }

        if (v20 != 28)
        {
          break;
        }

        goto LABEL_15;
      }

      v53 = 0;
      goto LABEL_49;
    }

    if (!v16)
    {
      if (BYTE6(v10) != 28)
      {
        break;
      }

      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_53;
    }

    if (HIDWORD(v13) - v13 != 28)
    {
      break;
    }

LABEL_15:
    v21 = *(v0 + 248);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    sub_10002EA98(6, v13, v10, &v79);
    v76 = v80;
    v77 = v79;
    v75 = *v21;
    v24 = type metadata accessor for EncryptedData();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v22, 1, 1, v24);
    sub_1000D2A70(v22, v23, &qword_1016B9AE8, &unk_1013E35D0);
    v26 = *(v25 + 48);
    v27 = v26(v23, 1, v24);
    v28 = *(v0 + 216);
    if (v27 == 1)
    {
      sub_10000B3A8(*(v0 + 216), &qword_1016B9AE8, &unk_1013E35D0);
      v73 = 0xF000000000000000;
      v74 = 0;
    }

    else
    {
      v29 = EncryptedData.cipherText.getter();
      v73 = v30;
      v74 = v29;
      (*(v25 + 8))(v28, v24);
    }

    v31 = *(v0 + 208);
    sub_1000D2A70(*(v0 + 224), v31, &qword_1016B9AE8, &unk_1013E35D0);
    v32 = v26(v31, 1, v24);
    v33 = *(v0 + 208);
    if (v32 == 1)
    {
      sub_10000B3A8(*(v0 + 208), &qword_1016B9AE8, &unk_1013E35D0);
      v72 = 0;
      v34 = 0xF000000000000000;
    }

    else
    {
      v72 = EncryptedData.initializationVector.getter();
      v34 = v35;
      (*(v25 + 8))(v33, v24);
    }

    v36 = *(v0 + 200);
    sub_1000D2A70(*(v0 + 224), v36, &qword_1016B9AE8, &unk_1013E35D0);
    v37 = v26(v36, 1, v24);
    v38 = *(v0 + 224);
    v39 = *(v0 + 200);
    if (v37 == 1)
    {
      sub_10000B3A8(*(v0 + 224), &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v39, &qword_1016B9AE8, &unk_1013E35D0);
      v40 = 0;
      v41 = 0xF000000000000000;
    }

    else
    {
      v40 = EncryptedData.tag.getter();
      v41 = v42;
      sub_10000B3A8(v38, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v25 + 8))(v39, v24);
    }

    sub_100018D00(*(v0 + 248), type metadata accessor for TimeBasedKey);
    v10 = v78;
    v44 = *(v78 + 16);
    v43 = *(v78 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_101123DD0((v43 > 1), v44 + 1, 1);
      v10 = v78;
    }

    v2 = 0;
    ++v9;
    *(v10 + 16) = v44 + 1;
    v45 = (v10 + 72 * v44);
    v45[4] = v75;
    v45[5] = v77;
    v45[6] = v76;
    v45[7] = v74;
    v45[8] = v73;
    v45[9] = v72;
    v45[10] = v34;
    v45[11] = v40;
    v45[12] = v41;
    v6 = v68;
    if (v67 == v9)
    {

      v2 = 0;
      goto LABEL_35;
    }
  }

  if (v16 == 2)
  {
    v63 = *(v13 + 16);
    v62 = *(v13 + 24);
    v53 = v62 - v63;
    if (!__OFSUB__(v62, v63))
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    v53 = BYTE6(v10);
LABEL_49:
    sub_100018350();
    v51 = swift_allocError();
    *v64 = 28;
    *(v64 + 8) = v53;
    *(v64 + 16) = 0;
    swift_willThrow();
    sub_100016590(v13, v10);
    goto LABEL_50;
  }

  if (v16 != 1)
  {
    goto LABEL_48;
  }

  if (!__OFSUB__(HIDWORD(v13), v13))
  {
    v53 = HIDWORD(v13) - v13;
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t sub_100CF3BE0()
{
  v22 = v0;
  sub_100007BAC(v0 + 2);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315651;
    v0[11] = v7;
    v0[12] = v6;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    String.append(_:)(v10);
    _print_unlocked<A, B>(_:_:)();
    v11 = sub_1000136BC(v0[7], v0[8], &v21);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "No local keys for range %s. Not uploading address keys for %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[24];

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v17 = v0[15];
  v18 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100CF3F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v7[27] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v7[34] = swift_task_alloc();
  v10 = type metadata accessor for TimeBasedKey(0);
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = *(type metadata accessor for BookmarkMetaData(0) - 8);
  v7[39] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[40] = v11;
  *v11 = v7;
  v11[1] = sub_100CF4204;

  return sub_100CF9A0C(a2, 9, a3);
}

uint64_t sub_100CF4204(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[26];

    return _swift_task_switch(sub_100CF4408, v7, 0);
  }
}

uint64_t sub_100CF4408()
{
  v39 = v0;
  v3 = v0[42];
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(v3, 0x60uLL))
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 96 * v3;
  v2 = v4 - 1;
  v5 = v4 - 96;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v2 < v5)
  {
    __break(1u);
LABEL_7:
    v2 = 0;
  }

  v6 = *(v0[21] + *(v0[27] + 44));
  if (*(v6 + 16) && (v7 = sub_100771F0C(9), (v8 & 1) != 0))
  {
    v9 = v0[39];
    sub_100D11DC8(*(v6 + 56) + *(v0[38] + 72) * v7, v9, type metadata accessor for BookmarkMetaData);
    v1 = *(v9 + 8);
    sub_100018D00(v9, type metadata accessor for BookmarkMetaData);
    if (v1 >= v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if (!v2)
    {
LABEL_11:
      if (qword_101694DF8 == -1)
      {
LABEL_12:
        v10 = v0[28];
        v11 = v0[21];
        v12 = type metadata accessor for Logger();
        sub_1000076D4(v12, qword_10177BF08);
        sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[28];
        if (v15)
        {
          v17 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v17 = 136315907;
          v38 = v37;
          v0[11] = v2;
          v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v18);

          v19._countAndFlagsBits = 41;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);
          v20 = sub_1000136BC(0x7972616D6972702ELL, 0xEA0000000000282FLL, &v38);

          *(v17 + 4) = v20;
          *(v17 + 12) = 2080;
          v0[12] = v1;
          v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v21);

          v22._countAndFlagsBits = 41;
          v22._object = 0xE100000000000000;
          String.append(_:)(v22);
          v23 = sub_1000136BC(0x7972616D6972702ELL, 0xEA0000000000282FLL, &v38);

          *(v17 + 14) = v23;
          *(v17 + 22) = 2160;
          *(v17 + 24) = 1752392040;
          *(v17 + 32) = 2081;
          type metadata accessor for UUID();
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v26 = v25;
          sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
          v27 = sub_1000136BC(v24, v26, &v38);

          *(v17 + 34) = v27;
          _os_log_impl(&_mh_execute_header, v13, v14, "Connection key package reached highWater mark (%s > %s).\nNot uploading connection keys for %{private,mask.hash}s.", v17, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v34 = v0[20];
        v35 = type metadata accessor for KeyDropInterface.KeyPackage(0);
        (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

        v36 = v0[1];

        return v36();
      }

LABEL_23:
      swift_once();
      goto LABEL_12;
    }
  }

  v28 = v0[22];
  v0[5] = type metadata accessor for OwnedBeaconRecord(0);
  v0[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v29 = sub_1000280DC(v0 + 2);
  sub_100D11DC8(v28, v29, type metadata accessor for OwnedBeaconRecord);
  v30 = swift_task_alloc();
  v0[43] = v30;
  *v30 = v0;
  v30[1] = sub_100CF4A3C;
  v31 = v0[41];
  v32 = v0[42];

  return sub_100D075D8((v0 + 2), 0, v31, v32);
}

uint64_t sub_100CF4A3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = v4[26];

    v6 = sub_100CF5BD0;
    v7 = v5;
  }

  else
  {
    v8 = v4[26];
    v4[45] = a1;
    sub_100007BAC(v4 + 2);
    v6 = sub_100CF4BC4;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100CF4BC4()
{
  v126 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_10013CFC0(sub_100D12BE0, v4, v1);
  v116 = v2;

  v6 = *(v5 + 16);
  if (!v6)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_85:
    v80 = v0[24];
    v81 = v0[25];

    v82 = sub_100D11764(v11, v80, v81);
    if (v116)
    {
    }

    else
    {
      v84 = v82;
      v85 = v0[23];
      v86 = v0[20];

      v87 = type metadata accessor for KeyDropInterface.KeyPackage(0);
      sub_100D11DC8(v85, &v86[*(v87 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v86 = 9;
      *&v86[*(v87 + 24)] = v84;
      (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
    }

    v83 = v0[1];

    return v83();
  }

  v7 = 0;
  v108 = (v0 + 410);
  v109 = (v0 + 382);
  v110 = (v0 + 438);
  v8 = v0[36];
  v9 = (v0[37] + *(v0[35] + 24));
  v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v11 = _swiftEmptyArrayStorage;
  v123 = v0;
  v114 = *(v5 + 16);
  v115 = v5;
  v112 = v9;
  v113 = v8;
  v111 = v10;
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
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
      goto LABEL_120;
    }

    sub_100D11DC8(v10 + *(v8 + 72) * v7, v0[37], type metadata accessor for TimeBasedKey);
    v12 = v9[1];
    if (v12 >> 60 == 15)
    {
      sub_100018D00(v0[37], type metadata accessor for TimeBasedKey);
      goto LABEL_4;
    }

    v13 = *v9;
    v5 = String.utf8Data.getter();
    v8 = v14;
    type metadata accessor for __DataStorage();
    LODWORD(v6) = swift_allocObject();
    v15 = __DataStorage.init(length:)();
    v124 = 0x2000000000;
    v125 = v15 | 0x4000000000000000;
    v16 = v8 >> 62;
    v122 = v11;
    if ((v8 >> 62) <= 1)
    {
      break;
    }

    if (v16 == 2)
    {
      v11 = *(v5 + 16);
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_99;
      }

      v19 = v18;
      LODWORD(v6) = v8;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v20))
      {
        goto LABEL_116;
      }

      v21 = v11 - v20 + v19;
      LODWORD(v6) = v8;
      __DataStorage._length.getter();
      if (!v21)
      {
        goto LABEL_100;
      }

      v0[16] = 0;
      if (__OFSUB__(*(v5 + 24), *(v5 + 16)))
      {
        goto LABEL_118;
      }

      if (CCKDFParametersCreateAnsiX963())
      {
        goto LABEL_30;
      }

      v22 = v12 >> 62;
      if ((v12 >> 62) <= 1)
      {
        if (!v22)
        {
          v0[46] = v13;
          *(v0 + 188) = v12;
          *(v0 + 378) = BYTE2(v12);
          *(v0 + 379) = BYTE3(v12);
          *(v0 + 380) = BYTE4(v12);
          *(v0 + 381) = BYTE5(v12);
          sub_10002E98C(v13, v12);
          v23 = v0 + 16;
          v24 = (v0 + 46);
LABEL_57:
          v30 = v116;
          v31 = sub_100A7E758(&v124, v23, v24, v13, v12, 32);
          goto LABEL_58;
        }

        if (v13 > v13 >> 32)
        {
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
          goto LABEL_127;
        }

        v42 = __DataStorage._bytes.getter();
        if (!v42)
        {
          goto LABEL_99;
        }

        v34 = v42;
        v43 = __DataStorage._offset.getter();
        v36 = v13 - v43;
        if (__OFSUB__(v13, v43))
        {
          goto LABEL_125;
        }

LABEL_46:
        v44 = v36 + v34;
        __DataStorage._length.getter();
        if (!v44)
        {
          goto LABEL_100;
        }

        sub_10002E98C(v13, v12);
        v23 = v0 + 16;
LABEL_54:
        v24 = v44;
        goto LABEL_57;
      }

      if (v22 == 2)
      {
        v32 = *(v13 + 16);
        v33 = __DataStorage._bytes.getter();
        if (!v33)
        {
          goto LABEL_99;
        }

        v34 = v33;
        v35 = __DataStorage._offset.getter();
        v36 = v32 - v35;
        if (__OFSUB__(v32, v35))
        {
          goto LABEL_123;
        }

        goto LABEL_46;
      }

      v45 = v109;
      *(v109 + 6) = 0;
      *v109 = 0;
      sub_10002E98C(v13, v12);
      v23 = v0 + 16;
LABEL_56:
      v24 = v45;
      goto LABEL_57;
    }

    *(v110 + 6) = 0;
    *v110 = 0;
    v0[19] = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_30;
    }

    sub_10002E98C(v13, v12);
    v17 = v0 + 19;
LABEL_32:
    v30 = v116;
    v31 = sub_100A7ED3C(v13, v12, &v124, v17, v13, v12, 32);
LABEL_58:
    LODWORD(v6) = v31;
    v48 = v30;
    sub_100006654(v13, v12);
    if (v30)
    {
      goto LABEL_103;
    }

    v116 = 0;
    if (v6)
    {
      goto LABEL_91;
    }

    v49 = v124;
    v11 = v125;
    sub_100017D5C(v124, v125);
    sub_100016590(v49, v11);
    v50 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v50 != 2)
      {
        v99 = 0;
        goto LABEL_109;
      }

      v52 = *(v49 + 16);
      v51 = *(v49 + 24);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      if (v53)
      {
        goto LABEL_113;
      }

      if (v54 != 32)
      {
        goto LABEL_95;
      }
    }

    else if (v50)
    {
      if (__OFSUB__(HIDWORD(v49), v49))
      {
        goto LABEL_114;
      }

      if (HIDWORD(v49) - v49 != 32)
      {
LABEL_95:
        if (v50 == 2)
        {
          v103 = *(v49 + 16);
          v102 = *(v49 + 24);
          v99 = v102 - v103;
          if (__OFSUB__(v102, v103))
          {
            __break(1u);
            goto LABEL_108;
          }
        }

        else
        {
          if (v50 == 1)
          {
            if (!__OFSUB__(HIDWORD(v49), v49))
            {
              v99 = HIDWORD(v49) - v49;
              goto LABEL_109;
            }

LABEL_127:
            __break(1u);
          }

LABEL_108:
          v99 = BYTE6(v11);
        }

LABEL_109:
        sub_100018350();
        v48 = swift_allocError();
        *v104 = 32;
        *(v104 + 8) = v99;
        *(v104 + 16) = 0;
        swift_willThrow();
        sub_100016590(v49, v11);
        sub_100016590(v5, v8);
        v0 = v123;
        goto LABEL_110;
      }
    }

    else if (BYTE6(v11) != 32)
    {
      goto LABEL_95;
    }

    v121 = v11;
    v55 = v123[37];
    v57 = v123[32];
    v56 = v123[33];
    sub_100016590(v5, v8);
    v120 = *v55;
    v58 = type metadata accessor for EncryptedData();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v56, 1, 1, v58);
    sub_1000D2A70(v56, v57, &qword_1016B9AE8, &unk_1013E35D0);
    v60 = *(v59 + 48);
    v61 = v60(v57, 1, v58);
    v62 = v123[32];
    if (v61 == 1)
    {
      sub_10000B3A8(v123[32], &qword_1016B9AE8, &unk_1013E35D0);
      v118 = 0xF000000000000000;
      v119 = 0;
    }

    else
    {
      v63 = EncryptedData.cipherText.getter();
      v118 = v64;
      v119 = v63;
      (*(v59 + 8))(v62, v58);
    }

    v65 = v123[31];
    sub_1000D2A70(v123[33], v65, &qword_1016B9AE8, &unk_1013E35D0);
    v66 = v60(v65, 1, v58);
    v67 = v123[31];
    if (v66 == 1)
    {
      sub_10000B3A8(v123[31], &qword_1016B9AE8, &unk_1013E35D0);
      v68 = 0;
      v117 = 0xF000000000000000;
    }

    else
    {
      v68 = EncryptedData.initializationVector.getter();
      v117 = v69;
      (*(v59 + 8))(v67, v58);
    }

    v70 = v123[30];
    sub_1000D2A70(v123[33], v70, &qword_1016B9AE8, &unk_1013E35D0);
    v71 = v60(v70, 1, v58);
    v72 = v123[33];
    v73 = v123[30];
    if (v71 == 1)
    {
      sub_10000B3A8(v123[33], &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v73, &qword_1016B9AE8, &unk_1013E35D0);
      v74 = 0;
      v75 = 0xF000000000000000;
    }

    else
    {
      v74 = EncryptedData.tag.getter();
      v75 = v76;
      sub_10000B3A8(v72, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v59 + 8))(v73, v58);
    }

    sub_100018D00(v123[37], type metadata accessor for TimeBasedKey);
    v11 = v122;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100A5BE68(0, *(v122 + 16) + 1, 1, v122);
    }

    v78 = *(v11 + 16);
    v77 = *(v11 + 24);
    if (v78 >= v77 >> 1)
    {
      v11 = sub_100A5BE68((v77 > 1), v78 + 1, 1, v11);
    }

    *(v11 + 16) = v78 + 1;
    v79 = (v11 + 72 * v78);
    v79[4] = v120;
    v79[5] = v49;
    v79[6] = v121;
    v79[7] = v119;
    v79[8] = v118;
    v79[9] = v68;
    v79[10] = v117;
    v79[11] = v74;
    v79[12] = v75;
    v6 = v114;
    v5 = v115;
    v9 = v112;
    v8 = v113;
    v10 = v111;
    v0 = v123;
LABEL_4:
    if (v6 == ++v7)
    {
      goto LABEL_85;
    }
  }

  v11 = HIDWORD(v5);
  if (!v16)
  {
    v0[53] = v5;
    *(v0 + 216) = v8;
    *(v0 + 434) = BYTE2(v8);
    *(v0 + 435) = BYTE3(v8);
    *(v0 + 436) = BYTE4(v8);
    *(v0 + 437) = BYTE5(v8);
    v0[18] = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_30;
    }

    sub_10002E98C(v13, v12);
    v17 = v0 + 18;
    goto LABEL_32;
  }

  if (v5 > v5 >> 32)
  {
    goto LABEL_115;
  }

  v25 = __DataStorage._bytes.getter();
  if (!v25)
  {
    goto LABEL_99;
  }

  v26 = v25;
  LODWORD(v6) = v8;
  v27 = __DataStorage._offset.getter();
  if (__OFSUB__(v5, v27))
  {
    goto LABEL_117;
  }

  v28 = v5 - v27 + v26;
  LODWORD(v6) = v8;
  __DataStorage._length.getter();
  if (!v28)
  {
    goto LABEL_100;
  }

  v0[17] = 0;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_119;
  }

  if (CCKDFParametersCreateAnsiX963())
  {
LABEL_30:
    LODWORD(v6) = -4300;
LABEL_91:
    v11 = static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
LABEL_92:
      v0 = v123;
      v89 = v123[34];
      v90 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_101385D80;
      *(v91 + 56) = &type metadata for Int32;
      *(v91 + 64) = &protocol witness table for Int32;
      *(v91 + 32) = v6;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v90, "Error running CCDeriveKey. Code: %d.", v107);

      CryptoError.init(rawValue:)();
      v92 = type metadata accessor for CryptoError();
      sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v48 = swift_allocError();
      v94 = v93;
      v95 = *(v92 - 8);
      v96 = *(v95 + 48);
      v97 = v96(v89, 1, v92);
      v98 = v123[34];
      if (v97 == 1)
      {
        (*(v95 + 104))(v94, enum case for CryptoError.unspecifiedError(_:), v92);
        if (v96(v98, 1, v92) != 1)
        {
          sub_10000B3A8(v123[34], &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v95 + 32))(v94, v123[34], v92);
      }

      goto LABEL_102;
    }

LABEL_120:
    swift_once();
    goto LABEL_92;
  }

  v29 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v29 != 2)
    {
      v45 = v108;
      *(v108 + 6) = 0;
      *v108 = 0;
      sub_10002E98C(v13, v12);
      v23 = v0 + 17;
      goto LABEL_56;
    }

    v37 = *(v13 + 16);
    v38 = __DataStorage._bytes.getter();
    if (!v38)
    {
      goto LABEL_99;
    }

    v39 = v38;
    v40 = __DataStorage._offset.getter();
    v41 = v37 - v40;
    if (__OFSUB__(v37, v40))
    {
      goto LABEL_124;
    }

LABEL_52:
    v44 = v41 + v39;
    __DataStorage._length.getter();
    if (!v44)
    {
      goto LABEL_100;
    }

    sub_10002E98C(v13, v12);
    v23 = v0 + 17;
    goto LABEL_54;
  }

  if (!v29)
  {
    *(v0 + 396) = v13;
    *(v0 + 202) = v12;
    *(v0 + 406) = BYTE2(v12);
    *(v0 + 407) = BYTE3(v12);
    *(v0 + 408) = BYTE4(v12);
    *(v0 + 409) = BYTE5(v12);
    sub_10002E98C(v13, v12);
    v23 = v0 + 17;
    v24 = v0 + 396;
    goto LABEL_57;
  }

  if (v13 > v13 >> 32)
  {
    goto LABEL_122;
  }

  v46 = __DataStorage._bytes.getter();
  if (v46)
  {
    v39 = v46;
    v47 = __DataStorage._offset.getter();
    v41 = v13 - v47;
    if (__OFSUB__(v13, v47))
    {
      goto LABEL_126;
    }

    goto LABEL_52;
  }

LABEL_99:
  __DataStorage._length.getter();
LABEL_100:
  v100 = type metadata accessor for CryptoError();
  sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v48 = swift_allocError();
  (*(*(v100 - 8) + 104))(v101, enum case for CryptoError.memoryFailure(_:), v100);
LABEL_102:
  swift_willThrow();
LABEL_103:
  sub_100016590(v5, v8);
  sub_100016590(v124, v125);
LABEL_110:
  v124 = 0;
  v125 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v105 = v125;
  v0[9] = v124;
  v0[10] = v105;
  v106._object = 0x8000000101354990;
  v106._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v106);
  v0[15] = v48;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100CF5BD0()
{
  v22 = v0;
  sub_100007BAC(v0 + 2);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315651;
    v0[13] = v7;
    v0[14] = v6;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    String.append(_:)(v10);
    _print_unlocked<A, B>(_:_:)();
    v11 = sub_1000136BC(v0[7], v0[8], &v21);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "No local keys for range %s. Not uploading connection keys for %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[29];

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v17 = v0[20];
  v18 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100CF5FBC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v3[15] = *(v7 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for BeaconNamingRecord(0);
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_100CF6190, v2, 0);
}

uint64_t sub_100CF6190()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 120);
  *(v0 + 176) = v2;
  *(v0 + 232) = *(v1 + 20);
  return _swift_task_switch(sub_100CF61BC, v2, 0);
}

uint64_t sub_100CF61BC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v4 + 16))(v2, *(v0 + 48) + *(v0 + 232), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 184) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_100CF6324;
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B38, v6, v9);
}

uint64_t sub_100CF6324()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100CF6450, v1, 0);
}

uint64_t sub_100CF6450()
{
  v21 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = v0[6];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BF08);
    sub_100D11DC8(v3, v2, type metadata accessor for OwnedBeaconRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[11];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_100018D00(v7, type metadata accessor for OwnedBeaconRecord);
      v13 = sub_1000136BC(v10, v12, &v20);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "No name record for beacon %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {
      v15 = v0[11];

      sub_100018D00(v15, type metadata accessor for OwnedBeaconRecord);
    }

    v16 = v0[5];
    v17 = sub_1000BC4D4(&qword_1016B9B18, &unk_1013E3670);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v14 = v0[22];
    sub_100D12974(v1, v0[21], type metadata accessor for BeaconNamingRecord);

    return _swift_task_switch(sub_100CF67D0, v14, 0);
  }
}

uint64_t sub_100CF67D0()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[9];
  sub_100D11DC8(v0[6], v2, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  *(v5 + 16) = v1;
  sub_100D12974(v2, v5 + v4, type metadata accessor for OwnedBeaconRecord);

  v6 = swift_task_alloc();
  v0[26] = v6;
  v7 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v6 = v0;
  v6[1] = sub_100CF693C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_100986664, v5, v7);
}

uint64_t sub_100CF693C()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_100CF6A68, v1, 0);
}

uint64_t sub_100CF6A68()
{
  v1 = *(v0 + 56);
  *(v0 + 216) = *(v0 + 16);
  return _swift_task_switch(sub_100CF6A8C, v1, 0);
}

uint64_t sub_100CF6A8C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[5];
  v4 = (v1 + v2[8]);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v1 + v2[7]);
  v8 = (v1 + v2[9]);
  v10 = *v8;
  v9 = v8[1];
  v11 = (v0[6] + *(v0[8] + 60));
  v12 = v11[1];
  v25 = *v11;

  v13 = objc_autoreleasePoolPush();
  sub_100D088CC(v1, v3);
  v23 = v0[27];
  v24 = v0[28];
  v22 = v0[21];
  v14 = v0[5];
  v21 = v10;
  v15 = v6;
  v16 = sub_1000BC4D4(&qword_1016B9B18, &unk_1013E3670);
  v17 = v7;
  v18 = (v14 + *(v16 + 48));
  objc_autoreleasePoolPop(v13);
  sub_100018D00(v22, type metadata accessor for BeaconNamingRecord);
  *v18 = v15;
  v18[1] = v5;
  v18[2] = v17;
  v18[3] = v21;
  v18[4] = v9;
  v18[5] = v25;
  v18[6] = v12;
  v18[7] = v23;
  v18[8] = v24;
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100CF6C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for OwnedBeaconRecord(0);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for LostModeRecord(0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle(0);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4[23] = v9;
  v4[24] = *(v9 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[29] = v10;
  v4[30] = *(v10 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_100CF7064, v3, 0);
}

uint64_t sub_100CF7064()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(*(v0 + 64) + 120);
  *(v0 + 360) = v6;
  v7 = *(v4 + 20);
  *(v0 + 432) = v7;
  v8 = *(v3 + 16);
  *(v0 + 368) = v8;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v5 + v7, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_100CF7138, v6, 0);
}

uint64_t sub_100CF7138()
{
  v1 = v0[45];
  v2 = v0[25];
  v4 = v0[23];
  v3 = v0[24];
  sub_1000D2A70(v0[26], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[48] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 0;

  v8 = swift_task_alloc();
  v0[49] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_100CF72B0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v9);
}

uint64_t sub_100CF72B0()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_100CF73DC, v1, 0);
}

uint64_t sub_100CF73DC()
{
  v1 = v0[8];
  sub_10000B3A8(v0[26], &qword_1016980D0, &unk_10138F3B0);
  v0[50] = v0[2];

  return _swift_task_switch(sub_100CF7460, v1, 0);
}

uint64_t sub_100CF7460()
{
  v22 = v0;
  v21 = v0[50];

  sub_100C71470(&v21);

  if (*(v21 + 16))
  {
    v1 = *(v0[21] + 80);
    sub_100D11DC8(v21 + ((v1 + 32) & ~v1), v0[28], type metadata accessor for OwnerSharingCircle);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[20];
  v6 = v0[21];

  (*(v6 + 56))(v3, v2, 1, v5);
  sub_1000D2A70(v3, v4, &unk_1016AFA00, &qword_10138C4D0);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[36];
  v9 = v0[27];
  if (v7 == 1)
  {
    sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
    static Date.distantPast.getter();
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v15 = v0[22];
  sub_100D12974(v9, v15, type metadata accessor for OwnerSharingCircle);
  v16 = objc_autoreleasePoolPush();
  sub_100D088CC(v15, v8);
  objc_autoreleasePoolPop(v16);
  v17 = v0[22];
  if (*(v17 + *(v0[20] + 36)) != 1)
  {
    sub_100018D00(v0[22], type metadata accessor for OwnerSharingCircle);
    goto LABEL_6;
  }

  v18 = v0[44];
  v19 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v17, v18);
  objc_autoreleasePoolPop(v19);
  sub_100018D00(v0[22], type metadata accessor for OwnerSharingCircle);
  v10 = 0;
LABEL_7:
  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[29];
  v14 = *(v0[30] + 56);
  v0[51] = v14;
  v14(v11, v10, 1, v13);

  return _swift_task_switch(sub_100CF76F8, v12, 0);
}

uint64_t sub_100CF76F8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v0 + 368))(v2, *(v0 + 56) + *(v0 + 432), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 416) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 424) = v7;
  *v7 = v0;
  v7[1] = sub_100CF784C;
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B20, v6, v9);
}

uint64_t sub_100CF784C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100CF7978, v1, 0);
}

uint64_t sub_100CF7978()
{
  v93 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v2 = v0[51];
    v3 = v0[43];
    v4 = v0[29];
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v2(v3, 1, 1, v4);
  }

  else
  {
    sub_100D12974(v1, v0[19], type metadata accessor for LostModeRecord);
    v5 = sub_100E78AA8();
    v6 = [v5 timestamp];

    if (v6)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v0[51];
    v10 = v0[42];
    v9 = v0[43];
    v11 = v0[29];
    sub_100018D00(v0[19], type metadata accessor for LostModeRecord);
    v8(v10, v7, 1, v11);
    sub_1000D2AD8(v10, v9, &unk_101696900, &unk_10138B1E0);
  }

  v12 = v0[43];
  v13 = v0[41];
  v14 = v0[29];
  v15 = v0[30];
  v87 = *(v15 + 16);
  v87(v0[34], v0[36], v14);
  sub_1000D2A70(v12, v13, &unk_101696900, &unk_10138B1E0);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  v18 = v0[41];
  if (v17 == 1)
  {
    v19 = v0[29];
    static Date.distantPast.getter();
    if (v16(v18, 1, v19) != 1)
    {
      sub_10000B3A8(v0[41], &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[33], v0[41], v0[29]);
  }

  v20 = v0[43];
  v21 = v0[44];
  v23 = v0[34];
  v22 = v0[35];
  v24 = v0[33];
  v25 = v0[29];
  v26 = v0[30];
  v27 = v0[6];
  sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v28 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v29 = (v28 & 1) == 0;
  if (v28)
  {
    v30 = v23;
  }

  else
  {
    v30 = v24;
  }

  if (!v29)
  {
    v23 = v24;
  }

  v90 = *(v26 + 8);
  v90(v30, v25);
  v91 = *(v26 + 32);
  v91(v22, v23, v25);
  sub_1000D2A70(v21, v27, &unk_101696900, &unk_10138B1E0);
  v31 = type metadata accessor for KeyDropLostItemDates(0);
  sub_1000D2A70(v20, v27 + *(v31 + 20), &unk_101696900, &unk_10138B1E0);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v32 = v0[43];
  v33 = v0[44];
  v35 = v0[39];
  v34 = v0[40];
  v84 = v0[35];
  v36 = v0[32];
  v80 = v0[36];
  v82 = v0[31];
  v37 = v0[29];
  v38 = v0[10];
  v39 = v0[7];
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177AE28);
  sub_100D11DC8(v39, v38, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v33, v34, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v32, v35, &unk_101696900, &unk_10138B1E0);
  v87(v36, v80, v37);
  v87(v82, v84, v37);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v88 = v0[43];
  v89 = v0[44];
  v45 = v0[39];
  v44 = v0[40];
  if (v43)
  {
    v81 = v42;
    v46 = v0[38];
    v78 = v0[31];
    v77 = v0[32];
    v76 = v0[29];
    v83 = v0[28];
    v85 = v0[36];
    v47 = v0[10];
    log = v41;
    v48 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v48 = 141559299;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_100018D00(v47, type metadata accessor for OwnedBeaconRecord);
    v52 = sub_1000136BC(v49, v51, &v92);

    *(v48 + 14) = v52;
    *(v48 + 22) = 2082;
    sub_1000D2A70(v44, v46, &unk_101696900, &unk_10138B1E0);
    v53 = String.init<A>(describing:)();
    v55 = v54;
    sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
    v56 = sub_1000136BC(v53, v55, &v92);

    *(v48 + 24) = v56;
    *(v48 + 32) = 2082;
    sub_1000D2A70(v45, v46, &unk_101696900, &unk_10138B1E0);
    v57 = String.init<A>(describing:)();
    v59 = v58;
    sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
    v60 = sub_1000136BC(v57, v59, &v92);

    *(v48 + 34) = v60;
    *(v48 + 42) = 2082;
    sub_100D13BF8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v90(v77, v76);
    v64 = sub_1000136BC(v61, v63, &v92);

    *(v48 + 44) = v64;
    *(v48 + 52) = 2082;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v90(v78, v76);
    v68 = sub_1000136BC(v65, v67, &v92);

    *(v48 + 54) = v68;
    _os_log_impl(&_mh_execute_header, log, v81, "Lost item dates for beacon %{private,mask.hash}s delegationStartDate: %{public}s, lostModeEnabledDate: %{public}s, delegationModifiedDate: %{public}s, modifiedDate: %{public}s.", v48, 0x3Eu);
    swift_arrayDestroy();

    sub_10000B3A8(v83, &unk_1016AFA00, &qword_10138C4D0);
    v90(v85, v76);
    sub_10000B3A8(v88, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v86 = v0[36];
    v70 = v0[31];
    v69 = v0[32];
    v71 = v0[29];
    v72 = v0[28];
    v73 = v0[10];

    v90(v70, v71);
    v90(v69, v71);
    sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v73, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v72, &unk_1016AFA00, &qword_10138C4D0);
    v90(v86, v71);
    sub_10000B3A8(v88, &unk_101696900, &unk_10138B1E0);
  }

  sub_10000B3A8(v89, &unk_101696900, &unk_10138B1E0);
  v91(v0[5], v0[35], v0[29]);

  v74 = v0[1];

  return v74();
}

uint64_t sub_100CF83A4(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = type metadata accessor for OwnedBeaconRecord(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_100CF8454, 0, 0);
}

uint64_t sub_100CF8454(__n128 a1)
{
  v41 = v1;
  v1[22] = sub_100D5F668();
  v1[23] = v2;
  if (v2 >> 60 == 15)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = v1[19];
    v4 = v1[16];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AE28);
    sub_100D11DC8(v4, v3, type metadata accessor for OwnedBeaconRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[19];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40[0] = v11;
      *v10 = 136315138;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_100018D00(v9, type metadata accessor for OwnedBeaconRecord);
      v15 = sub_1000136BC(v12, v14, v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "product data is missing for the beacon id %s, privacy: .private(mask: .hash)", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100018D00(v9, type metadata accessor for OwnedBeaconRecord);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v33 = 27;
    swift_willThrow();

    v34 = v1[1];

    return v34();
  }

  else
  {
    v16 = Data.hexString.getter();
    v18 = v17;
    v1[24] = v16;
    v1[25] = v17;
    v19 = qword_101694778;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = v1[21];
    v21 = v1[16];
    v22 = type metadata accessor for Logger();
    v1[26] = sub_1000076D4(v22, qword_10177AE28);
    sub_100D11DC8(v21, v20, type metadata accessor for OwnedBeaconRecord);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[21];
    if (v25)
    {
      v27 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v27 = 141558787;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100018D00(v26, type metadata accessor for OwnedBeaconRecord);
      v31 = sub_1000136BC(v28, v30, v40);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2160;
      *(v27 + 24) = 1752392040;
      *(v27 + 32) = 2081;
      v32 = sub_1000136BC(v16, v18, v40);

      *(v27 + 34) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "beacon id %{private,mask.hash}s, product data %{private,mask.hash}s", v27, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v26, type metadata accessor for OwnedBeaconRecord);
    }

    v36 = v1[18];
    v37 = v1[16];
    v38 = *(v1[17] + 120);
    v1[27] = v38;
    v1[5] = v36;
    v1[6] = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v39 = sub_1000280DC(v1 + 2);
    sub_100D11DC8(v37, v39, type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_100CF8A30, v38, 0);
  }
}

uint64_t sub_100CF8A30()
{
  v1 = *(v0 + 216);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 224) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 56), v2 + 24);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v4 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v3 = v0;
  v3[1] = sub_100CF8B64;

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B14, v2, v4);
}

uint64_t sub_100CF8B64()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100CF8C90, v1, 0);
}

uint64_t sub_100CF8C90()
{
  v0[30] = v0[14];
  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_100CF8D00, 0, 0);
}

uint64_t sub_100CF8D00()
{
  v26 = v0;
  v1 = [*(v0 + 240) serialNumber];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;

    *(v0 + 248) = v5;
    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_100CF9028;

    return sub_100CF92FC();
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 128);

    sub_100D11DC8(v9, v8, type metadata accessor for OwnedBeaconRecord);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 160);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100018D00(v13, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v25);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not obtain serial number for beaconIdentifier: %{private,mask.hash}s while creating delegated attributes", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      sub_100018D00(v13, type metadata accessor for OwnedBeaconRecord);
    }

    v20 = *(v0 + 240);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    sub_1001BAEE0();
    swift_allocError();
    *v23 = 25;
    swift_willThrow();

    sub_100006654(v21, v22);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100CF9028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 264) = v4;

  if (v4)
  {

    v11 = sub_100CF9264;
  }

  else
  {
    v12 = v10[12];
    v10[34] = a4;
    v10[35] = a3;
    v10[36] = a2;
    v10[37] = a1;
    v10[38] = v12;
    v11 = sub_100CF918C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100CF918C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 120);
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);
  sub_100006654(*(v0 + 176), *(v0 + 184));

  v6->i64[0] = v1;
  v6->i64[1] = v2;
  v6[1].i64[0] = v5;
  v6[1].i64[1] = v4;
  v6[2] = vextq_s8(v9, v9, 8uLL);
  v6[3] = vextq_s8(v10, v10, 8uLL);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100CF9264()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  sub_100006654(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100CF931C()
{
  v1 = [objc_allocWithZone(ACAccountStore) init];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100CF9454;
  v2 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100C70FE4;
  v0[13] = &unk_10164E610;
  v0[14] = v2;
  [v1 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100CF9454()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100CF999C;
  }

  else
  {
    v2 = sub_100CF9564;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100CF9564()
{
  v1 = v0[25];
  v2 = v0[23];
  v0[27] = v2;

  if (v2)
  {
    v3 = v0[24];

    return _swift_task_switch(sub_100CF96F8, v3, 0);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not obtain aa_primaryAppleAccount while creating delegated attributes !", v7, 2u);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v8 = 24;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100CF96F8()
{
  sub_100D11380(v0 + 144);

  return _swift_task_switch(sub_100CF9760, 0, 0);
}

uint64_t sub_100CF9760()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 176);
  if (v2 == 255)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "email/phone not found for web metadata", v6, 2u);
    }

    v7 = *(v0 + 216);

    sub_1001BAEE0();
    swift_allocError();
    *v8 = 26;
    swift_willThrow();

    sub_10000B3A8(v0 + 144, &qword_1016B9B10, &qword_1013E3658);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);

    if (v2)
    {
      if (v2 == 1)
      {
        v12 = v1;
        v13 = v11;
        v1 = 0;
        v11 = 0;
      }

      else
      {

        sub_10000B3A8(v0 + 144, &qword_1016B9B10, &qword_1013E3658);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = *(v0 + 8);

    return v14(v1, v11, v12, v13);
  }
}

uint64_t sub_100CF999C(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100CF9A0C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = v3;
  *(v4 + 640) = a2;
  *(v4 + 240) = a1;
  *(v4 + 264) = type metadata accessor for OwnedBeaconRecord(0);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = *(type metadata accessor for BookmarkMetaData(0) - 8);
  *(v4 + 304) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  *(v4 + 360) = v6;
  *(v4 + 368) = *(v6 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();

  return _swift_task_switch(sub_100CF9C60, v3, 0);
}

uint64_t sub_100CF9C60()
{
  v1 = v0[31];
  v0[5] = v0[33];
  v2 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v0[54] = v2;
  v0[6] = v2;
  v3 = sub_1000280DC(v0 + 2);
  sub_100D11DC8(v1, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_100CF9D6C;
  v5 = v0[53];

  return sub_100C9FBF0(v5, (v0 + 2));
}

uint64_t sub_100CF9D6C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_100CFC4B0;
  }

  else
  {
    v5 = *(v2 + 256);
    sub_100007BAC((v2 + 16));
    v4 = sub_100CF9E94;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CF9E94()
{
  if (sub_1000322C8())
  {
    v1 = swift_task_alloc();
    v0[57] = v1;
    *v1 = v0;
    v1[1] = sub_100CF9F88;
    v2 = v0[50];
  }

  else
  {
    v0[58] = 0;
    v3 = swift_task_alloc();
    v0[59] = v3;
    *v3 = v0;
    v3[1] = sub_100CFA1CC;
    v2 = v0[48];
  }

  return sub_100C724A0(v2);
}

uint64_t sub_100CF9F88()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100CFA098, v1, 0);
}

uint64_t sub_100CFA098(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 360);
  v4 = *(v1 + 368);
  v5 = *(v1 + 352);
  v6 = *(v1 + 312);
  v7 = *(v1 + 320);
  DateInterval.end.getter();
  (*(v4 + 8))(v2, v3);
  Date.timeIntervalSince(_:)();
  v9 = v8;
  (*(v7 + 8))(v5, v6);
  v10 = 0.0;
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  *(v1 + 464) = v10 * 0.0002;
  v11 = swift_task_alloc();
  *(v1 + 472) = v11;
  *v11 = v1;
  v11[1] = sub_100CFA1CC;
  v12 = *(v1 + 384);

  return sub_100C724A0(v12);
}

uint64_t sub_100CFA1CC()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100CFA2DC, v1, 0);
}

uint64_t sub_100CFA2DC(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[45];
  v4 = v1[46];
  DateInterval.start.getter();
  v5 = *(v4 + 8);
  v1[60] = v5;
  v1[61] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = swift_task_alloc();
  v1[62] = v6;
  *v6 = v1;
  v6[1] = sub_100CFA3B0;
  v7 = v1[47];

  return sub_100C724A0(v7);
}

uint64_t sub_100CFA3B0()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100CFA4C0, v1, 0);
}

uint64_t sub_100CFA4C0(uint64_t a1)
{
  v2 = v1[60];
  v3 = v1[47];
  v4 = v1[45];
  v5 = v1[40];
  v6 = v1[41];
  v7 = v1[39];
  v8 = v1[33];
  v13 = v1[31];
  v14 = v1[54];
  DateInterval.end.getter();
  v2(v3, v4);
  Date.addingTimeInterval(_:)();
  (*(v5 + 8))(v6, v7);
  DateInterval.init(start:end:)();
  v1[10] = v8;
  v1[11] = v14;
  v9 = sub_1000280DC(v1 + 7);
  sub_100D11DC8(v13, v9, type metadata accessor for OwnedBeaconRecord);
  v10 = swift_task_alloc();
  v1[63] = v10;
  *v10 = v1;
  v10[1] = sub_100CFA630;
  v11 = v1[52];

  return sub_100CA0680(v11, (v1 + 7));
}

uint64_t sub_100CFA630()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_100CFC5D0;
  }

  else
  {
    v5 = *(v2 + 256);
    sub_100007BAC((v2 + 56));
    v4 = sub_100CFA758;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CFA758()
{
  v1 = *(*(v0 + 256) + 120);
  *(v0 + 520) = v1;
  return _swift_task_switch(sub_100CFA77C, v1, 0);
}

uint64_t sub_100CFA77C()
{

  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100CFA85C;
  v3 = *(v0 + 520);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100CFA85C()
{
  v1 = *(*v0 + 520);

  return _swift_task_switch(sub_100CFA974, v1, 0);
}

uint64_t sub_100CFA974()
{
  v1 = v0[32];
  v0[67] = v0[12];
  return _swift_task_switch(sub_100CFA998, v1, 0);
}

uint64_t sub_100CFA998()
{
  v1 = sub_100D11E30(*(v0 + 248), *(v0 + 392), *(v0 + 416));
  *(v0 + 544) = v1;
  *(v0 + 552) = v2;
  if (sub_1000322C8())
  {
    v3 = **(v0 + 424);
    if (v3)
    {
      v1 = v3 / 0x60 + 1;
    }

    else
    {
      v1 = 0;
    }
  }

  v4 = *(v0 + 240);
  result = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6 = *(v4 + *(result + 44));
  if (*(v6 + 16) && (result = sub_100771F0C(*(v0 + 640)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 304);
    sub_100D11DC8(*(v6 + 56) + *(*(v0 + 296) + 72) * result, v8, type metadata accessor for BookmarkMetaData);
    v9 = *(v8 + 8);
    result = sub_100018D00(v8, type metadata accessor for BookmarkMetaData);
  }

  else
  {
    v9 = 0;
  }

  if (((1 << *(v0 + 640)) & 0x7FDDA) == 0)
  {
    if (v9)
    {
      v9 = v9 / 0x60 + 1;
    }

    else
    {
      v9 = 0;
    }
  }

  *(v0 + 560) = v9;
  v10 = v9 + 1;
  if (v9 == -1)
  {
    __break(1u);
  }

  else
  {
    if (v10 <= v1)
    {
      v10 = v1;
    }

    *(v0 + 568) = v10;
    v11 = swift_task_alloc();
    *(v0 + 576) = v11;
    *v11 = v0;
    v11[1] = sub_100CFAB44;

    return sub_100C71F10();
  }

  return result;
}

uint64_t sub_100CFAB44(uint64_t a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_100CFAC5C, v2, 0);
}

void sub_100CFAC5C()
{
  v2 = v0[73];
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v0[71];
  v3 = __CFADD__(v5, v4);
  v6 = v5 + v4;
  if (v3)
  {
    goto LABEL_9;
  }

  if (v0[69] < v6)
  {
    v6 = v0[69];
  }

  v0[74] = v6;
  v7 = swift_task_alloc();
  v0[75] = v7;
  *v7 = v0;
  v7[1] = sub_100CFAD24;
  v8 = v0[48];

  sub_100C724A0(v8);
}

uint64_t sub_100CFAD24()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100CFAE34, v1, 0);
}

uint64_t sub_100CFAE34(uint64_t a1)
{
  v63 = v1;
  v2 = *(v1 + 592);
  v3 = *(v1 + 568);
  v4 = *(v1 + 480);
  v5 = *(v1 + 384);
  v6 = *(v1 + 360);
  DateInterval.duration.getter();
  v8 = v7;
  *(v1 + 608) = v7;
  v4(v5, v6);
  if (v2 >= v3)
  {

    return _swift_task_switch(sub_100CFB538, 0, 0);
  }

  else
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v9 = *(v1 + 272);
    v10 = *(v1 + 248);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177BF08);
    sub_100D11DC8(v10, v9, type metadata accessor for OwnedBeaconRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v51 = *(v1 + 568);
      v52 = *(v1 + 592);
      v14 = *(v1 + 552);
      v50 = *(v1 + 560);
      v15 = *(v1 + 544);
      v16 = *(v1 + 464);
      v59 = *(v1 + 424);
      v55 = *(v1 + 416);
      v57 = *(v1 + 392);
      v58 = *(v1 + 480);
      v56 = *(v1 + 360);
      v53 = *(v1 + 272);
      v54 = v13;
      v17 = *(v1 + 640);
      v18 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v18 = 136448771;
      v19 = sub_10125403C(v17);
      v21 = sub_1000136BC(v19, v20, &v61);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      strcpy(v62, ".secondary/(");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      *(v1 + 200) = v15;
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = sub_1000136BC(v62[0], v62[1], &v61);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      strcpy(v62, ".secondary/(");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      *(v1 + 208) = v14;
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 41;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = sub_1000136BC(v62[0], v62[1], &v61);

      *(v18 + 24) = v27;
      *(v18 + 32) = 2048;
      *(v18 + 34) = v50;
      *(v18 + 42) = 2080;
      strcpy(v62, ".secondary/(");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      *(v1 + 216) = v51;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = sub_1000136BC(v62[0], v62[1], &v61);

      *(v18 + 44) = v30;
      *(v18 + 52) = 2080;
      strcpy(v62, ".secondary/(");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      *(v1 + 224) = v52;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = sub_1000136BC(v62[0], v62[1], &v61);

      *(v18 + 54) = v33;
      *(v18 + 62) = 2080;
      strcpy(v62, ".secondary/(");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      *(v1 + 232) = v14;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      v36 = sub_1000136BC(v62[0], v62[1], &v61);

      *(v18 + 64) = v36;
      *(v18 + 72) = 2048;
      *(v18 + 74) = v8;
      *(v18 + 82) = 2048;
      *(v18 + 84) = v16;
      *(v18 + 92) = 2160;
      *(v18 + 94) = 1752392040;
      *(v18 + 102) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_100018D00(v53, type metadata accessor for OwnedBeaconRecord);
      v40 = sub_1000136BC(v37, v39, &v61);

      *(v18 + 104) = v40;
      _os_log_impl(&_mh_execute_header, v12, v54, "Satisfied high water for secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f,\nbeaconIdentifier: %{private,mask.hash}s.", v18, 0x70u);
      swift_arrayDestroy();

      sub_10000B3A8(v55, &unk_1016C8FC0, &unk_10139D7D0);
      v58(v57, v56);
      v41 = v59;
    }

    else
    {
      v42 = *(v1 + 480);
      v44 = *(v1 + 416);
      v43 = *(v1 + 424);
      v45 = *(v1 + 392);
      v46 = *(v1 + 360);
      v47 = *(v1 + 272);

      sub_100018D00(v47, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v44, &unk_1016C8FC0, &unk_10139D7D0);
      v42(v45, v46);
      v41 = v43;
    }

    sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
    v60 = *(v1 + 552);

    v48 = *(v1 + 8);

    return v48(v60, v60);
  }
}

uint64_t sub_100CFB538()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 616) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 624) = v2;
  *v2 = v0;
  v2[1] = sub_100CFB638;

  return unsafeBlocking<A>(_:)(v0 + 104, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100CFB638()
{

  return _swift_task_switch(sub_100CFB750, 0, 0);
}

uint64_t sub_100CFB750()
{
  v1 = v0[32];
  v0[79] = sub_101074B38(v0[13]);

  return _swift_task_switch(sub_100CFB7CC, v1, 0);
}

uint64_t sub_100CFB7CC()
{
  v114 = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = sub_101073C10(*(v0 + 112));

  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v2 = *(v0 + 560);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = *(v0 + 552);
  v4 = *(v0 + 632) * 86400.0 / (v1 * 60.0);
  v5 = v3 - v2;
  v7 = v4 < v5 && v2 < v3;
  if (!v2 || v7)
  {
    if (qword_101694DF8 == -1)
    {
LABEL_16:
      v42 = *(v0 + 288);
      v43 = *(v0 + 248);
      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177BF08);
      sub_100D11DC8(v43, v42, type metadata accessor for OwnedBeaconRecord);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 608);
        v93 = *(v0 + 568);
        v95 = *(v0 + 592);
        v48 = *(v0 + 552);
        v91 = *(v0 + 560);
        v49 = *(v0 + 544);
        v50 = *(v0 + 464);
        v109 = *(v0 + 424);
        v101 = *(v0 + 416);
        v105 = *(v0 + 392);
        v107 = *(v0 + 480);
        v103 = *(v0 + 360);
        v97 = *(v0 + 288);
        v99 = v46;
        v51 = *(v0 + 640);
        v52 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v52 = 136448771;
        v53 = sub_10125403C(v51);
        v55 = sub_1000136BC(v53, v54, &v112);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        strcpy(v113, ".secondary/(");
        BYTE5(v113[1]) = 0;
        HIWORD(v113[1]) = -5120;
        *(v0 + 160) = v49;
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v56);

        v57._countAndFlagsBits = 41;
        v57._object = 0xE100000000000000;
        String.append(_:)(v57);
        v58 = sub_1000136BC(v113[0], v113[1], &v112);

        *(v52 + 14) = v58;
        *(v52 + 22) = 2080;
        strcpy(v113, ".secondary/(");
        BYTE5(v113[1]) = 0;
        HIWORD(v113[1]) = -5120;
        *(v0 + 168) = v48;
        v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v59);

        v60._countAndFlagsBits = 41;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        v61 = sub_1000136BC(v113[0], v113[1], &v112);

        *(v52 + 24) = v61;
        *(v52 + 32) = 2048;
        *(v52 + 34) = v91;
        *(v52 + 42) = 2080;
        strcpy(v113, ".secondary/(");
        BYTE5(v113[1]) = 0;
        HIWORD(v113[1]) = -5120;
        *(v0 + 176) = v93;
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 41;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        v64 = sub_1000136BC(v113[0], v113[1], &v112);

        *(v52 + 44) = v64;
        *(v52 + 52) = 2080;
        strcpy(v113, ".secondary/(");
        BYTE5(v113[1]) = 0;
        HIWORD(v113[1]) = -5120;
        *(v0 + 184) = v95;
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        v66._countAndFlagsBits = 41;
        v66._object = 0xE100000000000000;
        String.append(_:)(v66);
        v67 = sub_1000136BC(v113[0], v113[1], &v112);

        *(v52 + 54) = v67;
        *(v52 + 62) = 2080;
        strcpy(v113, ".secondary/(");
        BYTE5(v113[1]) = 0;
        HIWORD(v113[1]) = -5120;
        *(v0 + 192) = v48;
        v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v68);

        v69._countAndFlagsBits = 41;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        v70 = sub_1000136BC(v113[0], v113[1], &v112);

        *(v52 + 64) = v70;
        *(v52 + 72) = 2048;
        *(v52 + 74) = v47;
        *(v52 + 82) = 2048;
        *(v52 + 84) = v50;
        *(v52 + 92) = 2160;
        *(v52 + 94) = 1752392040;
        *(v52 + 102) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        sub_100018D00(v97, type metadata accessor for OwnedBeaconRecord);
        v74 = sub_1000136BC(v71, v73, &v112);

        *(v52 + 104) = v74;
        _os_log_impl(&_mh_execute_header, v45, v99, "Secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f,\nbeaconIdentifier: %{private,mask.hash}s.", v52, 0x70u);
        swift_arrayDestroy();

        sub_10000B3A8(v101, &unk_1016C8FC0, &unk_10139D7D0);
        v107(v105, v103);
        v75 = v109;
      }

      else
      {
        v76 = *(v0 + 480);
        v78 = *(v0 + 416);
        v77 = *(v0 + 424);
        v79 = *(v0 + 392);
        v80 = *(v0 + 360);
        v81 = *(v0 + 288);

        sub_100018D00(v81, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v78, &unk_1016C8FC0, &unk_10139D7D0);
        v76(v79, v80);
        v75 = v77;
      }

      sub_10000B3A8(v75, &unk_1016C8FC0, &unk_10139D7D0);
      v110 = *(v0 + 592);
      v111 = *(v0 + 568);
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 248);
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177BF08);
  sub_100D11DC8(v9, v8, type metadata accessor for OwnedBeaconRecord);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 608);
    v92 = *(v0 + 568);
    v94 = *(v0 + 592);
    v14 = *(v0 + 552);
    v90 = *(v0 + 560);
    v15 = *(v0 + 544);
    v16 = *(v0 + 464);
    v108 = *(v0 + 424);
    v100 = *(v0 + 416);
    v104 = *(v0 + 392);
    v106 = *(v0 + 480);
    v102 = *(v0 + 360);
    v96 = *(v0 + 280);
    v98 = v12;
    v17 = *(v0 + 640);
    v18 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v18 = 136449283;
    v19 = sub_10125403C(v17);
    v21 = sub_1000136BC(v19, v20, &v112);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    strcpy(v113, ".secondary/(");
    BYTE5(v113[1]) = 0;
    HIWORD(v113[1]) = -5120;
    *(v0 + 120) = v15;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = sub_1000136BC(v113[0], v113[1], &v112);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    strcpy(v113, ".secondary/(");
    BYTE5(v113[1]) = 0;
    HIWORD(v113[1]) = -5120;
    *(v0 + 128) = v14;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = sub_1000136BC(v113[0], v113[1], &v112);

    *(v18 + 24) = v27;
    *(v18 + 32) = 2048;
    *(v18 + 34) = v90;
    *(v18 + 42) = 2080;
    strcpy(v113, ".secondary/(");
    BYTE5(v113[1]) = 0;
    HIWORD(v113[1]) = -5120;
    *(v0 + 136) = v92;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = sub_1000136BC(v113[0], v113[1], &v112);

    *(v18 + 44) = v30;
    *(v18 + 52) = 2080;
    strcpy(v113, ".secondary/(");
    BYTE5(v113[1]) = 0;
    HIWORD(v113[1]) = -5120;
    *(v0 + 144) = v94;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = sub_1000136BC(v113[0], v113[1], &v112);

    *(v18 + 54) = v33;
    *(v18 + 62) = 2080;
    strcpy(v113, ".secondary/(");
    BYTE5(v113[1]) = 0;
    HIWORD(v113[1]) = -5120;
    *(v0 + 152) = v14;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_1000136BC(v113[0], v113[1], &v112);

    *(v18 + 64) = v36;
    *(v18 + 72) = 2048;
    *(v18 + 74) = v13;
    *(v18 + 82) = 2048;
    *(v18 + 84) = v16;
    *(v18 + 92) = 2048;
    *(v18 + 94) = v5;
    *(v18 + 102) = 2048;
    *(v18 + 104) = v4;
    *(v18 + 112) = 2160;
    *(v18 + 114) = 1752392040;
    *(v18 + 122) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_100018D00(v96, type metadata accessor for OwnedBeaconRecord);
    v40 = sub_1000136BC(v37, v39, &v112);

    *(v18 + 124) = v40;
    _os_log_impl(&_mh_execute_header, v11, v98, "Satisfied low water for secondary Index Range type: %{public}s - start: %s, end: %s, bookmarkValue: %llu,\nadjusted start: %s, end: %s, highWaterIndex: %s,\nduration: %f, maxDrift: %f, remainingKeysToReachHighWater: %f < %f,\nbeaconIdentifier: %{private,mask.hash}s.", v18, 0x84u);
    swift_arrayDestroy();

    sub_10000B3A8(v100, &unk_1016C8FC0, &unk_10139D7D0);
    v106(v104, v102);
    v41 = v108;
  }

  else
  {
    v82 = *(v0 + 480);
    v84 = *(v0 + 416);
    v83 = *(v0 + 424);
    v85 = *(v0 + 392);
    v86 = *(v0 + 360);
    v87 = *(v0 + 280);

    sub_100018D00(v87, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v84, &unk_1016C8FC0, &unk_10139D7D0);
    v82(v85, v86);
    v41 = v83;
  }

  sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
  v110 = *(v0 + 560);
  v111 = v110;
LABEL_22:

  v88 = *(v0 + 8);

  return v88(v111, v110);
}

uint64_t sub_100CFC4B0()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CFC5D0()
{
  v1 = *(v0 + 424);
  (*(v0 + 480))(*(v0 + 392), *(v0 + 360));
  sub_10000B3A8(v1, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC((v0 + 56));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CFC71C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v3[16] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v3[17] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v3[23] = *(v6 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_100CFC8D8, v2, 0);
}

uint64_t sub_100CFC8D8()
{
  v1 = *(*(v0 + 120) + 120);
  *(v0 + 216) = v1;
  return _swift_task_switch(sub_100CFC8FC, v1, 0);
}

uint64_t sub_100CFC8FC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[21];
  v5 = v0[14];
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[30] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);

  v9 = swift_task_alloc();
  v0[31] = v9;
  v10 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v9 = v0;
  v9[1] = sub_100CFCA80;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v8, v10);
}

uint64_t sub_100CFCA80()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100CFCBAC, v1, 0);
}

uint64_t sub_100CFCBAC()
{
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_100CFCD3C;
    v2 = *(v0 + 136);

    return sub_100CA0680(v2, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v4 = *(v0 + 104);
    v5 = type metadata accessor for TimeBasedKey(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100CFCD3C()
{
  v2 = *v1;

  v3 = *(v2 + 120);
  if (v0)
  {

    v4 = sub_100CFCE74;
  }

  else
  {
    v4 = sub_100CFCFA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CFCE74()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_100007BAC(v0 + 2);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_10000B3A8(v3, &unk_1016AF8A0, &unk_10139D7C0);
  v4 = v0[13];
  v5 = type metadata accessor for TimeBasedKey(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100CFCFA4()
{
  v1 = v0[20];
  v2 = v0[17];
  (*(v0[19] + 56))(v2, 0, 1, v0[18]);
  sub_1000D2AD8(v2, v1, &unk_1016C8FC0, &unk_10139D7D0);
  if (*v1)
  {
    v3 = *v1 / 0x60uLL + 1;
  }

  else
  {
    v3 = 0;
  }

  v0[33] = v3;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_100CFD0A8;

  return sub_100D075D8((v0 + 2), 1, v3, v3);
}

uint64_t sub_100CFD0A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_100CFD640;
  }

  else
  {
    v6 = sub_100CFD1DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CFD1DC()
{
  v36 = v0;
  v1 = v0[35];
  v2 = v0[16];
  if (*(v1 + 16))
  {
    v3 = type metadata accessor for TimeBasedKey(0);
    v4 = *(v3 - 8);
    sub_100D11DC8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for TimeBasedKey);

    (*(v4 + 56))(v2, 0, 1, v3);
  }

  else
  {

    v5 = type metadata accessor for TimeBasedKey(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[21];
  v9 = v0[14];
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177BF08);
  v6(v7, v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[33];
    v14 = v0[25];
    v16 = v0[21];
    v15 = v0[22];
    v33 = v0[20];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315651;
    v34 = v18;
    strcpy(v35, ".secondary/(");
    BYTE5(v35[1]) = 0;
    HIWORD(v35[1]) = -5120;
    v0[12] = v13;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_1000136BC(v35[0], v35[1], &v34);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v15 + 8))(v14, v16);
    v25 = sub_1000136BC(v22, v24, &v34);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Found SML Off - secondary key %s for %{private,mask.hash}s.", v17, 0x20u);
    swift_arrayDestroy();

    v26 = v33;
  }

  else
  {
    v27 = v0[25];
    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[20];

    (*(v29 + 8))(v27, v28);
    v26 = v30;
  }

  sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC(v0 + 2);
  sub_1000D2AD8(v0[16], v0[13], &qword_10169BA30, &unk_101395620);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100CFD640()
{
  v28 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = v12;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v27);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v24 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not find SML Off - secondary key for %{private,mask.hash}s,error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);

    v19 = v25;
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    v19 = v12;
  }

  sub_10000B3A8(v19, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC(v0 + 2);
  v20 = v0[13];
  v21 = type metadata accessor for TimeBasedKey(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100CFD9C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  v3[5] = swift_task_alloc();
  type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v5 = swift_task_alloc();
  v3[6] = v5;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_100CFDAF0;

  return sub_100C7B39C(v5, a2);
}

uint64_t sub_100CFDAF0()
{
  v2 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100CFDE3C;
  }

  else
  {
    v3 = sub_100CFDC18;
  }

  return _swift_task_switch(v3, v2, 0);
}

void sub_100CFDC18()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[4];
    while (v4 < *(v2 + 16))
    {
      sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[5], type metadata accessor for KeyDropJoinToken);
      if (qword_101694560 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for UUID();
      sub_1000076D4(v6, qword_10177A900);
      if (static UUID.== infix(_:_:)())
      {
        v7 = v0[6];
        sub_100D12974(v0[5], v0[2], type metadata accessor for KeyDropJoinToken);
        sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

        v8 = v0[1];
        goto LABEL_11;
      }

      ++v4;
      sub_100018D00(v0[5], type metadata accessor for KeyDropJoinToken);
      if (v3 == v4)
      {
        v1 = v0[6];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1001BAEE0();
    swift_allocError();
    *v9 = 13;
    swift_willThrow();
    sub_100018D00(v1, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v8 = v0[1];
LABEL_11:

    v8();
  }
}

uint64_t sub_100CFDE3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CFDEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  v5 = type metadata accessor for P256.Signing.ECDSASignature();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v6 = type metadata accessor for P256.Signing.PrivateKey();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v7 = type metadata accessor for P256PrivateKey();
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();
  v8 = type metadata accessor for AES.GCM.Nonce();
  v4[66] = v8;
  v4[67] = *(v8 - 8);
  v4[68] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8);
  v4[69] = swift_task_alloc();
  v9 = type metadata accessor for SymmetricKey();
  v4[70] = v9;
  v4[71] = *(v9 - 8);
  v4[72] = swift_task_alloc();
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v4[73] = v10;
  v4[74] = *(v10 - 8);
  v4[75] = swift_task_alloc();
  v11 = type metadata accessor for KeyDropJoinToken(0);
  v4[76] = v11;
  v4[77] = *(v11 - 8);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v4[81] = swift_task_alloc();
  v12 = type metadata accessor for SymmetricKey256();
  v4[82] = v12;
  v4[83] = *(v12 - 8);
  v4[84] = swift_task_alloc();
  v4[85] = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v4[86] = swift_task_alloc();
  v4[87] = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v4[88] = swift_task_alloc();

  return _swift_task_switch(sub_100CFE2E4, v3, 0);
}

uint64_t sub_100CFE2E4()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 432);
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v5 = *(v3 + v4[7]);
  v6 = *(v3 + v4[8]);
  v7 = v4[10];
  v8 = *(v3 + v4[9]);
  *(v0 + 776) = v7;
  v9 = *(v2 + 28);
  v10 = type metadata accessor for Date();
  *(v0 + 712) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  *(v0 + 720) = v12;
  *(v0 + 728) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(&v1[v9], v3 + v7, v10);
  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 2) = v8;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 736) = JSONEncoder.init()();
  sub_100D13BF8(&qword_1016A3D48, type metadata accessor for DeviceEventFormat.LocationFormat, &unk_1013AF158);
  *(v0 + 744) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 752) = v13;
  v14 = swift_task_alloc();
  *(v0 + 760) = v14;
  *v14 = v0;
  v14[1] = sub_100CFE5D8;
  v15 = *(v0 + 688);
  v16 = *(v0 + 424);

  return sub_100C7B39C(v15, v16);
}

uint64_t sub_100CFE5D8()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_100CFF9C8;
  }

  else
  {
    v4 = sub_100CFE704;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CFE704()
{
  v159 = v0;
  v1 = v0[86];
  v2 = v0[85];
  v3 = (v1 + *(v2 + 24));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v5 = *v3;
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  sub_1000D2A70(v1 + *(v2 + 20), v8, &qword_101698360, &qword_1013E35F0);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_10000B3A8(v0[81], &qword_101698360, &qword_1013E35F0);
LABEL_12:
    v17 = v0[94];
    v18 = v0[93];
    v19 = v0[88];
    v20 = v0[86];
    sub_1001BAEE0();
    swift_allocError();
    *v21 = 21;
    swift_willThrow();
    sub_100016590(v18, v17);

    sub_100018D00(v19, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_13:

    v22 = v0[1];
    goto LABEL_14;
  }

  v9 = v0[86];
  (*(v0[83] + 32))(v0[84], v0[81], v0[82]);
  v10 = *v9;
  v11 = *(*v9 + 16);
  v152 = v5;
  sub_100017D5C(v5, v4);
  if (!v11)
  {
LABEL_11:
    (*(v0[83] + 8))(v0[84], v0[82]);
    sub_100006654(v152, v4);
    goto LABEL_12;
  }

  v12 = 0;
  v13 = v0[77];
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v15 = &qword_101694560;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_100D11DC8(v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12, v0[78], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v5 = v0[78];
    v16 = type metadata accessor for UUID();
    sub_1000076D4(v16, qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v12;
    sub_100018D00(v0[78], type metadata accessor for KeyDropJoinToken);
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  v151 = v4;
  v153 = v0[96];
  v24 = v0[94];
  v25 = v0[93];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[69];
  v29 = v0[67];
  v145 = v0[66];
  sub_100D12974(v0[78], v27, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v27, v26, type metadata accessor for KeyDropJoinToken);
  v0[38] = v25;
  v0[39] = v24;
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  v0[40] = KeyRepresenting.rawValue.getter();
  v0[41] = v30;
  SymmetricKey.init<A>(data:)();
  (*(v29 + 56))(v28, 1, 1, v145);
  sub_1000E0A3C();
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v153)
  {
    v146 = v0[93];
    v149 = v0[94];
    v139 = v0[88];
    v142 = v0[86];
    v31 = v0[84];
    v32 = v0[83];
    v33 = v0[82];
    v34 = v0[80];
    v35 = v0[72];
    v36 = v0[71];
    v37 = v0[70];
    v38 = v0[69];

    sub_100006654(v152, v151);
    sub_10000B3A8(v38, &qword_1016AF958, &qword_1013CADF8);
    (*(v36 + 8))(v35, v37);
    sub_100018D00(v34, type metadata accessor for KeyDropJoinToken);
    (*(v32 + 8))(v31, v33);
    sub_100018D00(v139, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v142, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    sub_100016590(v146, v149);
    goto LABEL_13;
  }

  v147 = v0[76];
  v150 = v0[80];
  v39 = v0[72];
  v40 = v0[71];
  v41 = v0[70];
  v42 = v0[68];
  v43 = v0[67];
  v44 = v0[66];
  sub_10000B3A8(v0[69], &qword_1016AF958, &qword_1013CADF8);
  (*(v40 + 8))(v39, v41);
  AES.GCM.SealedBox.nonce.getter();
  v0[21] = v44;
  v45 = sub_100D13BF8(&qword_1016B9B00, &type metadata accessor for AES.GCM.Nonce, &protocol conformance descriptor for AES.GCM.Nonce);
  v0[22] = v45;
  v46 = sub_1000280DC(v0 + 18);
  v134 = *(v43 + 16);
  v134(v46, v42, v44);
  sub_1000035D0(v0 + 18, v0[21]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v132 = *(v43 + 8);
  v132(v42, v44);
  v47 = v0[42];
  v48 = v0[43];
  sub_100007BAC(v0 + 18);
  v49 = AES.GCM.SealedBox.ciphertext.getter();
  v51 = v50;
  v157 = v47;
  v158 = v48;
  v0[26] = &type metadata for Data;
  v0[27] = &protocol witness table for Data;
  v0[23] = v49;
  v0[24] = v50;
  v52 = sub_1000035D0(v0 + 23, &type metadata for Data);
  v54 = *v52;
  v53 = v52[1];
  sub_100017D5C(v47, v48);
  sub_100017D5C(v49, v51);
  sub_100017DB0(v54, v53, &v157);
  sub_100016590(v49, v51);
  sub_100016590(v47, v48);
  sub_100007BAC(v0 + 23);
  v55 = v157;
  v56 = v158;
  v57 = AES.GCM.SealedBox.tag.getter();
  v59 = v58;
  v155 = v55;
  v156 = v56;
  v0[31] = &type metadata for Data;
  v0[32] = &protocol witness table for Data;
  v0[28] = v57;
  v0[29] = v58;
  v60 = sub_1000035D0(v0 + 28, &type metadata for Data);
  v61 = *v60;
  v62 = v60[1];
  sub_100017D5C(v55, v56);
  sub_100017D5C(v57, v59);
  sub_100017DB0(v61, v62, &v155);
  sub_100016590(v57, v59);
  sub_100016590(v55, v56);
  sub_100007BAC(v0 + 28);
  v63 = v155;
  v64 = v156;
  v65 = (v150 + *(v147 + 20));
  v66 = *v65;
  v67 = v65[1];
  v0[44] = *v65;
  v0[45] = v67;
  sub_100017D5C(v66, v67);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  p_weak_ivar_lyt = v45;
  v148 = v63;
  v131 = v64;
  v68 = v0[62];
  v5 = v0;
  v69 = v0[59];
  v70 = v0[60];
  P256.Signing.PrivateKey.rawRepresentation.getter();
  v71 = *(v70 + 8);
  v71(v68, v69);
  v15 = 0;
  P256PrivateKey.init(data:)();
  sub_100D13BF8(&qword_1016982E0, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  v0[46] = KeyRepresenting.rawValue.getter();
  v0[47] = v72;
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v144 = v71;
  v0[48] = v148;
  v0[49] = v131;
  P256.Signing.PrivateKey.signature<A>(for:)();
LABEL_21:
  v73 = *(v5 + 544);
  v74 = *(v5 + 528);
  v75 = *(v5 + 456);
  v76 = *(v5 + 464);
  v77 = *(v5 + 448);
  v140 = P256.Signing.ECDSASignature.rawRepresentation.getter();
  v129 = v78;
  (*(v75 + 8))(v76, v77);
  v79 = AES.GCM.SealedBox.ciphertext.getter();
  v125 = v80;
  v127 = v79;
  v81 = AES.GCM.SealedBox.tag.getter();
  v83 = v82;
  AES.GCM.SealedBox.nonce.getter();
  *(v5 + 288) = v74;
  *(v5 + 296) = p_weak_ivar_lyt;
  v84 = sub_1000280DC((v5 + 264));
  v134(v84, v73, v74);
  sub_1000035D0((v5 + 264), *(v5 + 288));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v132(v73, v74);
  v85 = *(v5 + 400);
  v86 = *(v5 + 408);
  sub_100007BAC((v5 + 264));
  *(v5 + 16) = v140;
  *(v5 + 24) = v129;
  *(v5 + 32) = v127;
  *(v5 + 40) = v125;
  *(v5 + 48) = v81;
  *(v5 + 56) = v83;
  *(v5 + 64) = v85;
  *(v5 + 72) = v86;
  v87 = *(v5 + 32);
  *(v5 + 80) = *(v5 + 16);
  *(v5 + 96) = v87;
  v88 = *(v5 + 64);
  *(v5 + 112) = *(v5 + 48);
  *(v5 + 128) = v88;
  sub_100D12AA0();
  v89 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v141 = *(v5 + 744);
  v143 = *(v5 + 752);
  if (v15)
  {
    v136 = *(v5 + 704);
    v137 = *(v5 + 688);
    v91 = *(v5 + 664);
    v133 = *(v5 + 656);
    v135 = *(v5 + 672);
    v128 = *(v5 + 600);
    v130 = *(v5 + 640);
    v92 = *(v5 + 592);
    v124 = *(v5 + 520);
    v126 = *(v5 + 584);
    v93 = *(v5 + 504);
    v94 = *(v5 + 512);
    v95 = *(v5 + 488);
    v96 = *(v5 + 472);
    sub_100016590(v148, v131);
    sub_100016590(v141, v143);

    sub_100006654(v152, v151);
    v144(v95, v96);
    (*(v94 + 8))(v124, v93);
    (*(v92 + 8))(v128, v126);
    sub_100018D00(v130, type metadata accessor for KeyDropJoinToken);
    (*(v91 + 8))(v135, v133);
    sub_100018D00(v136, type metadata accessor for DeviceEventFormat.LocationFormat);
    sub_100018D00(v137, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    sub_1000D2840(v5 + 16);
    v0 = v5;
    goto LABEL_13;
  }

  v97 = v90;
  v109 = *(v5 + 720);
  v107 = *(v5 + 776);
  v108 = *(v5 + 712);
  v122 = *(v5 + 704);
  v123 = *(v5 + 688);
  v120 = *(v5 + 656);
  v121 = *(v5 + 672);
  v118 = *(v5 + 640);
  v119 = *(v5 + 664);
  v115 = *(v5 + 592);
  v116 = *(v5 + 584);
  v117 = *(v5 + 600);
  v138 = *(v5 + 520);
  v113 = *(v5 + 512);
  v114 = *(v5 + 504);
  v154 = *(v5 + 488);
  v112 = *(v5 + 472);
  v98 = *(v5 + 432);
  v99 = *(v5 + 416);
  v100 = v89;
  sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
  v101 = (type metadata accessor for OwnSubmitLocationInfo(0) - 8);
  v102 = (*(*v101 + 80) + 32) & ~*(*v101 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_101385D80;
  v104 = (v103 + v102);
  v109(v104 + v101[7], v98 + v107, v108);
  *v104 = v100;
  v104[1] = v97;
  sub_10002E98C(v152, v151);
  sub_100017D5C(v100, v97);
  v105 = UUID.uuidString.getter();
  v110 = v106;
  v111 = v105;
  sub_100016590(v148, v131);
  sub_100016590(v141, v143);

  sub_1000D2840(v5 + 16);
  sub_100006654(v152, v151);
  sub_100016590(v100, v97);
  v144(v154, v112);
  (*(v113 + 8))(v138, v114);
  (*(v115 + 8))(v117, v116);
  sub_100018D00(v118, type metadata accessor for KeyDropJoinToken);
  (*(v119 + 8))(v121, v120);
  sub_100018D00(v122, type metadata accessor for DeviceEventFormat.LocationFormat);
  sub_100018D00(v123, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  *v99 = v152;
  *(v99 + 8) = v151;
  *(v99 + 16) = 2;
  *(v99 + 24) = v111;
  *(v99 + 32) = v110;
  *(v99 + 40) = 516;
  *(v99 + 48) = v103;

  v22 = *(v5 + 8);
LABEL_14:

  return v22();
}

uint64_t sub_100CFF9C8()
{
  v1 = v0[88];
  sub_100016590(v0[93], v0[94]);

  sub_100018D00(v1, type metadata accessor for DeviceEventFormat.LocationFormat);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100CFFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v5[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey256();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for PeerCommunicationIdentifier(0);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v5[24] = *(v10 + 64);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for OwnerSharingCircle(0);
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v12 = swift_task_alloc();
  v5[33] = v12;
  v13 = swift_task_alloc();
  v5[34] = v13;
  *v13 = v5;
  v13[1] = sub_100CFFEC4;

  return sub_100C7B39C(v12, a4);
}

uint64_t sub_100CFFEC4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100D00F7C;
  }

  else
  {
    v4 = sub_100CFFFF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CFFFF0()
{
  v1 = *(*(v0 + 56) + 120);
  *(v0 + 288) = v1;
  return _swift_task_switch(sub_100D00014, v1, 0);
}

uint64_t sub_100D00014()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v3 + 16);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 360) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);

  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_100D0018C;
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100D1295C, v9, v12);
}

uint64_t sub_100D0018C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100D002B8, v1, 0);
}

uint64_t sub_100D002B8()
{
  v1 = v0[29];
  v2 = v0[28];
  if ((*(v0[30] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[33];
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v5 = v0[1];

    return v5();
  }

  v7 = v0[31];
  sub_100D12974(v2, v7, type metadata accessor for OwnerSharingCircle);
  v8 = *(v7 + *(v1 + 32));
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = sub_1003A85FC(*(v8 + 16), 0);
  v11 = sub_1003CC2CC();

  sub_1000128F8(v17);
  if (v11 != v9)
  {
    __break(1u);
LABEL_8:
    v10 = _swiftEmptyArrayStorage;
  }

  v0[41] = v10;
  v0[2] = v10;
  v12 = swift_task_alloc();
  v0[42] = v12;
  v13 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v14 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v12 = v0;
  v12[1] = sub_100D005F4;
  v15 = v0[17];
  v16 = v0[7];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3610, v16, v13, v15, v14);
}

uint64_t sub_100D005F4(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[7];

    return _swift_task_switch(sub_100D00738, v5, 0);
  }
}

void sub_100D00738()
{
  v1 = v0[43];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[17];
    v4 = v0[18];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[19];
      v7 = v0[16];
      sub_100D11DC8(v0[43] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for OwnerPeerTrust);
      v8 = *(v5 + 28);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v6) = sub_10098BFC0(v6 + v8, v7);
      sub_100018D00(v7, type metadata accessor for PeerCommunicationIdentifier);
      if (v6)
      {
        break;
      }

      ++v3;
      sub_100018D00(v0[19], type metadata accessor for OwnerPeerTrust);
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v12 = v0[37];
    v59 = v0[44];
    v58 = v0[33];
    v13 = v0[25];
    v15 = v0[21];
    v14 = v0[22];
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[17];
    v19 = v0[14];

    sub_100D12974(v17, v16, type metadata accessor for OwnerPeerTrust);
    sub_100D12974(v16, v15, type metadata accessor for OwnerPeerTrust);
    v12(v13, v15 + *(v18 + 20), v14);
    v20 = *v58;
    *(swift_task_alloc() + 16) = v13;
    sub_1012BB600(sub_1002DB664, v20, v19);

    v21 = type metadata accessor for KeyDropJoinToken(0);
    LODWORD(v13) = (*(*(v21 - 8) + 48))(v19, 1, v21);
    sub_10000B3A8(v19, &qword_1016B9AF8, &unk_1013E35F8);
    if (v13 == 1)
    {
LABEL_10:
      v25 = v0[33];
      v26 = v0[31];
      v27 = v0[25];
      v29 = v0[22];
      v28 = v0[23];
      v30 = v0[21];
      sub_1001BAEE0();
      swift_allocError();
      *v31 = 21;
      swift_willThrow();
      sub_100018D00(v30, type metadata accessor for OwnerPeerTrust);
      sub_100018D00(v26, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v28 + 8))(v27, v29);
      goto LABEL_11;
    }

    v22 = v0[11];
    v23 = v0[12];
    v24 = v0[10];
    sub_1000D2A70(v0[33] + *(v0[32] + 20), v24, &qword_101698360, &qword_1013E35F0);
    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      sub_10000B3A8(v0[10], &qword_101698360, &qword_1013E35F0);
      goto LABEL_10;
    }

    v33 = v0[5];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v34 = sub_100D0E1B4(v33);
    if (v59)
    {
      v36 = v0[33];
      v37 = v0[31];
      v38 = v0[25];
      v40 = v0[22];
      v39 = v0[23];
      v41 = v0[21];
      (*(v0[12] + 8))(v0[13], v0[11]);
      sub_100018D00(v41, type metadata accessor for OwnerPeerTrust);
      sub_100018D00(v37, type metadata accessor for OwnerSharingCircle);
      sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v39 + 8))(v38, v40);
      goto LABEL_11;
    }

    v42 = v34;
    v43 = v35;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100D13BF8(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat, &unk_1013AF180);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v56 = v0[37];
    v44 = v0[31];
    v53 = v0[29];
    v57 = v0[25];
    v45 = v0[23];
    v51 = v0[33];
    v52 = v0[22];
    v46 = v0[21];
    v47 = v0[13];
    v48 = v0[11];
    v49 = v0[12];
    v54 = v0[9];
    v55 = v0[4];
    v50 = v0[3];

    sub_100016590(v42, v43);
    (*(v49 + 8))(v47, v48);
    sub_100018D00(v46, type metadata accessor for OwnerPeerTrust);
    sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v56(v50, v44 + *(v53 + 24), v52);
    sub_100018D00(v44, type metadata accessor for OwnerSharingCircle);
    sub_100D12974(v54, v55, type metadata accessor for DeviceEventFormat.LocationFormat);
    (*(v45 + 8))(v57, v52);

    v32 = v0[1];
  }

  else
  {
LABEL_6:
    v9 = v0[33];
    v10 = v0[31];

    sub_1001BAEE0();
    swift_allocError();
    *v11 = 14;
    swift_willThrow();
    sub_100018D00(v10, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_11:

    v32 = v0[1];
  }

  v32();
}

uint64_t sub_100D00F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D0108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100D01158, 0, 0);
}

uint64_t sub_100D01158()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100D0117C, v1, 0);
}

uint64_t sub_100D0117C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100D148FC;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D12A88, v6, v8);
}

uint64_t sub_100D012F4(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for SymmetricKey256();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a2, a3);
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  KeyRepresenting.init(rawValue:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_101698360, &qword_1013E35F0);
    sub_1001BAEE0();
    swift_allocError();
    *v14 = 30;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = sub_100D0E1B4(a1);
    if (v3)
    {
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      v18 = v16;
      v19 = v17;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for DeviceEventFormat.LocationFormat(0);
      sub_100D13BF8(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat, &unk_1013AF180);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*(v11 + 8))(v13, v10);

      return sub_100016590(v18, v19);
    }
  }
}

uint64_t sub_100D015EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = type metadata accessor for SymmetricKey();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[25] = v7;
  v8 = *(v7 - 8);
  v5[26] = v8;
  v5[27] = *(v8 + 64);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_100D01718, v4, 0);
}

uint64_t sub_100D01718()
{
  v1 = *(*(v0 + 168) + 120);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_100D0173C, v1, 0);
}

uint64_t sub_100D0173C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[25];
  (*(v3 + 16))(v1, v0[18], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[30] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  v0[31] = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_100D018B4;

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v6, v8);
}

uint64_t sub_100D018B4()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100D019E0, v1, 0);
}

uint64_t sub_100D019E0()
{
  v1 = v0[13];
  sub_10000B3A8((v0 + 10), &qword_101696920, &unk_10138B200);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = sub_100D01B18;
    v3 = v0[19];

    return sub_100C7BA0C((v0 + 2), v3);
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100D01B18()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);

    return _swift_task_switch(sub_100D01C74, v6, 0);
  }
}

uint64_t sub_100D01C74()
{
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    v4 = v0[4];
    v5 = v0[20];
    if (v5)
    {
      v6 = v5 / 0x60 + 1;
    }

    else
    {
      v6 = 0;
    }

    sub_100017D5C(v0[4], v0[5]);
    result = sub_100D0854C(v4, v1, v6);
    if (v6)
    {
      if (is_mul_ok(v6, 0x60uLL))
      {
        v8 = 96 * v6 - 96;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        if (96 * v6 - 1 >= v8)
        {
          v15 = v8;
          v16 = 96 * v6 - 1;
LABEL_13:
          v10 = v0[23];
          v9 = v0[24];
          v11 = v0[22];
          v12 = v0[17];
          SymmetricKey.withUnsafeBytes<A>(_:)();
          sub_100006654(v4, v1);
          sub_1001BAF34((v0 + 2));
          (*(v10 + 8))(v9, v11);
          v13 = v0[15];
          v14 = v0[16];

          *v12 = v6;
          v12[1] = v15;
          v12[2] = v16;
          v12[3] = v13;
          v12[4] = v14;
          v3 = v0[1];
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  sub_1001BAEE0();
  swift_allocError();
  *v2 = 8;
  swift_willThrow();
  sub_1001BAF34((v0 + 2));

  v3 = v0[1];
LABEL_14:

  return v3();
}

uint64_t sub_100D01E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v8[29] = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v8[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v8[31] = swift_task_alloc();
  v9 = type metadata accessor for EncryptedData();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  v10 = type metadata accessor for SymmetricKey();
  v8[35] = v10;
  v8[36] = *(v10 - 8);
  v8[37] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[45] = v12;
  v8[46] = *(v12 - 8);
  v8[47] = swift_task_alloc();

  return _swift_task_switch(sub_100D02114, v7, 0);
}

uint64_t sub_100D02114()
{
  v45 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = type metadata accessor for Logger();
  v0[48] = sub_1000076D4(v2, qword_10177BF08);
  sub_10001F280(v1, (v0 + 11));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[46];
    v5 = v0[47];
    v7 = v0[45];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 134349571;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = v0[14];
    v11 = v0[15];
    sub_1000035D0(v0 + 11, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 11);
    v16 = sub_1000136BC(v13, v15, &v44);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Wild bundle secondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 11);
  }

  v17 = v0[22];
  v18 = v17[3];
  v19 = v17[4];
  sub_1000035D0(v17, v18);
  if ((*(v19 + 88))(v18, v19))
  {
    v20 = v0[47];
    v21 = v0[44];
    v42 = v0[46];
    v43 = v0[45];
    v22 = v0[40];
    v23 = v0[39];
    v41 = v0[38];
    v24 = v0[22];
    v25 = *(v0[41] + 36);
    static Date.trustedNow.getter(v21 + v25);
    v27 = v17[3];
    v26 = v17[4];
    sub_1000035D0(v24, v27);
    (*(*(*(v26 + 8) + 8) + 32))(v27);
    v29 = v17[3];
    v28 = v17[4];
    sub_1000035D0(v24, v29);
    (*(v28 + 192))(v29, v28);
    v30 = sub_10088756C(v20, v22, v21 + v25, 0);
    (*(v23 + 8))(v22, v41);
    (*(v42 + 8))(v20, v43);
    *v21 = v30;
    v31 = swift_task_alloc();
    v0[51] = v31;
    *v31 = v0;
    v31[1] = sub_100D02754;
    v32 = v0[44];
    v33 = v0[27];
    v34 = v0[26];
    v36 = v0[22];
    v35 = v0[23];

    return sub_100D02FD8(v36, v32, v35, v34, v33);
  }

  else
  {
    v38 = swift_task_alloc();
    v0[49] = v38;
    *v38 = v0;
    v38[1] = sub_100D02570;
    v39 = v0[43];
    v40 = v0[22];

    return sub_100CA0680(v39, v40);
  }
}

uint64_t sub_100D02570()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_100D02E08;
  }

  else
  {
    v4 = sub_100D0269C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D0269C()
{
  sub_1000D2AD8(v0[43], v0[44], &unk_1016C8FC0, &unk_10139D7D0);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_100D02754;
  v2 = v0[44];
  v3 = v0[27];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];

  return sub_100D02FD8(v6, v2, v5, v4, v3);
}

uint64_t sub_100D02754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v5 = *(v3 + 224);
  if (v1)
  {
    v6 = sub_100D02EE4;
  }

  else
  {
    v6 = sub_100D02888;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D02888()
{
  v50 = v0;
  v1 = *(v0 + 176);
  sub_100D0854C(*(v0 + 192), *(v0 + 200), *(v0 + 184));
  sub_10001F280(v1, v0 + 128);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 368);
    v4 = *(v0 + 376);
    v6 = *(v0 + 360);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49 = v9;
    *v8 = 134218755;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v7;
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2081;
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    sub_1000035D0((v0 + 128), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC((v0 + 128));
    v15 = sub_1000136BC(v12, v14, &v49);

    *(v8 + 34) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wild bundle index: %llu,\nsecondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v8, 0x2Au);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC((v0 + 128));
  }

  v16 = *(v0 + 424);
  sub_100CA09AC(*(v0 + 416));
  if (v16)
  {
    v17 = *(v0 + 352);
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 280);

    (*(v19 + 8))(v18, v20);
    sub_10000B3A8(v17, &unk_1016C8FC0, &unk_10139D7D0);
  }

  else
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 336);
    v42 = *(v0 + 328);
    v22 = *(v0 + 312);
    v47 = *(v0 + 280);
    v48 = *(v0 + 296);
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);
    v45 = v23;
    v46 = *(v0 + 288);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v43 = *(v0 + 304);
    v44 = *(v0 + 168);

    (*(v24 + 16))(v25, v23, v26);
    (*(v24 + 56))(v25, 0, 1, v26);
    sub_10125A120(v29, 0, 0xC000000000000000, v25, (v0 + 16));
    v31 = v30[3];
    v32 = v30[4];
    sub_1000035D0(v30, v31);
    (*(v32 + 192))(v31, v32);
    v33 = *v40;
    sub_1000D2A70(v40, v41, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v22 + 32))(v27 + *(v28 + 24), v41 + *(v42 + 36), v43);
    *(v27 + *(v28 + 20)) = v33;
    v34 = type metadata accessor for KeyDropInterface.KeyPackage(0);
    sub_100D11DC8(v27, &v44[*(v34 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v35 = swift_allocObject();
    v36 = *(v0 + 48);
    v37 = *(v0 + 64);
    v38 = *(v0 + 16);
    *(v35 + 48) = *(v0 + 32);
    *(v35 + 64) = v36;
    *(v35 + 80) = v37;
    *(v35 + 96) = *(v0 + 80);
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 32) = v38;
    sub_100018D00(v27, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v24 + 8))(v45, v26);
    (*(v46 + 8))(v48, v47);
    sub_10000B3A8(v40, &unk_1016C8FC0, &unk_10139D7D0);
    *v44 = 4;
    *&v44[*(v34 + 24)] = v35;
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100D02E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D02EE4()
{
  sub_10000B3A8(*(v0 + 352), &unk_1016C8FC0, &unk_10139D7D0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D02FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v6[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v8 = type metadata accessor for HashAlgorithm();
  v6[47] = v8;
  v6[48] = *(v8 - 8);
  v6[49] = swift_task_alloc();
  v9 = type metadata accessor for TimeBasedKey(0);
  v6[50] = v9;
  v6[51] = *(v9 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[56] = v10;
  v6[57] = *(v10 - 8);
  v6[58] = swift_task_alloc();

  return _swift_task_switch(sub_100D03330, v5, 0);
}

uint64_t sub_100D03330()
{
  v22 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF08);
  sub_10001F280(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[57];
    v5 = v0[58];
    v7 = v0[56];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 134349571;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = v0[5];
    v11 = v0[6];
    sub_1000035D0(v0 + 2, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 2);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Key bundle for secondaryIndex: %{public}llu,\nbeacon-id: %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 2);
  }

  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_100D035F0;
  v18 = v0[17];
  v19 = v0[15];

  return sub_100D07A78(v19, 0, v18, 0);
}

uint64_t sub_100D035F0(uint64_t a1)
{
  v3 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[20];

    return _swift_task_switch(sub_100D038A4, v6, 0);
  }
}

uint64_t sub_100D038A4()
{
  v284 = v0;
  v1 = v0[15];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 112))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[62] = v4;
    *v4 = v0;
    v4[1] = sub_100D0563C;
    v5 = v0[17];
    v6 = v0[15];

    return sub_100D07A78(v6, 1, v5, 0);
  }

  v9 = v0[60];
  v8 = v0[61];
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  v276 = v0;
  if (!v10)
  {
    v275 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v12 = v0[51];
  v233 = v0[50];
  v13 = v0[48];
  v281 = _swiftEmptyArrayStorage;
  v14 = &v281;
  sub_101123DD0(0, v10, 0);
  v15 = 0;
  v16 = v281;
  v230 = v12;
  v17 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v225 = enum case for HashAlgorithm.sha256(_:);
  v221 = (v13 + 8);
  v223 = (v13 + 104);
  v240 = v17;
  v227 = v10;
  v229 = v9;
  while (1)
  {
    if (v15 >= *(v9 + 16))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v274 = v16;
    v18 = v0[54];
    v19 = *(v230 + 72);
    sub_100D11DC8(v17 + v19 * v15, v18, type metadata accessor for TimeBasedKey);
    v20 = *v18;
    v21 = sub_100A7A194(*(v18 + *(v233 + 24) + 16), *(v18 + *(v233 + 24) + 24), 0, 0);
    if (v8)
    {
      v14 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_39:
        v59 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_101385D80;
        v0[11] = v8;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v61 = String.init<A>(describing:)();
        v63 = v62;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100008C00();
        *(v60 + 32) = v61;
        *(v60 + 40) = v63;
        os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v59, "Error deriving advertisementKey: %@", 35, 2, v60);

        sub_1001BAF88();
        v64 = swift_allocError();
        *v65 = 0;
        swift_willThrow();

        goto LABEL_99;
      }

LABEL_146:
      swift_once();
      goto LABEL_39;
    }

    v22 = v21;
    v23 = sub_100A7829C(v21, 0, 2);
    v14 = v24;
    CCECCryptorRelease();
    v25 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v25 != 2)
      {
        v110 = 0;
        goto LABEL_98;
      }

      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        goto LABEL_143;
      }

      if (v29 != 28)
      {
        goto LABEL_66;
      }

      goto LABEL_19;
    }

    if (v25)
    {
      break;
    }

    if (BYTE6(v14) != 28)
    {
      goto LABEL_66;
    }

LABEL_19:
    v271 = v20;
    v30 = v0[49];
    v32 = v0[46];
    v31 = v0[47];
    v33 = v0[45];
    (*v223)(v30, v225, v31);
    v34 = Data.hash(algorithm:)();
    v263 = v35;
    v267 = v34;
    sub_100016590(v23, v14);
    (*v221)(v30, v31);
    v36 = type metadata accessor for EncryptedData();
    v37 = *(v36 - 8);
    v237 = *(v37 + 56);
    v237(v32, 1, 1, v36);
    sub_1000D2A70(v32, v33, &qword_1016B9AE8, &unk_1013E35D0);
    v38 = *(v37 + 48);
    v277 = v36;
    v39 = v38(v33, 1, v36);
    v40 = v0[45];
    if (v39 == 1)
    {
      sub_10000B3A8(v0[45], &qword_1016B9AE8, &unk_1013E35D0);
      v259 = 0;
      v255 = 0xF000000000000000;
    }

    else
    {
      v259 = EncryptedData.cipherText.getter();
      v255 = v41;
      (*(v37 + 8))(v40, v277);
    }

    v42 = v0[44];
    sub_1000D2A70(v0[46], v42, &qword_1016B9AE8, &unk_1013E35D0);
    v43 = v38(v42, 1, v277);
    v44 = v0[44];
    if (v43 == 1)
    {
      sub_10000B3A8(v0[44], &qword_1016B9AE8, &unk_1013E35D0);
      v247 = 0xF000000000000000;
      v251 = 0;
    }

    else
    {
      v45 = EncryptedData.initializationVector.getter();
      v247 = v46;
      v251 = v45;
      (*(v37 + 8))(v44, v277);
    }

    v47 = v0[43];
    sub_1000D2A70(v0[46], v47, &qword_1016B9AE8, &unk_1013E35D0);
    v243 = v38;
    v48 = v38(v47, 1, v277);
    v49 = v0[46];
    v14 = v0[43];
    if (v48 == 1)
    {
      sub_10000B3A8(v49, &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v14, &qword_1016B9AE8, &unk_1013E35D0);
      v50 = 0;
      v51 = 0xF000000000000000;
    }

    else
    {
      v50 = EncryptedData.tag.getter();
      v51 = v52;
      sub_10000B3A8(v49, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v37 + 8))(v14, v277);
    }

    sub_100018D00(v0[54], type metadata accessor for TimeBasedKey);
    v16 = v274;
    v281 = v274;
    v54 = v274[2];
    v53 = v274[3];
    if (v54 >= v53 >> 1)
    {
      v14 = &v281;
      sub_101123DD0((v53 > 1), v54 + 1, 1);
      v16 = v281;
    }

    v8 = 0;
    ++v15;
    v16[2] = v54 + 1;
    v55 = &v16[9 * v54];
    v55[4] = v271;
    v55[5] = v267;
    v55[6] = v263;
    v55[7] = v259;
    v55[8] = v255;
    v55[9] = v251;
    v55[10] = v247;
    v55[11] = v50;
    v55[12] = v51;
    v9 = v229;
    v0 = v276;
    v17 = v240;
    if (v227 == v15)
    {
      v111 = *(v229 + 16);
      if (v111)
      {
        v275 = v16;
        v112 = v276[55] + *(v233 + 24);
        v56 = _swiftEmptyArrayStorage;
        v249 = (v37 + 8);
        v113 = v19;
        v235 = v112;
        do
        {
          sub_100D11DC8(v17, v0[55], type metadata accessor for TimeBasedKey);
          v114 = *(v112 + 40);
          v115 = v0[55];
          if (v114 >> 60 == 15)
          {
            sub_100018D00(v115, type metadata accessor for TimeBasedKey);
          }

          else
          {
            v269 = v56;
            v116 = *(v112 + 32);
            v118 = v0[41];
            v117 = v0[42];
            v265 = *v115;
            v237(v117, 1, 1, v277);
            sub_1000D2A70(v117, v118, &qword_1016B9AE8, &unk_1013E35D0);
            LODWORD(v118) = v243(v118, 1, v277);
            v273 = v116;
            sub_100017D5C(v116, v114);
            v119 = v0[41];
            if (v118 == 1)
            {
              sub_10000B3A8(v0[41], &qword_1016B9AE8, &unk_1013E35D0);
              v261 = 0;
              v257 = 0xF000000000000000;
            }

            else
            {
              v261 = EncryptedData.cipherText.getter();
              v257 = v120;
              (*v249)(v119, v277);
            }

            v121 = v0[40];
            sub_1000D2A70(v0[42], v121, &qword_1016B9AE8, &unk_1013E35D0);
            v122 = v243(v121, 1, v277);
            v123 = v0[40];
            v56 = v269;
            v242 = v17;
            if (v122 == 1)
            {
              sub_10000B3A8(v123, &qword_1016B9AE8, &unk_1013E35D0);
              v253 = 0;
              v124 = 0xF000000000000000;
            }

            else
            {
              v253 = EncryptedData.initializationVector.getter();
              v124 = v125;
              (*v249)(v123, v277);
            }

            v126 = v276[39];
            sub_1000D2A70(v276[42], v126, &qword_1016B9AE8, &unk_1013E35D0);
            v127 = v243(v126, 1, v277);
            v128 = v276[42];
            v129 = v276[39];
            if (v127 == 1)
            {
              sub_10000B3A8(v276[42], &qword_1016B9AE8, &unk_1013E35D0);
              sub_10000B3A8(v129, &qword_1016B9AE8, &unk_1013E35D0);
              v130 = 0;
              v131 = 0xF000000000000000;
            }

            else
            {
              v130 = EncryptedData.tag.getter();
              v131 = v132;
              sub_10000B3A8(v128, &qword_1016B9AE8, &unk_1013E35D0);
              (*v249)(v129, v277);
            }

            sub_100018D00(v276[55], type metadata accessor for TimeBasedKey);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_100A5BE68(0, *(v269 + 2) + 1, 1, v269);
            }

            v134 = *(v56 + 2);
            v133 = *(v56 + 3);
            if (v134 >= v133 >> 1)
            {
              v56 = sub_100A5BE68((v133 > 1), v134 + 1, 1, v56);
            }

            *(v56 + 2) = v134 + 1;
            v135 = &v56[72 * v134];
            *(v135 + 4) = v265;
            *(v135 + 5) = v273;
            *(v135 + 6) = v114;
            *(v135 + 7) = v261;
            *(v135 + 8) = v257;
            *(v135 + 9) = v253;
            *(v135 + 10) = v124;
            *(v135 + 11) = v130;
            *(v135 + 12) = v131;
            v0 = v276;
            v113 = v19;
            v17 = v242;
            v112 = v235;
          }

          v17 += v113;
          --v111;
        }

        while (v111);

        v8 = 0;
        v11 = _swiftEmptyArrayStorage;
LABEL_34:
        v57 = sub_100D11764(v56, v0[18], v0[19]);
        if (v8)
        {

          v58 = v0[1];

          return v58();
        }

        v222 = v57;

        v66 = _swiftEmptyArrayStorage[2];
        if (!v66)
        {
          v271 = _swiftEmptyArrayStorage;
          goto LABEL_91;
        }

        v8 = v0[51];
        v234 = v0[50];
        v67 = v0[48];
        v281 = _swiftEmptyArrayStorage;
        v14 = &v281;
        sub_101123DD0(0, v66, 0);
        v68 = 0;
        v69 = v281;
        v231 = v8;
        v70 = _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v228 = enum case for HashAlgorithm.sha256(_:);
        v224 = (v67 + 8);
        v226 = (v67 + 104);
        v244 = v70;
        while (1)
        {
          if (v68 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_145;
          }

          v272 = v69;
          v71 = v0[52];
          v72 = *(v231 + 72);
          sub_100D11DC8(&v70[v72 * v68], v71, type metadata accessor for TimeBasedKey);
          v73 = *v71;
          v74 = sub_100A7A194(*(v71 + *(v234 + 24) + 16), *(v71 + *(v234 + 24) + 24), 0, 0);
          v268 = v73;
          v75 = sub_100A7829C(v74, 0, 2);
          v77 = v76;
          result = CCECCryptorRelease();
          v78 = v77 >> 62;
          if ((v77 >> 62) > 1)
          {
            if (v78 != 2)
            {
              v184 = 0;
              goto LABEL_140;
            }

            v81 = *(v75 + 16);
            v80 = *(v75 + 24);
            v28 = __OFSUB__(v80, v81);
            v79 = v80 - v81;
            if (v28)
            {
              __break(1u);
LABEL_147:
              __break(1u);
              swift_once();
              v137 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v138 = swift_allocObject();
              *(v138 + 16) = xmmword_101385D80;
              v0[13] = 0;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v139 = String.init<A>(describing:)();
              v141 = v140;
              *(v138 + 56) = &type metadata for String;
              *(v138 + 64) = sub_100008C00();
              *(v138 + 32) = v139;
              *(v138 + 40) = v141;
              os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v137, "Error deriving advertisementKey: %@", 35, 2, v138);

              sub_1001BAF88();
              v217 = swift_allocError();
              *v142 = 0;
              swift_willThrow();

LABEL_141:
              v282 = 0;
              v283 = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v219 = v282;
              v0[10] = v283;
              v0[9] = v219;
              v220._object = 0x800000010134CB30;
              v220._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v220);
              v0[14] = v217;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              goto LABEL_100;
            }
          }

          else if (v78)
          {
            LODWORD(v79) = HIDWORD(v75) - v75;
            if (__OFSUB__(HIDWORD(v75), v75))
            {
              goto LABEL_147;
            }

            v79 = v79;
          }

          else
          {
            v79 = BYTE6(v77);
          }

          if (v79 != 28)
          {
            break;
          }

          v241 = v72;
          v82 = v0[49];
          v83 = v0[47];
          v84 = v0[37];
          v85 = v0[38];
          (*v226)(v82, v228, v83);
          v86 = Data.hash(algorithm:)();
          v260 = v87;
          v264 = v86;
          sub_100016590(v75, v77);
          (*v224)(v82, v83);
          v88 = type metadata accessor for EncryptedData();
          v89 = *(v88 - 8);
          v239 = *(v89 + 56);
          v239(v85, 1, 1, v88);
          sub_1000D2A70(v85, v84, &qword_1016B9AE8, &unk_1013E35D0);
          v90 = *(v89 + 48);
          v91 = v90(v84, 1, v88);
          v92 = v0[37];
          v278 = v89;
          if (v91 == 1)
          {
            sub_10000B3A8(v92, &qword_1016B9AE8, &unk_1013E35D0);
            v252 = 0xF000000000000000;
            v256 = 0;
          }

          else
          {
            v93 = EncryptedData.cipherText.getter();
            v252 = v94;
            v256 = v93;
            (*(v89 + 8))(v92, v88);
          }

          v95 = v0[36];
          sub_1000D2A70(v0[38], v95, &qword_1016B9AE8, &unk_1013E35D0);
          v96 = v90(v95, 1, v88);
          v97 = v0[36];
          if (v96 == 1)
          {
            sub_10000B3A8(v0[36], &qword_1016B9AE8, &unk_1013E35D0);
            v248 = 0;
            v8 = 0xF000000000000000;
          }

          else
          {
            v248 = EncryptedData.initializationVector.getter();
            v8 = v98;
            (*(v89 + 8))(v97, v88);
          }

          v99 = v276[35];
          sub_1000D2A70(v276[38], v99, &qword_1016B9AE8, &unk_1013E35D0);
          v246 = v90;
          v100 = v90(v99, 1, v88);
          v101 = v276[38];
          v14 = v276[35];
          v238 = v88;
          if (v100 == 1)
          {
            sub_10000B3A8(v101, &qword_1016B9AE8, &unk_1013E35D0);
            sub_10000B3A8(v14, &qword_1016B9AE8, &unk_1013E35D0);
            v102 = 0;
            v103 = 0xF000000000000000;
          }

          else
          {
            v102 = EncryptedData.tag.getter();
            v103 = v104;
            sub_10000B3A8(v101, &qword_1016B9AE8, &unk_1013E35D0);
            (*(v278 + 8))(v14, v88);
          }

          sub_100018D00(v276[52], type metadata accessor for TimeBasedKey);
          v69 = v272;
          v281 = v272;
          v106 = v272[2];
          v105 = v272[3];
          v107 = v278;
          if (v106 >= v105 >> 1)
          {
            v14 = &v281;
            sub_101123DD0((v105 > 1), v106 + 1, 1);
            v107 = v278;
            v69 = v281;
          }

          ++v68;
          v69[2] = v106 + 1;
          v108 = &v69[9 * v106];
          v108[4] = v268;
          v108[5] = v264;
          v108[6] = v260;
          v108[7] = v256;
          v108[8] = v252;
          v108[9] = v248;
          v108[10] = v8;
          v108[11] = v102;
          v108[12] = v103;
          v0 = v276;
          v11 = _swiftEmptyArrayStorage;
          v70 = v244;
          if (v66 == v68)
          {
            v185 = _swiftEmptyArrayStorage[2];
            if (v185)
            {
              v271 = v69;
              v186 = v276[53] + *(v234 + 24);
              v232 = v186;
              v236 = (v107 + 8);
              v187 = v241;
              do
              {
                sub_100D11DC8(v70, v0[53], type metadata accessor for TimeBasedKey);
                v188 = *(v186 + 40);
                v189 = v0[53];
                if (v188 >> 60 == 15)
                {
                  sub_100018D00(v189, type metadata accessor for TimeBasedKey);
                }

                else
                {
                  v280 = v11;
                  v190 = *(v186 + 32);
                  v192 = v0[33];
                  v191 = v0[34];
                  v262 = *v189;
                  v239(v191, 1, 1, v238);
                  sub_1000D2A70(v191, v192, &qword_1016B9AE8, &unk_1013E35D0);
                  LODWORD(v192) = v246(v192, 1, v238);
                  v266 = v190;
                  v193 = v190;
                  v194 = v188;
                  sub_100017D5C(v193, v188);
                  v195 = v0[33];
                  if (v192 == 1)
                  {
                    sub_10000B3A8(v0[33], &qword_1016B9AE8, &unk_1013E35D0);
                    v254 = 0xF000000000000000;
                    v258 = 0;
                  }

                  else
                  {
                    v196 = EncryptedData.cipherText.getter();
                    v254 = v197;
                    v258 = v196;
                    (*v236)(v195, v238);
                  }

                  v198 = v0[32];
                  sub_1000D2A70(v0[34], v198, &qword_1016B9AE8, &unk_1013E35D0);
                  v199 = v246(v198, 1, v238);
                  v200 = v0[32];
                  v245 = v70;
                  if (v199 == 1)
                  {
                    sub_10000B3A8(v200, &qword_1016B9AE8, &unk_1013E35D0);
                    v250 = 0;
                    v201 = 0xF000000000000000;
                  }

                  else
                  {
                    v250 = EncryptedData.initializationVector.getter();
                    v201 = v202;
                    (*v236)(v200, v238);
                  }

                  v203 = v0[31];
                  sub_1000D2A70(v0[34], v203, &qword_1016B9AE8, &unk_1013E35D0);
                  v204 = v246(v203, 1, v238);
                  v205 = v0[34];
                  v206 = v0[31];
                  if (v204 == 1)
                  {
                    sub_10000B3A8(v0[34], &qword_1016B9AE8, &unk_1013E35D0);
                    sub_10000B3A8(v206, &qword_1016B9AE8, &unk_1013E35D0);
                    v207 = 0;
                    v208 = 0xF000000000000000;
                  }

                  else
                  {
                    v207 = EncryptedData.tag.getter();
                    v208 = v209;
                    sub_10000B3A8(v205, &qword_1016B9AE8, &unk_1013E35D0);
                    (*v236)(v206, v238);
                  }

                  sub_100018D00(v276[53], type metadata accessor for TimeBasedKey);
                  v210 = v280;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v210 = sub_100A5BE68(0, *(v280 + 2) + 1, 1, v280);
                  }

                  v212 = *(v210 + 2);
                  v211 = *(v210 + 3);
                  v213 = v210;
                  if (v212 >= v211 >> 1)
                  {
                    v213 = sub_100A5BE68((v211 > 1), v212 + 1, 1, v210);
                  }

                  *(v213 + 2) = v212 + 1;
                  v214 = &v213[72 * v212];
                  v11 = v213;
                  *(v214 + 4) = v262;
                  *(v214 + 5) = v266;
                  *(v214 + 6) = v194;
                  *(v214 + 7) = v258;
                  *(v214 + 8) = v254;
                  *(v214 + 9) = v250;
                  *(v214 + 10) = v201;
                  *(v214 + 11) = v207;
                  *(v214 + 12) = v208;
                  v0 = v276;
                  v187 = v241;
                  v70 = v245;
                  v186 = v232;
                }

                v70 += v187;
                --v185;
              }

              while (v185);
            }

            else
            {
              v271 = v69;
            }

LABEL_91:

            v136 = sub_100D11764(v11, v0[18], v0[19]);
            v149 = v0[29];
            v148 = v0[30];
            v150 = v0;
            v151 = v0[27];
            v152 = v0[28];
            v153 = v0[26];
            v20 = v150[21];
            v155 = v150[15];
            v154 = v150[16];
            v279 = v136;

            v156 = v155[3];
            v157 = v155[4];
            sub_1000035D0(v155, v156);
            (*(v157 + 192))(v156, v157);
            v158 = *v154;
            v159 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
            v160 = *(v149 + 24);
            v161 = type metadata accessor for Date();
            (*(*(v161 - 8) + 16))(v148 + v160, &v154[v159], v161);
            *(v148 + *(v149 + 20)) = v158;
            sub_100D11DC8(v148, &v152[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v152 = 2;
            *&v152[*(v20 + 24)] = v222;
            sub_100D11DC8(v148, &v151[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v151 = 3;
            *&v151[*(v20 + 24)] = v279;
            sub_100D11DC8(v148, &v153[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v153 = 0;
            *&v153[*(v20 + 24)] = v275;
            v22 = 1;
            v162 = sub_100A5BE40(0, 1, 1, _swiftEmptyArrayStorage);
            v14 = v162;
            v15 = v162[2];
            v109 = v162[3];
            v23 = v15 + 1;
            if (v15 < v109 >> 1)
            {
LABEL_102:
              v163 = v276[30];
              v165 = v276[25];
              v164 = v276[26];
              v166 = v276[22];
              *(v14 + 16) = v23;
              v167 = (*(v166 + 80) + 32) & ~*(v166 + 80);
              v168 = *(v166 + 72);
              sub_100D12974(v164, v14 + v167 + v168 * v15, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v163, &v165[*(v20 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
              *v165 = v22;
              *&v165[*(v20 + 24)] = v271;
              v169 = *(v14 + 24);
              v170 = v15 + 2;
              if ((v15 + 2) > (v169 >> 1))
              {
                v14 = sub_100A5BE40((v169 > 1), v15 + 2, 1, v14);
              }

              v171 = v276[28];
              v173 = v276[24];
              v172 = v276[25];
              *(v14 + 16) = v170;
              sub_100D12974(v172, v14 + v167 + v168 * v23, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
              v174 = *(v14 + 24);
              v175 = v15 + 3;
              if ((v15 + 3) > (v174 >> 1))
              {
                v14 = sub_100A5BE40((v174 > 1), v15 + 3, 1, v14);
              }

              v176 = v276[27];
              v178 = v276[23];
              v177 = v276[24];
              *(v14 + 16) = v175;
              sub_100D12974(v177, v14 + v167 + v168 * v170, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100D11DC8(v176, v178, type metadata accessor for KeyDropInterface.KeyPackage);
              v179 = *(v14 + 24);
              v270 = v167;
              if ((v15 + 4) > (v179 >> 1))
              {
                v14 = sub_100A5BE40((v179 > 1), v15 + 4, 1, v14);
              }

              v180 = v276[30];
              v181 = v276[28];
              v182 = v276[23];
              sub_100018D00(v276[27], type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v181, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyAlignment);
              *(v14 + 16) = v15 + 4;
              sub_100D12974(v182, v14 + v270 + v168 * v175, type metadata accessor for KeyDropInterface.KeyPackage);

              v183 = v276[1];

              return v183(v14);
            }

LABEL_149:
            v14 = sub_100A5BE40((v109 > 1), v23, 1, v14);
            goto LABEL_102;
          }
        }

        if (v78 == 2)
        {
          v216 = *(v75 + 16);
          v215 = *(v75 + 24);
          v184 = v215 - v216;
          if (!__OFSUB__(v215, v216))
          {
            goto LABEL_140;
          }

          __break(1u);
        }

        else if (v78 == 1)
        {
          if (__OFSUB__(HIDWORD(v75), v75))
          {
            __break(1u);
            return result;
          }

          v184 = HIDWORD(v75) - v75;
          goto LABEL_140;
        }

        v184 = BYTE6(v77);
LABEL_140:
        sub_100018350();
        v217 = swift_allocError();
        *v218 = 28;
        *(v218 + 8) = v184;
        *(v218 + 16) = 0;
        swift_willThrow();
        sub_100016590(v75, v77);
        goto LABEL_141;
      }

      v275 = v16;
      v8 = 0;
      v11 = _swiftEmptyArrayStorage;
LABEL_33:

      v56 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
    goto LABEL_144;
  }

  if (HIDWORD(v23) - v23 == 28)
  {
    goto LABEL_19;
  }

LABEL_66:
  if (v25 == 2)
  {
    v144 = *(v23 + 16);
    v143 = *(v23 + 24);
    v110 = v143 - v144;
    if (!__OFSUB__(v143, v144))
    {
      goto LABEL_98;
    }

    __break(1u);
LABEL_97:
    v110 = BYTE6(v14);
    goto LABEL_98;
  }

  if (v25 != 1)
  {
    goto LABEL_97;
  }

  v109 = (HIDWORD(v23) - v23);
  if (__OFSUB__(HIDWORD(v23), v23))
  {
    __break(1u);
    goto LABEL_149;
  }

  v110 = v109;
LABEL_98:
  sub_100018350();
  v64 = swift_allocError();
  *v145 = 28;
  *(v145 + 8) = v110;
  *(v145 + 16) = 0;
  swift_willThrow();
  sub_100016590(v23, v14);
LABEL_99:
  v282 = 0;
  v283 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v146 = v282;
  v0[8] = v283;
  v0[7] = v146;
  v147._object = 0x800000010134CB30;
  v147._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v147);
  v0[12] = v64;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_100:
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}