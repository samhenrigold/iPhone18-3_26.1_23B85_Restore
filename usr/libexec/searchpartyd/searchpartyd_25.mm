uint64_t sub_1002D14F4()
{
  v1 = v0[173];
  (*(v0[160] + 8))(v0[168], v0[159]);
  sub_1002DBBF0(v1, type metadata accessor for KeyDropFetchResponse.LocationPayload);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002D1928()
{
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1480);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1344);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1280);
  v9 = *(v0 + 1272);

  sub_100006654(v4, v3);
  sub_100016590(v2, v1);
  v10 = *(v8 + 8);
  v10(v6, v9);
  sub_1002DBBF0(v5, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  v10(v7, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002D1DAC()
{
  v482 = v0;
  v1 = *(v0 + 1760);
  v2 = *(*(v0 + 1280) + 8);
  v2(*(v0 + 1144), *(v0 + 1272));
  *(v0 + 592) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1784) == 1)
  {
    v3 = *(v0 + 960);

    sub_100007BAC((v0 + 96));
    sub_100007BAC((v0 + 176));
    sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
    sub_1002DBBF0(v3, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  else
  {
    v4 = *(v0 + 1448);
    v5 = *(v0 + 1336);
    v6 = *(v0 + 1296);
    v7 = *(v0 + 1272);

    v4(v6, v5, v7);
    sub_10001F280(v0 + 176, v0 + 16);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1272);
    if (v10)
    {
      v13 = swift_slowAlloc();
      v480 = swift_slowAlloc();
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v2(v11, v12);
      v17 = sub_1000136BC(v14, v16, &v480);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2082;
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v18);
      v20 = sub_1010B7ABC(v18, v19);
      v22 = v21;
      sub_100007BAC((v0 + 16));
      v23 = sub_1000136BC(v20, v22, &v480);

      *(v13 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update metadata for: %{private,mask.hash}s,foundIndex: %{public}s.", v13, 0x20u);
      swift_arrayDestroy();

      sub_100007BAC((v0 + 96));
      v24 = (v0 + 176);
    }

    else
    {

      v2(v11, v12);
      sub_100007BAC((v0 + 96));
      sub_100007BAC((v0 + 176));
      v24 = (v0 + 16);
    }

    sub_100007BAC(v24);
    sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
    sub_1002DBBF0(*(v0 + 960), type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v25 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v25, *(v0 + 520));
  if (v26)
  {
    v27 = v26;
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v28, v29, &qword_10169C970, &qword_101398A18);
    v31 = (v29 + *(v30 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v480);
    v32 = Hasher._finalize()();
    v33 = -1 << *(v27 + 32);
    v34 = v32 & ~v33;
    if ((*(v27 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      v36 = *v31;
      v37 = *(*(v0 + 808) + 72);
      do
      {
        v38 = *(v0 + 824);
        sub_1002DB760(*(v27 + 48) + v34 * v37, v38, type metadata accessor for RawSearchResult);
        v39 = *(v0 + 824);
        if (*v38 == v36 && (v40 = static Date.== infix(_:_:)(), v39 = *(v0 + 824), (v40 & 1) != 0) && (v41 = *(v0 + 800), *(v39 + v41[6]) == *&v31[v41[6]]) && *(v39 + v41[7]) == *&v31[v41[7]] && *(v39 + v41[8]) == *&v31[v41[8]])
        {
          v42 = *(v0 + 824);
          v43 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v42, type metadata accessor for RawSearchResult);
          if (v43)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1002DBBF0(v39, type metadata accessor for RawSearchResult);
        }

        v34 = (v34 + 1) & v35;
      }

      while (((*(v27 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
    }

    v44 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v31, v44, type metadata accessor for RawSearchResult);
    v480 = v27;
    sub_100DFE348(v44, v34, isUniquelyReferenced_nonNull_native);
    v27 = v480;
LABEL_21:
    sub_1002DBBF0(v31, type metadata accessor for RawSearchResult);
    v46 = *(v0 + 1448);
    v47 = *(v0 + 1336);
    v48 = *(v0 + 1328);
    v49 = *(v0 + 1272);
    v474 = *(*(v0 + 1280) + 8);
    v474(*(v0 + 1136), v49);
    v46(v48, v47, v49);
    swift_beginAccess();
    v50 = v27;
    v51 = v48;
  }

  else
  {
    v52 = *(v0 + 1448);
    v53 = *(v0 + 1336);
    v54 = *(v0 + 1328);
    v55 = *(v0 + 1280);
    v56 = *(v0 + 1272);
    v57 = *(v0 + 1152);
    v58 = *(v0 + 1128);
    v475 = *(v0 + 1016);
    v59 = *(v0 + 808);
    swift_endAccess();
    v52(v54, v53, v56);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_101385D80;
    sub_1000D2A70(v57, v58, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v58 + *(v475 + 48), v61 + v60, type metadata accessor for RawSearchResult);
    v474 = *(v55 + 8);
    v474(v58, v56);
    v62 = sub_10112A090(v61);
    swift_setDeallocating();
    sub_1002DBBF0(v61 + v60, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v50 = v62;
    v51 = v54;
  }

  sub_1001DE1B0(v50, v51);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_321;
  }

  while (1)
  {
    v63 = *(v0 + 1448);
    v64 = *(v0 + 1336);
    v65 = *(v0 + 1304);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1152);
    v68 = *(v0 + 1120);
    v69 = *(v0 + 1112);
    v471 = *(v0 + 1104);
    v477 = type metadata accessor for Logger();
    sub_1000076D4(v477, qword_10177A818);
    v63(v65, v64, v66);
    sub_1000D2A70(v67, v68, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v67, v69, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v67, v471, &qword_10169C970, &qword_101398A18);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v455 = v71;
      v457 = v70;
      v72 = *(v0 + 1304);
      v73 = *(v0 + 1272);
      v74 = *(v0 + 1128);
      v459 = *(v0 + 1120);
      v452 = *(v0 + 1104);
      v449 = *(v0 + 1112);
      v451 = *(v0 + 1096);
      v464 = *(v0 + 1016);
      v440 = *(v0 + 848);
      logc = *(v0 + 840);
      v447 = *(v0 + 856);
      v466 = *(v0 + 800);
      v75 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v75 = 141559043;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v474(v72, v73);
      v79 = sub_1000136BC(v76, v78, (v0 + 528));

      *(v75 + 14) = v79;
      *(v75 + 22) = 2082;
      sub_1000D2A70(v459, v74, &qword_10169C970, &qword_101398A18);
      v80 = v74 + *(v464 + 48);
      (*(v440 + 16))(v447, v80 + *(v466 + 20), logc);
      sub_1002DBBF0(v80, type metadata accessor for RawSearchResult);
      v474(v74, v73);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v440 + 8))(v447, logc);
      sub_10000B3A8(v459, &qword_10169C970, &qword_101398A18);
      v84 = sub_1000136BC(v81, v83, (v0 + 528));

      *(v75 + 24) = v84;
      *(v75 + 32) = 2082;
      sub_1000D2A70(v449, v74, &qword_10169C970, &qword_101398A18);
      v85 = v74 + *(v464 + 48);
      LOBYTE(v84) = *(v85 + *(v466 + 36));
      sub_1002DBBF0(v85, type metadata accessor for RawSearchResult);
      v474(v74, v73);
      v86 = sub_100013454(v84);
      v88 = v87;
      sub_10000B3A8(v449, &qword_10169C970, &qword_101398A18);
      v89 = sub_1000136BC(v86, v88, (v0 + 528));

      *(v75 + 34) = v89;
      *(v75 + 42) = 2048;
      sub_1000D2A70(v452, v451, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v90 = *(v0 + 520);
      if (*(v90 + 16) && (v91 = sub_1000210EC(*(v0 + 1096)), (v92 & 1) != 0))
      {
        v93 = *(*(v90 + 56) + 8 * v91);
        swift_endAccess();
        v94 = *(v93 + 16);
      }

      else
      {
        swift_endAccess();
        v94 = 0;
      }

      v96 = *(v0 + 1568);
      v101 = *(v0 + 1560);
      v102 = *(v0 + 1272);
      v468 = *(v0 + 1152);
      v103 = *(v0 + 1104);
      v104 = *(v0 + 1096);
      v97 = *(v0 + 992);
      sub_1002DBBF0(v104 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      v474(v104, v102);
      sub_10000B3A8(v103, &qword_10169C970, &qword_101398A18);
      *(v75 + 44) = v94;
      v95 = v457;
      _os_log_impl(&_mh_execute_header, v457, v455, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v75, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v101, v96);
      sub_10000B3A8(v97, &unk_1016C1120, &qword_1013C49D0);
      v100 = v468;
    }

    else
    {
      v95 = *(v0 + 1632);
      v96 = *(v0 + 1568);
      v97 = *(v0 + 1560);
      v464 = *(v0 + 1272);
      v467 = *(v0 + 1304);
      v472 = *(v0 + 1152);
      v98 = *(v0 + 1120);
      v99 = *(v0 + 1112);
      v460 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v97, v96);
      sub_10000B3A8(v99, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v98, &qword_10169C970, &qword_101398A18);
      v474(v467, v464);
      sub_10000B3A8(v460, &unk_1016C1120, &qword_1013C49D0);
      v100 = v472;
    }

    sub_10000B3A8(v100, &qword_10169C970, &qword_101398A18);
    v105 = *(v0 + 1552) + 1;
    if (v105 != *(v0 + 1544))
    {
      break;
    }

    v106 = *(v0 + 1480);
    v96 = *(v0 + 1472);
    v107 = *(v0 + 1384);
    v108 = *(v0 + 1344);
    v109 = *(v0 + 1336);
    v110 = *(v0 + 1280);
    v111 = *(v0 + 1272);

    sub_100006654(v96, v106);
    v112 = *(v110 + 8);
    v112(v108, v111);
    sub_1002DBBF0(v107, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v112(v109, v111);
    v113 = *(v0 + 1408) + 1;
    if (v113 == *(v0 + 1400))
    {
LABEL_33:
      v95 = _swiftEmptyArrayStorage;

      if (*(v0 + 624))
      {
        v95 = *(v0 + 624);
      }

      v433 = *(v95 + 16);
      if (!v433)
      {

        goto LABEL_224;
      }

      v114 = *(v0 + 1280);
      v402 = (v0 + 600);
      v115 = *(v0 + 1024);
      v434 = *(v0 + 1016);
      v116 = *(v0 + 848);
      v403 = *(v0 + 808);
      v450 = *(v0 + 800);
      v117 = *(v0 + 792);
      v473 = *(v0 + 776);
      v426 = *(v0 + 752);
      v439 = *(v0 + 744);
      v118 = *(v0 + 728);
      v436 = v95 + 32;
      v422 = *(v0 + 712);
      v458 = (v118 + 104);
      v456 = (v118 + 8);
      v448 = *(v0 + 704);
      v410 = (*(v0 + 928) + 56);
      v425 = (v116 + 16);
      v409 = *(v0 + 664);
      v408 = (v116 + 56);
      v424 = (v116 + 8);
      v407 = (v114 + 16);
      v405 = (v115 + 48);
      v406 = (v115 + 56);
      v435 = *(*(v0 + 640) + 16);
      v427 = (v114 + 8);
      v454 = enum case for HashAlgorithm.sha256(_:);

      v97 = 0;
      v119 = 0;
      v404 = xmmword_101385D80;
      v423 = v95;
      v438 = v117;
      while (1)
      {
        if (v119 >= *(v95 + 16))
        {
          goto LABEL_330;
        }

        v437 = v119;
        v120 = (v436 + 24 * v119);
        v122 = *v120;
        v121 = v120[1];
        v451 = v121;
        v465 = *v120;
        v453 = v120[2];
        if (!v435)
        {
          sub_100017D5C(v122, v121);

LABEL_146:
          if (qword_101694510 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v477, qword_10177A818);
          sub_100017D5C(v465, v451);

          v96 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();
          sub_100016590(v465, v451);

          if (os_log_type_enabled(v96, v175))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v480 = v177;
            *v176 = 141558275;
            *(v176 + 4) = 1752392040;
            *(v176 + 12) = 2081;
            *(v0 + 488) = v465;
            *(v0 + 496) = v451;
            sub_10025DB08();
            v178 = RawRepresentable<>.hexString.getter();
            v180 = sub_1000136BC(v178, v179, &v480);

            *(v176 + 14) = v180;
            _os_log_impl(&_mh_execute_header, v96, v175, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v176, 0x16u);
            sub_100007BAC(v177);
          }

          sub_100016590(v465, v451);

          goto LABEL_151;
        }

        v95 = *(v0 + 640) + ((*(v426 + 80) + 32) & ~*(v426 + 80));
        sub_100017D5C(v122, v121);
        if (v122)
        {
          v123 = 0;
        }

        else
        {
          v123 = v121 == 0xC000000000000000;
        }

        v124 = !v123;
        log = v124;
        v469 = v121 >> 62;
        v441 = BYTE6(v121);
        v461 = *(v426 + 72);
        v125 = __OFSUB__(HIDWORD(v122), v122);
        v430 = v125;
        v428 = HIDWORD(v122) - v122;

        v126 = v435;
        while (1)
        {
          v127 = *(v0 + 776);
          sub_1002DB760(v95, v127, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v128 = *v127;
          v129 = *(v473 + 8);
          v96 = v129 >> 62;
          if ((v129 >> 62) > 1)
          {
            if (v96 == 2)
            {
              v130 = *(v128 + 16);
              v132 = *(v128 + 24);
              sub_100017D5C(v128, *(v473 + 8));
              v131 = *(v128 + 16);
              v133 = *(v128 + 24);
            }

            else
            {
              v130 = 0;
              v132 = 0;
              v133 = 0;
              v131 = 0;
            }
          }

          else if (v96)
          {
            v130 = v128;
            v132 = v128 >> 32;
            sub_100017D5C(v128, *(v473 + 8));
            v133 = v128 >> 32;
            v131 = v128;
          }

          else
          {
            v130 = 0;
            v131 = 0;
            v132 = BYTE6(v129);
            v133 = BYTE6(v129);
          }

          if (v133 < v130 || v130 < v131)
          {
            goto LABEL_317;
          }

          if (v96 > 1)
          {
            if (v96 == 2)
            {
              v134 = *(v128 + 16);
              v135 = *(v128 + 24);
            }

            else
            {
              v135 = 0;
              v134 = 0;
            }
          }

          else if (v96)
          {
            v134 = v128;
            v135 = v128 >> 32;
          }

          else
          {
            v134 = 0;
            v135 = BYTE6(v129);
          }

          if (v135 < v132 || v132 < v134)
          {
            goto LABEL_318;
          }

          if (__OFSUB__(v132, v130))
          {
            goto LABEL_319;
          }

          if ((v132 - v130) < 0x39)
          {
            if (v96 <= 1)
            {
              if (!v96)
              {
                goto LABEL_95;
              }

              v136 = v128 >> 32;
LABEL_91:
              v139 = v128;
              goto LABEL_94;
            }

            if (v96 != 2)
            {
              goto LABEL_95;
            }

            v136 = *(v128 + 24);
LABEL_93:
            v139 = *(v128 + 16);
            goto LABEL_94;
          }

          v136 = v130 + 57;
          if (__OFADD__(v130, 57))
          {
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
            goto LABEL_328;
          }

          if (v96 > 1)
          {
            if (v96 == 2)
            {
              v137 = *(v128 + 16);
              v138 = *(v128 + 24);
            }

            else
            {
              v138 = 0;
              v137 = 0;
            }
          }

          else if (v96)
          {
            v137 = v128;
            v138 = v128 >> 32;
          }

          else
          {
            v137 = 0;
            v138 = BYTE6(v129);
          }

          if (v138 < v136 || v136 < v137)
          {
            goto LABEL_323;
          }

          v139 = 0;
          if (v96 <= 1)
          {
            if (!v96)
            {
              goto LABEL_94;
            }

            goto LABEL_91;
          }

          if (v96 != 3)
          {
            goto LABEL_93;
          }

LABEL_94:
          if (v136 < v139)
          {
            goto LABEL_320;
          }

LABEL_95:
          v140 = Data._Representation.subscript.getter();
          v142 = v141;
          sub_100016590(v128, v129);
          v143 = v142 >> 62;
          if ((v142 >> 62) > 1)
          {
            if (v143 != 2)
            {
              goto LABEL_278;
            }

            v146 = *(v140 + 16);
            v145 = *(v140 + 24);
            v147 = __OFSUB__(v145, v146);
            v144 = v145 - v146;
            if (v147)
            {
              goto LABEL_331;
            }
          }

          else if (v143)
          {
            LODWORD(v144) = HIDWORD(v140) - v140;
            if (__OFSUB__(HIDWORD(v140), v140))
            {
              goto LABEL_332;
            }

            v144 = v144;
          }

          else
          {
            v144 = BYTE6(v142);
          }

          if (v144 != 57)
          {
LABEL_278:
            v373 = v140;
            v374 = v142;
            goto LABEL_276;
          }

          v148 = sub_100A7A194(v140, v142, 0, 0);
          v149 = sub_100A7829C(v148, 0, 2);
          v96 = v150;
          result = CCECCryptorRelease();
          v152 = v96 >> 62;
          if ((v96 >> 62) > 1)
          {
            if (v152 != 2)
            {
              v375 = 0;
              goto LABEL_291;
            }

            v155 = *(v149 + 16);
            v154 = *(v149 + 24);
            v147 = __OFSUB__(v154, v155);
            v153 = v154 - v155;
            if (v147)
            {
              goto LABEL_334;
            }
          }

          else if (v152)
          {
            LODWORD(v153) = HIDWORD(v149) - v149;
            if (__OFSUB__(HIDWORD(v149), v149))
            {
              goto LABEL_333;
            }

            v153 = v153;
          }

          else
          {
            v153 = BYTE6(v96);
          }

          if (v153 != 28)
          {
            if (v152 == 2)
            {
              v381 = *(v149 + 16);
              v380 = *(v149 + 24);
              v375 = v380 - v381;
              if (!__OFSUB__(v380, v381))
              {
                goto LABEL_291;
              }

              __break(1u);
            }

            else if (v152 == 1)
            {
              if (!__OFSUB__(HIDWORD(v149), v149))
              {
                v375 = HIDWORD(v149) - v149;
LABEL_291:
                sub_100018350();
                v382 = swift_allocError();
                *v383 = 28;
                *(v383 + 8) = v375;
                *(v383 + 16) = 0;
                swift_willThrow();
                sub_100016590(v149, v96);
                goto LABEL_292;
              }

LABEL_345:
              __break(1u);
LABEL_346:
              __break(1u);
LABEL_347:
              __break(1u);
              return result;
            }

            v375 = BYTE6(v96);
            goto LABEL_291;
          }

          v474 = v95;
          v156 = v126;
          v157 = *(v0 + 736);
          v158 = *(v0 + 720);
          sub_100016590(v140, v142);
          (*v458)(v157, v454, v158);
          v159 = Data.hash(algorithm:)();
          v161 = v160;
          sub_100016590(v149, v96);
          (*v456)(v157, v158);
          v162 = v161 >> 62;
          if (v161 >> 62 == 3)
          {
            if (v159)
            {
              v163 = 0;
            }

            else
            {
              v163 = v161 == 0xC000000000000000;
            }

            v164 = v469;
            v166 = !v163 || v469 < 3;
            if (((v166 | log) & 1) == 0)
            {
              v181 = 0;
              v182 = 0xC000000000000000;
              goto LABEL_155;
            }

            v167 = v156;
            v168 = 0;
            v95 = v474;
            if (v469 <= 1)
            {
LABEL_135:
              v171 = v441;
              if (v164)
              {
                v171 = v428;
                if (v430)
                {
                  goto LABEL_336;
                }
              }

              goto LABEL_141;
            }
          }

          else
          {
            v164 = v469;
            v167 = v156;
            if (v162 == 2)
            {
              v170 = *(v159 + 16);
              v169 = *(v159 + 24);
              v147 = __OFSUB__(v169, v170);
              v168 = v169 - v170;
              v95 = v474;
              if (v147)
              {
                goto LABEL_340;
              }

              if (v469 <= 1)
              {
                goto LABEL_135;
              }
            }

            else
            {
              v95 = v474;
              if (v162 == 1)
              {
                LODWORD(v168) = HIDWORD(v159) - v159;
                if (__OFSUB__(HIDWORD(v159), v159))
                {
                  goto LABEL_339;
                }

                v168 = v168;
                if (v469 <= 1)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v168 = BYTE6(v161);
                if (v469 <= 1)
                {
                  goto LABEL_135;
                }
              }
            }
          }

          if (v164 != 2)
          {
            if (!v168)
            {
              break;
            }

LABEL_50:
            sub_100016590(v159, v161);
            v97 = 0;
            goto LABEL_51;
          }

          v173 = *(v465 + 16);
          v172 = *(v465 + 24);
          v147 = __OFSUB__(v172, v173);
          v171 = v172 - v173;
          if (v147)
          {
            goto LABEL_335;
          }

LABEL_141:
          if (v168 != v171)
          {
            goto LABEL_50;
          }

          if (v168 < 1)
          {
            break;
          }

          sub_100017D5C(v465, v451);
          sub_100017D5C(v465, v451);
          sub_100017D5C(v159, v161);
          v174 = sub_100F0B1BC(v159, v161, v465, v451);
          sub_100016590(v159, v161);
          sub_100016590(v159, v161);
          sub_100016590(v465, v451);
          if (v174)
          {
            goto LABEL_156;
          }

LABEL_51:
          sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v95 += v461;
          v126 = v167 - 1;
          if (!v126)
          {
            goto LABEL_146;
          }
        }

        v181 = v159;
        v182 = v161;
LABEL_155:
        sub_100016590(v181, v182);
        v97 = 0;
LABEL_156:
        v183 = *(v0 + 792);
        v96 = *(v0 + 784);
        sub_1002DB7C8(*(v0 + 776), v96, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        sub_1002DB7C8(v96, v183, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v95 = v453;
        v184 = *(v453 + 16);
        if (v184)
        {
          v474 = (v453 + ((*(v448 + 80) + 32) & ~*(v448 + 80)));

          v185 = 0;
          v186 = v438;
          v400 = v184;
          while (v185 < *(v453 + 16))
          {
            sub_1002DB760(v474 + *(v448 + 72) * v185, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v187 = sub_100496ABC();
            v188 = **(v0 + 712);
            v189 = *(v422 + 8);
            v190 = **(v0 + 792);
            v191 = *(v186 + 8);
            sub_100017D5C(v190, v191);
            sub_10002EA98(57, v190, v191, &v480);
            sub_100496F68(v480, v481, &v478);
            v192 = v479;
            if (v479 >> 60 == 15)
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v470 = v185;
            loga = *(v0 + 792);
            v193 = v478;
            v194 = PublicKey.advertisement.getter(v478, v479);
            v196 = v195;
            result = sub_100006654(v193, v192);
            v197 = v189 >> 62;
            v462 = *(v439 + 20);
            if ((v189 >> 62) > 1)
            {
              if (v197 == 2)
              {
                v200 = *(v188 + 16);
                v199 = *(v188 + 24);
                v198 = v199 - v200;
                if (__OFSUB__(v199, v200))
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v198 = 0;
              }
            }

            else if (v197)
            {
              if (__OFSUB__(HIDWORD(v188), v188))
              {
                __break(1u);
LABEL_344:
                __break(1u);
                goto LABEL_345;
              }

              v198 = HIDWORD(v188) - v188;
            }

            else
            {
              v198 = BYTE6(v189);
            }

            sub_100A2A240(3);
            v202 = v201;
            v203 = v187;
            sub_100017D5C(v188, v189);
            sub_100017D5C(v194, v196);
            if (v198 >= v202)
            {
              v204 = (v0 + 672);
              sub_100A2AA58(v203, v188, v189, v194, v196, *(v0 + 672));
            }

            else
            {
              v204 = (v0 + 680);
              sub_100A2B118(v203, v188, v189, v194, v196, *(v0 + 680));
            }

            v416 = v194;
            v442 = v203;
            v205 = *v204;
            v429 = *(v0 + 1272);
            v431 = *(v0 + 1016);
            v420 = *(v0 + 1000);
            v206 = *(v0 + 976);
            v411 = *(v0 + 968);
            v207 = *(v0 + 920);
            v208 = *(v0 + 856);
            v209 = *(v0 + 840);
            v210 = *(v0 + 832);
            v211 = *(v0 + 696);
            v212 = *(v0 + 688);
            v213 = *(v0 + 656);
            sub_1002DB7C8(v205, v212, type metadata accessor for BeaconPayloadv1);
            sub_1002DB7C8(v212, v211, type metadata accessor for BeaconPayloadv1);
            v214 = v206;
            v413 = v206;
            (*v410)(v206, 1, 1, v207);
            v418 = *(v211 + v409[10]);
            v215 = *v425;
            (*v425)(v208, v211 + v409[5], v209);
            v216 = *(v211 + v409[7]);
            v217 = *(v211 + v409[8]);
            v218 = *(v211 + v409[9]);
            (*v408)(v213, 1, 1, v209);
            sub_1000D2A70(v214, v411, &unk_1016C1120, &qword_1013C49D0);
            v401 = v215;
            v215(&v210[v450[5]], v208, v209);
            sub_1000D2A70(v213, &v210[v450[10]], &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v411, &v210[v450[11]], &unk_1016C1120, &qword_1013C49D0);
            UUID.init()();
            sub_100016590(v416, v196);
            sub_10000B3A8(v411, &unk_1016C1120, &qword_1013C49D0);
            sub_10000B3A8(v213, &unk_101696900, &unk_10138B1E0);
            v219 = *v424;
            (*v424)(v208, v209);
            sub_10000B3A8(v413, &unk_1016C1120, &qword_1013C49D0);
            sub_1002DBBF0(v211, type metadata accessor for BeaconPayloadv1);
            *v210 = v418;
            *&v210[v450[6]] = v216;
            *&v210[v450[7]] = v217;
            *&v210[v450[8]] = v218;
            v210[v450[9]] = 15;
            *&v210[v450[13]] = 256;
            v220 = *(v434 + 48);
            (*v407)(v420, loga + v462, v429);
            sub_1002DB7C8(v210, v420 + v220, type metadata accessor for RawSearchResult);
            (*v406)(v420, 0, 1, v431);
            if ((*v405)(v420, 1, v431) == 1)
            {
              v221 = *(v0 + 1000);

              sub_10000B3A8(v221, &qword_10169C968, &qword_101398A10);
              v186 = v438;
              v222 = v400;
              v223 = v470;
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v224 = *(v0 + 792);
              v225 = *(v0 + 760);
              sub_1000076D4(v477, qword_10177A818);
              sub_1002DB760(v224, v225, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v96 = Logger.logObject.getter();
              v226 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v96, v226))
              {
                v227 = *(v0 + 760);
                v228 = swift_slowAlloc();
                v229 = swift_slowAlloc();
                v480 = v229;
                *v228 = 141558275;
                *(v228 + 4) = 1752392040;
                *(v228 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v230 = dispatch thunk of CustomStringConvertible.description.getter();
                v232 = v231;
                v233 = v227;
                v223 = v470;
                v186 = v438;
                sub_1002DBBF0(v233, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v95 = sub_1000136BC(v230, v232, &v480);

                *(v228 + 14) = v95;
                _os_log_impl(&_mh_execute_header, v96, v226, "Could not create search result for beacon: %{private,mask.hash}s.", v228, 0x16u);
                sub_100007BAC(v229);
              }

              else
              {
                v95 = *(v0 + 760);

                sub_1002DBBF0(v95, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              }
            }

            else
            {
              v234 = *(v0 + 1088);
              v235 = *(v0 + 1080);
              sub_1000D2AD8(*(v0 + 1000), v234, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v234, v235, &qword_10169C970, &qword_101398A18);
              v236 = *(v434 + 48);
              swift_beginAccess();
              sub_1005CAD18(v235, *(v0 + 520));
              v238 = *(v0 + 1272);
              v417 = v219;
              if (v237)
              {
                v239 = v237;
                v240 = *(v0 + 1088);
                v241 = *(v0 + 1080);
                v242 = *(v0 + 1072);
                swift_endAccess();
                sub_1002DBBF0(v235 + v236, type metadata accessor for RawSearchResult);
                v463 = *v427;
                (*v427)(v241, v238);
                sub_1000D2A70(v240, v242, &qword_10169C970, &qword_101398A18);
                v243 = (v242 + *(v434 + 48));
                Hasher.init(_seed:)();
                sub_100D15128(&v480);
                v244 = Hasher._finalize()();
                v245 = -1 << *(v239 + 32);
                v246 = v244 & ~v245;
                if ((*(v239 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246))
                {
                  v247 = ~v245;
                  v248 = *v243;
                  v249 = *(v403 + 72);
                  do
                  {
                    v250 = *(v0 + 816);
                    sub_1002DB760(*(v239 + 48) + v246 * v249, v250, type metadata accessor for RawSearchResult);
                    v251 = *(v0 + 816);
                    if (*v250 == v248 && (v252 = static Date.== infix(_:_:)(), v251 = *(v0 + 816), (v252 & 1) != 0) && *(v251 + v450[6]) == *&v243[v450[6]] && *(v251 + v450[7]) == *&v243[v450[7]] && *(v251 + v450[8]) == *&v243[v450[8]])
                    {
                      v253 = *(v0 + 816);
                      v254 = static UUID.== infix(_:_:)();
                      sub_1002DBBF0(v253, type metadata accessor for RawSearchResult);
                      if (v254)
                      {
                        goto LABEL_193;
                      }
                    }

                    else
                    {
                      sub_1002DBBF0(v251, type metadata accessor for RawSearchResult);
                    }

                    v246 = (v246 + 1) & v247;
                  }

                  while (((*(v239 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) != 0);
                }

                v255 = *(v0 + 832);
                v256 = swift_isUniquelyReferenced_nonNull_native();
                sub_1002DB760(v243, v255, type metadata accessor for RawSearchResult);
                v480 = v239;
                sub_100DFE348(v255, v246, v256);
                v239 = v480;
LABEL_193:
                sub_1002DBBF0(v243, type metadata accessor for RawSearchResult);
                v257 = *(v0 + 1128);
                v258 = *(v0 + 1088);
                v463(*(v0 + 1072), *(v0 + 1272));
                sub_1000D2A70(v258, v257, &qword_10169C970, &qword_101398A18);
                v259 = *(v434 + 48);
                swift_beginAccess();
                sub_1001DE1B0(v239, v257);
              }

              else
              {
                v260 = *(v0 + 1128);
                v261 = *(v0 + 1088);
                v262 = *(v0 + 1080);
                v263 = *(v0 + 1064);
                swift_endAccess();
                sub_1002DBBF0(v235 + v236, type metadata accessor for RawSearchResult);
                v264 = *v427;
                (*v427)(v262, v238);
                sub_1000D2A70(v261, v260, &qword_10169C970, &qword_101398A18);
                v259 = *(v434 + 48);
                sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                v265 = (*(v403 + 80) + 32) & ~*(v403 + 80);
                v266 = swift_allocObject();
                *(v266 + 16) = xmmword_101385D80;
                sub_1000D2A70(v261, v263, &qword_10169C970, &qword_101398A18);
                sub_1002DB7C8(v263 + *(v434 + 48), v266 + v265, type metadata accessor for RawSearchResult);
                v264(v263, v238);
                v267 = sub_10112A090(v266);
                swift_setDeallocating();
                sub_1002DBBF0(v266 + v265, type metadata accessor for RawSearchResult);
                swift_deallocClassInstance();
                swift_beginAccess();
                v268 = swift_isUniquelyReferenced_nonNull_native();
                v480 = *(v0 + 520);
                sub_100FFC200(v267, v260, v268);
                v463 = v264;
                v264(v260, v238);
                *(v0 + 520) = v480;
              }

              swift_endAccess();
              sub_1002DBBF0(*(v0 + 1128) + v259, type metadata accessor for RawSearchResult);
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v269 = *(v0 + 1088);
              v270 = *(v0 + 1056);
              v271 = *(v0 + 1048);
              v272 = *(v0 + 1040);
              v273 = *(v0 + 792);
              v274 = *(v0 + 768);
              sub_1000076D4(v477, qword_10177A818);
              sub_1002DB760(v273, v274, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              sub_1000D2A70(v269, v270, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v269, v271, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v269, v272, &qword_10169C970, &qword_101398A18);
              v275 = Logger.logObject.getter();
              v276 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v275, v276))
              {
                v432 = v276;
                logb = v275;
                v277 = *(v0 + 1272);
                v278 = *(v0 + 1128);
                v279 = *(v0 + 1056);
                v419 = *(v0 + 1032);
                v421 = *(v0 + 1040);
                v414 = *(v0 + 856);
                v415 = *(v0 + 1048);
                v412 = *(v0 + 840);
                v280 = *(v0 + 768);
                v281 = swift_slowAlloc();
                v480 = swift_slowAlloc();
                *v281 = 141559043;
                *(v281 + 4) = 1752392040;
                *(v281 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v282 = dispatch thunk of CustomStringConvertible.description.getter();
                v284 = v283;
                sub_1002DBBF0(v280, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v285 = sub_1000136BC(v282, v284, &v480);

                *(v281 + 14) = v285;
                *(v281 + 22) = 2082;
                sub_1000D2A70(v279, v278, &qword_10169C970, &qword_101398A18);
                v286 = v278 + *(v434 + 48);
                v401(v414, v286 + v450[5], v412);
                sub_1002DBBF0(v286, type metadata accessor for RawSearchResult);
                v463(v278, v277);
                sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v287 = dispatch thunk of CustomStringConvertible.description.getter();
                v289 = v288;
                v417(v414, v412);
                sub_10000B3A8(v279, &qword_10169C970, &qword_101398A18);
                v290 = sub_1000136BC(v287, v289, &v480);

                *(v281 + 24) = v290;
                *(v281 + 32) = 2082;
                sub_1000D2A70(v415, v278, &qword_10169C970, &qword_101398A18);
                v291 = v278 + *(v434 + 48);
                LOBYTE(v290) = *(v291 + v450[9]);
                sub_1002DBBF0(v291, type metadata accessor for RawSearchResult);
                v463(v278, v277);
                v292 = sub_100013454(v290);
                v294 = v293;
                sub_10000B3A8(v415, &qword_10169C970, &qword_101398A18);
                v295 = sub_1000136BC(v292, v294, &v480);

                *(v281 + 34) = v295;
                *(v281 + 42) = 2048;
                sub_1000D2A70(v421, v419, &qword_10169C970, &qword_101398A18);
                swift_beginAccess();
                v296 = *(v0 + 520);
                if (*(v296 + 16) && (v297 = sub_1000210EC(*(v0 + 1032)), (v298 & 1) != 0))
                {
                  v299 = *(*(v296 + 56) + 8 * v297);
                  swift_endAccess();
                  v300 = *(v299 + 16);
                }

                else
                {
                  swift_endAccess();
                  v300 = 0;
                }

                v186 = v438;
                v222 = v400;
                v223 = v470;
                v303 = *(v0 + 1272);
                v95 = *(v0 + 1088);
                v304 = *(v0 + 1040);
                v305 = *(v0 + 1032);
                sub_1002DBBF0(v305 + *(v434 + 48), type metadata accessor for RawSearchResult);
                v463(v305, v303);
                v96 = &qword_10169C970;
                sub_10000B3A8(v304, &qword_10169C970, &qword_101398A18);
                *(v281 + 44) = v300;
                _os_log_impl(&_mh_execute_header, logb, v432, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v281, 0x34u);
                swift_arrayDestroy();

                sub_10000B3A8(v95, &qword_10169C970, &qword_101398A18);
              }

              else
              {
                v95 = *(v0 + 1088);
                v96 = *(v0 + 1056);
                v301 = *(v0 + 1048);
                v302 = *(v0 + 768);
                sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                sub_10000B3A8(v301, &qword_10169C970, &qword_101398A18);
                sub_10000B3A8(v96, &qword_10169C970, &qword_101398A18);
                sub_1002DBBF0(v302, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_10000B3A8(v95, &qword_10169C970, &qword_101398A18);
                v186 = v438;
                v222 = v400;
                v223 = v470;
              }
            }

            v185 = v223 + 1;
            sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v97 = 0;
            if (v185 == v222)
            {

              sub_100016590(v465, v451);

              v97 = 0;
              goto LABEL_206;
            }
          }

          goto LABEL_324;
        }

        sub_100016590(v465, v451);

LABEL_206:
        sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_151:
        v119 = v437 + 1;
        v95 = v423;
        if (v437 + 1 == v433)
        {
LABEL_224:

          swift_beginAccess();
          v476 = *(v0 + 520);

          v328 = *(v0 + 8);

          return v328(v476);
        }
      }
    }

    v96 = &qword_1016980D0;
    while (1)
    {
      *(v0 + 1408) = v113;
      v315 = *(v0 + 632);
      if (!v315)
      {
        v315 = _swiftEmptyArrayStorage;
      }

      if (v113 >= v315[2])
      {
        break;
      }

      v316 = *(v0 + 1384);
      v317 = *(v0 + 1352);
      v318 = *(v0 + 1280);
      v319 = *(v0 + 1272);
      v320 = *(v0 + 1264);
      sub_1002DB760(v315 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v113, v316, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v321 = *(v316 + 16);
      v322 = *(v316 + 24);
      sub_1000D2A70(v316 + *(v317 + 28), v320, &qword_1016980D0, &unk_10138F3B0);
      v323 = *(v318 + 48);
      *(v0 + 1416) = v323;
      *(v0 + 1424) = (v318 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v323(v320, 1, v319) != 1)
      {
        v329 = *(v0 + 1344);
        v330 = *(v0 + 1280);
        v331 = *(v0 + 1272);
        v332 = *(v0 + 1264);
        v333 = *(v0 + 1256);
        v334 = *(v330 + 32);
        *(v0 + 1432) = v334;
        *(v0 + 1440) = (v330 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v334(v329, v332, v331);
        v335 = *(v330 + 16);
        *(v0 + 1448) = v335;
        *(v0 + 1456) = (v330 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v335(v333, v329, v331);
        (*(v330 + 56))(v333, 0, 1, v331);
        v336 = swift_task_alloc();
        *(v0 + 1464) = v336;
        *v336 = v0;
        v336[1] = sub_1002B09AC;
        v337 = *(v0 + 1256);

        return sub_1002D5B7C(v321, v322, v337);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v477, qword_10177A818);
      v324 = Logger.logObject.getter();
      v325 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v324, v325))
      {
        v326 = swift_slowAlloc();
        *v326 = 0;
        _os_log_impl(&_mh_execute_header, v324, v325, "Missing share id in payload.", v326, 2u);
      }

      v314 = *(v0 + 1384);

      sub_1002DBBF0(v314, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v113 = *(v0 + 1408) + 1;
      if (v113 == *(v0 + 1400))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    swift_once();
  }

  *(v0 + 1552) = v105;
  v306 = *(v0 + 1536);
  if (v105 >= *(v306 + 16))
  {
    goto LABEL_325;
  }

  v97 = *(v0 + 1480);
  v307 = v97 >> 62;
  v308 = v306 + 24 * v105;
  v309 = *(v308 + 32);
  *(v0 + 1560) = v309;
  v96 = *(v308 + 40);
  *(v0 + 1568) = v96;
  v310 = *(v308 + 48);
  *(v0 + 1580) = *(v308 + 52);
  *(v0 + 1576) = v310;
  if ((v97 >> 62) > 1)
  {
    if (v307 != 2)
    {
      v312 = 0;
      v95 = 0;
      v313 = 0;
      v311 = 0;
      goto LABEL_236;
    }

    v327 = *(v0 + 1472);
    v95 = *(v327 + 16);
    v312 = *(v327 + 24);
  }

  else
  {
    if (!v307)
    {
      v95 = 0;
      v311 = 0;
      v312 = BYTE6(v97);
      v313 = BYTE6(v97);
      goto LABEL_236;
    }

    v327 = *(v0 + 1472);
    v312 = v327 >> 32;
    v95 = v327;
  }

  sub_10002E98C(v327, v97);
  if (v312 < v95)
  {
    goto LABEL_326;
  }

  v97 = *(v0 + 1480);
  v338 = *(v0 + 1472);
  if (v97 >> 62 == 2)
  {
    v311 = *(v338 + 16);
    v313 = *(v338 + 24);
  }

  else
  {
    v313 = v338 >> 32;
    v311 = v338;
  }

LABEL_236:
  if (v313 < v312 || v312 < v311)
  {
    goto LABEL_327;
  }

  if (__OFSUB__(v312, v95))
  {
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  if ((v312 - v95) >= 0x39)
  {
    v340 = v95 + 57;
    if (__OFADD__(v95, 57))
    {
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
      swift_once();
      v365 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v366 = swift_allocObject();
      *(v366 + 16) = xmmword_101385D80;
      *v96 = v97;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v367 = String.init<A>(describing:)();
      v369 = v368;
      *(v366 + 56) = &type metadata for String;
      *(v366 + 64) = sub_100008C00();
      *(v366 + 32) = v367;
      *(v366 + 40) = v369;
      os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v365, "Error deriving advertisementKey: %@", 35, 2, v366);

      sub_1001BAF88();
      v398 = swift_allocError();
      *v370 = 0;
      swift_willThrow();

      goto LABEL_272;
    }

    v341 = v97 >> 62;
    if ((v97 >> 62) > 1)
    {
      if (v341 == 2)
      {
        v345 = *(v0 + 1472);
        v342 = *(v345 + 16);
        v343 = *(v345 + 24);
      }

      else
      {
        v343 = 0;
        v342 = 0;
      }
    }

    else if (v341)
    {
      v342 = *(v0 + 1472);
      v343 = v342 >> 32;
      v342 = v342;
    }

    else
    {
      v342 = 0;
      v343 = BYTE6(v97);
    }

    if (v343 < v340 || v340 < v342)
    {
      goto LABEL_338;
    }

    v353 = 0;
    if (v341 <= 1)
    {
      if (v341)
      {
        v353 = *(v0 + 1472);
      }

LABEL_263:
      if (v340 >= v353)
      {
        goto LABEL_264;
      }

      goto LABEL_329;
    }

    if (v341 != 2)
    {
      goto LABEL_263;
    }

    v344 = *(v0 + 1472);
LABEL_262:
    v353 = *(v344 + 16);
    goto LABEL_263;
  }

  v339 = v97 >> 62;
  if ((v97 >> 62) <= 1)
  {
    if (!v339)
    {
      goto LABEL_264;
    }

    v352 = *(v0 + 1472);
    v340 = v352 >> 32;
    v353 = v352;
    goto LABEL_263;
  }

  if (v339 == 2)
  {
    v344 = *(v0 + 1472);
    v340 = *(v344 + 24);
    goto LABEL_262;
  }

LABEL_264:
  v354 = *(v0 + 1472);
  sub_100017D5C(v309, v96);
  sub_100017D5C(v309, v96);
  v355 = Data._Representation.subscript.getter();
  v357 = v356;
  sub_100006654(v354, v97);
  v358 = v357 >> 62;
  if ((v357 >> 62) > 1)
  {
    if (v358 != 2)
    {
      goto LABEL_275;
    }

    v360 = *(v355 + 16);
    v359 = *(v355 + 24);
    v147 = __OFSUB__(v359, v360);
    v361 = v359 - v360;
    if (!v147)
    {
      if (v361 != 57)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

    __break(1u);
    goto LABEL_342;
  }

  if (v358)
  {
    if (!__OFSUB__(HIDWORD(v355), v355))
    {
      if (HIDWORD(v355) - v355 != 57)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

LABEL_342:
    __break(1u);
    swift_once();
    v346 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v347 = swift_allocObject();
    *(v347 + 16) = v404;
    *v402 = v97;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v348 = String.init<A>(describing:)();
    v350 = v349;
    *(v347 + 56) = &type metadata for String;
    *(v347 + 64) = sub_100008C00();
    *(v347 + 32) = v348;
    *(v347 + 40) = v350;
    os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v346, "Error deriving advertisementKey: %@", 35, 2, v347);

    sub_1001BAF88();
    v382 = swift_allocError();
    *v351 = 0;
    swift_willThrow();

LABEL_292:
    v480 = 0;
    v481 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v384 = v481;
    *(v0 + 472) = v480;
    *(v0 + 480) = v384;
    v385._countAndFlagsBits = 0xD000000000000021;
    v385._object = 0x800000010134CB30;
    String.append(_:)(v385);
    *(v0 + 584) = v382;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (BYTE6(v357) != 57)
  {
LABEL_275:
    v373 = v355;
    v374 = v357;
LABEL_276:
    sub_100016590(v373, v374);
    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_271:
  v362 = sub_100A7A194(v355, v357, 0, 0);
  v363 = sub_100A7829C(v362, 0, 2);
  *(v0 + 1584) = v363;
  *(v0 + 1592) = v364;
  v376 = v363;
  v377 = v364;
  result = CCECCryptorRelease();
  v378 = v377 >> 62;
  if ((v377 >> 62) <= 1)
  {
    if (v378)
    {
      LODWORD(v379) = HIDWORD(v376) - v376;
      if (__OFSUB__(HIDWORD(v376), v376))
      {
        goto LABEL_346;
      }

      v379 = v379;
    }

    else
    {
      v379 = BYTE6(v377);
    }

    goto LABEL_302;
  }

  if (v378 != 2)
  {
    v395 = 0;
    goto LABEL_315;
  }

  v387 = v376[2];
  v386 = v376[3];
  v147 = __OFSUB__(v386, v387);
  v379 = v386 - v387;
  if (!v147)
  {
LABEL_302:
    if (v379 == 28)
    {
      sub_100016590(v355, v357);
      v391 = swift_task_alloc();
      *(v0 + 1600) = v391;
      *v391 = v0;
      v391[1] = sub_1002BA248;
      v392 = *(v0 + 1528);
      v393 = *(v0 + 1336);
      v394 = *(v0 + 1008);

      return sub_1002D7014(v394, v309, v96, v392, v376, v377, 0, v393);
    }

    if (v378 == 2)
    {
      v397 = v376[2];
      v396 = v376[3];
      v395 = v396 - v397;
      if (!__OFSUB__(v396, v397))
      {
        goto LABEL_315;
      }

      __break(1u);
    }

    else if (v378 == 1)
    {
      if (__OFSUB__(HIDWORD(v376), v376))
      {
        goto LABEL_347;
      }

      v395 = HIDWORD(v376) - v376;
      goto LABEL_315;
    }

    v395 = BYTE6(v377);
LABEL_315:
    sub_100018350();
    v398 = swift_allocError();
    *v399 = 28;
    *(v399 + 8) = v395;
    *(v399 + 16) = 0;
    swift_willThrow();
    sub_100016590(v376, v377);
LABEL_272:
    v480 = 0;
    v481 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v371 = v481;
    *(v0 + 504) = v480;
    *(v0 + 512) = v371;
    v372._countAndFlagsBits = 0xD000000000000021;
    v372._object = 0x800000010134CB30;
    String.append(_:)(v372);
    *(v0 + 552) = v398;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  __break(1u);
  v388 = *(v0 + 792);
  v389 = *(v0 + 712);

  sub_100016590(v309, v355);

  sub_100016590(v464, v451);

  sub_1002DBBF0(v388, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  sub_1002DBBF0(v389, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

  v390 = *(v0 + 8);

  return v390();
}

uint64_t sub_1002D5B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for EncryptedData();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle(0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5D30, v3, 0);
}

uint64_t sub_1002D5D30()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_1000D2A70(v0[13], v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[21], &qword_1016980D0, &unk_10138F3B0);
    v0[30] = 0;
    v0[31] = 0xF000000000000000;
    v0[29] = 0;
    v4 = *(v0[14] + 136);
    v0[32] = v4;

    return _swift_task_switch(sub_1002D6074, v4, 0);
  }

  else
  {
    (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_1002D5EA0;
    v6 = v0[24];
    v8 = v0[11];
    v7 = v0[12];

    return sub_100CA0AE4(v8, v7, v6);
  }
}

uint64_t sub_1002D5EA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[26] = v2;

  v7 = v6[14];
  if (v2)
  {
    v8 = sub_1002D6F70;
  }

  else
  {
    v6[27] = a2;
    v6[28] = a1;
    v8 = sub_1002D5FE0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002D5FE0()
{
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  v1 = *(v0 + 208);
  *(v0 + 240) = vextq_s8(*(v0 + 216), *(v0 + 216), 8uLL);
  *(v0 + 232) = v1;
  v2 = *(*(v0 + 112) + 136);
  *(v0 + 256) = v2;

  return _swift_task_switch(sub_1002D6074, v2, 0);
}

uint64_t sub_1002D6074()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1002D6160;
  v3 = *(v0 + 256);

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_1002D6160()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_1002D6278, v1, 0);
}

uint64_t sub_1002D6278()
{
  v1 = v0[14];
  v0[34] = v0[10];
  return _swift_task_switch(sub_1002D629C, v1, 0);
}

uint64_t sub_1002D629C()
{
  v1 = v0[31];
  if (v1 >> 60 == 15)
  {
    v2 = v0[34];
    if (v2[2])
    {
      v0[35] = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1006072E8(v2);
      }

      v0[36] = v2;
      v3 = v2[2];
      if (v3)
      {
        v4 = v0[20];
        v5 = v0[18];
        v6 = v0[14];
        v7 = v3 - 1;
        v8 = v2 + ((*(v0[19] + 80) + 32) & ~*(v0[19] + 80)) + *(v0[19] + 72) * v7;
        v2[2] = v7;
        sub_1002DB7C8(v8, v4, type metadata accessor for MemberSharingCircle);
        v0[37] = *(v6 + 128);
        v9 = *(v5 + 28);
        v10 = swift_task_alloc();
        v0[38] = v10;
        *v10 = v0;
        v10[1] = sub_1002D66C0;

        return sub_100C7BA0C((v0 + 2), v4 + v9);
      }

      __break(1u);
    }

    else
    {
      sub_10002E98C(v0[30], v1);
      if (qword_101694510 == -1)
      {
LABEL_18:
        v22 = type metadata accessor for Logger();
        sub_1000076D4(v22, qword_10177A818);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Did not find Circle Shared Secret to decrypt Private Key after %ld attempts.", v25, 0xCu);
        }

        sub_100006654(v0[30], v0[31]);

        v26 = 0;
        v27 = 0xF000000000000000;
        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  sub_100017D5C(v0[30], v1);
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177A818);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Found decryption key after %ld attempts.", v18, 0xCu);
  }

  v19 = sub_10049BD68(v13, v12);
  if (!v14)
  {
    v26 = v19;
    v27 = v20;
    sub_100006654(v13, v12);

LABEL_22:

    v28 = v0[1];

    return v28(v26, v27);
  }

  sub_100006654(v13, v12);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002D66C0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2[43] = v0;
    v3 = v2[14];
    v4 = sub_1002D6CBC;
  }

  else
  {
    v3 = v2[37];
    v4 = sub_1002D67E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D67E8()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    v3 = swift_allocError();
    *v4 = 9;
    swift_willThrow();
LABEL_5:
    sub_1001BAF34((v0 + 2));
    v0[43] = v3;
    v5 = v0[14];
    v6 = sub_1002D6CBC;
    goto LABEL_6;
  }

  v15 = v0[39];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  sub_10002E98C(v2, v1);
  sub_100017D5C(v2, v1);
  PropertyListDecoder.init()();
  sub_1002DB700(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v3 = v15;
  if (v15)
  {

    sub_100006654(v2, v1);
    sub_100006654(v2, v1);
    goto LABEL_5;
  }

  v7 = EncryptedData.decrypt(key:)();
  v0[40] = 0;
  v8 = v0[16];
  v16 = v0[17];
  v9 = v0[15];
  v10 = v7;
  v12 = v11;
  v13 = v0[14];

  v0[41] = v12;
  v0[42] = v10;
  sub_100006654(v2, v1);
  sub_100006654(v2, v1);
  sub_1001BAF34((v0 + 2));
  (*(v8 + 8))(v16, v9);
  v6 = sub_1002D6A60;
  v5 = v13;
LABEL_6:

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D6A60()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[20];
  sub_100006654(v0[30], v0[31]);
  sub_1002DBBF0(v3, type metadata accessor for MemberSharingCircle);
  sub_100017D5C(v2, v1);
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[35];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A818);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found decryption key after %ld attempts.", v11, 0xCu);
  }

  v12 = sub_10049BD68(v5, v4);
  if (v6)
  {
    sub_100006654(v5, v4);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v12;
    v17 = v13;
    sub_100006654(v5, v4);

    v18 = v0[1];

    return v18(v16, v17);
  }
}

uint64_t sub_1002D6CBC()
{
  v1 = v0[36];
  sub_1002DBBF0(v0[20], type metadata accessor for MemberSharingCircle);

  v2 = *(v1 + 16);
  v4 = v0[35];
  v3 = v0[36];
  if (v2)
  {
    v0[35] = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_4:
      v0[36] = v3;
      v5 = v3[2];
      if (v5)
      {
        v6 = v0[20];
        v7 = v0[18];
        v8 = v0[14];
        v9 = v5 - 1;
        v10 = v3 + ((*(v0[19] + 80) + 32) & ~*(v0[19] + 80)) + *(v0[19] + 72) * v9;
        v3[2] = v9;
        sub_1002DB7C8(v10, v6, type metadata accessor for MemberSharingCircle);
        v0[37] = *(v8 + 128);
        v11 = *(v7 + 28);
        v12 = swift_task_alloc();
        v0[38] = v12;
        *v12 = v0;
        v12[1] = sub_1002D66C0;

        return sub_100C7BA0C((v0 + 2), v6 + v11);
      }

      __break(1u);
      goto LABEL_17;
    }

    v3 = sub_1006072E8(v3);
    goto LABEL_4;
  }

  sub_10002E98C(v0[30], v0[31]);
  if (qword_101694510 != -1)
  {
LABEL_17:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177A818);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did not find Circle Shared Secret to decrypt Private Key after %ld attempts.", v17, 0xCu);
  }

  sub_100006654(v0[30], v0[31]);

  v18 = v0[1];

  return v18(0, 0xF000000000000000);
}

uint64_t sub_1002D6F70()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002D7014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 416) = a7;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 64) = a1;
  *(v9 + 72) = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = type metadata accessor for RawSearchResult(0);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *(v9 + 216) = v11;
  *(v9 + 224) = *(v11 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v9 + 296) = v12;
  *(v9 + 304) = *(v12 - 8);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = type metadata accessor for BeaconPayloadv1(0);
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1002D732C, v8, 0);
}

uint64_t sub_1002D732C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 80);
  v5 = *(*(v3 + 120) + 136);
  *(v3 + 376) = v5;
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v8 = *(*(v3 + 72) + 16);
  v9 = *(*(v3 + 72) + 24);
  v7 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
LABEL_8:
    v10 = *(v3 + 72);
    v11 = *(v3 + 76);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (v12)
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v7 = v13;
  }

LABEL_11:
  v15 = *(v3 + 96);
  v14 = *(v3 + 104);
  v16 = *(v3 + 88);
  v17 = *(v3 + 72);
  sub_100A2A240(3);
  v19 = v18;
  v20 = v16;
  sub_100017D5C(v17, v4);
  sub_100017D5C(v15, v14);
  v21 = *(v3 + 96);
  v22 = *(v3 + 104);
  v24 = *(v3 + 80);
  v23 = *(v3 + 88);
  v25 = *(v3 + 72);
  if (v7 >= v19)
  {
    sub_100A2AA58(v23, v25, v24, v21, v22, *(v3 + 344));
    v26 = (v3 + 344);
  }

  else
  {
    sub_100A2B118(v23, v25, v24, v21, v22, *(v3 + 352));
    v26 = (v3 + 352);
  }

  v28 = *(v3 + 360);
  v27 = *(v3 + 368);
  v29 = *(v3 + 416);
  sub_1002DB7C8(*v26, v28, type metadata accessor for BeaconPayloadv1);
  sub_1002DB7C8(v28, v27, type metadata accessor for BeaconPayloadv1);
  if ((v29 & 1) == 0)
  {
    a1 = sub_1002D7A7C;
    a2 = v5;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  v30 = *(v3 + 288);
  v31 = *(v3 + 216);
  v32 = *(v3 + 224);
  (*(*(v3 + 304) + 16))(*(v3 + 328), *(v3 + 112), *(v3 + 296));
  (*(v32 + 56))(v30, 1, 1, v31);
  v33 = *(v3 + 368);
  v34 = *(v3 + 336);
  v61 = *(v3 + 288);
  v35 = *(v3 + 272);
  v67 = *(v3 + 264);
  v36 = *(v3 + 176);
  v38 = *(v3 + 152);
  v37 = *(v3 + 160);
  v39 = *(v3 + 136);
  v63 = *(v3 + 168);
  v65 = *(v3 + 128);
  v69 = *(v33 + v34[10]);
  v40 = *(v37 + 16);
  v40(v36, v33 + v34[5], v38);
  v41 = *(v33 + v34[7]);
  v42 = *(v33 + v34[8]);
  v43 = *(v33 + v34[9]);
  (*(v37 + 56))(v39, 1, 1, v38);
  sub_1000D2A70(v61, v35, &unk_1016C1120, &qword_1013C49D0);
  v40(v63, v36, v38);
  sub_1000D2A70(v39, v65, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v35, v67, &unk_1016C1120, &qword_1013C49D0);
  UUID.init()();
  v60 = *(v3 + 368);
  v44 = *(v3 + 304);
  v68 = *(v3 + 312);
  v45 = *(v3 + 288);
  v64 = *(v3 + 264);
  v66 = *(v3 + 296);
  v46 = *(v3 + 192);
  v47 = *(v3 + 200);
  v48 = *(v3 + 176);
  v59 = *(v3 + 168);
  v50 = *(v3 + 152);
  v49 = *(v3 + 160);
  v51 = *(v3 + 136);
  v62 = *(v3 + 128);
  sub_10000B3A8(*(v3 + 272), &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v51, &unk_101696900, &unk_10138B1E0);
  (*(v49 + 8))(v48, v50);
  sub_10000B3A8(v45, &unk_1016C1120, &qword_1013C49D0);
  sub_1002DBBF0(v60, type metadata accessor for BeaconPayloadv1);
  *v47 = v69;
  (*(v49 + 32))(&v47[v46[5]], v59, v50);
  *&v47[v46[6]] = v41;
  *&v47[v46[7]] = v42;
  *&v47[v46[8]] = v43;
  v47[v46[9]] = 15;
  sub_1000D2AD8(v62, &v47[v46[10]], &unk_101696900, &unk_10138B1E0);
  sub_1000D2AD8(v64, &v47[v46[11]], &unk_1016C1120, &qword_1013C49D0);
  v52 = *(v44 + 32);
  v52(&v47[v46[12]], v68, v66);
  *&v47[v46[13]] = 256;
  v53 = sub_1000BC4D4(&qword_10169C970, &qword_101398A18);
  v54 = *(v3 + 200);
  v55 = *(v3 + 64);
  v56 = *(v53 + 48);
  v52(v55, *(v3 + 328), *(v3 + 296));
  sub_1002DB7C8(v54, &v55[v56], type metadata accessor for RawSearchResult);
  (*(*(v53 - 8) + 56))(v55, 0, 1, v53);

  v57 = *(v3 + 8);

  return v57();
}

uint64_t sub_1002D7A7C()
{

  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1002D7B5C;
  v3 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1002D7B5C()
{
  v1 = *(*v0 + 376);

  return _swift_task_switch(sub_1002D7C74, v1, 0);
}

uint64_t sub_1002D7C74()
{
  v1 = v0[15];
  v0[49] = v0[6];
  return _swift_task_switch(sub_1002D7C98, v1, 0);
}

uint64_t sub_1002D7C98()
{
  v1 = v0[49];
  v3 = v0[12];
  v2 = v0[13];
  v4 = swift_allocObject();
  v0[50] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_100017D5C(v3, v2);

  v5 = swift_task_alloc();
  v0[51] = v5;
  v6 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  *v5 = v0;
  v5[1] = sub_1002D7DAC;

  return unsafeBlocking<A>(_:)(v0 + 7, sub_1002DB6C4, v4, v6);
}

uint64_t sub_1002D7DAC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1002D7ED8, v1, 0);
}

uint64_t sub_1002D7ED8()
{
  v135 = v0;
  v1 = v0;
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3 >= 2)
  {
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v4 = v0[13];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A818);
    sub_100017D5C(v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100016590(v5, v4);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[12];
      v9 = v1[13];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v134[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v1[4] = v10;
      v1[5] = v9;
      sub_10002EE9C();
      v13 = RawRepresentable<>.hexString.getter();
      v15 = sub_1000136BC(v13, v14, v134);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Multiple beacons reconciled for advertisement %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    v3 = *(v2 + 16);
  }

  if (v3)
  {
    v16 = v1[36];
    v18 = v1[31];
    v17 = v1[32];
    v20 = v1[27];
    v19 = v1[28];
    sub_1002DB760(v2 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_1002DB7C8(v18, v17, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1002DB760(v17, v16, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v19 + 56))(v16, 0, 1, v20);
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v21 = v1[40];
    v22 = v1[37];
    v23 = v1[38];
    v24 = v1[32];
    v26 = v1[29];
    v25 = v1[30];
    v27 = v1[14];
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177A818);
    sub_1002DB760(v24, v25, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1002DB760(v24, v26, type metadata accessor for BeaconKeyManager.IndexInformation);
    v131 = *(v23 + 16);
    v131(v21, v27, v22);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[40];
    v33 = v1[37];
    v34 = v1[38];
    v36 = v1[29];
    v35 = v1[30];
    if (v31)
    {
      v120 = v1[27];
      v127 = v1[40];
      v37 = swift_slowAlloc();
      v134[0] = swift_slowAlloc();
      *v37 = 141559043;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v30;
      v40 = v39;
      sub_1002DBBF0(v35, type metadata accessor for BeaconKeyManager.IndexInformation);
      v41 = sub_1000136BC(v38, v40, v134);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2082;
      sub_1000035D0((v36 + *(v120 + 20)), *(v36 + *(v120 + 20) + 24));
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_1002DBBF0(v36, type metadata accessor for BeaconKeyManager.IndexInformation);
      v45 = sub_1000136BC(v42, v44, v134);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v34 + 8))(v127, v33);
      v49 = sub_1000136BC(v46, v48, v134);

      *(v37 + 44) = v49;
      _os_log_impl(&_mh_execute_header, v29, v124, "Reconciled from location fetch - reconciled Beacon: %{private,mask.hash}s,\nindex: %{public}s - initial beacon: %{private,mask.hash}s.", v37, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v34 + 8))(v32, v33);
      sub_1002DBBF0(v35, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_1002DBBF0(v36, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    v75 = v1[41];
    v76 = v1[37];
    v77 = v1[32];
    v78 = (v77 + *(v1[27] + 20));
    v79 = v78[3];
    v80 = v78[4];
    sub_1000035D0(v78, v79);
    v81 = sub_10002BD40(v79, v80);

    v131(v75, v77, v76);
    sub_1002DBBF0(v77, type metadata accessor for BeaconKeyManager.IndexInformation);
    if (v81)
    {
      v82 = 13;
    }

    else
    {
      v82 = 7;
    }

    v130 = v82;
    v83 = v1[46];
    v84 = v1[42];
    v85 = v1[34];
    v86 = v1[22];
    v112 = v1[36];
    v115 = v1[21];
    v87 = v1[19];
    v88 = v1[20];
    v89 = v1[17];
    v118 = v1[16];
    v122 = v1[33];
    v128 = *(v83 + v84[10]);
    v90 = *(v88 + 16);
    v90(v86, v83 + v84[5], v87);
    v91 = *(v83 + v84[7]);
    v92 = *(v83 + v84[8]);
    v93 = *(v83 + v84[9]);
    (*(v88 + 56))(v89, 1, 1, v87);
    sub_1000D2A70(v112, v85, &unk_1016C1120, &qword_1013C49D0);
    v90(v115, v86, v87);
    sub_1000D2A70(v89, v118, &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v85, v122, &unk_1016C1120, &qword_1013C49D0);
    if (v81)
    {
      if (qword_101694E00 != -1)
      {
        swift_once();
      }

      v94 = v1[39];
      v95 = v1[37];
      v96 = sub_1000076D4(v95, qword_10177BF20);
      v131(v94, v96, v95);
    }

    else
    {
      UUID.init()();
    }

    v62 = v1 + 25;
    v97 = v1[25];
    v116 = v1[46];
    v98 = v1[38];
    v133 = v1[39];
    v99 = v1[36];
    v123 = v1[33];
    v126 = v1[37];
    v100 = v1[24];
    v101 = v1[22];
    v113 = v1[21];
    v102 = v1[19];
    v103 = v1[20];
    v104 = v1[17];
    v119 = v1[16];
    sub_10000B3A8(v1[34], &unk_1016C1120, &qword_1013C49D0);
    sub_10000B3A8(v104, &unk_101696900, &unk_10138B1E0);
    (*(v103 + 8))(v101, v102);
    sub_10000B3A8(v99, &unk_1016C1120, &qword_1013C49D0);
    sub_1002DBBF0(v116, type metadata accessor for BeaconPayloadv1);
    *v97 = v128;
    (*(v103 + 32))(&v97[v100[5]], v113, v102);
    *&v97[v100[6]] = v91;
    *&v97[v100[7]] = v92;
    *&v97[v100[8]] = v93;
    v97[v100[9]] = v130;
    sub_1000D2AD8(v119, &v97[v100[10]], &unk_101696900, &unk_10138B1E0);
    sub_1000D2AD8(v123, &v97[v100[11]], &unk_1016C1120, &qword_1013C49D0);
    v73 = *(v98 + 32);
    v73(&v97[v100[12]], v133, v126);
    *&v97[v100[13]] = 256;
    v72 = sub_1000BC4D4(&qword_10169C970, &qword_101398A18);
    v74 = v1 + 41;
  }

  else
  {

    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v51 = v1[12];
    v50 = v1[13];
    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177A818);
    sub_100017D5C(v51, v50);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    sub_100016590(v51, v50);
    if (os_log_type_enabled(v53, v54))
    {
      v56 = v1[12];
      v55 = v1[13];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v134[0] = v58;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      v1[2] = v56;
      v1[3] = v55;
      sub_10002EE9C();
      v59 = RawRepresentable<>.hexString.getter();
      v61 = sub_1000136BC(v59, v60, v134);

      *(v57 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Cannot reconcile advertisement %{private,mask.hash}s.", v57, 0x16u);
      sub_100007BAC(v58);
    }

    v62 = v1 + 26;
    v63 = v1[26];
    v64 = v1[46];
    v65 = v1[42];
    v132 = v1[38];
    v114 = v1[28];
    v117 = v1[35];
    v121 = v1[27];
    v66 = v1[24];
    v67 = v1[19];
    v110 = v1[18];
    v111 = v1[23];
    v129 = *(v64 + v65[10]);
    v125 = v1[20];
    v68 = *(v125 + 16);
    v68();
    v69 = *(v64 + v65[7]);
    v70 = *(v64 + v65[8]);
    v71 = *(v64 + v65[9]);
    (*(v125 + 56))(v110, 1, 1, v67);
    (*(v114 + 56))(v117, 1, 1, v121);
    (v68)(&v63[v66[5]], v111, v67);
    sub_1000D2A70(v110, &v63[v66[10]], &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v117, &v63[v66[11]], &unk_1016C1120, &qword_1013C49D0);
    UUID.init()();

    sub_10000B3A8(v117, &unk_1016C1120, &qword_1013C49D0);
    sub_10000B3A8(v110, &unk_101696900, &unk_10138B1E0);
    (*(v125 + 8))(v111, v67);
    sub_1002DBBF0(v64, type metadata accessor for BeaconPayloadv1);
    *v63 = v129;
    *&v63[v66[6]] = v69;
    *&v63[v66[7]] = v70;
    *&v63[v66[8]] = v71;
    v63[v66[9]] = 7;
    *&v63[v66[13]] = 256;
    v72 = sub_1000BC4D4(&qword_10169C970, &qword_101398A18);
    v73 = *(v132 + 16);
    v74 = v1 + 14;
  }

  v105 = *v62;
  v106 = v1[8];
  v107 = *(v72 + 48);
  v73(v106, *v74, v1[37]);
  sub_1002DB7C8(v105, &v106[v107], type metadata accessor for RawSearchResult);
  (*(*(v72 - 8) + 56))(v106, 0, 1, v72);

  v108 = v1[1];

  return v108();
}

uint64_t sub_1002D8D4C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  sub_100017D5C(a1, a2);
  sub_10002EA98(57, a1, a2, v17);
  sub_100496F68(v17[0], v17[1], &v18);
  v9 = v19;
  if (v19 >> 60 == 15)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = v18;
    v11 = PublicKey.advertisement.getter(v18, v19);
    v13 = v12;
    sub_100006654(v10, v9);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = sub_1012DD334(v11, v13, v8);
    sub_100016590(v11, v13);
    result = sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    *a3 = v15;
  }

  return result;
}

uint64_t sub_1002D8F14@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_1012DD334(a1, a2, v8);
  result = sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
  *a3 = v10;
  return result;
}

uint64_t sub_1002D901C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for KeyDropImportedLocationFetchResponse(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002D913C, v2, 0);
}

uint64_t sub_1002D913C()
{
  v31 = v0;
  if (qword_101694518 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for Logger();
  v0[14] = sub_1000076D4(v7, qword_10177A830);
  v8 = *(v4 + 16);
  v0[15] = v8;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[7];
  v14 = v0[8];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 141558787;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1000136BC(v17, v19, &v30);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v30);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "fetchImportedBeaconLocation for shareIdentifier %{private,mask.hash}s,\nbeaconIdentifier %{private,mask.hash}s.", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = *(v0[5] + 136);
  v0[17] = v27;

  return _swift_task_switch(sub_1002D945C, v27, 0);
}

uint64_t sub_1002D945C()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1002D953C;
  v3 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1002D953C()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1002D9654, v1, 0);
}

uint64_t sub_1002D9654()
{
  v1 = v0[5];
  v0[19] = v0[2];
  return _swift_task_switch(sub_1002D9678, v1, 0);
}

uint64_t sub_1002D9678()
{
  v0[20] = *(v0[19] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1002D9754;
  v3 = v0[11];
  v5 = v0[3];
  v4 = v0[4];

  return sub_10068D5D4(v5, v4, v3);
}

uint64_t sub_1002D9754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  v5 = v3[11];
  v6 = v3[8];
  v7 = v3[7];
  v8 = v3[5];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v1)
  {
    v10(v5, v7);

    v12 = sub_1002DA49C;
  }

  else
  {
    v4[24] = v10;
    v4[25] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);

    v12 = sub_1002D991C;
  }

  return _swift_task_switch(v12, v8, 0);
}

uint64_t sub_1002D991C()
{
  v24 = v0;
  v1 = *(v0 + 176);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];

    if (v2)
    {
      v4 = *(v0 + 40);
      (*(v0 + 120))(*(v0 + 80), *(v0 + 24), *(v0 + 56));
      v5 = *(v4 + 256);

      v6 = swift_task_alloc();
      *(v0 + 208) = v6;
      *v6 = v0;
      v6[1] = sub_1002D9C58;
      v7 = *(v0 + 80);

      return sub_100F076E0(v7, v3, v2, v5);
    }
  }

  else
  {
  }

  (*(v0 + 120))(*(v0 + 72), *(v0 + 32), *(v0 + 56));
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 192);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v12(v13, v14);
    v20 = sub_1000136BC(v17, v19, &v23);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetch token missing for imported beacon %{private,mask.hash}s. Cannot fetch locations.", v15, 0x16u);
    sub_100007BAC(v16);
  }

  else
  {

    v12(v13, v14);
  }

  sub_1001BAB50();
  swift_allocError();
  *v21 = 11;
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1002D9C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[27] = a1;
  v6[28] = a2;
  v6[29] = a3;
  v6[30] = v3;

  v7 = v5[5];
  if (v3)
  {
    v8 = sub_1002D9F78;
  }

  else
  {
    v8 = sub_1002D9D90;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002D9D90()
{
  type metadata accessor for KeyDropInterface();
  v1 = swift_allocObject();
  v0[31] = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1002D9E50;
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[6];

  return sub_100F09BA0(v6, v5, v3, v4);
}

uint64_t sub_1002D9E50()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1002DA544;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1002DA020;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D9F78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DA020()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1002DA0BC;
  v2 = *(v0 + 24);

  return sub_100C85380(v2);
}

uint64_t sub_1002DA0BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[35] = a1;
  v6[36] = a2;
  v6[37] = v2;

  if (v2)
  {
    v8 = v6[5];

    return _swift_task_switch(sub_1002DA610, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v6[38] = v9;
    *v9 = v7;
    v9[1] = sub_1002DA260;
    v10 = v6[6];
    v11 = v6[4];

    return sub_1002DA7DC(v11, v10, a1, a2);
  }
}

uint64_t sub_1002DA260(uint64_t a1)
{
  v4 = *v2;
  v4[39] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1002DA6F0;
  }

  else
  {
    v4[40] = a1;
    v6 = sub_1002DA39C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002DA39C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[6];
  sub_100016590(v0[35], v0[36]);

  sub_100016590(v1, v2);
  sub_1002DBBF0(v3, type metadata accessor for KeyDropImportedLocationFetchResponse);

  v4 = v0[1];
  v5 = v0[40];

  return v4(v5);
}

uint64_t sub_1002DA49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DA544()
{
  v2 = v0[28];
  v1 = v0[29];

  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002DA610()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[6];

  sub_100016590(v1, v2);
  sub_1002DBBF0(v3, type metadata accessor for KeyDropImportedLocationFetchResponse);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002DA6F0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[6];
  sub_100016590(v0[35], v0[36]);

  sub_100016590(v1, v2);
  sub_1002DBBF0(v3, type metadata accessor for KeyDropImportedLocationFetchResponse);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002DA7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v5[23] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5[24] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for RawSearchResult(0);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_1002DAA14, v4, 0);
}

uint64_t sub_1002DAA14()
{
  v26 = v0;
  if (qword_101694518 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for Logger();
  *(v0 + 304) = sub_1000076D4(v5, qword_10177A830);
  v6 = *(v3 + 16);
  *(v0 + 312) = v6;
  *(v0 + 320) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Begin rawSearchResultsForImportedLocations for beaconIdentifier %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  *(v0 + 328) = v17;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 336) = JSONDecoder.init()();
  sub_1000D27EC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  *(v0 + 344) = 0;
  v19 = *(v0 + 176);
  v20 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v20;
  v21 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v21;
  v22 = *(v19 + 128);
  *(v0 + 352) = v22;

  return _swift_task_switch(sub_1002DAD88, v22, 0);
}

uint64_t sub_1002DAD88()
{
  v1 = *(v0 + 344);
  sub_100D012F4((v0 + 16), *(v0 + 160), *(v0 + 168));
  *(v0 + 360) = v1;
  v2 = *(v0 + 176);
  if (v1)
  {
    v3 = sub_1002DB53C;
  }

  else
  {
    v3 = sub_1002DAE1C;
  }

  return _swift_task_switch(v3, v2, 0);
}

void sub_1002DAE1C()
{
  v58 = v0;
  v53 = v0[39];
  v1 = v0[33];
  v50 = v0[36];
  v51 = v0[34];
  v2 = v0[31];
  v52 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v47 = v0[23];
  v48 = v0[18];
  v8 = *(v5 + 16);
  v8(v4, &v1[*(v0[32] + 28)], v6);
  v10 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 2);
  (*(v5 + 56))(v7, 1, 1, v6);
  v12 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  (*(*(v12 - 8) + 56))(v47, 1, 1, v12);
  v8(&v2[v3[5]], v4, v6);
  sub_1000D2A70(v7, &v2[v3[10]], &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v47, &v2[v3[11]], &unk_1016C1120, &qword_1013C49D0);
  UUID.init()();
  sub_10000B3A8(v47, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  (*(v5 + 8))(v4, v6);
  *v2 = 0;
  *&v2[v3[6]] = v10;
  *&v2[v3[7]] = v9;
  *&v2[v3[8]] = v11;
  v2[v3[9]] = 0;
  *&v2[v3[13]] = 256;
  v53(v50, v48, v51);
  sub_1002DB760(v2, v52, type metadata accessor for RawSearchResult);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[41];
    v16 = v0[36];
    v17 = v0[34];
    v54 = v0[30];
    v55 = v0[45];
    v18 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v15(v16, v17);
    v22 = sub_1000136BC(v19, v21, &v56);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v23 = objc_autoreleasePoolPush();
    sub_100D1601C(v54, v57);
    if (v55)
    {

      objc_autoreleasePoolPop(v23);
      return;
    }

    v28 = v0[30];
    objc_autoreleasePoolPop(v23);
    v29 = v57[0];
    v30 = v57[1];
    sub_1002DBBF0(v28, type metadata accessor for RawSearchResult);
    v31 = sub_1000136BC(v29, v30, &v56);

    *(v18 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v13, v14, "rawSearchResultsForImportedLocations for beaconIdentifier %{private,mask.hash}s complete.%s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[41];
    v25 = v0[36];
    v26 = v0[34];
    v27 = v0[30];

    v24(v25, v26);
    sub_1002DBBF0(v27, type metadata accessor for RawSearchResult);
  }

  v32 = v0[39];
  v33 = v0[34];
  v49 = v0[33];
  v46 = v0[31];
  v34 = v0[29];
  v35 = v0[18];
  sub_1000BC4D4(&qword_10169C9D0, &qword_101398A88);
  v36 = (sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280) - 8);
  v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_101385D80;
  v39 = v38 + v37;
  v40 = v36[14];
  v32(v39, v35, v33);
  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_101385D80;
  sub_1002DB760(v46, v42 + v41, type metadata accessor for RawSearchResult);
  v43 = sub_10112A090(v42);
  swift_setDeallocating();
  sub_1002DBBF0(v42 + v41, type metadata accessor for RawSearchResult);
  swift_deallocClassInstance();
  *(v39 + v40) = v43;
  v44 = sub_1009089B8(v38);
  swift_setDeallocating();
  sub_10000B3A8(v39, &qword_10169C9D8, &qword_1013B3280);
  swift_deallocClassInstance();

  sub_1000D2840((v0 + 2));
  sub_1002DBBF0(v46, type metadata accessor for RawSearchResult);
  sub_1002DBBF0(v49, type metadata accessor for DeviceEventFormat.LocationFormat);

  v45 = v0[1];

  v45(v44);
}

uint64_t sub_1002DB53C()
{

  sub_1000D2840(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DB700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002DB760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DB7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DB930(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002DB9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    __DataStorage._length.getter();
    goto LABEL_8;
  }

  v11 = v10;
  result = __DataStorage._offset.getter();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = a1 - result + v11;
  result = __DataStorage._length.getter();
  if (!v13)
  {
LABEL_8:
    v15 = type metadata accessor for CryptoError();
    sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for CryptoError.memoryFailure(_:), v15);
    return swift_willThrow();
  }

  v14 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v14 != 2 || !__OFSUB__(*(a4 + 24), *(a4 + 16)))
    {
      return CCECCryptorImportKey();
    }

    __break(1u);
  }

  else if (!v14)
  {
    return CCECCryptorImportKey();
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    return CCECCryptorImportKey();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1002DBB68(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002DBBF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002DBC80(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x314B64656573;
      break;
    case 4:
      result = 0x7374726563;
      break;
    case 5:
      result = 7500643;
      break;
    case 6:
      result = 0x69634572656E776FLL;
      break;
    case 7:
      result = 0x69684372656E776FLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x636E6F4E68747561;
      break;
    case 10:
      result = 0x754E6C6169726573;
      break;
    case 11:
      result = 0x6169726553746C61;
      break;
    case 12:
      result = 0x6F636165426D756ELL;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6E55646572616873;
      break;
    case 15:
      result = 0x7461747365747461;
      break;
    case 16:
      result = 0x726F737365636361;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x7372655663657073;
      break;
    case 19:
      result = 0x657261776D726966;
      break;
    case 20:
      result = 0x49746375646F7270;
      break;
    case 21:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002DBEFC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C9E8, &qword_1013991F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1002DDFB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v25, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    v24 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1001022C4(&v24, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v23 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_1000D2A70(&v23, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    v22 = v3[3];
    v13 = v3[3];
    v12 = 3;
    sub_1001022C4(&v22, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v21 = v3[4];
    v13 = v3[4];
    v12 = 4;
    sub_1001022C4(&v21, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v20 = v3[5];
    v13 = v3[5];
    v12 = 5;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[9];
    v13 = v3[9];
    v12 = 9;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = v3[10];
    v13 = v3[10];
    v12 = 10;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = v3[11];
    v13 = v3[11];
    v12 = 11;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 26);
    v11[0] = 13;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[14];
    v13 = v3[14];
    v12 = 15;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[15];
    v13 = v3[15];
    v12 = 16;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v14 = v3[16];
    v13 = v3[16];
    v12 = 17;
    sub_1000D2A70(&v14, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002DC780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002DE2E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002DC7B4(uint64_t a1)
{
  v2 = sub_1002DDFB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002DC7F0(uint64_t a1)
{
  v2 = sub_1002DDFB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002DC880@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[14];
  v3 = a1[15];
  v5 = a1[17];
  v83 = a1[16];
  v84 = v3;
  v56 = v3;
  v57 = v83;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7;
  v80 = a1[2];
  v81 = v7;
  v9 = a1[2];
  v10 = a1[3];
  v62 = v8;
  v63 = v9;
  v11 = a1[3];
  v85 = a1[4];
  v82 = v6;
  v64 = v11;
  v65 = v85;
  v12 = a1[6];
  v78 = a1[5];
  v79 = v10;
  v77 = v12;
  v13 = a1[6];
  v66 = a1[5];
  v67 = v13;
  v14 = a1[8];
  v15 = a1[9];
  v16 = a1[10];
  v58 = v6;
  v59 = v15;
  v74 = v16;
  v75 = v15;
  v17 = a1[11];
  v18 = a1[12];
  v60 = a1[10];
  v61 = v17;
  v72 = v18;
  v73 = v17;
  v19 = a1[12];
  v20 = a1[14];
  v54 = a1[13];
  v55 = v19;
  v70 = v20;
  v71 = v54;
  v21 = *(a1 + 14);
  BYTE8(v68) = *(a1 + 120);
  *&v68 = v21;
  v50 = v14;
  v76 = v14;
  v69 = v5;
  v22 = *(a1 + 37);
  v52 = a1[17];
  v53 = v4;
  if (v22 >> 60 == 15)
  {
    sub_1001022C4(&v85, v51);
    sub_1001022C4(&v84, v51);
    sub_1001022C4(&v83, v51);
    sub_1000D2A70(&v82, v51, &qword_1016A40E0, &unk_101396F30);
    sub_1000D2A70(&v81, v51, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v80, v51, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v79, v51, &qword_1016A0AC0, &unk_1013926A0);
    sub_1001022C4(&v78, v51);
    sub_1001022C4(&v77, v51);
    sub_1000D2A70(&v76, v51, &qword_101699EB8, &qword_101398AA0);
    sub_1001022C4(&v75, v51);
    sub_1001022C4(&v74, v51);
    sub_1001022C4(&v73, v51);
    sub_1001022C4(&v72, v51);
    sub_1001022C4(&v71, v51);
    sub_1000D2A70(&v70, v51, &qword_1016A40E0, &unk_101396F30);
    result = sub_1000D2A70(&v69, v51, &qword_1016A0AC0, &unk_1013926A0);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_15:
    v42 = v67;
    *(a2 + 160) = v66;
    *(a2 + 176) = v42;
    v43 = v63;
    *(a2 + 96) = v62;
    *(a2 + 112) = v43;
    v44 = v65;
    *(a2 + 128) = v64;
    *(a2 + 144) = v44;
    v45 = v59;
    *(a2 + 32) = v58;
    *(a2 + 48) = v45;
    v46 = v61;
    *(a2 + 64) = v60;
    *(a2 + 80) = v46;
    v47 = v57;
    *a2 = v56;
    *(a2 + 16) = v47;
    *(a2 + 192) = v68;
    *(a2 + 208) = v50;
    v48 = v54;
    *(a2 + 224) = v55;
    *(a2 + 240) = v48;
    v49 = v52;
    *(a2 + 256) = v53;
    *(a2 + 272) = 0x302E302E32;
    *(a2 + 280) = 0xE500000000000000;
    *(a2 + 288) = v49;
    *(a2 + 304) = v24;
    *(a2 + 312) = v25;
    *(a2 + 320) = v26;
    *(a2 + 328) = v27;
    return result;
  }

  v28 = *(a1 + 36);
  sub_1001022C4(&v85, v51);
  sub_1001022C4(&v84, v51);
  sub_1001022C4(&v83, v51);
  sub_1000D2A70(&v82, v51, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v81, v51, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v80, v51, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v79, v51, &qword_1016A0AC0, &unk_1013926A0);
  sub_1001022C4(&v78, v51);
  sub_1001022C4(&v77, v51);
  sub_1000D2A70(&v76, v51, &qword_101699EB8, &qword_101398AA0);
  sub_1001022C4(&v75, v51);
  sub_1001022C4(&v74, v51);
  sub_1001022C4(&v73, v51);
  sub_1001022C4(&v72, v51);
  sub_1001022C4(&v71, v51);
  sub_1000D2A70(&v70, v51, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v69, v51, &qword_1016A0AC0, &unk_1013926A0);
  v29 = sub_100313B54(v28, v22);
  v31 = v30;
  v24 = Data.hexString.getter();
  v25 = v32;
  result = sub_100016590(v29, v31);
  v33 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v33 != 2)
    {
LABEL_14:
      v38 = Data.subdata(in:)();
      v40 = v39;
      v26 = Data.hexString.getter();
      v27 = v41;
      result = sub_100016590(v38, v40);
      goto LABEL_15;
    }

    v35 = *(v28 + 16);
    v34 = *(v28 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (!v36)
    {
LABEL_12:
      if (v37 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v33)
  {
    goto LABEL_14;
  }

  LODWORD(v37) = HIDWORD(v28) - v28;
  if (!__OFSUB__(HIDWORD(v28), v28))
  {
    v37 = v37;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DCD00(uint64_t a1, uint64_t a2)
{
  v2[260] = a2;
  v2[259] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[261] = v3;
  v2[262] = *(v3 - 8);
  v2[263] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[264] = v4;
  v2[265] = *(v4 - 8);
  v2[266] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[267] = v5;
  v2[268] = *(v5 - 8);
  v2[269] = swift_task_alloc();

  return _swift_task_switch(sub_1002DCE7C, 0, 0);
}

void sub_1002DCE7C()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[269];
  v7 = v0[268];
  v8 = v0[267];
  v9 = v0[266];
  v46 = v0[265];
  v47 = v0[264];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[257] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[258] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v46 + 8))(v9, v47);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  v0[270] = v33;
  v40 = v0[259];
  sub_1002DDD40(v40, (v0 + 212));
  sub_1002DC880(v40, (v0 + 2));
  sub_1002DDD9C(v40);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v0 + 44, v0 + 2, 0x150uLL);
  sub_1002DDDF0();
  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[271] = 0;
  v0[272] = v41;
  v0[273] = v42;
  v43 = v41;
  v44 = v42;

  sub_100017D5C(v43, v44);
  v45 = swift_task_alloc();
  v0[274] = v45;
  *v45 = v0;
  v45[1] = sub_1002DD5A0;

  sub_100EA0EEC();
}

uint64_t sub_1002DD5A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2200) = a1;
  *(v3 + 2208) = a2;

  return _swift_task_switch(sub_1002DD6A4, 0, 0);
}

uint64_t sub_1002DD6A4()
{
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2104);
  v4 = *(v0 + 2096);
  v5 = *(v0 + 2088);
  *(v0 + 2040) = v2;
  *(v0 + 2048) = v1;
  *(v0 + 2024) = &type metadata for Data;
  *(v0 + 2032) = &protocol witness table for Data;
  *(v0 + 2000) = *(v0 + 2176);
  v6 = sub_1000035D0((v0 + 2000), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 2040);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2000));
  *(v0 + 2216) = *(v0 + 2040);
  *(v0 + 2224) = *(v0 + 2048);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 2232) = v9;
  *(v0 + 2240) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 2248) = v12;
  *v12 = v0;
  v12[1] = sub_1002DD85C;
  v13 = *(v0 + 2080);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_1002DD85C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2256) = v1;

  if (v1)
  {
    v5 = sub_1002DDAE4;
  }

  else
  {
    v6 = v4[280];
    v7 = v4[279];
    v4[283] = a1;
    sub_100016590(v7, v6);
    v5 = sub_1002DD990;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002DD990()
{
  v15 = v0;
  v1 = v0[283];
  v2 = v0[278];
  v3 = v0[277];
  v4 = v0[270];
  v5 = v0[259];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v14);

  sub_100016590(v3, v2);

  sub_1002DDE7C((v0 + 2));
  sub_1002DDD9C(v5);
  v7 = v14;
  v8 = v0[273];
  v9 = v0[272];

  sub_100017D5C(v9, v8);

  sub_100016590(v9, v8);
  v10 = v0[273];
  v11 = v0[272];

  v12 = v0[1];

  return v12(v7, v11, v10);
}

uint64_t sub_1002DDAE4()
{
  v1 = v0[278];
  v2 = v0[277];
  sub_100016590(v0[279], v0[280]);
  sub_100016590(v2, v1);
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0A8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[259];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, " Failed to generate BAA certs, %{public}@", v8, 0xCu);
    sub_100288C6C(v9);

    sub_1002DDE7C((v0 + 2));

    sub_1002DDD9C(v7);
  }

  else
  {
    sub_1002DDE7C((v0 + 2));

    sub_1002DDD9C(v7);
  }

  v11 = v0[270];
  v12 = v0[273];
  v13 = v0[272];

  sub_100017D5C(v13, v12);

  sub_100016590(v13, v12);
  v14 = v0[273];
  v15 = v0[272];

  v16 = v0[1];

  return v16(v11, v15, v14);
}

unint64_t sub_1002DDDF0()
{
  result = qword_10169C9E0;
  if (!qword_10169C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C9E0);
  }

  return result;
}

uint64_t sub_1002DDEB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DDEFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002DDFB4()
{
  result = qword_10169C9F0;
  if (!qword_10169C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C9F0);
  }

  return result;
}

unint64_t sub_1002DE008()
{
  result = qword_10169C9F8;
  if (!qword_10169C9F8)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    sub_1000E3190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C9F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PencilPairingLockCheckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PencilPairingLockCheckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002DE1E0()
{
  result = qword_10169CA00;
  if (!qword_10169CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CA00);
  }

  return result;
}

unint64_t sub_1002DE238()
{
  result = qword_10169CA08;
  if (!qword_10169CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CA08);
  }

  return result;
}

unint64_t sub_1002DE290()
{
  result = qword_10169CA10;
  if (!qword_10169CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CA10);
  }

  return result;
}

uint64_t sub_1002DE2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010134FD40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 21;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_1002DE9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DEA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

void sub_1002DEAFC(uint64_t a1)
{
  sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MACAddress();
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169C548, &type metadata for UInt8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AdvertismentType(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for AdvertismentType(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1002DED58(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002DED78(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1002DEDAC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v192 = a2;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v189 - v10;
  v12 = __chkstk_darwin(v9);
  v190 = &v189 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v189 - v15;
  v17 = __chkstk_darwin(v14);
  v189 = &v189 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v189 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v189 - v23;
  __chkstk_darwin(v22);
  v26 = &v189 - v25;
  v197 = type metadata accessor for MACAddress();
  v194 = *(v197 - 8);
  v27 = __chkstk_darwin(v197);
  v29 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v189 - v30;
  v196 = type metadata accessor for DiscoveredObject(0);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v198 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);

  v200 = sub_1002E3C88(v33);
  if (!v200)
  {

    sub_1002E4D80(v55, &v203);
    if (v205 >> 60 == 15)
    {
      v56 = a3;
      v57 = v196;
      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_1000076D4(v58, qword_10177C730);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v206 = v62;
        *v61 = 136446210;
        v63 = Dictionary.description.getter();
        v65 = v64;

        v66 = sub_1000136BC(v63, v65, &v206);

        *(v61 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v59, v60, "Failed to create BluetoothAdvertisementData from: %{public}s", v61, 0xCu);
        sub_100007BAC(v62);
      }

      else
      {
      }

      v117 = v56;
      goto LABEL_65;
    }

    v193 = a3;
    v91 = v203;
    v92 = v204;
    v57 = v196;
    if ((v204 & 0x2000000000000000) != 0)
    {
      v49 = v198;
      v198[2] = 1;
      *(v49 + 8) = xmmword_10138BBF0;
      sub_100029784(v91, v92);
      sub_100017D5C(v91, v92 & 0xDFFFFFFFFFFFFFFFLL);
      MACAddress.init(addressToSanitize:type:)();
      v118 = v194;
      v119 = v197;
      result = (*(v194 + 48))(v11, 1, v197);
      if (result != 1)
      {
        sub_10001E524(v91, v92);
        v120 = v57[8];
        sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
        (*(v118 + 32))(v49 + v120, v11, v119);
        goto LABEL_49;
      }
    }

    else
    {
      v49 = v198;
      v198[2] = 0;
      *(v49 + 8) = xmmword_10138BBF0;
      sub_100029784(v91, v92);
      sub_100017D5C(v91, v92);
      sub_10002EA98(6, v91, v92, &v206);
      v26 = *(&v206 + 1);
      v93 = v206;
      sub_100017D5C(v206, *(&v206 + 1));
      MACAddress.init(addressToSanitize:type:)();
      v94 = v194;
      v95 = v197;
      result = (*(v194 + 48))(v8, 1, v197);
      if (result != 1)
      {
        sub_100016590(v93, v26);
        v97 = v57[8];
        sub_10001E524(v91, v92);
        sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
        (*(v94 + 32))(v49 + v97, v8, v95);
LABEL_49:
        v68 = 0;
        v121 = 1;
LABEL_69:
        v48 = v200;
        goto LABEL_74;
      }

      __break(1u);
    }

    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v193 = a3;
  if (qword_101694520 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for UUID();
  v35 = sub_1000076D4(v34, qword_10177A848);
  v36 = v200;
  if (v200[2] && (v37 = sub_1000210EC(v35), (v38 & 1) != 0))
  {
    v39 = (v36[7] + 16 * v37);
    v40 = *v39;
    v41 = v39[1];
    sub_100017D5C(*v39, v41);
    v42 = v41;
    v43 = v40;
  }

  else
  {
    v43 = 0;
    v42 = 0xF000000000000000;
  }

  v44 = sub_1002E40BC(v43, v42);
  v191 = v45;
  v199 = v46;
  if ((v44 & 0xFF00) != 0x200)
  {
    v67 = v44;

    v68 = v67;
    v198[2] = BYTE1(v67) & 1;
    if (v67 == 1)
    {

      sub_1002E4D80(v69, &v203);
      v57 = v196;
      if (v205 >> 60 == 15)
      {
        if (qword_101695288 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_1000076D4(v70, qword_10177C730);

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v206 = v74;
          *v73 = 136446210;
          v75 = Dictionary.description.getter();
          v77 = v76;

          v78 = sub_1000136BC(v75, v77, &v206);

          *(v73 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to create BluetoothAdvertisementData from: %{public}s", v73, 0xCu);
          sub_100007BAC(v74);

          sub_1002E6124(v67, v191, v199);
LABEL_64:
          v117 = v193;
LABEL_65:
          v137 = v195;
          return (*(v137 + 56))(v117, 1, 1, v57);
        }

        sub_1002E6124(v67, v191, v199);
LABEL_63:

        goto LABEL_64;
      }

      v122 = v203;
      v123 = v204;
      *(v198 + 8) = xmmword_10138BBF0;
      if ((v123 & 0x2000000000000000) != 0)
      {
        sub_100029784(v122, v123);
        sub_100017D5C(v122, v123 & 0xDFFFFFFFFFFFFFFFLL);
        MACAddress.init(addressToSanitize:type:)();
        v138 = v194;
        v139 = v197;
        result = (*(v194 + 48))(v24, 1, v197);
        v140 = v191;
        if (result == 1)
        {
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        sub_10001E524(v122, v123);
        v141 = v57[8];
        sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
        sub_1002E6124(v67, v140, v199);
        v142 = v24;
        v49 = v198;
        (*(v138 + 32))(&v198[v141], v142, v139);
      }

      else
      {
        sub_100029784(v122, v123);
        sub_100017D5C(v122, v123);
        sub_10002EA98(6, v122, v123, &v206);
        v124 = v206;
        sub_100017D5C(v206, *(&v206 + 1));
        MACAddress.init(addressToSanitize:type:)();
        v125 = v194;
        v126 = v197;
        result = (*(v194 + 48))(v21, 1, v197);
        if (result == 1)
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        sub_100016590(v124, *(&v124 + 1));
        v127 = v57[8];
        sub_10001E524(v122, v123);
        sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
        sub_1002E6124(v67, v191, v199);
        v128 = *(v125 + 32);
        v49 = v198;
        v128(&v198[v127], v21, v126);
      }

      v121 = 0;
      v26 = 0;
      v199 = 0xC000000000000000;
      v68 = 1;
      goto LABEL_69;
    }

    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;
    v57 = v196;
    if (*(a1 + 16))
    {
      v101 = v98;
      sub_100017D5C(v191, v199);
      v102 = sub_100771D58(v101, v100);
      v104 = v103;

      v49 = v198;
      v48 = v200;
      if (v104)
      {
        sub_100013894(*(a1 + 56) + 32 * v102, &v206);
        if (swift_dynamicCast())
        {
          MACAddress.init(data:type:)();
          v105 = v194;
          v106 = v197;
          if ((*(v194 + 48))(v26, 1, v197) != 1)
          {
            v186 = *(v105 + 32);
            v186(v31, v26, v106);
            v186((v49 + v57[8]), v31, v106);
            goto LABEL_58;
          }

          sub_10000B3A8(v26, &qword_1016A40D0, &unk_10138BE70);
        }
      }
    }

    else
    {
      sub_100017D5C(v191, v199);

      v49 = v198;
      v48 = v200;
    }

    MACAddress.init(stringLiteral:)();
LABEL_58:
    v26 = v191;
    v121 = 0;
    v135 = v199;
    *(v49 + 8) = v191;
    *(v49 + 16) = v135;
    goto LABEL_74;
  }

  if (qword_101694528 != -1)
  {
    swift_once();
  }

  v47 = sub_1000076D4(v34, qword_10177A860);
  v48 = v200;
  v49 = v198;
  if (v200[2] && (v50 = sub_1000210EC(v47), (v51 & 1) != 0))
  {
    v52 = (v48[7] + 16 * v50);
    v53 = *v52;
    v54 = v52[1];
    sub_100017D5C(*v52, v54);
  }

  else
  {
    v53 = 0;
    v54 = 0xF000000000000000;
  }

  v79 = sub_1002E5E84(v53, v54);
  v199 = v81;
  if (v79 != 2)
  {
    v26 = v80;
    *(v49 + 2) = v79 & 1;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;
    if (*(a1 + 16))
    {
      v110 = v107;
      sub_100017D5C(v26, v199);
      v111 = sub_100771D58(v110, v109);
      v113 = v112;

      v114 = v197;
      if (v113)
      {
        sub_100013894(*(a1 + 56) + 32 * v111, &v206);
        if (swift_dynamicCast())
        {
          v115 = v189;
          MACAddress.init(data:type:)();
          v116 = v194;
          if ((*(v194 + 48))(v115, 1, v114) != 1)
          {
            v187 = *(v116 + 32);
            v187(v29, v115, v114);
            v188 = v29;
            v57 = v196;
            v187((v49 + *(v196 + 32)), v188, v114);
            goto LABEL_61;
          }

          sub_10000B3A8(v115, &qword_1016A40D0, &unk_10138BE70);
        }
      }
    }

    else
    {
      sub_100017D5C(v26, v199);
    }

    v57 = v196;
    MACAddress.init(stringLiteral:)();
LABEL_61:
    v136 = v199;
    *(v49 + 8) = v26;
    *(v49 + 16) = v136;
    v68 = 1;
LABEL_73:
    v121 = 1;
LABEL_74:
    *v49 = v68;
    *(v49 + 1) = v121;
    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v148 = sub_100771D58(v146, v147);
      v150 = v149;

      if (v150)
      {
        sub_100013894(*(a1 + 56) + 32 * v148, &v206);
        if (swift_dynamicCast())
        {
          Date.init(timeIntervalSinceReferenceDate:)();
          *(v49 + v57[15]) = v192;
          if (v121)
          {
            if (v68)
            {
              goto LABEL_92;
            }
          }

          else if (v68 != 1)
          {
            goto LABEL_92;
          }

          sub_1002E4D80(v166, &v206);
          v167 = v212;
          if (v212 >> 60 != 15)
          {
            v179 = v211;
            v180 = v210;
            v181 = v209;
            v182 = v208;
            v183 = v207;
            v213 = v206;

            v184 = v213;
            *(v49 + v57[9]) = v213;
            *(v49 + v57[10]) = v183;
            v185 = v200;
            v214 = v184;
            *(v49 + v57[11]) = v182;
            *&v202[0] = v179;
            *(&v202[0] + 1) = v167;
            sub_1002E5E4C(&v214, v201);
            sub_1001022C4(v202, v201);
            sub_10000B3A8(&v206, &qword_10169CAE8, &unk_101399630);
            *(v49 + v57[14]) = v202[0];
            *(v49 + v57[12]) = v181;
            *(v49 + v57[13]) = v180;
            v176 = v193;
            v178 = v195;
            if (!v185)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

LABEL_92:
          Data.init(stringLiteral:)();
          result = sub_1004A4744();
          v168 = *(&v202[0] + 1);
          if (*(&v202[0] + 1) >> 60 != 15)
          {
            v169 = (v49 + v57[9]);
            *v169 = *&v202[0];
            v169[1] = v168 | 0x2000000000000000;
            v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(a1 + 16))
            {
              v172 = sub_100771D58(v170, v171);
              v174 = v173;

              if (v174)
              {
                sub_100013894(*(a1 + 56) + 32 * v172, v202);

                v175 = swift_dynamicCast();
                v176 = v193;
                if (v175)
                {
                  v177 = v214;
                }

                else
                {
                  v177 = 0;
                }

LABEL_99:
                v178 = v195;
                *(v49 + v57[10]) = v177;
                *(v49 + v57[11]) = 0;
                *(v49 + v57[14]) = xmmword_10138C660;
                *(v49 + v57[12]) = 0;
                *(v49 + v57[13]) = 256;
                if (!v48)
                {
LABEL_101:
                  sub_100206A84(v49, v176);
                  (*(v178 + 56))(v176, 0, 1, v57);
                  return sub_1002E7B48(v49, type metadata accessor for DiscoveredObject);
                }

LABEL_100:
                sub_100016590(v26, v199);
                goto LABEL_101;
              }
            }

            else
            {
            }

            v177 = 0;
            v176 = v193;
            goto LABEL_99;
          }

          goto LABEL_109;
        }
      }
    }

    else
    {
    }

    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for Logger();
    sub_1000076D4(v151, qword_10177C730);

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();

    v154 = os_log_type_enabled(v152, v153);
    v155 = v197;
    if (v154)
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *&v206 = v157;
      *v156 = 136446210;
      v158 = v57;
      v159 = v26;
      v160 = Dictionary.description.getter();
      v162 = v161;

      v163 = v160;
      v26 = v159;
      v57 = v158;
      v164 = sub_1000136BC(v163, v162, &v206);
      v48 = v200;

      *(v156 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v152, v153, "Expected CBAdvertisementDataTimestamp key in: %{public}s", v156, 0xCu);
      sub_100007BAC(v157);
    }

    else
    {
    }

    v137 = v195;
    v165 = v194;
    v117 = v193;
    if (v48)
    {
      sub_100016590(v26, v199);
    }

    sub_100006654(*(v49 + 8), *(v49 + 16));
    (*(v165 + 8))(v49 + v57[8], v155);
    return (*(v137 + 56))(v117, 1, 1, v57);
  }

  sub_1002E4D80(v82, &v203);
  if (v205 >> 60 == 15)
  {
    v57 = v196;
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_1000076D4(v83, qword_10177C730);

    v71 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v206 = v86;
      *v85 = 136446210;
      v87 = Dictionary.description.getter();
      v89 = v88;

      v90 = sub_1000136BC(v87, v89, &v206);

      *(v85 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v71, v84, "Failed to create BluetoothAdvertisementData from: %{public}s", v85, 0xCu);
      sub_100007BAC(v86);

      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v129 = v203;
  v130 = v204;
  v57 = v196;
  if ((v204 & 0x2000000000000000) == 0)
  {
    *(v49 + 2) = 0;
    *(v49 + 8) = xmmword_10138BBF0;
    sub_100029784(v129, v130);
    sub_100017D5C(v129, v130);
    sub_10002EA98(6, v129, v130, &v206);
    v131 = v206;
    sub_100017D5C(v206, *(&v206 + 1));
    v132 = v190;
    MACAddress.init(addressToSanitize:type:)();
    v133 = v194;
    result = (*(v194 + 48))(v132, 1, v197);
    if (result == 1)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    sub_100016590(v131, *(&v131 + 1));
    v134 = v57[8];
    sub_10001E524(v129, v130);
    sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
    (*(v133 + 32))(v49 + v134, v132, v197);
    goto LABEL_72;
  }

  *(v49 + 2) = 1;
  *(v49 + 8) = xmmword_10138BBF0;
  sub_100029784(v129, v130);
  sub_100017D5C(v129, v130 & 0xDFFFFFFFFFFFFFFFLL);
  MACAddress.init(addressToSanitize:type:)();
  v143 = v194;
  v144 = v197;
  result = (*(v194 + 48))(v16, 1, v197);
  if (result != 1)
  {
    sub_10001E524(v129, v130);
    v145 = v57[8];
    sub_10000B3A8(&v203, &qword_10169CAE8, &unk_101399630);
    (*(v143 + 32))(v49 + v145, v16, v144);
LABEL_72:
    v68 = 0;
    v26 = 0;
    v199 = 0xC000000000000000;
    goto LABEL_73;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_1002E04F0(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      return 0x5079636167656C2ELL;
    }

    else
    {
      return 0x3831657079742ELL;
    }
  }

  else
  {
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 41;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    return 0x2868736F702ELL;
  }
}

uint64_t sub_1002E05B4(void *a1, unsigned int a2)
{
  v27 = a2;
  v3 = sub_1000BC4D4(&qword_10169CBB8, &qword_1013996B0);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_1000BC4D4(&qword_10169CBC0, &qword_1013996B8);
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1000BC4D4(&qword_10169CBC8, &qword_1013996C0);
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = sub_1000BC4D4(&qword_10169CBD0, &qword_1013996C8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  sub_1000035D0(a1, a1[3]);
  sub_1002E6F34();
  v16 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v16 & 0x100) != 0)
  {
    v19 = (v13 + 8);
    if (v16)
    {
      v29 = 1;
      sub_1002E6FDC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v8, v24);
    }

    else
    {
      v28 = 0;
      sub_1002E7030();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v21 + 8))(v11, v22);
    }

    return (*v19)(v15, v12);
  }

  else
  {
    v30 = 2;
    sub_1002E6F88();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v26;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v5, v17);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1002E096C()
{
  v1 = 0x6F5079636167656CLL;
  if (*v0 != 1)
  {
    v1 = 1752395632;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x383165707974;
  }
}

uint64_t sub_1002E09C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002E6140(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002E09E8(uint64_t a1)
{
  v2 = sub_1002E6F34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E0A24(uint64_t a1)
{
  v2 = sub_1002E6F34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E0A60(uint64_t a1)
{
  v2 = sub_1002E6FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E0A9C(uint64_t a1)
{
  v2 = sub_1002E6FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E0AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1002E0B78(uint64_t a1)
{
  v2 = sub_1002E6F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E0BB4(uint64_t a1)
{
  v2 = sub_1002E6F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E0BF0(uint64_t a1)
{
  v2 = sub_1002E7030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E0C2C(uint64_t a1)
{
  v2 = sub_1002E7030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E0C68@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002E625C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1002E0CE0(void *a1, uint64_t a2, unint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v4 = sub_1000BC4D4(&qword_10169CB50, &qword_101399678);
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_1000BC4D4(&qword_10169CB58, &qword_101399680);
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_1000BC4D4(&qword_10169CB60, &qword_101399688);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  sub_1000035D0(a1, a1[3]);
  sub_1002E6CE8();
  v14 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v14 & 0x2000000000000000) != 0)
  {
    LOBYTE(v23) = 1;
    sub_1002E6D3C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v22;
    v24 = v14 & 0xDFFFFFFFFFFFFFFFLL;
    sub_1002E6E8C();
    v16 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v6, v16);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1002E6DE4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v22;
    v24 = v14;
    sub_1002E6EE0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002E1024()
{
  if (*v0)
  {
    return 0x656E774F7261656ELL;
  }

  else
  {
    return 1684826487;
  }
}

uint64_t sub_1002E105C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684826487 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E774F7261656ELL && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002E1140(uint64_t a1)
{
  v2 = sub_1002E6CE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E117C(uint64_t a1)
{
  v2 = sub_1002E6CE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E11C4(uint64_t a1)
{
  v2 = sub_1002E6D3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E1200(uint64_t a1)
{
  v2 = sub_1002E6D3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E123C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1002E12BC(uint64_t a1)
{
  v2 = sub_1002E6DE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E12F8(uint64_t a1)
{
  v2 = sub_1002E6DE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1002E1334@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002E6804(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_1002E137C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)((v2 >> 61) & 1);
  sub_100017D5C(v1, v2 & 0xDFFFFFFFFFFFFFFFLL);
  Data.hash(into:)();
  sub_10001E524(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_1002E13F4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher._combine(_:)((v3 >> 61) & 1);
  sub_100017D5C(v2, v3 & 0xDFFFFFFFFFFFFFFFLL);
  Data.hash(into:)();

  return sub_10001E524(v2, v3);
}

Swift::Int sub_1002E1460(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)((v3 >> 61) & 1);
  sub_100017D5C(v2, v3 & 0xDFFFFFFFFFFFFFFFLL);
  Data.hash(into:)();
  sub_10001E524(v2, v3);
  return Hasher._finalize()();
}

BOOL sub_1002E14DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_100029784(*a1, v3);
      sub_100029784(v4, v5);
      v7 = v3 & 0xDFFFFFFFFFFFFFFFLL;
      v9 = v5 & 0xDFFFFFFFFFFFFFFFLL;
      v6 = v2;
      v8 = v4;
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_100029784(*a1, v3);
    sub_100029784(v4, v5);
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
LABEL_7:
    v10 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v8, v9);
    sub_10001E524(v4, v5);
    sub_10001E524(v2, v3);
    return v10;
  }

  return 0;
}

uint64_t sub_1002E159C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 23899;
  }

  v38 = sub_1003A85FC(*(a1 + 16), 0);
  v39 = v3;
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v40 = sub_1003CC2CC();
  v8 = v42;

  sub_1000128F8(v8);
  if (v40 == v6)
  {
    v9 = v7;
    v42 = v38;
    sub_1002E267C(&v42);
    v10 = *(v42 + 16);
    if (v10)
    {
      v36 = v42;
      v11 = v42 + v9;
      v12 = *(v39 + 16);
      v13 = *(v39 + 72);
      v14 = (v39 + 8);
      v39 += 16;
      v40 = _swiftEmptyArrayStorage;
      v37 = v13;
      v38 = v12;
      (v12)(v5, v42 + v9, v2);
      while (1)
      {
        if (*(a1 + 16) && (v15 = sub_1000210EC(v5), (v16 & 1) != 0))
        {
          v17 = (*(a1 + 56) + 16 * v15);
          v18 = *v17;
          v19 = v17[1];
          sub_100017D5C(*v17, v19);
          sub_100019D0C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v20;
          v21._countAndFlagsBits = 8250;
          v21._object = 0xE200000000000000;
          String.append(_:)(v21);
          v22._countAndFlagsBits = Data.hexString.getter();
          String.append(_:)(v22);

          sub_100016590(v18, v19);
          v23 = v42;
          v24 = v43;
          (*v14)(v5, v2);
          v25 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v40 : sub_100A5B2CC(0, *(v40 + 2) + 1, 1, v40);
          v27 = *(v25 + 2);
          v26 = *(v25 + 3);
          if (v27 >= v26 >> 1)
          {
            v25 = sub_100A5B2CC((v26 > 1), v27 + 1, 1, v25);
          }

          *(v25 + 2) = v27 + 1;
          v40 = v25;
          v28 = &v25[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v24;
          v12 = v38;
          v13 = v37;
        }

        else
        {
          (*v14)(v5, v2);
        }

        v11 += v13;
        if (!--v10)
        {
          break;
        }

        (v12)(v5, v11, v2);
      }

      v29 = v40;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v42 = 91;
    v43 = 0xE100000000000000;
    v41 = v29;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 93;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    return v42;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1002E19B8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UUID();
  sub_100044B3C(v3, a2);
  v4 = sub_1000076D4(v3, a2);
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() UUIDWithString:v5];

  sub_100B699C8(v4);
}

uint64_t sub_1002E1A6C()
{
  _StringGuts.grow(_:)(22);

  v1._countAndFlagsBits = sub_10001904C(*v0, *(v0 + 8));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3A73757461747320;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return 0x3A64616F6C796170;
}

uint64_t sub_1002E1B74()
{
  v1 = type metadata accessor for DefaultStringInterpolation.BinaryIntegerRadix();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[1] == 1)
  {
    v6 = v5 == 0;
    v7 = 0x6F5079636167654CLL;
    if (v6)
    {
      v7 = 0x38312065707954;
    }

    v68 = v7;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006873;
    }
  }

  else
  {
    v70 = 0x5B68736F50;
    v71 = 0xE500000000000000;
    LOBYTE(v69._countAndFlagsBits) = v5;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v8 = v71;
    v68 = v70;
  }

  v11 = type metadata accessor for DiscoveredObject(0);
  v12 = v11;
  v13 = &v0[*(v11 + 36)];
  v14 = *v13;
  v15 = v13[1];
  if ((v15 & 0x2000000000000000) != 0)
  {
    v21 = (v15 & 0xDFFFFFFFFFFFFFFFLL);
    v70 = 0;
    v71 = 0xE000000000000000;
    v22 = v14;
    v67 = v15;
    sub_100017D5C(v14, v15 & 0xDFFFFFFFFFFFFFFFLL);
    _StringGuts.grow(_:)(70);
    v23._countAndFlagsBits = 0x7461446E6163735BLL;
    v23._object = 0xEB00000000203A65;
    String.append(_:)(v23);
    type metadata accessor for Date();
    sub_100019D0C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x203A6570797420;
    v25._object = 0xE700000000000000;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v68;
    v26._object = v8;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x7373657264646120;
    v27._object = 0xEA0000000000203ALL;
    String.append(_:)(v27);
    type metadata accessor for MACAddress();
    sub_100019D0C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x203A56444120;
    v29._object = 0xE600000000000000;
    String.append(_:)(v29);
    v69._countAndFlagsBits = v22;
    v69._object = v21;
    sub_100019D9C();
    v30._countAndFlagsBits = RawRepresentable<>.hexString.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x3A73757461747320;
    v31._object = 0xE900000000000020;
    String.append(_:)(v31);
    v32._countAndFlagsBits = sub_100018DE0(v0[v12[11]]);
    String.append(_:)(v32);

    v33 = 0xE500000000000000;
    v34._countAndFlagsBits = 0x203A6B6520;
    v34._object = 0xE500000000000000;
    String.append(_:)(v34);
    v35 = v0[v12[12]];
    v69._countAndFlagsBits = 0x203A4D6F427BLL;
    v69._object = 0xE600000000000000;
    if ((v35 & 4) != 0)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if ((v35 & 4) != 0)
    {
      v33 = 0xE400000000000000;
    }

    v37 = v33;
    String.append(_:)(*&v36);

    v38._countAndFlagsBits = 125;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    String.append(_:)(v69);

    v39._countAndFlagsBits = 0x203A6973737220;
    v39._object = 0xE700000000000000;
    String.append(_:)(v39);
    LODWORD(v69._countAndFlagsBits) = *&v0[v12[15]];
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 93;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = v22;
    v43 = v67;
  }

  else
  {
    v16 = &v0[*(v11 + 52)];
    if (v16[1])
    {
      v17 = v14;
      v18 = v15;
      sub_100017D5C(v14, v15);
      v19 = 0xE300000000000000;
      v20 = 4271950;
    }

    else
    {
      v44 = *v16;
      v70 = 0;
      v71 = 0xE000000000000000;
      LOBYTE(v69._countAndFlagsBits) = v44;
      v18 = v15;
      v17 = v14;
      (*(v2 + 104))(v4, enum case for DefaultStringInterpolation.BinaryIntegerRadix.hex(_:), v1);
      sub_100017D5C(v17, v18);
      sub_1002E2724();
      DefaultStringInterpolation.appendInterpolation<A>(_:radix:padded:)();
      (*(v2 + 8))(v4, v1);
      v20 = v70;
      v19 = v71;
    }

    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v45._countAndFlagsBits = 0x7461446E6163735BLL;
    v45._object = 0xEB00000000203A65;
    String.append(_:)(v45);
    type metadata accessor for Date();
    sub_100019D0C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0x203A6570797420;
    v47._object = 0xE700000000000000;
    String.append(_:)(v47);
    v48._countAndFlagsBits = v68;
    v48._object = v8;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0x7373657264646120;
    v49._object = 0xEA0000000000203ALL;
    String.append(_:)(v49);
    type metadata accessor for MACAddress();
    sub_100019D0C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v50);

    v51._countAndFlagsBits = 0x203A56444120;
    v51._object = 0xE600000000000000;
    String.append(_:)(v51);
    v69._countAndFlagsBits = v17;
    v69._object = v18;
    sub_10002EE9C();
    v52._countAndFlagsBits = RawRepresentable<>.hexString.getter();
    String.append(_:)(v52);

    v53._countAndFlagsBits = 0x3A73757461747320;
    v53._object = 0xE900000000000020;
    String.append(_:)(v53);
    v54._countAndFlagsBits = sub_100018DE0(v0[v12[11]]);
    String.append(_:)(v54);

    v55 = 0xE500000000000000;
    v56._countAndFlagsBits = 0x203A6B6520;
    v56._object = 0xE500000000000000;
    String.append(_:)(v56);
    v57 = v0[v12[12]];
    v69._countAndFlagsBits = 0x203A4D6F427BLL;
    v69._object = 0xE600000000000000;
    if ((v57 & 4) != 0)
    {
      v58 = 1702195828;
    }

    else
    {
      v58 = 0x65736C6166;
    }

    if ((v57 & 4) != 0)
    {
      v55 = 0xE400000000000000;
    }

    v59 = v55;
    String.append(_:)(*&v58);

    v60._countAndFlagsBits = 125;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    String.append(_:)(v69);

    v61._countAndFlagsBits = 0x203A746E696820;
    v61._object = 0xE700000000000000;
    String.append(_:)(v61);
    v62._countAndFlagsBits = v20;
    v62._object = v19;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 0x203A6973737220;
    v63._object = 0xE700000000000000;
    String.append(_:)(v63);
    LODWORD(v69._countAndFlagsBits) = *&v0[v12[15]];
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v65._countAndFlagsBits = 93;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v42 = v17;
    v43 = v18;
  }

  sub_10001E524(v42, v43);
  return v70;
}

unint64_t sub_1002E23AC()
{
  result = qword_10169CAD0;
  if (!qword_10169CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CAD0);
  }

  return result;
}

uint64_t sub_1002E2400()
{
  type metadata accessor for BeaconKeyManager.IndexInformation(0);
  sub_100019D0C(&qword_10169CDA8, type metadata accessor for BeaconKeyManager.IndexInformation, &unk_101411640);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1002E2474()
{
  v1 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for BeaconDetails(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetailedDiscoveredObject(0);
  sub_1002E7A74(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000B3A8(v3, &qword_10169CBD8, &unk_1013996D0);
    return sub_1002E1B74();
  }

  else
  {
    sub_1002E7AE4(v3, v7);
    v14[0] = sub_1002E1B74();
    v14[1] = v10;
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    type metadata accessor for BeaconKeyManager.IndexInformation(0);
    sub_100019D0C(&qword_10169CDA8, type metadata accessor for BeaconKeyManager.IndexInformation, &unk_101411640);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13 = v14[0];
    sub_1002E7B48(v7, type metadata accessor for BeaconDetails);
    return v13;
  }
}

Swift::Int sub_1002E267C(uint64_t *a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B31F94(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002E287C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_1002E2724()
{
  result = qword_10169CAE0;
  if (!qword_10169CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CAE0);
  }

  return result;
}

uint64_t sub_1002E2778()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E27AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E27E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E2814()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E2848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1002E287C(uint64_t *a1)
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
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002E2C6C(v8, v9, a1, v4);
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
    return sub_1002E29A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002E29A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100019D0C(&qword_10169CAF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E2C6C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100B31E68(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1002E3694(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_100B31DDC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_100019D0C(&qword_10169CAF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_100A5B430((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1002E3694(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_100B31DDC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100019D0C(&qword_10169CAF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1002E3694(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for UUID();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_100019D0C(&qword_10169CAF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_100019D0C(&qword_10169CAF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_10060AA54(&v55, &v54, &v53);
  return 1;
}

void *sub_1002E3C88(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_24;
  }

  v7 = sub_100771D58(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

  sub_100013894(*(a1 + 56) + 32 * v7, &v60);

  sub_1000BC4D4(&qword_1016C1A40, &qword_101399650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = v59 + 64;
  v11 = 1 << *(v59 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v59 + 64);
  v14 = v11 + 63;
  v15 = v3;
  v16 = v59;
  v17 = v14 >> 6;
  v52 = v15 + 16;
  v53 = v15;
  v56 = (v15 + 8);

  v18 = 0;
  v19 = _swiftEmptyDictionarySingleton;
  v54 = v17;
  v55 = v10;
  v57 = v2;
  v51 = v16;
  while (v13)
  {
    v23 = v18;
LABEL_15:
    v24 = __clz(__rbit64(v13)) | (v23 << 6);
    v25 = *(*(v16 + 48) + 8 * v24);
    v26 = (*(v16 + 56) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = v25;
    sub_100017D5C(v28, v27);
    v30 = v29;
    sub_100017D5C(v28, v27);
    v31 = v58;
    sub_100B699C8(v58);
    sub_100017D5C(v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v19;
    v33 = sub_1000210EC(v31);
    v35 = v19[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_29;
    }

    v39 = v34;
    if (v19[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v33;
        sub_1010069E0();
        v33 = v48;
      }
    }

    else
    {
      sub_100FE96E4(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1000210EC(v58);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_31;
      }
    }

    v13 &= v13 - 1;
    v19 = v60;
    if (v39)
    {
      v20 = (v60[7] + 16 * v33);
      v21 = *v20;
      v22 = v20[1];
      *v20 = v28;
      v20[1] = v27;
      sub_100016590(v21, v22);

      sub_100016590(v28, v27);
      sub_100016590(v28, v27);
      (*v56)(v58, v57);
      v18 = v23;
    }

    else
    {
      v60[(v33 >> 6) + 8] |= 1 << v33;
      v41 = v53;
      v42 = v33;
      v44 = v57;
      v43 = v58;
      (*(v53 + 16))(v19[6] + *(v53 + 72) * v33, v58, v57);
      v45 = (v19[7] + 16 * v42);
      *v45 = v28;
      v45[1] = v27;

      sub_100016590(v28, v27);
      sub_100016590(v28, v27);
      (*(v41 + 8))(v43, v44);
      v46 = v19[2];
      v37 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v37)
      {
        goto LABEL_30;
      }

      v19[2] = v47;
      v18 = v23;
      v16 = v51;
    }

    v17 = v54;
    v10 = v55;
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v17)
    {

      return v19;
    }

    v13 = *(v10 + 8 * v23);
    ++v18;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1002E40BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 512;
  }

  v5 = Data._Representation.subscript.getter();
  result = Data._Representation.subscript.getter();
  v6 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v7 != 2)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v8 = HIDWORD(a1) - a1;
  }

LABEL_12:
  if (v8 < 2)
  {
    goto LABEL_44;
  }

  v33[3] = &type metadata for Data;
  v33[4] = &protocol witness table for Data;
  v33[0] = Data._Representation.subscript.getter();
  v33[1] = v11;
  v12 = sub_1000035D0(v33, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v31, 0, 14);
      v17 = v31;
      v16 = v31;
      goto LABEL_35;
    }

    v18 = *(v13 + 16);
    v19 = *(v13 + 24);
    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v21 = __DataStorage._offset.getter();
      v13 = v18 - v21;
      if (__OFSUB__(v18, v21))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v20 += v13;
    }

    v22 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (!v22)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v15)
  {
LABEL_23:
    v24 = v13;
    v25 = v13 >> 32;
    v23 = v25 - v24;
    if (v25 >= v24)
    {
      v20 = __DataStorage._bytes.getter();
      if (!v20)
      {
LABEL_27:
        v27 = __DataStorage._length.getter();
        if (v27 >= v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = v27;
        }

        v29 = (v28 + v20);
        if (v20)
        {
          v16 = v29;
        }

        else
        {
          v16 = 0;
        }

        v17 = v20;
        goto LABEL_35;
      }

      v26 = __DataStorage._offset.getter();
      if (!__OFSUB__(v24, v26))
      {
        v20 += v24 - v26;
        goto LABEL_27;
      }

LABEL_43:
      __break(1u);
    }

    goto LABEL_41;
  }

  v31[0] = *v12;
  LOWORD(v31[1]) = v14;
  BYTE2(v31[1]) = BYTE2(v14);
  BYTE3(v31[1]) = BYTE3(v14);
  BYTE4(v31[1]) = BYTE4(v14);
  BYTE5(v31[1]) = BYTE5(v14);
  v16 = v31 + BYTE6(v14);
  v17 = v31;
LABEL_35:
  sub_100267F80(v17, v16, &v32);
  sub_100006654(a1, a2);
  sub_100007BAC(v33);
  if (v6)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  return v30 & 0xFFFFFFFFFFFFFF00 | v5;
}

unint64_t sub_1002E4380(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 32);
  v9 = *(result + 40);
  v8 = *(result + 48);
  result = sub_100017D5C(v9, v8);
  if (v8 >> 60 == 15)
  {
    return result;
  }

  v10 = *a3;
  result = sub_1007721A4(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_100FE9ACC(v15, a2 & 1);
    result = sub_1007721A4(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = result;
  sub_101006A08();
  result = v22;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
LABEL_12:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v9;
    v23[1] = v8;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v14)
    {
      v18[2] = v25;
      v16 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_9:
  v19 = (v18[7] + 16 * result);
  v20 = *v19;
  v21 = v19[1];
  *v19 = v9;
  v19[1] = v8;
  result = sub_100016590(v20, v21);
  v16 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_15:
  v3 = (v6 + 72);
  a2 = 1;
  do
  {
    v9 = *(v3 - 16);
    v8 = *(v3 - 1);
    v6 = *v3;
    result = sub_100017D5C(v8, *v3);
    if (v6 >> 60 == 15)
    {
      break;
    }

    v29 = *a3;
    result = sub_1007721A4(v9);
    v31 = v29[2];
    v32 = (v30 & 1) == 0;
    v14 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v14)
    {
      goto LABEL_25;
    }

    LOBYTE(v7) = v30;
    if (v29[3] < v33)
    {
      sub_100FE9ACC(v33, 1);
      result = sub_1007721A4(v9);
      if ((v7 & 1) != (v34 & 1))
      {
        goto LABEL_6;
      }
    }

    v35 = *a3;
    if (v7)
    {
      v26 = (v35[7] + 16 * result);
      v27 = *v26;
      v28 = v26[1];
      *v26 = v8;
      v26[1] = v6;
      result = sub_100016590(v27, v28);
    }

    else
    {
      v35[(result >> 6) + 8] |= 1 << result;
      *(v35[6] + result) = v9;
      v36 = (v35[7] + 16 * result);
      *v36 = v8;
      v36[1] = v6;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      v35[2] = v38;
    }

    v3 += 3;
    --v16;
  }

  while (v16);
  return result;
}

unint64_t sub_1002E45E8(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 >= 2)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_21:
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C730);
    sub_100017D5C(v4, v3);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100016590(v4, v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136446210;
      v23 = Data.hexString.getter();
      v25 = sub_1000136BC(v23, v24, &v62);

      *(v13 + 4) = v25;
      v18 = "TLV too large: %{public}s";
      goto LABEL_30;
    }

LABEL_31:

    return sub_1009088AC(_swiftEmptyArrayStorage);
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (qword_101695288 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    }

    goto LABEL_60;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v5 == 2)
  {
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v8 = __OFSUB__(v19, v20);
    v21 = v19 - v20;
    if (v8)
    {
      goto LABEL_63;
    }

    if (v21 > 31)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 <= 31)
        {
          goto LABEL_24;
        }

LABEL_20:
        if (qword_101695288 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_61;
      }

      __break(1u);
LABEL_63:
      __break(1u);
    }

    if (BYTE6(a2) > 0x1FuLL)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  if (Data._Representation.subscript.getter() != 76 || Data._Representation.subscript.getter())
  {
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C730);
    sub_100017D5C(v4, v3);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100016590(v4, v3);
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_31;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62 = v14;
    *v13 = 136446210;
    v27 = Data.hexString.getter();
    v29 = sub_1000136BC(v27, v28, &v62);

    *(v13 + 4) = v29;
    v18 = "Not parsing non-Apple TLV data: %{public}s";
    goto LABEL_30;
  }

  if (v5 == 2)
  {
    v31 = *(v4 + 24);
  }

  else if (v5 == 1)
  {
    v31 = v4 >> 32;
  }

  else
  {
    v31 = BYTE6(v3);
  }

  if (v31 < 2)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v32 = Data._Representation.subscript.getter();
  v34 = sub_10112C4C8(v32, v33);
  v36 = v35;
  v60 = _swiftEmptyArrayStorage;
  sub_1011245D0(0, 0, 0);
  v3 = _swiftEmptyArrayStorage;
  v58 = v34;
  v59 = v36;

  sub_10112C0E8(&v62);
  v37 = v63;
  if (v63)
  {
    v38 = sub_1000041A4(&qword_10169CB08, &qword_10169CB00, &qword_101399648, &protocol conformance descriptor for <A> ArraySlice<A>);
    while (1)
    {
      v39 = v65;
      v55 = v64;
      v40 = v62;
      v41 = sub_1000BC4D4(&qword_10169CB00, &qword_101399648);
      v61[3] = v41;
      v61[4] = v38;
      v42 = swift_allocObject();
      v61[0] = v42;
      *(v42 + 16) = v37;
      *(v42 + 24) = v55;
      *(v42 + 40) = v39;
      v43 = sub_1000035D0(v61, v41);
      v4 = v43[2];
      v44 = v43[3] >> 1;
      v45 = v44 - v4;
      if (__OFSUB__(v44, v4))
      {
        break;
      }

      if (v45)
      {
        v46 = v43[1];
        if (v45 < 15)
        {
          memset(__dst, 0, sizeof(__dst));
          v57 = v44 - v4;
          memcpy(__dst, (v46 + v4), v44 - v4);
          v49 = *__dst;
          v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v57 << 16)) << 32);
          v50 = v2;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v47 = __DataStorage.init(bytes:length:)();
          v48 = v47;
          if (v45 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v49 = swift_allocObject();
            *(v49 + 16) = 0;
            *(v49 + 24) = v45;
            v50 = v48 | 0x8000000000000000;
          }

          else
          {
            v49 = v45 << 32;
            v50 = v47 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v49 = 0;
        v50 = 0xC000000000000000;
      }

      sub_100007BAC(v61);
      v60 = v3;
      v52 = v3[2];
      v51 = v3[3];
      if (v52 >= v51 >> 1)
      {
        sub_1011245D0((v51 > 1), v52 + 1, 1);
        v3 = v60;
      }

      v3[2] = v52 + 1;
      v53 = &v3[3 * v52];
      *(v53 + 32) = v40;
      v53[5] = v49;
      v53[6] = v50;
      sub_10112C0E8(&v62);
      v37 = v63;
      if (!v63)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_9:
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C730);
    sub_100017D5C(v4, v3);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100016590(v4, v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136446210;
      v15 = Data.hexString.getter();
      v17 = sub_1000136BC(v15, v16, &v62);

      *(v13 + 4) = v17;
      v18 = "No TLV header: %{public}s";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v11, v12, v18, v13, 0xCu);
      sub_100007BAC(v14);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_53:
  swift_bridgeObjectRelease_n();
  if (v3[2])
  {
    sub_1000BC4D4(&qword_10169CAF8, &qword_101399640);
    v54 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v54 = _swiftEmptyDictionarySingleton;
  }

  v61[0] = v54;
  sub_1002E4380(v3, 1, v61);

  return v61[0];
}

void sub_1002E4D80(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v145 - v5;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v145 - v12;

  v15 = sub_1002E3C88(v14);
  if (!v15)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v39 = sub_100771D58(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_100013894(*(a1 + 56) + 32 * v39, &v159);
        if (swift_dynamicCast())
        {
          v43 = v157;
          v42 = v158;
          v44 = sub_1002E45E8(v157, v158);
          if (!*(v44 + 16) || (v45 = sub_1007721A4(18), (v46 & 1) == 0))
          {

            if (qword_101695288 != -1)
            {
              swift_once();
            }

            v98 = type metadata accessor for Logger();
            sub_1000076D4(v98, qword_10177C730);
            v52 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v52, v99))
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              _os_log_impl(&_mh_execute_header, v52, v99, "No Type18 payload found!", v100, 2u);
            }

            sub_100016590(v43, v42);
            goto LABEL_48;
          }

          v153 = v13;
          v154 = v43;
          v47 = (*(v44 + 56) + 16 * v45);
          v49 = *v47;
          v48 = v47[1];
          v50 = *v47;
          v155 = v42;
          v156 = v48;
          sub_100017D5C(v50, v48);

          goto LABEL_27;
        }
      }
    }

    else
    {
    }

    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177C730);

    v52 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v159 = v87;
      *v86 = 136446210;
      v88 = Dictionary.description.getter();
      v90 = v89;

      v91 = sub_1000136BC(v88, v90, &v159);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v52, v85, "Missing critical data in %{public}s", v86, 0xCu);
      sub_100007BAC(v87);

      goto LABEL_46;
    }

LABEL_47:

    goto LABEL_48;
  }

  v16 = v15;
  if (qword_101694520 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for UUID();
  v18 = sub_1000076D4(v17, qword_10177A848);
  v19 = *(v16 + 16);
  v153 = v13;
  if (v19 && (v20 = sub_1000210EC(v18), (v21 & 1) != 0))
  {
    v22 = (*(v16 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    sub_100017D5C(*v22, v24);
    v25 = v24;
    v26 = v23;
  }

  else
  {
    v26 = 0;
    v25 = 0xF000000000000000;
  }

  if ((sub_1002E40BC(v26, v25) & 0xFF00) == 0x200)
  {
    if (qword_101694528 != -1)
    {
      swift_once();
    }

    v29 = sub_1000076D4(v17, qword_10177A860);
    if (*(v16 + 16) && (v30 = sub_1000210EC(v29), (v31 & 1) != 0))
    {
      v32 = (*(v16 + 56) + 16 * v30);
      v33 = *v32;
      v34 = v32[1];
      sub_100017D5C(*v32, v34);
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v36 = 0;
      v35 = 0xF000000000000000;
    }

    if ((sub_1002E40BC(v36, v35) & 0xFF00) == 0x200)
    {

      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177C730);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v159 = v55;
        *v54 = 136446210;
        v56 = sub_1002E159C(v16);
        v58 = v57;

        v59 = sub_1000136BC(v56, v58, &v159);

        *(v54 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v52, v53, "Unhandled serviceData: %{public}s", v54, 0xCu);
        sub_100007BAC(v55);

LABEL_46:

        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  v49 = v27;
  v156 = v28;

  v154 = 0;
  v155 = 0xC000000000000000;
LABEL_27:
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_36:
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_1000076D4(v76, qword_10177C730);

    v52 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v52, v77))
    {
      sub_100016590(v154, v155);
      sub_100016590(v49, v156);
      goto LABEL_47;
    }

    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v159 = v79;
    *v78 = 136446210;
    v80 = Dictionary.description.getter();
    v82 = v81;

    v83 = sub_1000136BC(v80, v82, &v159);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v52, v77, "Missing critical data [CBAdvertisementDataDeviceAddress] in %{public}s", v78, 0xCu);
    sub_100007BAC(v79);

    sub_100016590(v154, v155);
    sub_100016590(v49, v156);
LABEL_48:

LABEL_49:
    MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0xF000000000000000;
LABEL_50:
    *a2 = MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0;
    a2[1] = v93;
    a2[2] = v94;
    a2[3] = v95;
    a2[4] = v96;
    a2[5] = v97;
    return;
  }

  v62 = sub_100771D58(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_100013894(*(a1 + 56) + 32 * v62, &v159);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v65 = v157;
  v66 = v158;
  sub_100017D5C(v157, v158);
  v152 = v65;
  MACAddress.init(data:type:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_10000B3A8(v6, &qword_1016A40D0, &unk_10138BE70);
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000076D4(v67, qword_10177C730);
    v68 = v152;
    sub_100017D5C(v152, v66);
    v52 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    sub_100016590(v68, v66);
    if (!os_log_type_enabled(v52, v69))
    {
      sub_100016590(v154, v155);
      sub_100016590(v49, v156);

      sub_100016590(v68, v66);
      goto LABEL_49;
    }

    v70 = swift_slowAlloc();
    v71 = v66;
    v72 = swift_slowAlloc();
    v159 = v72;
    *v70 = 136446210;
    v73 = Data.hexString.getter();
    v75 = sub_1000136BC(v73, v74, &v159);

    *(v70 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v52, v69, "Not a MAC address: %{public}s", v70, 0xCu);
    sub_100007BAC(v72);

    sub_100016590(v154, v155);
    sub_100016590(v49, v156);
    sub_100016590(v68, v71);
    goto LABEL_48;
  }

  v151 = v8;
  (*(v8 + 32))(v153, v6, v7);
  v101 = v156 >> 62;
  if ((v156 >> 62) <= 1)
  {
    if (!v101)
    {
      v102 = BYTE6(v156);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (v101 != 2)
  {
LABEL_71:
    v107 = v66;

    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_1000076D4(v108, qword_10177C730);
    v94 = v156;
    sub_100017D5C(v49, v156);
    MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v109 = os_log_type_enabled(MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0, v93);
    v110 = v152;
    if (!v109)
    {
      sub_100016590(v152, v107);
      sub_100016590(v49, v94);
      sub_100016590(v154, v155);
      sub_100016590(v49, v94);

LABEL_114:
      (*(v151 + 8))(v153, v7);
      goto LABEL_49;
    }

    v111 = swift_slowAlloc();
    *v111 = 134217984;
    if (v101 > 1)
    {
      v112 = v156;
      if (v101 == 2)
      {
        v140 = *(v49 + 16);
        v139 = *(v49 + 24);
        v105 = __OFSUB__(v139, v140);
        v113 = v139 - v140;
        if (v105)
        {
          __break(1u);
          goto LABEL_100;
        }
      }

      else
      {
        v113 = 0;
      }

      goto LABEL_113;
    }

    v112 = v156;
    if (!v101)
    {
      v113 = BYTE6(v156);
LABEL_113:
      *(v111 + 4) = v113;
      v143 = v111;
      v144 = v112;
      sub_100016590(v49, v112);
      _os_log_impl(&_mh_execute_header, MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0, v93, "Invalid payload length %ld", v143, 0xCu);

      sub_100016590(v154, v155);

      sub_100016590(v49, v144);
      sub_100016590(v110, v107);
      goto LABEL_114;
    }

    LODWORD(v113) = HIDWORD(v49) - v49;
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v113 = v113;
      goto LABEL_113;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v104 = *(v49 + 16);
  v103 = *(v49 + 24);
  v105 = __OFSUB__(v103, v104);
  v102 = v103 - v104;
  if (v105)
  {
    __break(1u);
LABEL_65:
    LODWORD(v102) = HIDWORD(v49) - v49;
    if (__OFSUB__(HIDWORD(v49), v49))
    {
      __break(1u);
      goto LABEL_116;
    }

    v102 = v102;
  }

LABEL_67:
  switch(v102)
  {
    case 2:
      v148 = v101;
      v106 = 0;
      break;
    case 25:
      v148 = v101;
      v106 = 2;
      break;
    case 24:
      v148 = v101;
      v106 = 1;
      break;
    default:
      goto LABEL_71;
  }

  v150 = v66;
  v149 = Data._Representation.subscript.getter();
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_85;
  }

  v116 = sub_100771D58(v114, v115);
  v118 = v117;

  if ((v118 & 1) == 0)
  {
LABEL_85:

    goto LABEL_86;
  }

  sub_100013894(*(a1 + 56) + 32 * v116, &v159);

  if (swift_dynamicCast())
  {
    v94 = v157;
    goto LABEL_87;
  }

LABEL_86:
  v94 = 0;
LABEL_87:
  v119 = v156;
  if (v106 != 2)
  {
    if (v106 != 1)
    {
      v156 = Data._Representation.subscript.getter() << 8;
      LOBYTE(v157) = 1;
      v132 = v151;
      v133 = v153;
      (*(v151 + 16))(v11, v153, v7);
      v159 = MACAddress.data.getter();
      v160 = v134;
      Data._Representation.subscript.getter();
      Data._Representation.subscript.setter();
      sub_100016590(v154, v155);
      v135 = v119;
      v136 = v156;
      sub_100016590(v49, v135);
      sub_100016590(v152, v150);
      v137 = *(v132 + 8);
      v137(v11, v7);
      v137(v133, v7);
      MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0 = v159;
      v138 = v160;
      sub_100017D5C(v159, v160);
      sub_100016590(MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0, v138);
      v96 = 0;
      v93 = (v138 | 0x2000000000000000);
      v97 = 0xC000000000000000;
LABEL_109:
      v95 = (v136 | v149 | (v157 << 24));
      goto LABEL_50;
    }

    LODWORD(v110) = Data._Representation.subscript.getter();
    LOBYTE(v157) = 1;
    v120 = Data._Representation.subscript.getter();
    v122 = v121;
    (*(v151 + 16))(v11, v153, v7);
    sub_100017D5C(v120, v122);
    v146 = v122;
    v147 = v120;
    MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0 = _s12searchpartyd13AdvertisementV10macAddress7pubKey22ekAC10FindMyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0(v11, v120, v122, v110);
    v93 = v123;
    if (v148 != 2)
    {
      if (v148 == 1)
      {
        v124 = v49 >> 32;
      }

      else
      {
        v124 = BYTE6(v156);
      }

LABEL_103:
      if (v124 >= 23)
      {
        v136 = v110 << 8;
LABEL_108:
        v141 = v156;
        v96 = Data._Representation.subscript.getter();
        v97 = v142;
        sub_100016590(v154, v155);
        sub_100016590(v49, v141);
        sub_100016590(v147, v146);
        sub_100016590(v152, v150);
        (*(v151 + 8))(v153, v7);
        goto LABEL_109;
      }

      goto LABEL_117;
    }

LABEL_100:
    v124 = *(v49 + 24);
    goto LABEL_103;
  }

  v125 = Data._Representation.subscript.getter();
  v126 = Data._Representation.subscript.getter();
  LOBYTE(v157) = 0;
  v127 = Data._Representation.subscript.getter();
  v129 = v128;
  (*(v151 + 16))(v11, v153, v7);
  sub_100017D5C(v127, v129);
  v146 = v129;
  v147 = v127;
  MyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0 = _s12searchpartyd13AdvertisementV10macAddress7pubKey22ekAC10FindMyBase10MACAddressV_10Foundation4DataVs5UInt8VtcfC_0(v11, v127, v129, v125);
  v93 = v130;
  if (v148 == 2)
  {
    v131 = *(v49 + 24);
  }

  else if (v148 == 1)
  {
    v131 = v49 >> 32;
  }

  else
  {
    v131 = BYTE6(v156);
  }

  if (v131 >= 23)
  {
    v136 = (v125 << 8) | (v126 << 16);
    goto LABEL_108;
  }

LABEL_118:
  __break(1u);
}

uint64_t sub_1002E5E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 2;
  }

  result = Data._Representation.subscript.getter();
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v6 != 2)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = HIDWORD(a1) - a1;
  }

LABEL_12:
  if (v7 < 1)
  {
    goto LABEL_41;
  }

  v31[3] = &type metadata for Data;
  v31[4] = &protocol witness table for Data;
  v31[0] = Data._Representation.subscript.getter();
  v31[1] = v10;
  v11 = sub_1000035D0(v31, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v29, 0, 14);
      v16 = v29;
      v15 = v29;
      goto LABEL_35;
    }

    v17 = *(v12 + 16);
    v18 = *(v12 + 24);
    v19 = __DataStorage._bytes.getter();
    if (v19)
    {
      v20 = __DataStorage._offset.getter();
      v12 = v17 - v20;
      if (__OFSUB__(v17, v20))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v19 += v12;
    }

    v21 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (!v21)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v14)
  {
LABEL_23:
    v23 = v12;
    v24 = v12 >> 32;
    v22 = v24 - v23;
    if (v24 >= v23)
    {
      v19 = __DataStorage._bytes.getter();
      if (!v19)
      {
LABEL_27:
        v26 = __DataStorage._length.getter();
        if (v26 >= v22)
        {
          v27 = v22;
        }

        else
        {
          v27 = v26;
        }

        v28 = (v27 + v19);
        if (v19)
        {
          v15 = v28;
        }

        else
        {
          v15 = 0;
        }

        v16 = v19;
        goto LABEL_35;
      }

      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(v23, v25))
      {
        v19 += v23 - v25;
        goto LABEL_27;
      }

LABEL_40:
      __break(1u);
    }

    goto LABEL_38;
  }

  v29[0] = *v11;
  LOWORD(v29[1]) = v13;
  BYTE2(v29[1]) = BYTE2(v13);
  BYTE3(v29[1]) = BYTE3(v13);
  BYTE4(v29[1]) = BYTE4(v13);
  BYTE5(v29[1]) = BYTE5(v13);
  v15 = v29 + BYTE6(v13);
  v16 = v29;
LABEL_35:
  sub_100267F80(v16, v15, &v30);
  sub_100006654(a1, a2);
  sub_100007BAC(v31);
  return (v5 & 1) == 0;
}

uint64_t sub_1002E6124(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xFF00) != 0x200)
  {
    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_1002E6140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x383165707974 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5079636167656CLL && a2 == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752395632 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1002E625C(void *a1)
{
  v36 = sub_1000BC4D4(&qword_10169CB78, &qword_101399690);
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = &v33 - v2;
  v3 = sub_1000BC4D4(&qword_10169CB80, &qword_101399698);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = sub_1000BC4D4(&qword_10169CB88, &qword_1013996A0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_1000BC4D4(&qword_10169CB90, &qword_1013996A8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v42 = a1;
  sub_1000035D0(a1, v14);
  sub_1002E6F34();
  v15 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100007BAC(v42);
  }

  v34 = v7;
  v41 = 0;
  v16 = v40;
  v17 = v13;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_1000BC4D4(&qword_10169C868, &qword_101398420);
    *v24 = &type metadata for AdvertismentType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v11 + 8))(v17, v10);
    swift_unknownObjectRelease();
    return sub_100007BAC(v42);
  }

  if (!*(v18 + 32))
  {
    v43 = 0;
    sub_1002E7030();
    v28 = v41;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v28)
    {
      (*(v35 + 8))(v9, v34);
      (*(v11 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v26 = 0;
      v27 = 1;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v20 != 1)
  {
    v45 = 2;
    sub_1002E6F88();
    v29 = v13;
    v30 = v41;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v30)
    {
      v32 = v36;
      v26 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v39 + 8))(v16, v32);
      (*(v11 + 8))(v29, v10);
      v27 = 0;
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v44[0] = 1;
  sub_1002E6FDC();
  v25 = v41;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v25)
  {
LABEL_16:
    (*(v11 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return sub_100007BAC(v42);
  }

  (*(v38 + 8))(v6, v37);
  (*(v11 + 8))(v13, v10);
  swift_unknownObjectRelease();
  v26 = 1;
  v27 = 1;
LABEL_20:
  sub_100007BAC(v42);
  return v26 | (v27 << 8);
}

void *sub_1002E6804(void *a1)
{
  v21[0] = sub_1000BC4D4(&qword_10169CB10, &qword_101399658);
  v22 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v3 = v21 - v2;
  v4 = sub_1000BC4D4(&qword_10169CB18, &qword_101399660);
  v21[1] = *(v4 - 8);
  __chkstk_darwin(v4);
  v5 = sub_1000BC4D4(&qword_10169CB20, &unk_101399668);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = a1[3];
  v25 = a1;
  v10 = sub_1000035D0(a1, v9);
  sub_1002E6CE8();
  v11 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v23 = v6;
    v12 = v5;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      v13 = v23;
      LOBYTE(v24) = 1;
      sub_1002E6D3C();
      v14 = v8;
      v15 = v3;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1002E6D90();
      v20 = v21[0];
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v22 + 8))(v15, v20);
      (*(v13 + 8))(v14, v12);
      swift_unknownObjectRelease();
      v10 = v24;
    }

    else
    {
      v10 = v8;
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      sub_1000BC4D4(&qword_10169C868, &qword_101398420);
      *v18 = &type metadata for AdvertisementUnion;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
      swift_willThrow();
      (*(v23 + 8))(v8, v5);
      swift_unknownObjectRelease();
    }
  }

  sub_100007BAC(v25);
  return v10;
}

unint64_t sub_1002E6CE8()
{
  result = qword_10169CB28;
  if (!qword_10169CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB28);
  }

  return result;
}

unint64_t sub_1002E6D3C()
{
  result = qword_10169CB30;
  if (!qword_10169CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB30);
  }

  return result;
}

unint64_t sub_1002E6D90()
{
  result = qword_10169CB38;
  if (!qword_10169CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB38);
  }

  return result;
}

unint64_t sub_1002E6DE4()
{
  result = qword_10169CB40;
  if (!qword_10169CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB40);
  }

  return result;
}

unint64_t sub_1002E6E38()
{
  result = qword_10169CB48;
  if (!qword_10169CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB48);
  }

  return result;
}