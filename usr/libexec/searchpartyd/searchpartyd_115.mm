uint64_t sub_100CC7CAC()
{
  v2 = *v1;
  *(*v1 + 2368) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CE1E28;
  }

  else
  {
    v4 = sub_100CC7DD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CC7DD8()
{
  v325 = v0;
  v317 = (v0 + 29);
  v316 = (v0 + 101);
  v1 = v0[296];
LABEL_2:
  v2 = v0[293];
  v3 = v0[220];
  v4 = v0[171];
  sub_1000D2A70(v0[271], v4, &qword_1016B0478, &unk_1013CDC10);
  v5 = v2(v4, 1, v3);
  v6 = v0[171];
  if (v5 != 1)
  {
    sub_100D12974(v6, v0[224], type metadata accessor for KeyDropInterface.KeyAlignment);
    v301 = swift_task_alloc();
    v0[297] = v301;
    *v301 = v0;
    v301[1] = sub_100CCA6E8;
    v294 = v0[269];
    v295 = v0[268];
    v296 = v0[237];
    v297 = v0[224];
    v298 = v0[175];
    v299 = v0[140];
    v300 = 0;
    goto LABEL_95;
  }

  v7 = v0[250];
  v8 = v0[140];
  sub_10000B3A8(v6, &qword_1016B0478, &unk_1013CDC10);
  sub_100D11DC8(v8, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[250];
  if (!v11)
  {
    goto LABEL_67;
  }

  v13 = swift_slowAlloc();
  v324[0] = swift_slowAlloc();
  *v13 = 136446466;
  v14 = sub_100C71778();
  v16 = v15;
  sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  v17 = sub_1000136BC(v14, v16, v324);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2082;
  v18 = 5;
LABEL_5:
  v19 = sub_10125403C(v18);
  v21 = sub_1000136BC(v19, v20, v324);

  *(v13 + 14) = v21;
  _os_log_impl(&_mh_execute_header, v9, v10, "No key alignment available for %{public}s. No package created for %{public}s", v13, 0x16u);
  swift_arrayDestroy();
  v22 = v323;

  while (1)
  {
    v23 = v22[276];
LABEL_7:
    v24 = v22[275] + 1;
    if (v24 == v22[273])
    {
      break;
    }

    v22[276] = v23;
    v22[275] = v24;
    v22[274] = v1;
    v25 = v22[272];
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
      return;
    }

    v26 = v22[256];
    v27 = v22[140];
    v28 = *(v25 + v24 + 32);
    *(v22 + 2509) = v28;
    sub_100D11DC8(v27, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v22[256];
    if (v31)
    {
      v33 = swift_slowAlloc();
      v324[0] = swift_slowAlloc();
      *v33 = 136446466;
      v34 = sub_100C71778();
      v35 = v23;
      v37 = v36;
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
      v38 = sub_1000136BC(v34, v37, v324);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_10125403C(v28);
      v41 = sub_1000136BC(v39, v40, v324);

      *(v33 + 14) = v41;
      v23 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Keys to upload: %{public}s. Creating package for %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      v22 = v323;
    }

    else
    {

      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v28)
    {
      case 1:
        v271 = *(v22[140] + *(v22[238] + 44));
        if (*(v271 + 16) && (v272 = sub_100771F0C(1), (v273 & 1) != 0))
        {
          v274 = v22[219];
          sub_100D11DC8(*(v271 + 56) + *(v22[215] + 72) * v272, v274, type metadata accessor for BookmarkMetaData);
          v275 = *(v274 + 8);
          sub_100018D00(v274, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v275 = 0;
        }

        v22[277] = v275;
        v302 = *(v22 + 626);
        v303 = v22[140];
        v304 = swift_task_alloc();
        v22[278] = v304;
        *v304 = v22;
        v304[1] = sub_100CBBD44;
        v305 = v22[213];

        sub_100CFC71C(v305, v303 + v302);
        return;
      case 4:
        v276 = swift_task_alloc();
        v22[291] = v276;
        *v276 = v22;
        v276[1] = sub_100CC4E24;
        v277 = v22[237];
        v278 = v22[176];
        v279 = v22[140];

        sub_100CF172C(v278, v279, v277, (v22 + 110));
        return;
      case 5:
        v258 = v22[221];
        v259 = v22[220];
        v260 = v22[172];
        v0 = v22;
        sub_1000D2A70(v22[271], v260, &qword_1016B0478, &unk_1013CDC10);
        v261 = *(v258 + 48);
        v22[293] = v261;
        v22[294] = (v258 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v259) = v261(v260, 1, v259);
        sub_10000B3A8(v260, &qword_1016B0478, &unk_1013CDC10);
        if (v259 != 1)
        {
          goto LABEL_2;
        }

        v262 = swift_task_alloc();
        v22[295] = v262;
        *v262 = v22;
        v263 = sub_100CC7CAC;
        goto LABEL_87;
      case 6:
        v242 = v22[221];
        v243 = v22[220];
        v244 = v22[170];
        v0 = v22;
        sub_1000D2A70(v22[271], v244, &qword_1016B0478, &unk_1013CDC10);
        v245 = *(v242 + 48);
        v22[299] = v245;
        v22[300] = (v242 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v243) = v245(v244, 1, v243);
        sub_10000B3A8(v244, &qword_1016B0478, &unk_1013CDC10);
        if (v243 == 1)
        {
          v262 = swift_task_alloc();
          v22[301] = v262;
          *v262 = v22;
          v263 = sub_100CCD5CC;
LABEL_87:
          v262[1] = v263;
          v283 = v0[270];
          v284 = v0[141];
          v285 = v0[237];

          sub_100CF0FB4(v285, v283, v284);
          return;
        }

        v246 = v22[299];
        v247 = v22[220];
        v248 = v22[169];
        sub_1000D2A70(v22[271], v248, &qword_1016B0478, &unk_1013CDC10);
        v249 = v246(v248, 1, v247);
        v250 = v22[169];
        if (v249 != 1)
        {
          sub_100D12974(v250, v22[223], type metadata accessor for KeyDropInterface.KeyAlignment);
          v293 = swift_task_alloc();
          v22[303] = v293;
          *v293 = v22;
          v293[1] = sub_100CD0008;
          v294 = v22[269];
          v295 = v22[268];
          v296 = v22[237];
          v297 = v22[223];
          v298 = v22[174];
          v299 = v22[140];
          v300 = 1;
LABEL_95:

          sub_100CF2904(v298, v299, v296, v297, v300, v295, v294);
          return;
        }

        v251 = v22[248];
        v252 = v22[140];
        sub_10000B3A8(v250, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        v253 = os_log_type_enabled(v9, v10);
        v12 = v22[248];
        if (v253)
        {
          v13 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v13 = 136446466;
          v254 = sub_100C71778();
          v256 = v255;
          sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
          v257 = sub_1000136BC(v254, v256, v324);

          *(v13 + 4) = v257;
          *(v13 + 12) = 2082;
          v18 = 6;
          goto LABEL_5;
        }

        break;
      case 8:
      case 10:
        v42 = v22[117];
        if (!*(v42 + 16))
        {
          goto LABEL_7;
        }

        v43 = sub_100771F0C(v28);
        if ((v44 & 1) == 0)
        {
          goto LABEL_7;
        }

        v318 = v23;
        v45 = v22[269];
        v46 = v22[268];
        v47 = *(v323 + 1680);
        v48 = (*(v42 + 56) + 16 * v43);
        v50 = *v48;
        v49 = v48[1];
        v51 = type metadata accessor for EncryptedData();
        (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
        sub_100017D5C(v50, v49);
        sub_100017D5C(v50, v49);
        v52 = v47;
        v22 = v323;
        sub_10125A120(1, v50, v49, v52, v317);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v53 = swift_allocObject();
        v54 = *(v317 + 32);
        v55 = *(v317 + 48);
        v56 = *v317;
        *(v53 + 48) = *(v317 + 16);
        *(v53 + 64) = v54;
        *(v53 + 80) = v55;
        *(v53 + 96) = *(v317 + 64);
        *(v53 + 16) = xmmword_101385D80;
        *(v53 + 32) = v56;
        sub_10002E98C(v46, v45);
        sub_1003914F8(v317, v323 + 736);
        v57 = sub_100D11764(v53, v46, v45);
        v58 = *(v323 + 2152);
        v59 = *(v323 + 2144);
        if (v1)
        {
          sub_100016590(v50, v49);
          sub_100391554(v317);
          sub_100006654(v59, v58);
          swift_setDeallocating();
          sub_100391554(v53 + 32);
          swift_deallocClassInstance();
          v197 = *(v323 + 1920);
          v198 = *(v323 + 1912);
          v199 = *(v323 + 1120);
          sub_100D11DC8(v199, *(v323 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v199, v197, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v199, v198, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v200, v201))
          {
            v312 = v201;
            v202 = *(v323 + 1928);
            v309 = *(v323 + 1920);
            v315 = *(v323 + 1912);
            v203 = *(v323 + 2509);
            v204 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v204 = 136447747;
            v205 = sub_100C71778();
            v207 = v206;
            sub_100018D00(v202, type metadata accessor for SharingCircleKeyManager.Instruction);
            v208 = sub_1000136BC(v205, v207, v324);

            *(v204 + 4) = v208;
            *(v204 + 12) = 2082;
            v209 = sub_10125403C(v203);
            v211 = sub_1000136BC(v209, v210, v324);

            *(v204 + 14) = v211;
            *(v204 + 22) = 2160;
            *(v204 + 24) = 1752392040;
            *(v204 + 32) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v212 = dispatch thunk of CustomStringConvertible.description.getter();
            v214 = v213;
            sub_100018D00(v309, type metadata accessor for SharingCircleKeyManager.Instruction);
            v215 = sub_1000136BC(v212, v214, v324);

            *(v204 + 34) = v215;
            *(v204 + 42) = 2160;
            *(v204 + 44) = 1752392040;
            *(v204 + 52) = 2081;
            v22 = v323;
            v216 = dispatch thunk of CustomStringConvertible.description.getter();
            v218 = v217;
            sub_100018D00(v315, type metadata accessor for SharingCircleKeyManager.Instruction);
            v219 = sub_1000136BC(v216, v218, v324);

            *(v204 + 54) = v219;
            *(v204 + 62) = 2082;
            swift_getErrorValue();
            v220 = Error.localizedDescription.getter();
            v222 = sub_1000136BC(v220, v221, v324);

            *(v204 + 64) = v222;
            _os_log_impl(&_mh_execute_header, v200, v312, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v204, 0x48u);
            swift_arrayDestroy();
          }

          else
          {
            v223 = *(v323 + 1928);
            v224 = *(v323 + 1920);
            v225 = *(v323 + 1912);

            sub_100018D00(v225, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v224, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v223, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v1 = 0;
          continue;
        }

        v310 = v50;
        v60 = *(v323 + 1808);
        v61 = *(v323 + 1520);
        v62 = *(v323 + 1512);
        v63 = *(v323 + 1416);
        v64 = v57;
        sub_100006654(v59, v58);
        swift_setDeallocating();
        sub_100391554(v53 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v60, &v61[*(v63 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v61 = v28;
        *&v61[*(v63 + 24)] = v64;
        sub_100D11DC8(v61, v62, type metadata accessor for KeyDropInterface.KeyPackage);
        v65 = v318;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_100A5BE40(0, v318[2] + 1, 1, v318);
        }

        v67 = v65[2];
        v66 = v65[3];
        v319 = v65;
        v313 = v49;
        if (v67 >= v66 >> 1)
        {
          v319 = sub_100A5BE40((v66 > 1), v67 + 1, 1, v65);
        }

        v68 = *(v323 + 1960);
        v69 = *(v323 + 1520);
        v70 = *(v323 + 1512);
        v71 = *(v323 + 1504);
        v72 = *(v323 + 1424);
        v73 = *(v323 + 1120);
        v319[2] = v67 + 1;
        sub_100D12974(v70, v319 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v67, type metadata accessor for KeyDropInterface.KeyPackage);
        v74 = v73;
        v22 = v323;
        sub_100D11DC8(v74, v68, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v69, v71, type metadata accessor for KeyDropInterface.KeyPackage);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v323 + 1960);
        v79 = *(v323 + 1520);
        v80 = *(v323 + 1504);
        if (v77)
        {
          v81 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v81 = 136446466;
          v82 = sub_100C71778();
          v84 = v83;
          sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
          v85 = sub_1000136BC(v82, v84, v324);

          *(v81 + 4) = v85;
          *(v81 + 12) = 2082;
          v86 = sub_101255410();
          v88 = v87;
          sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
          v89 = v86;
          v22 = v323;
          v90 = sub_1000136BC(v89, v88, v324);

          *(v81 + 14) = v90;
          _os_log_impl(&_mh_execute_header, v75, v76, "Keys to upload: %{public}s,\nadded: %{public}s.", v81, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v317);
          sub_100016590(v310, v313);
        }

        else
        {

          sub_100391554(v317);
          sub_100016590(v310, v313);
          sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        sub_100018D00(v79, type metadata accessor for KeyDropInterface.KeyPackage);
        v1 = 0;
        v23 = v319;
        goto LABEL_7;
      case 9:
        v226 = v22[221];
        v227 = v22[220];
        v228 = v22[168];
        v0 = v22;
        sub_1000D2A70(v22[271], v228, &qword_1016B0478, &unk_1013CDC10);
        v229 = *(v226 + 48);
        v22[305] = v229;
        v22[306] = (v226 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v227) = v229(v228, 1, v227);
        sub_10000B3A8(v228, &qword_1016B0478, &unk_1013CDC10);
        if (v227 == 1)
        {
          v262 = swift_task_alloc();
          v22[307] = v262;
          *v262 = v22;
          v263 = sub_100CD2EEC;
          goto LABEL_87;
        }

        v230 = v22[305];
        v231 = v22[220];
        v232 = v22[167];
        sub_1000D2A70(v22[271], v232, &qword_1016B0478, &unk_1013CDC10);
        v233 = v230(v232, 1, v231);
        v234 = v22[167];
        if (v233 != 1)
        {
          sub_100D12974(v234, v22[222], type metadata accessor for KeyDropInterface.KeyAlignment);
          v286 = swift_task_alloc();
          v22[309] = v286;
          *v286 = v22;
          v286[1] = sub_100CD5928;
          v287 = v22[269];
          v288 = v22[268];
          v289 = v22[237];
          v290 = v22[222];
          v291 = v22[173];
          v292 = v22[140];

          sub_100CF3F94(v291, v292, v289, v290, v288, v287);
          return;
        }

        v235 = v22[246];
        v236 = v22[140];
        sub_10000B3A8(v234, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v236, v235, type metadata accessor for SharingCircleKeyManager.Instruction);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        v237 = os_log_type_enabled(v9, v10);
        v12 = v22[246];
        if (v237)
        {
          v13 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v13 = 136446466;
          v238 = sub_100C71778();
          v240 = v239;
          sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
          v241 = sub_1000136BC(v238, v240, v324);

          *(v13 + 4) = v241;
          *(v13 + 12) = 2082;
          v18 = 9;
          goto LABEL_5;
        }

        break;
      case 12:
        v91 = v22[228];
        v92 = v22[227];
        v93 = v22[146];
        sub_1000D2A70(v22[237] + *(v22[234] + 28), v93, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v91 + 48))(v93, 1, v92) == 1)
        {
          v94 = v22[149];
          v95 = v22[148];
          v96 = v22[147];
          sub_10000B3A8(v22[146], &qword_1016980D0, &unk_10138F3B0);
          (*(v94 + 56))(v96, 1, 1, v95);
          goto LABEL_35;
        }

        v97 = v22[237];
        v98 = v22[234];
        v99 = v22[145];
        (v22[263])(v22[230], v22[146], v22[227]);
        sub_100D11DC8(v97 + *(v98 + 24), v99, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_30:
            v116 = v22[149];
            v117 = v22[148];
            v118 = v22[147];
            v119 = v22[145];
            (*(v22[228] + 8))(v22[230], v22[227]);
            sub_100018D00(v119, type metadata accessor for StableIdentifier);
            (*(v116 + 56))(v118, 1, 1, v117);
            goto LABEL_35;
          }

          v112 = v22[228];
          v113 = v22[227];
          v114 = v22[145];
          v115 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v105 = *(v114 + *(v115 + 96));
          (*(v112 + 8))(v114, v113);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_30;
          }

          v101 = v22[228];
          v102 = v22[145];
          v103 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v104 = (v102 + *(v103 + 96));
          v105 = *v104;
          LOBYTE(v102) = v104[1];

          v106 = *(v101 + 8);
          if (v102)
          {
            v107 = v22[227];
            v320 = v23;
            v108 = v22[149];
            v109 = v22[148];
            v110 = v22[147];
            v111 = v22[145];
            v106(v22[230], v107);
            (*(v108 + 56))(v110, 1, 1, v109);
            v23 = v320;
            v106(v111, v107);
            goto LABEL_35;
          }

          v106(v22[145], v22[227]);
        }

        v120 = v22[149];
        v121 = v22[148];
        v122 = v22[147];
        (v22[263])(v122, v22[230], v22[227]);
        *(v122 + *(v121 + 20)) = v105;
        (*(v120 + 56))(v122, 0, 1, v121);
LABEL_35:
        v123 = v22[147];
        if ((*(v22[149] + 48))(v123, 1, v22[148]) == 1)
        {
          sub_10000B3A8(v123, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_7;
        }

        v124 = v22[238];
        v125 = v22[140];
        sub_100D12974(v123, v22[150], type metadata accessor for KeyDropBeaconGroupAttributes);
        v126 = *(v125 + *(v124 + 44));
        if (!*(v126 + 16))
        {
          goto LABEL_41;
        }

        v127 = sub_100771F0C(12);
        if ((v128 & 1) == 0)
        {
          goto LABEL_41;
        }

        v129 = v22;
        v130 = v22[221];
        v131 = v129[220];
        v132 = v129[217];
        v133 = v129[214];
        v134 = v129[165];
        sub_100D11DC8(*(v126 + 56) + *(v129[215] + 72) * v127, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(v129[165], &qword_1016B0478, &unk_1013CDC10);
          v22 = v129;
LABEL_41:
          v135 = v22[156];
          v136 = v22[155];
          v137 = v22[152];
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(v22[152], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = v129[165];
          v139 = v129[160];
          v140 = v129[156];
          v141 = v129[155];
          v142 = v129[152];
          (*(v140 + 16))(v142, v138 + *(v129[220] + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
          v22 = v129;
        }

        v143 = v22[237];
        v144 = v22[159];
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        if (v1)
        {

          objc_autoreleasePoolPop(v145);
          return;
        }

        v146 = v22[159];
        v147 = v22[156];
        v148 = v22[155];
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v149 = dispatch thunk of static Comparable.< infix(_:_:)();
        v150 = *(v147 + 8);
        v150(v146, v148);
        if (v149)
        {
          v151 = v22[150];
          v150(v22[160], v22[155]);
          sub_100018D00(v151, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v152 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v154 = v153;
          v314 = v150;
          v321 = v23;
          v155 = v22[269];
          v156 = v22[268];
          v157 = v22[210];
          v158 = v152;

          v159 = type metadata accessor for EncryptedData();
          (*(*(v159 - 8) + 56))(v157, 1, 1, v159);
          sub_100017D5C(v158, v154);
          sub_10125A120(1, v158, v154, v157, v316);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v160 = swift_allocObject();
          v161 = *(v316 + 32);
          v162 = *(v316 + 48);
          v163 = *v316;
          *(v160 + 48) = *(v316 + 16);
          *(v160 + 64) = v161;
          *(v160 + 80) = v162;
          *(v160 + 96) = *(v316 + 64);
          *(v160 + 16) = xmmword_101385D80;
          *(v160 + 32) = v163;
          sub_10002E98C(v156, v155);
          sub_1003914F8(v316, (v22 + 56));
          v164 = sub_100D11764(v160, v156, v155);
          v308 = v158;
          v311 = v154;
          v165 = v22[226];
          v166 = v22[184];
          v167 = v22[183];
          v168 = v22[177];
          v169 = v164;
          sub_100006654(v22[268], v22[269]);
          swift_setDeallocating();
          sub_100391554(v160 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v165, &v166[*(v168 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v166 = 12;
          *&v166[*(v168 + 24)] = v169;
          sub_100D11DC8(v166, v167, type metadata accessor for KeyDropInterface.KeyPackage);
          v170 = v321;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_100A5BE40(0, v321[2] + 1, 1, v321);
          }

          v172 = v170[2];
          v171 = v170[3];
          v322 = v170;
          if (v172 >= v171 >> 1)
          {
            v322 = sub_100A5BE40((v171 > 1), v172 + 1, 1, v170);
          }

          v173 = *(v323 + 1944);
          v174 = *(v323 + 1472);
          v175 = *(v323 + 1464);
          v176 = *(v323 + 1456);
          v177 = *(v323 + 1424);
          v178 = *(v323 + 1120);
          v322[2] = v172 + 1;
          sub_100D12974(v175, v322 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v172, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v178, v173, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v174, v176, type metadata accessor for KeyDropInterface.KeyPackage);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.default.getter();
          v181 = os_log_type_enabled(v179, v180);
          v182 = *(v323 + 1944);
          v183 = *(v323 + 1472);
          v184 = *(v323 + 1456);
          v185 = *(v323 + 1280);
          v186 = *(v323 + 1240);
          v187 = *(v323 + 1200);
          if (v181)
          {
            v188 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v188 = 136446466;
            v306 = v183;
            v307 = v186;
            v189 = sub_100C71778();
            v191 = v190;
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            v192 = sub_1000136BC(v189, v191, v324);

            *(v188 + 4) = v192;
            *(v188 + 12) = 2082;
            v193 = sub_101255410();
            v195 = v194;
            sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
            v196 = sub_1000136BC(v193, v195, v324);

            *(v188 + 14) = v196;
            _os_log_impl(&_mh_execute_header, v179, v180, "Keys to upload: %{public}s,\nadded: %{public}s.", v188, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v316);
            sub_100016590(v308, v311);
            sub_100018D00(v306, type metadata accessor for KeyDropInterface.KeyPackage);
            v314(v185, v307);
          }

          else
          {

            sub_100391554(v316);
            sub_100016590(v308, v311);
            sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
            v314(v185, v186);
          }

          sub_100018D00(v187, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
          v23 = v322;
          v22 = v323;
        }

        goto LABEL_7;
      case 13:
        v280 = swift_task_alloc();
        v22[311] = v280;
        *v280 = v22;
        v280[1] = sub_100CD880C;
        v281 = v22[237];
        v282 = v22[154];

        sub_100CF5FBC(v282, v281);
        return;
      case 16:
        v267 = swift_task_alloc();
        v22[312] = v267;
        *v267 = v22;
        v267[1] = sub_100CDBC44;
        v268 = v22[237];
        v269 = v22[158];
        v270 = v22[143];

        sub_100CF6C9C(v269, v270, v268);
        return;
      default:
        goto LABEL_7;
    }

LABEL_67:
    v22 = v0;

    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v264 = v22[237];
  v265 = v22[226];
  sub_100006654(v22[268], v22[269]);
  sub_1001BAF34((v22 + 110));
  sub_100018D00(v265, type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_100018D00(v264, type metadata accessor for OwnedBeaconRecord);

  v266 = v22[1];

  v266(v23);
}

uint64_t sub_100CCA6E8()
{
  v2 = *v1;
  *(*v1 + 2384) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CE465C;
  }

  else
  {
    v4 = sub_100CCA814;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CCA814()
{
  v369 = v0;
  v1 = *(v0 + 1400);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 1616);
    v3 = *(v0 + 1608);
    sub_100D12974(v1, v2, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v2, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v366 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_100018D00(*(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v366 = *(v0 + 2208);
  while (1)
  {
    v52 = *(v0 + 2200) + 1;
    if (v52 == *(v0 + 2184))
    {
LABEL_17:

      v53 = *(v0 + 1896);
      v54 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v54, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v53, type metadata accessor for OwnedBeaconRecord);

      v55 = *(v0 + 8);

      v55(v366);
      return;
    }

    v56 = v0 + 232;
    v57 = v0 + 808;
    v58 = *(v0 + 2384);
    v363 = v0 + 232;
    v365 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v366;
    *(v0 + 2200) = v52;
    *(v0 + 2192) = v58;
    v59 = *(v0 + 2176);
    if (v52 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
LABEL_4:
    v6 = v366[2];
    v5 = v366[3];
    if (v6 >= v5 >> 1)
    {
      v366 = sub_100A5BE40((v5 > 1), v6 + 1, 1, v366);
    }

    v7 = *(v0 + 2008);
    v8 = *(v0 + 1616);
    v9 = *(v0 + 1608);
    v10 = *(v0 + 1600);
    v11 = *(v0 + 1592);
    v12 = *(v0 + 1424);
    v13 = *(v0 + 1120);
    v366[2] = v6 + 1;
    sub_100D12974(v9, v366 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v13, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v8, v10, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v8, v11, type metadata accessor for KeyDropInterface.KeyPackage);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2008);
    if (v16)
    {
      v364 = v15;
      v18 = *(v0 + 1600);
      v19 = *(v0 + 1592);
      v20 = *(v0 + 1416);
      v21 = swift_slowAlloc();
      *(v0 + 1048) = swift_slowAlloc();
      *v21 = 136446722;
      v22 = sub_100C71778();
      v24 = v23;
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      v25 = sub_1000136BC(v22, v24, (v0 + 1048));

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_101255410();
      v28 = v27;
      sub_100018D00(v18, type metadata accessor for KeyDropInterface.KeyPackage);
      v29 = sub_1000136BC(v26, v28, (v0 + 1048));

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = *(v19 + *(v20 + 24));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v0 + 1056);
        *(v0 + 1056) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v31, 0);
        v33 = *(v0 + 1056);
        v34 = (v30 + 32);
        v35 = *(v33 + 16);
        do
        {
          v37 = *v34;
          v34 += 9;
          v36 = v37;
          *v32 = v33;
          v38 = *(v33 + 24);
          if (v35 >= v38 >> 1)
          {
            sub_101123BF8((v38 > 1), v35 + 1, 1);
            v33 = *v32;
          }

          *(v33 + 16) = v35 + 1;
          *(v33 + 8 * v35++ + 32) = v36;
          --v31;
        }

        while (v31);
      }

      v45 = *(v0 + 1792);
      v46 = *(v0 + 1616);
      v47 = *(v0 + 1592);
      v48 = Array.description.getter();
      v50 = v49;

      sub_100018D00(v47, type metadata accessor for KeyDropInterface.KeyPackage);
      v51 = sub_1000136BC(v48, v50, (v0 + 1048));

      *(v21 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v14, v364, "Keys to upload: %{public}s,\nadded primaryAddressPackage: %{public}s,\nkey indexes: %{public}s.", v21, 0x20u);
      swift_arrayDestroy();

      sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
      v44 = type metadata accessor for KeyDropInterface.KeyAlignment;
      v43 = v45;
    }

    else
    {
      v39 = *(v0 + 1792);
      v40 = *(v0 + 1616);
      v41 = *(v0 + 1600);
      v42 = *(v0 + 1592);

      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v39, type metadata accessor for KeyDropInterface.KeyAlignment);
      v43 = v42;
      v44 = type metadata accessor for KeyDropInterface.KeyPackage;
    }

    sub_100018D00(v43, v44);
  }

  v60 = *(v0 + 2048);
  v61 = *(v0 + 1120);
  v62 = *(v59 + v52 + 32);
  *(v0 + 2509) = v62;
  sub_100D11DC8(v61, v60, type metadata accessor for SharingCircleKeyManager.Instruction);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 2048);
  if (v65)
  {
    v67 = swift_slowAlloc();
    v368[0] = swift_slowAlloc();
    *v67 = 136446466;
    v68 = sub_100C71778();
    v70 = v69;
    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    v71 = sub_1000136BC(v68, v70, v368);
    v56 = v0 + 232;

    *(v67 + 4) = v71;
    *(v67 + 12) = 2082;
    v72 = sub_10125403C(v62);
    v74 = sub_1000136BC(v72, v73, v368);

    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "Keys to upload: %{public}s. Creating package for %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    v57 = v0 + 808;
  }

  else
  {

    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v62)
  {
    case 1:
      v310 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v310 + 16) && (v311 = sub_100771F0C(1), (v312 & 1) != 0))
      {
        v313 = *(v0 + 1752);
        sub_100D11DC8(*(v310 + 56) + *(*(v0 + 1720) + 72) * v311, v313, type metadata accessor for BookmarkMetaData);
        v314 = *(v313 + 8);
        sub_100018D00(v313, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v314 = 0;
      }

      *(v0 + 2216) = v314;
      v347 = *(v0 + 2504);
      v348 = *(v0 + 1120);
      v349 = swift_task_alloc();
      *(v0 + 2224) = v349;
      *v349 = v0;
      v349[1] = sub_100CBBD44;
      v350 = *(v0 + 1704);

      sub_100CFC71C(v350, v348 + v347);
      return;
    case 4:
      v318 = swift_task_alloc();
      *(v0 + 2328) = v318;
      *v318 = v0;
      v318[1] = sub_100CC4E24;
      v319 = *(v0 + 1896);
      v320 = *(v0 + 1408);
      v321 = *(v0 + 1120);

      sub_100CF172C(v320, v321, v319, v0 + 880);
      return;
    case 5:
      v98 = *(v0 + 1768);
      v99 = *(v0 + 1760);
      v100 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v100, &qword_1016B0478, &unk_1013CDC10);
      v101 = *(v98 + 48);
      *(v0 + 2344) = v101;
      *(v0 + 2352) = (v98 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v99) = v101(v100, 1, v99);
      sub_10000B3A8(v100, &qword_1016B0478, &unk_1013CDC10);
      if (v99 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2360) = v326;
        *v326 = v0;
        v327 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v102 = *(v0 + 2344);
      v103 = *(v0 + 1760);
      v104 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v104, &qword_1016B0478, &unk_1013CDC10);
      v105 = v102(v104, 1, v103);
      v106 = *(v0 + 1368);
      if (v105 != 1)
      {
        sub_100D12974(v106, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v331 = swift_task_alloc();
        *(v0 + 2376) = v331;
        *v331 = v0;
        v331[1] = sub_100CCA6E8;
        v332 = *(v0 + 2152);
        v333 = *(v0 + 2144);
        v334 = *(v0 + 1896);
        v335 = *(v0 + 1792);
        v336 = *(v0 + 1400);
        v337 = *(v0 + 1120);
        v338 = 0;
        goto LABEL_111;
      }

      v107 = *(v0 + 2000);
      v108 = *(v0 + 1120);
      sub_10000B3A8(v106, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v108, v107, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 2000);
      if (!v111)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v114 = sub_100C71778();
      v116 = v115;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v117 = sub_1000136BC(v114, v116, v368);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2082;
      v118 = 5;
      goto LABEL_46;
    case 6:
      v119 = *(v0 + 1768);
      v120 = *(v0 + 1760);
      v121 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v121, &qword_1016B0478, &unk_1013CDC10);
      v122 = *(v119 + 48);
      *(v0 + 2392) = v122;
      *(v0 + 2400) = (v119 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v120) = v122(v121, 1, v120);
      sub_10000B3A8(v121, &qword_1016B0478, &unk_1013CDC10);
      if (v120 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2408) = v326;
        *v326 = v0;
        v327 = sub_100CCD5CC;
LABEL_106:
        v326[1] = v327;
        v328 = *(v0 + 2160);
        v329 = *(v0 + 1896);
        v330 = *(v0 + 1128);

        sub_100CF0FB4(v329, v328, v330);
        return;
      }

      v123 = *(v0 + 2392);
      v124 = *(v0 + 1760);
      v125 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v125, &qword_1016B0478, &unk_1013CDC10);
      v126 = v123(v125, 1, v124);
      v127 = *(v0 + 1352);
      if (v126 == 1)
      {
        v128 = *(v0 + 1984);
        v129 = *(v0 + 1120);
        sub_10000B3A8(v127, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v129, v128, type metadata accessor for SharingCircleKeyManager.Instruction);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        v130 = os_log_type_enabled(v109, v110);
        v112 = *(v0 + 1984);
        if (v130)
        {
          v113 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v113 = 136446466;
          v131 = sub_100C71778();
          v133 = v132;
          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
          v134 = sub_1000136BC(v131, v133, v368);

          *(v113 + 4) = v134;
          *(v113 + 12) = 2082;
          v118 = 6;
LABEL_46:
          v151 = sub_10125403C(v118);
          v153 = sub_1000136BC(v151, v152, v368);

          *(v113 + 14) = v153;
          v57 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v109, v110, "No key alignment available for %{public}s. No package created for %{public}s", v113, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v366 = *(v0 + 2208);
LABEL_22:
        v52 = *(v0 + 2200) + 1;
        if (v52 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v127, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v339 = swift_task_alloc();
      *(v0 + 2424) = v339;
      *v339 = v0;
      v339[1] = sub_100CD0008;
      v332 = *(v0 + 2152);
      v333 = *(v0 + 2144);
      v334 = *(v0 + 1896);
      v335 = *(v0 + 1784);
      v336 = *(v0 + 1392);
      v337 = *(v0 + 1120);
      v338 = 1;
LABEL_111:

      sub_100CF2904(v336, v337, v334, v335, v338, v333, v332);
      return;
    case 8:
    case 10:
      v75 = *(v0 + 936);
      if (!*(v75 + 16))
      {
        goto LABEL_22;
      }

      v76 = sub_100771F0C(v62);
      if ((v77 & 1) == 0)
      {
        goto LABEL_22;
      }

      v78 = *(v0 + 2152);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 1680);
      v81 = (*(v75 + 56) + 16 * v76);
      v83 = *v81;
      v82 = v81[1];
      v84 = type metadata accessor for EncryptedData();
      (*(*(v84 - 8) + 56))(v80, 1, 1, v84);
      sub_100017D5C(v83, v82);
      sub_100017D5C(v83, v82);
      sub_10125A120(1, v83, v82, v80, v56);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v85 = swift_allocObject();
      v86 = *(v56 + 32);
      v87 = *(v56 + 48);
      v88 = *v56;
      *(v85 + 48) = *(v56 + 16);
      *(v85 + 64) = v86;
      *(v85 + 80) = v87;
      *(v85 + 96) = *(v56 + 64);
      *(v85 + 16) = xmmword_101385D80;
      *(v85 + 32) = v88;
      sub_10002E98C(v79, v78);
      sub_1003914F8(v56, v0 + 736);
      v89 = sub_100D11764(v85, v79, v78);
      v90 = *(v0 + 2152);
      v91 = *(v0 + 2144);
      if (v58)
      {
        sub_100016590(v83, v82);
        sub_100391554(v56);
        sub_100006654(v91, v90);
        swift_setDeallocating();
        sub_100391554(v85 + 32);
        swift_deallocClassInstance();
        v57 = v0 + 808;
        v250 = *(v0 + 1920);
        v251 = *(v0 + 1912);
        v252 = *(v0 + 1120);
        sub_100D11DC8(v252, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v250, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v253 = Logger.logObject.getter();
        v254 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v253, v254))
        {
          v367 = v254;
          v255 = *(v0 + 1928);
          v256 = *(v0 + 1920);
          v358 = *(v0 + 1912);
          v257 = *(v0 + 2509);
          v258 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v258 = 136447747;
          v259 = sub_100C71778();
          v261 = v260;
          sub_100018D00(v255, type metadata accessor for SharingCircleKeyManager.Instruction);
          v262 = sub_1000136BC(v259, v261, v368);

          *(v258 + 4) = v262;
          *(v258 + 12) = 2082;
          v263 = sub_10125403C(v257);
          v265 = sub_1000136BC(v263, v264, v368);

          *(v258 + 14) = v265;
          *(v258 + 22) = 2160;
          *(v258 + 24) = 1752392040;
          *(v258 + 32) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v266 = dispatch thunk of CustomStringConvertible.description.getter();
          v268 = v267;
          v269 = v256;
          v56 = v0 + 232;
          sub_100018D00(v269, type metadata accessor for SharingCircleKeyManager.Instruction);
          v270 = sub_1000136BC(v266, v268, v368);

          *(v258 + 34) = v270;
          *(v258 + 42) = 2160;
          *(v258 + 44) = 1752392040;
          *(v258 + 52) = 2081;
          v57 = v0 + 808;
          v271 = dispatch thunk of CustomStringConvertible.description.getter();
          v273 = v272;
          sub_100018D00(v358, type metadata accessor for SharingCircleKeyManager.Instruction);
          v274 = sub_1000136BC(v271, v273, v368);

          *(v258 + 54) = v274;
          *(v258 + 62) = 2082;
          swift_getErrorValue();
          v275 = Error.localizedDescription.getter();
          v277 = sub_1000136BC(v275, v276, v368);

          *(v258 + 64) = v277;
          _os_log_impl(&_mh_execute_header, v253, v367, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v258, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v278 = *(v0 + 1928);
          v279 = *(v0 + 1920);
          v280 = *(v0 + 1912);

          sub_100018D00(v280, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v279, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v278, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v58 = 0;
        goto LABEL_48;
      }

      v169 = v89;
      v170 = *(v0 + 1808);
      v171 = *(v0 + 1520);
      v356 = *(v0 + 1512);
      v360 = v82;
      v172 = *(v0 + 1416);
      sub_100006654(v91, v90);
      swift_setDeallocating();
      sub_100391554(v85 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v170, &v171[*(v172 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v171 = v62;
      *&v171[*(v172 + 24)] = v169;
      sub_100D11DC8(v171, v356, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
      }

      v174 = v366[2];
      v173 = v366[3];
      if (v174 >= v173 >> 1)
      {
        v366 = sub_100A5BE40((v173 > 1), v174 + 1, 1, v366);
      }

      v175 = *(v0 + 1960);
      v176 = *(v0 + 1520);
      v177 = *(v0 + 1512);
      v178 = *(v0 + 1504);
      v179 = *(v0 + 1424);
      v180 = *(v0 + 1120);
      v366[2] = v174 + 1;
      sub_100D12974(v177, v366 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v174, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v180, v175, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v176, v178, type metadata accessor for KeyDropInterface.KeyPackage);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.default.getter();
      v183 = os_log_type_enabled(v181, v182);
      v184 = *(v0 + 1960);
      v185 = *(v0 + 1520);
      v186 = *(v0 + 1504);
      if (v183)
      {
        v187 = swift_slowAlloc();
        v368[0] = swift_slowAlloc();
        *v187 = 136446466;
        v188 = sub_100C71778();
        v357 = v185;
        v190 = v189;
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v191 = sub_1000136BC(v188, v190, v368);

        *(v187 + 4) = v191;
        *(v187 + 12) = 2082;
        v192 = sub_101255410();
        v194 = v193;
        sub_100018D00(v186, type metadata accessor for KeyDropInterface.KeyPackage);
        v195 = sub_1000136BC(v192, v194, v368);

        *(v187 + 14) = v195;
        _os_log_impl(&_mh_execute_header, v181, v182, "Keys to upload: %{public}s,\nadded: %{public}s.", v187, 0x16u);
        swift_arrayDestroy();

        v56 = v0 + 232;
        sub_100391554(v363);
        sub_100016590(v83, v360);
        v196 = v357;
      }

      else
      {

        sub_100391554(v363);
        sub_100016590(v83, v360);
        v205 = v186;
        v56 = v0 + 232;
        sub_100018D00(v205, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v196 = v185;
      }

      sub_100018D00(v196, type metadata accessor for KeyDropInterface.KeyPackage);
      v58 = 0;
      v57 = v0 + 808;
      goto LABEL_22;
    case 9:
      v135 = *(v0 + 1768);
      v136 = *(v0 + 1760);
      v137 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v137, &qword_1016B0478, &unk_1013CDC10);
      v138 = *(v135 + 48);
      *(v0 + 2440) = v138;
      *(v0 + 2448) = (v135 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v136) = v138(v137, 1, v136);
      sub_10000B3A8(v137, &qword_1016B0478, &unk_1013CDC10);
      if (v136 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2456) = v326;
        *v326 = v0;
        v327 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v139 = *(v0 + 2440);
      v140 = *(v0 + 1760);
      v141 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v141, &qword_1016B0478, &unk_1013CDC10);
      v142 = v139(v141, 1, v140);
      v143 = *(v0 + 1336);
      if (v142 != 1)
      {
        sub_100D12974(v143, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v340 = swift_task_alloc();
        *(v0 + 2472) = v340;
        *v340 = v0;
        v340[1] = sub_100CD5928;
        v341 = *(v0 + 2152);
        v342 = *(v0 + 2144);
        v343 = *(v0 + 1896);
        v344 = *(v0 + 1776);
        v345 = *(v0 + 1384);
        v346 = *(v0 + 1120);

        sub_100CF3F94(v345, v346, v343, v344, v342, v341);
        return;
      }

      v144 = *(v0 + 1968);
      v145 = *(v0 + 1120);
      sub_10000B3A8(v143, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v145, v144, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v146 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 1968);
      if (!v146)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v147 = sub_100C71778();
      v149 = v148;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v150 = sub_1000136BC(v147, v149, v368);

      *(v113 + 4) = v150;
      *(v113 + 12) = 2082;
      v118 = 9;
      goto LABEL_46;
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
        goto LABEL_66;
      }

      v154 = *(v0 + 1896);
      v155 = *(v0 + 1872);
      v156 = *(v0 + 1160);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v154 + *(v155 + 24), v156, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v201 = *(v0 + 1192);
          v202 = *(v0 + 1184);
          v203 = *(v0 + 1176);
          v204 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v204, type metadata accessor for StableIdentifier);
          (*(v201 + 56))(v203, 1, 1, v202);
          goto LABEL_66;
        }

        v197 = *(v0 + 1824);
        v198 = *(v0 + 1816);
        v199 = *(v0 + 1160);
        v200 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v162 = *(v199 + *(v200 + 96));
        (*(v197 + 8))(v199, v198);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v158 = *(v0 + 1824);
        v159 = *(v0 + 1160);
        v160 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v161 = (v159 + *(v160 + 96));
        v162 = *v161;
        LOBYTE(v159) = v161[1];

        v163 = *(v158 + 8);
        if (v159)
        {
          v164 = *(v0 + 1816);
          v165 = *(v0 + 1192);
          v166 = *(v0 + 1184);
          v167 = *(v0 + 1176);
          v168 = *(v0 + 1160);
          v163(*(v0 + 1840), v164);
          (*(v165 + 56))(v167, 1, 1, v166);
          v163(v168, v164);
          v57 = v0 + 808;
          goto LABEL_66;
        }

        v163(*(v0 + 1160), *(v0 + 1816));
        v57 = v0 + 808;
      }

      v206 = *(v0 + 1192);
      v207 = *(v0 + 1184);
      v208 = *(v0 + 1176);
      (*(v0 + 2104))(v208, *(v0 + 1840), *(v0 + 1816));
      *(v208 + *(v207 + 20)) = v162;
      (*(v206 + 56))(v208, 0, 1, v207);
LABEL_66:
      v209 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v209, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v209, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v210 = *(v0 + 1904);
      v211 = *(v0 + 1120);
      sub_100D12974(v209, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v212 = *(v211 + *(v210 + 44));
      if (!*(v212 + 16))
      {
        goto LABEL_71;
      }

      v213 = sub_100771F0C(12);
      if ((v214 & 1) == 0)
      {
        goto LABEL_71;
      }

      v215 = *(v0 + 1768);
      v216 = *(v0 + 1760);
      v217 = *(v0 + 1736);
      v218 = *(v0 + 1712);
      v219 = *(v0 + 1320);
      sub_100D11DC8(*(v212 + 56) + *(*(v0 + 1720) + 72) * v213, v217, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v217 + *(v218 + 20), v219, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v217, type metadata accessor for BookmarkMetaData);
      if ((*(v215 + 48))(v219, 1, v216) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v57 = v0 + 808;
LABEL_71:
        v220 = *(v0 + 1248);
        v221 = *(v0 + 1240);
        v222 = *(v0 + 1216);
        (*(v220 + 56))(v222, 1, 1, v221);
        static Date.distantPast.getter();
        if ((*(v220 + 48))(v222, 1, v221) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v223 = *(v0 + 1320);
        v224 = *(v0 + 1280);
        v225 = *(v0 + 1248);
        v226 = *(v0 + 1240);
        v227 = *(v0 + 1216);
        (*(v225 + 16))(v227, v223 + *(*(v0 + 1760) + 24), v226);
        sub_100018D00(v223, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v225 + 56))(v227, 0, 1, v226);
        (*(v225 + 32))(v224, v227, v226);
        v57 = v0 + 808;
      }

      v228 = *(v0 + 1896);
      v229 = *(v0 + 1272);
      v230 = objc_autoreleasePoolPush();
      sub_100D088CC(v228, v229);
      if (v58)
      {

        objc_autoreleasePoolPop(v230);
        return;
      }

      v231 = *(v0 + 1272);
      v232 = *(v0 + 1248);
      v233 = *(v0 + 1240);
      objc_autoreleasePoolPop(v230);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v234 = dispatch thunk of static Comparable.< infix(_:_:)();
      v235 = *(v232 + 8);
      v235(v231, v233);
      if (v234)
      {
        v236 = *(v0 + 1200);
        v235(*(v0 + 1280), *(v0 + 1240));
        v237 = v236;
      }

      else
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v238 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v240 = v239;
        v361 = *(v0 + 2152);
        v241 = *(v0 + 2144);
        v242 = *(v0 + 1680);
        v243 = v238;

        v244 = type metadata accessor for EncryptedData();
        (*(*(v244 - 8) + 56))(v242, 1, 1, v244);
        sub_100017D5C(v243, v240);
        sub_10125A120(1, v243, v240, v242, v57);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v245 = swift_allocObject();
        v246 = *(v57 + 32);
        v247 = *(v57 + 48);
        v248 = *v57;
        *(v245 + 48) = *(v57 + 16);
        *(v245 + 64) = v246;
        *(v245 + 80) = v247;
        *(v245 + 96) = *(v57 + 64);
        *(v245 + 16) = xmmword_101385D80;
        *(v245 + 32) = v248;
        sub_10002E98C(v241, v361);
        sub_1003914F8(v57, v0 + 448);
        v249 = sub_100D11764(v245, v241, v361);
        v359 = v243;
        v362 = v240;
        v281 = *(v0 + 1808);
        v282 = *(v0 + 1472);
        v354 = *(v0 + 1464);
        v283 = *(v0 + 1416);
        v284 = v249;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v245 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v281, &v282[*(v283 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v282 = 12;
        *&v282[*(v283 + 24)] = v284;
        sub_100D11DC8(v282, v354, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
        }

        v286 = v366[2];
        v285 = v366[3];
        if (v286 >= v285 >> 1)
        {
          v366 = sub_100A5BE40((v285 > 1), v286 + 1, 1, v366);
        }

        v287 = *(v0 + 1944);
        v288 = *(v0 + 1472);
        v289 = *(v0 + 1464);
        v290 = *(v0 + 1456);
        v291 = *(v0 + 1424);
        v292 = *(v0 + 1120);
        v366[2] = v286 + 1;
        sub_100D12974(v289, v366 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v286, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v292, v287, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v288, v290, type metadata accessor for KeyDropInterface.KeyPackage);
        v293 = Logger.logObject.getter();
        v294 = static os_log_type_t.default.getter();
        v295 = os_log_type_enabled(v293, v294);
        v296 = *(v0 + 1944);
        v355 = *(v0 + 1472);
        v297 = *(v0 + 1456);
        v298 = *(v0 + 1280);
        v299 = *(v0 + 1240);
        v300 = *(v0 + 1200);
        if (v295)
        {
          v351 = v294;
          v301 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v301 = 136446466;
          v352 = v298;
          v353 = v299;
          v302 = sub_100C71778();
          v304 = v303;
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          v305 = sub_1000136BC(v302, v304, v368);

          *(v301 + 4) = v305;
          *(v301 + 12) = 2082;
          v306 = sub_101255410();
          v308 = v307;
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          v309 = sub_1000136BC(v306, v308, v368);

          *(v301 + 14) = v309;
          _os_log_impl(&_mh_execute_header, v293, v351, "Keys to upload: %{public}s,\nadded: %{public}s.", v301, 0x16u);
          swift_arrayDestroy();

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v352, v353);
        }

        else
        {

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v298, v299);
        }

        v237 = v300;
      }

      sub_100018D00(v237, type metadata accessor for KeyDropBeaconGroupAttributes);
      v58 = 0;
      v56 = v0 + 232;
      goto LABEL_22;
    case 13:
      v315 = swift_task_alloc();
      *(v0 + 2488) = v315;
      *v315 = v0;
      v315[1] = sub_100CD880C;
      v316 = *(v0 + 1896);
      v317 = *(v0 + 1232);

      sub_100CF5FBC(v317, v316);
      return;
    case 16:
      v322 = swift_task_alloc();
      *(v0 + 2496) = v322;
      *v322 = v0;
      v322[1] = sub_100CDBC44;
      v323 = *(v0 + 1896);
      v324 = *(v0 + 1264);
      v325 = *(v0 + 1144);

      sub_100CF6C9C(v324, v325, v323);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CCD5CC()
{
  v2 = *v1;
  *(*v1 + 2416) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CE6EAC;
  }

  else
  {
    v4 = sub_100CCD6F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CCD6F8()
{
  v325 = v0;
  v317 = (v0 + 29);
  v316 = (v0 + 101);
  v1 = v0[302];
LABEL_2:
  v2 = v0[299];
  v3 = v0[220];
  v4 = v0[169];
  sub_1000D2A70(v0[271], v4, &qword_1016B0478, &unk_1013CDC10);
  v5 = v2(v4, 1, v3);
  v6 = v0[169];
  if (v5 != 1)
  {
    sub_100D12974(v6, v0[223], type metadata accessor for KeyDropInterface.KeyAlignment);
    v301 = swift_task_alloc();
    v0[303] = v301;
    *v301 = v0;
    v301[1] = sub_100CD0008;
    v294 = v0[269];
    v295 = v0[268];
    v296 = v0[237];
    v297 = v0[223];
    v298 = v0[174];
    v299 = v0[140];
    v300 = 1;
    goto LABEL_95;
  }

  v7 = v0[248];
  v8 = v0[140];
  sub_10000B3A8(v6, &qword_1016B0478, &unk_1013CDC10);
  sub_100D11DC8(v8, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[248];
  if (!v11)
  {
    goto LABEL_67;
  }

  v13 = swift_slowAlloc();
  v324[0] = swift_slowAlloc();
  *v13 = 136446466;
  v14 = sub_100C71778();
  v16 = v15;
  sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  v17 = sub_1000136BC(v14, v16, v324);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2082;
  v18 = 6;
LABEL_5:
  v19 = sub_10125403C(v18);
  v21 = sub_1000136BC(v19, v20, v324);

  *(v13 + 14) = v21;
  _os_log_impl(&_mh_execute_header, v9, v10, "No key alignment available for %{public}s. No package created for %{public}s", v13, 0x16u);
  swift_arrayDestroy();
  v22 = v323;

  while (1)
  {
    v23 = v22[276];
LABEL_7:
    v24 = v22[275] + 1;
    if (v24 == v22[273])
    {
      break;
    }

    v22[276] = v23;
    v22[275] = v24;
    v22[274] = v1;
    v25 = v22[272];
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
      return;
    }

    v26 = v22[256];
    v27 = v22[140];
    v28 = *(v25 + v24 + 32);
    *(v22 + 2509) = v28;
    sub_100D11DC8(v27, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v22[256];
    if (v31)
    {
      v33 = swift_slowAlloc();
      v324[0] = swift_slowAlloc();
      *v33 = 136446466;
      v34 = sub_100C71778();
      v35 = v23;
      v37 = v36;
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
      v38 = sub_1000136BC(v34, v37, v324);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_10125403C(v28);
      v41 = sub_1000136BC(v39, v40, v324);

      *(v33 + 14) = v41;
      v23 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Keys to upload: %{public}s. Creating package for %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      v22 = v323;
    }

    else
    {

      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v28)
    {
      case 1:
        v271 = *(v22[140] + *(v22[238] + 44));
        if (*(v271 + 16) && (v272 = sub_100771F0C(1), (v273 & 1) != 0))
        {
          v274 = v22[219];
          sub_100D11DC8(*(v271 + 56) + *(v22[215] + 72) * v272, v274, type metadata accessor for BookmarkMetaData);
          v275 = *(v274 + 8);
          sub_100018D00(v274, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v275 = 0;
        }

        v22[277] = v275;
        v302 = *(v22 + 626);
        v303 = v22[140];
        v304 = swift_task_alloc();
        v22[278] = v304;
        *v304 = v22;
        v304[1] = sub_100CBBD44;
        v305 = v22[213];

        sub_100CFC71C(v305, v303 + v302);
        return;
      case 4:
        v276 = swift_task_alloc();
        v22[291] = v276;
        *v276 = v22;
        v276[1] = sub_100CC4E24;
        v277 = v22[237];
        v278 = v22[176];
        v279 = v22[140];

        sub_100CF172C(v278, v279, v277, (v22 + 110));
        return;
      case 5:
        v242 = v22[221];
        v243 = v22[220];
        v244 = v22[172];
        v0 = v22;
        sub_1000D2A70(v22[271], v244, &qword_1016B0478, &unk_1013CDC10);
        v245 = *(v242 + 48);
        v22[293] = v245;
        v22[294] = (v242 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v243) = v245(v244, 1, v243);
        sub_10000B3A8(v244, &qword_1016B0478, &unk_1013CDC10);
        if (v243 == 1)
        {
          v262 = swift_task_alloc();
          v22[295] = v262;
          *v262 = v22;
          v263 = sub_100CC7CAC;
          goto LABEL_87;
        }

        v246 = v22[293];
        v247 = v22[220];
        v248 = v22[171];
        sub_1000D2A70(v22[271], v248, &qword_1016B0478, &unk_1013CDC10);
        v249 = v246(v248, 1, v247);
        v250 = v22[171];
        if (v249 != 1)
        {
          sub_100D12974(v250, v22[224], type metadata accessor for KeyDropInterface.KeyAlignment);
          v293 = swift_task_alloc();
          v22[297] = v293;
          *v293 = v22;
          v293[1] = sub_100CCA6E8;
          v294 = v22[269];
          v295 = v22[268];
          v296 = v22[237];
          v297 = v22[224];
          v298 = v22[175];
          v299 = v22[140];
          v300 = 0;
LABEL_95:

          sub_100CF2904(v298, v299, v296, v297, v300, v295, v294);
          return;
        }

        v251 = v22[250];
        v252 = v22[140];
        sub_10000B3A8(v250, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        v253 = os_log_type_enabled(v9, v10);
        v12 = v22[250];
        if (v253)
        {
          v13 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v13 = 136446466;
          v254 = sub_100C71778();
          v256 = v255;
          sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
          v257 = sub_1000136BC(v254, v256, v324);

          *(v13 + 4) = v257;
          *(v13 + 12) = 2082;
          v18 = 5;
          goto LABEL_5;
        }

        break;
      case 6:
        v258 = v22[221];
        v259 = v22[220];
        v260 = v22[170];
        v0 = v22;
        sub_1000D2A70(v22[271], v260, &qword_1016B0478, &unk_1013CDC10);
        v261 = *(v258 + 48);
        v22[299] = v261;
        v22[300] = (v258 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v259) = v261(v260, 1, v259);
        sub_10000B3A8(v260, &qword_1016B0478, &unk_1013CDC10);
        if (v259 != 1)
        {
          goto LABEL_2;
        }

        v262 = swift_task_alloc();
        v22[301] = v262;
        *v262 = v22;
        v263 = sub_100CCD5CC;
        goto LABEL_87;
      case 8:
      case 10:
        v42 = v22[117];
        if (!*(v42 + 16))
        {
          goto LABEL_7;
        }

        v43 = sub_100771F0C(v28);
        if ((v44 & 1) == 0)
        {
          goto LABEL_7;
        }

        v318 = v23;
        v45 = v22[269];
        v46 = v22[268];
        v47 = *(v323 + 1680);
        v48 = (*(v42 + 56) + 16 * v43);
        v50 = *v48;
        v49 = v48[1];
        v51 = type metadata accessor for EncryptedData();
        (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
        sub_100017D5C(v50, v49);
        sub_100017D5C(v50, v49);
        v52 = v47;
        v22 = v323;
        sub_10125A120(1, v50, v49, v52, v317);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v53 = swift_allocObject();
        v54 = *(v317 + 32);
        v55 = *(v317 + 48);
        v56 = *v317;
        *(v53 + 48) = *(v317 + 16);
        *(v53 + 64) = v54;
        *(v53 + 80) = v55;
        *(v53 + 96) = *(v317 + 64);
        *(v53 + 16) = xmmword_101385D80;
        *(v53 + 32) = v56;
        sub_10002E98C(v46, v45);
        sub_1003914F8(v317, v323 + 736);
        v57 = sub_100D11764(v53, v46, v45);
        v58 = *(v323 + 2152);
        v59 = *(v323 + 2144);
        if (v1)
        {
          sub_100016590(v50, v49);
          sub_100391554(v317);
          sub_100006654(v59, v58);
          swift_setDeallocating();
          sub_100391554(v53 + 32);
          swift_deallocClassInstance();
          v197 = *(v323 + 1920);
          v198 = *(v323 + 1912);
          v199 = *(v323 + 1120);
          sub_100D11DC8(v199, *(v323 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v199, v197, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v199, v198, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v200, v201))
          {
            v312 = v201;
            v202 = *(v323 + 1928);
            v309 = *(v323 + 1920);
            v315 = *(v323 + 1912);
            v203 = *(v323 + 2509);
            v204 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v204 = 136447747;
            v205 = sub_100C71778();
            v207 = v206;
            sub_100018D00(v202, type metadata accessor for SharingCircleKeyManager.Instruction);
            v208 = sub_1000136BC(v205, v207, v324);

            *(v204 + 4) = v208;
            *(v204 + 12) = 2082;
            v209 = sub_10125403C(v203);
            v211 = sub_1000136BC(v209, v210, v324);

            *(v204 + 14) = v211;
            *(v204 + 22) = 2160;
            *(v204 + 24) = 1752392040;
            *(v204 + 32) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v212 = dispatch thunk of CustomStringConvertible.description.getter();
            v214 = v213;
            sub_100018D00(v309, type metadata accessor for SharingCircleKeyManager.Instruction);
            v215 = sub_1000136BC(v212, v214, v324);

            *(v204 + 34) = v215;
            *(v204 + 42) = 2160;
            *(v204 + 44) = 1752392040;
            *(v204 + 52) = 2081;
            v22 = v323;
            v216 = dispatch thunk of CustomStringConvertible.description.getter();
            v218 = v217;
            sub_100018D00(v315, type metadata accessor for SharingCircleKeyManager.Instruction);
            v219 = sub_1000136BC(v216, v218, v324);

            *(v204 + 54) = v219;
            *(v204 + 62) = 2082;
            swift_getErrorValue();
            v220 = Error.localizedDescription.getter();
            v222 = sub_1000136BC(v220, v221, v324);

            *(v204 + 64) = v222;
            _os_log_impl(&_mh_execute_header, v200, v312, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v204, 0x48u);
            swift_arrayDestroy();
          }

          else
          {
            v223 = *(v323 + 1928);
            v224 = *(v323 + 1920);
            v225 = *(v323 + 1912);

            sub_100018D00(v225, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v224, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v223, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v1 = 0;
          continue;
        }

        v310 = v50;
        v60 = *(v323 + 1808);
        v61 = *(v323 + 1520);
        v62 = *(v323 + 1512);
        v63 = *(v323 + 1416);
        v64 = v57;
        sub_100006654(v59, v58);
        swift_setDeallocating();
        sub_100391554(v53 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v60, &v61[*(v63 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v61 = v28;
        *&v61[*(v63 + 24)] = v64;
        sub_100D11DC8(v61, v62, type metadata accessor for KeyDropInterface.KeyPackage);
        v65 = v318;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_100A5BE40(0, v318[2] + 1, 1, v318);
        }

        v67 = v65[2];
        v66 = v65[3];
        v319 = v65;
        v313 = v49;
        if (v67 >= v66 >> 1)
        {
          v319 = sub_100A5BE40((v66 > 1), v67 + 1, 1, v65);
        }

        v68 = *(v323 + 1960);
        v69 = *(v323 + 1520);
        v70 = *(v323 + 1512);
        v71 = *(v323 + 1504);
        v72 = *(v323 + 1424);
        v73 = *(v323 + 1120);
        v319[2] = v67 + 1;
        sub_100D12974(v70, v319 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v67, type metadata accessor for KeyDropInterface.KeyPackage);
        v74 = v73;
        v22 = v323;
        sub_100D11DC8(v74, v68, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v69, v71, type metadata accessor for KeyDropInterface.KeyPackage);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v323 + 1960);
        v79 = *(v323 + 1520);
        v80 = *(v323 + 1504);
        if (v77)
        {
          v81 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v81 = 136446466;
          v82 = sub_100C71778();
          v84 = v83;
          sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
          v85 = sub_1000136BC(v82, v84, v324);

          *(v81 + 4) = v85;
          *(v81 + 12) = 2082;
          v86 = sub_101255410();
          v88 = v87;
          sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
          v89 = v86;
          v22 = v323;
          v90 = sub_1000136BC(v89, v88, v324);

          *(v81 + 14) = v90;
          _os_log_impl(&_mh_execute_header, v75, v76, "Keys to upload: %{public}s,\nadded: %{public}s.", v81, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v317);
          sub_100016590(v310, v313);
        }

        else
        {

          sub_100391554(v317);
          sub_100016590(v310, v313);
          sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        sub_100018D00(v79, type metadata accessor for KeyDropInterface.KeyPackage);
        v1 = 0;
        v23 = v319;
        goto LABEL_7;
      case 9:
        v226 = v22[221];
        v227 = v22[220];
        v228 = v22[168];
        v0 = v22;
        sub_1000D2A70(v22[271], v228, &qword_1016B0478, &unk_1013CDC10);
        v229 = *(v226 + 48);
        v22[305] = v229;
        v22[306] = (v226 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v227) = v229(v228, 1, v227);
        sub_10000B3A8(v228, &qword_1016B0478, &unk_1013CDC10);
        if (v227 == 1)
        {
          v262 = swift_task_alloc();
          v22[307] = v262;
          *v262 = v22;
          v263 = sub_100CD2EEC;
LABEL_87:
          v262[1] = v263;
          v283 = v0[270];
          v284 = v0[141];
          v285 = v0[237];

          sub_100CF0FB4(v285, v283, v284);
          return;
        }

        v230 = v22[305];
        v231 = v22[220];
        v232 = v22[167];
        sub_1000D2A70(v22[271], v232, &qword_1016B0478, &unk_1013CDC10);
        v233 = v230(v232, 1, v231);
        v234 = v22[167];
        if (v233 != 1)
        {
          sub_100D12974(v234, v22[222], type metadata accessor for KeyDropInterface.KeyAlignment);
          v286 = swift_task_alloc();
          v22[309] = v286;
          *v286 = v22;
          v286[1] = sub_100CD5928;
          v287 = v22[269];
          v288 = v22[268];
          v289 = v22[237];
          v290 = v22[222];
          v291 = v22[173];
          v292 = v22[140];

          sub_100CF3F94(v291, v292, v289, v290, v288, v287);
          return;
        }

        v235 = v22[246];
        v236 = v22[140];
        sub_10000B3A8(v234, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v236, v235, type metadata accessor for SharingCircleKeyManager.Instruction);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        v237 = os_log_type_enabled(v9, v10);
        v12 = v22[246];
        if (v237)
        {
          v13 = swift_slowAlloc();
          v324[0] = swift_slowAlloc();
          *v13 = 136446466;
          v238 = sub_100C71778();
          v240 = v239;
          sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
          v241 = sub_1000136BC(v238, v240, v324);

          *(v13 + 4) = v241;
          *(v13 + 12) = 2082;
          v18 = 9;
          goto LABEL_5;
        }

        break;
      case 12:
        v91 = v22[228];
        v92 = v22[227];
        v93 = v22[146];
        sub_1000D2A70(v22[237] + *(v22[234] + 28), v93, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v91 + 48))(v93, 1, v92) == 1)
        {
          v94 = v22[149];
          v95 = v22[148];
          v96 = v22[147];
          sub_10000B3A8(v22[146], &qword_1016980D0, &unk_10138F3B0);
          (*(v94 + 56))(v96, 1, 1, v95);
          goto LABEL_35;
        }

        v97 = v22[237];
        v98 = v22[234];
        v99 = v22[145];
        (v22[263])(v22[230], v22[146], v22[227]);
        sub_100D11DC8(v97 + *(v98 + 24), v99, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_30:
            v116 = v22[149];
            v117 = v22[148];
            v118 = v22[147];
            v119 = v22[145];
            (*(v22[228] + 8))(v22[230], v22[227]);
            sub_100018D00(v119, type metadata accessor for StableIdentifier);
            (*(v116 + 56))(v118, 1, 1, v117);
            goto LABEL_35;
          }

          v112 = v22[228];
          v113 = v22[227];
          v114 = v22[145];
          v115 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v105 = *(v114 + *(v115 + 96));
          (*(v112 + 8))(v114, v113);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_30;
          }

          v101 = v22[228];
          v102 = v22[145];
          v103 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v104 = (v102 + *(v103 + 96));
          v105 = *v104;
          LOBYTE(v102) = v104[1];

          v106 = *(v101 + 8);
          if (v102)
          {
            v107 = v22[227];
            v320 = v23;
            v108 = v22[149];
            v109 = v22[148];
            v110 = v22[147];
            v111 = v22[145];
            v106(v22[230], v107);
            (*(v108 + 56))(v110, 1, 1, v109);
            v23 = v320;
            v106(v111, v107);
            goto LABEL_35;
          }

          v106(v22[145], v22[227]);
        }

        v120 = v22[149];
        v121 = v22[148];
        v122 = v22[147];
        (v22[263])(v122, v22[230], v22[227]);
        *(v122 + *(v121 + 20)) = v105;
        (*(v120 + 56))(v122, 0, 1, v121);
LABEL_35:
        v123 = v22[147];
        if ((*(v22[149] + 48))(v123, 1, v22[148]) == 1)
        {
          sub_10000B3A8(v123, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_7;
        }

        v124 = v22[238];
        v125 = v22[140];
        sub_100D12974(v123, v22[150], type metadata accessor for KeyDropBeaconGroupAttributes);
        v126 = *(v125 + *(v124 + 44));
        if (!*(v126 + 16))
        {
          goto LABEL_41;
        }

        v127 = sub_100771F0C(12);
        if ((v128 & 1) == 0)
        {
          goto LABEL_41;
        }

        v129 = v22;
        v130 = v22[221];
        v131 = v129[220];
        v132 = v129[217];
        v133 = v129[214];
        v134 = v129[165];
        sub_100D11DC8(*(v126 + 56) + *(v129[215] + 72) * v127, v132, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
        if ((*(v130 + 48))(v134, 1, v131) == 1)
        {
          sub_10000B3A8(v129[165], &qword_1016B0478, &unk_1013CDC10);
          v22 = v129;
LABEL_41:
          v135 = v22[156];
          v136 = v22[155];
          v137 = v22[152];
          (*(v135 + 56))(v137, 1, 1, v136);
          static Date.distantPast.getter();
          if ((*(v135 + 48))(v137, 1, v136) != 1)
          {
            sub_10000B3A8(v22[152], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v138 = v129[165];
          v139 = v129[160];
          v140 = v129[156];
          v141 = v129[155];
          v142 = v129[152];
          (*(v140 + 16))(v142, v138 + *(v129[220] + 24), v141);
          sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v140 + 56))(v142, 0, 1, v141);
          (*(v140 + 32))(v139, v142, v141);
          v22 = v129;
        }

        v143 = v22[237];
        v144 = v22[159];
        v145 = objc_autoreleasePoolPush();
        sub_100D088CC(v143, v144);
        if (v1)
        {

          objc_autoreleasePoolPop(v145);
          return;
        }

        v146 = v22[159];
        v147 = v22[156];
        v148 = v22[155];
        objc_autoreleasePoolPop(v145);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v149 = dispatch thunk of static Comparable.< infix(_:_:)();
        v150 = *(v147 + 8);
        v150(v146, v148);
        if (v149)
        {
          v151 = v22[150];
          v150(v22[160], v22[155]);
          sub_100018D00(v151, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v152 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v154 = v153;
          v314 = v150;
          v321 = v23;
          v155 = v22[269];
          v156 = v22[268];
          v157 = v22[210];
          v158 = v152;

          v159 = type metadata accessor for EncryptedData();
          (*(*(v159 - 8) + 56))(v157, 1, 1, v159);
          sub_100017D5C(v158, v154);
          sub_10125A120(1, v158, v154, v157, v316);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v160 = swift_allocObject();
          v161 = *(v316 + 32);
          v162 = *(v316 + 48);
          v163 = *v316;
          *(v160 + 48) = *(v316 + 16);
          *(v160 + 64) = v161;
          *(v160 + 80) = v162;
          *(v160 + 96) = *(v316 + 64);
          *(v160 + 16) = xmmword_101385D80;
          *(v160 + 32) = v163;
          sub_10002E98C(v156, v155);
          sub_1003914F8(v316, (v22 + 56));
          v164 = sub_100D11764(v160, v156, v155);
          v308 = v158;
          v311 = v154;
          v165 = v22[226];
          v166 = v22[184];
          v167 = v22[183];
          v168 = v22[177];
          v169 = v164;
          sub_100006654(v22[268], v22[269]);
          swift_setDeallocating();
          sub_100391554(v160 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v165, &v166[*(v168 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v166 = 12;
          *&v166[*(v168 + 24)] = v169;
          sub_100D11DC8(v166, v167, type metadata accessor for KeyDropInterface.KeyPackage);
          v170 = v321;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_100A5BE40(0, v321[2] + 1, 1, v321);
          }

          v172 = v170[2];
          v171 = v170[3];
          v322 = v170;
          if (v172 >= v171 >> 1)
          {
            v322 = sub_100A5BE40((v171 > 1), v172 + 1, 1, v170);
          }

          v173 = *(v323 + 1944);
          v174 = *(v323 + 1472);
          v175 = *(v323 + 1464);
          v176 = *(v323 + 1456);
          v177 = *(v323 + 1424);
          v178 = *(v323 + 1120);
          v322[2] = v172 + 1;
          sub_100D12974(v175, v322 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v172, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v178, v173, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v174, v176, type metadata accessor for KeyDropInterface.KeyPackage);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.default.getter();
          v181 = os_log_type_enabled(v179, v180);
          v182 = *(v323 + 1944);
          v183 = *(v323 + 1472);
          v184 = *(v323 + 1456);
          v185 = *(v323 + 1280);
          v186 = *(v323 + 1240);
          v187 = *(v323 + 1200);
          if (v181)
          {
            v188 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v188 = 136446466;
            v306 = v183;
            v307 = v186;
            v189 = sub_100C71778();
            v191 = v190;
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            v192 = sub_1000136BC(v189, v191, v324);

            *(v188 + 4) = v192;
            *(v188 + 12) = 2082;
            v193 = sub_101255410();
            v195 = v194;
            sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
            v196 = sub_1000136BC(v193, v195, v324);

            *(v188 + 14) = v196;
            _os_log_impl(&_mh_execute_header, v179, v180, "Keys to upload: %{public}s,\nadded: %{public}s.", v188, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v316);
            sub_100016590(v308, v311);
            sub_100018D00(v306, type metadata accessor for KeyDropInterface.KeyPackage);
            v314(v185, v307);
          }

          else
          {

            sub_100391554(v316);
            sub_100016590(v308, v311);
            sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
            v314(v185, v186);
          }

          sub_100018D00(v187, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
          v23 = v322;
          v22 = v323;
        }

        goto LABEL_7;
      case 13:
        v280 = swift_task_alloc();
        v22[311] = v280;
        *v280 = v22;
        v280[1] = sub_100CD880C;
        v281 = v22[237];
        v282 = v22[154];

        sub_100CF5FBC(v282, v281);
        return;
      case 16:
        v267 = swift_task_alloc();
        v22[312] = v267;
        *v267 = v22;
        v267[1] = sub_100CDBC44;
        v268 = v22[237];
        v269 = v22[158];
        v270 = v22[143];

        sub_100CF6C9C(v269, v270, v268);
        return;
      default:
        goto LABEL_7;
    }

LABEL_67:
    v22 = v0;

    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v264 = v22[237];
  v265 = v22[226];
  sub_100006654(v22[268], v22[269]);
  sub_1001BAF34((v22 + 110));
  sub_100018D00(v265, type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_100018D00(v264, type metadata accessor for OwnedBeaconRecord);

  v266 = v22[1];

  v266(v23);
}

uint64_t sub_100CD0008()
{
  v2 = *v1;
  *(*v1 + 2432) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CE96E0;
  }

  else
  {
    v4 = sub_100CD0134;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CD0134()
{
  v369 = v0;
  v1 = *(v0 + 1392);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 1584);
    v3 = *(v0 + 1576);
    sub_100D12974(v1, v2, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v2, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v366 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_100018D00(*(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v366 = *(v0 + 2208);
  while (1)
  {
    v52 = *(v0 + 2200) + 1;
    if (v52 == *(v0 + 2184))
    {
LABEL_17:

      v53 = *(v0 + 1896);
      v54 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v54, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v53, type metadata accessor for OwnedBeaconRecord);

      v55 = *(v0 + 8);

      v55(v366);
      return;
    }

    v56 = v0 + 232;
    v57 = v0 + 808;
    v58 = *(v0 + 2432);
    v363 = v0 + 232;
    v365 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v366;
    *(v0 + 2200) = v52;
    *(v0 + 2192) = v58;
    v59 = *(v0 + 2176);
    if (v52 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
LABEL_4:
    v6 = v366[2];
    v5 = v366[3];
    if (v6 >= v5 >> 1)
    {
      v366 = sub_100A5BE40((v5 > 1), v6 + 1, 1, v366);
    }

    v7 = *(v0 + 1992);
    v8 = *(v0 + 1584);
    v9 = *(v0 + 1576);
    v10 = *(v0 + 1568);
    v11 = *(v0 + 1560);
    v12 = *(v0 + 1424);
    v13 = *(v0 + 1120);
    v366[2] = v6 + 1;
    sub_100D12974(v9, v366 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v13, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v8, v10, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v8, v11, type metadata accessor for KeyDropInterface.KeyPackage);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1992);
    if (v16)
    {
      v364 = v15;
      v18 = *(v0 + 1568);
      v19 = *(v0 + 1560);
      v20 = *(v0 + 1416);
      v21 = swift_slowAlloc();
      *(v0 + 1032) = swift_slowAlloc();
      *v21 = 136446722;
      v22 = sub_100C71778();
      v24 = v23;
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      v25 = sub_1000136BC(v22, v24, (v0 + 1032));

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_101255410();
      v28 = v27;
      sub_100018D00(v18, type metadata accessor for KeyDropInterface.KeyPackage);
      v29 = sub_1000136BC(v26, v28, (v0 + 1032));

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = *(v19 + *(v20 + 24));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v0 + 1040);
        *(v0 + 1040) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v31, 0);
        v33 = *(v0 + 1040);
        v34 = (v30 + 32);
        v35 = *(v33 + 16);
        do
        {
          v37 = *v34;
          v34 += 9;
          v36 = v37;
          *v32 = v33;
          v38 = *(v33 + 24);
          if (v35 >= v38 >> 1)
          {
            sub_101123BF8((v38 > 1), v35 + 1, 1);
            v33 = *v32;
          }

          *(v33 + 16) = v35 + 1;
          *(v33 + 8 * v35++ + 32) = v36;
          --v31;
        }

        while (v31);
      }

      v45 = *(v0 + 1784);
      v46 = *(v0 + 1584);
      v47 = *(v0 + 1560);
      v48 = Array.description.getter();
      v50 = v49;

      sub_100018D00(v47, type metadata accessor for KeyDropInterface.KeyPackage);
      v51 = sub_1000136BC(v48, v50, (v0 + 1032));

      *(v21 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v14, v364, "Keys to upload: %{public}s,\nadded secondaryAddressPackage: %{public}s,\nkey indexes: %{public}s.", v21, 0x20u);
      swift_arrayDestroy();

      sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
      v44 = type metadata accessor for KeyDropInterface.KeyAlignment;
      v43 = v45;
    }

    else
    {
      v39 = *(v0 + 1784);
      v40 = *(v0 + 1584);
      v41 = *(v0 + 1568);
      v42 = *(v0 + 1560);

      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v39, type metadata accessor for KeyDropInterface.KeyAlignment);
      v43 = v42;
      v44 = type metadata accessor for KeyDropInterface.KeyPackage;
    }

    sub_100018D00(v43, v44);
  }

  v60 = *(v0 + 2048);
  v61 = *(v0 + 1120);
  v62 = *(v59 + v52 + 32);
  *(v0 + 2509) = v62;
  sub_100D11DC8(v61, v60, type metadata accessor for SharingCircleKeyManager.Instruction);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 2048);
  if (v65)
  {
    v67 = swift_slowAlloc();
    v368[0] = swift_slowAlloc();
    *v67 = 136446466;
    v68 = sub_100C71778();
    v70 = v69;
    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    v71 = sub_1000136BC(v68, v70, v368);
    v56 = v0 + 232;

    *(v67 + 4) = v71;
    *(v67 + 12) = 2082;
    v72 = sub_10125403C(v62);
    v74 = sub_1000136BC(v72, v73, v368);

    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "Keys to upload: %{public}s. Creating package for %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    v57 = v0 + 808;
  }

  else
  {

    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v62)
  {
    case 1:
      v310 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v310 + 16) && (v311 = sub_100771F0C(1), (v312 & 1) != 0))
      {
        v313 = *(v0 + 1752);
        sub_100D11DC8(*(v310 + 56) + *(*(v0 + 1720) + 72) * v311, v313, type metadata accessor for BookmarkMetaData);
        v314 = *(v313 + 8);
        sub_100018D00(v313, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v314 = 0;
      }

      *(v0 + 2216) = v314;
      v347 = *(v0 + 2504);
      v348 = *(v0 + 1120);
      v349 = swift_task_alloc();
      *(v0 + 2224) = v349;
      *v349 = v0;
      v349[1] = sub_100CBBD44;
      v350 = *(v0 + 1704);

      sub_100CFC71C(v350, v348 + v347);
      return;
    case 4:
      v318 = swift_task_alloc();
      *(v0 + 2328) = v318;
      *v318 = v0;
      v318[1] = sub_100CC4E24;
      v319 = *(v0 + 1896);
      v320 = *(v0 + 1408);
      v321 = *(v0 + 1120);

      sub_100CF172C(v320, v321, v319, v0 + 880);
      return;
    case 5:
      v98 = *(v0 + 1768);
      v99 = *(v0 + 1760);
      v100 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v100, &qword_1016B0478, &unk_1013CDC10);
      v101 = *(v98 + 48);
      *(v0 + 2344) = v101;
      *(v0 + 2352) = (v98 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v99) = v101(v100, 1, v99);
      sub_10000B3A8(v100, &qword_1016B0478, &unk_1013CDC10);
      if (v99 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2360) = v326;
        *v326 = v0;
        v327 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v102 = *(v0 + 2344);
      v103 = *(v0 + 1760);
      v104 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v104, &qword_1016B0478, &unk_1013CDC10);
      v105 = v102(v104, 1, v103);
      v106 = *(v0 + 1368);
      if (v105 != 1)
      {
        sub_100D12974(v106, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v331 = swift_task_alloc();
        *(v0 + 2376) = v331;
        *v331 = v0;
        v331[1] = sub_100CCA6E8;
        v332 = *(v0 + 2152);
        v333 = *(v0 + 2144);
        v334 = *(v0 + 1896);
        v335 = *(v0 + 1792);
        v336 = *(v0 + 1400);
        v337 = *(v0 + 1120);
        v338 = 0;
        goto LABEL_111;
      }

      v107 = *(v0 + 2000);
      v108 = *(v0 + 1120);
      sub_10000B3A8(v106, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v108, v107, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 2000);
      if (!v111)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v114 = sub_100C71778();
      v116 = v115;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v117 = sub_1000136BC(v114, v116, v368);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2082;
      v118 = 5;
      goto LABEL_46;
    case 6:
      v119 = *(v0 + 1768);
      v120 = *(v0 + 1760);
      v121 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v121, &qword_1016B0478, &unk_1013CDC10);
      v122 = *(v119 + 48);
      *(v0 + 2392) = v122;
      *(v0 + 2400) = (v119 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v120) = v122(v121, 1, v120);
      sub_10000B3A8(v121, &qword_1016B0478, &unk_1013CDC10);
      if (v120 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2408) = v326;
        *v326 = v0;
        v327 = sub_100CCD5CC;
LABEL_106:
        v326[1] = v327;
        v328 = *(v0 + 2160);
        v329 = *(v0 + 1896);
        v330 = *(v0 + 1128);

        sub_100CF0FB4(v329, v328, v330);
        return;
      }

      v123 = *(v0 + 2392);
      v124 = *(v0 + 1760);
      v125 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v125, &qword_1016B0478, &unk_1013CDC10);
      v126 = v123(v125, 1, v124);
      v127 = *(v0 + 1352);
      if (v126 == 1)
      {
        v128 = *(v0 + 1984);
        v129 = *(v0 + 1120);
        sub_10000B3A8(v127, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v129, v128, type metadata accessor for SharingCircleKeyManager.Instruction);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        v130 = os_log_type_enabled(v109, v110);
        v112 = *(v0 + 1984);
        if (v130)
        {
          v113 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v113 = 136446466;
          v131 = sub_100C71778();
          v133 = v132;
          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
          v134 = sub_1000136BC(v131, v133, v368);

          *(v113 + 4) = v134;
          *(v113 + 12) = 2082;
          v118 = 6;
LABEL_46:
          v151 = sub_10125403C(v118);
          v153 = sub_1000136BC(v151, v152, v368);

          *(v113 + 14) = v153;
          v57 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v109, v110, "No key alignment available for %{public}s. No package created for %{public}s", v113, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v366 = *(v0 + 2208);
LABEL_22:
        v52 = *(v0 + 2200) + 1;
        if (v52 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v127, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v339 = swift_task_alloc();
      *(v0 + 2424) = v339;
      *v339 = v0;
      v339[1] = sub_100CD0008;
      v332 = *(v0 + 2152);
      v333 = *(v0 + 2144);
      v334 = *(v0 + 1896);
      v335 = *(v0 + 1784);
      v336 = *(v0 + 1392);
      v337 = *(v0 + 1120);
      v338 = 1;
LABEL_111:

      sub_100CF2904(v336, v337, v334, v335, v338, v333, v332);
      return;
    case 8:
    case 10:
      v75 = *(v0 + 936);
      if (!*(v75 + 16))
      {
        goto LABEL_22;
      }

      v76 = sub_100771F0C(v62);
      if ((v77 & 1) == 0)
      {
        goto LABEL_22;
      }

      v78 = *(v0 + 2152);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 1680);
      v81 = (*(v75 + 56) + 16 * v76);
      v83 = *v81;
      v82 = v81[1];
      v84 = type metadata accessor for EncryptedData();
      (*(*(v84 - 8) + 56))(v80, 1, 1, v84);
      sub_100017D5C(v83, v82);
      sub_100017D5C(v83, v82);
      sub_10125A120(1, v83, v82, v80, v56);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v85 = swift_allocObject();
      v86 = *(v56 + 32);
      v87 = *(v56 + 48);
      v88 = *v56;
      *(v85 + 48) = *(v56 + 16);
      *(v85 + 64) = v86;
      *(v85 + 80) = v87;
      *(v85 + 96) = *(v56 + 64);
      *(v85 + 16) = xmmword_101385D80;
      *(v85 + 32) = v88;
      sub_10002E98C(v79, v78);
      sub_1003914F8(v56, v0 + 736);
      v89 = sub_100D11764(v85, v79, v78);
      v90 = *(v0 + 2152);
      v91 = *(v0 + 2144);
      if (v58)
      {
        sub_100016590(v83, v82);
        sub_100391554(v56);
        sub_100006654(v91, v90);
        swift_setDeallocating();
        sub_100391554(v85 + 32);
        swift_deallocClassInstance();
        v57 = v0 + 808;
        v250 = *(v0 + 1920);
        v251 = *(v0 + 1912);
        v252 = *(v0 + 1120);
        sub_100D11DC8(v252, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v250, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v253 = Logger.logObject.getter();
        v254 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v253, v254))
        {
          v367 = v254;
          v255 = *(v0 + 1928);
          v256 = *(v0 + 1920);
          v358 = *(v0 + 1912);
          v257 = *(v0 + 2509);
          v258 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v258 = 136447747;
          v259 = sub_100C71778();
          v261 = v260;
          sub_100018D00(v255, type metadata accessor for SharingCircleKeyManager.Instruction);
          v262 = sub_1000136BC(v259, v261, v368);

          *(v258 + 4) = v262;
          *(v258 + 12) = 2082;
          v263 = sub_10125403C(v257);
          v265 = sub_1000136BC(v263, v264, v368);

          *(v258 + 14) = v265;
          *(v258 + 22) = 2160;
          *(v258 + 24) = 1752392040;
          *(v258 + 32) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v266 = dispatch thunk of CustomStringConvertible.description.getter();
          v268 = v267;
          v269 = v256;
          v56 = v0 + 232;
          sub_100018D00(v269, type metadata accessor for SharingCircleKeyManager.Instruction);
          v270 = sub_1000136BC(v266, v268, v368);

          *(v258 + 34) = v270;
          *(v258 + 42) = 2160;
          *(v258 + 44) = 1752392040;
          *(v258 + 52) = 2081;
          v57 = v0 + 808;
          v271 = dispatch thunk of CustomStringConvertible.description.getter();
          v273 = v272;
          sub_100018D00(v358, type metadata accessor for SharingCircleKeyManager.Instruction);
          v274 = sub_1000136BC(v271, v273, v368);

          *(v258 + 54) = v274;
          *(v258 + 62) = 2082;
          swift_getErrorValue();
          v275 = Error.localizedDescription.getter();
          v277 = sub_1000136BC(v275, v276, v368);

          *(v258 + 64) = v277;
          _os_log_impl(&_mh_execute_header, v253, v367, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v258, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v278 = *(v0 + 1928);
          v279 = *(v0 + 1920);
          v280 = *(v0 + 1912);

          sub_100018D00(v280, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v279, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v278, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v58 = 0;
        goto LABEL_48;
      }

      v169 = v89;
      v170 = *(v0 + 1808);
      v171 = *(v0 + 1520);
      v356 = *(v0 + 1512);
      v360 = v82;
      v172 = *(v0 + 1416);
      sub_100006654(v91, v90);
      swift_setDeallocating();
      sub_100391554(v85 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v170, &v171[*(v172 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v171 = v62;
      *&v171[*(v172 + 24)] = v169;
      sub_100D11DC8(v171, v356, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
      }

      v174 = v366[2];
      v173 = v366[3];
      if (v174 >= v173 >> 1)
      {
        v366 = sub_100A5BE40((v173 > 1), v174 + 1, 1, v366);
      }

      v175 = *(v0 + 1960);
      v176 = *(v0 + 1520);
      v177 = *(v0 + 1512);
      v178 = *(v0 + 1504);
      v179 = *(v0 + 1424);
      v180 = *(v0 + 1120);
      v366[2] = v174 + 1;
      sub_100D12974(v177, v366 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v174, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v180, v175, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v176, v178, type metadata accessor for KeyDropInterface.KeyPackage);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.default.getter();
      v183 = os_log_type_enabled(v181, v182);
      v184 = *(v0 + 1960);
      v185 = *(v0 + 1520);
      v186 = *(v0 + 1504);
      if (v183)
      {
        v187 = swift_slowAlloc();
        v368[0] = swift_slowAlloc();
        *v187 = 136446466;
        v188 = sub_100C71778();
        v357 = v185;
        v190 = v189;
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v191 = sub_1000136BC(v188, v190, v368);

        *(v187 + 4) = v191;
        *(v187 + 12) = 2082;
        v192 = sub_101255410();
        v194 = v193;
        sub_100018D00(v186, type metadata accessor for KeyDropInterface.KeyPackage);
        v195 = sub_1000136BC(v192, v194, v368);

        *(v187 + 14) = v195;
        _os_log_impl(&_mh_execute_header, v181, v182, "Keys to upload: %{public}s,\nadded: %{public}s.", v187, 0x16u);
        swift_arrayDestroy();

        v56 = v0 + 232;
        sub_100391554(v363);
        sub_100016590(v83, v360);
        v196 = v357;
      }

      else
      {

        sub_100391554(v363);
        sub_100016590(v83, v360);
        v205 = v186;
        v56 = v0 + 232;
        sub_100018D00(v205, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v196 = v185;
      }

      sub_100018D00(v196, type metadata accessor for KeyDropInterface.KeyPackage);
      v58 = 0;
      v57 = v0 + 808;
      goto LABEL_22;
    case 9:
      v135 = *(v0 + 1768);
      v136 = *(v0 + 1760);
      v137 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v137, &qword_1016B0478, &unk_1013CDC10);
      v138 = *(v135 + 48);
      *(v0 + 2440) = v138;
      *(v0 + 2448) = (v135 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v136) = v138(v137, 1, v136);
      sub_10000B3A8(v137, &qword_1016B0478, &unk_1013CDC10);
      if (v136 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2456) = v326;
        *v326 = v0;
        v327 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v139 = *(v0 + 2440);
      v140 = *(v0 + 1760);
      v141 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v141, &qword_1016B0478, &unk_1013CDC10);
      v142 = v139(v141, 1, v140);
      v143 = *(v0 + 1336);
      if (v142 != 1)
      {
        sub_100D12974(v143, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v340 = swift_task_alloc();
        *(v0 + 2472) = v340;
        *v340 = v0;
        v340[1] = sub_100CD5928;
        v341 = *(v0 + 2152);
        v342 = *(v0 + 2144);
        v343 = *(v0 + 1896);
        v344 = *(v0 + 1776);
        v345 = *(v0 + 1384);
        v346 = *(v0 + 1120);

        sub_100CF3F94(v345, v346, v343, v344, v342, v341);
        return;
      }

      v144 = *(v0 + 1968);
      v145 = *(v0 + 1120);
      sub_10000B3A8(v143, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v145, v144, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v146 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 1968);
      if (!v146)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v147 = sub_100C71778();
      v149 = v148;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v150 = sub_1000136BC(v147, v149, v368);

      *(v113 + 4) = v150;
      *(v113 + 12) = 2082;
      v118 = 9;
      goto LABEL_46;
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
        goto LABEL_66;
      }

      v154 = *(v0 + 1896);
      v155 = *(v0 + 1872);
      v156 = *(v0 + 1160);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v154 + *(v155 + 24), v156, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v201 = *(v0 + 1192);
          v202 = *(v0 + 1184);
          v203 = *(v0 + 1176);
          v204 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v204, type metadata accessor for StableIdentifier);
          (*(v201 + 56))(v203, 1, 1, v202);
          goto LABEL_66;
        }

        v197 = *(v0 + 1824);
        v198 = *(v0 + 1816);
        v199 = *(v0 + 1160);
        v200 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v162 = *(v199 + *(v200 + 96));
        (*(v197 + 8))(v199, v198);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v158 = *(v0 + 1824);
        v159 = *(v0 + 1160);
        v160 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v161 = (v159 + *(v160 + 96));
        v162 = *v161;
        LOBYTE(v159) = v161[1];

        v163 = *(v158 + 8);
        if (v159)
        {
          v164 = *(v0 + 1816);
          v165 = *(v0 + 1192);
          v166 = *(v0 + 1184);
          v167 = *(v0 + 1176);
          v168 = *(v0 + 1160);
          v163(*(v0 + 1840), v164);
          (*(v165 + 56))(v167, 1, 1, v166);
          v163(v168, v164);
          v57 = v0 + 808;
          goto LABEL_66;
        }

        v163(*(v0 + 1160), *(v0 + 1816));
        v57 = v0 + 808;
      }

      v206 = *(v0 + 1192);
      v207 = *(v0 + 1184);
      v208 = *(v0 + 1176);
      (*(v0 + 2104))(v208, *(v0 + 1840), *(v0 + 1816));
      *(v208 + *(v207 + 20)) = v162;
      (*(v206 + 56))(v208, 0, 1, v207);
LABEL_66:
      v209 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v209, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v209, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v210 = *(v0 + 1904);
      v211 = *(v0 + 1120);
      sub_100D12974(v209, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v212 = *(v211 + *(v210 + 44));
      if (!*(v212 + 16))
      {
        goto LABEL_71;
      }

      v213 = sub_100771F0C(12);
      if ((v214 & 1) == 0)
      {
        goto LABEL_71;
      }

      v215 = *(v0 + 1768);
      v216 = *(v0 + 1760);
      v217 = *(v0 + 1736);
      v218 = *(v0 + 1712);
      v219 = *(v0 + 1320);
      sub_100D11DC8(*(v212 + 56) + *(*(v0 + 1720) + 72) * v213, v217, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v217 + *(v218 + 20), v219, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v217, type metadata accessor for BookmarkMetaData);
      if ((*(v215 + 48))(v219, 1, v216) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v57 = v0 + 808;
LABEL_71:
        v220 = *(v0 + 1248);
        v221 = *(v0 + 1240);
        v222 = *(v0 + 1216);
        (*(v220 + 56))(v222, 1, 1, v221);
        static Date.distantPast.getter();
        if ((*(v220 + 48))(v222, 1, v221) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v223 = *(v0 + 1320);
        v224 = *(v0 + 1280);
        v225 = *(v0 + 1248);
        v226 = *(v0 + 1240);
        v227 = *(v0 + 1216);
        (*(v225 + 16))(v227, v223 + *(*(v0 + 1760) + 24), v226);
        sub_100018D00(v223, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v225 + 56))(v227, 0, 1, v226);
        (*(v225 + 32))(v224, v227, v226);
        v57 = v0 + 808;
      }

      v228 = *(v0 + 1896);
      v229 = *(v0 + 1272);
      v230 = objc_autoreleasePoolPush();
      sub_100D088CC(v228, v229);
      if (v58)
      {

        objc_autoreleasePoolPop(v230);
        return;
      }

      v231 = *(v0 + 1272);
      v232 = *(v0 + 1248);
      v233 = *(v0 + 1240);
      objc_autoreleasePoolPop(v230);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v234 = dispatch thunk of static Comparable.< infix(_:_:)();
      v235 = *(v232 + 8);
      v235(v231, v233);
      if (v234)
      {
        v236 = *(v0 + 1200);
        v235(*(v0 + 1280), *(v0 + 1240));
        v237 = v236;
      }

      else
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v238 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v240 = v239;
        v361 = *(v0 + 2152);
        v241 = *(v0 + 2144);
        v242 = *(v0 + 1680);
        v243 = v238;

        v244 = type metadata accessor for EncryptedData();
        (*(*(v244 - 8) + 56))(v242, 1, 1, v244);
        sub_100017D5C(v243, v240);
        sub_10125A120(1, v243, v240, v242, v57);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v245 = swift_allocObject();
        v246 = *(v57 + 32);
        v247 = *(v57 + 48);
        v248 = *v57;
        *(v245 + 48) = *(v57 + 16);
        *(v245 + 64) = v246;
        *(v245 + 80) = v247;
        *(v245 + 96) = *(v57 + 64);
        *(v245 + 16) = xmmword_101385D80;
        *(v245 + 32) = v248;
        sub_10002E98C(v241, v361);
        sub_1003914F8(v57, v0 + 448);
        v249 = sub_100D11764(v245, v241, v361);
        v359 = v243;
        v362 = v240;
        v281 = *(v0 + 1808);
        v282 = *(v0 + 1472);
        v354 = *(v0 + 1464);
        v283 = *(v0 + 1416);
        v284 = v249;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v245 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v281, &v282[*(v283 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v282 = 12;
        *&v282[*(v283 + 24)] = v284;
        sub_100D11DC8(v282, v354, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
        }

        v286 = v366[2];
        v285 = v366[3];
        if (v286 >= v285 >> 1)
        {
          v366 = sub_100A5BE40((v285 > 1), v286 + 1, 1, v366);
        }

        v287 = *(v0 + 1944);
        v288 = *(v0 + 1472);
        v289 = *(v0 + 1464);
        v290 = *(v0 + 1456);
        v291 = *(v0 + 1424);
        v292 = *(v0 + 1120);
        v366[2] = v286 + 1;
        sub_100D12974(v289, v366 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v286, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v292, v287, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v288, v290, type metadata accessor for KeyDropInterface.KeyPackage);
        v293 = Logger.logObject.getter();
        v294 = static os_log_type_t.default.getter();
        v295 = os_log_type_enabled(v293, v294);
        v296 = *(v0 + 1944);
        v355 = *(v0 + 1472);
        v297 = *(v0 + 1456);
        v298 = *(v0 + 1280);
        v299 = *(v0 + 1240);
        v300 = *(v0 + 1200);
        if (v295)
        {
          v351 = v294;
          v301 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v301 = 136446466;
          v352 = v298;
          v353 = v299;
          v302 = sub_100C71778();
          v304 = v303;
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          v305 = sub_1000136BC(v302, v304, v368);

          *(v301 + 4) = v305;
          *(v301 + 12) = 2082;
          v306 = sub_101255410();
          v308 = v307;
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          v309 = sub_1000136BC(v306, v308, v368);

          *(v301 + 14) = v309;
          _os_log_impl(&_mh_execute_header, v293, v351, "Keys to upload: %{public}s,\nadded: %{public}s.", v301, 0x16u);
          swift_arrayDestroy();

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v352, v353);
        }

        else
        {

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v298, v299);
        }

        v237 = v300;
      }

      sub_100018D00(v237, type metadata accessor for KeyDropBeaconGroupAttributes);
      v58 = 0;
      v56 = v0 + 232;
      goto LABEL_22;
    case 13:
      v315 = swift_task_alloc();
      *(v0 + 2488) = v315;
      *v315 = v0;
      v315[1] = sub_100CD880C;
      v316 = *(v0 + 1896);
      v317 = *(v0 + 1232);

      sub_100CF5FBC(v317, v316);
      return;
    case 16:
      v322 = swift_task_alloc();
      *(v0 + 2496) = v322;
      *v322 = v0;
      v322[1] = sub_100CDBC44;
      v323 = *(v0 + 1896);
      v324 = *(v0 + 1264);
      v325 = *(v0 + 1144);

      sub_100CF6C9C(v324, v325, v323);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CD2EEC()
{
  v2 = *v1;
  *(*v1 + 2464) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CEBF30;
  }

  else
  {
    v4 = sub_100CD3018;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CD3018()
{
  v325 = v0;
  v317 = (v0 + 29);
  v316 = (v0 + 101);
  v1 = v0[308];
LABEL_2:
  v2 = v0[305];
  v3 = v0[220];
  v4 = v0[167];
  sub_1000D2A70(v0[271], v4, &qword_1016B0478, &unk_1013CDC10);
  v5 = v2(v4, 1, v3);
  v6 = v0[167];
  if (v5 == 1)
  {
    v7 = v0[246];
    v8 = v0[140];
    sub_10000B3A8(v6, &qword_1016B0478, &unk_1013CDC10);
    sub_100D11DC8(v8, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[246];
    if (!v11)
    {
      goto LABEL_67;
    }

    v13 = swift_slowAlloc();
    v324[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, v324);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = 9;
LABEL_5:
    v19 = sub_10125403C(v18);
    v21 = sub_1000136BC(v19, v20, v324);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "No key alignment available for %{public}s. No package created for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    v22 = v323;

    while (1)
    {
      v23 = v22[276];
LABEL_7:
      v24 = v22[275] + 1;
      if (v24 == v22[273])
      {
        break;
      }

      v22[276] = v23;
      v22[275] = v24;
      v22[274] = v1;
      v25 = v22[272];
      if (v24 >= *(v25 + 16))
      {
        __break(1u);
        return;
      }

      v26 = v22[256];
      v27 = v22[140];
      v28 = *(v25 + v24 + 32);
      *(v22 + 2509) = v28;
      sub_100D11DC8(v27, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v22[256];
      if (v31)
      {
        v33 = swift_slowAlloc();
        v324[0] = swift_slowAlloc();
        *v33 = 136446466;
        v34 = sub_100C71778();
        v35 = v23;
        v37 = v36;
        sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
        v38 = sub_1000136BC(v34, v37, v324);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2082;
        v39 = sub_10125403C(v28);
        v41 = sub_1000136BC(v39, v40, v324);

        *(v33 + 14) = v41;
        v23 = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Keys to upload: %{public}s. Creating package for %{public}s", v33, 0x16u);
        swift_arrayDestroy();
        v22 = v323;
      }

      else
      {

        sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      switch(v28)
      {
        case 1:
          v275 = *(v22[140] + *(v22[238] + 44));
          if (*(v275 + 16) && (v276 = sub_100771F0C(1), (v277 & 1) != 0))
          {
            v278 = v22[219];
            sub_100D11DC8(*(v275 + 56) + *(v22[215] + 72) * v276, v278, type metadata accessor for BookmarkMetaData);
            v279 = *(v278 + 8);
            sub_100018D00(v278, type metadata accessor for BookmarkMetaData);
          }

          else
          {
            v279 = 0;
          }

          v22[277] = v279;
          v302 = *(v22 + 626);
          v303 = v22[140];
          v304 = swift_task_alloc();
          v22[278] = v304;
          *v304 = v22;
          v304[1] = sub_100CBBD44;
          v305 = v22[213];

          sub_100CFC71C(v305, v303 + v302);
          return;
        case 4:
          v271 = swift_task_alloc();
          v22[291] = v271;
          *v271 = v22;
          v271[1] = sub_100CC4E24;
          v272 = v22[237];
          v273 = v22[176];
          v274 = v22[140];

          sub_100CF172C(v273, v274, v272, (v22 + 110));
          return;
        case 5:
          v242 = v22[221];
          v243 = v22[220];
          v244 = v22[172];
          v0 = v22;
          sub_1000D2A70(v22[271], v244, &qword_1016B0478, &unk_1013CDC10);
          v245 = *(v242 + 48);
          v22[293] = v245;
          v22[294] = (v242 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          LODWORD(v243) = v245(v244, 1, v243);
          sub_10000B3A8(v244, &qword_1016B0478, &unk_1013CDC10);
          if (v243 == 1)
          {
            v262 = swift_task_alloc();
            v22[295] = v262;
            *v262 = v22;
            v263 = sub_100CC7CAC;
            goto LABEL_87;
          }

          v246 = v22[293];
          v247 = v22[220];
          v248 = v22[171];
          sub_1000D2A70(v22[271], v248, &qword_1016B0478, &unk_1013CDC10);
          v249 = v246(v248, 1, v247);
          v250 = v22[171];
          if (v249 != 1)
          {
            sub_100D12974(v250, v22[224], type metadata accessor for KeyDropInterface.KeyAlignment);
            v286 = swift_task_alloc();
            v22[297] = v286;
            *v286 = v22;
            v286[1] = sub_100CCA6E8;
            v287 = v22[269];
            v288 = v22[268];
            v289 = v22[237];
            v290 = v22[224];
            v291 = v22[175];
            v292 = v22[140];
            v293 = 0;
LABEL_92:

            sub_100CF2904(v291, v292, v289, v290, v293, v288, v287);
            return;
          }

          v251 = v22[250];
          v252 = v22[140];
          sub_10000B3A8(v250, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.error.getter();
          v253 = os_log_type_enabled(v9, v10);
          v12 = v22[250];
          if (v253)
          {
            v13 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v13 = 136446466;
            v254 = sub_100C71778();
            v256 = v255;
            sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
            v257 = sub_1000136BC(v254, v256, v324);

            *(v13 + 4) = v257;
            *(v13 + 12) = 2082;
            v18 = 5;
            goto LABEL_5;
          }

          break;
        case 6:
          v226 = v22[221];
          v227 = v22[220];
          v228 = v22[170];
          v0 = v22;
          sub_1000D2A70(v22[271], v228, &qword_1016B0478, &unk_1013CDC10);
          v229 = *(v226 + 48);
          v22[299] = v229;
          v22[300] = (v226 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          LODWORD(v227) = v229(v228, 1, v227);
          sub_10000B3A8(v228, &qword_1016B0478, &unk_1013CDC10);
          if (v227 == 1)
          {
            v262 = swift_task_alloc();
            v22[301] = v262;
            *v262 = v22;
            v263 = sub_100CCD5CC;
LABEL_87:
            v262[1] = v263;
            v283 = v0[270];
            v284 = v0[141];
            v285 = v0[237];

            sub_100CF0FB4(v285, v283, v284);
            return;
          }

          v230 = v22[299];
          v231 = v22[220];
          v232 = v22[169];
          sub_1000D2A70(v22[271], v232, &qword_1016B0478, &unk_1013CDC10);
          v233 = v230(v232, 1, v231);
          v234 = v22[169];
          if (v233 != 1)
          {
            sub_100D12974(v234, v22[223], type metadata accessor for KeyDropInterface.KeyAlignment);
            v294 = swift_task_alloc();
            v22[303] = v294;
            *v294 = v22;
            v294[1] = sub_100CD0008;
            v287 = v22[269];
            v288 = v22[268];
            v289 = v22[237];
            v290 = v22[223];
            v291 = v22[174];
            v292 = v22[140];
            v293 = 1;
            goto LABEL_92;
          }

          v235 = v22[248];
          v236 = v22[140];
          sub_10000B3A8(v234, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v236, v235, type metadata accessor for SharingCircleKeyManager.Instruction);
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.error.getter();
          v237 = os_log_type_enabled(v9, v10);
          v12 = v22[248];
          if (v237)
          {
            v13 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v13 = 136446466;
            v238 = sub_100C71778();
            v240 = v239;
            sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
            v241 = sub_1000136BC(v238, v240, v324);

            *(v13 + 4) = v241;
            *(v13 + 12) = 2082;
            v18 = 6;
            goto LABEL_5;
          }

          break;
        case 8:
        case 10:
          v42 = v22[117];
          if (!*(v42 + 16))
          {
            goto LABEL_7;
          }

          v43 = sub_100771F0C(v28);
          if ((v44 & 1) == 0)
          {
            goto LABEL_7;
          }

          v318 = v23;
          v45 = v22[269];
          v46 = v22[268];
          v47 = *(v323 + 1680);
          v48 = (*(v42 + 56) + 16 * v43);
          v50 = *v48;
          v49 = v48[1];
          v51 = type metadata accessor for EncryptedData();
          (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
          sub_100017D5C(v50, v49);
          sub_100017D5C(v50, v49);
          v52 = v47;
          v22 = v323;
          sub_10125A120(1, v50, v49, v52, v317);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v53 = swift_allocObject();
          v54 = *(v317 + 32);
          v55 = *(v317 + 48);
          v56 = *v317;
          *(v53 + 48) = *(v317 + 16);
          *(v53 + 64) = v54;
          *(v53 + 80) = v55;
          *(v53 + 96) = *(v317 + 64);
          *(v53 + 16) = xmmword_101385D80;
          *(v53 + 32) = v56;
          sub_10002E98C(v46, v45);
          sub_1003914F8(v317, v323 + 736);
          v57 = sub_100D11764(v53, v46, v45);
          v58 = *(v323 + 2152);
          v59 = *(v323 + 2144);
          if (v1)
          {
            sub_100016590(v50, v49);
            sub_100391554(v317);
            sub_100006654(v59, v58);
            swift_setDeallocating();
            sub_100391554(v53 + 32);
            swift_deallocClassInstance();
            v197 = *(v323 + 1920);
            v198 = *(v323 + 1912);
            v199 = *(v323 + 1120);
            sub_100D11DC8(v199, *(v323 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v199, v197, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v199, v198, type metadata accessor for SharingCircleKeyManager.Instruction);
            swift_errorRetain();
            v200 = Logger.logObject.getter();
            v201 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v200, v201))
            {
              v312 = v201;
              v202 = *(v323 + 1928);
              v309 = *(v323 + 1920);
              v315 = *(v323 + 1912);
              v203 = *(v323 + 2509);
              v204 = swift_slowAlloc();
              v324[0] = swift_slowAlloc();
              *v204 = 136447747;
              v205 = sub_100C71778();
              v207 = v206;
              sub_100018D00(v202, type metadata accessor for SharingCircleKeyManager.Instruction);
              v208 = sub_1000136BC(v205, v207, v324);

              *(v204 + 4) = v208;
              *(v204 + 12) = 2082;
              v209 = sub_10125403C(v203);
              v211 = sub_1000136BC(v209, v210, v324);

              *(v204 + 14) = v211;
              *(v204 + 22) = 2160;
              *(v204 + 24) = 1752392040;
              *(v204 + 32) = 2081;
              sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v212 = dispatch thunk of CustomStringConvertible.description.getter();
              v214 = v213;
              sub_100018D00(v309, type metadata accessor for SharingCircleKeyManager.Instruction);
              v215 = sub_1000136BC(v212, v214, v324);

              *(v204 + 34) = v215;
              *(v204 + 42) = 2160;
              *(v204 + 44) = 1752392040;
              *(v204 + 52) = 2081;
              v22 = v323;
              v216 = dispatch thunk of CustomStringConvertible.description.getter();
              v218 = v217;
              sub_100018D00(v315, type metadata accessor for SharingCircleKeyManager.Instruction);
              v219 = sub_1000136BC(v216, v218, v324);

              *(v204 + 54) = v219;
              *(v204 + 62) = 2082;
              swift_getErrorValue();
              v220 = Error.localizedDescription.getter();
              v222 = sub_1000136BC(v220, v221, v324);

              *(v204 + 64) = v222;
              _os_log_impl(&_mh_execute_header, v200, v312, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v204, 0x48u);
              swift_arrayDestroy();
            }

            else
            {
              v223 = *(v323 + 1928);
              v224 = *(v323 + 1920);
              v225 = *(v323 + 1912);

              sub_100018D00(v225, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v224, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v223, type metadata accessor for SharingCircleKeyManager.Instruction);
            }

            v1 = 0;
            continue;
          }

          v60 = v57;
          v310 = v50;
          v61 = *(v323 + 1808);
          v62 = *(v323 + 1520);
          v63 = *(v323 + 1512);
          v64 = *(v323 + 1416);
          sub_100006654(v59, v58);
          swift_setDeallocating();
          sub_100391554(v53 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v61, &v62[*(v64 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v62 = v28;
          *&v62[*(v64 + 24)] = v60;
          sub_100D11DC8(v62, v63, type metadata accessor for KeyDropInterface.KeyPackage);
          v65 = v318;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_100A5BE40(0, v318[2] + 1, 1, v318);
          }

          v67 = v65[2];
          v66 = v65[3];
          v319 = v65;
          v313 = v49;
          if (v67 >= v66 >> 1)
          {
            v319 = sub_100A5BE40((v66 > 1), v67 + 1, 1, v65);
          }

          v68 = *(v323 + 1960);
          v69 = *(v323 + 1520);
          v70 = *(v323 + 1512);
          v71 = *(v323 + 1504);
          v72 = *(v323 + 1424);
          v73 = *(v323 + 1120);
          v319[2] = v67 + 1;
          sub_100D12974(v70, v319 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v67, type metadata accessor for KeyDropInterface.KeyPackage);
          v74 = v73;
          v22 = v323;
          sub_100D11DC8(v74, v68, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v69, v71, type metadata accessor for KeyDropInterface.KeyPackage);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = *(v323 + 1960);
          v79 = *(v323 + 1520);
          v80 = *(v323 + 1504);
          if (v77)
          {
            v81 = swift_slowAlloc();
            v324[0] = swift_slowAlloc();
            *v81 = 136446466;
            v82 = sub_100C71778();
            v84 = v83;
            sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
            v85 = sub_1000136BC(v82, v84, v324);

            *(v81 + 4) = v85;
            *(v81 + 12) = 2082;
            v86 = sub_101255410();
            v88 = v87;
            sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
            v89 = v86;
            v22 = v323;
            v90 = sub_1000136BC(v89, v88, v324);

            *(v81 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v75, v76, "Keys to upload: %{public}s,\nadded: %{public}s.", v81, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v317);
            sub_100016590(v310, v313);
          }

          else
          {

            sub_100391554(v317);
            sub_100016590(v310, v313);
            sub_100018D00(v80, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v78, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          sub_100018D00(v79, type metadata accessor for KeyDropInterface.KeyPackage);
          v1 = 0;
          v23 = v319;
          goto LABEL_7;
        case 9:
          v258 = v22[221];
          v259 = v22[220];
          v260 = v22[168];
          v0 = v22;
          sub_1000D2A70(v22[271], v260, &qword_1016B0478, &unk_1013CDC10);
          v261 = *(v258 + 48);
          v22[305] = v261;
          v22[306] = (v258 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          LODWORD(v259) = v261(v260, 1, v259);
          sub_10000B3A8(v260, &qword_1016B0478, &unk_1013CDC10);
          if (v259 != 1)
          {
            goto LABEL_2;
          }

          v262 = swift_task_alloc();
          v22[307] = v262;
          *v262 = v22;
          v263 = sub_100CD2EEC;
          goto LABEL_87;
        case 12:
          v91 = v22[228];
          v92 = v22[227];
          v93 = v22[146];
          sub_1000D2A70(v22[237] + *(v22[234] + 28), v93, &qword_1016980D0, &unk_10138F3B0);
          if ((*(v91 + 48))(v93, 1, v92) == 1)
          {
            v94 = v22[149];
            v95 = v22[148];
            v96 = v22[147];
            sub_10000B3A8(v22[146], &qword_1016980D0, &unk_10138F3B0);
            (*(v94 + 56))(v96, 1, 1, v95);
            goto LABEL_35;
          }

          v97 = v22[237];
          v98 = v22[234];
          v99 = v22[145];
          (v22[263])(v22[230], v22[146], v22[227]);
          sub_100D11DC8(v97 + *(v98 + 24), v99, type metadata accessor for StableIdentifier);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 2)
          {
            if (EnumCaseMultiPayload != 3)
            {
LABEL_30:
              v116 = v22[149];
              v117 = v22[148];
              v118 = v22[147];
              v119 = v22[145];
              (*(v22[228] + 8))(v22[230], v22[227]);
              sub_100018D00(v119, type metadata accessor for StableIdentifier);
              (*(v116 + 56))(v118, 1, 1, v117);
              goto LABEL_35;
            }

            v112 = v22[228];
            v113 = v22[227];
            v114 = v22[145];
            v115 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

            v105 = *(v114 + *(v115 + 96));
            (*(v112 + 8))(v114, v113);
          }

          else
          {
            if (EnumCaseMultiPayload < 2)
            {
              goto LABEL_30;
            }

            v101 = v22[228];
            v102 = v22[145];
            v103 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

            v104 = (v102 + *(v103 + 96));
            v105 = *v104;
            LOBYTE(v102) = v104[1];

            v106 = *(v101 + 8);
            if (v102)
            {
              v107 = v22[227];
              v320 = v23;
              v108 = v22[149];
              v109 = v22[148];
              v110 = v22[147];
              v111 = v22[145];
              v106(v22[230], v107);
              (*(v108 + 56))(v110, 1, 1, v109);
              v23 = v320;
              v106(v111, v107);
              goto LABEL_35;
            }

            v106(v22[145], v22[227]);
          }

          v120 = v22[149];
          v121 = v22[148];
          v122 = v22[147];
          (v22[263])(v122, v22[230], v22[227]);
          *(v122 + *(v121 + 20)) = v105;
          (*(v120 + 56))(v122, 0, 1, v121);
LABEL_35:
          v123 = v22[147];
          if ((*(v22[149] + 48))(v123, 1, v22[148]) == 1)
          {
            sub_10000B3A8(v123, &qword_1016B9B20, &qword_1013E3680);
            goto LABEL_7;
          }

          v124 = v22[238];
          v125 = v22[140];
          sub_100D12974(v123, v22[150], type metadata accessor for KeyDropBeaconGroupAttributes);
          v126 = *(v125 + *(v124 + 44));
          if (!*(v126 + 16))
          {
            goto LABEL_41;
          }

          v127 = sub_100771F0C(12);
          if ((v128 & 1) == 0)
          {
            goto LABEL_41;
          }

          v129 = v22;
          v130 = v22[221];
          v131 = v129[220];
          v132 = v129[217];
          v133 = v129[214];
          v134 = v129[165];
          sub_100D11DC8(*(v126 + 56) + *(v129[215] + 72) * v127, v132, type metadata accessor for BookmarkMetaData);
          sub_1000D2A70(v132 + *(v133 + 20), v134, &qword_1016B0478, &unk_1013CDC10);
          sub_100018D00(v132, type metadata accessor for BookmarkMetaData);
          if ((*(v130 + 48))(v134, 1, v131) == 1)
          {
            sub_10000B3A8(v129[165], &qword_1016B0478, &unk_1013CDC10);
            v22 = v129;
LABEL_41:
            v135 = v22[156];
            v136 = v22[155];
            v137 = v22[152];
            (*(v135 + 56))(v137, 1, 1, v136);
            static Date.distantPast.getter();
            if ((*(v135 + 48))(v137, 1, v136) != 1)
            {
              sub_10000B3A8(v22[152], &unk_101696900, &unk_10138B1E0);
            }
          }

          else
          {
            v138 = v129[165];
            v139 = v129[160];
            v140 = v129[156];
            v141 = v129[155];
            v142 = v129[152];
            (*(v140 + 16))(v142, v138 + *(v129[220] + 24), v141);
            sub_100018D00(v138, type metadata accessor for KeyDropInterface.KeyAlignment);
            (*(v140 + 56))(v142, 0, 1, v141);
            (*(v140 + 32))(v139, v142, v141);
            v22 = v129;
          }

          v143 = v22[237];
          v144 = v22[159];
          v145 = objc_autoreleasePoolPush();
          sub_100D088CC(v143, v144);
          if (v1)
          {

            objc_autoreleasePoolPop(v145);
            return;
          }

          v146 = v22[159];
          v147 = v22[156];
          v148 = v22[155];
          objc_autoreleasePoolPop(v145);
          sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v149 = dispatch thunk of static Comparable.< infix(_:_:)();
          v150 = *(v147 + 8);
          v150(v146, v148);
          if (v149)
          {
            v151 = v22[150];
            v150(v22[160], v22[155]);
            sub_100018D00(v151, type metadata accessor for KeyDropBeaconGroupAttributes);
            v1 = 0;
          }

          else
          {
            type metadata accessor for PropertyListEncoder();
            swift_allocObject();
            PropertyListEncoder.init()();
            sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
            v152 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
            v154 = v153;
            v314 = v150;
            v321 = v23;
            v155 = v22[269];
            v156 = v22[268];
            v157 = v22[210];
            v158 = v152;

            v159 = type metadata accessor for EncryptedData();
            (*(*(v159 - 8) + 56))(v157, 1, 1, v159);
            sub_100017D5C(v158, v154);
            sub_10125A120(1, v158, v154, v157, v316);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v160 = swift_allocObject();
            v161 = *(v316 + 32);
            v162 = *(v316 + 48);
            v163 = *v316;
            *(v160 + 48) = *(v316 + 16);
            *(v160 + 64) = v161;
            *(v160 + 80) = v162;
            *(v160 + 96) = *(v316 + 64);
            *(v160 + 16) = xmmword_101385D80;
            *(v160 + 32) = v163;
            sub_10002E98C(v156, v155);
            sub_1003914F8(v316, (v22 + 56));
            v164 = sub_100D11764(v160, v156, v155);
            v308 = v158;
            v311 = v154;
            v165 = v22[226];
            v166 = v22[184];
            v167 = v22[183];
            v168 = v22[177];
            v169 = v164;
            sub_100006654(v22[268], v22[269]);
            swift_setDeallocating();
            sub_100391554(v160 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v165, &v166[*(v168 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v166 = 12;
            *&v166[*(v168 + 24)] = v169;
            sub_100D11DC8(v166, v167, type metadata accessor for KeyDropInterface.KeyPackage);
            v170 = v321;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v170 = sub_100A5BE40(0, v321[2] + 1, 1, v321);
            }

            v172 = v170[2];
            v171 = v170[3];
            v322 = v170;
            if (v172 >= v171 >> 1)
            {
              v322 = sub_100A5BE40((v171 > 1), v172 + 1, 1, v170);
            }

            v173 = *(v323 + 1944);
            v174 = *(v323 + 1472);
            v175 = *(v323 + 1464);
            v176 = *(v323 + 1456);
            v177 = *(v323 + 1424);
            v178 = *(v323 + 1120);
            v322[2] = v172 + 1;
            sub_100D12974(v175, v322 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v172, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v178, v173, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v174, v176, type metadata accessor for KeyDropInterface.KeyPackage);
            v179 = Logger.logObject.getter();
            v180 = static os_log_type_t.default.getter();
            v181 = os_log_type_enabled(v179, v180);
            v182 = *(v323 + 1944);
            v183 = *(v323 + 1472);
            v184 = *(v323 + 1456);
            v185 = *(v323 + 1280);
            v186 = *(v323 + 1240);
            v187 = *(v323 + 1200);
            if (v181)
            {
              v188 = swift_slowAlloc();
              v324[0] = swift_slowAlloc();
              *v188 = 136446466;
              v306 = v183;
              v307 = v186;
              v189 = sub_100C71778();
              v191 = v190;
              sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
              v192 = sub_1000136BC(v189, v191, v324);

              *(v188 + 4) = v192;
              *(v188 + 12) = 2082;
              v193 = sub_101255410();
              v195 = v194;
              sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
              v196 = sub_1000136BC(v193, v195, v324);

              *(v188 + 14) = v196;
              _os_log_impl(&_mh_execute_header, v179, v180, "Keys to upload: %{public}s,\nadded: %{public}s.", v188, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v316);
              sub_100016590(v308, v311);
              sub_100018D00(v306, type metadata accessor for KeyDropInterface.KeyPackage);
              v314(v185, v307);
            }

            else
            {

              sub_100391554(v316);
              sub_100016590(v308, v311);
              sub_100018D00(v184, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
              v314(v185, v186);
            }

            sub_100018D00(v187, type metadata accessor for KeyDropBeaconGroupAttributes);
            v1 = 0;
            v23 = v322;
            v22 = v323;
          }

          goto LABEL_7;
        case 13:
          v280 = swift_task_alloc();
          v22[311] = v280;
          *v280 = v22;
          v280[1] = sub_100CD880C;
          v281 = v22[237];
          v282 = v22[154];

          sub_100CF5FBC(v282, v281);
          return;
        case 16:
          v267 = swift_task_alloc();
          v22[312] = v267;
          *v267 = v22;
          v267[1] = sub_100CDBC44;
          v268 = v22[237];
          v269 = v22[158];
          v270 = v22[143];

          sub_100CF6C9C(v269, v270, v268);
          return;
        default:
          goto LABEL_7;
      }

LABEL_67:
      v22 = v0;

      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v264 = v22[237];
    v265 = v22[226];
    sub_100006654(v22[268], v22[269]);
    sub_1001BAF34((v22 + 110));
    sub_100018D00(v265, type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_100018D00(v264, type metadata accessor for OwnedBeaconRecord);

    v266 = v22[1];

    v266(v23);
  }

  else
  {
    sub_100D12974(v6, v0[222], type metadata accessor for KeyDropInterface.KeyAlignment);
    v295 = swift_task_alloc();
    v0[309] = v295;
    *v295 = v0;
    v295[1] = sub_100CD5928;
    v296 = v0[269];
    v297 = v0[268];
    v298 = v0[237];
    v299 = v0[222];
    v300 = v0[173];
    v301 = v0[140];

    sub_100CF3F94(v300, v301, v298, v299, v297, v296);
  }
}

uint64_t sub_100CD5928()
{
  v2 = *v1;
  *(*v1 + 2480) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CEE764;
  }

  else
  {
    v4 = sub_100CD5A54;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CD5A54()
{
  v369 = v0;
  v1 = *(v0 + 1384);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 1552);
    v3 = *(v0 + 1544);
    sub_100D12974(v1, v2, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v2, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v366 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_100018D00(*(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v366 = *(v0 + 2208);
  while (1)
  {
    v52 = *(v0 + 2200) + 1;
    if (v52 == *(v0 + 2184))
    {
LABEL_17:

      v53 = *(v0 + 1896);
      v54 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v54, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v53, type metadata accessor for OwnedBeaconRecord);

      v55 = *(v0 + 8);

      v55(v366);
      return;
    }

    v56 = v0 + 232;
    v57 = v0 + 808;
    v58 = *(v0 + 2480);
    v363 = v0 + 232;
    v365 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v366;
    *(v0 + 2200) = v52;
    *(v0 + 2192) = v58;
    v59 = *(v0 + 2176);
    if (v52 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
LABEL_4:
    v6 = v366[2];
    v5 = v366[3];
    if (v6 >= v5 >> 1)
    {
      v366 = sub_100A5BE40((v5 > 1), v6 + 1, 1, v366);
    }

    v7 = *(v0 + 1976);
    v8 = *(v0 + 1552);
    v9 = *(v0 + 1544);
    v10 = *(v0 + 1536);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1424);
    v13 = *(v0 + 1120);
    v366[2] = v6 + 1;
    sub_100D12974(v9, v366 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v13, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v8, v10, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v8, v11, type metadata accessor for KeyDropInterface.KeyPackage);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1976);
    if (v16)
    {
      v364 = v15;
      v18 = *(v0 + 1536);
      v19 = *(v0 + 1528);
      v20 = *(v0 + 1416);
      v21 = swift_slowAlloc();
      *(v0 + 1016) = swift_slowAlloc();
      *v21 = 136446722;
      v22 = sub_100C71778();
      v24 = v23;
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      v25 = sub_1000136BC(v22, v24, (v0 + 1016));

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_101255410();
      v28 = v27;
      sub_100018D00(v18, type metadata accessor for KeyDropInterface.KeyPackage);
      v29 = sub_1000136BC(v26, v28, (v0 + 1016));

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = *(v19 + *(v20 + 24));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v0 + 1024);
        *(v0 + 1024) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v31, 0);
        v33 = *(v0 + 1024);
        v34 = (v30 + 32);
        v35 = *(v33 + 16);
        do
        {
          v37 = *v34;
          v34 += 9;
          v36 = v37;
          *v32 = v33;
          v38 = *(v33 + 24);
          if (v35 >= v38 >> 1)
          {
            sub_101123BF8((v38 > 1), v35 + 1, 1);
            v33 = *v32;
          }

          *(v33 + 16) = v35 + 1;
          *(v33 + 8 * v35++ + 32) = v36;
          --v31;
        }

        while (v31);
      }

      v45 = *(v0 + 1776);
      v46 = *(v0 + 1552);
      v47 = *(v0 + 1528);
      v48 = Array.description.getter();
      v50 = v49;

      sub_100018D00(v47, type metadata accessor for KeyDropInterface.KeyPackage);
      v51 = sub_1000136BC(v48, v50, (v0 + 1016));

      *(v21 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v14, v364, "Keys to upload: %{public}s,\nadded connectionKeyPackage: %{public}s,\nkey indexes: %{public}s.", v21, 0x20u);
      swift_arrayDestroy();

      sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
      v44 = type metadata accessor for KeyDropInterface.KeyAlignment;
      v43 = v45;
    }

    else
    {
      v39 = *(v0 + 1776);
      v40 = *(v0 + 1552);
      v41 = *(v0 + 1536);
      v42 = *(v0 + 1528);

      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v39, type metadata accessor for KeyDropInterface.KeyAlignment);
      v43 = v42;
      v44 = type metadata accessor for KeyDropInterface.KeyPackage;
    }

    sub_100018D00(v43, v44);
  }

  v60 = *(v0 + 2048);
  v61 = *(v0 + 1120);
  v62 = *(v59 + v52 + 32);
  *(v0 + 2509) = v62;
  sub_100D11DC8(v61, v60, type metadata accessor for SharingCircleKeyManager.Instruction);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 2048);
  if (v65)
  {
    v67 = swift_slowAlloc();
    v368[0] = swift_slowAlloc();
    *v67 = 136446466;
    v68 = sub_100C71778();
    v70 = v69;
    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    v71 = sub_1000136BC(v68, v70, v368);
    v56 = v0 + 232;

    *(v67 + 4) = v71;
    *(v67 + 12) = 2082;
    v72 = sub_10125403C(v62);
    v74 = sub_1000136BC(v72, v73, v368);

    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "Keys to upload: %{public}s. Creating package for %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    v57 = v0 + 808;
  }

  else
  {

    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v62)
  {
    case 1:
      v310 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v310 + 16) && (v311 = sub_100771F0C(1), (v312 & 1) != 0))
      {
        v313 = *(v0 + 1752);
        sub_100D11DC8(*(v310 + 56) + *(*(v0 + 1720) + 72) * v311, v313, type metadata accessor for BookmarkMetaData);
        v314 = *(v313 + 8);
        sub_100018D00(v313, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v314 = 0;
      }

      *(v0 + 2216) = v314;
      v347 = *(v0 + 2504);
      v348 = *(v0 + 1120);
      v349 = swift_task_alloc();
      *(v0 + 2224) = v349;
      *v349 = v0;
      v349[1] = sub_100CBBD44;
      v350 = *(v0 + 1704);

      sub_100CFC71C(v350, v348 + v347);
      return;
    case 4:
      v318 = swift_task_alloc();
      *(v0 + 2328) = v318;
      *v318 = v0;
      v318[1] = sub_100CC4E24;
      v319 = *(v0 + 1896);
      v320 = *(v0 + 1408);
      v321 = *(v0 + 1120);

      sub_100CF172C(v320, v321, v319, v0 + 880);
      return;
    case 5:
      v98 = *(v0 + 1768);
      v99 = *(v0 + 1760);
      v100 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v100, &qword_1016B0478, &unk_1013CDC10);
      v101 = *(v98 + 48);
      *(v0 + 2344) = v101;
      *(v0 + 2352) = (v98 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v99) = v101(v100, 1, v99);
      sub_10000B3A8(v100, &qword_1016B0478, &unk_1013CDC10);
      if (v99 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2360) = v326;
        *v326 = v0;
        v327 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v102 = *(v0 + 2344);
      v103 = *(v0 + 1760);
      v104 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v104, &qword_1016B0478, &unk_1013CDC10);
      v105 = v102(v104, 1, v103);
      v106 = *(v0 + 1368);
      if (v105 != 1)
      {
        sub_100D12974(v106, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v331 = swift_task_alloc();
        *(v0 + 2376) = v331;
        *v331 = v0;
        v331[1] = sub_100CCA6E8;
        v332 = *(v0 + 2152);
        v333 = *(v0 + 2144);
        v334 = *(v0 + 1896);
        v335 = *(v0 + 1792);
        v336 = *(v0 + 1400);
        v337 = *(v0 + 1120);
        v338 = 0;
        goto LABEL_111;
      }

      v107 = *(v0 + 2000);
      v108 = *(v0 + 1120);
      sub_10000B3A8(v106, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v108, v107, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 2000);
      if (!v111)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v114 = sub_100C71778();
      v116 = v115;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v117 = sub_1000136BC(v114, v116, v368);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2082;
      v118 = 5;
      goto LABEL_46;
    case 6:
      v119 = *(v0 + 1768);
      v120 = *(v0 + 1760);
      v121 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v121, &qword_1016B0478, &unk_1013CDC10);
      v122 = *(v119 + 48);
      *(v0 + 2392) = v122;
      *(v0 + 2400) = (v119 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v120) = v122(v121, 1, v120);
      sub_10000B3A8(v121, &qword_1016B0478, &unk_1013CDC10);
      if (v120 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2408) = v326;
        *v326 = v0;
        v327 = sub_100CCD5CC;
LABEL_106:
        v326[1] = v327;
        v328 = *(v0 + 2160);
        v329 = *(v0 + 1896);
        v330 = *(v0 + 1128);

        sub_100CF0FB4(v329, v328, v330);
        return;
      }

      v123 = *(v0 + 2392);
      v124 = *(v0 + 1760);
      v125 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v125, &qword_1016B0478, &unk_1013CDC10);
      v126 = v123(v125, 1, v124);
      v127 = *(v0 + 1352);
      if (v126 == 1)
      {
        v128 = *(v0 + 1984);
        v129 = *(v0 + 1120);
        sub_10000B3A8(v127, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v129, v128, type metadata accessor for SharingCircleKeyManager.Instruction);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        v130 = os_log_type_enabled(v109, v110);
        v112 = *(v0 + 1984);
        if (v130)
        {
          v113 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v113 = 136446466;
          v131 = sub_100C71778();
          v133 = v132;
          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
          v134 = sub_1000136BC(v131, v133, v368);

          *(v113 + 4) = v134;
          *(v113 + 12) = 2082;
          v118 = 6;
LABEL_46:
          v151 = sub_10125403C(v118);
          v153 = sub_1000136BC(v151, v152, v368);

          *(v113 + 14) = v153;
          v57 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v109, v110, "No key alignment available for %{public}s. No package created for %{public}s", v113, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v366 = *(v0 + 2208);
LABEL_22:
        v52 = *(v0 + 2200) + 1;
        if (v52 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v127, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v339 = swift_task_alloc();
      *(v0 + 2424) = v339;
      *v339 = v0;
      v339[1] = sub_100CD0008;
      v332 = *(v0 + 2152);
      v333 = *(v0 + 2144);
      v334 = *(v0 + 1896);
      v335 = *(v0 + 1784);
      v336 = *(v0 + 1392);
      v337 = *(v0 + 1120);
      v338 = 1;
LABEL_111:

      sub_100CF2904(v336, v337, v334, v335, v338, v333, v332);
      return;
    case 8:
    case 10:
      v75 = *(v0 + 936);
      if (!*(v75 + 16))
      {
        goto LABEL_22;
      }

      v76 = sub_100771F0C(v62);
      if ((v77 & 1) == 0)
      {
        goto LABEL_22;
      }

      v78 = *(v0 + 2152);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 1680);
      v81 = (*(v75 + 56) + 16 * v76);
      v83 = *v81;
      v82 = v81[1];
      v84 = type metadata accessor for EncryptedData();
      (*(*(v84 - 8) + 56))(v80, 1, 1, v84);
      sub_100017D5C(v83, v82);
      sub_100017D5C(v83, v82);
      sub_10125A120(1, v83, v82, v80, v56);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v85 = swift_allocObject();
      v86 = *(v56 + 32);
      v87 = *(v56 + 48);
      v88 = *v56;
      *(v85 + 48) = *(v56 + 16);
      *(v85 + 64) = v86;
      *(v85 + 80) = v87;
      *(v85 + 96) = *(v56 + 64);
      *(v85 + 16) = xmmword_101385D80;
      *(v85 + 32) = v88;
      sub_10002E98C(v79, v78);
      sub_1003914F8(v56, v0 + 736);
      v89 = sub_100D11764(v85, v79, v78);
      v90 = *(v0 + 2152);
      v91 = *(v0 + 2144);
      if (v58)
      {
        sub_100016590(v83, v82);
        sub_100391554(v56);
        sub_100006654(v91, v90);
        swift_setDeallocating();
        sub_100391554(v85 + 32);
        swift_deallocClassInstance();
        v57 = v0 + 808;
        v250 = *(v0 + 1920);
        v251 = *(v0 + 1912);
        v252 = *(v0 + 1120);
        sub_100D11DC8(v252, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v250, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v252, v251, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v253 = Logger.logObject.getter();
        v254 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v253, v254))
        {
          v367 = v254;
          v255 = *(v0 + 1928);
          v256 = *(v0 + 1920);
          v358 = *(v0 + 1912);
          v257 = *(v0 + 2509);
          v258 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v258 = 136447747;
          v259 = sub_100C71778();
          v261 = v260;
          sub_100018D00(v255, type metadata accessor for SharingCircleKeyManager.Instruction);
          v262 = sub_1000136BC(v259, v261, v368);

          *(v258 + 4) = v262;
          *(v258 + 12) = 2082;
          v263 = sub_10125403C(v257);
          v265 = sub_1000136BC(v263, v264, v368);

          *(v258 + 14) = v265;
          *(v258 + 22) = 2160;
          *(v258 + 24) = 1752392040;
          *(v258 + 32) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v266 = dispatch thunk of CustomStringConvertible.description.getter();
          v268 = v267;
          v269 = v256;
          v56 = v0 + 232;
          sub_100018D00(v269, type metadata accessor for SharingCircleKeyManager.Instruction);
          v270 = sub_1000136BC(v266, v268, v368);

          *(v258 + 34) = v270;
          *(v258 + 42) = 2160;
          *(v258 + 44) = 1752392040;
          *(v258 + 52) = 2081;
          v57 = v0 + 808;
          v271 = dispatch thunk of CustomStringConvertible.description.getter();
          v273 = v272;
          sub_100018D00(v358, type metadata accessor for SharingCircleKeyManager.Instruction);
          v274 = sub_1000136BC(v271, v273, v368);

          *(v258 + 54) = v274;
          *(v258 + 62) = 2082;
          swift_getErrorValue();
          v275 = Error.localizedDescription.getter();
          v277 = sub_1000136BC(v275, v276, v368);

          *(v258 + 64) = v277;
          _os_log_impl(&_mh_execute_header, v253, v367, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v258, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v278 = *(v0 + 1928);
          v279 = *(v0 + 1920);
          v280 = *(v0 + 1912);

          sub_100018D00(v280, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v279, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v278, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v58 = 0;
        goto LABEL_48;
      }

      v169 = v89;
      v170 = *(v0 + 1808);
      v171 = *(v0 + 1520);
      v356 = *(v0 + 1512);
      v360 = v82;
      v172 = *(v0 + 1416);
      sub_100006654(v91, v90);
      swift_setDeallocating();
      sub_100391554(v85 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v170, &v171[*(v172 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v171 = v62;
      *&v171[*(v172 + 24)] = v169;
      sub_100D11DC8(v171, v356, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
      }

      v174 = v366[2];
      v173 = v366[3];
      if (v174 >= v173 >> 1)
      {
        v366 = sub_100A5BE40((v173 > 1), v174 + 1, 1, v366);
      }

      v175 = *(v0 + 1960);
      v176 = *(v0 + 1520);
      v177 = *(v0 + 1512);
      v178 = *(v0 + 1504);
      v179 = *(v0 + 1424);
      v180 = *(v0 + 1120);
      v366[2] = v174 + 1;
      sub_100D12974(v177, v366 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v174, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v180, v175, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v176, v178, type metadata accessor for KeyDropInterface.KeyPackage);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.default.getter();
      v183 = os_log_type_enabled(v181, v182);
      v184 = *(v0 + 1960);
      v185 = *(v0 + 1520);
      v186 = *(v0 + 1504);
      if (v183)
      {
        v187 = swift_slowAlloc();
        v368[0] = swift_slowAlloc();
        *v187 = 136446466;
        v188 = sub_100C71778();
        v357 = v185;
        v190 = v189;
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v191 = sub_1000136BC(v188, v190, v368);

        *(v187 + 4) = v191;
        *(v187 + 12) = 2082;
        v192 = sub_101255410();
        v194 = v193;
        sub_100018D00(v186, type metadata accessor for KeyDropInterface.KeyPackage);
        v195 = sub_1000136BC(v192, v194, v368);

        *(v187 + 14) = v195;
        _os_log_impl(&_mh_execute_header, v181, v182, "Keys to upload: %{public}s,\nadded: %{public}s.", v187, 0x16u);
        swift_arrayDestroy();

        v56 = v0 + 232;
        sub_100391554(v363);
        sub_100016590(v83, v360);
        v196 = v357;
      }

      else
      {

        sub_100391554(v363);
        sub_100016590(v83, v360);
        v205 = v186;
        v56 = v0 + 232;
        sub_100018D00(v205, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v184, type metadata accessor for SharingCircleKeyManager.Instruction);
        v196 = v185;
      }

      sub_100018D00(v196, type metadata accessor for KeyDropInterface.KeyPackage);
      v58 = 0;
      v57 = v0 + 808;
      goto LABEL_22;
    case 9:
      v135 = *(v0 + 1768);
      v136 = *(v0 + 1760);
      v137 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v137, &qword_1016B0478, &unk_1013CDC10);
      v138 = *(v135 + 48);
      *(v0 + 2440) = v138;
      *(v0 + 2448) = (v135 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v136) = v138(v137, 1, v136);
      sub_10000B3A8(v137, &qword_1016B0478, &unk_1013CDC10);
      if (v136 == 1)
      {
        v326 = swift_task_alloc();
        *(v0 + 2456) = v326;
        *v326 = v0;
        v327 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v139 = *(v0 + 2440);
      v140 = *(v0 + 1760);
      v141 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v141, &qword_1016B0478, &unk_1013CDC10);
      v142 = v139(v141, 1, v140);
      v143 = *(v0 + 1336);
      if (v142 != 1)
      {
        sub_100D12974(v143, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v340 = swift_task_alloc();
        *(v0 + 2472) = v340;
        *v340 = v0;
        v340[1] = sub_100CD5928;
        v341 = *(v0 + 2152);
        v342 = *(v0 + 2144);
        v343 = *(v0 + 1896);
        v344 = *(v0 + 1776);
        v345 = *(v0 + 1384);
        v346 = *(v0 + 1120);

        sub_100CF3F94(v345, v346, v343, v344, v342, v341);
        return;
      }

      v144 = *(v0 + 1968);
      v145 = *(v0 + 1120);
      sub_10000B3A8(v143, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v145, v144, type metadata accessor for SharingCircleKeyManager.Instruction);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      v146 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 1968);
      if (!v146)
      {
        goto LABEL_47;
      }

      v113 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v113 = 136446466;
      v147 = sub_100C71778();
      v149 = v148;
      sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
      v150 = sub_1000136BC(v147, v149, v368);

      *(v113 + 4) = v150;
      *(v113 + 12) = 2082;
      v118 = 9;
      goto LABEL_46;
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
        goto LABEL_66;
      }

      v154 = *(v0 + 1896);
      v155 = *(v0 + 1872);
      v156 = *(v0 + 1160);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v154 + *(v155 + 24), v156, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v201 = *(v0 + 1192);
          v202 = *(v0 + 1184);
          v203 = *(v0 + 1176);
          v204 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v204, type metadata accessor for StableIdentifier);
          (*(v201 + 56))(v203, 1, 1, v202);
          goto LABEL_66;
        }

        v197 = *(v0 + 1824);
        v198 = *(v0 + 1816);
        v199 = *(v0 + 1160);
        v200 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v162 = *(v199 + *(v200 + 96));
        (*(v197 + 8))(v199, v198);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v158 = *(v0 + 1824);
        v159 = *(v0 + 1160);
        v160 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v161 = (v159 + *(v160 + 96));
        v162 = *v161;
        LOBYTE(v159) = v161[1];

        v163 = *(v158 + 8);
        if (v159)
        {
          v164 = *(v0 + 1816);
          v165 = *(v0 + 1192);
          v166 = *(v0 + 1184);
          v167 = *(v0 + 1176);
          v168 = *(v0 + 1160);
          v163(*(v0 + 1840), v164);
          (*(v165 + 56))(v167, 1, 1, v166);
          v163(v168, v164);
          v57 = v0 + 808;
          goto LABEL_66;
        }

        v163(*(v0 + 1160), *(v0 + 1816));
        v57 = v0 + 808;
      }

      v206 = *(v0 + 1192);
      v207 = *(v0 + 1184);
      v208 = *(v0 + 1176);
      (*(v0 + 2104))(v208, *(v0 + 1840), *(v0 + 1816));
      *(v208 + *(v207 + 20)) = v162;
      (*(v206 + 56))(v208, 0, 1, v207);
LABEL_66:
      v209 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v209, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v209, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v210 = *(v0 + 1904);
      v211 = *(v0 + 1120);
      sub_100D12974(v209, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v212 = *(v211 + *(v210 + 44));
      if (!*(v212 + 16))
      {
        goto LABEL_71;
      }

      v213 = sub_100771F0C(12);
      if ((v214 & 1) == 0)
      {
        goto LABEL_71;
      }

      v215 = *(v0 + 1768);
      v216 = *(v0 + 1760);
      v217 = *(v0 + 1736);
      v218 = *(v0 + 1712);
      v219 = *(v0 + 1320);
      sub_100D11DC8(*(v212 + 56) + *(*(v0 + 1720) + 72) * v213, v217, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v217 + *(v218 + 20), v219, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v217, type metadata accessor for BookmarkMetaData);
      if ((*(v215 + 48))(v219, 1, v216) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v57 = v0 + 808;
LABEL_71:
        v220 = *(v0 + 1248);
        v221 = *(v0 + 1240);
        v222 = *(v0 + 1216);
        (*(v220 + 56))(v222, 1, 1, v221);
        static Date.distantPast.getter();
        if ((*(v220 + 48))(v222, 1, v221) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v223 = *(v0 + 1320);
        v224 = *(v0 + 1280);
        v225 = *(v0 + 1248);
        v226 = *(v0 + 1240);
        v227 = *(v0 + 1216);
        (*(v225 + 16))(v227, v223 + *(*(v0 + 1760) + 24), v226);
        sub_100018D00(v223, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v225 + 56))(v227, 0, 1, v226);
        (*(v225 + 32))(v224, v227, v226);
        v57 = v0 + 808;
      }

      v228 = *(v0 + 1896);
      v229 = *(v0 + 1272);
      v230 = objc_autoreleasePoolPush();
      sub_100D088CC(v228, v229);
      if (v58)
      {

        objc_autoreleasePoolPop(v230);
        return;
      }

      v231 = *(v0 + 1272);
      v232 = *(v0 + 1248);
      v233 = *(v0 + 1240);
      objc_autoreleasePoolPop(v230);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v234 = dispatch thunk of static Comparable.< infix(_:_:)();
      v235 = *(v232 + 8);
      v235(v231, v233);
      if (v234)
      {
        v236 = *(v0 + 1200);
        v235(*(v0 + 1280), *(v0 + 1240));
        v237 = v236;
      }

      else
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v238 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v240 = v239;
        v361 = *(v0 + 2152);
        v241 = *(v0 + 2144);
        v242 = *(v0 + 1680);
        v243 = v238;

        v244 = type metadata accessor for EncryptedData();
        (*(*(v244 - 8) + 56))(v242, 1, 1, v244);
        sub_100017D5C(v243, v240);
        sub_10125A120(1, v243, v240, v242, v57);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v245 = swift_allocObject();
        v246 = *(v57 + 32);
        v247 = *(v57 + 48);
        v248 = *v57;
        *(v245 + 48) = *(v57 + 16);
        *(v245 + 64) = v246;
        *(v245 + 80) = v247;
        *(v245 + 96) = *(v57 + 64);
        *(v245 + 16) = xmmword_101385D80;
        *(v245 + 32) = v248;
        sub_10002E98C(v241, v361);
        sub_1003914F8(v57, v0 + 448);
        v249 = sub_100D11764(v245, v241, v361);
        v359 = v243;
        v362 = v240;
        v281 = *(v0 + 1808);
        v282 = *(v0 + 1472);
        v354 = *(v0 + 1464);
        v283 = *(v0 + 1416);
        v284 = v249;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v245 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v281, &v282[*(v283 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v282 = 12;
        *&v282[*(v283 + 24)] = v284;
        sub_100D11DC8(v282, v354, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v366 = sub_100A5BE40(0, v366[2] + 1, 1, v366);
        }

        v286 = v366[2];
        v285 = v366[3];
        if (v286 >= v285 >> 1)
        {
          v366 = sub_100A5BE40((v285 > 1), v286 + 1, 1, v366);
        }

        v287 = *(v0 + 1944);
        v288 = *(v0 + 1472);
        v289 = *(v0 + 1464);
        v290 = *(v0 + 1456);
        v291 = *(v0 + 1424);
        v292 = *(v0 + 1120);
        v366[2] = v286 + 1;
        sub_100D12974(v289, v366 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v286, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v292, v287, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v288, v290, type metadata accessor for KeyDropInterface.KeyPackage);
        v293 = Logger.logObject.getter();
        v294 = static os_log_type_t.default.getter();
        v295 = os_log_type_enabled(v293, v294);
        v296 = *(v0 + 1944);
        v355 = *(v0 + 1472);
        v297 = *(v0 + 1456);
        v298 = *(v0 + 1280);
        v299 = *(v0 + 1240);
        v300 = *(v0 + 1200);
        if (v295)
        {
          v351 = v294;
          v301 = swift_slowAlloc();
          v368[0] = swift_slowAlloc();
          *v301 = 136446466;
          v352 = v298;
          v353 = v299;
          v302 = sub_100C71778();
          v304 = v303;
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          v305 = sub_1000136BC(v302, v304, v368);

          *(v301 + 4) = v305;
          *(v301 + 12) = 2082;
          v306 = sub_101255410();
          v308 = v307;
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          v309 = sub_1000136BC(v306, v308, v368);

          *(v301 + 14) = v309;
          _os_log_impl(&_mh_execute_header, v293, v351, "Keys to upload: %{public}s,\nadded: %{public}s.", v301, 0x16u);
          swift_arrayDestroy();

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v352, v353);
        }

        else
        {

          v57 = v0 + 808;
          sub_100391554(v365);
          sub_100016590(v359, v362);
          sub_100018D00(v297, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v296, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v355, type metadata accessor for KeyDropInterface.KeyPackage);
          v235(v298, v299);
        }

        v237 = v300;
      }

      sub_100018D00(v237, type metadata accessor for KeyDropBeaconGroupAttributes);
      v58 = 0;
      v56 = v0 + 232;
      goto LABEL_22;
    case 13:
      v315 = swift_task_alloc();
      *(v0 + 2488) = v315;
      *v315 = v0;
      v315[1] = sub_100CD880C;
      v316 = *(v0 + 1896);
      v317 = *(v0 + 1232);

      sub_100CF5FBC(v317, v316);
      return;
    case 16:
      v322 = swift_task_alloc();
      *(v0 + 2496) = v322;
      *v322 = v0;
      v322[1] = sub_100CDBC44;
      v323 = *(v0 + 1896);
      v324 = *(v0 + 1264);
      v325 = *(v0 + 1144);

      sub_100CF6C9C(v324, v325, v323);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CD880C()
{
  v1 = *(*v0 + 1128);

  return _swift_task_switch(sub_100CD891C, v1, 0);
}

void sub_100CD891C()
{
  v408 = v1;
  v402 = (v1 + 29);
  v400 = (v1 + 101);
  v2 = v1[154];
  v3 = sub_1000BC4D4(&qword_1016B9B18, &unk_1013E3670);
  v405 = v1;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v4 = sub_10000B3A8(v2, &qword_1016B9B28, &unk_1013E3688);
LABEL_12:
    i = v1[276];
    v36 = v1[274];
    goto LABEL_127;
  }

  v6 = v1[238];
  v7 = v1[162];
  v8 = v1[156];
  v9 = v1[155];
  v10 = v1[140];
  v11 = v2 + *(v3 + 48);
  *(v1 + 65) = *v11;
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = *(v11 + 1);
  v1[73] = *(v11 + 8);
  *(v1 + 69) = v13;
  *(v1 + 71) = v12;
  *(v1 + 67) = v14;
  v15 = *(v8 + 32);
  v15(v7, v2, v9);
  v16 = *(v10 + *(v6 + 44));
  if (*(v16 + 16))
  {
    v17 = sub_100771F0C(13);
    if (v18)
    {
      v19 = v1[221];
      v20 = v1[220];
      v21 = v1[218];
      v22 = v1[214];
      v23 = v1[166];
      sub_100D11DC8(*(v16 + 56) + *(v1[215] + 72) * v17, v21, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v21 + *(v22 + 20), v23, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v21, type metadata accessor for BookmarkMetaData);
      if ((*(v19 + 48))(v23, 1, v20) != 1)
      {
        v27 = v1[166];
        v28 = v1[161];
        v29 = v1[156];
        v30 = v1[155];
        v31 = v1[153];
        (*(v29 + 16))(v31, v27 + *(v1[220] + 24), v30);
        sub_100018D00(v27, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v29 + 56))(v31, 0, 1, v30);
        v15(v28, v31, v30);
        goto LABEL_10;
      }

      sub_10000B3A8(v1[166], &qword_1016B0478, &unk_1013CDC10);
    }
  }

  v24 = v1[156];
  v25 = v1[155];
  v26 = v1[153];
  (*(v24 + 56))(v26, 1, 1, v25);
  static Date.distantPast.getter();
  if ((*(v24 + 48))(v26, 1, v25) != 1)
  {
    sub_10000B3A8(v1[153], &unk_101696900, &unk_10138B1E0);
  }

LABEL_10:
  sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v2 = v1[162];
    v32 = v1[161];
    v33 = v1[156];
    v34 = v1[155];
    sub_1002497F0((v1 + 65));
    v0 = *(v33 + 8);
    v0(v32, v34);
    v4 = (v0)(v2, v34);
    goto LABEL_12;
  }

  v37 = v1[274];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v38 = *(v1 + 71);
  *(v1 + 39) = *(v1 + 69);
  *(v1 + 40) = v38;
  v1[82] = v1[73];
  v39 = *(v1 + 67);
  *(v1 + 37) = *(v1 + 65);
  *(v1 + 38) = v39;
  sub_100D12B68();
  v40 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v37)
  {
    v42 = v1[162];
    v43 = v1[161];
    v44 = v1[156];
    v45 = v1[155];

    v46 = *(v44 + 8);
    v46(v43, v45);
    v46(v42, v45);
    sub_1002497F0((v1 + 65));
    goto LABEL_123;
  }

  v47 = v40;
  v48 = v41;
  v49 = v1[269];
  v50 = v1[268];
  v51 = v1[210];

  sub_1002497F0((v1 + 65));
  v52 = type metadata accessor for EncryptedData();
  (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
  sub_100017D5C(v47, v48);
  sub_10125A120(1, v47, v48, v51, v1 + 20);
  sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
  v53 = swift_allocObject();
  v54 = *(v1 + 12);
  v55 = *(v1 + 13);
  v56 = *(v1 + 10);
  *(v53 + 48) = *(v1 + 11);
  *(v53 + 64) = v54;
  *(v53 + 80) = v55;
  *(v53 + 96) = v1[28];
  *(v53 + 16) = xmmword_101385D80;
  *(v53 + 32) = v56;
  sub_10002E98C(v50, v49);
  sub_1003914F8((v1 + 20), (v1 + 83));
  v57 = sub_100D11764(v53, v50, v49);
  v58 = v1[226];
  v59 = v1[187];
  v60 = v1[186];
  v61 = v1[177];
  sub_100006654(v1[268], v1[269]);
  swift_setDeallocating();
  sub_100391554(v53 + 32);
  swift_deallocClassInstance();
  sub_100D11DC8(v58, &v59[*(v61 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v59 = 13;
  *&v59[*(v61 + 24)] = v57;
  sub_100D11DC8(v59, v60, type metadata accessor for KeyDropInterface.KeyPackage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v1[276];
  v406 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v63 = sub_100A5BE40(0, v63[2] + 1, 1, v63);
  }

  v65 = v63[2];
  v64 = v63[3];
  v395 = v63;
  if (v65 >= v64 >> 1)
  {
    v395 = sub_100A5BE40((v64 > 1), v65 + 1, 1, v63);
  }

  v66 = v1[244];
  v67 = v1[187];
  v68 = v1[186];
  v69 = v1[185];
  v70 = v1[178];
  v71 = v1[140];
  v395[2] = v65 + 1;
  sub_100D12974(v68, v395 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v65, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v71, v66, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v67, v69, type metadata accessor for KeyDropInterface.KeyPackage);
  v72 = Logger.logObject.getter();
  v401 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v72, v401);
  v74 = v1[244];
  v403 = v1[187];
  v75 = v1[185];
  v76 = v1[162];
  v77 = v1[161];
  v78 = v1[156];
  v79 = v1[155];
  if (v73)
  {
    v397 = v1[155];
    v80 = swift_slowAlloc();
    v407[0] = swift_slowAlloc();
    *v80 = 136446466;
    v391 = v77;
    v393 = v76;
    v81 = sub_100C71778();
    v83 = v82;
    sub_100018D00(v74, type metadata accessor for SharingCircleKeyManager.Instruction);
    v84 = sub_1000136BC(v81, v83, v407);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    v85 = sub_101255410();
    v87 = v86;
    sub_100018D00(v75, type metadata accessor for KeyDropInterface.KeyPackage);
    v88 = sub_1000136BC(v85, v87, v407);

    *(v80 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v72, v401, "Keys to upload: %{public}s,\nadded: %{public}s.", v80, 0x16u);
    swift_arrayDestroy();

    sub_100391554((v1 + 20));
    sub_100016590(v47, v48);
    sub_100018D00(v403, type metadata accessor for KeyDropInterface.KeyPackage);
    v2 = *(v78 + 8);
    v0 = v397;
    (v2)(v391, v397);
    v89 = v393;
    v90 = v397;
  }

  else
  {

    sub_100391554((v1 + 20));
    sub_100016590(v47, v48);
    v0 = type metadata accessor for KeyDropInterface.KeyPackage;
    sub_100018D00(v75, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v74, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v403, type metadata accessor for KeyDropInterface.KeyPackage);
    v2 = *(v78 + 8);
    (v2)(v77, v79);
    v89 = v76;
    v90 = v79;
  }

  v4 = (v2)(v89, v90);
  v36 = 0;
  for (i = v395; ; i = v1[276])
  {
LABEL_127:
    v91 = v1[275] + 1;
    if (v91 == v1[273])
    {
LABEL_129:

      v386 = v1[237];
      v387 = v1[226];
      sub_100006654(v1[268], v1[269]);
      sub_1001BAF34((v1 + 110));
      sub_100018D00(v387, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v386, type metadata accessor for OwnedBeaconRecord);

      v388 = v1[1];

      v388(i);
      return;
    }

    v109 = &qword_1016980D0;
LABEL_25:
    v1[276] = i;
    v1[275] = v91;
    v1[274] = v36;
    v92 = v1[272];
    if (v91 < *(v92 + 16))
    {
      break;
    }

    __break(1u);
    v351 = v1[160];
    v352 = v1[155];
    v353 = v1[150];
    v354 = v109;
    v355 = v4;
    v356 = v0;
    v357 = v5;
    sub_100016590(v356, v354);
    sub_100391554(v400);
    v1 = v405;
    sub_100006654(v355, v357);
    swift_setDeallocating();
    sub_100391554(v2 + 32);
    swift_deallocClassInstance();
    v406(v351, v352);
    sub_100018D00(v353, type metadata accessor for KeyDropBeaconGroupAttributes);
LABEL_123:
    v358 = v1[240];
    v359 = v1[239];
    v360 = v1[140];
    sub_100D11DC8(v360, v1[241], type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v360, v358, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v360, v359, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v361 = Logger.logObject.getter();
    v362 = static os_log_type_t.error.getter();

    v399 = v362;
    v396 = v361;
    if (os_log_type_enabled(v361, v362))
    {
      v363 = v1[241];
      v364 = v1[240];
      v404 = v1[239];
      v365 = *(v1 + 2509);
      v366 = swift_slowAlloc();
      v406 = swift_slowAlloc();
      v407[0] = v406;
      *v366 = 136447747;
      v367 = sub_100C71778();
      v369 = v368;
      sub_100018D00(v363, type metadata accessor for SharingCircleKeyManager.Instruction);
      v370 = sub_1000136BC(v367, v369, v407);

      *(v366 + 4) = v370;
      *(v366 + 12) = 2082;
      v371 = sub_10125403C(v365);
      v373 = sub_1000136BC(v371, v372, v407);

      *(v366 + 14) = v373;
      *(v366 + 22) = 2160;
      *(v366 + 24) = 1752392040;
      *(v366 + 32) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v374 = dispatch thunk of CustomStringConvertible.description.getter();
      v376 = v375;
      sub_100018D00(v364, type metadata accessor for SharingCircleKeyManager.Instruction);
      v377 = sub_1000136BC(v374, v376, v407);

      *(v366 + 34) = v377;
      *(v366 + 42) = 2160;
      *(v366 + 44) = 1752392040;
      *(v366 + 52) = 2081;
      v1 = v405;
      v378 = dispatch thunk of CustomStringConvertible.description.getter();
      v380 = v379;
      sub_100018D00(v404, type metadata accessor for SharingCircleKeyManager.Instruction);
      v381 = sub_1000136BC(v378, v380, v407);

      *(v366 + 54) = v381;
      *(v366 + 62) = 2082;
      swift_getErrorValue();
      v382 = Error.localizedDescription.getter();
      v384 = sub_1000136BC(v382, v383, v407);

      *(v366 + 64) = v384;
      v2 = v396;
      _os_log_impl(&_mh_execute_header, v396, v399, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v366, 0x48u);
      v0 = v406;
      swift_arrayDestroy();
    }

    else
    {
      v2 = v1[241];
      v0 = v1[240];
      v385 = v1[239];

      sub_100018D00(v385, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v0, type metadata accessor for SharingCircleKeyManager.Instruction);
      v4 = sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v36 = 0;
  }

  v93 = v109;
  v94 = v1[256];
  v95 = v1[140];
  v96 = *(v92 + v91 + 32);
  *(v1 + 2509) = v96;
  sub_100D11DC8(v95, v94, type metadata accessor for SharingCircleKeyManager.Instruction);
  v0 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v0, v97);
  v2 = v1[256];
  if (v98)
  {
    v99 = swift_slowAlloc();
    v407[0] = swift_slowAlloc();
    *v99 = 136446466;
    v100 = i;
    v101 = sub_100C71778();
    v103 = v102;
    sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
    v406 = v36;
    v104 = sub_1000136BC(v101, v103, v407);

    *(v99 + 4) = v104;
    *(v99 + 12) = 2082;
    v105 = v96;
    v106 = sub_10125403C(v96);
    v2 = v107;
    v108 = sub_1000136BC(v106, v107, v407);

    *(v99 + 14) = v108;
    i = v100;
    _os_log_impl(&_mh_execute_header, v0, v97, "Keys to upload: %{public}s. Creating package for %{public}s", v99, 0x16u);
    swift_arrayDestroy();
    v109 = &qword_1016980D0;
    v1 = v405;
  }

  else
  {
    v105 = v96;

    v4 = sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
    v109 = v93;
  }

  switch(v105)
  {
    case 1:
      v311 = *(v1[140] + *(v1[238] + 44));
      if (*(v311 + 16) && (v312 = sub_100771F0C(1), (v313 & 1) != 0))
      {
        v314 = v1[219];
        sub_100D11DC8(*(v311 + 56) + *(v1[215] + 72) * v312, v314, type metadata accessor for BookmarkMetaData);
        v315 = *(v314 + 8);
        sub_100018D00(v314, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v315 = 0;
      }

      v1[277] = v315;
      v345 = *(v1 + 626);
      v346 = v1[140];
      v347 = swift_task_alloc();
      v1[278] = v347;
      *v347 = v1;
      v347[1] = sub_100CBBD44;
      v348 = v1[213];

      sub_100CFC71C(v348, v346 + v345);
      return;
    case 4:
      v316 = swift_task_alloc();
      v1[291] = v316;
      *v316 = v1;
      v316[1] = sub_100CC4E24;
      v317 = v1[237];
      v318 = v1[176];
      v319 = v1[140];

      sub_100CF172C(v318, v319, v317, (v1 + 110));
      return;
    case 5:
      v160 = v1[221];
      v161 = v1[220];
      v162 = v1[172];
      sub_1000D2A70(v1[271], v162, &qword_1016B0478, &unk_1013CDC10);
      v163 = *(v160 + 48);
      v1[293] = v163;
      v1[294] = (v160 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v161) = v163(v162, 1, v161);
      sub_10000B3A8(v162, &qword_1016B0478, &unk_1013CDC10);
      if (v161 == 1)
      {
        v324 = swift_task_alloc();
        v1[295] = v324;
        *v324 = v1;
        v325 = sub_100CC7CAC;
        goto LABEL_103;
      }

      v164 = v1[293];
      v165 = v1[220];
      v166 = v1[171];
      sub_1000D2A70(v1[271], v166, &qword_1016B0478, &unk_1013CDC10);
      v167 = v164(v166, 1, v165);
      v168 = v1[171];
      if (v167 != 1)
      {
        sub_100D12974(v168, v1[224], type metadata accessor for KeyDropInterface.KeyAlignment);
        v329 = swift_task_alloc();
        v1[297] = v329;
        *v329 = v1;
        v329[1] = sub_100CCA6E8;
        v330 = v1[269];
        v331 = v1[268];
        v332 = v1[237];
        v333 = v1[224];
        v334 = v1[175];
        v335 = v1[140];
        v336 = 0;
        goto LABEL_111;
      }

      v169 = v1[250];
      v170 = v1[140];
      sub_10000B3A8(v168, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v170, v169, type metadata accessor for SharingCircleKeyManager.Instruction);
      v0 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();
      v172 = os_log_type_enabled(v0, v171);
      v2 = v1[250];
      if (!v172)
      {
        goto LABEL_54;
      }

      v173 = swift_slowAlloc();
      v407[0] = swift_slowAlloc();
      *v173 = 136446466;
      v174 = sub_100C71778();
      v176 = v175;
      sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
      v177 = sub_1000136BC(v174, v176, v407);
      v109 = &qword_1016980D0;
      v1 = v405;

      *(v173 + 4) = v177;
      *(v173 + 12) = 2082;
      v178 = 5;
      goto LABEL_53;
    case 6:
      v179 = v1[221];
      v180 = v1[220];
      v181 = v1[170];
      sub_1000D2A70(v1[271], v181, &qword_1016B0478, &unk_1013CDC10);
      v182 = *(v179 + 48);
      v1[299] = v182;
      v1[300] = (v179 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v180) = v182(v181, 1, v180);
      sub_10000B3A8(v181, &qword_1016B0478, &unk_1013CDC10);
      if (v180 == 1)
      {
        v324 = swift_task_alloc();
        v1[301] = v324;
        *v324 = v1;
        v325 = sub_100CCD5CC;
LABEL_103:
        v324[1] = v325;
        v326 = v1[270];
        v327 = v1[237];
        v328 = v1[141];

        sub_100CF0FB4(v327, v326, v328);
        return;
      }

      v183 = v1[299];
      v184 = v1[220];
      v185 = v1[169];
      sub_1000D2A70(v1[271], v185, &qword_1016B0478, &unk_1013CDC10);
      v186 = v183(v185, 1, v184);
      v187 = v1[169];
      if (v186 == 1)
      {
        v188 = v1[248];
        v189 = v1[140];
        sub_10000B3A8(v187, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v189, v188, type metadata accessor for SharingCircleKeyManager.Instruction);
        v0 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();
        v190 = os_log_type_enabled(v0, v171);
        v2 = v1[248];
        if (v190)
        {
          v173 = swift_slowAlloc();
          v407[0] = swift_slowAlloc();
          *v173 = 136446466;
          v191 = sub_100C71778();
          v193 = v192;
          sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
          v194 = sub_1000136BC(v191, v193, v407);
          v109 = &qword_1016980D0;
          v1 = v405;

          *(v173 + 4) = v194;
          *(v173 + 12) = 2082;
          v178 = 6;
LABEL_53:
          v211 = sub_10125403C(v178);
          v2 = v212;
          v213 = sub_1000136BC(v211, v212, v407);

          *(v173 + 14) = v213;
          _os_log_impl(&_mh_execute_header, v0, v171, "No key alignment available for %{public}s. No package created for %{public}s", v173, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_54:

          v4 = sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        i = v1[276];
LABEL_24:
        v91 = v1[275] + 1;
        if (v91 == v1[273])
        {
          goto LABEL_129;
        }

        goto LABEL_25;
      }

      sub_100D12974(v187, v1[223], type metadata accessor for KeyDropInterface.KeyAlignment);
      v344 = swift_task_alloc();
      v1[303] = v344;
      *v344 = v1;
      v344[1] = sub_100CD0008;
      v330 = v1[269];
      v331 = v1[268];
      v332 = v1[237];
      v333 = v1[223];
      v334 = v1[174];
      v335 = v1[140];
      v336 = 1;
LABEL_111:

      sub_100CF2904(v334, v335, v332, v333, v336, v331, v330);
      return;
    case 8:
    case 10:
      v2 = v1[117];
      if (!*(v2 + 2))
      {
        goto LABEL_24;
      }

      v110 = v105;
      v4 = sub_100771F0C(v105);
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      v111 = i;
      v112 = v1[269];
      v113 = v405[268];
      v114 = v405[210];
      v115 = (*(v2 + 7) + 16 * v4);
      v116 = *v115;
      v117 = v115[1];
      v118 = type metadata accessor for EncryptedData();
      (*(*(v118 - 8) + 56))(v114, 1, 1, v118);
      sub_100017D5C(v116, v117);
      sub_100017D5C(v116, v117);
      v406 = v116;
      sub_10125A120(1, v116, v117, v114, v402);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v119 = swift_allocObject();
      v120 = *(v402 + 32);
      v121 = *(v402 + 48);
      v122 = *v402;
      *(v119 + 48) = *(v402 + 16);
      *(v119 + 64) = v120;
      *(v119 + 80) = v121;
      *(v119 + 96) = *(v402 + 64);
      *(v119 + 16) = xmmword_101385D80;
      *(v119 + 32) = v122;
      sub_10002E98C(v113, v112);
      sub_1003914F8(v402, (v405 + 92));
      v1 = v405;
      v123 = sub_100D11764(v119, v113, v112);
      if (v36)
      {
        v349 = v405[268];
        v350 = v405[269];
        sub_100016590(v406, v117);
        sub_100391554(v402);
        sub_100006654(v349, v350);
        swift_setDeallocating();
        sub_100391554(v119 + 32);
        swift_deallocClassInstance();
        goto LABEL_123;
      }

      v124 = v405[226];
      v125 = v405[190];
      v126 = v405[189];
      v127 = v405[177];
      sub_100006654(v405[268], v405[269]);
      swift_setDeallocating();
      sub_100391554(v119 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v124, &v125[*(v127 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v125 = v110;
      *&v125[*(v127 + 24)] = v123;
      sub_100D11DC8(v125, v126, type metadata accessor for KeyDropInterface.KeyPackage);
      v128 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_100A5BE40(0, v111[2] + 1, 1, v111);
      }

      v130 = v128[2];
      v129 = v128[3];
      v398 = v117;
      if (v130 >= v129 >> 1)
      {
        v131 = sub_100A5BE40((v129 > 1), v130 + 1, 1, v128);
      }

      else
      {
        v131 = v128;
      }

      v132 = v405[245];
      v133 = v405[190];
      v134 = v405[189];
      v135 = v405[188];
      v136 = v405[178];
      v137 = v405[140];
      v138 = v131;
      v131[2] = v130 + 1;
      sub_100D12974(v134, v131 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v130, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v137, v132, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v133, v135, type metadata accessor for KeyDropInterface.KeyPackage);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      v141 = os_log_type_enabled(v139, v140);
      v2 = v405[245];
      v142 = v405[190];
      v143 = v405[188];
      if (v141)
      {
        v144 = swift_slowAlloc();
        v407[0] = swift_slowAlloc();
        *v144 = 136446466;
        v145 = v142;
        v146 = sub_100C71778();
        v148 = v147;
        sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
        v149 = sub_1000136BC(v146, v148, v407);

        *(v144 + 4) = v149;
        *(v144 + 12) = 2082;
        v150 = sub_101255410();
        v152 = v151;
        v2 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v143, type metadata accessor for KeyDropInterface.KeyPackage);
        v0 = sub_1000136BC(v150, v152, v407);

        *(v144 + 14) = v0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Keys to upload: %{public}s,\nadded: %{public}s.", v144, 0x16u);
        swift_arrayDestroy();
        i = v138;

        sub_100391554(v402);
        sub_100016590(v406, v398);
        v153 = v145;
        v154 = type metadata accessor for KeyDropInterface.KeyPackage;
        goto LABEL_84;
      }

      sub_100391554(v402);
      sub_100016590(v406, v398);
      v0 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v143, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
      v4 = sub_100018D00(v142, type metadata accessor for KeyDropInterface.KeyPackage);
      v36 = 0;
      v1 = v405;
      v109 = &qword_1016980D0;
      i = v138;
      goto LABEL_24;
    case 9:
      v195 = v1[221];
      v196 = v1[220];
      v197 = v1[168];
      sub_1000D2A70(v1[271], v197, &qword_1016B0478, &unk_1013CDC10);
      v198 = *(v195 + 48);
      v1[305] = v198;
      v1[306] = (v195 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v196) = v198(v197, 1, v196);
      sub_10000B3A8(v197, &qword_1016B0478, &unk_1013CDC10);
      if (v196 == 1)
      {
        v324 = swift_task_alloc();
        v1[307] = v324;
        *v324 = v1;
        v325 = sub_100CD2EEC;
        goto LABEL_103;
      }

      v199 = v1[305];
      v200 = v1[220];
      v201 = v1[167];
      sub_1000D2A70(v1[271], v201, &qword_1016B0478, &unk_1013CDC10);
      v202 = v199(v201, 1, v200);
      v203 = v1[167];
      if (v202 != 1)
      {
        sub_100D12974(v203, v1[222], type metadata accessor for KeyDropInterface.KeyAlignment);
        v337 = swift_task_alloc();
        v1[309] = v337;
        *v337 = v1;
        v337[1] = sub_100CD5928;
        v338 = v1[269];
        v339 = v1[268];
        v340 = v1[237];
        v341 = v1[222];
        v342 = v1[173];
        v343 = v1[140];

        sub_100CF3F94(v342, v343, v340, v341, v339, v338);
        return;
      }

      v204 = v1[246];
      v205 = v1[140];
      sub_10000B3A8(v203, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v205, v204, type metadata accessor for SharingCircleKeyManager.Instruction);
      v0 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();
      v206 = os_log_type_enabled(v0, v171);
      v2 = v1[246];
      if (!v206)
      {
        goto LABEL_54;
      }

      v173 = swift_slowAlloc();
      v407[0] = swift_slowAlloc();
      *v173 = 136446466;
      v207 = sub_100C71778();
      v209 = v208;
      sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
      v210 = sub_1000136BC(v207, v209, v407);
      v109 = &qword_1016980D0;
      v1 = v405;

      *(v173 + 4) = v210;
      *(v173 + 12) = 2082;
      v178 = 9;
      goto LABEL_53;
    case 12:
      v155 = v1[228];
      v156 = v1[227];
      v157 = v1[146];
      sub_1000D2A70(v1[237] + *(v1[234] + 28), v157, v109, &unk_10138F3B0);
      if ((*(v155 + 48))(v157, 1, v156) == 1)
      {
        v158 = v1[149];
        v159 = v1[148];
        v0 = v1[147];
        sub_10000B3A8(v1[146], v109, &unk_10138F3B0);
        (*(v158 + 56))(v0, 1, 1, v159);
        goto LABEL_67;
      }

      v214 = v36;
      v215 = i;
      v216 = v1[237];
      v217 = v1[234];
      v218 = v1[145];
      (v1[263])(v1[230], v1[146], v1[227]);
      sub_100D11DC8(v216 + *(v217 + 24), v218, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_63:
          v234 = v1[149];
          v235 = v1[148];
          v0 = v1[147];
          v236 = v1[145];
          (*(v1[228] + 8))(v1[230], v1[227]);
          sub_100018D00(v236, type metadata accessor for StableIdentifier);
          (*(v234 + 56))(v0, 1, 1, v235);
          goto LABEL_66;
        }

        v230 = v1[228];
        v231 = v1[227];
        v232 = v1[145];
        v233 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v224 = *(v232 + *(v233 + 96));
        (*(v230 + 8))(v232, v231);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_63;
        }

        v220 = v1[228];
        v221 = v1[145];
        v222 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v223 = (v221 + *(v222 + 96));
        v224 = *v223;
        LOBYTE(v221) = v223[1];

        v225 = *(v220 + 8);
        if (v221)
        {
          v226 = v1[227];
          v227 = v405[149];
          v0 = v405[148];
          v228 = v405[147];
          v229 = v405[145];
          v225(v1[230], v226);
          (*(v227 + 56))(v228, 1, 1, v0);
          v109 = &qword_1016980D0;
          v1 = v405;
          v225(v229, v226);
          goto LABEL_66;
        }

        v225(v1[145], v1[227]);
      }

      v237 = v1[149];
      v238 = v1[148];
      v0 = v1[147];
      (v1[263])(v0, v1[230], v1[227]);
      *(v0 + *(v238 + 20)) = v224;
      (*(v237 + 56))(v0, 0, 1, v238);
LABEL_66:
      i = v215;
      v36 = v214;
LABEL_67:
      v2 = v1[147];
      if ((*(v1[149] + 48))(v2, 1, v1[148]) == 1)
      {
        v4 = sub_10000B3A8(v2, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_24;
      }

      v239 = i;
      v240 = v1[238];
      v241 = v1[140];
      sub_100D12974(v2, v1[150], type metadata accessor for KeyDropBeaconGroupAttributes);
      v242 = *(v241 + *(v240 + 44));
      if (!*(v242 + 16))
      {
        goto LABEL_72;
      }

      v243 = sub_100771F0C(12);
      if ((v244 & 1) == 0)
      {
        goto LABEL_72;
      }

      v245 = v1[221];
      v246 = v1[220];
      v247 = v1[217];
      v248 = v1[214];
      v249 = v1[165];
      sub_100D11DC8(*(v242 + 56) + *(v1[215] + 72) * v243, v247, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v247 + *(v248 + 20), v249, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v247, type metadata accessor for BookmarkMetaData);
      if ((*(v245 + 48))(v249, 1, v246) == 1)
      {
        sub_10000B3A8(v1[165], &qword_1016B0478, &unk_1013CDC10);
LABEL_72:
        v250 = v1[156];
        v251 = v1[155];
        v252 = v1[152];
        (*(v250 + 56))(v252, 1, 1, v251);
        static Date.distantPast.getter();
        if ((*(v250 + 48))(v252, 1, v251) != 1)
        {
          sub_10000B3A8(v1[152], &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v253 = v1[165];
        v254 = v1[160];
        v255 = v1[156];
        v256 = v1[155];
        v257 = v1[152];
        (*(v255 + 16))(v257, v253 + *(v1[220] + 24), v256);
        sub_100018D00(v253, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v255 + 56))(v257, 0, 1, v256);
        (*(v255 + 32))(v254, v257, v256);
      }

      v258 = v1[237];
      v259 = v1[159];
      v260 = objc_autoreleasePoolPush();
      sub_100D088CC(v258, v259);
      if (v36)
      {

        objc_autoreleasePoolPop(v260);
        return;
      }

      v261 = v1[159];
      v262 = v1[156];
      v263 = v1[155];
      objc_autoreleasePoolPop(v260);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v264 = dispatch thunk of static Comparable.< infix(_:_:)();
      v0 = *(v262 + 8);
      v0(v261, v263);
      if (v264)
      {
        v2 = v1[150];
        v0(v1[160], v1[155]);
        v4 = sub_100018D00(v2, type metadata accessor for KeyDropBeaconGroupAttributes);
        v36 = 0;
        i = v239;
      }

      else
      {
        v406 = v0;
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v266 = v265;
        v267 = v1[269];
        v268 = v1[268];
        v269 = v1[210];

        v270 = type metadata accessor for EncryptedData();
        (*(*(v270 - 8) + 56))(v269, 1, 1, v270);
        sub_100017D5C(v0, v266);
        sub_10125A120(1, v0, v266, v269, v400);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v271 = swift_allocObject();
        v272 = *(v400 + 32);
        v273 = *(v400 + 48);
        v274 = *v400;
        *(v271 + 48) = *(v400 + 16);
        *(v271 + 64) = v272;
        *(v271 + 80) = v273;
        *(v271 + 96) = *(v400 + 64);
        *(v271 + 16) = xmmword_101385D80;
        *(v271 + 32) = v274;
        sub_10002E98C(v268, v267);
        sub_1003914F8(v400, (v1 + 56));
        v275 = sub_100D11764(v271, v268, v267);
        v276 = v1[226];
        v277 = v1[184];
        v278 = v1[183];
        v279 = v1[177];
        sub_100006654(v1[268], v1[269]);
        swift_setDeallocating();
        sub_100391554(v271 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v276, &v277[*(v279 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v277 = 12;
        *&v277[*(v279 + 24)] = v275;
        sub_100D11DC8(v277, v278, type metadata accessor for KeyDropInterface.KeyPackage);
        v280 = v239;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v280 = sub_100A5BE40(0, v239[2] + 1, 1, v239);
        }

        v282 = v280[2];
        v281 = v280[3];
        v394 = v266;
        if (v282 >= v281 >> 1)
        {
          v283 = sub_100A5BE40((v281 > 1), v282 + 1, 1, v280);
        }

        else
        {
          v283 = v280;
        }

        v284 = v1[243];
        v285 = v1[184];
        v286 = v1[183];
        v287 = v1[182];
        v288 = v1[178];
        v289 = v1[140];
        v290 = v283;
        v283[2] = v282 + 1;
        sub_100D12974(v286, v283 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v282, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v289, v284, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v285, v287, type metadata accessor for KeyDropInterface.KeyPackage);
        v291 = Logger.logObject.getter();
        v292 = static os_log_type_t.default.getter();
        v293 = os_log_type_enabled(v291, v292);
        v2 = v1[243];
        v294 = v1[184];
        v295 = v1[182];
        v296 = v1[160];
        v297 = v1[155];
        v298 = v1[150];
        if (v293)
        {
          v392 = v296;
          v299 = swift_slowAlloc();
          v407[0] = swift_slowAlloc();
          *v299 = 136446466;
          v389 = v294;
          v390 = v297;
          v300 = sub_100C71778();
          v302 = v301;
          sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
          v303 = sub_1000136BC(v300, v302, v407);

          *(v299 + 4) = v303;
          *(v299 + 12) = 2082;
          v304 = sub_101255410();
          v306 = v305;
          v2 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v295, type metadata accessor for KeyDropInterface.KeyPackage);
          v307 = sub_1000136BC(v304, v306, v407);

          *(v299 + 14) = v307;
          _os_log_impl(&_mh_execute_header, v291, v292, "Keys to upload: %{public}s,\nadded: %{public}s.", v299, 0x16u);
          swift_arrayDestroy();
          i = v290;

          sub_100391554(v400);
          sub_100016590(v0, v394);
          sub_100018D00(v389, type metadata accessor for KeyDropInterface.KeyPackage);
          v406(v392, v390);
          v154 = type metadata accessor for KeyDropBeaconGroupAttributes;
          v153 = v298;
LABEL_84:
          v4 = sub_100018D00(v153, v154);
          v36 = 0;
          v1 = v405;
          v109 = &qword_1016980D0;
        }

        else
        {

          sub_100391554(v400);
          sub_100016590(v0, v394);
          v0 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v295, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v294, type metadata accessor for KeyDropInterface.KeyPackage);
          v406(v296, v297);
          v4 = sub_100018D00(v298, type metadata accessor for KeyDropBeaconGroupAttributes);
          v36 = 0;
          v1 = v405;
          v109 = &qword_1016980D0;
          i = v290;
        }
      }

      goto LABEL_24;
    case 13:
      v308 = swift_task_alloc();
      v1[311] = v308;
      *v308 = v1;
      v308[1] = sub_100CD880C;
      v309 = v1[237];
      v310 = v1[154];

      sub_100CF5FBC(v310, v309);
      return;
    case 16:
      v320 = swift_task_alloc();
      v1[312] = v320;
      *v320 = v1;
      v320[1] = sub_100CDBC44;
      v321 = v1[237];
      v322 = v1[158];
      v323 = v1[143];

      sub_100CF6C9C(v322, v323, v321);
      return;
    default:
      goto LABEL_24;
  }
}

uint64_t sub_100CDBC44()
{
  v1 = *(*v0 + 1128);

  return _swift_task_switch(sub_100CDBD54, v1, 0);
}

void sub_100CDBD54()
{
  v394 = v0;
  v1 = *(v0[140] + *(v0[238] + 44));
  if (!*(v1 + 16) || (v2 = sub_100771F0C(16), (v3 & 1) == 0))
  {
LABEL_5:
    v9 = v0[156];
    v10 = v0[155];
    v11 = v0[151];
    (*(v9 + 56))(v11, 1, 1, v10);
    static Date.distantPast.getter();
    if ((*(v9 + 48))(v11, 1, v10) != 1)
    {
      sub_10000B3A8(v0[151], &unk_101696900, &unk_10138B1E0);
    }

    goto LABEL_8;
  }

  v4 = v0[221];
  v5 = v0[220];
  v6 = v0[216];
  v7 = v0[214];
  v8 = v0[164];
  sub_100D11DC8(*(v1 + 56) + *(v0[215] + 72) * v2, v6, type metadata accessor for BookmarkMetaData);
  sub_1000D2A70(v6 + *(v7 + 20), v8, &qword_1016B0478, &unk_1013CDC10);
  sub_100018D00(v6, type metadata accessor for BookmarkMetaData);
  if ((*(v4 + 48))(v8, 1, v5) == 1)
  {
    sub_10000B3A8(v0[164], &qword_1016B0478, &unk_1013CDC10);
    goto LABEL_5;
  }

  v12 = v0[164];
  v13 = v0[157];
  v14 = v0[156];
  v15 = v0[155];
  v16 = v0[151];
  (*(v14 + 16))(v16, v12 + *(v0[220] + 24), v15);
  sub_100018D00(v12, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v14 + 56))(v16, 0, 1, v15);
  (*(v14 + 32))(v13, v16, v15);
LABEL_8:
  v384 = (v0 + 29);
  v382 = (v0 + 101);
  v17 = *(v0 + 2508);
  sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v387 = v0;
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0 || (v17 & 1) != 0 || *(v0[276] + 16))
  {
    v18 = v0[274];
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100D13BF8(&qword_1016B9B38, type metadata accessor for KeyDropLostItemDates, &unk_1013945A0);
    v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v21 = v0;
    if (v18)
    {
      v22 = v0[158];
      v23 = v0[157];
      v24 = v0[156];
      v25 = v0[155];
      v26 = v0[143];

      v27 = *(v24 + 8);
      v27(v23, v25);
      sub_100018D00(v26, type metadata accessor for KeyDropLostItemDates);
      v27(v22, v25);
      goto LABEL_14;
    }

    v28 = v19;
    v29 = v20;
    v30 = v21[269];
    v31 = v21[268];
    v32 = v21[210];

    v33 = type metadata accessor for EncryptedData();
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    sub_100017D5C(v28, v29);
    sub_10125A120(1, v28, v29, v32, v21 + 2);
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v34 = swift_allocObject();
    v35 = *(v21 + 3);
    v36 = *(v21 + 4);
    v37 = *(v21 + 1);
    *(v34 + 48) = *(v21 + 2);
    *(v34 + 64) = v35;
    *(v34 + 80) = v36;
    *(v34 + 96) = v21[10];
    *(v34 + 16) = xmmword_101385D80;
    *(v34 + 32) = v37;
    sub_10002E98C(v31, v30);
    sub_1003914F8((v21 + 2), (v21 + 47));
    v292 = sub_100D11764(v34, v31, v30);
    v293 = v21[269];
    v294 = v21[268];
    v295 = v21[226];
    v296 = v21[181];
    v297 = v387[180];
    v298 = v387[177];
    sub_100006654(v294, v293);
    swift_setDeallocating();
    sub_100391554(v34 + 32);
    swift_deallocClassInstance();
    sub_100D11DC8(v295, &v296[*(v298 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    *v296 = 16;
    *&v296[*(v298 + 24)] = v292;
    sub_100D11DC8(v296, v297, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v300 = v387[276];
    v386 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v300 = sub_100A5BE40(0, v300[2] + 1, 1, v300);
    }

    v302 = v300[2];
    v301 = v300[3];
    v383 = v28;
    if (v302 >= v301 >> 1)
    {
      v300 = sub_100A5BE40((v301 > 1), v302 + 1, 1, v300);
    }

    v303 = v387[242];
    v304 = v387[181];
    v305 = v387[180];
    v306 = v387[179];
    v307 = v387[178];
    v308 = v387[140];
    v300[2] = v302 + 1;
    v392 = v300;
    sub_100D12974(v305, v300 + ((*(v307 + 80) + 32) & ~*(v307 + 80)) + *(v307 + 72) * v302, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v308, v303, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v304, v306, type metadata accessor for KeyDropInterface.KeyPackage);
    v67 = Logger.logObject.getter();
    v309 = static os_log_type_t.default.getter();
    v310 = os_log_type_enabled(v67, v309);
    v311 = v387[242];
    v381 = v387[181];
    v312 = v387[179];
    v313 = v387[158];
    v314 = v387[157];
    v315 = v387[156];
    v316 = v387[155];
    v317 = v387[143];
    if (v310)
    {
      v318 = swift_slowAlloc();
      v393[0] = swift_slowAlloc();
      *v318 = 136446466;
      v378 = v314;
      v380 = v317;
      v319 = sub_100C71778();
      v321 = v320;
      sub_100018D00(v311, type metadata accessor for SharingCircleKeyManager.Instruction);
      v322 = sub_1000136BC(v319, v321, v393);

      *(v318 + 4) = v322;
      *(v318 + 12) = 2082;
      v323 = sub_101255410();
      v325 = v324;
      sub_100018D00(v312, type metadata accessor for KeyDropInterface.KeyPackage);
      v326 = sub_1000136BC(v323, v325, v393);

      *(v318 + 14) = v326;
      _os_log_impl(&_mh_execute_header, v67, v309, "Keys to upload: %{public}s,\nadded: %{public}s.", v318, 0x16u);
      swift_arrayDestroy();

      v0 = v387;

      sub_100391554((v387 + 2));
      sub_100016590(v383, v386);
      sub_100018D00(v381, type metadata accessor for KeyDropInterface.KeyPackage);
      v66 = *(v315 + 8);
      (v66)(v378, v316);
      sub_100018D00(v380, type metadata accessor for KeyDropLostItemDates);
      v68 = (v66)(v313, v316);
      v71 = 0;
      v72 = v392;
    }

    else
    {

      sub_100391554((v387 + 2));
      sub_100016590(v383, v386);
      v67 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v312, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v311, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v381, type metadata accessor for KeyDropInterface.KeyPackage);
      v66 = *(v315 + 8);
      (v66)(v314, v316);
      sub_100018D00(v317, type metadata accessor for KeyDropLostItemDates);
      v68 = (v66)(v313, v316);
      v71 = 0;
      v72 = v392;
      v0 = v387;
    }
  }

  else
  {
    v66 = v0[158];
    v67 = v0[155];
    v290 = v0[143];
    v291 = *(v0[156] + 8);
    v291(v0[157], v67);
    sub_100018D00(v290, type metadata accessor for KeyDropLostItemDates);
    v68 = v291(v66, v67);
    v72 = v0[276];
    v71 = v0[274];
  }

  while (1)
  {
    v73 = v0[275] + 1;
    if (v73 == v0[273])
    {
LABEL_83:

      v287 = v0[237];
      v288 = v0[226];
      sub_100006654(v0[268], v0[269]);
      sub_1001BAF34((v0 + 110));
      sub_100018D00(v288, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v287, type metadata accessor for OwnedBeaconRecord);

      v289 = v0[1];

      v289(v72);
      return;
    }

    v74 = &qword_1016980D0;
LABEL_23:
    v0[276] = v72;
    v0[275] = v73;
    v0[274] = v71;
    v75 = v0[272];
    if (v73 < *(v75 + 16))
    {
      break;
    }

    __break(1u);
    v370 = v0[160];
    v371 = v0[155];
    v372 = v0[150];
    v373 = v68;
    v374 = v67;
    v375 = v69;
    sub_100016590(v374, v378);
    sub_100391554(v382);
    v0 = v387;
    sub_100006654(v373, v375);
    swift_setDeallocating();
    sub_100391554(v66 + 32);
    swift_deallocClassInstance();
    v381(v370, v371);
    sub_100018D00(v372, type metadata accessor for KeyDropBeaconGroupAttributes);
LABEL_14:
    v38 = v0[240];
    v39 = v0[239];
    v40 = v0[140];
    sub_100D11DC8(v40, v0[241], type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v40, v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v40, v39, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    LODWORD(v381) = v42;
    v379 = v41;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[241];
      v44 = v0;
      v45 = v0[240];
      v385 = v44[239];
      v46 = *(v44 + 2509);
      v47 = swift_slowAlloc();
      v388 = swift_slowAlloc();
      v393[0] = v388;
      *v47 = 136447747;
      v48 = sub_100C71778();
      v50 = v49;
      sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
      v51 = sub_1000136BC(v48, v50, v393);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = sub_10125403C(v46);
      v54 = sub_1000136BC(v52, v53, v393);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2160;
      *(v47 + 24) = 1752392040;
      *(v47 + 32) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
      v58 = sub_1000136BC(v55, v57, v393);

      *(v47 + 34) = v58;
      *(v47 + 42) = 2160;
      *(v47 + 44) = 1752392040;
      *(v47 + 52) = 2081;
      v0 = v387;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_100018D00(v385, type metadata accessor for SharingCircleKeyManager.Instruction);
      v62 = sub_1000136BC(v59, v61, v393);

      *(v47 + 54) = v62;
      *(v47 + 62) = 2082;
      swift_getErrorValue();
      v63 = Error.localizedDescription.getter();
      v65 = sub_1000136BC(v63, v64, v393);

      *(v47 + 64) = v65;
      v66 = v379;
      _os_log_impl(&_mh_execute_header, v379, v381, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v47, 0x48u);
      v67 = v388;
      swift_arrayDestroy();
    }

    else
    {
      v66 = v0[241];
      v67 = v0[240];
      v70 = v0[239];

      sub_100018D00(v70, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v67, type metadata accessor for SharingCircleKeyManager.Instruction);
      v68 = sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v71 = 0;
    v72 = v0[276];
  }

  v76 = v0[256];
  v77 = v0[140];
  v78 = *(v75 + v73 + 32);
  *(v0 + 2509) = v78;
  sub_100D11DC8(v77, v76, type metadata accessor for SharingCircleKeyManager.Instruction);
  v67 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v67, v79);
  v66 = v0[256];
  if (v80)
  {
    v81 = swift_slowAlloc();
    v393[0] = swift_slowAlloc();
    *v81 = 136446466;
    v82 = v72;
    v83 = sub_100C71778();
    v85 = v84;
    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    v86 = v83;
    v87 = &qword_1016980D0;
    v88 = sub_1000136BC(v86, v85, v393);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2082;
    v89 = v78;
    v90 = sub_10125403C(v78);
    v66 = v91;
    v92 = sub_1000136BC(v90, v91, v393);

    *(v81 + 14) = v92;
    _os_log_impl(&_mh_execute_header, v67, v79, "Keys to upload: %{public}s. Creating package for %{public}s", v81, 0x16u);
    swift_arrayDestroy();
    v93 = v387;
  }

  else
  {
    v93 = v0;
    v82 = v72;
    v87 = v74;
    v89 = v78;

    v68 = sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v94 = v89;
  v95 = v89;
  v74 = v87;
  v72 = v82;
  v0 = v93;
  switch(v95)
  {
    case 1:
      v330 = *(v93[140] + *(v93[238] + 44));
      if (*(v330 + 16) && (v331 = sub_100771F0C(1), (v332 & 1) != 0))
      {
        v333 = v93[219];
        sub_100D11DC8(*(v330 + 56) + *(v93[215] + 72) * v331, v333, type metadata accessor for BookmarkMetaData);
        v334 = *(v333 + 8);
        sub_100018D00(v333, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v334 = 0;
      }

      v93[277] = v334;
      v364 = *(v93 + 626);
      v365 = v93[140];
      v366 = swift_task_alloc();
      v93[278] = v366;
      *v366 = v93;
      v366[1] = sub_100CBBD44;
      v367 = v93[213];

      sub_100CFC71C(v367, v365 + v364);
      return;
    case 4:
      v335 = swift_task_alloc();
      v93[291] = v335;
      *v335 = v93;
      v335[1] = sub_100CC4E24;
      v336 = v93[237];
      v337 = v93[176];
      v338 = v93[140];

      sub_100CF172C(v337, v338, v336, (v93 + 110));
      return;
    case 5:
      v142 = v93[221];
      v143 = v93[220];
      v144 = v93[172];
      sub_1000D2A70(v93[271], v144, &qword_1016B0478, &unk_1013CDC10);
      v145 = *(v142 + 48);
      v93[293] = v145;
      v93[294] = (v142 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v143) = v145(v144, 1, v143);
      sub_10000B3A8(v144, &qword_1016B0478, &unk_1013CDC10);
      if (v143 == 1)
      {
        v343 = swift_task_alloc();
        v93[295] = v343;
        *v343 = v93;
        v344 = sub_100CC7CAC;
        goto LABEL_109;
      }

      v146 = v93[293];
      v147 = v0[220];
      v148 = v0[171];
      sub_1000D2A70(v0[271], v148, &qword_1016B0478, &unk_1013CDC10);
      v149 = v146(v148, 1, v147);
      v150 = v0[171];
      if (v149 != 1)
      {
        sub_100D12974(v150, v0[224], type metadata accessor for KeyDropInterface.KeyAlignment);
        v348 = swift_task_alloc();
        v0[297] = v348;
        *v348 = v0;
        v348[1] = sub_100CCA6E8;
        v349 = v0[269];
        v350 = v0[268];
        v351 = v0[237];
        v352 = v0[224];
        v353 = v0[175];
        v354 = v0[140];
        v355 = 0;
        goto LABEL_117;
      }

      v151 = v0[250];
      v152 = v0[140];
      sub_10000B3A8(v150, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v152, v151, type metadata accessor for SharingCircleKeyManager.Instruction);
      v67 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      v154 = os_log_type_enabled(v67, v153);
      v66 = v0[250];
      if (!v154)
      {
        goto LABEL_20;
      }

      v155 = swift_slowAlloc();
      v393[0] = swift_slowAlloc();
      *v155 = 136446466;
      v156 = sub_100C71778();
      v158 = v157;
      sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
      v159 = sub_1000136BC(v156, v158, v393);
      v74 = &qword_1016980D0;
      v0 = v387;

      *(v155 + 4) = v159;
      *(v155 + 12) = 2082;
      v160 = 5;
      goto LABEL_51;
    case 6:
      v161 = v93[221];
      v162 = v93[220];
      v163 = v93[170];
      sub_1000D2A70(v93[271], v163, &qword_1016B0478, &unk_1013CDC10);
      v164 = *(v161 + 48);
      v93[299] = v164;
      v93[300] = (v161 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v162) = v164(v163, 1, v162);
      sub_10000B3A8(v163, &qword_1016B0478, &unk_1013CDC10);
      if (v162 == 1)
      {
        v343 = swift_task_alloc();
        v93[301] = v343;
        *v343 = v93;
        v344 = sub_100CCD5CC;
LABEL_109:
        v343[1] = v344;
        v345 = v93[270];
        v346 = v93[141];
        v347 = v93[237];

        sub_100CF0FB4(v347, v345, v346);
        return;
      }

      v165 = v93[299];
      v166 = v0[220];
      v167 = v0[169];
      sub_1000D2A70(v0[271], v167, &qword_1016B0478, &unk_1013CDC10);
      v168 = v165(v167, 1, v166);
      v169 = v0[169];
      if (v168 == 1)
      {
        v170 = v0[248];
        v171 = v0[140];
        sub_10000B3A8(v169, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v171, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
        v67 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();
        v172 = os_log_type_enabled(v67, v153);
        v66 = v0[248];
        if (v172)
        {
          v155 = swift_slowAlloc();
          v393[0] = swift_slowAlloc();
          *v155 = 136446466;
          v173 = sub_100C71778();
          v175 = v174;
          sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
          v176 = sub_1000136BC(v173, v175, v393);
          v74 = &qword_1016980D0;
          v0 = v387;

          *(v155 + 4) = v176;
          *(v155 + 12) = 2082;
          v160 = 6;
LABEL_51:
          v193 = sub_10125403C(v160);
          v66 = v194;
          v195 = sub_1000136BC(v193, v194, v393);

          *(v155 + 14) = v195;
          _os_log_impl(&_mh_execute_header, v67, v153, "No key alignment available for %{public}s. No package created for %{public}s", v155, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_20:

          v68 = sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v72 = v0[276];
LABEL_22:
        v73 = v0[275] + 1;
        if (v73 == v0[273])
        {
          goto LABEL_83;
        }

        goto LABEL_23;
      }

      sub_100D12974(v169, v0[223], type metadata accessor for KeyDropInterface.KeyAlignment);
      v363 = swift_task_alloc();
      v0[303] = v363;
      *v363 = v0;
      v363[1] = sub_100CD0008;
      v349 = v0[269];
      v350 = v0[268];
      v351 = v0[237];
      v352 = v0[223];
      v353 = v0[174];
      v354 = v0[140];
      v355 = 1;
LABEL_117:

      sub_100CF2904(v353, v354, v351, v352, v355, v350, v349);
      return;
    case 8:
    case 10:
      v66 = v93[117];
      if (!*(v66 + 2))
      {
        goto LABEL_22;
      }

      v68 = sub_100771F0C(v94);
      if ((v69 & 1) == 0)
      {
        goto LABEL_22;
      }

      v389 = v72;
      v96 = v93[269];
      v97 = v93;
      v98 = v93[268];
      v99 = v93[210];
      v100 = (*(v66 + 7) + 16 * v68);
      v102 = *v100;
      v101 = v100[1];
      v103 = type metadata accessor for EncryptedData();
      (*(*(v103 - 8) + 56))(v99, 1, 1, v103);
      sub_100017D5C(v102, v101);
      sub_100017D5C(v102, v101);
      sub_10125A120(1, v102, v101, v99, v384);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v104 = swift_allocObject();
      v105 = *(v384 + 32);
      v106 = *(v384 + 48);
      v107 = *v384;
      *(v104 + 48) = *(v384 + 16);
      *(v104 + 64) = v105;
      *(v104 + 80) = v106;
      *(v104 + 96) = *(v384 + 64);
      *(v104 + 16) = xmmword_101385D80;
      *(v104 + 32) = v107;
      sub_10002E98C(v98, v96);
      sub_1003914F8(v384, (v97 + 92));
      v108 = v98;
      v0 = v97;
      v109 = sub_100D11764(v104, v108, v96);
      if (v71)
      {
        v368 = v97[268];
        v369 = v97[269];
        sub_100016590(v102, v101);
        sub_100391554(v384);
        sub_100006654(v368, v369);
        swift_setDeallocating();
        sub_100391554(v104 + 32);
        swift_deallocClassInstance();
        goto LABEL_14;
      }

      v381 = v101;
      v110 = v97[226];
      v111 = v97[190];
      v112 = v97[189];
      v113 = v97[177];
      sub_100006654(v97[268], v97[269]);
      swift_setDeallocating();
      sub_100391554(v104 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v110, &v111[*(v113 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v111 = v94;
      *&v111[*(v113 + 24)] = v109;
      sub_100D11DC8(v111, v112, type metadata accessor for KeyDropInterface.KeyPackage);
      v114 = v389;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_100A5BE40(0, v389[2] + 1, 1, v389);
      }

      v116 = v114[2];
      v115 = v114[3];
      v117 = v102;
      if (v116 >= v115 >> 1)
      {
        v114 = sub_100A5BE40((v115 > 1), v116 + 1, 1, v114);
      }

      v118 = v97[245];
      v119 = v97[190];
      v120 = v97[189];
      v121 = v97[188];
      v122 = v97[178];
      v123 = v387[140];
      v114[2] = v116 + 1;
      v390 = v114;
      sub_100D12974(v120, v114 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v116, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v123, v118, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v119, v121, type metadata accessor for KeyDropInterface.KeyPackage);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      v126 = os_log_type_enabled(v124, v125);
      v66 = v387[245];
      v127 = v387[190];
      v128 = v387[188];
      if (v126)
      {
        v129 = swift_slowAlloc();
        v393[0] = swift_slowAlloc();
        *v129 = 136446466;
        v130 = sub_100C71778();
        v132 = v131;
        sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
        v133 = sub_1000136BC(v130, v132, v393);

        *(v129 + 4) = v133;
        *(v129 + 12) = 2082;
        v134 = sub_101255410();
        v136 = v135;
        v66 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v128, type metadata accessor for KeyDropInterface.KeyPackage);
        v67 = sub_1000136BC(v134, v136, v393);

        *(v129 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v124, v125, "Keys to upload: %{public}s,\nadded: %{public}s.", v129, 0x16u);
        swift_arrayDestroy();

        v0 = v387;

        sub_100391554(v384);
        sub_100016590(v117, v381);
        v68 = sub_100018D00(v127, type metadata accessor for KeyDropInterface.KeyPackage);
        v71 = 0;
        v72 = v390;
        goto LABEL_82;
      }

      sub_100391554(v384);
      sub_100016590(v117, v381);
      v67 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v128, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
      v68 = sub_100018D00(v127, type metadata accessor for KeyDropInterface.KeyPackage);
      v71 = 0;
      v72 = v390;
      v74 = &qword_1016980D0;
      v0 = v387;
      goto LABEL_22;
    case 9:
      v177 = v93[221];
      v178 = v93[220];
      v179 = v93[168];
      sub_1000D2A70(v93[271], v179, &qword_1016B0478, &unk_1013CDC10);
      v180 = *(v177 + 48);
      v93[305] = v180;
      v93[306] = (v177 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v178) = v180(v179, 1, v178);
      sub_10000B3A8(v179, &qword_1016B0478, &unk_1013CDC10);
      if (v178 == 1)
      {
        v343 = swift_task_alloc();
        v93[307] = v343;
        *v343 = v93;
        v344 = sub_100CD2EEC;
        goto LABEL_109;
      }

      v181 = v93[305];
      v182 = v0[220];
      v183 = v0[167];
      sub_1000D2A70(v0[271], v183, &qword_1016B0478, &unk_1013CDC10);
      v184 = v181(v183, 1, v182);
      v185 = v0[167];
      if (v184 != 1)
      {
        sub_100D12974(v185, v0[222], type metadata accessor for KeyDropInterface.KeyAlignment);
        v356 = swift_task_alloc();
        v0[309] = v356;
        *v356 = v0;
        v356[1] = sub_100CD5928;
        v357 = v0[269];
        v358 = v0[268];
        v359 = v0[237];
        v360 = v0[222];
        v361 = v0[173];
        v362 = v0[140];

        sub_100CF3F94(v361, v362, v359, v360, v358, v357);
        return;
      }

      v186 = v0[246];
      v187 = v0[140];
      sub_10000B3A8(v185, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v187, v186, type metadata accessor for SharingCircleKeyManager.Instruction);
      v67 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      v188 = os_log_type_enabled(v67, v153);
      v66 = v0[246];
      if (!v188)
      {
        goto LABEL_20;
      }

      v155 = swift_slowAlloc();
      v393[0] = swift_slowAlloc();
      *v155 = 136446466;
      v189 = sub_100C71778();
      v191 = v190;
      sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
      v192 = sub_1000136BC(v189, v191, v393);
      v74 = &qword_1016980D0;
      v0 = v387;

      *(v155 + 4) = v192;
      *(v155 + 12) = 2082;
      v160 = 9;
      goto LABEL_51;
    case 12:
      v137 = v93[228];
      v138 = v93[227];
      v139 = v93[146];
      sub_1000D2A70(v93[237] + *(v93[234] + 28), v139, v74, &unk_10138F3B0);
      if ((*(v137 + 48))(v139, 1, v138) == 1)
      {
        v140 = v93[149];
        v141 = v93[148];
        v67 = v93[147];
        sub_10000B3A8(v93[146], v74, &unk_10138F3B0);
        (*(v140 + 56))(v67, 1, 1, v141);
        goto LABEL_62;
      }

      v196 = v93[263];
      v197 = v93[237];
      v198 = v93[234];
      v199 = v0[145];
      v196(v0[230], v0[146], v0[227]);
      sub_100D11DC8(v197 + *(v198 + 24), v199, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_59:
          v215 = v0[149];
          v216 = v0[148];
          v67 = v0[147];
          v217 = v0[145];
          (*(v0[228] + 8))(v0[230], v0[227]);
          sub_100018D00(v217, type metadata accessor for StableIdentifier);
          (*(v215 + 56))(v67, 1, 1, v216);
          goto LABEL_62;
        }

        v211 = v0[228];
        v212 = v0[227];
        v213 = v0[145];
        v214 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v205 = *(v213 + *(v214 + 96));
        (*(v211 + 8))(v213, v212);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_59;
        }

        v201 = v0[228];
        v202 = v0[145];
        v203 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v204 = (v202 + *(v203 + 96));
        v205 = *v204;
        LOBYTE(v202) = v204[1];

        v206 = *(v201 + 8);
        if (v202)
        {
          v207 = v0[227];
          v208 = v387[149];
          v67 = v387[148];
          v209 = v387[147];
          v210 = v387[145];
          v206(v0[230], v207);
          (*(v208 + 56))(v209, 1, 1, v67);
          v74 = &qword_1016980D0;
          v0 = v387;
          v206(v210, v207);
          goto LABEL_62;
        }

        v206(v0[145], v0[227]);
      }

      v218 = v0[149];
      v219 = v0[148];
      v67 = v0[147];
      (v0[263])(v67, v0[230], v0[227]);
      *(&v67->isa + *(v219 + 20)) = v205;
      (*(v218 + 56))(v67, 0, 1, v219);
LABEL_62:
      v66 = v0[147];
      if ((*(v0[149] + 48))(v66, 1, v0[148]) == 1)
      {
        v68 = sub_10000B3A8(v66, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v220 = v0[238];
      v221 = v0[140];
      sub_100D12974(v66, v0[150], type metadata accessor for KeyDropBeaconGroupAttributes);
      v222 = *(v221 + *(v220 + 44));
      if (!*(v222 + 16))
      {
        goto LABEL_68;
      }

      v223 = sub_100771F0C(12);
      if ((v224 & 1) == 0)
      {
        goto LABEL_68;
      }

      v225 = v0[221];
      v226 = v0[220];
      v227 = v0[217];
      v228 = v0[214];
      v229 = v0[165];
      sub_100D11DC8(*(v222 + 56) + *(v0[215] + 72) * v223, v227, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v227 + *(v228 + 20), v229, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v227, type metadata accessor for BookmarkMetaData);
      if ((*(v225 + 48))(v229, 1, v226) == 1)
      {
        sub_10000B3A8(v0[165], &qword_1016B0478, &unk_1013CDC10);
LABEL_68:
        v230 = v0[156];
        v231 = v0[155];
        v232 = v0[152];
        (*(v230 + 56))(v232, 1, 1, v231);
        static Date.distantPast.getter();
        if ((*(v230 + 48))(v232, 1, v231) != 1)
        {
          sub_10000B3A8(v0[152], &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v233 = v0[165];
        v234 = v0[160];
        v235 = v0[156];
        v236 = v0[155];
        v237 = v0[152];
        (*(v235 + 16))(v237, v233 + *(v0[220] + 24), v236);
        sub_100018D00(v233, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v235 + 56))(v237, 0, 1, v236);
        (*(v235 + 32))(v234, v237, v236);
      }

      v238 = v0[237];
      v239 = v0[159];
      v240 = objc_autoreleasePoolPush();
      sub_100D088CC(v238, v239);
      if (v71)
      {

        objc_autoreleasePoolPop(v240);
        return;
      }

      v241 = v0[159];
      v242 = v0[156];
      v243 = v0[155];
      objc_autoreleasePoolPop(v240);
      v244 = dispatch thunk of static Comparable.< infix(_:_:)();
      v67 = *(v242 + 8);
      (v67)(v241, v243);
      if (v244)
      {
        v66 = v0[150];
        (v67)(v0[160], v0[155]);
        v68 = sub_100018D00(v66, type metadata accessor for KeyDropBeaconGroupAttributes);
        v71 = 0;
      }

      else
      {
        v381 = v67;
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v67 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v246 = v245;
        v247 = v0[269];
        v248 = v387[268];
        v249 = v387[210];

        v250 = type metadata accessor for EncryptedData();
        (*(*(v250 - 8) + 56))(v249, 1, 1, v250);
        sub_100017D5C(v67, v246);
        v378 = v246;
        sub_10125A120(1, v67, v246, v249, v382);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v251 = swift_allocObject();
        v252 = *(v382 + 32);
        v253 = *(v382 + 48);
        v254 = *v382;
        *(v251 + 48) = *(v382 + 16);
        *(v251 + 64) = v252;
        *(v251 + 80) = v253;
        *(v251 + 96) = *(v382 + 64);
        *(v251 + 16) = xmmword_101385D80;
        *(v251 + 32) = v254;
        sub_10002E98C(v248, v247);
        sub_1003914F8(v382, (v387 + 56));
        v255 = sub_100D11764(v251, v248, v247);
        v256 = v387[226];
        v257 = v387[184];
        v258 = v387[183];
        v259 = v387[177];
        sub_100006654(v387[268], v387[269]);
        swift_setDeallocating();
        sub_100391554(v251 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v256, &v257[*(v259 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v257 = 12;
        *&v257[*(v259 + 24)] = v255;
        sub_100D11DC8(v257, v258, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100A5BE40(0, v72[2] + 1, 1, v72);
        }

        v261 = v72[2];
        v260 = v72[3];
        if (v261 >= v260 >> 1)
        {
          v72 = sub_100A5BE40((v260 > 1), v261 + 1, 1, v72);
        }

        v262 = v387[243];
        v263 = v387[184];
        v264 = v387[183];
        v265 = v387[182];
        v266 = v387[178];
        v267 = v387[140];
        v72[2] = v261 + 1;
        v391 = v72;
        sub_100D12974(v264, v72 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v261, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v267, v262, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v263, v265, type metadata accessor for KeyDropInterface.KeyPackage);
        v268 = Logger.logObject.getter();
        v269 = static os_log_type_t.default.getter();
        v270 = os_log_type_enabled(v268, v269);
        v66 = v387[243];
        v271 = v387[184];
        v272 = v387[182];
        v273 = v387[160];
        v274 = v387[155];
        v275 = v387[150];
        if (v270)
        {
          v377 = v387[160];
          v276 = swift_slowAlloc();
          v393[0] = swift_slowAlloc();
          *v276 = 136446466;
          v277 = sub_100C71778();
          v376 = v274;
          v279 = v278;
          sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
          v280 = sub_1000136BC(v277, v279, v393);

          *(v276 + 4) = v280;
          *(v276 + 12) = 2082;
          v281 = sub_101255410();
          v283 = v282;
          v66 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v272, type metadata accessor for KeyDropInterface.KeyPackage);
          v284 = sub_1000136BC(v281, v283, v393);

          *(v276 + 14) = v284;
          _os_log_impl(&_mh_execute_header, v268, v269, "Keys to upload: %{public}s,\nadded: %{public}s.", v276, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v382);
          sub_100016590(v67, v378);
          sub_100018D00(v271, type metadata accessor for KeyDropInterface.KeyPackage);
          v285 = v377;
          v286 = v376;
        }

        else
        {

          sub_100391554(v382);
          sub_100016590(v67, v378);
          v67 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v272, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v271, type metadata accessor for KeyDropInterface.KeyPackage);
          v285 = v273;
          v286 = v274;
        }

        v381(v285, v286);
        v68 = sub_100018D00(v275, type metadata accessor for KeyDropBeaconGroupAttributes);
        v71 = 0;
        v0 = v387;
        v72 = v391;
LABEL_82:
        v74 = &qword_1016980D0;
      }

      goto LABEL_22;
    case 13:
      v327 = swift_task_alloc();
      v93[311] = v327;
      *v327 = v93;
      v327[1] = sub_100CD880C;
      v328 = v93[237];
      v329 = v93[154];

      sub_100CF5FBC(v329, v328);
      return;
    case 16:
      v339 = swift_task_alloc();
      v93[312] = v339;
      *v339 = v93;
      v339[1] = sub_100CDBC44;
      v340 = v93[237];
      v341 = v93[158];
      v342 = v93[143];

      sub_100CF6C9C(v341, v342, v340);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CDF00C()
{
  sub_100018D00(*(v0 + 1896), type metadata accessor for OwnedBeaconRecord);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100CDF5F4()
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

void sub_100CE1E28()
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

void sub_100CE465C()
{
  v304 = v0;
  v302 = (v0 + 232);
  v301 = (v0 + 808);
  sub_100018D00(*(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
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
          v264 = swift_task_alloc();
          *(v0 + 2360) = v264;
          *v264 = v0;
          v265 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v222 = *(v0 + 2344);
        v223 = *(v0 + 1760);
        v224 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v224, &qword_1016B0478, &unk_1013CDC10);
        if (v222(v224, 1, v223) == 1)
        {
          v225 = *(v0 + 2000);
          v226 = *(v0 + 1120);
          sub_10000B3A8(*(v0 + 1368), &qword_1016B0478, &unk_1013CDC10);
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

        sub_100D12974(*(v0 + 1368), *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
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
        v213 = v210(v212, 1, v211);
        v214 = *(v0 + 1352);
        if (v213 != 1)
        {
          sub_100D12974(v214, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
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