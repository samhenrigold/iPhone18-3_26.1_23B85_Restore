double sub_100398410(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 16;
  v7 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  sub_10040CD68(v6, v9);

  v10 = v9[*(v7 + 108)];
  sub_1003A4664(v9, type metadata accessor for NANPeer);
  if ((v10 & 1) == 0)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100002320(a1, a2, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
      sub_100002A00(v15);
    }

    swift_unownedRetainStrong();
    sub_10040CD68(v6, v9);
    v9[*(v7 + 108)] = 1;
    sub_10040E430(v9, v6);
  }

  return result;
}

void sub_10039860C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v413 = a4;
  v446 = a1;
  v447 = a2;
  v448 = a3;
  v6 = *v4;
  v7 = swift_isaMask;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v412 = &v362 - v8;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v386 = &v362 - v9;
  v411 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v414 = *(v411 - 8);
  __chkstk_darwin();
  v387 = &v362 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v393 = &v362 - v11;
  __chkstk_darwin();
  v389 = &v362 - v12;
  __chkstk_darwin();
  v390 = &v362 - v13;
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v385 = &v362 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v399 = &v362 - v15;
  __chkstk_darwin();
  v398 = &v362 - v16;
  v404 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v392 = &v362 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v382 = &v362 - v18;
  __chkstk_darwin();
  v388 = &v362 - v19;
  __chkstk_darwin();
  v394 = &v362 - v20;
  __chkstk_darwin();
  v397 = &v362 - v21;
  v22 = type metadata accessor for NANIdentityKey(0);
  v383 = *(v22 - 8);
  v384 = v22;
  __chkstk_darwin();
  v438 = &v362 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v408 = *(v428 - 8);
  __chkstk_darwin();
  v439 = &v362 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v440 = &v362 - v25;
  __chkstk_darwin();
  v425 = &v362 - v26;
  v403 = *((v7 & v6) + 0x58);
  v27 = *(v403 + 8);
  v415 = *((v7 & v6) + 0x50);
  v416 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v422 = *(AssociatedTypeWitness - 8);
  v423 = AssociatedTypeWitness;
  __chkstk_darwin();
  v410 = &v362 - v29;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v407 = &v362 - v30;
  v432 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v421 = &v362 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v418 = &v362 - v32;
  __chkstk_darwin();
  v409 = &v362 - v33;
  v437 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v420 = &v362 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v419 = &v362 - v35;
  __chkstk_darwin();
  v417 = &v362 - v36;
  __chkstk_darwin();
  v426 = &v362 - v37;
  __chkstk_darwin();
  v424 = &v362 - v38;
  __chkstk_darwin();
  v40 = &v362 - v39;
  sub_10005DC58(&unk_1005985D0, &unk_1004B17A0);
  __chkstk_darwin();
  v434 = &v362 - v41;
  v443 = type metadata accessor for NANPeer.Service(0);
  v427 = *(v443 - 1);
  __chkstk_darwin();
  v401 = v42;
  v402 = &v362 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v442 = &v362 - v43;
  v44 = BYTE1(v446);
  v45 = BYTE2(v446);
  v46 = BYTE3(v446);
  v47 = BYTE4(v446);
  v48 = BYTE5(v446);
  v49 = BYTE6(v446);
  v50 = HIBYTE(v446);
  v51 = swift_unownedRetainStrong();
  v436 = v47;
  v435 = v46;
  v52 = (v47 << 16) | (v46 << 8);
  v53 = v51;
  v431 = v48;
  v430 = v49;
  v54 = v52 | (v48 << 24) | (v49 << 32);
  v55 = v44;
  v433 = v50;
  v444 = v45;
  v441 = v54 | (v50 << 40);
  sub_10040CD68(v441 | v45, v40);

  v56 = &v5[qword_10059BAE8];
  swift_beginAccess();

  v57 = v434;
  sub_1002E7050(v55, v434);

  v429 = v40;
  sub_1003A4664(v40, type metadata accessor for NANPeer);
  if ((*(v427 + 48))(v57, 1, v443) == 1)
  {
    v58 = v435;
    v59 = v436;
    v60 = v444;
    v61 = v55;
    sub_100016290(v57, &unk_1005985D0, &unk_1004B17A0);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v452 = v65;
      *v64 = 136315138;
      v66 = NANPeerServiceIdentifier.description.getter(v61 | (v60 << 8) | (v58 << 16) | (v59 << 24) | (v431 << 32) | (v430 << 40) | (v433 << 48));
      v68 = sub_100002320(v66, v67, &v452);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to find the service descriptor or service descriptor extension attributes for %s", v64, 0xCu);
      sub_100002A00(v65);
    }

    return;
  }

  v400 = v5;
  sub_1003A46C4(v57, v442, type metadata accessor for NANPeer.Service);
  sub_10005DC58(&unk_1005985E8, &qword_1004B25C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  v391 = v55;
  LOBYTE(v452) = v55;
  AnyHashable.init<A>(_:)();
  v70 = v444;
  LOBYTE(v452) = v444;
  BYTE1(v452) = v435;
  BYTE2(v452) = v436;
  BYTE3(v452) = v431;
  BYTE4(v452) = v430;
  BYTE5(v452) = v433;
  sub_1002CAFC4();
  AnyHashable.init<A>(_:)();
  v71 = *(v56 + 1);
  v72 = *(v56 + 2);
  v395 = v56;
  *&v452 = v71;
  *(&v452 + 1) = v72;
  sub_1003A472C();

  AnyHashable.init<A>(_:)();
  v374 = static WiFiP2PHasher.hash(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v396 = swift_allocBox();
  v74 = v73;
  v75 = type metadata accessor for UUID();
  v434 = *(v75 - 1);
  v76 = *(v434 + 56);
  v380 = v434 + 56;
  v381 = v74;
  v443 = v75;
  v379 = v76;
  (v76)(v74, 1, 1);
  swift_unownedRetainStrong();
  v77 = v441;
  v78 = v424;
  sub_10040CD68(v441 | v70, v424);

  v79 = *(v78 + *(v437 + 56));
  v80 = v53;
  if (v79)
  {
    *&v452 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
    *&v449 = v79;
    sub_10027B614();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  sub_1003A4664(v78, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v81 = v426;
  sub_10040CD68(v77 | v70, v426);

  v82 = v437;
  v83 = (v81 + *(v437 + 84));
  v84 = v70;
  v85 = v83[1];
  v87 = v83[2];
  v86 = v83[3];
  v432 = *v83;
  sub_1003A4780(v432, v85, v87, v86);
  sub_1003A4664(v81, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v426 = v80;
  if (v85 >> 60 == 15)
  {
    v88 = v418;
    v379(v418, 1, 1, v443);
    v89 = v429;
    sub_10040CD68(v77 | v84, v429);
    sub_10036C8F0(v88, v89 + v82[22]);
    sub_10040E430(v89, v77 | v84);
    goto LABEL_146;
  }

  swift_unownedRetainStrong();
  v91 = v422;
  v90 = v423;
  v92 = v410;
  (*(v422 + 16))(v410, v80 + *(*v80 + 112), v423);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(v90, AssociatedConformanceWitness);
  (*(v91 + 8))(v92, v90);
  v94 = LongTermPairingKeyStore.getPairedPeersWithIDs()();
  v423 = v94;

  v95 = v94 + 64;
  v96 = 1 << *(v94 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v94 + 64);
  v416 = (v96 + 63) >> 6;
  v410 = (v434 + 16);
  v99 = v432;
  if (v432)
  {
    v100 = 0;
  }

  else
  {
    v100 = v85 == 0xC000000000000000;
  }

  v101 = !v100;
  v376 = v101;
  v406 = v85 >> 62;
  v102 = __OFSUB__(HIDWORD(v432), v432);
  v369 = v102;
  v368 = HIDWORD(v432) - v432;
  v422 = v85;
  v373 = BYTE6(v85);
  if (v87)
  {
    v103 = 0;
  }

  else
  {
    v103 = v86 == 0xC000000000000000;
  }

  v104 = !v103;
  v371 = v104;
  v377 = v86 >> 62;
  v424 = v87;
  v105 = __OFSUB__(HIDWORD(v87), v87);
  v367 = v105;
  v366 = HIDWORD(v87) - v87;
  v370 = BYTE6(v86);
  v405 = (v434 + 8);

  v106 = 0;
  v378 = 0;
  v375 = v86;
  v107 = v416;
  if (!v98)
  {
LABEL_30:
    while (1)
    {
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v108 >= v107)
      {

        v175 = v407;
        v174 = v408;
        v176 = v428;
        (*(v408 + 56))(v407, 1, 1, v428);
        v84 = v444;
        goto LABEL_142;
      }

      v98 = *(v95 + 8 * v108);
      ++v106;
      if (v98)
      {
        v106 = v108;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_237;
  }

  while (1)
  {
LABEL_34:
    v109 = __clz(__rbit64(v98)) | (v106 << 6);
    v110 = v423;
    v111 = v425;
    (*(v434 + 16))(v425, *(v423 + 48) + *(v434 + 72) * v109, v443);
    v112 = *(v110 + 56);
    v113 = v112 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v109;
    v114 = v428;
    sub_1003A4E40(v113, v111 + *(v428 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
    v115 = v440;
    sub_10001CEA8(v111, v440, &unk_100597500, &unk_1004939B0);
    v116 = v439;
    sub_100012400(v115, v439, &unk_100597500, &unk_1004939B0);
    v117 = *(v114 + 48);
    v81 = v438;
    sub_1003A4E40(&v116[v117], v438, type metadata accessor for NANIdentityKey);
    sub_1003A4664(&v116[v117], type metadata accessor for NANPairedDeviceSharedAssociation);
    v118 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v441 | v444, v99, v422);
    v120 = v118;
    v122 = v121;
    v124 = v123;
    v125 = v119 >> 62;
    if (v119 >> 62 == 3)
    {
      if (v118)
      {
        v126 = 0;
      }

      else
      {
        v126 = v119 == 0xC000000000000000;
      }

      v127 = v406;
      v129 = !v126 || v406 < 3;
      v130 = v424;
      if (((v129 | v376) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_56:
      v131 = 0;
      if (v127 <= 1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v130 = v424;
    v127 = v406;
    if (v125 > 1)
    {
      if (v125 != 2)
      {
        goto LABEL_56;
      }

      v133 = *(v118 + 16);
      v132 = *(v118 + 24);
      v134 = __OFSUB__(v132, v133);
      v131 = v132 - v133;
      if (v134)
      {
        goto LABEL_247;
      }

      if (v406 <= 1)
      {
        goto LABEL_53;
      }
    }

    else if (v125)
    {
      LODWORD(v131) = HIDWORD(v118) - v118;
      if (__OFSUB__(HIDWORD(v118), v118))
      {
        goto LABEL_246;
      }

      v131 = v131;
      if (v406 <= 1)
      {
LABEL_53:
        v135 = v373;
        if (v127)
        {
          v135 = v368;
          if (v369)
          {
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v131 = BYTE6(v119);
      if (v406 <= 1)
      {
        goto LABEL_53;
      }
    }

LABEL_57:
    if (v127 != 2)
    {
      if (v131)
      {
        goto LABEL_117;
      }

      goto LABEL_86;
    }

    v137 = *(v432 + 16);
    v136 = *(v432 + 24);
    v134 = __OFSUB__(v136, v137);
    v135 = v136 - v137;
    if (v134)
    {
      goto LABEL_243;
    }

LABEL_59:
    if (v131 != v135)
    {
      goto LABEL_117;
    }

    if (v131 < 1)
    {
      goto LABEL_86;
    }

    if (v125 > 1)
    {
      if (v125 != 2)
      {
        *(&v452 + 6) = 0;
        *&v452 = 0;
        v147 = v119;
        v81 = v378;
        sub_100031E04(&v452, v432, v422, &v449);
        v119 = v147;
        v378 = v81;
        v130 = v424;
        if ((v449 & 1) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      v139 = *(v118 + 16);
      v365 = *(v118 + 24);
      v372 = v119;
      v140 = __DataStorage._bytes.getter();
      if (v140)
      {
        v141 = v140;
        v142 = __DataStorage._offset.getter();
        if (__OFSUB__(v139, v142))
        {
          goto LABEL_256;
        }

        v364 = v139 - v142 + v141;
      }

      else
      {
        v364 = 0;
      }

      if (__OFSUB__(v365, v139))
      {
        goto LABEL_253;
      }

      __DataStorage._length.getter();
      v81 = v378;
      sub_100031E04(v364, v432, v422, &v452);
      v119 = v372;
    }

    else
    {
      if (!v125)
      {
        *&v452 = v118;
        WORD4(v452) = v119;
        BYTE10(v452) = BYTE2(v119);
        BYTE11(v452) = BYTE3(v119);
        BYTE12(v452) = BYTE4(v119);
        BYTE13(v452) = BYTE5(v119);
        v138 = v119;
        v81 = v378;
        sub_100031E04(&v452, v432, v422, &v449);
        v119 = v138;
        v130 = v424;
        v378 = v81;
        if ((v449 & 1) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      v365 = (v118 >> 32) - v118;
      if (v118 >> 32 < v118)
      {
        goto LABEL_252;
      }

      v372 = v119;
      v143 = __DataStorage._bytes.getter();
      if (v143)
      {
        v144 = v143;
        v145 = __DataStorage._offset.getter();
        if (__OFSUB__(v120, v145))
        {
          goto LABEL_257;
        }

        v146 = v120 - v145 + v144;
      }

      else
      {
        v146 = 0;
      }

      v148 = v372;
      __DataStorage._length.getter();
      v149 = v146;
      v81 = v378;
      sub_100031E04(v149, v432, v422, &v452);
      v119 = v148;
    }

    v378 = v81;
    v130 = v424;
    if ((v452 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_86:
    v150 = v124 >> 62;
    if (v124 >> 62 == 3)
    {
      if (v122)
      {
        v151 = 0;
      }

      else
      {
        v151 = v124 == 0xC000000000000000;
      }

      v152 = v377;
      v154 = !v151 || v377 < 3;
      v84 = v444;
      if (((v154 | v371) & 1) == 0)
      {
        sub_1000124C8(v120, v119);
        sub_1000124C8(0, 0xC000000000000000);
        goto LABEL_234;
      }

LABEL_108:
      v155 = 0;
      if (v152 > 1)
      {
        goto LABEL_109;
      }

      goto LABEL_105;
    }

    v152 = v377;
    if (v150 <= 1)
    {
      break;
    }

    if (v150 != 2)
    {
      goto LABEL_108;
    }

    v157 = *(v122 + 16);
    v156 = *(v122 + 24);
    v134 = __OFSUB__(v156, v157);
    v155 = v156 - v157;
    if (v134)
    {
      goto LABEL_248;
    }

    if (v377 > 1)
    {
      goto LABEL_109;
    }

LABEL_105:
    v158 = v370;
    if (v152)
    {
      v158 = v366;
      if (v367)
      {
        goto LABEL_244;
      }
    }

LABEL_111:
    if (v155 != v158)
    {
      goto LABEL_117;
    }

    if (v155 < 1)
    {
      goto LABEL_233;
    }

    if (v150 > 1)
    {
      v365 = v122;
      v372 = v119;
      v84 = v444;
      if (v150 != 2)
      {
        *(&v452 + 6) = 0;
        *&v452 = 0;
        v81 = v378;
        sub_100031E04(&v452, v130, v375, &v449);
        v378 = v81;
        sub_1000124C8(v120, v372);
        v162 = v365;
        goto LABEL_132;
      }

      v163 = *(v365 + 16);
      v364 = *(v365 + 24);
      v164 = __DataStorage._bytes.getter();
      if (v164)
      {
        v165 = v164;
        v166 = __DataStorage._offset.getter();
        if (__OFSUB__(v163, v166))
        {
          goto LABEL_254;
        }

        v363 = v163 - v166 + v165;
      }

      else
      {
        v363 = 0;
      }

      if (__OFSUB__(v364, v163))
      {
        goto LABEL_251;
      }

      __DataStorage._length.getter();
      v173 = v363;
    }

    else
    {
      v84 = v444;
      if (!v150)
      {
        *&v452 = v122;
        WORD4(v452) = v124;
        BYTE10(v452) = BYTE2(v124);
        BYTE11(v452) = BYTE3(v124);
        BYTE12(v452) = BYTE4(v124);
        BYTE13(v452) = BYTE5(v124);
        v161 = v119;
        v81 = v378;
        sub_100031E04(&v452, v130, v375, &v449);
        v378 = v81;
        sub_1000124C8(v120, v161);
        v162 = v122;
LABEL_132:
        sub_1000124C8(v162, v124);
        v172 = v449;
        goto LABEL_139;
      }

      v372 = v119;
      v167 = v122;
      v364 = (v122 >> 32) - v122;
      v365 = v122;
      if (v122 >> 32 < v122)
      {
        goto LABEL_250;
      }

      v168 = __DataStorage._bytes.getter();
      if (v168)
      {
        v169 = v168;
        v170 = __DataStorage._offset.getter();
        if (__OFSUB__(v167, v170))
        {
          goto LABEL_255;
        }

        v171 = v167 - v170 + v169;
      }

      else
      {
        v171 = 0;
      }

      __DataStorage._length.getter();
      v173 = v171;
    }

    v81 = v378;
    sub_100031E04(v173, v424, v375, &v452);
    v378 = v81;
    sub_1000124C8(v120, v372);
    sub_1000124C8(v365, v124);
    v172 = v452;
LABEL_139:
    sub_1003A4664(v438, type metadata accessor for NANIdentityKey);
    if (v172)
    {
      goto LABEL_235;
    }

LABEL_118:
    v98 &= v98 - 1;
    (*v405)(v439, v443);
    sub_100016290(v440, &unk_100597500, &unk_1004939B0);
    v99 = v432;
    v107 = v416;
    if (!v98)
    {
      goto LABEL_30;
    }
  }

  if (!v150)
  {
    v155 = BYTE6(v124);
    if (v377 > 1)
    {
      goto LABEL_109;
    }

    goto LABEL_105;
  }

  LODWORD(v155) = HIDWORD(v122) - v122;
  if (__OFSUB__(HIDWORD(v122), v122))
  {
    goto LABEL_249;
  }

  v155 = v155;
  if (v377 <= 1)
  {
    goto LABEL_105;
  }

LABEL_109:
  if (v152 == 2)
  {
    v160 = *(v130 + 16);
    v159 = *(v130 + 24);
    v134 = __OFSUB__(v159, v160);
    v158 = v159 - v160;
    if (v134)
    {
      goto LABEL_245;
    }

    goto LABEL_111;
  }

  if (v155)
  {
LABEL_117:
    sub_1000124C8(v120, v119);
    sub_1000124C8(v122, v124);
    sub_1003A4664(v438, type metadata accessor for NANIdentityKey);
    goto LABEL_118;
  }

LABEL_233:
  sub_1000124C8(v120, v119);
  sub_1000124C8(v122, v124);
  v84 = v444;
LABEL_234:
  sub_1003A4664(v438, type metadata accessor for NANIdentityKey);
LABEL_235:
  (*v405)(v439, v443);

  v175 = v407;
  sub_10001CEA8(v440, v407, &unk_100597500, &unk_1004939B0);
  v174 = v408;
  v176 = v428;
  (*(v408 + 56))(v175, 0, 1, v428);
LABEL_142:

  v177 = (*(v174 + 48))(v175, 1, v176);
  v77 = v441;
  v89 = v429;
  v88 = v418;
  if (v177 == 1)
  {
    sub_100016290(v175, &unk_1005985B0, &unk_1004939A0);
    v178 = v409;
    v379(v409, 1, 1, v443);
  }

  else
  {
    v179 = *(v176 + 48);
    v180 = v409;
    v181 = v443;
    (*(v434 + 32))(v409, v175, v443);
    v379(v180, 0, 1, v181);
    v178 = v180;
    sub_1003A4664(v175 + v179, type metadata accessor for NANPairedDeviceSharedAssociation);
  }

  sub_10040CD68(v77 | v84, v89);
  v82 = v437;
  sub_10036C8F0(v178, v89 + *(v437 + 88));
  sub_10040E430(v89, v77 | v84);
  sub_1002E9FD4(v432, v422, v424, v375);
LABEL_146:

  v182 = v381;
  swift_unownedRetainStrong();
  sub_10040CD68(v77 | v84, v89);

  sub_100012400(v89 + v82[22], v88, &qword_10058F4D0, &qword_100491AB0);
  sub_1003A4664(v89, type metadata accessor for NANPeer);
  sub_10036C8F0(v88, v182);
  swift_unownedRetainStrong();
  v183 = v77 | v84;
  v184 = v417;
  sub_10040CD68(v183, v417);

  v185 = v184 + v82[20];
  v186 = *v185;
  v187 = *(v185 + 8);
  v188 = *(v185 + 16);
  v189 = *(v185 + 24);
  v190 = *(v185 + 32);
  v191 = *(v185 + 40);
  sub_10036CC58(*v185, v187, v188, v189, v190);
  sub_1003A4664(v184, type metadata accessor for NANPeer);
  if ((v186 & 0xFF0000) != 0xE0000)
  {
    sub_1002EA024(v186, v187, v188, v189, v190);
    v192 = *(NANAttribute.PairingBootstrapping.Method.validAdvertiseAPIValues.getter(v191) + 2);
    if (v192)
    {
      *&v452 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v193 = 32;
      do
      {
        Int._bridgeToObjectiveC()();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v193 += 8;
        --v192;
      }

      while (v192);
    }
  }

  swift_unownedRetainStrong();
  v194 = v441;
  v195 = v444;
  v196 = v419;
  sub_10040CD68(v441 | v444, v419);

  v197 = v437;
  v198 = *(v196 + *(v437 + 56));

  sub_1003A4664(v196, type metadata accessor for NANPeer);
  if (v198)
  {
    *&v452 = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    *&v449 = v198;
    sub_10027B614();

    v199 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  else
  {
    v199 = 0;
  }

  v200 = v391;
  v201 = v421;
  v202 = objc_allocWithZone(WiFiAwarePairingConfiguration);
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v439 = [v202 initWithSupportedPairSetupMethods:isa pairingCachingEnabled:v199 & 1];

  swift_unownedRetainStrong();
  v204 = v420;
  sub_10040CD68(v194 | v195, v420);

  sub_100012400(v204 + v197[22], v201, &qword_10058F4D0, &qword_100491AB0);
  sub_1003A4664(v204, type metadata accessor for NANPeer);
  v205 = *(v434 + 48);
  LODWORD(v440) = 1;
  LODWORD(v204) = v205(v201, 1, v443) == 1;
  sub_100016290(v201, &qword_10058F4D0, &qword_100491AB0);
  swift_unownedRetainStrong();
  v206 = v429;
  sub_10040CD68(v194 | v195, v429);
  v207 = v197[24];
  LODWORD(v443) = v204;
  *(v206 + v207) = v204;
  sub_10040E430(v206, v194 | v195);

  v208 = sub_1002E1478();
  v209 = v400;
  v210 = v395;
  v211 = v200;
  if ((v208 & 1) == 0)
  {
    if (*(v442 + 96) != 5)
    {
      v212 = *(v442 + 82);
      if (v212)
      {
        if ((v212 & 2) == 0)
        {

          goto LABEL_160;
        }

        v213 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v213)
        {
LABEL_160:
          if (v413)
          {
            LODWORD(v440) = 1;
            goto LABEL_163;
          }
        }
      }
    }

    swift_unownedRetainStrong();
    v214 = *v210;
    v215 = v429;
    sub_10040CD68(v194 | v195, v429);
    LODWORD(v440) = sub_1002E18E0(v214);
    v216 = v215;
    v211 = v200;
    sub_10040E430(v216, v194 | v195);
  }

LABEL_163:
  v217 = type metadata accessor for NANSubscribe.Configuration(0);
  if ((v210[*(v217 + 68)] & 1) == 0)
  {
    v229 = qword_10059BB08;
    v230 = v433;
    v218 = v430;
    if (v440)
    {
      swift_beginAccess();
      v231 = v211 | (v195 << 8) | (v435 << 16) | (v436 << 24) | (v431 << 32) | (v218 << 40) | (v230 << 48);
      v232 = v398;
      sub_1003AD5FC(v231, v398);
      swift_endAccess();
      if ((*(v414 + 48))(v232, 1, v411) == 1)
      {

        sub_100016290(v232, &unk_100597460, &qword_1004AFD18);
LABEL_204:

        goto LABEL_210;
      }

      v240 = v397;
      sub_1003A4E40(v232, v397, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_1003A4664(v232, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_182:
        sub_1003A4664(v240, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        goto LABEL_183;
      }
    }

    else
    {
      swift_beginAccess();
      v233 = *&v209[v229];
      if (*(v233 + 16) && (v234 = sub_10007CD94(v211 | (v195 << 8) | (v435 << 16) | (v436 << 24) | (v431 << 32) | (v218 << 40) | (v230 << 48)), (v235 & 1) != 0))
      {
        v236 = v399;
        sub_1003A4E40(*(v233 + 56) + *(v414 + 72) * v234, v399, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v237 = 0;
      }

      else
      {
        v237 = 1;
        v236 = v399;
      }

      v238 = v414;
      v239 = v411;
      (*(v414 + 56))(v236, v237, 1, v411);
      if ((*(v238 + 48))(v236, 1, v239))
      {
        sub_100016290(v236, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
        goto LABEL_209;
      }

      v240 = v394;
      sub_1003A4E40(v236, v394, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v236, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v210 = v395;
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_182;
      }
    }

    sub_1003A4664(v240, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    goto LABEL_204;
  }

  v218 = v430;
  if (*(v442 + 96) == 5 || (*(v442 + 80) & 0x30000) != 0x10000 || v413)
  {
LABEL_183:
    swift_beginAccess();
    v241 = v211 | (v195 << 8) | (v435 << 16) | (v436 << 24) | (v431 << 32) | (v218 << 40) | (v433 << 48);
    v242 = sub_10046F5A4(&v449, v241);
    swift_endAccess();
    sub_100391A68();
    v243 = BYTE5(v449);
    if (v242)
    {
      v244 = BYTE1(v449);
      v435 = BYTE2(v449);
      v436 = BYTE3(v449);
      v437 = v449;
      v438 = BYTE4(v449);
      v440 = BYTE6(v449);
      v245 = v209;
      sub_100185384(&v446, &v452);
      v246 = Logger.logObject.getter();
      v247 = static os_log_type_t.default.getter();
      v444 = v245;

      sub_1003A47D0(&v446);
      v248 = os_log_type_enabled(v246, v247);
      v434 = v241;
      if (v248)
      {
        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        *&v452 = swift_slowAlloc();
        *v249 = 138412802;
        v251 = v444;
        *(v249 + 4) = v444;
        *v250 = v209;
        *(v249 + 12) = 2080;
        v252 = v437 | (v244 << 8) | (v435 << 16) | (v436 << 24) | (v438 << 32) | (v243 << 40) | (v440 << 48);
        v253 = v251;
        v254 = NANPeerServiceIdentifier.description.getter(v252);
        v256 = sub_100002320(v254, v255, &v452);

        *(v249 + 14) = v256;
        *(v249 + 22) = 2080;
        v257 = RSSI.description.getter();
        v259 = sub_100002320(v257, v258, &v452);

        *(v249 + 24) = v259;
        _os_log_impl(&_mh_execute_header, v246, v247, "%@ received a new discovery result %s at %s", v249, 0x20u);
        sub_100016290(v250, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();
      }

      v260 = type metadata accessor for TaskPriority();
      (*(*(v260 - 8) + 56))(v412, 1, 1, v260);
      v261 = v402;
      sub_1003A4E40(v442, v402, type metadata accessor for NANPeer.Service);
      v262 = v447;
      v263 = v448;
      v264 = (*(v427 + 80) + 80) & ~*(v427 + 80);
      v441 = (v264 + v401 + 7) & 0xFFFFFFFFFFFFFFF8;
      v265 = (v264 + v401 + 23) & 0xFFFFFFFFFFFFFFF8;
      v266 = (v265 + 15) & 0xFFFFFFFFFFFFFFF8;
      v267 = swift_allocObject();
      v267[2] = 0;
      v267[3] = 0;
      v268 = v403;
      v267[4] = v415;
      v267[5] = v268;
      v267[6] = v446;
      v267[7] = v262;
      v267[8] = v263;
      v269 = v444;
      v267[9] = v444;
      sub_1003A46C4(v261, v267 + v264, type metadata accessor for NANPeer.Service);
      v270 = v267 + v441;
      *v270 = v413;
      v270[8] = v443;
      v271 = v439;
      *(v267 + v265) = v439;
      *(v267 + v266) = v396;
      *(v267 + ((v266 + 15) & 0xFFFFFFFFFFFFFFF8)) = v374;
      v272 = v269;
      sub_100185384(&v446, &v452);

      v273 = v271;

      sub_1003ACB3C(0, 0, v412, &unk_1004B25E0, v267);

      v274 = qword_10059BB08;
      swift_beginAccess();
      v275 = *&v272[v274];
      if (*(v275 + 16))
      {

        v276 = sub_10007CD94(v434);
        v277 = v442;
        if ((v278 & 1) == 0)
        {

LABEL_227:
          v209 = v400;
          goto LABEL_228;
        }

        v279 = v276;
        v280 = *(v275 + 36);

        v281 = v393;
        sub_1002CEEA4(&v449, v393, v279, v280, 0, *&v272[v274]);
        v282 = v392;
        sub_1003A4E40(v281, v392, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_1003A4664(v281, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_1003A4664(v282, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          swift_beginAccess();
          v282 = v387;
          sub_10046E9E8(&v445, v387, v279, v280);
          swift_endAccess();

          v283 = type metadata accessor for NANPeer.Service.AuthenticationStatus;
        }

        else
        {

          v283 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
        }

        sub_1003A4664(v282, v283);
LABEL_226:

        goto LABEL_227;
      }

      v209 = v400;
    }

    else
    {
      if (v440)
      {
        v432 = BYTE1(v449);
        v435 = BYTE2(v449);
        v436 = BYTE3(v449);
        v437 = v449;
        v438 = BYTE4(v449);
        v433 = BYTE5(v449);
        v440 = BYTE6(v449);
        v284 = v210[*(v217 + 68)];
        v99 = v209;
        if ((v284 & 1) == 0)
        {
          v434 = v241;
          v311 = Logger.logObject.getter();
          v312 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v311, v312))
          {
            v313 = swift_slowAlloc();
            v314 = swift_slowAlloc();
            v443 = swift_slowAlloc();
            *&v452 = v443;
            *v313 = 138412546;
            *(v313 + 4) = v99;
            *v314 = v209;
            *(v313 + 12) = 2080;
            v315 = v437 | (v432 << 8) | (v435 << 16) | (v436 << 24) | (v438 << 32) | (v433 << 40) | (v440 << 48);
            v316 = v99;
            v317 = NANPeerServiceIdentifier.description.getter(v315);
            v319 = sub_100002320(v317, v318, &v452);

            *(v313 + 14) = v319;
            _os_log_impl(&_mh_execute_header, v311, v312, "%@ aging out discovery result %s because re-authentication is required", v313, 0x16u);
            sub_100016290(v314, &qword_10058B780, &qword_100480AC0);
            v211 = v391;

            sub_100002A00(v443);
          }

          v277 = v442;
          v320 = v444;
          v321 = *&v99[qword_1005983F8];
          if (v321)
          {
            swift_unknownObjectRetain();
            v322 = WiFiAddress.apiAddress.getter(v441 | v320);
            [v321 subscribeLostDiscoveryResultForPublishID:v211 address:v322];

            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          sub_10037E5E4(v434, &v449);
          swift_endAccess();
          sub_100391A68();

          goto LABEL_228;
        }

        sub_100185384(&v446, &v452);
        v285 = Logger.logObject.getter();
        v286 = static os_log_type_t.default.getter();

        sub_1003A47D0(&v446);
        if (os_log_type_enabled(v285, v286))
        {
          v287 = v209;
          v288 = swift_slowAlloc();
          v289 = swift_slowAlloc();
          *&v452 = swift_slowAlloc();
          *v288 = 138412802;
          *(v288 + 4) = v99;
          *v289 = v287;
          *(v288 + 12) = 2080;
          v290 = v437 | (v432 << 8) | (v435 << 16) | (v436 << 24) | (v438 << 32) | (v433 << 40) | (v440 << 48);
          v291 = v99;
          v292 = NANPeerServiceIdentifier.description.getter(v290);
          v294 = sub_100002320(v292, v293, &v452);

          *(v288 + 14) = v294;
          *(v288 + 22) = 2080;
          v295 = RSSI.description.getter();
          v297 = sub_100002320(v295, v296, &v452);

          *(v288 + 24) = v297;
          v211 = v391;
          _os_log_impl(&_mh_execute_header, v285, v286, "%@ received new service specific info for %s at %s", v288, 0x20u);
          sub_100016290(v289, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();
        }

        v298 = v444;
        v299 = v441;
        v300 = qword_1005983F8;
        if (*&v99[qword_1005983F8] && (v445 = *&v99[qword_1005983F8], swift_unknownObjectRetain(), sub_10005DC58(&unk_1005974E0, &qword_1004B1818), sub_10005DC58(&unk_100597CB0, &unk_1004B1E80), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v450 + 1))
          {
            sub_100029954(&v449, &v452);
            v301 = v413;
            if (v413)
            {
              goto LABEL_240;
            }

            v81 = v442;
            v302 = *(v442 + 96);
            if ((v302 & 0xFE) != 4)
            {
              v303 = NANServiceInfo.genericServiceProtocol.getter(v302, *(v442 + 104), *(v442 + 112));
              if (v303)
              {
                v301 = v303;
                goto LABEL_240;
              }
            }

LABEL_237:
            v358 = *(v81 + 56);
            if (v358 == 4)
            {

LABEL_242:
              v359 = 0;
              goto LABEL_241;
            }

            v301 = NANServiceInfo.genericServiceProtocol.getter(v358, *(v81 + 64), *(v81 + 72));

            if (!v301)
            {
              goto LABEL_242;
            }

LABEL_240:

            v359 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v301);

LABEL_241:
            v360 = v453;
            v361 = v454;
            sub_100029B34(&v452, v453);
            (*(v361 + 16))(v359, v437 | (v432 << 8) | (v435 << 16) | (v436 << 24) | (v438 << 32) | (v433 << 40) | (v440 << 48), v360, v361);

            sub_100002A00(&v452);

            v306 = v446;
            v307 = v447;
            v308 = v448;
            v309 = v99;
            goto LABEL_211;
          }
        }

        else
        {
          v451 = 0;
          v449 = 0u;
          v450 = 0u;
        }

        sub_100016290(&v449, &unk_100597CA0, &unk_1004B1E70);
        v441 = v99;
        v344 = *&v99[v300];
        if (v344)
        {
          swift_unknownObjectRetain();
          v345 = WiFiAddress.apiAddress.getter(v299 | v298);
          [v344 subscribeLostDiscoveryResultForPublishID:v211 address:v345];

          swift_unknownObjectRelease();
        }

        v346 = type metadata accessor for TaskPriority();
        (*(*(v346 - 8) + 56))(v412, 1, 1, v346);
        v277 = v442;
        v347 = v402;
        sub_1003A4E40(v442, v402, type metadata accessor for NANPeer.Service);
        v348 = v447;
        v349 = v448;
        v350 = (*(v427 + 80) + 80) & ~*(v427 + 80);
        v444 = (v350 + v401 + 7) & 0xFFFFFFFFFFFFFFF8;
        v351 = (v350 + v401 + 23) & 0xFFFFFFFFFFFFFFF8;
        v352 = (v351 + 15) & 0xFFFFFFFFFFFFFFF8;
        v353 = swift_allocObject();
        v353[2] = 0;
        v353[3] = 0;
        v354 = v403;
        v353[4] = v415;
        v353[5] = v354;
        v353[6] = v446;
        v353[7] = v348;
        v353[8] = v349;
        v355 = v441;
        v353[9] = v441;
        sub_1003A46C4(v347, v353 + v350, type metadata accessor for NANPeer.Service);
        v356 = v353 + v444;
        *v356 = v413;
        v356[8] = v443;
        *(v353 + v351) = v439;
        *(v353 + v352) = v396;
        *(v353 + ((v352 + 15) & 0xFFFFFFFFFFFFFFF8)) = v374;
        v357 = v355;
        sub_100185384(&v446, &v452);

        sub_1003ACB3C(0, 0, v412, &unk_1004B25D0, v353);

        goto LABEL_226;
      }
    }

    v277 = v442;
LABEL_228:
    sub_1003A09A8(v209, v446, v447, v448);
    v310 = v277;
    goto LABEL_229;
  }

  v219 = qword_10059BB08;
  swift_beginAccess();
  v220 = *&v209[v219];
  v221 = v433;
  if (!*(v220 + 16) || (v222 = sub_10007CD94(v211 | (v195 << 8) | (v435 << 16) | (v436 << 24) | (v431 << 32) | (v218 << 40) | (v433 << 48)), (v223 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_208;
  }

  v224 = *(v220 + 56) + *(v414 + 72) * v222;
  v225 = v389;
  sub_1003A4E40(v224, v389, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  v226 = v390;
  sub_1003A46C4(v225, v390, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  swift_endAccess();
  v227 = v388;
  sub_1003A4E40(v226, v388, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1003A4664(v226, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_1003A4664(v227, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    v221 = v433;
    goto LABEL_208;
  }

  sub_1003A4664(v227, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  v228 = sub_1002E1190();
  sub_1003A4664(v226, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  v221 = v433;
  if (v228)
  {
LABEL_208:
    v305 = v447;
    if (v305 < *RSSI.minimumDiscoveryThreshold.unsafeMutableAddressor())
    {
      goto LABEL_209;
    }

    v323 = qword_10059BB10;
    swift_beginAccess();
    v324 = *&v209[v323];
    v325 = v209;
    v326 = v211 | (v195 << 8) | (v435 << 16) | (v436 << 24) | (v431 << 32) | (v218 << 40) | (v221 << 48);

    v327 = sub_100447E24(v326, v324);

    if (v440 & 1 | !v327)
    {
      v328 = v382;
      swift_storeEnumTagMultiPayload();
      v329 = v385;
      sub_1003A4E40(v328, v385, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer(0);
      v330 = v411;
      variable initialization expression of AWDLPeer.lastUpdated();
      sub_1003A4664(v328, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      (*(v414 + 56))(v329, 0, 1, v330);
      swift_beginAccess();
      sub_100338448(v329, v326);
      swift_endAccess();
      *&v449 = NANGenericServiceProtocol.init()();
      NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.setter(1);
      v331 = swift_unownedRetainStrong();
      sub_10040CAE8(v331, v332, v333, v334);

      v335 = v449;
      v336 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      LODWORD(v335) = NANServiceInfo.init(information:filter:)(v335, *v336);
      v338 = v337;
      v340 = v339;
      v341 = v195;
      v342 = *v395;
      v343 = v386;
      (*(v383 + 56))(v386, 1, 1, v384);
      sub_10036DE50(v335, v338, v340, _swiftEmptyArrayStorage, v441 | v341, v211, v342, v343);
      sub_1000124C8(v338, v340);

      sub_100016290(v343, &unk_100595C50, &unk_1004AFD20);
    }

    else
    {
    }

    v306 = v446;
    v307 = v447;
    v308 = v448;
    v309 = v325;
    goto LABEL_211;
  }

LABEL_209:

LABEL_210:
  v306 = v446;
  v307 = v447;
  v308 = v448;
  v309 = v209;
LABEL_211:
  sub_1003A09A8(v309, v306, v307, v308);
  v310 = v442;
LABEL_229:
  sub_1003A4664(v310, type metadata accessor for NANPeer.Service);
}

uint64_t sub_10039B884(unint64_t a1, uint64_t a2)
{
  v139 = a1;
  v140 = a2;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v127 = &v114 - v3;
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v128 = (&v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005DC58(&qword_1005985C0, &qword_1004B25B0);
  __chkstk_darwin();
  v129 = &v114 - v5;
  v126 = sub_10005DC58(&qword_1005985C8, &qword_1004B25B8);
  __chkstk_darwin();
  v125 = &v114 - v6;
  type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  __chkstk_darwin();
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v134 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_1005985D0, &unk_1004B17A0);
  __chkstk_darwin();
  v11 = &v114 - v10;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v13 = &v114 - v12;
  v14 = type metadata accessor for LongTermPairingKeys(0);
  v138 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v133 = &v114 - v17;
  v135 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v130 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v114 - v19;
  v131 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v136 = *(v131 - 8);
  __chkstk_darwin();
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v114 - v23;
  v25 = (v2 + qword_10059BAE8);
  swift_beginAccess();
  result = type metadata accessor for NANSubscribe.Configuration(0);
  v132 = result;
  v27 = *(result + 68);
  v137 = v25;
  if ((v25[v27] & 1) == 0)
  {
    result = RSSI.minimumDiscoveryThreshold.unsafeMutableAddressor();
    if (*result <= v140)
    {
      v119 = v11;
      v116 = v8;
      v120 = v16;
      v28 = v139;
      v140 = v139 >> 24;
      v124 = HIDWORD(v139);
      v123 = v139 >> 40;
      v122 = HIWORD(v139);
      v29 = qword_10059BB08;
      v30 = HIBYTE(v139);
      swift_beginAccess();
      v117 = v29;
      v31 = *(v2 + v29);
      v32 = *(v31 + 16);
      v121 = v2;
      if (v32)
      {
        v33 = (v30 << 48) | (v122 << 40) | (v123 << 32) | (v124 << 24) | (v140 << 16) | (BYTE2(v28) << 8) | BYTE1(v28);
        v34 = sub_10007CD94(v33);
        v2 = v121;
        if (v35)
        {
          sub_1003A4E40(*(v31 + 56) + *(v136 + 72) * v34, v22, type metadata accessor for NANPeer.Service.AuthenticationStatus);
          sub_1003A46C4(v22, v24, type metadata accessor for NANPeer.Service.AuthenticationStatus);
          swift_endAccess();
          sub_1003A4E40(v24, v20, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1003A4664(v24, type metadata accessor for NANPeer.Service.AuthenticationStatus);
            v36 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
            v37 = v20;
          }

          else
          {
            sub_1003A4664(v20, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
            if (sub_1002E1190())
            {
              swift_beginAccess();
              v78 = v133;
              sub_1003AD5FC(v33, v133);
              swift_endAccess();
              sub_100016290(v78, &unk_100597460, &qword_1004AFD18);
            }

            v36 = type metadata accessor for NANPeer.Service.AuthenticationStatus;
            v37 = v24;
          }

          return sub_1003A4664(v37, v36);
        }
      }

      v38 = v122;
      v39 = v123;
      v40 = v124;
      v41 = v140;
      v118 = v30;
      swift_endAccess();
      sub_100012400(v2 + qword_100598408, v13, &qword_10058C8D8, &qword_100482300);
      if ((*(v138 + 48))(v13, 1, v14) == 1)
      {
        return sub_100016290(v13, &qword_10058C8D8, &qword_100482300);
      }

      v42 = v139;
      v43 = v139 >> 8;
      sub_1003A46C4(v13, v120, type metadata accessor for LongTermPairingKeys);
      v44 = *(v2 + qword_1005983E0);
      swift_unownedRetainStrong();
      v115 = BYTE6(v42);
      v122 = BYTE5(v42);
      v123 = BYTE4(v42);
      v138 = BYTE3(v42);
      v140 = BYTE2(v42);
      v45 = (v118 << 40) | (v38 << 32) | (v39 << 24) | (v40 << 16) | (v41 << 8) | BYTE2(v42);
      v46 = v134;
      sub_10040CD68(v45, v134);

      v47 = v137;

      v48 = v119;
      sub_1002E7050(BYTE1(v42), v119);

      sub_1003A4664(v46, type metadata accessor for NANPeer);
      v49 = type metadata accessor for NANPeer.Service(0);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {
        sub_100016290(v48, &unk_1005985D0, &unk_1004B17A0);
      }

      else
      {
        v124 = v44;
        v134 = v45;
        v114 = v43;
        v50 = v48[10];
        v51 = v48[11];
        v52 = v48[12];
        v53 = v48[13];
        v54 = v48[14];
        sub_1002EA048(v50, v51, v52, v53, v54);
        sub_1003A4664(v48, type metadata accessor for NANPeer.Service);
        if ((v52 & 0xFE) != 4)
        {
          v55 = NANServiceInfo.genericServiceProtocol.getter(v52, v53, v54);
          sub_1002EA068(v50, v51, v52, v53, v54);
          if (v55)
          {
            v56 = v128;
            sub_1003A4E40(&v47[*(v132 + 64)], v128, type metadata accessor for OWEKeys);
            swift_unownedRetainStrong();
            v57 = WiFiInterface.macAddress.getter();

            v58 = *(v47 + 3);

            v59 = v129;
            LongTermPairingKeys.authenticationRequest(forPeer:with:using:on:myServiceSpecificInfo:)(v134, v55, v56, v57 & 0xFFFFFFFFFFFFLL, v58, v129);

            sub_1003A4664(v56, type metadata accessor for OWEKeys);
            v60 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
            if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
            {
              sub_100016290(v59, &qword_1005985C0, &qword_1004B25B0);
              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.error.getter();
              v63 = os_log_type_enabled(v61, v62);
              v64 = v118;
              if (v63)
              {
                v65 = swift_slowAlloc();
                v66 = swift_slowAlloc();
                v141[0] = v66;
                *v65 = 136315138;
                v67 = (v64 << 48) | (v115 << 40) | (v122 << 32) | (v123 << 24) | (v138 << 16) | (v140 << 8) | BYTE1(v42);
                v68 = NANPeerServiceIdentifier.description.getter(v67);
                v70 = sub_100002320(v68, v69, v141);

                *(v65 + 4) = v70;
                _os_log_impl(&_mh_execute_header, v61, v62, "Failed while generating the authentication follow up message for %s", v65, 0xCu);
                sub_100002A00(v66);
              }

              else
              {

                v67 = (v64 << 48) | (v115 << 40) | (v122 << 32) | (v123 << 24) | (v138 << 16) | (v140 << 8) | BYTE1(v42);
              }

              v111 = v130;
              swift_storeEnumTagMultiPayload();
              v112 = v133;
              sub_1003A4E40(v111, v133, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              type metadata accessor for P2PTimer(0);
              v113 = v131;
              variable initialization expression of AWDLPeer.lastUpdated();
              sub_1003A4664(v111, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              (*(v136 + 56))(v112, 0, 1, v113);
              swift_beginAccess();
              sub_100338448(v112, v67);
              swift_endAccess();
            }

            else
            {
              v79 = *(v59 + *(v60 + 48));
              v80 = v126;
              v81 = *(v126 + 48);
              v82 = v59;
              v83 = v125;
              sub_1003A46C4(v82, v125, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              *(v83 + v81) = v79;
              v84 = *(v83 + *(v80 + 48));
              v85 = v116;
              sub_1003A46C4(v83, v116, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              v86 = v130;
              sub_1003A4E40(v85, v130, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              swift_storeEnumTagMultiPayload();
              v87 = v133;
              sub_1003A4E40(v86, v133, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              type metadata accessor for P2PTimer(0);
              v88 = v131;
              variable initialization expression of AWDLPeer.lastUpdated();
              sub_1003A4664(v86, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              (*(v136 + 56))(v87, 0, 1, v88);
              swift_beginAccess();
              v89 = (v118 << 48) | (v115 << 40) | (v122 << 32) | (v123 << 24) | (v138 << 16) | (v140 << 8) | BYTE1(v42);
              sub_100338448(v87, v89);
              swift_endAccess();
              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                v141[0] = v93;
                *v92 = 136315138;
                v94 = NANPeerServiceIdentifier.description.getter(v89);
                v96 = sub_100002320(v94, v95, v141);

                *(v92 + 4) = v96;
                _os_log_impl(&_mh_execute_header, v90, v91, "Providing encrypted follow up to %s", v92, 0xCu);
                sub_100002A00(v93);
              }

              v97 = swift_unownedRetainStrong();
              sub_10040CAE8(v97, v98, v99, v100);

              v101 = v137;
              v102 = Optional<A>.attributeFilter.getter(v137[*(v132 + 68)]);
              v103 = NANServiceInfo.init(information:filter:)(v84, v102);
              v105 = v104;
              v107 = v106;
              v108 = *v101;
              v109 = type metadata accessor for NANIdentityKey(0);
              v110 = v127;
              (*(*(v109 - 8) + 56))(v127, 1, 1, v109);
              sub_10036DE50(v103, v105, v107, _swiftEmptyArrayStorage, v134, v114, v108, v110);
              sub_1000124C8(v105, v107);

              sub_100016290(v110, &unk_100595C50, &unk_1004AFD20);
              sub_1003A4664(v85, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
            }

            goto LABEL_19;
          }
        }
      }

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v141[0] = v74;
        *v73 = 136315138;
        v75 = NANPeerServiceIdentifier.description.getter((v118 << 48) | (v115 << 40) | (v122 << 32) | (v123 << 24) | (v138 << 16) | (v140 << 8) | BYTE1(v42));
        v77 = sub_100002320(v75, v76, v141);

        *(v73 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unable to generate an authentication follow up message for %s because no service specific info was found in the publish", v73, 0xCu);
        sub_100002A00(v74);
      }

LABEL_19:
      v36 = type metadata accessor for LongTermPairingKeys;
      v37 = v120;
      return sub_1003A4664(v37, v36);
    }
  }

  return result;
}

void sub_10039CA30(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v346 = a1;
  v347 = a2;
  v348 = a3;
  v303 = swift_isaMask & *v3;
  v5 = type metadata accessor for DispatchTime();
  v284 = *(v5 - 8);
  v285 = v5;
  __chkstk_darwin();
  v283 = &v280 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v304 = *(v302 - 8);
  __chkstk_darwin();
  v282 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v287 = (&v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  __chkstk_darwin();
  v288 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v298 = &v280 - v10;
  v301 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v299 = *(v301 - 8);
  __chkstk_darwin();
  v293 = &v280 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v309 = &v280 - v12;
  v13 = type metadata accessor for LongTermPairingKeys(0);
  v305 = *(v13 - 8);
  v306 = v13;
  __chkstk_darwin();
  v308 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v296 = &v280 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v291 = &v280 - v16;
  __chkstk_darwin();
  v292 = &v280 - v17;
  v295 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v294 = &v280 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v281 = &v280 - v19;
  __chkstk_darwin();
  v286 = (&v280 - v20);
  __chkstk_darwin();
  v289 = &v280 - v21;
  __chkstk_darwin();
  v290 = &v280 - v22;
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v307 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_1005985D0, &unk_1004B17A0);
  __chkstk_darwin();
  v297 = (&v280 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v300 = (&v280 - v25);
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v313 = &v280 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = (&v280 - v27);
  v328 = type metadata accessor for NANAttribute(0);
  v316 = *(v328 - 8);
  __chkstk_darwin();
  v327 = (&v280 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v30 = (&v280 - v29);
  __chkstk_darwin();
  v326 = &v280 - v31;
  __chkstk_darwin();
  v33 = &v280 - v32;
  v315 = BYTE1(v346);
  v319 = BYTE2(v346);
  v320 = BYTE3(v346);
  v321 = BYTE4(v346);
  v322 = BYTE5(v346);
  v317 = BYTE6(v346);
  v318 = HIBYTE(v346);
  v34 = &v3[qword_10059BAE8];
  swift_beginAccess();
  v310 = v34;

  NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v35 = String.lowercased()();

  v36 = String.lowercased()();

  if (v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v38 = NANFollowUpReceivedEvent.serviceInfo.getter(v346, v347, v348);
  if (v38 != 4)
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
    v44 = NANServiceInfo.csaMatterPayload.getter(v38, v39, v40);
    v46 = v45;
    sub_1001842D0(v41, v42, v43);
    if (v46 >> 60 != 15)
    {
      v151 = *&v4[qword_1005983F8];
      if (v151)
      {
        swift_unknownObjectRetain();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v153 = WiFiAddress.apiAddress.getter(v319 | (v320 << 8) | (v321 << 16) | (v322 << 24) | (v317 << 32) | (v318 << 40));
        [v151 subscribeReceivedMessage:isa fromPublishID:v315 address:v153];
        sub_100017554(v44, v46);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_100017554(v44, v46);
      }

      return;
    }
  }

LABEL_6:
  v47 = *(v348 + 2);
  v324 = v4;
  v311 = v348;
  if (v47)
  {
    v48 = qword_10059BB00;
    v49 = v316;
    v50 = &v348[(*(v316 + 80) + 32) & ~*(v316 + 80)];
    sub_1001852A4(&v346, &v337);
    sub_1001852A4(&v346, &v337);
    v51 = v50;
    v325 = *(v49 + 72);
    v52 = v326;
    v323 = v48;
    while (1)
    {
      v349 = v51;
      sub_1003A4E40(v51, v33, type metadata accessor for NANAttribute);
      sub_1003A4E40(v33, v52, type metadata accessor for NANAttribute);
      v54 = Logger.logObject.getter();
      v55 = v52;
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 16777472;
        v58 = v47;
        v59 = v33;
        v60 = v30;
        v61 = byte_1004B25FA[NANAttribute.attributeType.getter()];
        sub_1003A4664(v55, type metadata accessor for NANAttribute);
        v57[4] = v61;
        v30 = v60;
        v33 = v59;
        v47 = v58;
        _os_log_impl(&_mh_execute_header, v54, v56, "follow-up attribute: %hhu", v57, 5u);
        v4 = v324;
      }

      else
      {
        sub_1003A4664(v55, type metadata accessor for NANAttribute);
      }

      sub_1003A4E40(v33, v30, type metadata accessor for NANAttribute);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v63 = v327;
      if (EnumCaseMultiPayload == 39)
      {
        v64 = v30[1];
        v344 = *v30;
        v345[0] = v64;
        *(v345 + 10) = *(v30 + 26);
        if (NANAttribute.PairingBootstrapping.type.getter() == 2)
        {
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "pairing bootstrap type: response", v67, 2u);
          }

          sub_1001440B0(&v344);

          v63 = v327;
        }

        else
        {
          sub_1001440B0(&v344);
        }
      }

      else
      {
        sub_1003A4664(v30, type metadata accessor for NANAttribute);
      }

      sub_1003A4E40(v33, v63, type metadata accessor for NANAttribute);
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        v68 = *(v63 + 1);
        v342 = *v63;
        v343[0] = v68;
        *(v343 + 10) = *(v63 + 26);
        if (NANAttribute.PairingBootstrapping.type.getter() != 1)
        {
          sub_1003A4664(v33, type metadata accessor for NANAttribute);
          sub_1001440B0(&v342);
          goto LABEL_10;
        }

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "pairing bootstrap type: request", v71, 2u);
        }

        sub_1001440B0(&v342);

        v53 = v33;
      }

      else
      {
        sub_1003A4664(v33, type metadata accessor for NANAttribute);
        v53 = v63;
      }

      sub_1003A4664(v53, type metadata accessor for NANAttribute);
LABEL_10:
      v52 = v326;
      v51 = v349 + v325;
      if (!--v47)
      {
        goto LABEL_28;
      }
    }
  }

  sub_1001852A4(&v346, &v337);
  sub_1001852A4(&v346, &v337);
LABEL_28:
  v73 = v311;
  v72 = v312;
  Array<A>.retrieve(attribute:)(44, v311, v312);
  v74 = *(v316 + 48);
  if (v74(v72, 1, v328) == 1)
  {
    sub_100016290(v72, &unk_100595C00, &qword_10048F790);
    v75 = v318;
    v76 = v313;
    goto LABEL_34;
  }

  v77 = swift_getEnumCaseMultiPayload();
  v75 = v318;
  v76 = v313;
  if (v77 == 39)
  {
    v78 = v72[1];
    v340 = *v72;
    v341[0] = v78;
    *(v341 + 10) = *(v72 + 26);
    if (NANAttribute.PairingBootstrapping.type.getter() != 2)
    {
LABEL_32:
      sub_1001440B0(&v340);
      goto LABEL_34;
    }

    v180 = swift_unownedRetainStrong();
    sub_10040CAE8(v180, v181, v182, v183);

    swift_beginAccess();

    v330 = v319;
    v331 = v320;
    v332 = v321;
    v333 = v322;
    v334 = v317;
    v335 = v75;
    v184 = *(v303 + 80);
    v185 = *(v303 + 88);
    v187 = _s17InitiatorInstanceCMa_0(255, v184, v185, v186);
    v189 = _s17ResponderInstanceCMa_0(255, v184, v185, v188);
    type metadata accessor for Either(0, v187, v189, v190);
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v191 = v338;
    if (v338 != 255)
    {
      v192 = v337;
      v73 = v311;
      v76 = v313;
      if ((v338 & 1) == 0)
      {
        sub_1003011F8(&v346);
        sub_1003011F8(&v346);
        sub_100429AF8(v346, v347, v348);
        sub_1002CB018(v192, v191);
        sub_1001440B0(&v340);
        return;
      }

      sub_1002CB018(v337, v338);
      goto LABEL_32;
    }

    sub_1001440B0(&v340);
    v73 = v311;
    v76 = v313;
  }

  else
  {
    sub_1003A4664(v72, type metadata accessor for NANAttribute);
  }

LABEL_34:
  Array<A>.retrieve(attribute:)(36, v73, v76);
  if (v74(v76, 1, v328) == 1)
  {
    sub_100016290(v76, &unk_100595C00, &qword_10048F790);
    v79 = v322;
  }

  else
  {
    v80 = swift_getEnumCaseMultiPayload();
    sub_1003A4664(v76, type metadata accessor for NANAttribute);
    v79 = v322;
    if (v80 == 32)
    {
      v81 = swift_unownedRetainStrong();
      sub_10040CAE8(v81, v82, v83, v84);

      swift_beginAccess();

      LOBYTE(v329[0]) = v319;
      BYTE1(v329[0]) = v320;
      BYTE2(v329[0]) = v321;
      BYTE3(v329[0]) = v79;
      BYTE4(v329[0]) = v317;
      BYTE5(v329[0]) = v75;
      v85 = *(v303 + 80);
      v86 = *(v303 + 88);
      v88 = _s17InitiatorInstanceCMa_0(255, v85, v86, v87);
      v90 = _s17ResponderInstanceCMa_0(255, v85, v86, v89);
      type metadata accessor for Either(0, v88, v90, v91);
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v92 = v338;
      if (v338 != 255)
      {
        v93 = v337;
        sub_1003011F8(&v346);
        sub_1003011F8(&v346);
        v94 = v314;
        sub_100428AE8(v346, v347, v348, v93, v92 & 1);
        v314 = v94;
        if (!v94)
        {
          v95 = &v4[qword_100598400];
          swift_beginAccess();
          v96 = *v95;
          v97 = v319 | (v320 << 8) | (v321 << 16) | (v79 << 24) | (v317 << 32) | (v75 << 40);

          v98 = sub_100447BC4(v97, v96);

          if (v98)
          {
            v99 = v4;
            sub_1001852A4(&v346, v329);
            v100 = v99;
            v101 = Logger.logObject.getter();
            v102 = static os_log_type_t.error.getter();
            sub_1003011F8(&v346);
            v349 = v101;
            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v327 = swift_slowAlloc();
              v329[0] = v327;
              *v103 = 136315394;
              v104 = WiFiAddress.description.getter(v97);
              v328 = v97;
              v106 = sub_100002320(v104, v105, v329);

              *(v103 + 4) = v106;
              *(v103 + 12) = 2080;
              v107 = *v95;
              v325 = v95[1];
              LODWORD(v326) = v102;

              sub_1002EAA6C(v107);
              v109 = v108;
              v111 = v110;

              v112 = v109;
              v97 = v328;
              v113 = sub_100002320(v112, v111, v329);

              *(v103 + 14) = v113;
              v114 = v349;
              _os_log_impl(&_mh_execute_header, v349, v326, "Removed the mac address %s from the bloom filter because we received a follow up from %s", v103, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            swift_beginAccess();
            sub_10037E3A4(v97);
            swift_endAccess();
            sub_1003915F8();
            sub_100391A68();
          }
        }

        sub_1002CB018(v93, v92);
        return;
      }
    }
  }

  v115 = NANFollowUpReceivedEvent.followUpMessage.getter(v346, v347, v348);
  if (!v115)
  {
    sub_1003011F8(&v346);
    sub_1003011F8(&v346);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v337 = v137;
      *v136 = 136315138;
      v138 = NANPeerServiceIdentifier.description.getter(v315 | (v319 << 8) | (v320 << 16) | (v321 << 24) | (v79 << 32) | (v317 << 40) | (v75 << 48));
      v140 = sub_100002320(v138, v139, &v337);

      *(v136 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v134, v135, "Failed to parse the follow up received from %s", v136, 0xCu);
      sub_100002A00(v137);
    }

    return;
  }

  v349 = v115;
  v328 = qword_10059BB00;
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v337 = v119;
    *v118 = 136315138;
    v120 = NANPeerServiceIdentifier.description.getter(v315 | (v319 << 8) | (v320 << 16) | (v321 << 24) | (v79 << 32) | (v317 << 40) | (v75 << 48));
    v122 = sub_100002320(v120, v121, &v337);

    *(v118 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v116, v117, "Received a follow up message from %s", v118, 0xCu);
    sub_100002A00(v119);
  }

  v327 = type metadata accessor for NANSubscribe.Configuration(0);
  if (v310[v327[17]] != 1)
  {
    sub_1003011F8(&v346);
    v132 = v317;
    v133 = v322;
    v131 = v315;
LABEL_52:
    v129 = v309;
    goto LABEL_53;
  }

  swift_unownedRetainStrong();
  v123 = v75;
  v124 = v317;
  v125 = v307;
  sub_10040CD68((v321 << 16) | (v320 << 8) | (v322 << 24) | (v317 << 32) | (v123 << 40) | v319, v307);

  v126 = v300;
  v127 = v315;
  sub_1002E7050(v315, v300);

  sub_1003A4664(v125, type metadata accessor for NANPeer);
  v128 = type metadata accessor for NANPeer.Service(0);
  if ((*(*(v128 - 8) + 48))(v126, 1, v128) == 1)
  {
    sub_1003011F8(&v346);
    sub_100016290(v126, &unk_1005985D0, &unk_1004B17A0);
    v129 = v309;
    v130 = v124;
    v75 = v318;
    v131 = v127;
    v132 = v130;
    v133 = v322;
    goto LABEL_53;
  }

  v154 = v126[10];
  v155 = v126[11];
  v156 = v126[12];
  v157 = v126[13];
  v158 = v126[14];
  sub_1002EA048(v154, v155, v156, v157, v158);
  sub_1003A4664(v126, type metadata accessor for NANPeer.Service);
  if (v156 == 5)
  {
    sub_1003011F8(&v346);
    v132 = v317;
    v75 = v318;
    v133 = v322;
    v131 = v315;
    v129 = v309;
    goto LABEL_53;
  }

  sub_1002EA068(v154, v155, v156, v157, v158);
  v75 = v318;
  if ((v154 & 0x10000) == 0)
  {
    sub_1003011F8(&v346);
    v4 = v324;
    v132 = v317;
    v133 = v322;
    v131 = v315;
    goto LABEL_52;
  }

  v132 = v317;
  v133 = v322;
  v131 = v315;
  if ((v154 & 0x20000) != 0)
  {
    sub_1003011F8(&v346);
    v4 = v324;
    goto LABEL_52;
  }

  v211 = qword_10059BB08;
  v4 = v324;
  swift_beginAccess();
  v212 = *&v4[v211];
  if (*(v212 + 16))
  {
    v213 = sub_10007CD94(v131 | (v319 << 8) | (v320 << 16) | (v321 << 24) | (v133 << 32) | (v132 << 40) | (v75 << 48));
    v214 = v292;
    v215 = v131;
    if (v216)
    {
      sub_1003A4E40(*(v212 + 56) + *(v304 + 72) * v213, v292, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v217 = 0;
    }

    else
    {
      v217 = 1;
    }
  }

  else
  {
    v215 = v131;
    v217 = 1;
    v214 = v292;
  }

  v225 = v304;
  v226 = v302;
  (*(v304 + 56))(v214, v217, 1, v302);
  if ((*(v225 + 48))(v214, 1, v226))
  {
    sub_1003011F8(&v346);
    sub_100016290(v214, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    v129 = v309;
  }

  else
  {
    v227 = v290;
    sub_1003A4E40(v214, v290, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_100016290(v214, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    v228 = swift_getEnumCaseMultiPayload() == 4;
    v129 = v309;
    if (v228)
    {
      sub_1003011F8(&v346);
      sub_1003A4664(v227, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      LOBYTE(v337) = v346;
      BYTE1(v337) = v215;
      BYTE2(v337) = v319;
      BYTE3(v337) = v320;
      BYTE4(v337) = v321;
      BYTE5(v337) = v322;
      BYTE6(v337) = v132;
      HIBYTE(v337) = v75;
      v338 = v347;
      v339 = v311;
      sub_10039860C((v215 << 8) | (v319 << 16) | (v320 << 24) | (v321 << 32) | (v322 << 40) | (v132 << 48) | (v75 << 56) | v346, v347, v311, v349);

      sub_1003A47D0(&v337);
      return;
    }

    sub_1003011F8(&v346);
    sub_1003A4664(v227, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  }

  v131 = v215;
  v133 = v322;
LABEL_53:
  sub_100012400(&v4[qword_100598408], v129, &qword_10058C8D8, &qword_100482300);
  if ((*(v305 + 48))(v129, 1, v306) == 1)
  {
    sub_1003011F8(&v346);
    sub_100016290(v129, &qword_10058C8D8, &qword_100482300);
    v141 = v346;
    v142 = v131 | (v319 << 8) | (v320 << 16) | (v321 << 24) | (v133 << 32) | (v132 << 40) | (v75 << 48);
LABEL_87:
    v205 = v349;
    v206 = v4;
LABEL_88:
    sub_1003A1D94(v205, v206, v142, v141);

    return;
  }

  sub_1003A46C4(v129, v308, type metadata accessor for LongTermPairingKeys);
  swift_unownedRetainStrong();
  v143 = (v321 << 16) | (v320 << 8) | (v133 << 24) | (v132 << 32) | (v75 << 40);
  v144 = v307;
  sub_10040CD68(v143 | v319, v307);

  v145 = v297;
  v146 = v131;
  sub_1002E7050(v131, v297);

  sub_1003A4664(v144, type metadata accessor for NANPeer);
  v147 = type metadata accessor for NANPeer.Service(0);
  v148 = &unk_10059B000;
  if ((*(*(v147 - 8) + 48))(v145, 1, v147) == 1)
  {
    sub_1003011F8(&v346);
    sub_100016290(v145, &unk_1005985D0, &unk_1004B17A0);
    v150 = v298;
    v149 = v299;
LABEL_65:
    (*(v149 + 56))(v150, 1, 1, v301);
    v164 = v318;
    v165 = v319;
    v166 = v321;
LABEL_66:
    sub_100016290(v150, &unk_100595C40, &qword_100499070);
LABEL_67:
    v167 = v148[353];
    swift_beginAccess();
    v168 = *&v4[v167];
    if (*(v168 + 16) && (v169 = sub_10007CD94(v146 | (v165 << 8) | (v320 << 16) | (v166 << 24) | (v322 << 32) | (v132 << 40) | (v164 << 48)), (v170 & 1) != 0))
    {
      v171 = v296;
      sub_1003A4E40(*(v168 + 56) + *(v304 + 72) * v169, v296, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v172 = 0;
    }

    else
    {
      v172 = 1;
      v171 = v296;
    }

    v173 = v304;
    v174 = v302;
    (*(v304 + 56))(v171, v172, 1, v302);
    if ((*(v173 + 48))(v171, 1, v174))
    {
      sub_100016290(v171, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
    }

    else
    {
      v175 = v294;
      sub_1003A4E40(v171, v294, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v171, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      v176 = swift_getEnumCaseMultiPayload();
      v177 = v321;
      if (v176 == 2)
      {
        sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
        sub_1003A4664(v175, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        v178 = v165;
        v179 = v320;
        goto LABEL_85;
      }

      sub_1003A4664(v175, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }

    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v328 = v195;
      v196 = swift_slowAlloc();
      v337 = v196;
      *v195 = 136315138;
      v197 = v315 | (v165 << 8);
      v179 = v320;
      v198 = v318;
      v199 = NANPeerServiceIdentifier.description.getter(v197 | (v320 << 16) | (v321 << 24) | (v322 << 32) | (v132 << 40) | (v318 << 48));
      v201 = sub_100002320(v199, v200, &v337);
      v202 = v322;

      v203 = v328;
      *(v328 + 4) = v201;
      v204 = v317;
      _os_log_impl(&_mh_execute_header, v193, v194, "Received an authentication response from %s but failed to verify the peer because missing peer's public OWE key or authentication state", v203, 0xCu);
      sub_100002A00(v196);
      v146 = v315;

      v177 = v321;

      sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
      v178 = v319;
LABEL_86:
      v141 = v346;
      v142 = v146 | (v178 << 8) | (v179 << 16) | (v177 << 24) | (v202 << 32) | (v204 << 40) | (v198 << 48);
      goto LABEL_87;
    }

    sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
    v178 = v165;
    v179 = v320;
    v177 = v321;
LABEL_85:
    v204 = v132;
    v202 = v322;
    v198 = v318;
    goto LABEL_86;
  }

  v159 = v145[10];
  v160 = v145[11];
  v161 = v145[12];
  v162 = v145[13];
  v163 = v145[14];
  sub_1002EA048(v159, v160, v161, v162, v163);
  sub_1003A4664(v145, type metadata accessor for NANPeer.Service);
  if (v161 == 4 || v161 == 5)
  {
    sub_1003011F8(&v346);
LABEL_64:
    v132 = v317;
    v146 = v315;
    v150 = v298;
    v149 = v299;
    v148 = &unk_10059B000;
    goto LABEL_65;
  }

  v207 = NANServiceInfo.genericServiceProtocol.getter(v161, v162, v163);
  sub_1002EA068(v159, v160, v161, v162, v163);
  if (!v207)
  {
    sub_1003011F8(&v346);
    v4 = v324;
    goto LABEL_64;
  }

  v150 = v298;
  NANGenericServiceProtocol.publicKey.getter(v207, v298);

  v208 = v299;
  v209 = v301;
  v210 = (*(v299 + 48))(v150, 1, v301);
  v132 = v317;
  if (v210 == 1)
  {
    sub_1003011F8(&v346);
    v4 = v324;
    v164 = v318;
    v165 = v319;
    v166 = v321;
    v146 = v315;
    v148 = &unk_10059B000;
    goto LABEL_66;
  }

  (*(v208 + 32))(v293, v150, v209);
  v218 = qword_10059BB08;
  v4 = v324;
  swift_beginAccess();
  v219 = *&v4[v218];
  if (*(v219 + 16))
  {
    v220 = sub_10007CD94(v315 | (v319 << 8) | (v320 << 16) | (v321 << 24) | (v322 << 32) | (v132 << 40) | (v318 << 48));
    v221 = v291;
    v222 = v327;
    if (v223)
    {
      sub_1003A4E40(*(v219 + 56) + *(v304 + 72) * v220, v291, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v224 = 0;
    }

    else
    {
      v224 = 1;
    }
  }

  else
  {
    v224 = 1;
    v221 = v291;
    v222 = v327;
  }

  v229 = v304;
  v230 = v302;
  (*(v304 + 56))(v221, v224, 1, v302);
  if ((*(v229 + 48))(v221, 1, v230))
  {
    sub_1003011F8(&v346);
    sub_100016290(v221, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    (*(v208 + 8))(v293, v301);
    v164 = v318;
    v165 = v319;
    v166 = v321;
    v146 = v315;
    v132 = v317;
LABEL_119:
    v148 = &unk_10059B000;
    goto LABEL_67;
  }

  v231 = v289;
  sub_1003A4E40(v221, v289, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  sub_100016290(v221, &unk_100597460, &qword_1004AFD18);
  swift_endAccess();
  v232 = swift_getEnumCaseMultiPayload();
  v132 = v317;
  if (v232)
  {
    sub_1003011F8(&v346);
    (*(v208 + 8))(v293, v301);
    sub_1003A4664(v231, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    v164 = v318;
    v165 = v319;
    v166 = v321;
    v146 = v315;
    goto LABEL_119;
  }

  v327 = v218;
  v233 = v317;
  v234 = v231;
  v235 = v288;
  sub_1003A46C4(v234, v288, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v329[0] = 0;
  v236 = v310;
  v237 = v287;
  sub_1003A4E40(&v310[v222[16]], v287, type metadata accessor for OWEKeys);
  LOBYTE(v235) = LongTermPairingKeys.verifyAuthenticationResponse(forPeer:with:publisherKeys:using:extraServiceSpecificInfo:)(v238, v143 | v319, v349, v235, v237, v329);
  sub_1003A4664(v237, type metadata accessor for OWEKeys);
  if ((v235 & 1) == 0)
  {
    sub_1003011F8(&v346);

    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.error.getter();
    v253 = os_log_type_enabled(v244, v245);
    v254 = v318;
    v255 = v320;
    if (!v253)
    {

      sub_1003A4664(v288, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
      (*(v208 + 8))(v293, v301);
      sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
      v248 = v315 | (v319 << 8) | (v255 << 16) | (v321 << 24) | (v322 << 32) | (v233 << 40) | (v254 << 48);
      goto LABEL_134;
    }

    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v337 = v247;
    *v246 = 136315138;
    v248 = v315 | (v319 << 8) | (v255 << 16) | (v321 << 24) | (v322 << 32) | (v233 << 40) | (v254 << 48);
    v256 = NANPeerServiceIdentifier.description.getter(v248);
    v258 = sub_100002320(v256, v257, &v337);

    *(v246 + 4) = v258;
    v4 = v324;
    v252 = "Received an authentication response from %s but failed to verify because authentication failed";
LABEL_127:
    _os_log_impl(&_mh_execute_header, v244, v245, v252, v246, 0xCu);
    sub_100002A00(v247);

    sub_1003A4664(v288, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v299 + 8))(v293, v301);
    sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
LABEL_134:
    v141 = v346;
    v205 = v349;
    v206 = v4;
    v142 = v248;
    goto LABEL_88;
  }

  sub_1003A4E40(&v236[v222[16]], v237, type metadata accessor for OWEKeys);
  v239 = OWEKeys.generatePMK(for:asClient:)(v293, 1);
  v241 = v240;
  sub_1003A4664(v237, type metadata accessor for OWEKeys);
  v242 = v318;
  v243 = v320;
  if (v241 >> 60 == 15)
  {
    sub_1003011F8(&v346);

    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v244, v245))
    {

      sub_1003A4664(v288, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
      (*(v299 + 8))(v293, v301);
      sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
      v248 = v315 | (v319 << 8) | (v243 << 16) | (v321 << 24) | (v322 << 32) | (v317 << 40) | (v242 << 48);
      goto LABEL_134;
    }

    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v337 = v247;
    *v246 = 136315138;
    v248 = v315 | (v319 << 8) | (v243 << 16) | (v321 << 24) | (v322 << 32) | (v317 << 40) | (v242 << 48);
    v249 = NANPeerServiceIdentifier.description.getter(v248);
    v251 = sub_100002320(v249, v250, &v337);

    *(v246 + 4) = v251;
    v4 = v324;
    v252 = "Received an authentication response from %s but failed to verify because PMK generation failed";
    goto LABEL_127;
  }

  v259 = v286;
  *v286 = v239;
  v259[1] = v241;
  swift_storeEnumTagMultiPayload();
  v260 = v327;
  swift_beginAccess();
  sub_10000AB0C(v239, v241);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v262 = v4;
  v263 = isUniquelyReferenced_nonNull_native;
  v336 = *(v260 + v262);
  v264 = v336;
  *(v260 + v262) = 0x8000000000000000;
  v265 = (v243 << 16) | (v319 << 8) | (v321 << 24) | (v322 << 32) | (v317 << 40) | (v242 << 48);
  v267 = sub_10007CD94(v265 | v315);
  v268 = v264[2];
  v269 = (v266 & 1) == 0;
  v270 = v268 + v269;
  if (__OFADD__(v268, v269))
  {
    __break(1u);
    goto LABEL_140;
  }

  LOBYTE(v242) = v266;
  v271 = v264[3];
  v328 = v265;
  if (v271 >= v270)
  {
    if (v263)
    {
      goto LABEL_136;
    }

LABEL_140:
    sub_10046C560();
    v264 = v336;
    goto LABEL_136;
  }

  sub_1003122C8(v270, v263);
  v264 = v336;
  v272 = sub_10007CD94(v265 | v315);
  if ((v242 & 1) == (v273 & 1))
  {
    v267 = v272;
LABEL_136:
    v4 = v324;
    *(v327 + v324) = v264;
    if ((v242 & 1) == 0)
    {
      v274 = v281;
      swift_storeEnumTagMultiPayload();
      v275 = v282;
      sub_1003A4E40(v274, v282, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      sub_1003A4664(v274, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_1002DD754(v267, v328 | v315, v275, v264);
    }

    v276 = v264[7] + *(v304 + 72) * v267;
    v277 = v286;
    sub_1003A4DCC(v286, v276, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    type metadata accessor for P2PTimer(0);
    v278 = v283;
    variable initialization expression of AWDLPeer.lastUpdated();
    sub_1003A4664(v277, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    (*(v284 + 40))(v276 + *(v302 + 20), v278, v285);
    swift_endAccess();
    LOBYTE(v337) = v346;
    v279 = v315;
    BYTE1(v337) = v315;
    BYTE2(v337) = v319;
    BYTE3(v337) = v320;
    BYTE4(v337) = v321;
    BYTE5(v337) = v322;
    BYTE6(v337) = v317;
    HIBYTE(v337) = v318;
    v338 = v347;
    v339 = v311;
    sub_10039860C((v315 << 8) | (v319 << 16) | (v320 << 24) | (v321 << 32) | (v322 << 40) | (v317 << 48) | (v318 << 56) | v346, v347, v311, v329[0]);

    sub_1003A47D0(&v337);
    sub_100017554(v239, v241);
    sub_1003A4664(v288, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v299 + 8))(v293, v301);
    sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys);
    v141 = v346;
    v142 = v328 | v279;
    goto LABEL_87;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10039F430(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v11 = qword_10059BAE8;
    swift_beginAccess();
    sub_1003A4DCC(a1, v1 + v11, type metadata accessor for NANSubscribe.Configuration);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039F588(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v2;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%@ timed out while waiting for terminate event", v6, 0xCu);
      sub_100016290(v7, &qword_10058B780, &qword_100480AC0);
    }

    v9 = qword_1005983F8;
    v10 = *&v3[qword_1005983F8];
    if (v10)
    {
      [v10 subscribeTerminatedWithReason:2];
    }

    *&v3[v9] = 0;
    swift_unknownObjectRelease();
    v11 = swift_unownedRetainStrong();
    sub_10040CAE8(v11, v12, v13, v14);

    sub_100367078(v3);

    sub_10039205C(2, 1);
  }
}

uint64_t sub_10039F72C()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Terminating %@ because it's client was invalidated", v4, 0xCu);
    sub_100016290(v5, &qword_10058B780, &qword_100480AC0);
  }

  memset(v8, 0, sizeof(v8));
  sub_1003914E0(v8);
  return sub_100394D24();
}

void sub_10039F848(void *a1)
{
  v1 = a1;
  sub_100391354();
}

uint64_t sub_10039F890(uint64_t a1, unint64_t a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v63 = a4;
  v62 = a3;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v12 = &v56 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (v6[qword_10059BAF0] != 1)
  {
    return a5(3);
  }

  v60 = a6;
  v61 = a5;
  v21 = &v6[qword_10059BAE8];
  swift_beginAccess();
  v59 = v21;

  NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v22 = String.lowercased()();

  v23 = String.lowercased()();

  if (v22._countAndFlagsBits == v23._countAndFlagsBits && v22._object == v23._object)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
      sub_10000AB0C(a1, a2);
      NANGenericServiceProtocol.blob.setter(a1, a2);
      v29 = rawValue;
      v30 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      v58 = NANServiceInfo.init(information:filter:)(v29, *v30);
      v26 = v31;
      v28 = v32;
      goto LABEL_10;
    }
  }

  v58 = NANServiceInfo.init(csaMatterPayload:)();
  v26 = v25;
  v28 = v27;
  sub_10000AB0C(a1, a2);
LABEL_10:
  v33 = v62;
  v34 = v6;
  v35 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v28;
    v40 = v39;
    v41 = swift_slowAlloc();
    v62 = v26;
    v42 = v41;
    rawValue = v41;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v40 = v34;
    *(v38 + 12) = 2080;
    v43 = v34;
    v44 = WiFiMACAddress.wifiAddress.getter();
    v45 = WiFiAddress.description.getter(v44 & 0xFFFFFFFFFFFFLL);
    v47 = sub_100002320(v45, v46, &rawValue);

    *(v38 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "%@ intiator sending follow-up to %s", v38, 0x16u);
    sub_100016290(v40, &qword_10058B780, &qword_100480AC0);
    v28 = v57;

    sub_100002A00(v42);
    v26 = v62;
  }

  v48 = v61;
  v49 = swift_unownedRetainStrong();
  sub_10040CAE8(v49, v50, v51, v52);

  v53 = WiFiMACAddress.wifiAddress.getter();
  v54 = *v59;
  v55 = type metadata accessor for NANIdentityKey(0);
  (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
  sub_10036DE50(v58, v26, v28, _swiftEmptyArrayStorage, v53 & 0xFFFFFFFFFFFFLL, v63, v54, v12);

  sub_100016290(v12, &unk_100595C50, &unk_1004AFD20);
  v48(0);
  return sub_1000124C8(v26, v28);
}

void sub_10039FDDC(void *a1, int a2, void *a3, void *a4, unsigned int a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  sub_10039F890(v13, v15, v12, a5, sub_100303F18, v16);

  sub_1000124C8(v13, v15);
}

uint64_t sub_10039FED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + qword_10059BAF0) == 1)
  {
    if (*(v5 + qword_10059BAF8))
    {
      v8 = a4;
      v10 = a5;
      if (a3)
      {

        v11 = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
      }

      else
      {

        v11 = 0;
      }

      sub_100426810(a1, a2, v11 | ((a3 == 0) << 48), v8 & 1);

      v12 = 0;
      a5 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 3;
  }

  return (a5)(v12, a2, a3, a4);
}

void sub_10039FFC4(void *a1, int a2, void *a3, void *a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v16 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v10;
  sub_10039FED0(v13, v15, a4, a5, sub_100303F18);

  sub_1000124C8(v13, v15);
}

uint64_t sub_1003A00C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    if (v2[qword_10059BAF0] == 1 && (v13 = qword_100598418, *&v2[qword_100598418]) && (v2[qword_100598420] & 1) == 0)
    {
      if (a1 && (swift_beginAccess(), static Duration.+ infix(_:_:)(), (static Duration.< infix(_:_:)() & 1) == 0))
      {
        v15 = &v2[qword_10059BAE8];
        swift_beginAccess();
        *&v15[*(type metadata accessor for NANSubscribe.Configuration(0) + 84)] = a1;
        v16 = v2;
        v29 = v2;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "%@ cancelling current expiry timer", v19, 0xCu);
          sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
        }

        *&v29[v13] = 0;

        v22 = v16;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412546;
          *(v25 + 4) = v22;
          *v26 = v22;
          *(v25 + 12) = 2048;
          *(v25 + 14) = a1;
          v27 = v22;
          _os_log_impl(&_mh_execute_header, v23, v24, "%@ setting new timeout to %lu seconds", v25, 0x16u);
          sub_100016290(v26, &qword_10058B780, &qword_100480AC0);
        }

        sub_1003946C4(a1);
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 3;
    }

    return a2(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1003A0494(void *a1, int a2, unint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_1003A00C0(a3, sub_1000104EC);

  return result;
}

id sub_1003A0528(void *a1)
{
  v1 = a1;
  sub_1003A0590();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_1003A0590()
{
  strcpy(v11, "NANSubscribe [");
  HIBYTE(v11[1]) = -18;
  v1 = v0 + qword_10059BAE8;
  swift_beginAccess();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8285;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);

  v6 = NANServiceName.description.getter(v5, v4);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v11[0];
}

uint64_t sub_1003A07AC(uint64_t a1)
{
  result = swift_getWitnessTable(byte_1004B2558);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003A0830(uint64_t a1)
{
  result = swift_getWitnessTable(byte_1004B2574);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003A086C()
{
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v1 = &v6 - v0;
  v2 = type metadata accessor for UUID();
  sub_100068888(v2, qword_10059BAD0);
  v3 = sub_100037644(v2, qword_10059BAD0);
  UUID.init(uuidString:)();
  v4 = *(v2 - 8);
  result = (*(v4 + 48))(v1, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 32))(v3, v1, v2);
  }

  __break(1u);
  return result;
}

void sub_1003A09A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 >> 16;
  v6 = qword_100598400;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_100447BC4(v5, v7);

  if (!v8)
  {
    swift_beginAccess();
    sub_10046F438(v16, v5);
    swift_endAccess();
    sub_1003915F8();
    sub_100391A68();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      v13 = WiFiAddress.description.getter(v5);
      v15 = sub_100002320(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Added bloom filter entry for %s", v11, 0xCu);
      sub_100002A00(v12);
    }
  }
}

uint64_t sub_1003A0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v14;
  *(v8 + 360) = v15;
  *(v8 + 441) = v13;
  *(v8 + 336) = a8;
  *(v8 + 344) = v12;
  *(v8 + 320) = a6;
  *(v8 + 328) = a7;
  *(v8 + 304) = a4;
  *(v8 + 312) = a5;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_projectBox();
  v9 = v14;

  return _swift_task_switch(sub_1003A0C2C, 0, 0);
}

uint64_t sub_1003A0C2C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  *(v0 + 392) = sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);
  v6 = v5 + qword_10059BAE8;
  swift_beginAccess();
  *(v0 + 400) = *(v6 + 8);
  *(v0 + 408) = *(v6 + 16);
  *(v0 + 16) = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 32);
  v9 = *(v4 + 64);
  *(v0 + 64) = *(v4 + 48);
  *(v0 + 80) = v9;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  v10 = *(v4 + 80);
  v11 = *(v4 + 96);
  *(v0 + 208) = *(v4 + 112);
  *(v0 + 176) = v10;
  *(v0 + 192) = v11;
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v1, v3, &qword_10058F4D0, &qword_100491AB0);

  sub_10028676C(v0 + 16, v0 + 96);
  sub_100012400(v0 + 176, v0 + 216, &qword_10058F2D8, &qword_100491AB8);

  v12 = swift_task_alloc();
  *(v0 + 416) = v12;
  *v12 = v0;
  v12[1] = sub_1003A0DF0;
  v13 = *(v0 + 368);

  return sub_1003A1054(v13);
}

uint64_t sub_1003A0DF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  sub_100016290(v4, &qword_10058F4D0, &qword_100491AB0);

  return _swift_task_switch(sub_1003A0F20, 0, 0);
}

uint64_t sub_1003A0F20()
{
  v1 = *(v0 + 328);
  v2 = WiFiAwareDiscoveryResult.init(nanDiscoveryResultEvent:serviceName:serviceDescriptor:serviceDescriptorExtension:extraServiceSpecificInfo:pairSetupRequired:pairingConfiguration:pairedUUID:pairedDeviceName:signature:)(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 400), *(v0 + 408), v0 + 16, (v0 + 176), *(v0 + 344), *(v0 + 441), *(v0 + 352), *(v0 + 376), *(v0 + 424), *(v0 + 432), *(v0 + 360));
  v3 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = v3;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  OS_dispatch_queue.sync<A>(execute:)();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003A1054(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = swift_isaMask & *v1;
  v2[13] = *(*(v3 + 0x58) + 8);
  v2[14] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[15] = AssociatedTypeWitness;
  v2[16] = *(AssociatedTypeWitness - 8);
  v2[17] = swift_task_alloc();
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003A1208, 0, 0);
}

uint64_t sub_1003A1208()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100012400(v0[11], v3, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100016290(v0[18], &qword_10058F4D0, &qword_100491AB0);

    v4 = v0[1];

    return v4(0, 0);
  }

  else
  {
    v6 = v0[17];
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[12];
    (*(v0[20] + 32))(v0[22], v0[18], v0[19]);
    v10 = *(v9 + qword_1005983E0);
    swift_unownedRetainStrong();
    (*(v8 + 16))(v6, v10 + *(*v10 + 112), v7);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 136))(v7, AssociatedConformanceWitness);
    v0[23] = v12;
    (*(v8 + 8))(v6, v7);
    v13 = *v12 + 400;
    v0[24] = *v13;
    v0[25] = v13 & 0xFFFFFFFFFFFFLL | 0xB23A000000000000;

    return _swift_task_switch(sub_1003A1434, v12, 0);
  }
}

uint64_t sub_1003A1434()
{
  (*(v0 + 192))(*(v0 + 176));
  *(v0 + 208) = 0;

  return _swift_task_switch(sub_1003A14D0, 0, 0);
}

uint64_t sub_1003A14D0()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
  }

  else
  {
    v2 = v0[4];
    v1 = v0[5];
  }

  sub_1000B7220((v0 + 2));

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1003A15A0()
{
  v26 = v0;
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 16))(v2, v1, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[20];
  if (v7)
  {
    v24 = v0[22];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    sub_1003A461C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v8, v10);
    v17 = sub_100002320(v13, v15, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get paired device metadata for: %s. Error: %@", v12, 0x16u);
    sub_100016290(v22, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v23);

    v16(v24, v10);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v8, v10);
    v19(v9, v10);
  }

  v20 = v0[1];

  return v20(0, 0);
}

uint64_t sub_1003A1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v14;
  *(v8 + 360) = v15;
  *(v8 + 441) = v13;
  *(v8 + 336) = a8;
  *(v8 + 344) = v12;
  *(v8 + 320) = a6;
  *(v8 + 328) = a7;
  *(v8 + 304) = a4;
  *(v8 + 312) = a5;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_projectBox();
  v9 = v14;

  return _swift_task_switch(sub_1003A196C, 0, 0);
}

uint64_t sub_1003A196C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  *(v0 + 392) = sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);
  v6 = v5 + qword_10059BAE8;
  swift_beginAccess();
  *(v0 + 400) = *(v6 + 8);
  *(v0 + 408) = *(v6 + 16);
  *(v0 + 16) = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 32);
  v9 = *(v4 + 64);
  *(v0 + 64) = *(v4 + 48);
  *(v0 + 80) = v9;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  v10 = *(v4 + 80);
  v11 = *(v4 + 96);
  *(v0 + 208) = *(v4 + 112);
  *(v0 + 176) = v10;
  *(v0 + 192) = v11;
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v1, v3, &qword_10058F4D0, &qword_100491AB0);

  sub_10028676C(v0 + 16, v0 + 96);
  sub_100012400(v0 + 176, v0 + 216, &qword_10058F2D8, &qword_100491AB8);

  v12 = swift_task_alloc();
  *(v0 + 416) = v12;
  *v12 = v0;
  v12[1] = sub_1003A1B30;
  v13 = *(v0 + 368);

  return sub_1003A1054(v13);
}

uint64_t sub_1003A1B30(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  sub_100016290(v4, &qword_10058F4D0, &qword_100491AB0);

  return _swift_task_switch(sub_1003A1C60, 0, 0);
}

uint64_t sub_1003A1C60()
{
  v1 = *(v0 + 328);
  v2 = WiFiAwareDiscoveryResult.init(nanDiscoveryResultEvent:serviceName:serviceDescriptor:serviceDescriptorExtension:extraServiceSpecificInfo:pairSetupRequired:pairingConfiguration:pairedUUID:pairedDeviceName:signature:)(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 400), *(v0 + 408), v0 + 16, (v0 + 176), *(v0 + 344), *(v0 + 441), *(v0 + 352), *(v0 + 376), *(v0 + 424), *(v0 + 432), *(v0 + 360));
  v3 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = v3;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  OS_dispatch_queue.sync<A>(execute:)();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003A1D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = NANGenericServiceProtocol.blob.getter(a1);
  if (v8 >> 60 == 15)
  {
    return result;
  }

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2 && *(result + 16) != *(result + 24))
    {
      goto LABEL_8;
    }

LABEL_14:

    return sub_100017554(result, v8);
  }

  if (v9)
  {
    if (result != result >> 32)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = result;
  v11 = v8;
  v12 = qword_10059BB10;
  swift_beginAccess();
  v13 = *(a2 + v12);

  v14 = sub_100447E24(a3 & 0xFFFFFFFFFFFFFFLL, v13);

  if (!v14)
  {
    return sub_100017554(v10, v11);
  }

  v15 = *(a2 + qword_1005983F8);
  if (!v15)
  {
    return sub_100017554(v10, v11);
  }

  v16 = a4 >> 8;
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = WiFiAddress.apiAddress.getter(a4 >> 16);
  [v15 subscribeReceivedMessage:isa fromPublishID:v16 address:v18];
  sub_100017554(v10, v11);

  return swift_unknownObjectRelease();
}

void sub_1003A1F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + qword_10059BAF0) == 1)
    {
      a4();
    }
  }
}

void sub_1003A1F8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v138 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v138 - 8);
  __chkstk_darwin();
  v129 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v128 = &v113 - v4;
  __chkstk_darwin();
  v127 = &v113 - v5;
  __chkstk_darwin();
  v139 = &v113 - v6;
  __chkstk_darwin();
  v140 = &v113 - v7;
  v114 = type metadata accessor for DispatchTime();
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v17)
  {
    v145 = &_swiftEmptySetSingleton;
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v18 = swift_allocObject();
    v19 = v1;
    *(v18 + 16) = &_swiftEmptySetSingleton;
    v20 = v18 + 16;
    *(v18 + 24) = 0;
    v133 = v18;
    *(v18 + 32) = 1025;
    v21 = qword_10059BB08;
    swift_beginAccess();

    sub_1003A37A4(v22);
    v24 = v23;

    *&v19[v21] = v24;

    v132 = v20;
    v25 = v20;
    v26 = v19;
    sub_10038FEC4(v24, v25);
    v116 = 0;

    v27 = qword_10059BB10;
    swift_beginAccess();
    v115 = v27;
    v28 = *&v19[v27];
    v29 = v28 + 56;
    v30 = 1 << *(v28 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v28 + 56);
    v134 = qword_10059BB00;
    v33 = (v30 + 63) >> 6;
    v123 = (v2 + 16);
    v122 = v2 + 8;
    v34 = enum case for DispatchTimeInterval.seconds(_:);
    v120 = (v2 + 104);
    v131 = v28;

    v35 = 0;
    *&v36 = 136315650;
    v118 = v36;
    *&v36 = 138412546;
    v117 = v36;
    v125 = v29;
    v124 = v33;
    v37 = v9;
    v135 = v26;
    v126 = v9;
    for (i = v34; v32; v37 = v95)
    {
      while (1)
      {
LABEL_11:
        v39 = __clz(__rbit64(v32));
        v40 = (*(v131 + 48) - (v39 | (v35 << 6)) + 8 * (v39 | (v35 << 6)));
        v41 = v40[2];
        v42 = v40[3];
        v43 = v40[4];
        v44 = v40[5];
        v45 = v40[6];
        v46 = *v40 | (v40[1] << 8) | (v41 << 16) | (v42 << 24) | (v43 << 32) | (v44 << 40) | (v45 << 48);
        v47 = v139;
        v136 = v40[1];
        v137 = v46;
        sub_1003A2B64(v140, v139, v26, v46, v37);
        swift_beginAccess();
        sub_10046F438(&v141, (v42 << 16) | (v41 << 8) | (v43 << 24) | (v44 << 32) | (v45 << 40) | v136);
        swift_endAccess();
        v48 = *v123;
        v49 = v127;
        v50 = v138;
        (*v123)(v127, v47, v138);
        v51 = v128;
        v48(v128, v140, v50);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v144 = v136;
          *v54 = v118;
          v55 = NANPeerServiceIdentifier.description.getter(v137);
          v57 = sub_100002320(v55, v56, &v144);
          v119 = v53;
          v58 = v51;
          v59 = v57;

          *(v54 + 4) = v59;
          *(v54 + 12) = 2080;
          v60 = DispatchTimeInterval.description.getter();
          v62 = v61;
          v63 = v49;
          v64 = *v122;
          v65 = v122 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v122)(v63, v138);
          v66 = sub_100002320(v60, v62, &v144);

          *(v54 + 14) = v66;
          *(v54 + 22) = 2080;
          v67 = DispatchTimeInterval.description.getter();
          v69 = v68;
          v64(v58, v138);
          v70 = sub_100002320(v67, v69, &v144);

          *(v54 + 24) = v70;
          _os_log_impl(&_mh_execute_header, v52, v119, "Considering aging out peer %s. Last saw peer %s ago and last saw service information %s ago.", v54, 0x20u);
          swift_arrayDestroy();

          v50 = v138;
        }

        else
        {

          v71 = v49;
          v64 = *v122;
          v65 = v122 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v122)(v51, v50);
          v64(v71, v50);
        }

        v72 = i;
        v136 = v64;
        v32 &= v32 - 1;
        v73 = v129;
        *v129 = 9;
        v74 = *v120;
        (*v120)(v73, v72, v50);
        v75 = static DispatchTimeInterval.< infix(_:_:)(v73, v139);
        v64(v73, v50);
        v26 = v135;
        v76 = v72;
        v77 = v65;
        v78 = v140;
        v79 = v75 ? 8 : 20;
        *v73 = v79;
        v74(v73, v76, v50);
        v80 = v137;
        v81 = sub_1003A2EDC(v73, v78, v133, v137, v26);
        v82 = v73;
        v83 = v136;
        (v136)(v82, v50);
        if (v81)
        {
          break;
        }

        v83(v139, v50);
        v83(v78, v50);
        v37 = v126;
        v29 = v125;
        v33 = v124;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v137 = v77;
      v84 = v26;
      v85 = Logger.logObject.getter();
      v86 = v26;
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v144 = v90;
        *v88 = v117;
        *(v88 + 4) = v84;
        *v89 = v86;
        *(v88 + 12) = 2080;
        v91 = v84;
        v92 = NANPeerServiceIdentifier.description.getter(v80);
        v94 = sub_100002320(v92, v93, &v144);

        *(v88 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v85, v87, "%@ aging out discovery result %s", v88, 0x16u);
        sub_100016290(v89, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v90);

        v50 = v138;
      }

      v95 = v126;
      sub_10046F5A4(&v144, v80);
      v96 = v136;
      (v136)(v139, v50);
      v96(v140, v50);
      v26 = v135;
      v29 = v125;
      v33 = v124;
    }

    while (1)
    {
LABEL_7:
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v38 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v38);
      ++v35;
      if (v32)
      {
        v35 = v38;
        goto LABEL_11;
      }
    }

    v97 = v37;

    swift_beginAccess();
    v98 = *(v133 + 24);
    v99 = *(v133 + 32);
    v100 = *(v133 + 33);

    sub_100391D70(v101, v98, v99 | (v100 << 8));
    v102 = v145;
    swift_beginAccess();

    sub_1003A4500(v103);
    swift_endAccess();
    sub_100391A68();
    v104 = 1 << v102[32];
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v102 + 7);
    v107 = (v104 + 63) >> 6;

    v108 = 0;
    while (v106)
    {
      v109 = v108;
LABEL_30:
      v110 = __clz(__rbit64(v106));
      v111 = *(v102 + 6) - (v110 | (v109 << 6)) + 8 * (v110 | (v109 << 6));
      LOWORD(v110) = *(v111 + 4);
      v112 = *(v111 + 6);
      v106 &= v106 - 1;
      v141 = *v111;
      v142 = v110;
      v143 = v112;
      sub_1003A32E4(&v141, v26);
    }

    while (1)
    {
      v109 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v109 >= v107)
      {

        (*(v113 + 8))(v97, v114);

        swift_bridgeObjectRelease_n();
        return;
      }

      v106 = *&v102[8 * v109 + 56];
      ++v108;
      if (v106)
      {
        v108 = v109;
        goto LABEL_30;
      }
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003A2B64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v20 = a5;
  v23 = a1;
  v24 = a2;
  sub_10005DC58(&unk_1005985D0, &unk_1004B17A0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v21 = type metadata accessor for NANPeer.Service(0);
  v8 = *(v21 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v22 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  sub_10040CD68((a4 >> 8) & 0xFFFFFFFFFFFFLL, v15);

  DispatchTime.distance(to:)();
  swift_beginAccess();

  sub_1002E7050(a4, v7);
  v16 = v21;

  if ((*(v8 + 48))(v7, 1, v16) == 1)
  {
    sub_1003A4664(v15, type metadata accessor for NANPeer);
    sub_100016290(v7, &unk_1005985D0, &unk_1004B17A0);
    v17 = v22;
    (*(v11 + 104))(v23, enum case for DispatchTimeInterval.never(_:), v22);
    v18 = v17;
  }

  else
  {
    sub_1003A46C4(v7, v10, type metadata accessor for NANPeer.Service);
    DispatchTime.distance(to:)();
    sub_1003A4664(v10, type metadata accessor for NANPeer.Service);
    sub_1003A4664(v15, type metadata accessor for NANPeer);
    v18 = v22;
  }

  return (*(v11 + 32))(v24, v13, v18);
}

BOOL sub_1003A2EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = (v40 - v13);
  __chkstk_darwin();
  v16 = (v40 - v15);
  if (!static DispatchTimeInterval.< infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v40[1] = a1;
  v41 = v12;
  v42 = a2;
  v43 = v10;
  v44 = v9;
  swift_beginAccess();
  v40[0] = BYTE5(a4);
  v17 = (BYTE5(a4) << 32) & 0xFFFF00FF00000000 | (BYTE6(a4) << 40) | (BYTE4(a4) << 24) | (BYTE3(a4) << 16) | (BYTE2(a4) << 8) | BYTE1(a4);
  sub_10037E3A4(v17);
  swift_endAccess();
  v18 = qword_100598400;
  swift_beginAccess();
  v19 = *(a5 + v18);

  LOBYTE(v17) = sub_100447BC4(v17, v19);

  if (v17)
  {
    v20 = v43;
    v21 = v41;
    v22 = v44;
    (*(v43 + 16))(v41, v42, v44);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v20;
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v26 = 136315394;
      v27 = NANPeerServiceIdentifier.description.getter((v40[0] << 40) | (BYTE6(a4) << 48) | (BYTE4(a4) << 32) | (BYTE3(a4) << 24) | (BYTE2(a4) << 16) | (BYTE1(a4) << 8) | a4);
      v29 = sub_100002320(v27, v28, &v45);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = v41;
      v31 = DispatchTimeInterval.description.getter();
      v33 = v32;
      (*(v25 + 8))(v30, v44);
      v34 = sub_100002320(v31, v33, &v45);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Reset the peer %s from the bloom filter because its been %s since we last saw the advertised service descriptor", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v20 + 8))(v21, v22);
    }

    return 0;
  }

  *v14 = 5;
  v36 = v43;
  v35 = v44;
  (*(v43 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v44);
  static DispatchTimeInterval.+ infix(_:_:)(v14, v16);
  v37 = *(v36 + 8);
  v37(v14, v35);
  v38 = static DispatchTimeInterval.< infix(_:_:)(v16, v42);
  v37(v16, v35);
  return v38;
}

double sub_1003A32E4(unsigned __int8 *a1, uint64_t a2)
{
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = *a1;
  v8 = a1[1];
  v25 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  swift_beginAccess();
  v26 = v7;
  v14 = v7 | (v8 << 8);
  v15 = v25;
  sub_100338448(v6, v14 | (v25 << 16) | (v9 << 24) | (v10 << 32) | (v11 << 40) | (v12 << 48));
  swift_endAccess();
  v16 = *(a2 + qword_1005983F8);
  v17 = (v9 << 16) | (v15 << 8) | (v10 << 24) | (v11 << 32) | (v12 << 40) | v8;
  if (v16)
  {
    swift_unknownObjectRetain();
    v18 = WiFiAddress.apiAddress.getter(v17);
    v19 = v26;
    [v16 subscribeLostDiscoveryResultForPublishID:v26 address:v18];

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v26;
  }

  swift_unownedRetainStrong();
  v20 = a2 + qword_10059BAE8;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);

  v23 = v27;
  sub_10040CD68(v17, v27);
  sub_1002E7248(v21, v22, v19);

  sub_10040E430(v23, v17);

  return result;
}

uint64_t sub_1003A3588(uint64_t a1, uint64_t a2, unint64_t a3, __int16 a4)
{
  v7 = a1 + qword_10059BAE8;
  swift_beginAccess();
  v8 = v7 + *(type metadata accessor for NANSubscribe.Configuration(0) + 56);
  v9 = *v8;
  v10 = *(v8 + 8);
  *v8 = a2;
  *(v8 + 8) = a3;
  v11 = *(v8 + 16);
  *(v8 + 16) = a4;
  sub_10011A008(a2, a3, a4);
  return sub_10011A01C(v9, v10, v11);
}

void sub_1003A3638(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1003A4400(v9, v6, a1, a2);

      return;
    }
  }

  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1003A3904(v8, v6, a1, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1003A37A4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1003A4488(v7, v4, a1);

      return;
    }
  }

  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1003A3D8C(v6, v4, a1);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1003A3904(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a2;
  v42 = a4;
  v39 = a1;
  v49 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  __chkstk_darwin();
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v38 - v8;
  __chkstk_darwin();
  v10 = &v38 - v9;
  v45 = *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v13 = 0;
  v50 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v43 = v20;
  v44 = v15;
  v48 = v6;
  while (v19)
  {
    v21 = v12;
    v22 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_11:
    v25 = v22 | (v13 << 6);
    v26 = v50[6] - v25 + 8 * v25;
    v27 = *(v26 + 4);
    v28 = *(v26 + 6);
    v29 = *v26;
    sub_1003A4E40(v50[7] + *(v45 + 72) * v25, v21, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v10 = v29;
    *(v10 + 2) = v27;
    v10[6] = v28;
    v30 = v47;
    sub_1003A4E40(v21, &v10[*(v47 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v31 = v46;
    v32 = v30;
    sub_100012400(v10, v46, &unk_100595C80, &qword_1004AFD40);
    v33 = *(v30 + 48);
    v34 = v48;
    sub_1003A4E40(v31 + v33, v48, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_1003A4664(v31 + v33, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1003A4664(v34, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      v35 = v41;
      sub_100012400(v10, v41, &unk_100595C80, &qword_1004AFD40);
      v36 = *(v32 + 48);
      sub_10037E3A4(*(v35 + 1) | (*(v35 + 3) << 16));
      sub_100016290(v10, &unk_100595C80, &qword_1004AFD40);
      sub_1003A4664(v35 + v36, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      sub_1003A4664(v21, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v12 = v21;
      v20 = v43;
      v15 = v44;
      v19 = v51;
    }

    else
    {
      sub_100016290(v10, &unk_100595C80, &qword_1004AFD40);
      sub_1003A4664(v34, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_1003A4664(v21, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      *(v39 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v37 = __OFADD__(v40++, 1);
      v12 = v21;
      v20 = v43;
      v15 = v44;
      v19 = v51;
      if (v37)
      {
        __break(1u);
LABEL_16:
        sub_1003686EC(v39, v38, v40, v50);
        return;
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v21 = v12;
      v22 = __clz(__rbit64(v24));
      v51 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1003A3D8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a1;
  v61 = type metadata accessor for DispatchTime();
  v4 = *(v61 - 8);
  __chkstk_darwin();
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v59 - 8);
  __chkstk_darwin();
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v46 - v8;
  v65 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v67 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &qword_1004AFD40;
  v64 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  __chkstk_darwin();
  v63 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v56 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v62 = *(v56 - 8);
  __chkstk_darwin();
  v70 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v66 = a3;
  v16 = *(a3 + 64);
  v51 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v49 = 0;
  v50 = (v17 + 63) >> 6;
  v54 = (v6 + 16);
  v55 = (v4 + 8);
  v53 = (v6 + 8);
  while (v19)
  {
    v29 = __clz(__rbit64(v19));
    v69 = (v19 - 1) & v19;
LABEL_13:
    v32 = v29 | (v15 << 6);
    v33 = v66[7];
    v34 = v66[6] - v32 + 8 * v32;
    v35 = *(v34 + 4);
    v36 = *(v34 + 6);
    v37 = *(v62 + 72);
    v52 = v32;
    v38 = *v34;
    v39 = v70;
    sub_1003A4E40(v33 + v37 * v32, v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v13 = v38;
    *(v13 + 2) = v35;
    v13[6] = v36;
    v40 = v64;
    sub_1003A4E40(v39, &v13[*(v64 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v41 = v63;
    sub_100012400(v13, v63, &unk_100595C80, v10);
    v42 = v41 + *(v40 + 48);
    sub_1003A4E40(v42, v67, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100016290(v13, &unk_100595C80, v10);
          sub_1003A4664(v67, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        }

        else
        {
          sub_100016290(v13, &unk_100595C80, v10);
        }

        sub_1003A4664(v42, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        sub_1003A4664(v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v19 = v69;
        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v44 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
      }

      sub_1003A4664(v67, v44);
    }

    type metadata accessor for P2PTimer(0);
    v20 = v60;
    variable initialization expression of AWDLPeer.lastUpdated();
    v21 = v57;
    DispatchTime.distance(to:)();
    (*v55)(v20, v61);
    v22 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
    v23 = v13;
    v24 = v10;
    v25 = v58;
    v26 = v59;
    (*v54)(v58, v22, v59);
    v68 = static DispatchTimeInterval.< infix(_:_:)(v25, v21);
    v27 = *v53;
    v28 = v25;
    v10 = v24;
    v13 = v23;
    (*v53)(v28, v26);
    v27(v21, v26);
    sub_100016290(v23, &unk_100595C80, v10);
    sub_1003A4664(v42, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_1003A4664(v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v19 = v69;
    if (!v68)
    {
LABEL_21:
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
LABEL_24:
        sub_1003686EC(v48, v47, v49, v66);
        return;
      }
    }
  }

  v30 = v15;
  while (1)
  {
    v15 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v15 >= v50)
    {
      goto LABEL_24;
    }

    v31 = *(v51 + 8 * v15);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v69 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1003A4400(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1003A3904(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1003A4488(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1003A3D8C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1003A4500(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) - (v10 | (v9 << 6)) + 8 * (v10 | (v9 << 6)));
        sub_10037E5E4(*v11 | (*(v11 + 2) << 16) | (*(v11 + 3) << 24), v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1003A461C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1003A4664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003A46C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003A472C()
{
  result = qword_1005985F8;
  if (!qword_1005985F8)
  {
    result = swift_getWitnessTable("9u\v", &type metadata for NANServiceName, v0, v1);
    atomic_store(result, &qword_1005985F8);
  }

  return result;
}

uint64_t sub_1003A4780(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000AB0C(result, a2);

    return sub_10000AB0C(a3, a4);
  }

  return result;
}

uint64_t sub_1003A4824(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[7];
  v10 = v1[6];
  v5 = v1[8];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10030BDD0;

  return sub_1003A1884(a1, v12, v11, v10, v9, v5, v6, v1 + v4);
}

uint64_t sub_1003A49AC()
{
  v1 = type metadata accessor for NANPeer.Service(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_1000124C8(*(v0 + v3), *(v0 + v3 + 8));

  if (*(v0 + v3 + 50) != 255)
  {
    v6 = *(v5 + 48) | (*(v5 + 50) << 16);
    sub_1001842C4(*(v5 + 32), *(v5 + 40), v6, BYTE2(v6) & 1);
  }

  if (*(v5 + 56) != 4)
  {
    sub_1000124C8(*(v5 + 64), *(v5 + 72));
  }

  if ((*(v5 + 96) & 0xFELL) != 4)
  {
    sub_1000124C8(*(v5 + 104), *(v5 + 112));
  }

  v7 = *(v5 + 144);
  if (v7 != 255)
  {
    sub_1002E9A40(*(v5 + 120), *(v5 + 128), *(v5 + 136), v7 & 1);
  }

  v8 = (v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v1 + 32);
  v10 = type metadata accessor for DispatchTime();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1003A4B70(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[7];
  v10 = v1[6];
  v5 = v1[8];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002CB380;

  return sub_1003A0B44(a1, v12, v11, v10, v9, v5, v6, v1 + v4);
}

id sub_1003A4D10@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + qword_1005983F8);
  if (v3)
  {
    result = [*(*(v1 + 16) + qword_1005983F8) subscribeReceivedDiscoveryResult:*(v1 + 24)];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1003A4DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A4E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A4EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6269726373627553;
  }

  else
  {
    v3 = 0x6873696C627550;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x6269726373627553;
  }

  else
  {
    v5 = 0x6873696C627550;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003A4FA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003A5028(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1003A509C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003A5120@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100572838, *a1);

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

void sub_1003A5180(uint64_t *a1@<X8>)
{
  v2 = 0x6873696C627550;
  if (*v1)
  {
    v2 = 0x6269726373627553;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1003A51FC()
{
  result = qword_1005986D8[0];
  if (!qword_1005986D8[0])
  {
    result = swift_getWitnessTable(byte_1004B26EC, &type metadata for WiFiAwareCapability, v0, v1);
    atomic_store(result, qword_1005986D8);
  }

  return result;
}

uint64_t P2PMain.onTerminate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;
  sub_10001F89C(*v1, v1[1]);
  return v2;
}

uint64_t P2PMain.onTerminate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100010520(v6, v7);
}

char *P2PMain.init(device:)(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v62 = *v1;
  v3 = v62;
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v61 - 8);
  __chkstk_darwin();
  v57 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v56 = *(v60 - 8);
  __chkstk_darwin();
  v55 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v49 - v9;
  v63 = *(v6 - 8);
  __chkstk_darwin();
  v59 = v49 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[*(v3 + 104)] = _swiftEmptyArrayStorage;
  v16 = &v2[*(*v2 + 144)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v18 = *v17;
  *v15 = *v17;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v21 = v64;
    (*(v8 + 16))(v10, v64, v7);
    v22 = v63;
    if ((*(v63 + 48))(v10, 1, v6) == 1)
    {
      v23 = *(v8 + 8);
      v23(v21, v7);
      v23(v10, v7);
      v24 = v62;
    }

    else
    {
      v54 = v7;
      v25 = v59;
      (*(v22 + 32))(v59, v10, v6);
      v24 = v62;
      v26 = *(v62 + 88);
      v27 = (*(v26 + 48))(v6, v26);
      v29 = v28;
      v30 = objc_allocWithZone(type metadata accessor for XPCServer(0));
      v31 = sub_1004442F0(v27, v29);
      if (v31)
      {
        v32 = v31;
        (*(v22 + 16))(&v2[*(*v2 + 96)], v25, v6);
        *&v2[*(*v2 + 136)] = v32;
        sub_10001C2F0();
        v51 = v8;
        v52 = v6;
        v33 = *v17;
        v53 = v32;
        v34 = v33;
        v35 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 112)] = v35;
        v36 = *v17;
        v37 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 120)] = v37;
        v38 = *v17;
        v39 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 128)] = v39;
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = swift_allocObject();
        v41[2] = v6;
        v41[3] = v26;
        v41[4] = v40;
        swift_getObjectType();
        v50 = sub_1003A70F8;
        v69 = sub_1003A70F8;
        v70 = v41;
        aBlock = _NSConcreteStackBlock;
        v66 = 1107296256;
        v49[1] = &v67;
        v67 = sub_10000C8B8;
        v68 = &unk_100578748;
        v42 = _Block_copy(&aBlock);

        v43 = v55;
        static DispatchQoS.unspecified.getter();
        v44 = v57;
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v42);
        v62 = *(v58 + 8);
        (v62)(v44, v61);
        v45 = *(v56 + 8);
        v45(v43, v60);

        swift_getObjectType();
        v69 = v50;
        v70 = v41;
        aBlock = _NSConcreteStackBlock;
        v66 = 1107296256;
        v67 = sub_10000C8B8;
        v68 = &unk_100578770;
        v46 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v46);
        (v62)(v44, v61);
        v45(v43, v60);

        swift_getObjectType();
        v69 = NANBitmap.Channel.operatingClass.getter;
        v70 = 0;
        aBlock = _NSConcreteStackBlock;
        v66 = 1107296256;
        v67 = sub_10000C8B8;
        v68 = &unk_100578798;
        v47 = _Block_copy(&aBlock);
        static DispatchQoS.unspecified.getter();
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v47);

        (*(v51 + 8))(v64, v54);
        (v62)(v44, v61);
        v45(v43, v60);
        (*(v63 + 8))(v59, v52);

        return v2;
      }

      (*(v8 + 8))(v64, v54);
      (*(v22 + 8))(v25, v6);
    }

    sub_100010520(*&v2[*(*v2 + 144)], *&v2[*(*v2 + 144) + 8]);
    type metadata accessor for P2PMain(0, v6, *(v24 + 88), v48);
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A5E18(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v24[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received a terminate signal, will disable all interfaces", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v13 = *v12;
  *v4 = *v12;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    __break(1u);

    result = sub_100002A00(v24);
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(*result + 104);
    swift_beginAccess();
    v18 = *(v16 + v17);
    v19 = *(v18 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;

    if (v19)
    {
      v21 = 0;
      v22 = v18 + 32;
      while (v21 < *(v18 + 16))
      {
        sub_10002B154(v22, v24);
        sub_1003A616C(v24, v20, v19, v16);
        ++v21;
        sub_100002A00(v24);
        v22 += 40;
        if (v19 == v21)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_9:
  }

  return result;
}

void sub_1003A616C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100029B34(a1, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = *(v8 + 8);

  v10(sub_1003A8134, v9, v7, v8);
}

void sub_1003A6234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(a1 + 16) = v15;
  if (v15 == a2)
  {
    v16 = *(*a3 + 104);
    swift_beginAccess();
    *(a3 + v16) = _swiftEmptyArrayStorage;

    v17 = a3 + *(*a3 + 144);
    swift_beginAccess();
    v18 = *v17;
    v19 = *(v17 + 8);
    *v17 = 0;
    *(v17 + 8) = 0;
    if (v18)
    {

      v18(v20);
      sub_100010520(v18, v19);
      sub_100010520(v18, v19);
    }
  }
}

char *P2PMain.deinit()
{
  v1 = v0;
  v2 = *v0;
  v34 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v38 = *(v32 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v2 + 112);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v35 = *(*v1 + 120);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v33 = *(*v1 + 128);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v44 = sub_1003A7104;
  v45 = v11;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v31 = &v42;
  v42 = sub_10000C8B8;
  v43 = &unk_100578810;
  v12 = _Block_copy(&aBlock);
  v13 = v10;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  v29 = sub_10001CF14();
  v28 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  v30 = sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  v14 = *(v37 + 8);
  v37 += 8;
  v27 = v14;
  v15 = v3;
  v14(v5, v3);
  v16 = *(v38 + 8);
  v38 += 8;
  v26 = v16;
  v17 = v7;
  v18 = v7;
  v19 = v32;
  v16(v18, v32);

  v20 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v8;
  v44 = sub_1003A7144;
  v45 = v21;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10000C8B8;
  v43 = &unk_100578860;
  v22 = _Block_copy(&aBlock);

  v23 = v20;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  v27(v5, v15);
  v26(v17, v19);

  (*(*(*(v34 + 80) - 8) + 8))(&v1[*(*v1 + 96)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100010520(*&v1[*(*v1 + 144)], *&v1[*(*v1 + 144) + 8]);
  return v1;
}

double sub_1003A6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v22);

  return result;
}

double sub_1003A6C80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    exit(0);
  }

  return result;
}

uint64_t P2PMain.__deallocating_deinit()
{
  P2PMain.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall P2PMain.start()()
{
  swift_getObjectType();
  OS_dispatch_source.activate()();
  swift_getObjectType();
  OS_dispatch_source.activate()();
  swift_getObjectType();
  OS_dispatch_source.activate()();
  sub_100444EB4();
}

uint64_t P2PMain.attached<A>(infraDriver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v29 = *v6;
  v30 = a1;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v21 = *(v14 + 8);
  v20 = (v14 + 8);
  v21(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v20 = sub_1003A7C2C(0, v20[2] + 1, 1, v20);
    *(v7 + a4) = v20;
    goto LABEL_5;
  }

  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  a6 = type metadata accessor for P2PController(0, v32);
  a5 = sub_100388AD0(v30);
  a4 = *(*v7 + 104);
  swift_beginAccess();
  if (!*(*(v7 + a4) + 16))
  {
    v22 = swift_allocObject();
    *(v22 + 16) = *(v29 + 80);
    *(v22 + 32) = a5;

    sub_100444900(sub_10001957C, v22);
  }

  swift_beginAccess();
  v20 = *(v7 + a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + a4) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v24 = v20[2];
  v25 = v20[3];
  if (v24 >= v25 >> 1)
  {
    v27 = v20[2];
    v20 = sub_1003A7C2C((v25 > 1), v24 + 1, 1, v20);
    v24 = v27;
    *(v7 + a4) = v20;
  }

  v31 = a5;
  sub_1003A7F78(v24, &v31, (v7 + a4), a6, &off_100577B80);
  *(v7 + a4) = v20;
  return swift_endAccess();
}

char *sub_1003A7184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100597450, &qword_1004B16D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003A72D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100598780, &qword_1004AF198);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A7408(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D348, &qword_100486950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1003A7534(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10005DC58(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1003A7694(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_1005987B8, &qword_1004B2788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_1005987C0, &unk_1004AFD48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A77C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A78E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_1003A79F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_1005987E0, &unk_1004B4D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A7B10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_1005987E8, &qword_1004B2798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003A7C2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100598840, &qword_1004B27B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_100598848, &unk_1004B27C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003A7D9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1003A7F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000297D4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100029954(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1003A8010(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A80F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003A8170(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v4 <= 0x3F)
  {
    type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, *(a1 + 80), *(a1 + 88), v3);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

CoreP2P::NANTimeUnit sub_1003A8260(void (*a1)(void, void), uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, __n128), uint64_t (*a6)(char *, uint64_t, uint64_t), int a7, uint64_t a8, __int16 a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v13 = a8;
  LODWORD(v102.rawValue) = a7;
  v108 = a6;
  v109 = a5;
  v110 = a4;
  LODWORD(rawValue) = a3;
  v107 = a1;
  v15 = *v11;
  v16 = *(v15 + 80);
  v17 = *(v15 + 88);
  v18 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, v16, v17, a4);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v111 = v19;
  v112 = v20;
  __chkstk_darwin();
  v97 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v95 - v22;
  __chkstk_darwin();
  v99 = &v95 - v23;
  __chkstk_darwin();
  v25 = &v95 - v24;
  __chkstk_darwin();
  v27 = &v95 - v26;
  v105 = *(v18 - 8);
  __chkstk_darwin();
  v98 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v95 - v29;
  swift_unownedRetainStrong();
  v113 = a2;
  LOBYTE(a2) = sub_100410360(a2 & 0xFFFFFFFFFFFFLL);

  if (a2)
  {
    v103 = v12;
    v100 = v18;
    if (v13 == 3)
    {
      v13 = sub_1003AC1F4(v113 & 0xFFFFFFFFFFFFLL);
    }

    if (v102.rawValue)
    {
      if (v13 == 1)
      {
        v30 = TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
      }

      else
      {
        v30 = TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
      }

      v40 = *v30;
      v109 = *(v30 + 1);
      v110 = v40;
      v108 = *(v30 + 2);
    }

    v41 = v107;
    sub_10011A69C(v107, v116);
    sub_1003A9488(v41, v113 & 0xFFFFFFFFFFFFLL, rawValue & 1, v110, v109, v108, v13, 0, v104, a9, a10, a11, v16, v17);
    v42 = v103;
    v43 = *(*v103 + 112);
    swift_beginAccess();
    v44 = v111;
    v45 = v112;
    v109 = *(v112 + 16);
    v110 = v43;
    (v109)(v27, v42 + v43, v111);
    v46 = v100;
    v108 = *(v105 + 48);
    LODWORD(v43) = v108(v27, 1, v100);
    v47 = *(v45 + 8);
    v112 = v45 + 8;
    v107 = v47;
    v47(v27, v44);
    if (v43 != 1)
    {
      (v109)(v25, v42 + v110, v44);
      result.rawValue = v108(v25, 1, v46);
      if (LODWORD(result.rawValue) == 1)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v67 = sub_1003A96A8();
      v68 = v105 + 8;
      rawValue = *(v105 + 8);
      rawValue(v25, v46);
      if (!v67 || (v69 = qword_100598850, swift_beginAccess(), v114[0] = *(v42 + v69), v70 = type metadata accessor for Array(), swift_getWitnessTable(&protocol conformance descriptor for [A], v70), (Collection.isEmpty.getter() & 1) == 0))
      {
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();
        v73 = os_log_type_enabled(v71, v72);
        v102.rawValue = v68;
        if (v73)
        {
          v74 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v114[0] = v95;
          *v74 = 136315138;
          v75 = WiFiAddress.description.getter(v113 & 0xFFFFFFFFFFFFLL);
          v77 = sub_100002320(v75, v76, v114);
          v78 = v105;

          *(v74 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v71, v72, "Deferring transmission of out of band action frame to peer: %s", v74, 0xCu);
          sub_100002A00(v95);

          v79 = v104;
          v80 = v99;
        }

        else
        {

          v79 = v104;
          v80 = v99;
          v78 = v105;
        }

        (*(v78 + 16))(v98, v79, v46);
        v86 = v103;
        swift_beginAccess();
        type metadata accessor for Array();
        Array.append(_:)();
        swift_endAccess();
        (v109)(v80, v86 + v110, v111);
        result.rawValue = v108(v80, 1, v46);
        if (LODWORD(result.rawValue) != 1)
        {
          v87 = sub_1003A96A8();
          v88 = rawValue;
          rawValue(v80, v46);
          if (!v87)
          {
            return v88(v79, v46);
          }

          v89 = v111;
          v90 = v96;
          (v109)(v96, v86 + v110, v111);
          result.rawValue = v108(v90, 1, v46);
          if (LODWORD(result.rawValue) != 1)
          {
            v91 = v90;
            v92 = *(v90 + 5);

            v93 = rawValue;
            rawValue(v91, v46);
            v92(0);

            v94 = v97;
            (*(v105 + 56))(v97, 1, 1, v46);
            sub_1003AC7C0(v94);
            v107(v94, v89);
            return v93(v79, v46);
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }
    }

    v48 = v104;
    v49 = v104 + *(v46 + 56);
    v50.rawValue = *v49;
    v51.rawValue = *(v49 + 8);
    v52 = *(v49 + 16);
    v53 = *(v49 + 18);
    v54 = *(v49 + 19);
    v55 = *(v49 + 20);
    v56 = *(v49 + 21);
    v57 = *(v49 + 22);
    v58 = *(v49 + 23);
    v112 = *(v49 + 17);
    v113 = v52;
    v110 = v54;
    v111 = v53;
    v108 = v56;
    v109 = v55;
    rawValue = v51.rawValue;
    v107 = v57;
    v59.rawValue = v50.rawValue;
    v60 = TimeBitmap.SlotsView.distance(from:to:)(v50, v51);
    v61 = _swiftEmptyArrayStorage;
    if (v60)
    {
      v62 = v60;
      v117 = _swiftEmptyArrayStorage;
      result.rawValue = sub_10002D838(0, v60 & ~(v60 >> 63), 0);
      if ((v62 & 0x8000000000000000) == 0)
      {
        v61 = v117;
        result.rawValue = NANIntervalDuration.timeUnits.getter(0);
        if (!result.rawValue)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v63.rawValue = result.rawValue;
        result.rawValue = v59.rawValue;
        while (1)
        {
          v115[0] = v113;
          v115[1] = v112;
          v115[2] = v111;
          v115[3] = v110;
          v115[4] = v109;
          v115[5] = v108;
          v115[6] = v107;
          v115[7] = v58;
          if (((result.rawValue / v63.rawValue) & 0x8000000000000000) != 0)
          {
            break;
          }

          v64 = v115[(result.rawValue / v63.rawValue) >> 3];
          v117 = v61;
          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            v102.rawValue = result.rawValue;
            sub_10002D838((v65 > 1), v66 + 1, 1);
            result.rawValue = v102.rawValue;
            v61 = v117;
          }

          v61[2] = v66 + 1;
          *(v61 + v66 + 32) = v64;
          result.rawValue = TimeBitmap.SlotsView.index(after:)(result).rawValue;
          if (!--v62)
          {
            v48 = v104;
            goto LABEL_27;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_27:
    v81 = sub_10002D874(v61);
    v83 = v82;

    v84 = v101;
    Data.load<A>(as:)(v81, v83, &type metadata for UInt64, v114);
    v85 = v105;
    if (v84)
    {
      (*(v105 + 8))(v48, v100);
      return sub_1000124C8(v81, v83);
    }

    else
    {
      sub_1000124C8(v81, v83);
      sub_1003A9F90(v48);
      return (*(v85 + 8))(v48, v100);
    }
  }

  else
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v116[0] = v34;
      *v33 = 136315138;
      v35 = WiFiAddress.description.getter(v113 & 0xFFFFFFFFFFFFLL);
      v37 = sub_100002320(v35, v36, v116);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to transmit out of band action frame to %s, since the peer was not found", v33, 0xCu);
      sub_100002A00(v34);
    }

    sub_10000B02C();
    swift_allocError();
    *v38 = xmmword_10049C490;
    *(v38 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1003A8DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, __n128), uint64_t (*a6)(char *, uint64_t, uint64_t), int a7, uint64_t a8, unsigned __int16 a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v13 = a8;
  LODWORD(v54) = a7;
  v60 = a6;
  v61 = a5;
  v62 = a4;
  LODWORD(v57) = a3;
  v58 = a2;
  v56 = a10;
  v15 = *(*v11 + 80);
  v16 = *(*v11 + 88);
  LODWORD(v55) = a9;
  v17 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, v15, v16, a4);
  v59 = type metadata accessor for Optional();
  v63 = *(v59 - 8);
  __chkstk_darwin();
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v50 - v19;
  __chkstk_darwin();
  v21 = &v50 - v20;
  __chkstk_darwin();
  v23 = &v50 - v22;
  v67 = *(v17 - 8);
  __chkstk_darwin();
  v53 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v50 - v25;
  if (v54)
  {
    if (v13 == 1)
    {
      v26 = TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
    }

    else
    {
      v26 = TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
    }

    v27 = *v26;
    v61 = *(v26 + 1);
    v62 = v27;
    v60 = *(v26 + 2);
  }

  sub_10011A69C(a1, v66);
  sub_1003A9488(a1, v58 & 0xFFFFFFFFFFFFLL, v57 & 1, v62, v61, v60, v13, 1, v64, v55, v56, a11, v15, v16);
  v28 = *(*v12 + 112);
  swift_beginAccess();
  v29 = v63;
  v61 = *(v63 + 16);
  v62 = v28;
  v30 = v59;
  (v61)(v23, v12 + v28, v59);
  v60 = *(v67 + 48);
  LODWORD(v28) = v60(v23, 1, v17);
  v31 = *(v29 + 8);
  v63 = v29 + 8;
  v57 = v31;
  v31(v23, v30);
  if (v28 == 1)
  {
    goto LABEL_7;
  }

  (v61)(v21, v12 + v62, v30);
  result = v60(v21, 1, v17);
  if (result == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v34 = sub_1003A96A8();
  v35 = v67 + 8;
  v36 = *(v67 + 8);
  v36(v21, v17);
  if (v34)
  {
    v37 = qword_100598850;
    swift_beginAccess();
    v65[0] = *(v12 + v37);
    v38 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v38);
    if (Collection.isEmpty.getter())
    {
LABEL_7:
      v32 = v64;
      sub_1003A9F90(v64);
      return (*(v67 + 8))(v32, v17);
    }
  }

  v55 = v36;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v39, v40);
  v56 = v35;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v65[0] = v54;
    *v42 = 136315138;
    v43 = WiFiAddress.description.getter(v58 & 0xFFFFFFFFFFFFLL);
    v45 = sub_100002320(v43, v44, v65);

    *(v42 + 4) = v45;
    v30 = v59;
    _os_log_impl(&_mh_execute_header, v39, v40, "Deferring transmission of out of band action frame to: %s", v42, 0xCu);
    sub_100002A00(v54);
  }

  v46 = v52;
  (*(v67 + 16))(v53, v64, v17);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  (v61)(v46, v12 + v62, v30);
  result = v60(v46, 1, v17);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v47 = sub_1003A96A8();
  v48 = v55;
  v55(v46, v17);
  if (v47)
  {
    v49 = v51;
    (*(v67 + 56))(v51, 1, 1, v17);
    sub_1003AC7C0(v49);
    v57(v49, v30);
  }

  return v48(v64, v17);
}

__n128 sub_1003A9488@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2;
  v17 = a2 >> 8;
  v18 = a2 >> 16;
  v19 = a2 >> 24;
  *(a9 + 56) = 0;
  v20 = HIDWORD(a2);
  v21 = a2 >> 40;
  v22 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, a13, a14, a4);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  result = *a1;
  v24 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v24;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 33) = v14;
  *(a9 + 34) = v17;
  *(a9 + 35) = v18;
  *(a9 + 36) = v19;
  *(a9 + 37) = v20;
  *(a9 + 38) = v21;
  *(a9 + 39) = a3;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  v25 = (a9 + v22[14]);
  *v25 = a4;
  v25[1] = a5;
  v25[2] = a6;
  *(a9 + v22[15]) = a7;
  *(a9 + v22[16]) = a8;
  *(a9 + v22[17]) = a10;
  return result;
}

uint64_t sub_1003A95B0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  result = (*(v4 + 40))(v1 + *(a1 + 52), v6, v3);
  v8 = *(v1 + 56);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v10;
  }

  return result;
}

BOOL sub_1003A96A8()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  DispatchTime.distance(to:)();
  (*(v1 + 8))(v3, v0);
  *v7 = 4;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  v10 = static DispatchTimeInterval.< infix(_:_:)(v7, v9);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v9, v4);
  return v10;
}

uint64_t sub_1003A98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v42 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v25 - v9;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v31 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v25 - v13;
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = *(v5 + 112);
  v38 = qword_100598850;
  v30 = qword_10059BB20;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v43 = v16;
  v32 = v4;
  v36 = v17;
  v37 = v11 + 16;
  v17(v15, &v4[v16], v10);
  v18 = *(v7 + 48);
  v19 = v18(v15, 1, v6);
  v40 = *(v11 + 8);
  v41 = v11 + 8;
  if (v19 == 1)
  {
    v35 = (v7 + 32);
    v29 = v7 + 56;
    v28 = v11 + 40;
    v27 = v7 + 16;
    v33 = (v7 + 8);
    *&v20 = 136315394;
    v25 = v20;
    v21 = v32;
    v26 = v10;
    v34 = v15;
    do
    {
      v40(v15, v10);
      swift_beginAccess();
      v22 = type metadata accessor for Array();
      swift_getWitnessTable(&protocol conformance descriptor for [A], v22, v25, v26);
      swift_getWitnessTable(&protocol conformance descriptor for [A], v22);
      v15 = v39;
      RangeReplaceableCollection<>.popLast()();
      swift_endAccess();
      if (v18(v15, 1, v6) == 1)
      {
        break;
      }

      v23 = v44;
      (*v35)(v44, v15, v6);
      sub_1003A9F90(v23);
      (*v33)(v44, v6);
      v15 = v34;
      v36(v34, &v21[v43], v10);
    }

    while (v18(v15, 1, v6) == 1);
  }

  return (v40)(v15, v10);
}

void sub_1003A9F90(uint64_t a1)
{
  v90 = a1;
  v2 = v1;
  isa = v1->isa;
  v4 = isa[11];
  v5 = isa[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v86 = AssociatedTypeWitness;
  __chkstk_darwin();
  v88 = &v73 - v7;
  v83 = v4;
  v84 = v5;
  v9 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, v5, v4, v8);
  v87 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v73 - v10;
  v12 = type metadata accessor for Optional();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin();
  v14 = &v73 - v13;
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v73 - v17;
  __chkstk_darwin();
  v20 = &v73 - v19;
  v21 = *(&v2->isa + isa[15]);
  swift_unownedRetainStrong();
  v22 = v89;
  sub_10040CBA8();

  if (!v22)
  {
    v76 = v18;
    v77 = v16;
    v78 = v11;
    v80 = 0;
    swift_unownedRetainStrong();
    v23 = v90;
    v24 = *(v90 + 33) | (*(v90 + 35) << 16);
    v89 = v20;
    v79 = v24;
    sub_10040CD68(v24, v20);

    v25 = v87;
    v75 = v87[2].isa;
    v74 = v87 + 2;
    (v75)(v14, v23, v9);
    (v25[7].isa)(v14, 0, 1, v9);
    sub_1003AC7C0(v14);
    (*(v81 + 8))(v14, v82);
    v26 = sub_1003AA854(v91);
    if (!(v25[6].isa)(v27, 1, v9))
    {
      sub_1003A95B0(v9);
    }

    v26(v91, 0);
    v28 = v90;
    if (*(v90 + *(v9 + 60)) == 1 && (swift_unownedRetainStrong(), v29 = WiFiInterface.capabilities.getter(), , v91[0] = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor(), v94 = v29, sub_1000C2A14(), , v30 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v28 = v90, , , (v30 & 1) != 0))
    {
      v31 = NANMapID.secondary.unsafeMutableAddressor();
    }

    else
    {
      v31 = NANMapID.primary.unsafeMutableAddressor();
    }

    v32 = v89;
    LODWORD(v82) = *v31;
    v33 = v78;
    (v75)(v78, v28, v9);
    v34 = v76;
    sub_100023888(v32, v76, type metadata accessor for NANPeer);
    v35 = v32;
    v36 = v77;
    sub_100023888(v35, v77, type metadata accessor for NANPeer);
    swift_retain_n();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v74 = v2;
      v40 = v9;
      v41 = v36;
      v42 = v39;
      v81 = swift_slowAlloc();
      v91[0] = v81;
      *v42 = 136316162;
      v43 = NANMapID.description.getter(v82);
      LODWORD(v75) = v38;
      v45 = sub_100002320(v43, v44, v91);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = *(v33 + 35);
      v47 = v87[1].isa;
      v87 = v37;
      v48 = *(v33 + 33);
      v49 = v33;
      v50 = v40;
      (v47)(v49, v40);
      v51 = WiFiAddress.description.getter(v48 | (v46 << 16));
      v53 = sub_100002320(v51, v52, v91);

      *(v42 + 14) = v53;
      *(v42 + 22) = 1024;
      sub_1002E1D94();
      LODWORD(v46) = v54 & 1;
      sub_1000239B8(v34, type metadata accessor for NANPeer);
      *(v42 + 24) = v46;
      *(v42 + 28) = 1024;
      sub_1002E1BB8();
      LODWORD(v46) = v55 & 1;
      sub_1000239B8(v41, type metadata accessor for NANPeer);
      *(v42 + 30) = v46;
      *(v42 + 34) = 2080;
      v28 = v90;
      swift_unownedRetainStrong();
      v56 = sub_100410B90();

      v57 = WiFiAddress.description.getter(v56 & 0xFFFFFFFFFFFFLL);
      v59 = v58;

      v60 = sub_100002320(v57, v59, v91);

      *(v42 + 36) = v60;
      v61 = v87;
      _os_log_impl(&_mh_execute_header, v87, v75, "Attempting to transmit OOB AF [mapId=%s] to peer: %s (5G=%{BOOL}d, 2G=%{BOOL}d) on clusterID: %s", v42, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000239B8(v36, type metadata accessor for NANPeer);
      sub_1000239B8(v34, type metadata accessor for NANPeer);

      (v87[1].isa)(v33, v9);

      v50 = v9;
    }

    v63 = v85;
    v62 = v86;
    swift_unownedRetainStrong();
    v64 = *(*v21 + 96);
    swift_beginAccess();
    (*(v63 + 16))(v88, v21 + v64, v62);

    v65 = *(v28 + 16);
    v92[0] = *v28;
    v92[1] = v65;
    v93 = *(v28 + 32);
    swift_unownedRetainStrong();
    v66 = WiFiInterface.macAddress.getter();

    swift_unownedRetainStrong();
    v67 = sub_100410B90();

    v68 = (v28 + *(v50 + 56));
    v69 = *v68;
    v70 = v68[1];
    v71 = v68[2];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 272))(v92, v66 & 0xFFFFFFFFFFFFLL, v79, v67 & 0xFFFFFFFFFFFFLL, v82, v69, v70, v71, v62, AssociatedConformanceWitness);
    (*(v63 + 8))(v88, v62);
    sub_1000239B8(v89, type metadata accessor for NANPeer);
  }
}

uint64_t (*sub_1003AA854(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003AA8C4;
}

uint64_t sub_1003AA8C4(uint64_t a1, char a2)
{
  if (a2)
  {

    return swift_endAccess();
  }

  else
  {
    v4 = swift_endAccess();
    return sub_1003A98B0(v4, v5, v6, v7);
  }
}

uint64_t sub_1003AA900(uint64_t a1)
{
  v175 = *v1;
  v3 = v175;
  v168 = type metadata accessor for DispatchTimeInterval();
  v170 = *(v168 - 8);
  __chkstk_darwin();
  v166 = &v153[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v167 = &v153[-v5];
  v6 = v3[10];
  v160 = v3[11];
  v161 = v6;
  v8 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, v6, v160, v7);
  v9 = type metadata accessor for Optional();
  v176 = *(v9 - 8);
  v177 = v9;
  __chkstk_darwin();
  v174 = &v153[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v153[-v11];
  v178 = v8;
  v179 = *(v8 - 8);
  v13 = *(v179 + 64);
  __chkstk_darwin();
  v164 = &v153[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v158 = &v153[-v14];
  __chkstk_darwin();
  v165 = &v153[-v15];
  __chkstk_darwin();
  v159 = &v153[-v16];
  __chkstk_darwin();
  v163 = &v153[-v17];
  __chkstk_darwin();
  v162 = &v153[-v18];
  __chkstk_darwin();
  v171 = &v153[-v19];
  __chkstk_darwin();
  v169 = &v153[-v20];
  __chkstk_darwin();
  v172 = &v153[-v21];
  __chkstk_darwin();
  v173 = &v153[-v22];
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v24 = &v153[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v26 = &v153[-v25];
  __chkstk_darwin();
  v28 = &v153[-v27];
  __chkstk_darwin();
  v30 = &v153[-v29];
  sub_100023888(a1, &v153[-v29], type metadata accessor for DriverEvent);
  v180 = v30;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_100023888(v180, v26, type metadata accessor for DriverEvent);
    if (*v26 == 1)
    {
      v41 = v174;
      (*(v179 + 56))(v174, 1, 1, v178);
      sub_1003AC7C0(v41);
      (*(v176 + 8))(v41, v177);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      return sub_1000239B8(v180, type metadata accessor for DriverEvent);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_9:
    sub_100023888(a1, v24, type metadata accessor for DriverEvent);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v184[0] = swift_slowAlloc();
      *v44 = 136315394;
      v45 = _typeName(_:qualified:)();
      v47 = sub_100002320(v45, v46, v184);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = DriverEvent.shortDescription.getter();
      v50 = v49;
      sub_1000239B8(v24, type metadata accessor for DriverEvent);
      v51 = sub_100002320(v48, v50, v184);

      *(v44 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s unable to handle event: %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000239B8(v24, type metadata accessor for DriverEvent);
    }

    return sub_1000239B8(v180, type metadata accessor for DriverEvent);
  }

  sub_100023888(v180, v28, type metadata accessor for DriverEvent);
  memcpy(v183, v28, 0x16AuLL);
  memcpy(v184, v28, 0x16AuLL);
  if (sub_100185198(v184) != 15)
  {
    sub_1001854F8(v183);
    goto LABEL_9;
  }

  NANBitmap.Channel.operatingClass.getter();
  v33 = *(v32 + 2);
  v34 = *(v32 + 3);
  v35 = *(*v1 + 112);
  swift_beginAccess();
  v36 = v176;
  v37 = v1 + v35;
  v38 = v177;
  (*(v176 + 16))(v12, v37, v177);
  v40 = v178;
  v39 = v179;
  if ((*(v179 + 48))(v12, 1, v178) == 1)
  {
    (*(v36 + 8))(v12, v38);
    return sub_1000239B8(v180, type metadata accessor for DriverEvent);
  }

  v53 = *(v39 + 32);
  v54 = v173;
  v157 = v53;
  v53(v173, v12, v40);
  v55 = v54[*(v40 + 64)];
  if (v33)
  {
    if (v33 != 4)
    {
      v55 = 0;
    }

    v56 = v172;
    if (v55)
    {
LABEL_32:
      v97 = v179;
      v111 = v171;
      v74 = v173;
      (*(v179 + 16))(v171, v173, v40);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v182[0] = v115;
        *v114 = 136315138;
        v116 = *(v111 + 35);
        v105 = *(v179 + 8);
        v117 = v111;
        v118 = *(v111 + 33);
        v105(v117, v178);
        v119 = WiFiAddress.description.getter(v118 | (v116 << 16));
        v121 = sub_100002320(v119, v120, v182);
        v97 = v179;

        *(v114 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v112, v113, "Successfully transmitted multicast out of band action frame to %s", v114, 0xCu);
        sub_100002A00(v115);
        v40 = v178;
      }

      else
      {
        v105 = *(v97 + 8);
        v105(v111, v40);
      }

LABEL_39:
      v125 = v174;
      (*(v97 + 56))(v174, 1, 1, v40);
      sub_1003AC7C0(v125);
      (*(v176 + 8))(v125, v177);
LABEL_40:
      v105(v74, v40);
      return sub_1000239B8(v180, type metadata accessor for DriverEvent);
    }
  }

  else
  {
    v56 = v172;
    if (!v54[*(v40 + 64)])
    {
      goto LABEL_29;
    }
  }

  v57 = v179;
  v58 = *(v179 + 16);
  v172 = (v179 + 16);
  v156 = v58;
  v58(v56, v173, v40);
  v175 = v1;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v182[0] = v155;
    *v61 = 136315650;
    v154 = v60;
    v62 = *(v56 + 35);
    v63 = v56;
    v64 = *(v56 + 33);
    (*(v57 + 8))(v63, v178);
    v65 = WiFiAddress.description.getter(v64 | (v62 << 16));
    v67 = sub_100002320(v65, v66, v182);

    *(v61 + 4) = v67;
    *(v61 + 12) = 2080;
    v181 = v33;
    v68 = String.init<A>(describing:)();
    v70 = sub_100002320(v68, v69, v182);

    *(v61 + 14) = v70;
    *(v61 + 22) = 2080;
    v181 = v34;
    v71 = String.init<A>(describing:)();
    v73 = sub_100002320(v71, v72, v182);

    *(v61 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v59, v154, "Failed to transmit out of band action frame to %s: %s [%s]", v61, 0x20u);
    swift_arrayDestroy();

    v40 = v178;
  }

  else
  {
    (*(v57 + 8))(v56, v40);
  }

  if (v33 > 2)
  {
    if (v33 != 4)
    {
      v122 = v173;
      (*(v173 + 5))(0);
      v123 = v179 + 56;
      v124 = v174;
      (*(v179 + 56))(v174, 1, 1, v40);
      sub_1003AC7C0(v124);
      (*(v176 + 8))(v124, v177);
      (*(v123 - 48))(v122, v40);
      return sub_1000239B8(v180, type metadata accessor for DriverEvent);
    }

    goto LABEL_32;
  }

  if ((v33 - 1) >= 2)
  {
LABEL_29:
    v97 = v179;
    v98 = v169;
    (*(v179 + 16))(v169, v173, v40);
    v99 = Logger.logObject.getter();
    v100 = v40;
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v182[0] = v103;
      *v102 = 136315138;
      v104 = *(v98 + 35);
      v105 = *(v179 + 8);
      v106 = v98;
      v107 = *(v98 + 33);
      v105(v106, v100);
      v108 = WiFiAddress.description.getter(v107 | (v104 << 16));
      v110 = sub_100002320(v108, v109, v182);

      *(v102 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v99, v101, "Successfully transmitted out of band action frame to %s", v102, 0xCu);
      sub_100002A00(v103);
      v97 = v179;
    }

    else
    {
      v105 = *(v97 + 8);
      v105(v98, v100);
    }

    v40 = v100;
    v74 = v173;
    (*(v173 + 5))(1);
    goto LABEL_39;
  }

  v74 = v173;
  if (*(v173 + 7) <= 3 && (v173[*(v40 + 64)] & 1) == 0)
  {
    v138 = qword_10059BB20;
    v139 = v162;
    v140 = v156;
    v156(v162, v173, v40);
    v141 = v163;
    v140(v163, v74, v40);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v171 = v138;
      v146 = v145;
      v182[0] = v145;
      *v144 = 134218242;
      v147 = *(v139 + 7);
      v105 = *(v179 + 8);
      v105(v139, v178);
      *(v144 + 4) = v147;
      *(v144 + 12) = 2080;
      v148 = *(v141 + 35);
      v149 = *(v141 + 33);
      v105(v141, v178);
      v150 = WiFiAddress.description.getter(v149 | (v148 << 16));
      v152 = sub_100002320(v150, v151, v182);
      v40 = v178;

      *(v144 + 14) = v152;
      v74 = v173;
      _os_log_impl(&_mh_execute_header, v142, v143, "Retry #%ld transmission of out of band action frame to %s", v144, 0x16u);
      sub_100002A00(v146);
    }

    else
    {
      v105 = *(v179 + 8);
      v105(v139, v40);
      v105(v141, v40);
    }

    sub_1003A9F90(v74);
    goto LABEL_40;
  }

  swift_unownedRetainStrong();
  v75 = v167;
  sub_10040E9C0(v167);

  v76 = v166;
  *v166 = 10;
  v77 = v170;
  v78 = *(v170 + 104);
  LODWORD(v169) = enum case for DispatchTimeInterval.seconds(_:);
  v79 = v168;
  v164 = v78;
  v78(v76);
  v80 = static DispatchTimeInterval.< infix(_:_:)(v75, v76);
  v81 = *(v77 + 8);
  v81(v76, v79);
  v82 = v75;
  v83 = v173;
  v170 = v77 + 8;
  v171 = v81;
  v81(v82, v79);
  if (v80 && v83[39] == 1)
  {
    v166 = type metadata accessor for P2PTimer(0);
    v85 = v167;
    v84 = v168;
    *v167 = 2;
    (v164)(v85, v169, v84);
    v169 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = v159;
    v88 = v178;
    v156(v159, v83, v178);
    v89 = v179;
    v90 = (*(v179 + 80) + 40) & ~*(v179 + 80);
    v91 = swift_allocObject();
    v92 = v160;
    v91[2] = v161;
    v91[3] = v92;
    v91[4] = v86;
    v93 = v91 + v90;
    v83 = v173;
    v157(v93, v87, v88);
    v94 = v89;
    v95 = v169;

    static P2PTimer.async(after:on:execute:)(v85, v95, sub_1003AC898, v91);

    (v171)(v85, v168);
    v96 = v88;
  }

  else
  {
    v126 = v165;
    v96 = v178;
    v156(v165, v83, v178);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v182[0] = v130;
      *v129 = 136315138;
      v131 = *(v126 + 35);
      v132 = v179;
      v133 = *(v126 + 33);
      (*(v179 + 8))(v126, v178);
      v134 = WiFiAddress.description.getter(v133 | (v131 << 16));
      v136 = sub_100002320(v134, v135, v182);
      v96 = v178;

      *(v129 + 4) = v136;
      v94 = v132;
      _os_log_impl(&_mh_execute_header, v127, v128, "Exceeded retries while transmitting out of band action frame to %s", v129, 0xCu);
      sub_100002A00(v130);
    }

    else
    {
      v94 = v179;
      (*(v179 + 8))(v126, v96);
    }

    (*(v83 + 5))(0);
  }

  v137 = v174;
  (*(v94 + 56))(v174, 1, 1, v96);
  sub_1003AC7C0(v137);
  (*(v176 + 8))(v137, v177);
  (*(v94 + 8))(v83, v96);
  return sub_1000239B8(v180, type metadata accessor for DriverEvent);
}

double sub_1003ABE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, a3, a4, a4);
  __chkstk_darwin();
  type metadata accessor for Logger();
  __chkstk_darwin();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v9 = *(a2 + 32);
    sub_1003A8260(v8, *(a2 + 33) | (*(a2 + 35) << 16), 0, *(a2 + *(v5 + 56)), *(a2 + *(v5 + 56) + 8), *(a2 + *(v5 + 56) + 16), 0, 3, 3000, *(a2 + 40), *(a2 + 48));
  }

  return result;
}

BOOL sub_1003AC1F4(uint64_t a1)
{
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v4 = sub_1003EB86C();

  v5 = CountryCode.unknown.unsafeMutableAddressor();
  v6 = *v5 == v4 && *(v5 + 1) == HIBYTE(v4);
  result = 0;
  if (!v6)
  {
    swift_unownedRetainStrong();
    v7 = WiFiInterface.capabilities.getter();

    v8 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
    v13[0] = v7;
    v13[1] = v8;
    sub_1000C2A14();

    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    if (v9)
    {
      swift_unownedRetainStrong();
      sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v3);

      sub_1002E1D94();
      v11 = v10;
      sub_1000239B8(v3, type metadata accessor for NANPeer);
      if (v11)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t *sub_1003AC3AC()
{
  v1 = *v0;
  v2 = qword_10059BB20;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 112);
  type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, *(v1 + 80), *(v1 + 88), v5);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  swift_unownedRelease();
  return v0;
}

uint64_t sub_1003AC4C4()
{
  sub_1003AC3AC();

  return swift_deallocClassInstance();
}

unint64_t sub_1003AC554(uint64_t a1)
{
  result = sub_1002B8BF0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1003AC654(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  v4 = qword_100598850;
  v6 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, *(v3 + 80), *(v3 + 88), v5);
  *(v1 + v4) = Array.init()();
  (*(*(v6 - 8) + 56))(v1 + *(*v1 + 112), 1, 1, v6);
  *(v1 + *(*v1 + 120)) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_1003AC7C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(255, *(v3 + 80), *(v3 + 88), v5);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  v7 = swift_endAccess();
  return sub_1003A98B0(v7, v8, v9, v10);
}

double sub_1003AC898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame(0, v5, v6, a4) - 8);
  v8 = v4[4];
  v9 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_1003ABE58(v8, v9, v5, v6);
}

uint64_t sub_1003AC920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_100367828(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + 2 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_100367828((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_10002BEB8(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_10002BEB8(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1003ACB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100012400(a3, v24 - v9, &qword_1005985E0, &unk_1004B0F80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100016290(v10, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1003ACE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100012400(a3, v24 - v9, &qword_1005985E0, &unk_1004B0F80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100016290(v10, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10005DC58(&unk_100598610, &qword_1004B25F0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1003AD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100012400(a3, v24 - v9, &qword_1005985E0, &unk_1004B0F80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100016290(v10, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

Swift::Int sub_1003AD448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_100046A70(a1 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046A6CC();
      v9 = v11;
    }

    v10 = *(v9 + 56) + 24 * v7;
    *a2 = *v10;
    *(a2 + 16) = *(v10 + 16);
    result = sub_100468254(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0xB000000000000000;
  }

  return result;
}

double sub_1003AD518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10002A440(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046CAA8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100029954((*(v9 + 56) + 40 * v7), a2);
    sub_100468EB8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1003AD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10007CD94(a1 & 0xFFFFFFFFFFFFFFLL);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046C560();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v18 = *(v11 - 8);
    sub_100046A08(v10 + *(v18 + 72) * v7, a2, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_100468C8C(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1003AD75C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_10002A440(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_1003AD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100085268(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046DB78();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for BrowseEndpoints(0);
    v18 = *(v11 - 8);
    sub_100046A08(v10 + *(v18 + 72) * v7, a2, type metadata accessor for BrowseEndpoints);
    sub_100469BC8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for BrowseEndpoints(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1003AD998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_10002A440(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100046A08(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1003ADB58(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10002A440(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046E3BC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1004698A8(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003ADC20(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10002A440(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046A3E8();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_100468250(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003ADCFC(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v3 = os_transaction_create();
      if (!v3)
      {
        __break(1u);
      }

      return v3;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      v3 = os_transaction_create();
      if (v3)
      {
        return v3;
      }

      __break(1u);
      goto LABEL_6;
    }
  }

  sub_10005DC58(&qword_100599468, &unk_1004B2DB0);
  v3 = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return v3;
}

uint64_t sub_1003ADDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = nw_parameters_copy_custom_options();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  type = xpc_get_type(v2);
  if (type != XPC_TYPE_DATA.getter() || (bytes_ptr = xpc_data_get_bytes_ptr(v3)) == 0 || (v10 = bytes_ptr, length = xpc_data_get_length(v3), length < 1))
  {
    swift_unknownObjectRelease();
LABEL_4:
    v5 = 1;
    goto LABEL_5;
  }

  v12 = sub_1002AAFAC(v10, length);
  v14 = v13;
  swift_unknownObjectRelease();
  static WAParametersAgentInterface.Parameters.decode(from:)();
  sub_1000124C8(v12, v14);
  v5 = 0;
LABEL_5:
  v6 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

Swift::Int sub_1003ADF00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003ADF74(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *sub_1003ADFB8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1003ADFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WAError.ErrorCode();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 8)
  {
    v6 = &enum case for WAError.ErrorCode.error(_:);
  }

  else
  {
    v6 = *(&off_100579850 + a1 - 1);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1003AE074@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    if (a2 != 1)
    {
LABEL_9:
      v8 = enum case for WAError.ErrorCode.error(_:);
      v9 = type metadata accessor for WAError.ErrorCode();
      v6 = *(*(v9 - 8) + 104);
      v5 = v9;
      v10 = a3;
      v11 = v8;
      goto LABEL_18;
    }

    v5 = type metadata accessor for WAError.ErrorCode();
    v6 = *(*(v5 - 8) + 104);
    if (a1 == 1)
    {
      v7 = &enum case for WAError.ErrorCode.publisherTimeout(_:);
    }

    else if (a1)
    {
      v7 = &enum case for WAError.ErrorCode.connectionIdleTimeout(_:);
    }

    else
    {
      v7 = &enum case for WAError.ErrorCode.subscriberTimeout(_:);
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_9;
      }

      v13 = a1;
      v5 = type metadata accessor for WAError.ErrorCode();
      v6 = *(*(v5 - 8) + 104);
      if (v13 == 2)
      {
        v7 = &enum case for WAError.ErrorCode.connectionFailed(_:);
        goto LABEL_17;
      }

LABEL_14:
      v7 = &enum case for WAError.ErrorCode.error(_:);
      goto LABEL_17;
    }

    v12 = a1;
    v5 = type metadata accessor for WAError.ErrorCode();
    v6 = *(*(v5 - 8) + 104);
    if (v12 != 2)
    {
      goto LABEL_14;
    }

    v7 = &enum case for WAError.ErrorCode.connectionTerminated(_:);
  }

LABEL_17:
  v11 = *v7;
  v10 = a3;
LABEL_18:

  return v6(v10, v11, v5);
}

uint64_t sub_1003AE20C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    UUID.init(uuid:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1003AE2C0()
{
  v1 = type metadata accessor for WASubscribableService();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100598958, &qword_1004B2858);
  __chkstk_darwin();
  v6 = v16 - v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v17 = 0x49656C626E75425BLL;
  v18 = 0xEA00000000003A44;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier));
  v7._countAndFlagsBits = 0x6563697672655320;
  v7._object = 0xE90000000000003ALL;
  String.append(_:)(v7);
  sub_100012400(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, v6, &qword_100598958, &qword_1004B2858);
  v8 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_100016290(v6, &qword_100598958, &qword_1004B2858);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    WABrowserAgentInterface.DescriptorToAgent.service.getter();
    (*(v9 + 8))(v6, v8);
    v10 = WASubscribableService.name.getter();
    v11 = v12;
    (*(v2 + 8))(v4, v1);
  }

  v16[0] = v10;
  v16[1] = v11;
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v17;
}

uint64_t sub_1003AE564()
{

  sub_100016290(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, &qword_100598958, &qword_1004B2858);

  return swift_deallocClassInstance();
}

uint64_t sub_1003AE604()
{
  v1 = type metadata accessor for WAPublishableService();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100598990, &qword_1004B2888);
  __chkstk_darwin();
  v6 = v16 - v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v17 = 0x49656C626E75425BLL;
  v18 = 0xEA00000000003A44;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier));
  v7._countAndFlagsBits = 0x6563697672655320;
  v7._object = 0xE90000000000003ALL;
  String.append(_:)(v7);
  sub_100012400(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, v6, &qword_100598990, &qword_1004B2888);
  v8 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_100016290(v6, &qword_100598990, &qword_1004B2888);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    WAListenerAgentInterface.DescriptorToAgent.service.getter();
    (*(v9 + 8))(v6, v8);
    v10 = WAPublishableService.name.getter();
    v11 = v12;
    (*(v2 + 8))(v4, v1);
  }

  v16[0] = v10;
  v16[1] = v11;
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v17;
}

uint64_t sub_1003AE8A8()
{

  sub_100016290(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, &qword_100598990, &qword_1004B2888);

  return swift_deallocClassInstance();
}

void sub_1003AE988(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = *v5;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v97 = &v87 - v13;
  v14 = type metadata accessor for Logger();
  v101 = *(v14 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v17 = &v87 - v16;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v95 = v15;
    v100 = a3;
    v94 = &unk_1004B4EC0;
    Logger.init(subsystem:category:)();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v99 = v14;
    v96 = a4;
    v92 = a5;
    if (v21)
    {
      v22 = a1;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v98 = v6;
      v107 = v24;
      *v23 = 136315650;
      *(v23 + 4) = sub_100002320(v22, a2, &v107);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_100002320(v100, a4, &v107);
      *(v23 + 22) = 1024;
      *(v23 + 24) = a5;
      _os_log_impl(&_mh_execute_header, v19, v20, "#### Monitoring for devices paired with: %s for Service[%s] clientType: %d", v23, 0x1Cu);
      swift_arrayDestroy();
      v6 = v98;

      a1 = v22;

      v25 = *(v101 + 8);
      v26 = v17;
      v27 = v99;
    }

    else
    {

      v25 = *(v101 + 8);
      v26 = v17;
      v27 = v14;
    }

    v93 = v25;
    v25(v26, v27);
    swift_beginAccess();
    v103 = a1;
    v104 = a2;
    v28 = *(v12 + 80);
    v29 = *(v12 + 88);
    active = type metadata accessor for NANAgentHandler.ActiveClient(0, v28, v29, v30);

    Dictionary.subscript.getter();

    if (v107)
    {
      sub_1003EA068(v107, v108, v109, v110, v111);
      v32 = 0;
      v33 = 0;
      v98 = 0;
    }

    else
    {
      v32 = sub_1002DED7C(_swiftEmptyArrayStorage);
      v33 = sub_1002DED7C(_swiftEmptyArrayStorage);
      type metadata accessor for NANAgentHandler.NANAgentPairedDevicesDelegate(0, v28, v29, v34);

      v37 = sub_1003E4258(v35, a1, a2, v36);

      v112 = v33;
      v113[0] = v32;
      v107 = v32;
      v108 = v33;
      v109 = 0;
      v110 = 0;
      v111 = v37;
      v105 = a1;
      v106 = a2;
      swift_beginAccess();
      sub_100012400(v113, v102, &qword_100599488, &qword_1004B2DC0);
      sub_100012400(&v112, v102, &qword_100599488, &qword_1004B2DC0);
      v98 = v37;
      v38 = v37;

      sub_100012400(v113, v102, &qword_100599488, &qword_1004B2DC0);
      sub_100012400(&v112, v102, &qword_100599488, &qword_1004B2DC0);
      type metadata accessor for Dictionary();
      v39 = v38;
      Dictionary.subscript.setter();
      swift_endAccess();
      v40 = type metadata accessor for TaskPriority();
      v41 = v97;
      (*(*(v40 - 8) + 56))(v97, 1, 1, v40);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = v32;
      *(v42 + 40) = v33;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = v39;
      *(v42 + 72) = v6;
      *(v42 + 80) = a1;
      *(v42 + 88) = a2;

      sub_1003ACB3C(0, 0, v41, &unk_1004B2DD0, v42);
    }

    v103 = a1;
    v104 = a2;

    Dictionary.subscript.getter();

    v43 = v107;
    if (!v107)
    {
      sub_1003EA068(v32, v33, 0, 0, v98);
      return;
    }

    v90 = active;
    v91 = v33;
    v97 = v32;
    v44 = v111;
    v89 = v110;
    v45 = v108;
    v87 = v109;
    v46 = v95;
    Logger.init(subsystem:category:)();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v88 = a1;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = a1;
      v53 = v51;
      v107 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_100002320(v52, a2, &v107);
      _os_log_impl(&_mh_execute_header, v47, v48, "service being monitored for: %s", v50, 0xCu);
      sub_100002A00(v53);
    }

    v93(v46, v99);
    v54 = v100;
    v55 = v96;
    v56 = HIBYTE(v96) & 0xF;
    if ((v96 & 0x2000000000000000) == 0)
    {
      v56 = v100 & 0xFFFFFFFFFFFFLL;
    }

    if (!v56)
    {
      sub_1003EA068(v97, v91, 0, 0, v98);

      return;
    }

    if (v92)
    {
      if (v92 == 1)
      {
        v57 = *(v45 + 16);

        v58 = v44;
        if (!v57 || (sub_1000102E8(v54, v55), (v59 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v45;
          v66 = 1;
          v67 = v54;
          v68 = v55;
          goto LABEL_35;
        }

        if (*(v45 + 16))
        {
          v60 = v54;
          v61 = v55;
          v62 = sub_1000102E8(v60, v55);
          if (v63)
          {
            v64 = *(*(v45 + 56) + v62) + 1;
            if (((v64 >> 8) & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v107 = v45;
              v66 = v64;
              v67 = v100;
              v68 = v61;
LABEL_35:
              sub_1003E23B8(v66, v67, v68, isUniquelyReferenced_nonNull_native);
              v83 = v107;
              v84 = v43;
LABEL_38:
              v85 = v87;
              v81 = v89;
              goto LABEL_39;
            }

            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v81 = v89 + 1;
        if (v89 != -1)
        {

          v82 = v44;
          v83 = v45;
          v84 = v43;
          v85 = v87;
LABEL_39:
          v107 = v84;
          v108 = v83;
          v109 = v85;
          v110 = v81;
          v111 = v44;
          v105 = v88;
          v106 = a2;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          v86 = v44;

          Dictionary.subscript.setter();
          swift_endAccess();

          sub_1003EA068(v97, v91, 0, 0, v98);

          return;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v69 = *(v43 + 16);

    v70 = v44;
    if (v69 && (sub_1000102E8(v54, v55), (v71 & 1) != 0))
    {
      if (!*(v43 + 16))
      {
        goto LABEL_43;
      }

      v72 = v54;
      v73 = v55;
      v74 = sub_1000102E8(v72, v55);
      if ((v75 & 1) == 0)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v76 = *(*(v43 + 56) + v74) + 1;
      if ((v76 >> 8))
      {
LABEL_47:
        __break(1u);
        return;
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v43;
      v78 = v76;
      v79 = v100;
      v80 = v73;
    }

    else
    {
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v43;
      v78 = 1;
      v79 = v54;
      v80 = v55;
    }

    sub_1003E23B8(v78, v79, v80, v77);
    v84 = v107;
    v83 = v45;
    goto LABEL_38;
  }
}

uint64_t sub_1003AF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = *a5;
  v9 = *(*a5 + 88);
  v7[16] = v9;
  v7[17] = *(v9 + 8);
  v7[18] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[19] = AssociatedTypeWitness;
  v7[20] = *(AssociatedTypeWitness - 8);
  v7[21] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003AF5A0, 0, 0);
}

uint64_t sub_1003AF5A0()
{
  (*(v0[23] + 16))(v0[24], *(v0[12] + 32) + qword_100598F40, v0[22]);
  if (qword_1005943E8 != -1)
  {
    swift_once();
  }

  sub_100037644(v0[22], qword_10059BAD0);
  sub_10001ADA4(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = v0[19];
    v19 = v0[16];
    v8 = v0[14];
    v7 = v0[15];
    v9 = *(v0[13] + 24);
    swift_unownedRetainStrong();
    (*(v3 + 16))(v4, v9 + *(*v9 + 112), v6);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 136))(v6, AssociatedConformanceWitness);
    v0[25] = v11;
    (*(v3 + 8))(v4, v6);
    swift_beginAccess();
    v0[10] = v8;
    v0[11] = v7;
    type metadata accessor for NANAgentHandler.ActiveClient(0, v5, v19, v12);

    Dictionary.subscript.getter();

    v13 = v0[2];
    if (v13)
    {
      v14 = v0[6];
      v15 = v14;
      v16 = v14;
      v17 = v14;
    }

    else
    {
      v17 = 0;
      v16 = v0[6];
    }

    v0[26] = v17;
    sub_1003EA068(v13, v0[3], v0[4], v0[5], v16);
    v18 = *v11 + 536;
    v0[27] = *v18;
    v0[28] = v18 & 0xFFFFFFFFFFFFLL | 0x27A1000000000000;

    return _swift_task_switch(sub_1003AF8E4, v11, 0);
  }
}

uint64_t sub_1003AF8E4()
{
  (*(v0 + 216))(*(v0 + 112), *(v0 + 120), *(v0 + 208), *(v0 + 192));

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003AF96C, 0, 0);
}

uint64_t sub_1003AF96C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

void sub_1003AF9F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v6;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v14 = &v59 - v13;
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    swift_beginAccess();
    v65 = a1;
    v66 = a2;
    active = type metadata accessor for NANAgentHandler.ActiveClient(0, *(v12 + 80), *(v12 + 88), v16);

    v64 = active;
    Dictionary.subscript.getter();

    v18 = v71;
    if (v71)
    {
      v19 = v75;
      v20 = v72;
      v21 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v21 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {

        return;
      }

      v69 = v72;
      v70 = v71;
      v62 = v71;
      v63 = v72;
      v59 = v14;
      if (a5)
      {
        if (a5 != 1)
        {
          v37 = v74 - 1;
          if (v74)
          {
            v38 = v73;

            v29 = v63;

            v39 = v19;
            goto LABEL_32;
          }

          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        LODWORD(v60) = v74;
        v61 = v73;
        v22 = *(v72 + 16);

        v23 = v19;
        if (v22)
        {
          sub_1000102E8(a3, a4);
          if (v24)
          {
            if (*(v20 + 16))
            {
              v25 = sub_1000102E8(a3, a4);
              if (v26)
              {
                v27 = *(*(v20 + 56) + v25) - 1;
                if ((v27 & 0xFFFFFF00) == 0)
                {
                  if (*(*(v20 + 56) + v25) == 1)
                  {
                    sub_100420A24(a3, a4);
                    v29 = v69;
                  }

                  else
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v71 = v20;
                    sub_1003E23B8(v27, a3, a4, isUniquelyReferenced_nonNull_native);
                    v29 = v71;
                    v69 = v71;
                  }

                  goto LABEL_31;
                }

                goto LABEL_50;
              }

              goto LABEL_48;
            }

            goto LABEL_46;
          }
        }
      }

      else
      {
        LODWORD(v60) = v74;
        v61 = v73;
        v30 = *(v71 + 16);

        v31 = v19;
        if (v30)
        {
          sub_1000102E8(a3, a4);
          if (v32)
          {
            if (!*(v18 + 16))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v33 = sub_1000102E8(a3, a4);
            if ((v34 & 1) == 0)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v35 = *(*(v18 + 56) + v33) - 1;
            if ((v35 & 0xFFFFFF00) != 0)
            {
LABEL_51:
              __break(1u);
              return;
            }

            if (*(*(v18 + 56) + v33) == 1)
            {
              sub_100420A24(a3, a4);
              v18 = v70;
            }

            else
            {
              v36 = swift_isUniquelyReferenced_nonNull_native();
              v71 = v18;
              sub_1003E23B8(v35, a3, a4, v36);
              v18 = v71;
              v70 = v71;
            }
          }

          v29 = v63;
LABEL_31:
          v38 = v61;
          v37 = v60;
LABEL_32:
          v71 = v18;
          v72 = v29;
          v73 = v38;
          v74 = v37;
          v75 = v19;
          v67 = a1;
          v68 = a2;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          v40 = v19;

          Dictionary.subscript.setter();
          swift_endAccess();
          v65 = a1;
          v66 = a2;

          Dictionary.subscript.getter();

          v41 = v71;
          if (v71)
          {
            v60 = v29;
            v61 = v18;
            v42 = v40;
            v43 = v72;
            v44 = v73;
            v46 = v74;
            v45 = v75;

            sub_1003EA068(v41, v43, v44, v46, v45);
            v47 = *(v43 + 16);

            if (v47)
            {
            }

            else
            {
              v65 = a1;
              v66 = a2;

              Dictionary.subscript.getter();

              v48 = v71;
              if (!v71 || (v49 = v72, v50 = v73, v51 = v74, v52 = v75, v53 = , sub_1003EA068(v53, v49, v50, v51, v52), v54 = *(v48 + 16), , v54) || (v65 = a1, v66 = a2, , , Dictionary.subscript.getter(), , , !v71) || (v55 = v74, sub_1003EA068(v71, v72, v73, v74, v75), v55))
              {
              }

              else
              {
                v56 = type metadata accessor for TaskPriority();
                v57 = v59;
                (*(*(v56 - 8) + 56))(v59, 1, 1, v56);
                v58 = swift_allocObject();
                v58[2] = 0;
                v58[3] = 0;
                v58[4] = v6;
                v58[5] = a1;
                v58[6] = a2;

                sub_1003ACB3C(0, 0, v57, &unk_1004B2E58, v58);
              }
            }
          }

          else
          {
          }

          return;
        }
      }

      v29 = v20;
      goto LABEL_31;
    }
  }
}

uint64_t sub_1003B00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = *a4;
  v8 = *(*a4 + 88);
  v6[25] = v8;
  v6[26] = *(v8 + 8);
  v6[27] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[28] = AssociatedTypeWitness;
  v6[29] = *(AssociatedTypeWitness - 8);
  v6[30] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v6[34] = v11;
  v6[35] = *(v11 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003B0284, 0, 0);
}

uint64_t sub_1003B0284()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  swift_beginAccess();
  v0[18] = v4;
  v0[19] = v3;
  v0[38] = type metadata accessor for NANAgentHandler.ActiveClient(0, v1, v2, v5);

  Dictionary.subscript.getter();

  v6 = v0[2];
  if (v6)
  {
    v8 = v0[34];
    v7 = v0[35];
    v30 = v0[37];
    v31 = v0[29];
    v9 = v0[28];
    v32 = v0[30];
    v28 = v0[36];
    v29 = v0[22];
    v11 = v0[3];
    v10 = v0[4];
    v13 = v0[5];
    v12 = v0[6];
    v14 = v12;
    sub_1003EA068(v6, v11, v10, v13, v12);
    (*(v7 + 16))(v28, v14 + qword_100598F40, v8);

    (*(v7 + 32))(v30, v28, v8);
    v15 = *(v29 + 24);
    swift_unownedRetainStrong();
    (*(v31 + 16))(v32, v15 + *(*v15 + 112), v9);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 136))(v9, AssociatedConformanceWitness);
    v0[39] = v17;
    (*(v31 + 8))(v32, v9);
    v18 = *v17 + 544;
    v0[40] = *v18;
    v0[41] = v18 & 0xFFFFFFFFFFFFLL | 0xD46B000000000000;

    return _swift_task_switch(sub_1003B0638, v17, 0);
  }

  else
  {
    Logger.init(subsystem:category:)();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[32];
    v22 = v0[33];
    v24 = v0[31];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "#### Unable to get identifier for pairedDeviceDelegate", v25, 2u);
    }

    (*(v23 + 8))(v22, v24);

    v26 = v0[1];

    return v26();
  }
}