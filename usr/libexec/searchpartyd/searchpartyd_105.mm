void sub_100B8BFA0(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v551 = a8;
  v537 = a7;
  v539 = a6;
  v538 = a5;
  v541 = a3;
  v522 = a1;
  v519 = type metadata accessor for BeaconObservation(0);
  v520 = *(v519 - 8);
  __chkstk_darwin(v519);
  v521 = &v479 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  __chkstk_darwin(v11 - 8);
  v528 = &v479 - v12;
  v13 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  __chkstk_darwin(v13 - 8);
  v531 = &v479 - v14;
  v533 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v530 = *(v533 - 8);
  __chkstk_darwin(v533);
  v16 = &v479 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v543 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v543);
  v534 = &v479 - v17;
  v547 = type metadata accessor for DispatchTime();
  v548 = *(v547 - 8);
  v18 = __chkstk_darwin(v547);
  v545 = &v479 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v546 = &v479 - v20;
  v542 = type metadata accessor for PairingConfig(0);
  __chkstk_darwin(v542);
  v553 = &v479 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v555 = type metadata accessor for OwnedBeaconRecord(0);
  v544 = *(v555 - 8);
  v22 = __chkstk_darwin(v555);
  v523 = &v479 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v517 = &v479 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v479 - v27;
  __chkstk_darwin(v26);
  v556 = (&v479 - v29);
  v540 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v540);
  v560 = &v479 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Endianness();
  __chkstk_darwin(v31 - 8);
  v549 = (&v479 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v527 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v33 = __chkstk_darwin(v527);
  v524 = &v479 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v550 = (&v479 - v35);
  v561 = type metadata accessor for OwnedBeaconGroup(0);
  v559 = *(v561 - 8);
  v36 = *(v559 + 8);
  v37 = __chkstk_darwin(v561);
  v518 = &v479 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v526 = (&v479 - v39);
  v40 = __chkstk_darwin(v38);
  v529 = (&v479 - v41);
  v42 = __chkstk_darwin(v40);
  v557 = &v479 - v43;
  v44 = __chkstk_darwin(v42);
  v562 = (&v479 - v45);
  v46 = __chkstk_darwin(v44);
  *&v535 = &v479 - v47;
  v48 = __chkstk_darwin(v46);
  v536 = &v479 - v49;
  __chkstk_darwin(v48);
  v51 = &v479 - v50;
  v52 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v52 - 8);
  v54 = &v479 - v53;
  v563 = type metadata accessor for AccessoryProductInfo(0);
  isa = v563[-1].isa;
  __chkstk_darwin(v563);
  v56 = &v479 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v57 - 8);
  v552 = &v479 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v60 = __chkstk_darwin(v59 - 8);
  v525 = &v479 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v532 = &v479 - v63;
  __chkstk_darwin(v62);
  v65 = &v479 - v64;
  v66 = type metadata accessor for UUID();
  v67 = __chkstk_darwin(v66);
  v70 = &qword_101695000;
  if (!a4[12])
  {
    goto LABEL_11;
  }

  v71 = a4[14];
  if (v71 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v72 = *(a4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v72 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v512 = a4[12];
  v504 = a2;
  v505 = v16;
  v514 = v71;
  v511 = v72;
  v509 = v56;
  v508 = v51;
  v513 = &v479 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = a4[11];
  v73 = a4[13];
  v74 = *(a4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v516 = v69;
  v75 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  v76 = v67;
  swift_beginAccess();
  v510 = a4;
  v77 = a4 + v75;
  v78 = v516;
  sub_1000D2A70(v77, v65, &qword_1016980D0, &unk_10138F3B0);
  v79 = *(v78 + 48);
  v515 = v76;
  v506 = v79;
  if (v79(v65, 1, v76) == 1)
  {
    sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
    v70 = &qword_101695000;
LABEL_11:
    if (v70[26] != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_1000076D4(v88, qword_10177C418);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "generateOwnedBeaconRecordGroup: could not get basic device info from the session.", v91, 2u);
    }

    sub_100139CA0();
    swift_allocError();
    *v92 = 5;
    swift_willThrow();
    return;
  }

  v498 = v78 + 48;
  v503 = v54;
  v499 = v28;
  v80 = v513;
  (*(v78 + 32))(v513, v65, v515);
  v81 = v511;
  v569 = v74;
  v570 = v511;
  sub_10002E98C(v74, v511);
  sub_10002E98C(v74, v81);

  v82 = v73;
  v83 = v73;
  v84 = v514;
  sub_10002E98C(v82, v514);
  v501 = sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    (*(v78 + 8))(v80, v515);

    sub_100006654(v83, v84);
    sub_100006654(v74, v81);
    sub_100006654(v74, v81);
    goto LABEL_10;
  }

  v502 = v83;
  v85 = Data.trimmed.getter();
  v87 = v86;
  sub_100006654(v74, v81);
  if (*(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1) == 1)
  {
    sub_100017D5C(v85, v87);

    sub_100006654(v502, v514);
    sub_100006654(v74, v81);
    sub_100016590(v85, v87);
    sub_100016590(v85, v87);
    (*(v78 + 8))(v513, v515);
    goto LABEL_10;
  }

  v500 = v85;
  v495 = v74;
  v490 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v93 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v93 >> 60 == 15)
  {
    v94 = v500;
    sub_100017D5C(v500, v87);
    v492 = 0;
    v497 = 0;
    v489 = 0;
    v95 = &v526;
  }

  else
  {
    v96 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v97 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v98 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
    v94 = v500;
    sub_100017D5C(v500, v87);
    v99 = v514;
    v100 = v503;
    if (v98 >> 60 == 15)
    {
      v492 = 0;
      v497 = 0;
      v489 = 0;
      v494 = 0;
      goto LABEL_31;
    }

    v101 = v96;
    sub_10002E98C(v96, v93);
    sub_10002E98C(v97, v98);
    v102 = Data.hexString.getter();
    v104 = HIBYTE(v103) & 0xF;
    v105 = v98;
    v106 = v97;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v104 = v102 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      v494 = v103;
      v489 = v102;
    }

    else
    {

      v489 = 0;
      v494 = 0;
    }

    v107 = Data.hexString.getter();
    v109 = v108;
    sub_100006654(v101, v93);
    sub_100006654(v106, v105);
    v110 = HIBYTE(v109) & 0xF;
    v492 = v107;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v110 = v107 & 0xFFFFFFFFFFFFLL;
    }

    if (v110)
    {
      v497 = v109;
      goto LABEL_30;
    }

    v492 = 0;
    v95 = &v529;
  }

  *(v95 - 32) = 0;
LABEL_30:
  v99 = v514;
  v100 = v503;
LABEL_31:
  v569 = v94;
  v570 = v87;
  sub_100B98334();
  v111 = RawRepresentable<>.hexString.getter();
  v113 = v112;
  v114 = HIBYTE(v112) & 0xF;
  if ((v112 & 0x2000000000000000) == 0)
  {
    v114 = v111 & 0xFFFFFFFFFFFFLL;
  }

  if (!v114)
  {
    sub_100016590(v94, v87);

    if (qword_1016950D0 != -1)
    {
LABEL_240:
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    sub_1000076D4(v118, qword_10177C418);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v513;
    if (v121)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "generateOwnedBeaconRecord: invalid parameters for StableIdentifier.", v123, 2u);
      v94 = v500;
      v122 = v513;
    }

    sub_100139CA0();
    swift_allocError();
    *v124 = 5;
    swift_willThrow();
    v125 = v502;
    v126 = v99;
    goto LABEL_58;
  }

  v488 = v111;
  v115 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
  if (v115 >> 60 != 15)
  {
    v569 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
    v116 = v569;
    v570 = v115;
    sub_100017D5C(v569, v115);
    if ((DataProtocol.isNull.getter() & 1) == 0)
    {
      v127 = Data.trimmed.getter();
      v501 = v128;
      v569 = v127;
      v570 = v128;
      v129 = RawRepresentable<>.hexString.getter();
      v130 = v116;
      v131 = v129;
      v117 = v132;
      sub_100006654(v130, v115);
      sub_100016590(v127, v501);
      v133 = HIBYTE(v117) & 0xF;
      v487 = v131;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v133 = v131 & 0xFFFFFFFFFFFFLL;
      }

      if (!v133)
      {

        v487 = 0;
        v117 = 0;
      }

      v94 = v500;
      goto LABEL_47;
    }

    sub_100006654(v116, v115);
  }

  v487 = 0;
  v117 = 0;
LABEL_47:
  v491 = v117;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v134 = type metadata accessor for Logger();
  v135 = sub_1000076D4(v134, qword_10177C418);
  sub_100017D5C(v94, v87);
  v501 = v135;
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  sub_100016590(v94, v87);
  v138 = os_log_type_enabled(v136, v137);
  v493 = v113;
  if (v138)
  {
    LODWORD(v486) = v137;
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v569 = v140;
    *v139 = 141558275;
    *(v139 + 4) = 1752392040;
    v141 = v139;
    *(v139 + 12) = 2081;
    sub_100017D5C(v94, v87);
    static String.Encoding.utf8.getter();
    v142 = String.init(data:encoding:)();
    if (!v143)
    {
      v142 = Data.hexString.getter();
    }

    v144 = v142;
    v145 = v143;
    sub_100016590(v94, v87);
    v146 = sub_1000136BC(v144, v145, &v569);

    *(v141 + 14) = v146;
    _os_log_impl(&_mh_execute_header, v136, v486, "Removing any existing beacon record for %{private,mask.hash}s", v141, 0x16u);
    sub_100007BAC(v140);

    v94 = v500;
    v100 = v503;
  }

  else
  {
  }

  v147 = v564;
  sub_100B948D4(v94, v87);
  v148 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  v99 = v510;
  swift_beginAccess();
  sub_1000D2A70(v99 + v148, v100, &qword_101697268, &qword_101394FE0);
  if ((*(isa + 6))(v100, 1, v563) == 1)
  {
    sub_100016590(v94, v87);

    sub_10000B3A8(v100, &qword_101697268, &qword_101394FE0);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = v514;
    v122 = v513;
    if (v151)
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&_mh_execute_header, v149, v150, "Missing product info to create beacon.", v153, 2u);
      v94 = v500;
      v122 = v513;
    }

    sub_100139CA0();
    swift_allocError();
    *v154 = 5;
    swift_willThrow();
    v125 = v502;
    v126 = v152;
LABEL_58:
    sub_100006654(v125, v126);
    sub_100016590(v94, v87);
    sub_100006654(v495, v511);
    (*(v516 + 8))(v122, v515);
    return;
  }

  v155 = v509;
  sub_100B987C8(v100, v509, type metadata accessor for AccessoryProductInfo);
  v483 = sub_100B98388(v502, v514, v155);
  v484 = v156;
  v157 = v550;
  sub_100AC57E4(v94, v87, v550);
  v158 = *(v559 + 6);
  v481 = v559 + 48;
  v480 = v158;
  v159 = v158(v157, 1, v561);
  v496 = v87;
  if (v159 != 1)
  {
    v199 = v536;
    sub_100B987C8(v157, v536, type metadata accessor for OwnedBeaconGroup);
    v200 = v535;
    sub_100B98760(v199, v535, type metadata accessor for OwnedBeaconGroup);
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v562 = swift_slowAlloc();
      *&v568 = v562;
      *v203 = 141558275;
      *(v203 + 4) = 1752392040;
      *(v203 + 12) = 2081;
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v204 = dispatch thunk of CustomStringConvertible.description.getter();
      v205 = v200;
      v207 = v206;
      sub_100B986D4(v205, type metadata accessor for OwnedBeaconGroup);
      v208 = sub_1000136BC(v204, v207, &v568);

      *(v203 + 14) = v208;
      _os_log_impl(&_mh_execute_header, v201, v202, "Found existing OwnedBeaconGroup %{private,mask.hash}s", v203, 0x16u);
      sub_100007BAC(v562);
    }

    else
    {

      sub_100B986D4(v200, type metadata accessor for OwnedBeaconGroup);
    }

    v209 = v508;
    v210 = v560;
    sub_1005160CC(v501);
    v211 = v500;
    if ((*(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) & 1) != 0 || (sub_100518118() & 1) == 0 && (v212 = v532, sub_100519BCC(v211, v87, v532), v213 = v506(v212, 1, v515), sub_10000B3A8(v212, &qword_1016980D0, &unk_10138F3B0), v213 == 1))
    {
      sub_100B987C8(v199, v209, type metadata accessor for OwnedBeaconGroup);
      LODWORD(v550) = 1;
    }

    else
    {
      sub_100017D5C(v211, v87);
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.default.getter();
      sub_100016590(v211, v87);
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *&v568 = v217;
        *v216 = 141558275;
        *(v216 + 4) = 1752392040;
        *(v216 + 12) = 2081;
        sub_100017D5C(v211, v87);
        static String.Encoding.utf8.getter();
        v218 = String.init(data:encoding:)();
        v220 = v87;
        if (!v219)
        {
          v218 = Data.hexString.getter();
        }

        v221 = v218;
        v222 = v219;
        sub_100016590(v211, v220);
        v223 = sub_1000136BC(v221, v222, &v568);

        *(v216 + 14) = v223;
        _os_log_impl(&_mh_execute_header, v214, v215, "%{private,mask.hash}s is already paired. Need to clean up for possible bud replacement", v216, 0x16u);
        sub_100007BAC(v217);

        v210 = v560;
        v87 = v496;
        v199 = v536;
      }

      else
      {
      }

      sub_100B92BA4(v199);
      v258 = v561;
      v259 = *(v561 + 28);
      v260 = type metadata accessor for MACAddress();
      v261 = v508;
      (*(*(v260 - 8) + 16))(&v508[v259], v537, v260);
      UUID.init()();
      *v261 = xmmword_10138C660;
      *(v261 + 16) = v483;
      *(v261 + 24) = v484 & 1;
      *&v568 = _swiftEmptyDictionarySingleton;
      v262 = v554;
      sub_100B8A5CC(v551, &v568);
      *&v554 = v262;
      sub_100B986D4(v199, type metadata accessor for OwnedBeaconGroup);
      *(v261 + v258[8]) = 1;
      v263 = (v261 + v258[9]);
      v264 = v539;
      *v263 = v538;
      v263[1] = v264;
      *(v261 + v258[10]) = v568;

      LODWORD(v550) = 0;
    }

    goto LABEL_162;
  }

  sub_10000B3A8(v157, &unk_1016AF8B0, &unk_1013A0700);
  v160 = v554;
  v161 = sub_100B8ABC8(v551);
  v162 = v161;
  v163 = v160;
  v164 = v161[2].isa;
  if (!v164)
  {
    v482 = _swiftEmptyArrayStorage;
    goto LABEL_145;
  }

  v165 = 0;
  v147 = v161 + 4;
  if (v94)
  {
    v166 = 0;
  }

  else
  {
    v166 = v87 == 0xC000000000000000;
  }

  v167 = !v166;
  LODWORD(v550) = v167;
  v168 = BYTE6(v87);
  v87 >>= 62;
  v169 = __OFSUB__(HIDWORD(v94), v94);
  LODWORD(v532) = v169;
  v503 = HIDWORD(v94) - v94;
  v536 = v168;
  v479 = (v164 - 1);
  v482 = _swiftEmptyArrayStorage;
  v485 = v161;
  v486 = v164;
  *&v535 = v161 + 4;
  while (2)
  {
    v170 = v165;
    while (1)
    {
      if (v170 >= v162[2].isa)
      {
        __break(1u);
        goto LABEL_230;
      }

      v171 = *&v147[2 * v170].isa;
      v99 = v147[2 * v170 + 1].isa;
      v172 = v99 >> 62;
      if (v99 >> 62 == 3)
      {
        if (v171)
        {
          v173 = 0;
        }

        else
        {
          v173 = v99 == 0xC000000000000000;
        }

        v175 = !v173 || v87 < 3;
        if (((v175 | v550) & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_95;
      }

      if (v172 > 1)
      {
        if (v172 == 2)
        {
          v177 = *(v171 + 16);
          v178 = *(v171 + 24);
          v179 = __OFSUB__(v178, v177);
          v176 = v178 - v177;
          if (v179)
          {
            goto LABEL_239;
          }

LABEL_96:
          if (v87 <= 1)
          {
            goto LABEL_97;
          }

          goto LABEL_102;
        }

LABEL_95:
        v176 = 0;
        goto LABEL_96;
      }

      if (v172)
      {
        LODWORD(v176) = DWORD1(v171) - v171;
        if (__OFSUB__(DWORD1(v171), v171))
        {
          goto LABEL_238;
        }

        v176 = v176;
        if (v87 <= 1)
        {
LABEL_97:
          v180 = v536;
          if (v87)
          {
            v180 = v503;
            if (v532)
            {
              goto LABEL_237;
            }
          }

          goto LABEL_104;
        }
      }

      else
      {
        v176 = BYTE6(v99);
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

LABEL_102:
      if (v87 != 2)
      {
        if (v176)
        {
          break;
        }

        goto LABEL_73;
      }

      v182 = *(v94 + 16);
      v181 = *(v94 + 24);
      v179 = __OFSUB__(v181, v182);
      v180 = v181 - v182;
      if (v179)
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

LABEL_104:
      if (v176 != v180)
      {
        break;
      }

      if (v176 >= 1)
      {
        v554 = *&v147[2 * v170].isa;
        if (v172 > 1)
        {
          if (v172 != 2)
          {
            *(&v568 + 6) = 0;
            *&v568 = 0;
            sub_100017D5C(v171, v99);
            goto LABEL_123;
          }

          v183 = *(v171 + 16);
          v184 = *(v171 + 24);
          sub_100017D5C(v171, v99);
          v185 = __DataStorage._bytes.getter();
          if (v185)
          {
            v186 = __DataStorage._offset.getter();
            if (__OFSUB__(v183, v186))
            {
              goto LABEL_243;
            }

            v185 += v183 - v186;
          }

          if (__OFSUB__(v184, v183))
          {
            goto LABEL_242;
          }

          __DataStorage._length.getter();
          v94 = v500;
          sub_100771A28(v185, v500, v496, &v568);
          v187 = v568;
          v162 = v485;
        }

        else
        {
          if (!v172)
          {
            *&v568 = v171;
            WORD4(v568) = v99;
            BYTE10(v568) = BYTE2(v99);
            BYTE11(v568) = BYTE3(v99);
            BYTE12(v568) = BYTE4(v99);
            BYTE13(v568) = BYTE5(v99);
            sub_100017D5C(v171, v99);
            v147 = v535;
LABEL_123:
            sub_100771A28(&v568, v94, v496, &v567);
            v191 = v554;
            if ((v567 & 1) == 0)
            {
              goto LABEL_126;
            }

LABEL_124:
            sub_100016590(v191, v99);
            goto LABEL_73;
          }

          v188 = v171;
          if (v171 >> 32 < v171)
          {
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
          }

          sub_100017D5C(v171, v99);
          v189 = __DataStorage._bytes.getter();
          if (v189)
          {
            v190 = __DataStorage._offset.getter();
            if (__OFSUB__(v188, v190))
            {
              goto LABEL_244;
            }

            v189 += v188 - v190;
          }

          v162 = v485;
          __DataStorage._length.getter();
          v94 = v500;
          sub_100771A28(v189, v500, v496, &v568);
          v187 = v568;
        }

        v164 = v486;
        v147 = v535;
        v191 = v554;
        if ((v187 & 1) == 0)
        {
          goto LABEL_126;
        }

        goto LABEL_124;
      }

LABEL_73:
      v170 = (v170 + 1);
      if (v164 == v170)
      {
        goto LABEL_145;
      }
    }

    v192 = v147[2 * v170 + 1].isa;
    v554 = *&v147[2 * v170].isa;
    sub_100017D5C(v554, v192);
    v191 = v554;
LABEL_126:
    v554 = v191;
    v193 = v482;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v195 = v193;
    v566 = v193;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_101123CB8(0, v193[2] + 1, 1);
      v147 = v535;
      v195 = v566;
    }

    v197 = v195[2];
    v196 = v195[3];
    v99 = v197 + 1;
    v198 = v554;
    if (v197 >= v196 >> 1)
    {
      sub_101123CB8((v196 > 1), v197 + 1, 1);
      v198 = v554;
      v147 = v535;
      v195 = v566;
    }

    v165 = (v170 + 1);
    v195[2] = v99;
    v482 = v195;
    *&v195[2 * v197 + 4] = v198;
    v94 = v500;
    if (v479 != v170)
    {
      continue;
    }

    break;
  }

LABEL_145:

  v224 = sub_1011299C8(v482);

  *&v568 = &_swiftEmptySetSingleton;
  v225 = v564;

  sub_100B9802C(v224, v225, &v568);
  v532 = v160;

  v226 = v568 + 56;
  v227 = 1 << *(v568 + 32);
  v228 = -1;
  if (v227 < 64)
  {
    v228 = ~(-1 << v227);
  }

  v229 = v228 & *(v568 + 56);
  v230 = (v227 + 63) >> 6;
  *&v554 = v568;

  v231 = 0;
  *&v232 = 141558275;
  v535 = v232;
  while (1)
  {
    v234 = v557;
    if (!v229)
    {
      break;
    }

LABEL_155:
    v236 = v562;
    sub_100B98760(*(v554 + 48) + *(v559 + 9) * (__clz(__rbit64(v229)) | (v231 << 6)), v562, type metadata accessor for OwnedBeaconGroup);
    sub_100B98760(v236, v234, type metadata accessor for OwnedBeaconGroup);
    v237 = v234;
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v550 = swift_slowAlloc();
      *&v568 = v550;
      *v240 = v535;
      *(v240 + 4) = 1752392040;
      *(v240 + 12) = 2081;
      LODWORD(v536) = v239;
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v241 = dispatch thunk of CustomStringConvertible.description.getter();
      v242 = v237;
      v244 = v243;
      sub_100B986D4(v242, type metadata accessor for OwnedBeaconGroup);
      v245 = sub_1000136BC(v241, v244, &v568);
      v246 = v238;
      v247 = v245;
      v233 = v564;

      *(v240 + 14) = v247;
      _os_log_impl(&_mh_execute_header, v246, v536, "Clean up existing group %{private,mask.hash}s for other serial numbers", v240, 0x16u);
      sub_100007BAC(v550);
    }

    else
    {

      sub_100B986D4(v234, type metadata accessor for OwnedBeaconGroup);
      v233 = v564;
    }

    v229 &= v229 - 1;
    v163 = v562;
    v147 = v233;
    sub_100B92BA4(v562);
    sub_100B986D4(v163, type metadata accessor for OwnedBeaconGroup);
  }

  while (1)
  {
    v235 = v231 + 1;
    if (__OFADD__(v231, 1))
    {
      __break(1u);
      goto LABEL_224;
    }

    if (v235 >= v230)
    {
      break;
    }

    v229 = *(v226 + 8 * v235);
    ++v231;
    if (v229)
    {
      v231 = v235;
      goto LABEL_155;
    }
  }

  v248 = Logger.logObject.getter();
  v249 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v248, v249))
  {
    v250 = swift_slowAlloc();
    *v250 = 0;
    _os_log_impl(&_mh_execute_header, v248, v249, "Creating new OwnedBeaconGroup.", v250, 2u);
  }

  v251 = v561;
  v252 = *(v561 + 28);
  v253 = type metadata accessor for MACAddress();
  v254 = v508;
  (*(*(v253 - 8) + 16))(&v508[v252], v537, v253);
  UUID.init()();
  *v254 = xmmword_10138C660;
  *(v254 + 16) = v483;
  *(v254 + 24) = v484 & 1;
  *&v568 = _swiftEmptyDictionarySingleton;
  v255 = v532;
  sub_100B8A5CC(v551, &v568);
  *&v554 = v255;
  *(v254 + v251[8]) = 1;
  v256 = (v254 + v251[9]);
  v257 = v539;
  *v256 = v538;
  v256[1] = v257;
  *(v254 + v251[10]) = v568;

  LODWORD(v550) = 0;
  v210 = v560;
  v87 = v496;
LABEL_162:
  v265 = v502;
  v266 = v514;
  v562 = sub_100313A28(v502, v514);
  sub_100313B54(v265, v266);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v568))
  {
    v267 = 0;
  }

  else
  {
    v267 = v568;
  }

  v268 = v509[SLODWORD(v563[5].isa)];
  v269 = v497;
  if (v268 != 2)
  {
    if (v268)
    {
      goto LABEL_169;
    }

LABEL_167:
    v557 = v267;
    v270 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v271 = (v210 + v270[12]);
    v272 = (v210 + v270[16]);
    v273 = (v210 + v270[20]);
    v274 = (v210 + v270[24]);
    v275 = (v560 + v270[28]);
    v276 = *(v516 + 16);
    v277 = (v516 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v276(v560, v513, v515);
    v278 = v494;
    *v271 = v489;
    v271[1] = v278;
    *v272 = v492;
    v272[1] = v269;
    v279 = v493;
    *v273 = v488;
    v273[1] = v279;
    *v274 = v490;
    v274[1] = 0;
    v280 = v491;
    *v275 = v487;
    v275[1] = v280;
    v281 = v560;
LABEL_172:
    swift_storeEnumTagMultiPayload();
    v290 = v555;
    v291 = *(v555 + 20);

    v292 = v556;
    v539 = v291;
    UUID.init()();
    sub_100B98760(v281, v292 + v290[6], type metadata accessor for StableIdentifier);
    v293 = v290[7];
    v294 = &v508[*(v561 + 24)];
    v295 = v515;
    v549 = v276;
    v540 = v277;
    v276(v292 + v293, v294, v515);
    (*(v516 + 56))(v292 + v293, 0, 1, v295);
    sub_100A82D10(v292 + v290[8]);
    v296 = v541;
    v297 = v541[3];
    v573 = v541[4];
    v574 = v297;
    *v292 = xmmword_10138C660;
    v298 = v296[3];
    v575 = v296[2];
    isa_high = SHIDWORD(v563[6].isa);
    *(v292 + v290[9]) = v575;
    v300 = *v296;
    v301 = v296[1];
    *(v292 + v290[10]) = v298;
    *(v292 + v290[11]) = v296[4];
    v572 = v300;
    v302 = v296[1];
    *(v292 + v290[12]) = *v296;
    v303 = &v509[isa_high];
    v304 = *v303;
    v305 = *(v303 + 1);
    *(v292 + v290[13]) = v301;
    v306 = (v292 + v290[14]);
    *v306 = v304;
    v306[1] = v305;
    v307 = (v292 + v290[15]);
    v308 = v512;
    *v307 = v507;
    v307[1] = v308;
    *(v292 + v290[16]) = v562;
    *(v292 + v290[17]) = v557;
    *(v292 + v290[18]) = 3;
    *(v292 + v290[19]) = 0;
    *(v292 + v290[20]) = 0;
    v571 = v302;
    v309 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);
    if (v309)
    {
      v310 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
      sub_10012BFDC(&v575, &v568);
      sub_1000D2A70(&v574, &v568, &qword_1016977A8, &qword_1013D6820);
      sub_1000D2A70(&v573, &v568, &qword_1016977A8, &qword_1013D6820);
      sub_10012C038(&v572, &v568);
      sub_10012C094(&v571, &v568);

      v311 = v309;
      v312 = v553;
      v313 = v548;
      v314 = v544;
    }

    else
    {
      *&v568 = 0;
      *(&v568 + 1) = 0xE000000000000000;
      sub_10012BFDC(&v575, &v566);
      sub_1000D2A70(&v574, &v566, &qword_1016977A8, &qword_1013D6820);
      sub_1000D2A70(&v573, &v566, &qword_1016977A8, &qword_1013D6820);
      sub_10012C038(&v572, &v566);
      sub_10012C094(&v571, &v566);

      static String.Encoding.utf8.getter();
      v315 = String.init(data:encoding:)();
      v312 = v553;
      v313 = v548;
      if (!v316)
      {
        v315 = Data.hexString.getter();
      }

      v314 = v544;
      String.append(_:)(*&v315);

      v311 = *(&v568 + 1);
      v310 = v568;
    }

    v317 = *(v542 + 28);
    sub_100B98760(v509, v312 + v317, type metadata accessor for AccessoryProductInfo);
    (*(isa + 7))(v312 + v317, 0, 1, v563);
    *v312 = v310;
    *(v312 + 8) = v311;
    *(v312 + 16) = xmmword_1013DB390;
    *(v312 + 32) = 0xA400000000000000;

    v318 = dispatch_group_create();
    v319 = swift_allocBox();
    v321 = v320;
    (*(v314 + 56))(v320, 1, 1, v555);
    dispatch_group_enter(v318);
    v322 = v314;
    v323 = swift_allocObject();
    *(v323 + 16) = v318;
    *(v323 + 24) = v319;
    v324 = v318;
    v562 = v319;

    sub_100B093F8(v556, v312, sub_100B986CC, v323);

    v325 = v545;
    static DispatchTime.now()();
    v326 = v546;
    + infix(_:_:)();
    v328 = *(v313 + 8);
    v327 = v313 + 8;
    v329 = v547;
    (v328)(v325, v547);
    v563 = v324;
    OS_dispatch_group.wait(timeout:)();
    isa = v328;
    (v328)(v326, v329);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      sub_100016590(v500, v496);

      v330 = Logger.logObject.getter();
      v331 = static os_log_type_t.error.getter();
      v332 = os_log_type_enabled(v330, v331);
      v163 = v516;
      if (v332)
      {
        v333 = swift_slowAlloc();
        *v333 = 0;
        _os_log_impl(&_mh_execute_header, v330, v331, "Timed out creating new beacon record", v333, 2u);
      }

      sub_100139CA0();
      swift_allocError();
      *v334 = 13;
      swift_willThrow();
      sub_100006654(v502, v514);

      v335 = v500;
      v336 = v496;
      goto LABEL_183;
    }

    v337 = v327;
    swift_beginAccess();
    v338 = v534;
    sub_1000D2A70(v321, v534, &unk_1016A9A20, &qword_10138B280);
    v339 = (*(v322 + 48))(v338, 1, v555);
    v163 = v516;
    if (v339 == 1)
    {
      v340 = v500;
      v341 = v496;
      sub_100016590(v500, v496);

      sub_10000B3A8(v338, &unk_1016A9A20, &qword_10138B280);
      sub_100139CA0();
      swift_allocError();
      *v342 = 13;
      swift_willThrow();
      sub_100006654(v502, v514);

      v335 = v340;
      v336 = v341;
LABEL_183:
      sub_100016590(v335, v336);
      sub_100006654(v495, v511);
      sub_100B986D4(v553, type metadata accessor for PairingConfig);
      sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v560, type metadata accessor for StableIdentifier);
      sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
      (v163[1])(v513, v515);
      goto LABEL_184;
    }

    sub_100B987C8(v338, v499, type metadata accessor for OwnedBeaconRecord);
    v343 = swift_allocBox();
    v345 = v344;
    sub_100B98760(v508, v344, type metadata accessor for OwnedBeaconGroup);
    v346 = v500;
    if (v510[4] < 1)
    {
      sub_100016590(v500, v496);

      v364 = Logger.logObject.getter();
      v365 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v364, v365))
      {
        v366 = swift_slowAlloc();
        *v366 = 0;
        _os_log_impl(&_mh_execute_header, v364, v365, "Expected non-zero pairingEpoch", v366, 2u);
      }

      sub_100139CA0();
      swift_allocError();
      *v367 = 2;
      swift_willThrow();
      sub_100006654(v502, v514);

      sub_100016590(v500, v496);
      sub_100006654(v495, v511);
      sub_100B986D4(v499, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v553, type metadata accessor for PairingConfig);
      sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v560, type metadata accessor for StableIdentifier);
      sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
      (v163[1])(v513, v515);

      goto LABEL_184;
    }

    v347 = v531;
    v348 = v496;
    sub_1005CABBC(v500, v496, v551, v531);
    if ((*(v530 + 48))(v347, 1, v533) == 1)
    {
      sub_100016590(v346, v348);

      sub_10000B3A8(v347, &qword_101696E28, &qword_1013EAD80);
LABEL_189:
      v349 = Logger.logObject.getter();
      v350 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v349, v350))
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        v567 = v352;
        *v351 = 136315138;
        v353 = v508;
        swift_beginAccess();
        v354 = sub_10051F7B0();
        v356 = sub_1000136BC(v354, v355, &v567);

        *(v351 + 4) = v356;
        _os_log_impl(&_mh_execute_header, v349, v350, "Unable to pair new beacon with its group %s", v351, 0xCu);
        sub_100007BAC(v352);
      }

      else
      {

        v353 = v508;
      }

      v371 = v499;
      sub_100139CA0();
      swift_allocError();
      *v372 = 2;
      swift_willThrow();
      sub_100006654(v502, v514);

      sub_100016590(v500, v496);
      sub_100006654(v495, v511);
      sub_100B986D4(v371, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v553, type metadata accessor for PairingConfig);
      sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v560, type metadata accessor for StableIdentifier);
      sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
      (v163[1])(v513, v515);

      sub_100B986D4(v353, type metadata accessor for OwnedBeaconGroup);
      return;
    }

    v551 = v345;
    sub_100B987C8(v347, v505, type metadata accessor for MultipartAccessoryPairingInfo);
    v368 = v510[2];
    v231 = v510[3];
    v543 = v510[4];
    v369 = *(v510 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair);
    v544 = v368;
    sub_100017D5C(v368, v231);
    v557 = v343;
    if (v369 == 1)
    {
      v370 = v231;
      v548 = v337;
      sub_100016590(v346, v496);
    }

    else
    {
      v373 = v525;
      v374 = v496;
      sub_100519BCC(v346, v496, v525);
      if (v506(v373, 1, v515) != 1)
      {

        sub_10000B3A8(v373, &qword_1016980D0, &unk_10138F3B0);
        sub_100017D5C(v346, v374);
        v147 = Logger.logObject.getter();
        v230 = v374;
        v444 = static os_log_type_t.error.getter();
        sub_100016590(v346, v230);
        v226 = v346;
        if (os_log_type_enabled(v147, v444))
        {
          v445 = v231;
          v446 = swift_slowAlloc();
          v447 = swift_slowAlloc();
          v566 = v447;
          *v446 = 141558275;
          *(v446 + 4) = 1752392040;
          *(v446 + 12) = 2081;
          static String.Encoding.utf8.getter();
          v448 = String.init(data:encoding:)();
          if (v449)
          {
            v450 = v448;
            v451 = v449;
            v452 = v500;
            v453 = v496;
          }

          else
          {
            v475 = v500;
            v476 = v496;
            v450 = Data.hexString.getter();
            v451 = v477;
            v452 = v475;
            v453 = v476;
          }

          sub_100016590(v452, v453);
          v478 = sub_1000136BC(v450, v451, &v566);

          *(v446 + 14) = v478;
          _os_log_impl(&_mh_execute_header, v147, v444, "%{private,mask.hash}s is already paired!", v446, 0x16u);
          sub_100007BAC(v447);

          sub_100016590(v544, v445);
          sub_100B986D4(v505, type metadata accessor for MultipartAccessoryPairingInfo);
          v163 = v516;
        }

        else
        {
LABEL_224:
          sub_100016590(v226, v230);

          sub_100016590(v544, v231);
          sub_100B986D4(v505, type metadata accessor for MultipartAccessoryPairingInfo);
        }

        goto LABEL_189;
      }

      v370 = v231;
      v548 = v337;
      sub_100016590(v346, v374);
      sub_10000B3A8(v373, &qword_1016980D0, &unk_10138F3B0);
    }

    v375 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v376 = v375[12];
    v377 = v528;
    v378 = &v528[v375[16]];
    v379 = &v528[v375[20]];
    v380 = &v528[v375[24]];
    v549(v528, v556 + v539, v515);
    v381 = v533;
    v382 = v505;
    sub_1000D2A70(&v505[*(v533 + 24)], v377 + v376, &qword_1016A40D0, &unk_10138BE70);
    *v378 = v544;
    *(v378 + 1) = v370;
    *v379 = v543;
    v379[8] = 0;
    v383 = v382[*(v381 + 28)];
    *v380 = *v382;
    v380[2] = v383;
    v384 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v384 - 8) + 56))(v377, 0, 1, v384);
    v385 = v561;
    v386 = v500;
    v387 = v496;
    sub_100017D5C(v500, v496);
    v388 = v551;
    sub_1001DD6C0(v377, v386, v387);
    v389 = swift_allocBox();
    v390 = *(v559 + 7);
    v544 = v391;
    v390(v391, 1, 1, v385);
    v392 = v563;
    dispatch_group_enter(v563);
    v552 = v389;
    if (v550)
    {
      v393 = v529;
      sub_100B98760(v508, v529, type metadata accessor for OwnedBeaconGroup);
      v394 = swift_allocObject();
      *(v394 + 16) = v392;
      *(v394 + 24) = v389;
      v551 = v394;
      v395 = v392;
      v396 = v557;

      v397 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v398 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v399 = swift_allocObject();
      *(v399 + 16) = xmmword_101385D80;
      *(v399 + 56) = &type metadata for String;
      *(v399 + 64) = sub_100008C00();
      *(v399 + 32) = 0x65736C6166;
      *(v399 + 40) = 0xE500000000000000;
      os_log(_:dso:log:_:_:)(v397, &_mh_execute_header, v398, "Modify record. Disk First? (%@)", 31, 2, v399);

      v400 = objc_autoreleasePoolPush();
      v401 = v554;
      sub_1011218E0(v393);
      if (v401)
      {
        objc_autoreleasePoolPop(v400);
        __break(1u);
        return;
      }

      v403 = v402;

      objc_autoreleasePoolPop(v400);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      *&v554 = 0;
      v550 = type metadata accessor for OwnedBeaconGroup;
      v404 = v393;
      v405 = v526;
      sub_100B98760(v404, v526, type metadata accessor for OwnedBeaconGroup);
      v406 = *(v559 + 80);
      v407 = swift_allocObject();
      *(v407 + 16) = sub_100B98734;
      *(v407 + 24) = v396;
      v559 = type metadata accessor for OwnedBeaconGroup;
      sub_100B987C8(v405, v407 + ((v406 + 32) & ~v406), type metadata accessor for OwnedBeaconGroup);

      sub_100FDCA40(v403, sub_100B98758, v407);

      v408 = swift_allocObject();
      v543 = v403;
      v409 = v551;
      *(v408 + 16) = sub_100B98750;
      *(v408 + 24) = v409;

      Future.addFailure(block:)();

      sub_100B98760(v529, v405, v550);
      v410 = (v406 + 16) & ~v406;
      v411 = (v36 + v410 + 7) & 0xFFFFFFFFFFFFFFF8;
      v412 = swift_allocObject();
      v413 = v405;
      v414 = v529;
      sub_100B987C8(v413, v412 + v410, v559);
      *(v412 + v411) = v564;
      v415 = (v412 + ((v411 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v415 = sub_100B98750;
      v415[1] = v409;

      Future.addSuccess(block:)();

      v416 = v516;
      v417 = v560;
    }

    else
    {

      v414 = v526;
      sub_100B98760(v388, v526, type metadata accessor for OwnedBeaconGroup);
      v418 = v392;

      sub_100B0BDCC(v414, 0, v564, v418, v389);

      v416 = v516;
      v417 = v560;
    }

    v419 = v549;

    sub_100B986D4(v414, type metadata accessor for OwnedBeaconGroup);
    v420 = v545;
    static DispatchTime.now()();
    v421 = v546;
    + infix(_:_:)();
    v422 = v420;
    v423 = v547;
    v424 = isa;
    (isa)(v422, v547);
    OS_dispatch_group.wait(timeout:)();
    v424(v421, v423);
    v425 = static DispatchTimeoutResult.== infix(_:_:)();
    v426 = v499;
    if (v425)
    {
      v427 = Logger.logObject.getter();
      v428 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v427, v428))
      {
        v429 = swift_slowAlloc();
        *v429 = 0;
        _os_log_impl(&_mh_execute_header, v427, v428, "Timed out saving beacon group", v429, 2u);
      }

      sub_100139CA0();
      swift_allocError();
      *v430 = 13;
      swift_willThrow();
      sub_100006654(v502, v514);

      sub_100016590(v500, v496);
      sub_100006654(v495, v511);
      sub_100B986D4(v505, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_100B986D4(v426, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v553, type metadata accessor for PairingConfig);
      sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
      sub_100B986D4(v417, type metadata accessor for StableIdentifier);
      sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
      (*(v416 + 8))(v513, v515);
    }

    else
    {
      v431 = v544;
      swift_beginAccess();
      v432 = v431;
      v433 = v524;
      sub_1000D2A70(v432, v524, &unk_1016AF8B0, &unk_1013A0700);
      v434 = v561;
      if (v480(v433, 1, v561) == 1)
      {
        sub_10000B3A8(v433, &unk_1016AF8B0, &unk_1013A0700);
        v435 = v517;
        sub_100B98760(v426, v517, type metadata accessor for OwnedBeaconRecord);
        v436 = Logger.logObject.getter();
        v437 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v436, v437))
        {
          v438 = swift_slowAlloc();
          v439 = swift_slowAlloc();
          v567 = v439;
          *v438 = 141558275;
          *(v438 + 4) = 1752392040;
          *(v438 + 12) = 2081;
          sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v440 = dispatch thunk of CustomStringConvertible.description.getter();
          v442 = v441;
          sub_100B986D4(v435, type metadata accessor for OwnedBeaconRecord);
          v443 = sub_1000136BC(v440, v442, &v567);

          *(v438 + 14) = v443;
          _os_log_impl(&_mh_execute_header, v436, v437, "Failed to create/modify beacon group. Unpairing beacon: %{private,mask.hash}s", v438, 0x16u);
          sub_100007BAC(v439);
        }

        else
        {

          sub_100B986D4(v435, type metadata accessor for OwnedBeaconRecord);
        }

        v461 = v499;
        v462 = sub_100DDE55C(v499, 0, 0);
        if (v462)
        {
          v463 = v462;
          sub_100B98760(v461, v523, type metadata accessor for OwnedBeaconRecord);
          swift_errorRetain();
          v99 = Logger.logObject.getter();
          v464 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v99, v464))
          {
            v465 = swift_slowAlloc();
            v567 = swift_slowAlloc();
            *v465 = 141558531;
            *(v465 + 4) = 1752392040;
            *(v465 + 12) = 2081;
            sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v466 = v523;
            v467 = dispatch thunk of CustomStringConvertible.description.getter();
            v469 = v468;
            sub_100B986D4(v466, type metadata accessor for OwnedBeaconRecord);
            v470 = sub_1000136BC(v467, v469, &v567);

            *(v465 + 14) = v470;
            *(v465 + 22) = 2082;
            v565 = v463;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v471 = String.init<A>(describing:)();
            v473 = sub_1000136BC(v471, v472, &v567);

            *(v465 + 24) = v473;
            _os_log_impl(&_mh_execute_header, v99, v464, "Unable to clean up orphaned beacon record %{private,mask.hash}s.\nError %{public}s", v465, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
LABEL_230:

            sub_100B986D4(v523, type metadata accessor for OwnedBeaconRecord);
          }

          v461 = v499;
        }

        sub_100139CA0();
        swift_allocError();
        *v474 = 14;
        swift_willThrow();
        sub_100006654(v502, v514);

        sub_100016590(v500, v496);
        sub_100006654(v495, v511);
        sub_100B986D4(v505, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_100B986D4(v461, type metadata accessor for OwnedBeaconRecord);
        sub_100B986D4(v553, type metadata accessor for PairingConfig);
        sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
        sub_100B986D4(v560, type metadata accessor for StableIdentifier);
        sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
        (*(v516 + 8))(v513, v515);
      }

      else
      {
        v454 = v518;
        sub_100B987C8(v433, v518, type metadata accessor for OwnedBeaconGroup);
        v455 = v521;
        v419(v521, v454 + *(v434 + 24), v515);
        v456 = v519;
        static Date.trustedNow.getter(v455 + *(v519 + 20));
        *(v455 + *(v456 + 24)) = 37;
        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v457 = qword_10177B2E8;
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v458 = (*(v520 + 80) + 32) & ~*(v520 + 80);
        v459 = swift_allocObject();
        *(v459 + 16) = xmmword_101385D80;
        sub_100B98760(v455, v459 + v458, type metadata accessor for BeaconObservation);
        v460 = type metadata accessor for Transaction();
        __chkstk_darwin(v460);
        *(&v479 - 4) = v457;
        *(&v479 - 3) = v459;
        *(&v479 - 2) = 0;
        *(&v479 - 1) = 0;
        static Transaction.named<A>(_:with:)();
        sub_100006654(v502, v514);

        sub_100016590(v500, v496);
        sub_100006654(v495, v511);
        sub_100B986D4(v455, type metadata accessor for BeaconObservation);
        sub_100B986D4(v505, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_100B986D4(v553, type metadata accessor for PairingConfig);
        sub_100B986D4(v556, type metadata accessor for OwnedBeaconRecord);
        sub_100B986D4(v417, type metadata accessor for StableIdentifier);
        sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
        (*(v516 + 8))(v513, v515);
        sub_100B987C8(v426, v522, type metadata accessor for OwnedBeaconRecord);
        sub_100B987C8(v454, v504, type metadata accessor for OwnedBeaconGroup);
      }
    }

LABEL_184:

    goto LABEL_194;
  }

  if (!sub_100DE68F4(v265, v266))
  {
    goto LABEL_167;
  }

LABEL_169:

  v282 = v494;
  if (v494 && v269)
  {
    v557 = v267;
    v283 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v284 = (v210 + v283[12]);
    v285 = (v210 + v283[16]);
    v286 = (v210 + v283[20]);
    v497 = v269;
    v281 = v210;
    v287 = v283[24];
    v276 = *(v516 + 16);
    v277 = (v516 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v276(v281, v513, v515);
    *v284 = v489;
    v284[1] = v282;
    v288 = v497;
    *v285 = v492;
    v285[1] = v288;
    v289 = v493;
    *v286 = v488;
    v286[1] = v289;
    *(v281 + v287) = v490;
    goto LABEL_172;
  }

  v357 = v500;
  sub_100016590(v500, v87);

  v358 = Logger.logObject.getter();
  v359 = static os_log_type_t.error.getter();
  v360 = os_log_type_enabled(v358, v359);
  v361 = v514;
  if (v360)
  {
    v362 = swift_slowAlloc();
    *v362 = 0;
    _os_log_impl(&_mh_execute_header, v358, v359, "generateOwnedBeaconRecord: ECID and ChipID are required for HELE accessory", v362, 2u);
    v357 = v500;
  }

  sub_100139CA0();
  swift_allocError();
  *v363 = 5;
  swift_willThrow();
  sub_100006654(v502, v361);
  sub_100016590(v357, v87);
  sub_100006654(v495, v511);
  sub_100B986D4(v509, type metadata accessor for AccessoryProductInfo);
  (*(v516 + 8))(v513, v515);
LABEL_194:
  sub_100B986D4(v508, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100B90BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[19] = a7;
  v8[20] = v7;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  v9 = type metadata accessor for StandaloneBeacon(0);
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v8[23] = *(v10 + 64);
  v8[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = type metadata accessor for Connection.TransactionMode();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[31] = v12;
  v13 = *(v12 - 8);
  v8[32] = v13;
  v8[33] = *(v13 + 64);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v8[36] = v14;
  v8[37] = *(v14 - 8);
  v8[38] = swift_task_alloc();
  v15 = type metadata accessor for Table();
  v8[39] = v15;
  v8[40] = *(v15 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v8[43] = swift_task_alloc();

  return _swift_task_switch(sub_100B90EC8, 0, 0);
}

uint64_t sub_100B90EC8()
{
  v1 = v0[15];
  v2 = *(v1 + 104);
  v0[44] = v2;
  v3 = *(v1 + 112);
  v0[45] = v3;
  if (v3 >> 60 != 15)
  {
    v4 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v5 = *v4;
    v0[46] = *v4;
    v6 = v4[1];
    v0[47] = v6;
    if (v6 >> 60 != 15)
    {
      sub_10002E98C(v2, v3);
      sub_10002E98C(v5, v6);
      static String.Encoding.utf8.getter();
      v7 = String.init(data:encoding:)();
      v0[48] = v7;
      v0[49] = v8;
      if (v8)
      {
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          v10 = swift_task_alloc();
          v0[50] = v10;
          *v10 = v0;
          v10[1] = sub_100B911CC;

          return daemon.getter();
        }
      }

      sub_100006654(v5, v6);
      sub_100006654(v2, v3);
    }
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "generateStandaloneBeacon: could not get basic device info from the session.", v14, 2u);
  }

  sub_100139CA0();
  swift_allocError();
  *v15 = 5;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_100B911CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 408) = a1;

  v3 = swift_task_alloc();
  *(v2 + 416) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_1000196A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000196A8(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100B913A8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B913A8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  if (v1)
  {
    v5 = sub_100B92A7C;
    v6 = 0;
  }

  else
  {

    v5 = sub_100B914E0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100B914E0()
{
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v9, qword_10177B458);
  v0[11] = v1;
  v0[12] = v2;

  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  v10 = *(v7 + 8);
  v0[55] = v10;
  v0[56] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v11 = sub_1000280DC(v0 + 2);
  (*(v5 + 16))(v11, v3, v4);
  if (!sub_1002182F4())
  {
    v20 = v0[42];
    v21 = v0[39];
    v22 = v0[40];
    sub_10020223C();
    v19 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    (*(v22 + 8))(v20, v21);
    goto LABEL_7;
  }

  v12 = v0[54];
  Connection.prepare(_:)();
  v0[57] = v12;
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[40];
  v18 = *(v15 + 8);
  v16 = v15 + 8;
  v17 = v18;
  if (v12)
  {
    v19 = v12;
    v17(v0[42], v14);

LABEL_7:
    v0[61] = v19;
    sub_100007BAC(v0 + 2);

    v24 = sub_100B91B90;
    goto LABEL_9;
  }

  v0[58] = v17;
  v0[59] = v16 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);

  sub_100007BAC(v0 + 2);

  v0[60] = sub_100B37A58(v25, sub_100F86728, 0);

  v24 = sub_100B917C0;
LABEL_9:

  return _swift_task_switch(v24, 0, 0);
}

uint64_t sub_100B917C0()
{
  v49 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 480);
  if (v4)
  {
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 134218499;
    *(v8 + 4) = *(v5 + 16);

    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;

    v10 = sub_1000136BC(v7, v6, &v48);

    *(v8 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Removing %ld existing beacons matching %{private,mask.hash}s", v8, 0x20u);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v13 = *(v0 + 480);
  v14 = *(v13 + 2);
  *(v0 + 496) = v14;
  if (v14)
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 176);
    *(v0 + 568) = enum case for Connection.TransactionMode.deferred(_:);
    *(v0 + 504) = *(v0 + 456);
    *(v0 + 512) = 0;
    if (!*(v13 + 2))
    {
      __break(1u);
      return _swift_task_switch(v13, v11, v12);
    }

    v17 = *(v0 + 424);
    v18 = *(v0 + 280);
    v19 = *(v0 + 248);
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = *(v15 + 16);
    *(v0 + 520) = v21;
    *(v0 + 528) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v18, v13 + v20, v19);
    v13 = sub_100B91CAC;
    v11 = v17;
  }

  else
  {
    *(v0 + 552) = *(v0 + 456);
    v47 = *(v0 + 424);
    v43 = *(v0 + 392);
    v44 = *(v0 + 360);
    v41 = *(v0 + 384);
    v42 = *(v0 + 352);
    v22 = *(v0 + 168);
    v45 = *(v0 + 144);
    v46 = *(v0 + 152);
    v39 = *(v0 + 136);
    v36 = *(v0 + 128);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);

    v25 = v23[3];
    v40 = v23[2];
    v26 = *v23;
    v27 = v23[1];
    v37 = v23[5];
    v38 = v23[4];
    sub_100017D5C(v40, v25);
    sub_100017D5C(v26, v27);
    sub_100017D5C(v38, v37);
    UUID.init()();
    v28 = v22[5];
    v29 = type metadata accessor for MACAddress();
    v30 = *(*(v29 - 8) + 16);
    v30(v24 + v28, v36, v29);
    v30(v24 + v22[6], v39, v29);
    sub_100A82D10(v24 + v22[8]);
    v31 = (v24 + v22[7]);
    *v31 = v41;
    v31[1] = v43;
    v32 = (v24 + v22[9]);
    *v32 = v42;
    v32[1] = v44;
    v33 = (v24 + v22[10]);
    *v33 = v40;
    v33[1] = v25;
    v33[2] = v26;
    v33[3] = v27;
    v33[4] = v38;
    v33[5] = v37;
    v34 = (v24 + v22[11]);
    *v34 = v45;
    v34[1] = v46;
    sub_100017D5C(v45, v46);
    v13 = sub_100B92668;
    v11 = v47;
  }

  v12 = 0;

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_100B91B90()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];

  sub_100006654(v1, v2);
  sub_100006654(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100B91CAC()
{
  v1 = *(*(*(v0 + 424) + 128) + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1 || (v3 = sub_1000196A8(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478), v4 = *(v3 + 16), v5 = type metadata accessor for StandaloneBeaconDatabase(0), (v6 = v4(v5, v3)) == 0))
  {
    v15 = (v0 + 280);
    v22 = *(v0 + 256);

    v21 = (v22 + 8);

    sub_10020223C();
    v14 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    v16 = (v0 + 248);
    goto LABEL_8;
  }

  v63 = *(v6 + 24);

  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 504);
  v57 = *(v0 + 568);
  v53 = *(v0 + 440);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 288);
  v10 = *(v0 + 240);
  v11 = *(v0 + 232);
  v56 = *(v0 + 224);
  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177B410);
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v53(v8, v9);
  v13 = swift_task_alloc();
  *(v13 + 16) = v63;
  *(v13 + 24) = v7;
  (*(v11 + 104))(v10, v57, v56);
  Connection.transaction(_:block:)();
  *(v0 + 536) = v60;
  if (v60)
  {
    v14 = v60;
    v15 = (v0 + 328);
    v16 = (v0 + 312);
    v17 = *(v0 + 256);
    v58 = *(v0 + 248);
    v61 = *(v0 + 280);
    v18 = *(v0 + 232);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v61, v58);

    v21 = (v0 + 464);
LABEL_8:
    v24 = *v15;
    v25 = *v16;
    v26 = *v21;
    *(v0 + 544) = v14;
    v26(v24, v25);
    v27 = sub_100B92550;
    goto LABEL_9;
  }

  v55 = *(v0 + 520);
  v28 = *(v0 + 464);
  v29 = *(v0 + 328);
  v30 = *(v0 + 312);
  v51 = *(v0 + 272);
  v31 = *(v0 + 256);
  v59 = *(v0 + 424);
  v32 = *(v0 + 240);
  v50 = *(v0 + 248);
  v34 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 216);
  v52 = v35;
  v54 = *(v0 + 280);
  v62 = *(v0 + 208);

  (*(v33 + 8))(v32, v34);

  v28(v29, v30);
  v36 = type metadata accessor for TaskPriority();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v35, 1, 1, v36);
  v55(v51, v54, v50);
  v38 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService, &unk_1013E32B8);
  v39 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v59;
  *(v40 + 3) = v38;
  *(v40 + 4) = v59;
  (*(v31 + 32))(&v40[v39], v51, v50);
  sub_1000D2A70(v52, v62, &qword_101698C00, &qword_10138B570);
  LODWORD(v38) = (*(v37 + 48))(v62, 1, v36);
  swift_retain_n();

  v41 = *(v0 + 208);
  if (v38 == 1)
  {
    sub_10000B3A8(*(v0 + 208), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v37 + 8))(v41, v36);
  }

  v42 = *(v40 + 2);
  swift_unknownObjectRetain();

  if (v42)
  {
    swift_getObjectType();
    v43 = dispatch thunk of Actor.unownedExecutor.getter();
    v45 = v44;
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  sub_10000B3A8(*(v0 + 216), &qword_101698C00, &qword_10138B570);
  if (v45 | v43)
  {
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v43;
    *(v0 + 80) = v45;
  }

  v46 = *(v0 + 280);
  v47 = *(v0 + 248);
  v48 = *(v0 + 256);
  swift_task_create();

  (*(v48 + 8))(v46, v47);
  v27 = sub_100B922F8;
LABEL_9:

  return _swift_task_switch(v27, 0, 0);
}

uint64_t sub_100B922F8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[64] + 1;
  v5 = v3[67];
  if (v4 == v3[62])
  {
    v3[69] = v5;
    v38 = v3[53];
    v34 = v3[49];
    v35 = v3[45];
    v32 = v3[48];
    v33 = v3[44];
    v6 = v3[21];
    v36 = v3[18];
    v37 = v3[19];
    v30 = v3[17];
    v27 = v3[16];
    v8 = v3[13];
    v7 = v3[14];

    v9 = v7[3];
    v31 = v7[2];
    v10 = *v7;
    v11 = v7[1];
    v28 = v7[5];
    v29 = v7[4];
    sub_100017D5C(v31, v9);
    sub_100017D5C(v10, v11);
    sub_100017D5C(v29, v28);
    UUID.init()();
    v12 = v6[5];
    v13 = type metadata accessor for MACAddress();
    v14 = *(*(v13 - 8) + 16);
    v14(v8 + v12, v27, v13);
    v14(v8 + v6[6], v30, v13);
    sub_100A82D10(v8 + v6[8]);
    v15 = (v8 + v6[7]);
    *v15 = v32;
    v15[1] = v34;
    v16 = (v8 + v6[9]);
    *v16 = v33;
    v16[1] = v35;
    v17 = (v8 + v6[10]);
    *v17 = v31;
    v17[1] = v9;
    v17[2] = v10;
    v17[3] = v11;
    v17[4] = v29;
    v17[5] = v28;
    v18 = (v8 + v6[11]);
    *v18 = v36;
    v18[1] = v37;
    sub_100017D5C(v36, v37);
    a1 = sub_100B92668;
    a2 = v38;
  }

  else
  {
    v3[63] = v5;
    v3[64] = v4;
    v19 = v3[60];
    if (v4 >= *(v19 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v20 = v3[53];
    v21 = v3[35];
    v22 = v3[31];
    v23 = v3[32];
    v24 = v19 + ((*(v3[22] + 80) + 32) & ~*(v3[22] + 80)) + *(v3[22] + 72) * v4;
    v25 = *(v23 + 16);
    v3[65] = v25;
    v3[66] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v24, v22);
    a1 = sub_100B91CAC;
    a2 = v20;
  }

  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100B92550()
{
  v2 = v0[46];
  v1 = v0[47];
  sub_100006654(v0[44], v0[45]);
  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B92668()
{
  v1 = v0[69];
  sub_100F85058(v0[13], *(v0[53] + 128));
  v0[70] = v1;
  if (v1)
  {
    v2 = sub_100B92954;
  }

  else
  {
    v3 = v0[53];
    v5 = v0[24];
    v4 = v0[25];
    v6 = v0[22];
    v7 = v0[13];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_100B98760(v7, v5, type metadata accessor for StandaloneBeacon);
    v9 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService, &unk_1013E32B8);
    v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v9;
    v11[4] = v3;
    sub_100B987C8(v5, v11 + v10, type metadata accessor for StandaloneBeacon);
    swift_retain_n();
    sub_100A838D4(0, 0, v4, &unk_1013DB3B0, v11);

    v2 = sub_100B92838;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B92838()
{
  v2 = v0[46];
  v1 = v0[47];
  sub_100B040D4();
  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B92954()
{
  v1 = v0[13];
  sub_100006654(v0[46], v0[47]);

  sub_100B986D4(v1, type metadata accessor for StandaloneBeacon);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B92A7C()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100B92BA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v4 - 8);
  v105 = (&v98 - v5);
  v127 = type metadata accessor for SystemInfo.DeviceLockState();
  v129 = *(v127 - 8);
  v6 = __chkstk_darwin(v127);
  v126 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v98 - v8;
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v124 = &v98 - v10;
  v123 = type metadata accessor for OwnedBeaconRecord(0);
  v109 = *(v123 - 8);
  v11 = __chkstk_darwin(v123);
  v99 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v98 - v13;
  v15 = type metadata accessor for UUID();
  v130 = *(v15 - 8);
  __chkstk_darwin(v15);
  v131 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v102 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v100 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v103 = &v98 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v98 - v23;
  __chkstk_darwin(v22);
  v26 = &v98 - v25;
  if (qword_1016950D0 != -1)
  {
LABEL_44:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177C418);
  sub_100B98760(a1, v26, type metadata accessor for OwnedBeaconGroup);
  v101 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v107 = v24;
  v111 = v2;
  v106 = v17;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = v15;
    v34 = swift_slowAlloc();
    v133 = v34;
    *v32 = 136315138;
    v35 = sub_10051F7B0();
    v37 = v36;
    sub_100B986D4(v26, type metadata accessor for OwnedBeaconGroup);
    v38 = sub_1000136BC(v35, v37, &v133);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Clean up existing beacon group %s", v32, 0xCu);
    sub_100007BAC(v34);
    v15 = v33;
  }

  else
  {

    sub_100B986D4(v26, type metadata accessor for OwnedBeaconGroup);
  }

  v104 = a1;
  sub_100519FB0();
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  a1 = v42 & *(v39 + 56);
  v26 = ((v41 + 63) >> 6);
  v120 = v130 + 16;
  v119 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v117 = (v129 + 8);
  v118 = (v129 + 104);
  v110 = (v109 + 56);
  v114 = (v109 + 48);
  v115 = (v130 + 8);
  v129 = v39;

  v113 = 0;
  v2 = &_mh_execute_header;
  v112 = xmmword_101385D80;
  v108 = _swiftEmptyArrayStorage;
  v24 = v131;
  v128 = v15;
  v121 = v26;
  v122 = v40;
  v116 = v14;
  v43 = 0;
  if (a1)
  {
    while (1)
    {
      v17 = v43;
LABEL_12:
      (*(v130 + 16))(v24, *(v129 + 48) + *(v130 + 72) * (__clz(__rbit64(a1)) | (v17 << 6)), v15);
      v44 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v45 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v46 = swift_allocObject();
      *(v46 + 16) = v112;
      v47 = UUID.uuidString.getter();
      v49 = v48;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_100008C00();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "ownedBeaconRecord(for uuid: %@)", 31, 2, v46);

      v50 = v125;
      static SystemInfo.lockState.getter();
      v52 = v126;
      v51 = v127;
      (*v118)(v126, v119, v127);
      sub_1000196A8(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *v117;
      (*v117)(v52, v51);
      v53(v50, v51);
      if (v47)
      {
        v54 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v45, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
        v55 = v123;
        v56 = v124;
        (*v110)(v124, 1, 1, v123);
        v15 = v128;
        v24 = v131;
      }

      else
      {
        v57 = sub_100025044();
        __chkstk_darwin(v57);
        v58 = v131;
        *(&v98 - 2) = v131;
        v56 = v124;
        v59 = v113;
        sub_1012BBBD0(sub_100406F84, v57, v124);
        v113 = v59;

        v15 = v128;
        v55 = v123;
        v24 = v58;
      }

      a1 &= a1 - 1;
      (*v115)(v24, v15);
      v60 = (*v114)(v56, 1, v55);
      v14 = v116;
      if (v60 == 1)
      {
        sub_10000B3A8(v56, &unk_1016A9A20, &qword_10138B280);
        v43 = v17;
        v26 = v121;
        v40 = v122;
        if (!a1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_100B987C8(v56, v99, type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_100A5C050(0, v108[2] + 1, 1, v108);
        }

        v26 = v121;
        v62 = v108[2];
        v61 = v108[3];
        if (v62 >= v61 >> 1)
        {
          v108 = sub_100A5C050((v61 > 1), v62 + 1, 1, v108);
        }

        v63 = v108;
        v108[2] = v62 + 1;
        sub_100B987C8(v99, v63 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v62, type metadata accessor for OwnedBeaconRecord);
        v40 = v122;
        v43 = v17;
        if (!a1)
        {
          goto LABEL_9;
        }
      }
    }
  }

  while (1)
  {
LABEL_9:
    v17 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v17 >= v26)
    {
      break;
    }

    a1 = *(v40 + 8 * v17);
    ++v43;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  v64 = v108[2];
  if (v64)
  {
    v65 = v108 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v66 = *(v109 + 72);
    v67 = v107;
    v68 = v106;
    do
    {
      sub_100B98760(v65, v14, type metadata accessor for OwnedBeaconRecord);
      sub_100DDE55C(v14, 1, 0);

      sub_100B986D4(v14, type metadata accessor for OwnedBeaconRecord);
      v65 += v66;
      --v64;
    }

    while (v64);
  }

  else
  {

    v67 = v107;
    v68 = v106;
  }

  v69 = v105;
  sub_100AC53EC(v104 + *(v68 + 24), v105);
  v70 = (*(v102 + 48))(v69, 1, v68);
  v71 = v103;
  if (v70 == 1)
  {
    return sub_10000B3A8(v69, &unk_1016AF8B0, &unk_1013A0700);
  }

  sub_100B987C8(v69, v67, type metadata accessor for OwnedBeaconGroup);
  sub_100B98760(v67, v71, type metadata accessor for OwnedBeaconGroup);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v133 = v76;
    *v75 = 141558275;
    *(v75 + 4) = 1752392040;
    *(v75 + 12) = 2081;
    sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v71;
    v80 = v79;
    sub_100B986D4(v78, type metadata accessor for OwnedBeaconGroup);
    v81 = sub_1000136BC(v77, v80, &v133);

    *(v75 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v73, v74, "Group %{private,mask.hash}s still exists. Need to clean up", v75, 0x16u);
    sub_100007BAC(v76);
  }

  else
  {

    sub_100B986D4(v71, type metadata accessor for OwnedBeaconGroup);
  }

  v82 = sub_100B93B5C(v67);
  if (v82)
  {
    v83 = v82;
    v84 = v100;
    sub_100B98760(v67, v100, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v87 = 141558531;
      *(v87 + 4) = 1752392040;
      *(v87 + 12) = 2081;
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v84;
      v90 = v88;
      v92 = v91;
      sub_100B986D4(v89, type metadata accessor for OwnedBeaconGroup);
      v93 = sub_1000136BC(v90, v92, &v133);

      *(v87 + 14) = v93;
      *(v87 + 22) = 2082;
      v132 = v83;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v94 = String.init<A>(describing:)();
      v96 = sub_1000136BC(v94, v95, &v133);

      *(v87 + 24) = v96;
      _os_log_impl(&_mh_execute_header, v85, v86, "Unable to remove %{private,mask.hash}s due to %{public}s)", v87, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100B986D4(v84, type metadata accessor for OwnedBeaconGroup);
    }

    v97 = v67;
  }

  else
  {
    v97 = v67;
  }

  return sub_100B986D4(v97, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100B93B5C(uint64_t a1)
{
  v31 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = __chkstk_darwin(v31);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v32 = &v30 - v5;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);

  v15 = v14;
  sub_100B081DC(a1, v1, v13, v15);

  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  OS_dispatch_group.wait(timeout:)();
  v16(v12, v6);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    v18 = v32;
    sub_100B98760(a1, v32, type metadata accessor for OwnedBeaconGroup);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33[0] = v22;
      *v21 = 136315138;
      sub_100B98760(v18, v30, type metadata accessor for OwnedBeaconGroup);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_100B986D4(v18, type metadata accessor for OwnedBeaconGroup);
      v26 = sub_1000136BC(v23, v25, v33);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Timed out removing %s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100B986D4(v18, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100139CA0();
    v27 = swift_allocError();
    *v28 = 15;
  }

  else
  {

    swift_beginAccess();
    v27 = *(v13 + 16);
    swift_errorRetain();
  }

  return v27;
}

void sub_100B93F84(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35[-1] - v10;
  v12 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v12);
  v14 = (&v35[-1] - v13);
  sub_1000D2A70(a1, &v35[-1] - v13, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v15;
      v35[0] = v20;
      *v19 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, v35);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to modify existing group. Error %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    sub_100B987C8(v14, v11, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_1000076D4(v24, qword_10177C418);
    sub_100B98760(v11, v9, type metadata accessor for OwnedBeaconGroup);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100B986D4(v9, type metadata accessor for OwnedBeaconGroup);
      v33 = sub_1000136BC(v30, v32, v35);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully modified existing group %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100B986D4(v9, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v25);
    sub_100B986D4(v11, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

void sub_100B94468(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34[-1] - v10;
  v12 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v12);
  v14 = (&v34[-1] - v13);
  sub_1000D2A70(a1, &v34[-1] - v13, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v15;
      v34[0] = v20;
      *v19 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, v34);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to save new group. Error %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    sub_100B987C8(v14, v11, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C418);
    sub_100B98760(v11, v9, type metadata accessor for OwnedBeaconGroup);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v27 = 136315138;
      v29 = sub_10051F7B0();
      v31 = v30;
      sub_100B986D4(v9, type metadata accessor for OwnedBeaconGroup);
      v32 = sub_1000136BC(v29, v31, v34);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved new group %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      sub_100B986D4(v9, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100B986D4(v11, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

void sub_100B948D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v14 = sub_1000076D4(v13, qword_10177C418);
    sub_100017D5C(a1, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_100016590(a1, a2);
    v17 = os_log_type_enabled(v15, v16);
    v47 = v12;
    if (v17)
    {
      v46 = v14;
      v18 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v19 = String.init(data:encoding:)();
      if (!v20)
      {
        v19 = Data.hexString.getter();
      }

      v21 = sub_1000136BC(v19, v20, v48);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "unpairAllBeaconRecords for serial number: %{private,mask.hash}s", v18, 0x16u);
      sub_100007BAC(v45);
    }

    else
    {
    }

    v22 = sub_100AA372C(a1, a2);
    v12 = v22[2];
    if (!v12)
    {
      break;
    }

    v23 = 0;
    while (v23 < v22[2])
    {
      sub_100B98760(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v9, type metadata accessor for OwnedBeaconRecord);
      sub_100B94EFC(v9, a1, a2, v3);
      ++v23;
      sub_100B986D4(v9, type metadata accessor for OwnedBeaconRecord);
      if (v12 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_11:

  static String.Encoding.utf8.getter();
  v24 = String.init(data:encoding:)();
  if (!v25)
  {
    v24 = Data.hexString.getter();
  }

  v26 = v24;
  v27 = v25;
  v28 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_100017D5C(a1, a2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v33 = String.init(data:encoding:)();
      if (!v34)
      {
        v33 = Data.hexString.getter();
      }

      v35 = sub_1000136BC(v33, v34, v48);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Removing standalone beacons for serial number: %{private,mask.hash}s", v31, 0x16u);
      sub_100007BAC(v32);
    }

    type metadata accessor for Transaction();
    v36 = swift_allocObject();
    *(v36 + 16) = v26;
    *(v36 + 24) = v27;
    static Transaction.asyncTask(name:block:)();
  }

  else
  {

    sub_100017D5C(a1, a2);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v41 = String.init(data:encoding:)();
      if (!v42)
      {
        v41 = Data.hexString.getter();
      }

      v43 = sub_1000136BC(v41, v42, v48);

      *(v39 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Invalid serial number %{private,mask.hash}s. Cannot look up standalone beacons!", v39, 0x16u);
      sub_100007BAC(v40);
    }
  }
}

void sub_100B94EFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v41 = type metadata accessor for OwnedBeaconRecord(0);
  v9 = __chkstk_darwin(v41);
  v42 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v38 - v11;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000076D4(v13, qword_10177C418);
  sub_100B98760(a1, v12, type metadata accessor for OwnedBeaconRecord);
  sub_100017D5C(a2, a3);
  v40 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_100016590(a2, a3);
  if (os_log_type_enabled(v15, v16))
  {
    v38[1] = a4;
    v39 = a1;
    v17 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    v44 = v38[0];
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100B986D4(v12, type metadata accessor for OwnedBeaconRecord);
    v21 = sub_1000136BC(v18, v20, &v44);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    static String.Encoding.utf8.getter();
    v22 = String.init(data:encoding:)();
    if (!v23)
    {
      v22 = Data.hexString.getter();
    }

    v24 = v42;
    v25 = sub_1000136BC(v22, v23, &v44);

    *(v17 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unpairing beacon record %{private,mask.hash}s matching %{private,mask.hash}s", v17, 0x2Au);
    swift_arrayDestroy();

    a1 = v39;
  }

  else
  {

    sub_100B986D4(v12, type metadata accessor for OwnedBeaconRecord);
    v24 = v42;
  }

  v26 = sub_100DDE55C(a1, 0, 0);
  if (v26)
  {
    v27 = v26;
    sub_100B98760(a1, v24, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v30 = 136446723;
      v43 = v27;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000136BC(v31, v32, &v44);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100B986D4(v24, type metadata accessor for OwnedBeaconRecord);
      v37 = sub_1000136BC(v34, v36, &v44);

      *(v30 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error %{public}s deleting %{private,mask.hash}s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100B986D4(v24, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

uint64_t sub_100B954BC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[18] = v5;
  *v5 = v2;
  v5[1] = sub_100B95614;

  return daemon.getter();
}

uint64_t sub_100B95614(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_1000196A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000196A8(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100B957F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B957F0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  if (v1)
  {

    v5 = sub_100B95948;
    v6 = 0;
  }

  else
  {

    v5 = sub_100B95A70;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100B95948()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100B95A70()
{
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v9, qword_10177B458);
  v0[7] = v7;
  v0[8] = v8;

  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v6 + 8))(v4, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v1, v3);
  if (sub_1002182F4())
  {
    v11 = v0[22];
    Connection.prepare(_:)();
    v12 = v11;
    (*(v0[16] + 8))(v0[17], v0[15]);

    if (!v11)
    {
      sub_100007BAC(v0 + 2);

      v0[23] = sub_100B37A58(v13, sub_100F86728, 0);

      v14 = sub_100B95D08;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[15];
    sub_10020223C();
    v12 = swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
  }

  v0[26] = v12;
  sub_100007BAC(v0 + 2);
  v14 = sub_100B95F3C;
LABEL_8:

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100B95D08()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100B95DF8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100B95DF8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100B9613C, 0, 0);
  }
}

uint64_t sub_100B95F3C()
{
  v14 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[9] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to remove standalone beacons due to %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100B9613C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B961B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100B962BC, 0, 0);
}

uint64_t sub_100B962BC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v27 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v25 = *(v3 + 72);
    v26 = v4;
    v24 = (*(v0 + 104) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v23 = *(v7 + 56);
    v22 = (v7 + 48);
    v21 = (v7 + 8);
    do
    {
      v28 = v2;
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      v13 = *(v0 + 88);
      v23(v10, 1, 1, v6);
      sub_100B98760(v5, v12, type metadata accessor for StandaloneBeacon);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      sub_100B987C8(v12, v14 + v26, type metadata accessor for StandaloneBeacon);
      *(v14 + v24) = v13;
      sub_1000D2A70(v10, v11, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v22)(v11, 1, v6);

      v15 = *(v0 + 120);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 120), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v21)(v15, v6);
      }

      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = dispatch thunk of Actor.unownedExecutor.getter();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      if (v18 | v16)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
      v5 += v25;
      v2 = v28 - 1;
    }

    while (v28 != 1);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100B96628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[8] = swift_task_alloc();
  type metadata accessor for StandaloneBeacon(0);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100B96754, 0, 0);
}

uint64_t sub_100B96754()
{
  v17 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  sub_100B98760(v2, v1, type metadata accessor for StandaloneBeacon);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = sub_100B9B27C();
    v12 = v11;
    sub_100B986D4(v7, type metadata accessor for StandaloneBeacon);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing standalone beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100B986D4(v7, type metadata accessor for StandaloneBeacon);
  }

  v14 = v0[3];

  return _swift_task_switch(sub_100B96964, v14, 0);
}

uint64_t sub_100B96964()
{
  sub_100F8520C(v0[2]);
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v5);
  v8 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService, &unk_1013E32B8);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v4;
  *(v10 + 3) = v8;
  *(v10 + 4) = v4;
  (*(v3 + 32))(&v10[v9], v2, v5);
  swift_retain_n();
  sub_100A838D4(0, 0, v1, &unk_1013DB3E8, v10);

  v11 = v0[1];

  return v11();
}

void sub_100B96B60(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v40 = a3;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v39 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v14);
  v16 = (&v37 - v15);
  v17 = swift_projectBox();
  sub_1000D2A70(a1, v16, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C418);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v18;
      v42[0] = v23;
      *v22 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = sub_1000136BC(v24, v25, v42);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to save beacon record %{public}s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }
  }

  else
  {
    v38 = v17;
    sub_100B987C8(v16, v13, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    sub_100B98760(v13, v11, type metadata accessor for OwnedBeaconRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100B986D4(v11, type metadata accessor for OwnedBeaconRecord);
      v35 = sub_1000136BC(v32, v34, v42);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "New beacon record has been created. %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100B986D4(v11, type metadata accessor for OwnedBeaconRecord);
    }

    v36 = v38;
    sub_100B987C8(v13, v7, type metadata accessor for OwnedBeaconRecord);
    (*(v39 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_10002311C(v7, v36, &unk_1016A9A20, &qword_10138B280);
  }

  dispatch_group_leave(v40);
}

void sub_100B970FC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v41 = a2;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v40 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v13);
  v15 = (&v38 - v14);
  v16 = swift_projectBox();
  sub_1000D2A70(a1, v15, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C418);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42[0] = v22;
      *v21 = 136446210;
      v42[3] = v17;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, v42);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to modify existing group. Error %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {
    }
  }

  else
  {
    v39 = v16;
    sub_100B987C8(v15, v12, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_1000076D4(v26, qword_10177C418);
    sub_100B98760(v12, v10, type metadata accessor for OwnedBeaconGroup);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v27;
      v32 = v31;
      v42[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
      v36 = sub_1000136BC(v33, v35, v42);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully modified existing group %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v32);
      v27 = v38;
    }

    else
    {

      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v27);
    sub_100B987C8(v12, v6, type metadata accessor for OwnedBeaconGroup);
    (*(v40 + 56))(v6, 0, 1, v7);
    v37 = v39;
    swift_beginAccess();
    sub_10002311C(v6, v37, &unk_1016AF8B0, &unk_1013A0700);
  }

  dispatch_group_leave(v41);
}

void sub_100B976B0(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v53 = a2;
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v49 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = swift_projectBox();
  sub_1000D2A70(a1, v18, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54[0] = v25;
      *v24 = 136446210;
      v54[3] = v20;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000136BC(v26, v27, v54);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to save new group. Error %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {
    }
  }

  else
  {
    v48 = v19;
    sub_100B987C8(v18, v15, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C418);
    sub_100B98760(v15, v13, type metadata accessor for OwnedBeaconGroup);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54[0] = v33;
      *v32 = 136315138;
      v34 = sub_10051F7B0();
      v36 = v35;
      sub_100B986D4(v13, type metadata accessor for OwnedBeaconGroup);
      v37 = sub_1000136BC(v34, v36, v54);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully saved new group %s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      sub_100B986D4(v13, type metadata accessor for OwnedBeaconGroup);
    }

    v38 = v52;
    sub_100B98760(v15, v9, type metadata accessor for OwnedBeaconGroup);
    (*(v49 + 56))(v9, 0, 1, v10);
    v39 = v48;
    swift_beginAccess();
    sub_10002311C(v9, v39, &unk_1016AF8B0, &unk_1013A0700);
    v40 = *(v10 + 24);
    v41 = type metadata accessor for UUID();
    (*(*(v41 - 8) + 16))(v38, &v15[v40], v41);
    v42 = v50;
    static Date.trustedNow.getter(v38 + *(v50 + 20));
    *(v38 + *(v42 + 24)) = 37;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v43 = qword_10177B2E8;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v44 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_101385D80;
    sub_100B98760(v38, v45 + v44, type metadata accessor for BeaconObservation);
    v46 = type metadata accessor for Transaction();
    __chkstk_darwin(v46);
    *(&v47 - 4) = v43;
    *(&v47 - 3) = v45;
    *(&v47 - 2) = 0;
    *(&v47 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_100B986D4(v38, type metadata accessor for BeaconObservation);
    sub_100B986D4(v15, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(v53);
}

uint64_t sub_100B97E34(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C69A78(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B97F2C(uint64_t a1)
{
  v4 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C69740(a1, v6, v7, v8, v1 + v5);
}

void sub_100B9802C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v36 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = __chkstk_darwin(v36);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v33 = &v29 - v10;
  __chkstk_darwin(v9);
  v32 = &v29 - v12;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = (v11 + 48);
  v38 = a1;

  v19 = 0;
  v30 = v18;
  v31 = v6;
  while (v16)
  {
LABEL_11:
    v21 = (*(v38 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))));
    v22 = *v21;
    v23 = v21[1];
    sub_100017D5C(*v21, v23);
    sub_100AC57E4(v22, v23, v6);
    if ((*v18)(v6, 1, v36) == 1)
    {
      sub_10000B3A8(v6, &unk_1016AF8B0, &unk_1013A0700);
    }

    else
    {
      v24 = v32;
      sub_100B987C8(v6, v32, type metadata accessor for OwnedBeaconGroup);
      v25 = v34;
      sub_100B98760(v24, v34, type metadata accessor for OwnedBeaconGroup);
      v26 = v33;
      sub_100DEDBEC(v33, v25);
      v27 = v26;
      v6 = v31;
      sub_100B986D4(v27, type metadata accessor for OwnedBeaconGroup);
      v28 = v24;
      v18 = v30;
      sub_100B986D4(v28, type metadata accessor for OwnedBeaconGroup);
    }

    v16 &= v16 - 1;
    sub_100016590(v22, v23);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_100B98334()
{
  result = qword_1016B6E38;
  if (!qword_1016B6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E38);
  }

  return result;
}

uint64_t sub_100B98388(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryProductInfo(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100DE68D0(a1, a2))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C418);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting AlphaWasp beacon group version to 1", v12, 2u);
    }

    return 1;
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C418);
    sub_100B98760(a3, v8, type metadata accessor for AccessoryProductInfo);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446210;
      if (v8[8])
      {
        v19 = 0xE700000000000000;
        v20 = 0x79636167656C2ELL;
      }

      else
      {
        v21 = *v8;
        v26 = 0x6E6F69737265762ELL;
        v27 = 0xEB00000000286465;
        v25 = v21;
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23._countAndFlagsBits = 41;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
        v20 = v26;
        v19 = v27;
      }

      sub_100B986D4(v8, type metadata accessor for AccessoryProductInfo);
      v24 = sub_1000136BC(v20, v19, &v28);

      *(v17 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Getting beacon group version from product info: %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {

      sub_100B986D4(v8, type metadata accessor for AccessoryProductInfo);
    }

    return *a3;
  }
}

uint64_t sub_100B986D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B98760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B987C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B98830()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100B954BC(v2, v3);
}

uint64_t sub_100B988C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100B961B0(a1, a2, v7, v6);
}

uint64_t sub_100B9897C(uint64_t a1)
{
  v4 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100B96628(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B98AA4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100B98BF4(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;

  return sub_1009ED674(v8, v1 + v4, v6, v7);
}

unint64_t sub_100B98CC0(uint64_t a1)
{
  *(a1 + 8) = sub_100B98CF0();
  result = sub_10059C09C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B98CF0()
{
  result = qword_1016B6E40;
  if (!qword_1016B6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E40);
  }

  return result;
}

void *sub_100B98D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_101123BD8(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v27 = *(v2 + 36);
  v23 = v2 + 72;
  v24 = v1;
  v25 = v2 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v26 = *(*(v2 + 48) + 8 * v5);
    v10 = *(*(v2 + 56) + 8 * v5);
    v11 = v2;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    result = v10;
    if (v13 >= v12 >> 1)
    {
      v22 = result;
      sub_101123BD8((v12 > 1), v13 + 1, 1);
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v26;
    v14[5] = result;
    v7 = 1 << *(v11 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = v25;
    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v2 = v11;
    if (v27 != *(v11 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (v23 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1000BB408(v5, v27, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v5, v27, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100B98F98(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1011248E0(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v31 = *(v1 + 36);
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v31 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v9 = v1;
      v10 = *(*(v1 + 56) + 8 * v5);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v12;
      v30 = v11;
      v13 = [v10 dictionaryRepresentation];
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = v3;
      v32 = v3;
      v16 = v3[2];
      v17 = v15[3];
      if (v16 >= v17 >> 1)
      {
        sub_1011248E0((v17 > 1), v16 + 1, 1);
        v15 = v32;
      }

      v15[2] = v16 + 1;
      v18 = &v15[3 * v16];
      v18[4] = v30;
      v18[5] = v29;
      v18[6] = v14;
      v7 = 1 << *(v9 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v9;
      v4 = v28;
      v19 = *(v28 + 8 * v8);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v15;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1000BB408(v5, v31, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1000BB408(v5, v31, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_100B9925C()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 108;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = UUID.data.getter();
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 98;
  *(inited + 88) = 0xE100000000000000;
  v3 = type metadata accessor for OfflineFindingInfo(0);
  v4 = v3[5];
  v5 = type metadata accessor for Date();
  *(inited + 120) = v5;
  v6 = sub_1000280DC((inited + 96));
  (*(*(v5 - 8) + 16))(v6, v0 + v4, v5);
  *(inited + 128) = 105;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = *(v0 + v3[6]);
  *(inited + 168) = &type metadata for UInt64;
  *(inited + 176) = 112;
  *(inited + 184) = 0xE100000000000000;
  v7 = (v0 + v3[7]);
  v8 = *v7;
  v9 = v7[1];
  *(inited + 192) = *v7;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for Data;
  *(inited + 224) = 115;
  *(inited + 232) = 0xE100000000000000;
  v10 = (v0 + v3[8]);
  v11 = *v10;
  v12 = v10[1];
  *(inited + 240) = *v10;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for Data;
  *(inited + 272) = 118;
  *(inited + 280) = 0xE100000000000000;
  v13 = *(v0 + v3[9]);
  sub_100017D5C(v8, v9);
  sub_100017D5C(v11, v12);
  sub_100B98F98(v13);
  if (*(v14 + 16))
  {
    sub_1000BC4D4(&qword_1016B6E60, &qword_1013DB4D0);
    v15 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v15 = _swiftEmptyDictionarySingleton;
  }

  v20 = v15;

  sub_100B9AB74(v16, 1, &v20);

  v17 = v20;
  *(inited + 312) = sub_1000BC4D4(&qword_1016B6E68, &qword_1013DB4D8);
  *(inited + 288) = v17;
  v18 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_100B994B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v81 - v5;
  v7 = type metadata accessor for Date();
  v98 = *(v7 - 8);
  __chkstk_darwin(v7);
  v97 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v81 - v10;
  v12 = type metadata accessor for UUID();
  v99 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OfflineFindingInfo(0);
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v100 = a2, v19 = sub_100771D58(108, 0xE100000000000000), a2 = v100, (v20 & 1) == 0) || (sub_100013894(*(a1 + 56) + 32 * v19, &v103), (swift_dynamicCast() & 1) == 0))
  {

LABEL_8:
    v24 = 1;
    return (*(v16 + 56))(a2, v24, 1, v15);
  }

  v95 = v7;
  v96 = v14;
  v22 = v101;
  v21 = v102;
  v103 = v101;
  v104 = v102;
  sub_1000E0A3C();
  DataProtocol.deprecated_bytes.getter();
  UUID.init(bytes:)();
  v23 = v99;
  if ((*(v99 + 48))(v11, 1, v12) != 1)
  {
    v93 = v22;
    v94 = v21;
    v26 = v96;
    v91 = *(v23 + 32);
    v92 = v23 + 32;
    v91(v96, v11, v12);
    if (!*(a1 + 16) || (v27 = sub_100771D58(98, 0xE100000000000000), v23 = v99, (v28 & 1) == 0))
    {
      sub_100016590(v93, v94);

      (*(v23 + 8))(v26, v12);
      (*(v98 + 56))(v6, 1, 1, v95);
      goto LABEL_15;
    }

    sub_100013894(*(a1 + 56) + 32 * v27, &v103);
    v29 = v95;
    v30 = swift_dynamicCast();
    v31 = v98;
    (*(v98 + 56))(v6, v30 ^ 1u, 1, v29);
    if ((*(v31 + 48))(v6, 1, v29) == 1)
    {
      (*(v23 + 8))(v26, v12);
      sub_100016590(v93, v94);

LABEL_15:
      a2 = v100;
      sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
      goto LABEL_8;
    }

    v90 = *(v31 + 32);
    v90(v97, v6, v29);
    if (*(a1 + 16) && (v32 = sub_100771D58(105, 0xE100000000000000), v23 = v99, (v33 & 1) != 0))
    {
      sub_100013894(*(a1 + 56) + 32 * v32, &v103);
      v34 = swift_dynamicCast();
      v35 = v94;
      if (v34)
      {
        if (*(a1 + 16))
        {
          v89 = v101;
          v36 = sub_100771D58(112, 0xE100000000000000);
          v23 = v99;
          if (v37)
          {
            sub_100013894(*(a1 + 56) + 32 * v36, &v103);
            if (swift_dynamicCast())
            {
              v38 = v101;
              v39 = v102;
              sub_100017D5C(v101, v102);
              v87 = v38;
              v88 = v39;
              v85 = sub_10049C0AC(v38, v39);
              v86 = v42;
              if (!*(a1 + 16) || (v43 = sub_100771D58(115, 0xE100000000000000), (v44 & 1) == 0))
              {
                sub_100016590(v93, v94);
                sub_100016590(v87, v88);
                sub_100016590(v85, v86);

                (*(v98 + 8))(v97, v29);
                (*(v99 + 8))(v26, v12);
                goto LABEL_6;
              }

              sub_100013894(*(a1 + 56) + 32 * v43, &v103);
              if (swift_dynamicCast())
              {
                v45 = v101;
                v46 = v102;
                sub_100017D5C(v101, v102);
                v47 = v45;
                sub_1004A4714(v45, v46, &v103);
                v48 = v103;
                v84 = v104;
                if (!*(a1 + 16) || (v49 = sub_100771D58(118, 0xE100000000000000), (v50 & 1) == 0))
                {
                  sub_100016590(v93, v94);
                  sub_100016590(v87, v88);
                  sub_100016590(v85, v86);
                  sub_100016590(v45, v46);
                  sub_100016590(v48, v84);

                  goto LABEL_34;
                }

                sub_100013894(*(a1 + 56) + 32 * v49, &v103);

                sub_1000BC4D4(&qword_1016B34A8, &qword_1013D4490);
                if (swift_dynamicCast())
                {
                  v83 = v101;
                  if (*(v101 + 16) == 2)
                  {
                    v103 = 1;
                    v51 = dispatch thunk of CustomStringConvertible.description.getter();
                    if (*(v83 + 16))
                    {
                      v82 = sub_100771D58(v51, v52);
                      v54 = v53;

                      if ((v54 & 1) == 0)
                      {
                        sub_100016590(v93, v94);
                        sub_100016590(v85, v86);
                        sub_100016590(v48, v84);
LABEL_56:
                        sub_100016590(v47, v46);
                        sub_100016590(v87, v88);
                        goto LABEL_57;
                      }

                      v55 = v83;
                      v56 = *(*(v83 + 56) + 8 * v82);
                      v103 = 2;
                      v82 = v56;

                      v57 = dispatch thunk of CustomStringConvertible.description.getter();
                      if (*(v55 + 16))
                      {
                        v81 = sub_100771D58(v57, v58);
                        v60 = v59;

                        if (v60)
                        {
                          v61 = *(*(v83 + 56) + 8 * v81);

                          v103 = _swiftEmptyDictionarySingleton;
                          if (*(v82 + 16) && (v62 = sub_100771D58(115, 0xE100000000000000), (v63 & 1) != 0) && *(v82 + 16) && (v83 = *(*(v82 + 56) + 8 * v62), v64 = sub_100771D58(108, 0xE100000000000000), (v65 & 1) != 0))
                          {
                            v66 = *(*(v82 + 56) + 8 * v64);

                            v67 = objc_allocWithZone(SPOfflineAdvertisingConfiguration);
                            sub_1001E0530([v67 initWithShortIntervalCount:v83 longIntervalCount:v66], 1);
                          }

                          else
                          {
                          }

                          if (*(v61 + 16) && (v68 = sub_100771D58(115, 0xE100000000000000), (v69 & 1) != 0))
                          {
                            if (!*(v61 + 16) || (v83 = *(*(v61 + 56) + 8 * v68), v70 = sub_100771D58(108, 0xE100000000000000), (v71 & 1) == 0))
                            {
                              sub_100016590(v93, v94);
                              sub_100016590(v47, v46);
                              sub_100016590(v87, v88);

                              goto LABEL_67;
                            }

                            v72 = *(*(v61 + 56) + 8 * v70);

                            v73 = objc_allocWithZone(SPOfflineAdvertisingConfiguration);
                            sub_1001E0530([v73 initWithShortIntervalCount:v83 longIntervalCount:v72], 2);
                            sub_100016590(v93, v94);
                            sub_100016590(v87, v88);
                            v74 = v47;
                            v75 = v46;
                          }

                          else
                          {
                            sub_100016590(v93, v94);

                            sub_100016590(v47, v46);
                            v74 = v87;
                            v75 = v88;
                          }

                          sub_100016590(v74, v75);
LABEL_67:
                          v76 = v103;
                          if (*(v103 + 16) == 2)
                          {
                            v91(v18, v96, v12);
                            v90(&v18[v15[5]], v97, v95);
                            *&v18[v15[6]] = v89;
                            v77 = &v18[v15[7]];
                            v78 = v86;
                            *v77 = v85;
                            *(v77 + 1) = v78;
                            v79 = &v18[v15[8]];
                            v80 = v84;
                            *v79 = v48;
                            v79[1] = v80;
                            *&v18[v15[9]] = v76;
                            a2 = v100;
                            sub_100B9AF08(v18, v100);
                            v24 = 0;
                            return (*(v16 + 56))(a2, v24, 1, v15);
                          }

                          sub_100016590(v85, v86);
                          sub_100016590(v48, v84);
                          (*(v98 + 8))(v97, v95);
                          (*(v99 + 8))(v96, v12);

                          goto LABEL_6;
                        }

                        sub_100016590(v93, v94);
                        sub_100016590(v85, v86);
                        sub_100016590(v48, v84);

                        goto LABEL_56;
                      }

                      sub_100016590(v93, v94);
                      sub_100016590(v85, v86);
                      sub_100016590(v48, v84);

                      sub_100016590(v47, v46);
                      sub_100016590(v87, v88);
                    }

                    else
                    {
                      sub_100016590(v93, v94);
                      sub_100016590(v85, v86);
                      sub_100016590(v48, v84);
                      sub_100016590(v45, v46);
                      sub_100016590(v87, v88);
                    }

LABEL_57:

                    goto LABEL_34;
                  }

                  sub_100016590(v93, v94);
                  sub_100016590(v85, v86);
                  sub_100016590(v48, v84);
                }

                else
                {
                  sub_100016590(v93, v94);
                  sub_100016590(v85, v86);
                  sub_100016590(v48, v84);
                }

                sub_100016590(v45, v46);
              }

              else
              {
                sub_100016590(v93, v94);
                sub_100016590(v85, v86);
              }

              sub_100016590(v87, v88);
LABEL_34:
              (*(v98 + 8))(v97, v95);
              (*(v99 + 8))(v96, v12);
              goto LABEL_6;
            }
          }
        }
      }

      v40 = v93;
      v41 = v35;
    }

    else
    {
      v40 = v93;
      v41 = v94;
    }

    sub_100016590(v40, v41);

    (*(v98 + 8))(v97, v29);
    (*(v23 + 8))(v26, v12);
    goto LABEL_6;
  }

  sub_100016590(v22, v21);

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
LABEL_6:
  v24 = 1;
  a2 = v100;
  return (*(v16 + 56))(a2, v24, 1, v15);
}

uint64_t sub_100B9A2E4()
{
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(88);
  v1 = type metadata accessor for OfflineFindingInfo(0);
  sub_100B9B0F8(&qword_1016B6E48, type metadata accessor for OfflineFindingInfo, &unk_1013DB4A0);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6669746E65646928;
  v3._object = 0xED0000203A726569;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100B9B0F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x676E697269617020;
  v5._object = 0xEE00203A65746144;
  String.append(_:)(v5);
  type metadata accessor for Date();
  sub_100B9B0F8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A7865646E6920;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v38 = *(v0 + v1[6]);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3C203A4B5020;
  v9._object = 0xE600000000000000;
  String.append(_:)(v9);
  v10 = (v0 + v1[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = v11 + 16;
    v11 = *(v11 + 16);
    v15 = *(v16 + 8);
    v17 = __OFSUB__(v15, v11);
    v14 = v15 - v11;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(v12);
    goto LABEL_10;
  }

  v17 = __OFSUB__(HIDWORD(v11), v11);
  v18 = HIDWORD(v11) - v11;
  if (v17)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v18;
LABEL_10:
  v38 = v14;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x203E736574796220;
  v20._object = 0xED00003C203A5353;
  String.append(_:)(v20);
  v21 = (v0 + v1[8]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v22 = 0;
      goto LABEL_20;
    }

    v27 = (v22 + 16);
    v25 = *(v22 + 16);
    v26 = v27[1];
    v17 = __OFSUB__(v26, v25);
    v22 = v26 - v25;
    if (!v17)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    v17 = __OFSUB__(HIDWORD(v22), v22);
    LODWORD(v22) = HIDWORD(v22) - v22;
    if (!v17)
    {
      v22 = v22;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v24)
  {
    goto LABEL_17;
  }

  v22 = BYTE6(v23);
LABEL_20:
  v38 = v22;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._object = 0x800000010136E750;
  v29._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v29);
  if (sub_100B98D44(*(v0 + v1[9]))[2])
  {
    sub_1000BC4D4(&qword_1016B6E50, &qword_1013DB4C8);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v38 = v30;

  sub_100B9A7B4(v31, 1, &v38);

  sub_100B9AB28();
  v32 = Dictionary.description.getter();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  return v39;
}

uint64_t type metadata accessor for OfflineFindingInfo(uint64_t a1)
{
  result = qword_1016B6EC8;
  if (!qword_1016B6EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B9A7B4(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_100771C58(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_101004B18();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_100FE5AD8(v12, a2 & 1);
  v17 = sub_100771C58(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v42._object = 0x8000000101360AB0;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    _print_unlocked<A, B>(_:_:)();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v20[6] + 8 * v13) = v6;
  *(v20[7] + 8 * v13) = v16;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v44 != 1)
  {
    v24 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = *a3;
      v29 = sub_100771C58(v27);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];
      v16 = v26;
      if (v36 < v33)
      {
        sub_100FE5AD8(v33, 1);
        v37 = sub_100771C58(v27);
        if ((v35 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v39[6] + 8 * v34) = v27;
      *(v39[7] + 8 * v34) = v16;
      v40 = v39[2];
      v22 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v39[2] = v41;
      v24 += 2;
      if (v44 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

unint64_t sub_100B9AB28()
{
  result = qword_1016B6E58;
  if (!qword_1016B6E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B6E58);
  }

  return result;
}

uint64_t sub_100B9AB74(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100771D58(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100FEBB9C(v15, v5 & 1);
    v10 = sub_100771D58(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_101007D78();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000101360AB0;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_100771D58(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_100FEBB9C(v30, 1);
        v26 = sub_100771D58(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v38 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100B9AF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFindingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B9AF94(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100B9B04C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B9B04C(uint64_t a1)
{
  if (!qword_1016B6ED8)
  {
    type metadata accessor for ShutdownReason(255);
    sub_100B9AB28();
    sub_100B9B0F8(&unk_1016B6EE0, type metadata accessor for ShutdownReason, &unk_101388D34);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B6ED8);
    }
  }
}

uint64_t sub_100B9B0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StandaloneBeacon(uint64_t a1)
{
  result = qword_1016B6F78;
  if (!qword_1016B6F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B9B1B4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MACAddress();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100B9B27C()
{
  _StringGuts.grow(_:)(75);
  v1._countAndFlagsBits = 0x203A64693CLL;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100B9B724(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x7373657264646120;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  v4 = type metadata accessor for StandaloneBeacon(0);
  type metadata accessor for MACAddress();
  sub_100B9B724(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x800000010136E770;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x203A4E5320;
  v8._object = 0xE500000000000000;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + *(v4 + 28)));
  v9._countAndFlagsBits = 0x746375646F727020;
  v9._object = 0xEE00203A61746144;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_100313D58(*(v0 + *(v4 + 36)), *(v0 + *(v4 + 36) + 8));
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x7461447269617020;
  v11._object = 0xEB00000000203A65;
  String.append(_:)(v11);
  type metadata accessor for Date();
  sub_100B9B724(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

Swift::Int sub_100B9B544()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B9B5CC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100B9B650(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B9B724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char **sub_100B9B76C()
{
  v1 = v0;
  v2 = [v0 ownedCircles];
  v3 = _swiftEmptyDictionarySingleton;
  if (v2)
  {
    v4 = v2;
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_29;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v6; i = v1)
    {
      v7 = 0;
      v118 = v5 & 0xC000000000000001;
      v112 = v5 + 32;
      v114 = v5 & 0xFFFFFFFFFFFFFF8;
      v8 = _swiftEmptyDictionarySingleton;
      v116 = v6;
      v117 = v5;
      while (1)
      {
        if (v118)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v114 + 16))
          {
            goto LABEL_28;
          }

          v22 = *(v112 + 8 * v7);
        }

        v1 = v22;
        v23 = __OFADD__(v7, 1);
        v24 = (v7 + 1);
        if (v23)
        {
          break;
        }

        v25 = [v22 peerTrusts];
        sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v122 = v8;
        v124 = v24;
        v120 = v1;
        if (v27)
        {
          if (v27 < 1)
          {
            goto LABEL_27;
          }

          v28 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v36 = *(v26 + 8 * v28 + 32);
            }

            v37 = v36;
            v38 = [v36 peerTrustRecord];
            v39 = [v38 value];

            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43._countAndFlagsBits = v40;
            v43._object = v42;
            String.append(_:)(v43);

            v44._countAndFlagsBits = 8236;
            v44._object = 0xE200000000000000;
            String.append(_:)(v44);
            v45 = [v37 messagingDestination];
            if (v45)
            {
              v29 = v45;
              v30 = [v45 value];

              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;
            }

            else
            {
              v31 = 0x6974736564206F4ELL;
              v33 = 0xEE006E6F6974616ELL;
            }

            ++v28;
            v34._countAndFlagsBits = v31;
            v34._object = v33;
            String.append(_:)(v34);

            v35._countAndFlagsBits = 0x203A7265657020;
            v35._object = 0xE700000000000000;
            String.append(_:)(v35);
          }

          while (v27 != v28);
        }

        v1 = 0;
        v9 = [v120 circleRecord];
        v10 = [v9 value];

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [v120 beaconRecord];
        v15 = [v14 value];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19._countAndFlagsBits = 44;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        String.append(_:)(v20);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v16, v18, v11, v13, isUniquelyReferenced_nonNull_native);

        v8 = v122;
        v5 = v117;
        v7 = v124;
        if (v124 == v116)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    v8 = _swiftEmptyDictionarySingleton;
LABEL_31:

    v3 = _swiftEmptyDictionarySingleton;
    v1 = i;
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
  }

  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBD58(v8, 0x72694364656E776FLL, 0xEC00000073656C63, v46);
  v47 = _swiftEmptyDictionarySingleton;
  v48 = [v1 memberCircles];
  if (v48)
  {
    v49 = v48;
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v50 >> 62)
    {
      goto LABEL_71;
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
    v108 = v47;
    if (v51)
    {
      v52 = 0;
      v113 = v51;
      v115 = v50 & 0xC000000000000001;
      v109 = v50 + 32;
      v110 = v50 & 0xFFFFFFFFFFFFFF8;
      v47 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      do
      {
        if (v115)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *(v110 + 16))
          {
            goto LABEL_70;
          }

          v67 = *(v109 + 8 * v52);
        }

        v50 = v67;
        v23 = __OFADD__(v52, 1);
        v68 = v52 + 1;
        if (v23)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v51 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_35;
        }

        v123 = v3;
        v3 = [v67 peerTrusts];
        sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v125 = v50;
        v121 = v68;
        if (v69 >> 62)
        {
          v70 = _CocoaArrayWrapper.endIndex.getter();
          if (!v70)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v70)
          {
            goto LABEL_55;
          }
        }

        if (v70 < 1)
        {
          goto LABEL_68;
        }

        v71 = 0;
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v79 = *(v69 + 8 * v71 + 32);
          }

          v80 = v79;
          v81 = [v79 peerTrustRecord];
          v82 = [v81 value];

          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          v126._countAndFlagsBits = v83;
          v126._object = v85;
          v86._countAndFlagsBits = 8236;
          v86._object = 0xE200000000000000;
          String.append(_:)(v86);
          v87 = [v80 messagingDestination];
          if (v87)
          {
            v72 = v87;
            v73 = [v87 value];

            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
          }

          else
          {
            v74 = 0x6974736564206F4ELL;
            v76 = 0xEE006E6F6974616ELL;
          }

          ++v71;
          v77._countAndFlagsBits = v74;
          v77._object = v76;
          String.append(_:)(v77);

          v78._countAndFlagsBits = 32;
          v78._object = 0xE100000000000000;
          String.append(_:)(v78);
          String.append(_:)(v126);
        }

        while (v70 != v71);
LABEL_55:

        v88 = [v125 sharedBeaconOwnerName];
        v89 = [v88 value];

        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v93._countAndFlagsBits = 32;
        v93._object = 0xE100000000000000;
        String.append(_:)(v93);
        v94 = v90;
        v95 = v92;
        v3 = [v125 itemSharingKey];
        sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v50 >> 62)
        {
          v96 = _CocoaArrayWrapper.endIndex.getter();
          v119 = v94;
          if (!v96)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v96 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v119 = v94;
          if (!v96)
          {
            goto LABEL_37;
          }
        }

        if (v96 < 1)
        {
          goto LABEL_69;
        }

        v97 = 0;
        do
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v98 = *(v50 + 8 * v97 + 32);
          }

          v99 = v98;
          ++v97;
          v100 = [v98 value];
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v104._countAndFlagsBits = 32;
          v104._object = 0xE100000000000000;
          String.append(_:)(v104);
          v105._countAndFlagsBits = v101;
          v105._object = v103;
          String.append(_:)(v105);
        }

        while (v96 != v97);
LABEL_37:

        v53 = [v125 circleRecord];
        v54 = [v53 value];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v56;

        v57 = [v125 sharedBeaconRecord];
        v58 = [v57 value];

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62._countAndFlagsBits = 32;
        v62._object = 0xE100000000000000;
        String.append(_:)(v62);

        v63._countAndFlagsBits = v119;
        v63._object = v95;
        String.append(_:)(v63);

        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        String.append(_:)(v65);

        v66 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v59, v61, v55, v50, v66);

        v3 = v123;
        v52 = v121;
      }

      while (v121 != v113);
    }

    v47 = v108;
  }

  v106 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBD58(v3, 0x69437265626D656DLL, 0xED000073656C6372, v106);
  return v47;
}

__n128 sub_100B9C29C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100B9C2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B9C318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100B9C370()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC70);
  sub_1000076D4(v0, qword_10177BC70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B9C3F4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016B6FE8, &qword_1013DB6C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100B9CE1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v4)
  {
    BYTE4(v15) = BYTE4(v14);
    LODWORD(v15) = v14;
    v17 = 1;
    sub_100B9CEC4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100B9C5BC()
{
  if (*v0)
  {
    return 0x6F666E49766461;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_100B9C600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E49766461 && a2 == 0xE700000000000000)
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

uint64_t sub_100B9C6E0(uint64_t a1)
{
  v2 = sub_100B9CE1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B9C71C(uint64_t a1)
{
  v2 = sub_100B9CE1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B9C758@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100B9CC0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = BYTE4(v6);
  }

  return result;
}

char *sub_100B9C7B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      if (!v4)
      {
        return _swiftEmptyArrayStorage;
      }

      v6 = 0;
      v7 = a2 + 32;
      v8 = (a1 + 40);
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = *(v8 - 1);
        v11 = *v8;
        v12 = *(*v7 + 16);
        sub_100017D5C(v10, *v8);
        sub_100017D5C(v10, v11);
        if (v12)
        {

          sub_100EB42B8(v13);
          v15 = v14;
        }

        else
        {
          v15 = 3;
        }

        v16 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100A5E954(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_100A5E954((v17 > 1), v18 + 1, 1, v9);
        }

        v8 += 2;
        sub_100016590(v10, v11);
        *(v9 + 2) = v18 + 1;
        v19 = &v9[24 * v18];
        *(v19 + 4) = v10;
        *(v19 + 5) = v11;
        v19[52] = BYTE4(v15);
        *(v19 + 12) = v15;
        v7 += 8;
        --v4;
        v6 = v16;
      }

      while (v4);
      return v9;
    }

    if (qword_101694D08 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177BC70);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349312;
      *(v23 + 4) = v5;

      *(v23 + 12) = 2050;
      *(v23 + 14) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v21, v22, "Ambiguous hint response from server!\npayload %{public}ld != tlvPackets %{public}ld", v23, 0x16u);
    }

    else
    {
    }
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    sub_101125600(0, v5, 0);
    v9 = _swiftEmptyArrayStorage;
    v24 = (a1 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      sub_100017D5C(v25, *v24);
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_101125600((v27 > 1), v28 + 1, 1);
      }

      v24 += 2;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[3 * v28];
      v29[4] = v25;
      v29[5] = v26;
      *(v29 + 52) = 0;
      *(v29 + 12) = 3;
      --v5;
    }

    while (v5);
  }

  return v9;
}

uint64_t sub_100B9CC0C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6FD0, &qword_1013DB6C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B9CE1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v11 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v9 = v13;
    v11 = 1;
    sub_100B9CE70();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100017D5C(v7, v9);
    sub_100007BAC(a1);
    sub_100016590(v7, v9);
  }

  return v7;
}

unint64_t sub_100B9CE1C()
{
  result = qword_1016B6FD8;
  if (!qword_1016B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FD8);
  }

  return result;
}

unint64_t sub_100B9CE70()
{
  result = qword_1016B6FE0;
  if (!qword_1016B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FE0);
  }

  return result;
}

unint64_t sub_100B9CEC4()
{
  result = qword_1016B6FF0;
  if (!qword_1016B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FF0);
  }

  return result;
}

unint64_t sub_100B9CF2C()
{
  result = qword_1016B6FF8;
  if (!qword_1016B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FF8);
  }

  return result;
}

unint64_t sub_100B9CF84()
{
  result = qword_1016B7000;
  if (!qword_1016B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7000);
  }

  return result;
}

unint64_t sub_100B9CFDC()
{
  result = qword_1016B7008;
  if (!qword_1016B7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7008);
  }

  return result;
}

uint64_t sub_100B9D040@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B9D0F0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100B9D06C(uint64_t a1)
{
  *(a1 + 8) = sub_100B9D09C();
  result = sub_10059BEA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B9D09C()
{
  result = qword_1016B7010;
  if (!qword_1016B7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7010);
  }

  return result;
}

uint64_t sub_100B9D0F0(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_100B9D2C0()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B9D3E4, 0, 0);
}

uint64_t sub_100B9D3E4()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_defaultActor_initialize();
  v2[14] = 0xD000000000000013;
  v2[15] = 0x80000001013DB8B0;
  type metadata accessor for WorkItemQueue();
  v3 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  UUID.init()();
  v2[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1000076D4(v6, qword_10177BA58);
  (*(v5 + 16))(v4, v7, v6);
  type metadata accessor for LocalStorageDatabase(0);
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_100B9D5B0;
  v9 = v0[5];

  return sub_100B5B1CC(v9, 0);
}

uint64_t sub_100B9D5B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100B9D8A0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_100B9D6D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B9D6D8()
{
  type metadata accessor for LocalStorageStore();
  *(v0 + 88) = swift_allocObject();

  return _swift_task_switch(sub_100B9D760, 0, 0);
}

uint64_t sub_100B9D760()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_defaultActor_initialize();
  v2[15] = 0xD000000000000011;
  v2[16] = 0x800000010136DC70;
  v2[14] = v1;

  return _swift_task_switch(sub_100B9D7EC, 0, 0);
}

uint64_t sub_100B9D7EC()
{
  v1 = *(v0 + 16);
  *(v1 + 128) = *(v0 + 88);
  return _swift_task_switch(sub_100B9D810, v1, 0);
}

uint64_t sub_100B9D810()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1(v2);
}

uint64_t sub_100B9D8A0()
{

  type metadata accessor for LocalStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B9D964()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100B9D9F8;

  return daemon.getter();
}

uint64_t sub_100B9D9F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100B9EEBC(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100B9EEBC(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100B9DBDC;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100B9DBDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10084C32C, v5, 0);
  }

  else
  {

    v8 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_100B9DD80;

    return v8();
  }
}

uint64_t sub_100B9DD80()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100B9DE90, v1, 0);
}

uint64_t sub_100B9DE90()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100B9DEB4, v1, 0);
}

uint64_t sub_100B9DEB4()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 80) = v1;
  return _swift_task_switch(sub_100B9DED8, v1, 0);
}

uint64_t sub_100B9DED8()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_100B9EEBC(&qword_1016B62E0, 255, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  *(v0 + 88) = v1;
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = sub_100B9DFB0;
  }

  else
  {
    v3 = sub_1004A9788;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100B9DFB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B9E038(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100B9E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LocalStorageService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100B9E1A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100B9E24C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalStorageService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100B9E2F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100B9D964();
}

uint64_t sub_100B9E380()
{
  type metadata accessor for LocalStorageService();
  sub_100B9EEBC(&unk_1016B1030, v0, type metadata accessor for LocalStorageService, &unk_1013DB940);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100B9E478(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9E498, 0, 0);
}

uint64_t sub_100B9E498()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100B9E52C;

  return sub_1011A3C3C();
}

uint64_t sub_100B9E52C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100B9E678, 0, 0);
  }
}

uint64_t sub_100B9E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100B9E6C0, 0, 0);
}

uint64_t sub_100B9E6C0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100B9E75C;
  v2 = *(v0 + 32);

  return sub_1011A3FBC(v2);
}

uint64_t sub_100B9E75C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100B9EF04, 0, 0);
  }
}

uint64_t sub_100B9E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100B9E8CC, 0, 0);
}

uint64_t sub_100B9E8CC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100B9E968;
  v2 = *(v0 + 32);

  return sub_1011A4668(v2);
}

uint64_t sub_100B9E968(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100B9EAB4, 0, 0);
  }
}

uint64_t sub_100B9EAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100B9EAFC, 0, 0);
}

uint64_t sub_100B9EAFC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100548D28;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  return sub_1011A4C60(v4, v2, v3);
}

uint64_t sub_100B9EB9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9EBBC, 0, 0);
}

uint64_t sub_100B9EBBC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1001B7B20;
  v2 = *(v0 + 24);

  return sub_1011A55FC(v2);
}

uint64_t sub_100B9EC58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9EC78, 0, 0);
}

uint64_t sub_100B9EC78()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1007D4EA0;
  v2 = *(v0 + 24);

  return sub_1011A5CC8(v2);
}

uint64_t sub_100B9ED34()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100B9EDC8;

  return sub_1011A6C24();
}

uint64_t sub_100B9EDC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100B9EEBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B9EF08(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(23);

      v4 = 0xD000000000000014;
    }

    else
    {
      _StringGuts.grow(_:)(36);

      v4 = 0xD000000000000021;
    }
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v4 = 0xD00000000000001ELL;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

Swift::Int sub_100B9F06C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD10[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B9F0F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD10[v2]);
  return Hasher._finalize()();
}

uint64_t *sub_100B9F140@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 200)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 204)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 409)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100B9F190(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      _StringGuts.grow(_:)(33);

      v5 = 0xD00000000000001ELL;
    }

    else if (a1 == 4)
    {
      _StringGuts.grow(_:)(23);

      v5 = 0xD000000000000014;
    }

    else
    {
      _StringGuts.grow(_:)(36);

      v5 = 0xD000000000000021;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(45);

      v5 = 0xD00000000000002ALL;
    }

    else
    {
      v5 = 0;
      _StringGuts.grow(_:)(51);
      v1._countAndFlagsBits = 0xD000000000000030;
      v1._object = 0x800000010136E880;
      String.append(_:)(v1);
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

Swift::Int sub_100B9F3D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD28[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B9F460(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD28[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100B9F4AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100BA09D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B9F4F8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[28] = swift_task_alloc();
  type metadata accessor for AccountCheckEndpoint(0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100B9F5CC, 0, 0);
}

uint64_t sub_100B9F5CC()
{
  v27 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v2, qword_10177C418);
  sub_100BA0908(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100BA0940(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136E910, &v26);
    *(v6 + 12) = 2080;
    v7 = *(v5 + 25);
    v8 = v5[1];
    *(v0 + 112) = *v5;
    *(v0 + 128) = v8;
    *(v0 + 137) = v7;
    sub_100BA0908(v5, v0 + 160);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v26);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = enum case for FMNAccountType.w2Accessory(_:);
  v18 = type metadata accessor for FMNAccountType();
  (*(*(v18 - 8) + 104))(v13, v17, v18);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v19 = type metadata accessor for FMNMockingPreferences();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v21 = swift_allocObject();
  sub_100BA0970(v13, v12);
  *(v0 + 256) = sub_10062468C(v12, v20, v21);
  v22 = *(v15 + 16);
  sub_100BA0908(v16, v0 + 64);

  v23 = swift_task_alloc();
  *(v0 + 264) = v23;
  *v23 = v0;
  v23[1] = sub_100B9F934;
  v24 = *(v0 + 208);

  return sub_101089060(v24, v22);
}

uint64_t sub_100B9F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = a3;

  return _swift_task_switch(sub_100B9FA38, 0, 0);
}

uint64_t sub_100B9FA38(uint64_t a1)
{
  v2 = v1[34];
  if (v2)
  {
    v4 = v1[35];
    v3 = v1[36];
    v5 = v1[32];
    v6 = swift_task_alloc();
    v1[37] = v6;
    v6[2] = v5;
    v6[3] = v2;
    v6[4] = v4;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v1[38] = v7;
    *v7 = v1;
    v7[1] = sub_100B9FC60;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 57, 0, 0, 0xD000000000000013, 0x800000010136E910, sub_100BA0AE8, v6, &type metadata for AccountCheckResult.ServerStatus);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not create pairing lock request", v10, 2u);
    }

    v11 = v1[30];

    sub_100BA0A38();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();

    sub_100BA0A8C(v11);

    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_100B9FC60()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100B9FE50;
  }

  else
  {
    v2 = sub_100B9FD94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9FD94()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);

  sub_100165328(v3, v1, v2);
  sub_100BA0A8C(v4);
  v5 = *(v0 + 57);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100B9FE50()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[30];

  sub_100165328(v3, v1, v2);
  sub_100BA0A8C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100B9FEFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = a1;
  v10 = sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  sub_1004FF48C(a3, a4, a5, 0, a2);
  v20 = *(v11 + 16);
  v20(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v19 = *(v11 + 32);
  v19(v15 + v14, v13, v10);
  Future.addFailure(block:)();

  v20(v13, v21, v10);
  v16 = swift_allocObject();
  v19(v16 + v14, v13, v10);
  Future.addSuccess(block:)();
}

uint64_t sub_100BA0114(uint64_t a1)
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in verify pairing request. %{public}@", v4, 0xCu);
    sub_100288C6C(v5);
  }

  sub_100BA0A38();
  swift_allocError();
  *v7 = 1;
  sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BA02A8(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000076D4(v11, qword_10177C418);
  v55 = *(v5 + 16);
  v56 = v5 + 16;
  v55(v10, a1, v4);
  v59 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v57 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v53 = v8;
    v58 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v61 = v18;
    *v17 = 136446210;
    sub_100BA0BEC();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a1;
    v22 = v21;
    v54 = *(v5 + 8);
    v54(v10, v58);
    v23 = sub_1000136BC(v19, v22, &v61);
    a1 = v20;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Account check response: %{public}s", v17, 0xCu);
    sub_100007BAC(v18);

    v4 = v58;
    v8 = v53;
  }

  else
  {

    v54 = *(v5 + 8);
    v54(v10, v4);
  }

  v24 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v26 = v25;
  static String.Encoding.utf8.getter();
  v27 = String.init(data:encoding:)();
  v29 = v28;
  sub_100016590(v24, v26);
  if (v29)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = a1;
      v34 = swift_slowAlloc();
      v61 = v34;
      *v32 = 136315138;
      v35 = sub_1000136BC(v27, v29, &v61);

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Account check response data: %s", v32, 0xCu);
      sub_100007BAC(v34);
      a1 = v33;
    }

    else
    {
    }
  }

  v36 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  switch(v36)
  {
    case 200:
      v37 = 0;
      goto LABEL_17;
    case 409:
      v37 = 2;
      goto LABEL_17;
    case 204:
      v37 = 1;
LABEL_17:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v61 = v41;
        *v40 = 136446210;
        v42 = sub_100B9EF08(v37);
        v44 = sub_1000136BC(v42, v43, &v61);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "AccountCheckResult: %{public}s", v40, 0xCu);
        sub_100007BAC(v41);
      }

      LOBYTE(v61) = v37;
      sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
      return CheckedContinuation.resume(returning:)();
  }

  v55(v8, a1, v4);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    v49 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v54(v8, v4);
    *(v48 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v46, v47, "Invalid AccountCheckResult %ld!", v48, 0xCu);
  }

  else
  {
    v54(v8, v4);
  }

  sub_100BA0A38();
  v50 = swift_allocError();
  *v51 = 2;
  v61 = v50;
  sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BA0970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCheckEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BA09D4(uint64_t result)
{
  if (result > 199)
  {
    switch(result)
    {
      case 200:
        return 3;
      case 204:
        return 4;
      case 409:
        return 5;
    }

    return 6;
  }

  if (result == -1)
  {
    return 0;
  }

  if (result != 1 && result != 2)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100BA0A38()
{
  result = qword_1016B70E8;
  if (!qword_1016B70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B70E8);
  }

  return result;
}

uint64_t sub_100BA0A8C(uint64_t a1)
{
  v2 = type metadata accessor for AccountCheckEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BA0AF4(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);

  return sub_100BA0114(a1);
}

uint64_t sub_100BA0B70(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100BA02A8(a1, v4);
}

unint64_t sub_100BA0BEC()
{
  result = qword_1016A62C0;
  if (!qword_1016A62C0)
  {
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62C0);
  }

  return result;
}

__n128 sub_100BA0C74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100BA0C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 41))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100BA0CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100BA0D4C()
{
  result = qword_1016B70F8;
  if (!qword_1016B70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B70F8);
  }

  return result;
}

unint64_t sub_100BA0DA4()
{
  result = qword_1016B7100;
  if (!qword_1016B7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7100);
  }

  return result;
}

unint64_t sub_100BA0DFC()
{
  result = qword_1016B7108;
  if (!qword_1016B7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7108);
  }

  return result;
}

uint64_t sub_100BA0E50()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC88);
  sub_1000076D4(v0, qword_10177BC88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BA0ED0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return _swift_task_switch(sub_100BA0F18, v0, 0);
}

uint64_t sub_100BA0F18()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_10177B348;

  return _swift_task_switch(sub_100BA0FB4, 0, 0);
}

uint64_t sub_100BA0FB4()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100BA1078;
  v2 = *(v0 + 48);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100BA1078()
{

  return _swift_task_switch(sub_100BA1190, 0, 0);
}

uint64_t sub_100BA1190()
{
  v1 = v0[4];
  v0[8] = v0[2];
  return _swift_task_switch(sub_100BA11B4, v1, 0);
}

uint64_t sub_100BA11B4()
{
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BC88);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    sub_101074D40(v5);
    *(v6 + 4) = v7;
    *(v6 + 12) = 2048;
    sub_101074D4C(v5);
    v9 = v8;

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Startup with interval = %f, minimum delay = %f", v6, 0x16u);
  }

  else
  {
  }

  v10 = v0[4];

  v11 = *(v10 + 144);
  v0[9] = v11;
  if (v11)
  {
    swift_retain_n();
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_100BA144C;
    v13 = sub_100BA5290;
    v14 = &type metadata for () + 1;
    v15 = v11;
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];
    v18 = swift_allocObject();
    v0[11] = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;

    v19 = swift_task_alloc();
    v0[12] = v19;
    v14 = type metadata accessor for XPCActivity();
    *v19 = v0;
    v19[1] = sub_100BA1578;
    v13 = sub_100BA5230;
    v12 = v0 + 3;
    v15 = v18;
  }

  return unsafeBlocking<A>(_:)(v12, v13, v15, v14);
}

uint64_t sub_100BA144C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1003C36A0, v1, 0);
}

uint64_t sub_100BA1578()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100BA16A4, v1, 0);
}

uint64_t sub_100BA16A4()
{
  v1 = v0[3];
  v0[13] = v1;

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_100BA176C;

  return unsafeBlocking<A>(_:)(v2, sub_100BA5238, v1, &type metadata for () + 1);
}

uint64_t sub_100BA176C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100BA1898, v1, 0);
}

uint64_t sub_100BA1898()
{
  *(v0[4] + 144) = v0[13];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100BA1908@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v26 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v26);
  v25 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v24 = 0x800000010136E9A0;
  static DispatchQoS.default.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v17 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v17 + 40) = v18;
  swift_unknownObjectWeakInit();
  *(v17 + 88) = 0;
  v19 = sub_1000BC488();
  v21[1] = "nRecordsPublisher";
  v21[2] = v19;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  (*(v9 + 16))(v12, v14, v8);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v23);
  v28 = _swiftEmptyArrayStorage;
  sub_100BA9404(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v17 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v17 + 24) = 0xD000000000000041;
  *(v17 + 32) = v24;
  *(v17 + 48) = sub_100BA8A98;
  *(v17 + 56) = v15;
  *(v17 + 64) = sub_100BA8AA0;
  *(v17 + 72) = v16;

  sub_100997398();

  (*(v9 + 8))(v14, v22);

  *v27 = v17;
  return result;
}

void sub_100BA1D00(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 != 2)
  {
    v14 = a1[3];
    v13 = a1[4];
    v11 = a1[1];
    v12 = a1[2];
    goto LABEL_15;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074D4C(v15);
  v5 = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_101074D40(v15);
  v7 = v6 * 0.5;
  if (COERCE__INT64(fabs(v6 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_101074D40(v15);
  v9 = v8;
  v10 = v8;

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v9 < 9.22337204e18)
  {
    v11 = v5;
    v12 = v7;
    v13 = 707;
    v3 = 256;
    v14 = v9;
LABEL_15:
    *a2 = v3;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
    a2[4] = v13;
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_100BA1EE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = a2;

      unsafeFromAsyncTask<A>(_:)();

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100BA1FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA2060();
}

uint64_t sub_100BA2060()
{
  v1[15] = v0;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for SubmitUTInfoEndpoint(0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[35] = v5;
  *v5 = v1;
  v5[1] = sub_100BA22F0;

  return daemon.getter();
}

uint64_t sub_100BA22F0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 288) = a1;

  v3 = swift_task_alloc();
  *(v2 + 296) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BA24D4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BA24D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v5 = sub_100BA46D8;
  }

  else
  {

    v5 = sub_100BA2614;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA2614()
{
  v1 = *(v0 + 304);
  static Date.trustedNow.getter(*(v0 + 272));

  return _swift_task_switch(sub_100BA2680, v1, 0);
}

uint64_t sub_100BA2680()
{

  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100BA276C;
  v3 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100BA276C()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_100BA2884, v1, 0);
}

uint64_t sub_100BA2884()
{
  v1 = v0[15];
  v0[41] = v0[10];
  return _swift_task_switch(sub_100BA28A8, v1, 0);
}

uint64_t sub_100BA28A8()
{
  v1 = v0[38];
  v0[42] = *(v0[41] + 16);

  return _swift_task_switch(sub_100BA291C, v1, 0);
}

uint64_t sub_100BA291C()
{

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100BA2A08;
  v3 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_100BA2A08()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_100BA2B20, v1, 0);
}

uint64_t sub_100BA2B20()
{
  v1 = v0[15];
  v0[44] = v0[11];
  return _swift_task_switch(sub_100BA2B44, v1, 0);
}

uint64_t sub_100BA2B44()
{
  v1 = v0[38];
  v0[45] = *(v0[44] + 16);

  return _swift_task_switch(sub_100BA2BB8, v1, 0);
}

uint64_t sub_100BA2BB8()
{

  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  v2 = sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
  *v1 = v0;
  v1[1] = sub_100BA2CA4;
  v3 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_100BA9238, v3, v2);
}

uint64_t sub_100BA2CA4()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_100BA2DBC, v1, 0);
}

uint64_t sub_100BA2DBC()
{
  v1 = v0[15];
  v0[47] = v0[12];
  return _swift_task_switch(sub_100BA2DE0, v1, 0);
}

uint64_t sub_100BA2DE0()
{
  v84 = v0;
  v71 = v0[47];
  v70 = *(v71 + 16);
  if (!v70)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_17:
    v0[48] = v6;
    v26 = v6[2];
    v3 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v27 = v0[26];
      sub_101125660(0, v26, 0);
      if (!v6[2])
      {
        goto LABEL_49;
      }

      v28 = v6;
      v3 = _swiftEmptyArrayStorage;
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = v0[39];
      v6 = *(v27 + 72);
      v31 = v0[27];
      sub_100BA9240(v28 + v29, v31, type metadata accessor for WildModeAssociationRecord);
      sub_100BA71B0(v31, &v74);
      if (v30)
      {
        sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
      }

      sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_101125660((v33 > 1), v34 + 1, 1);
        v3 = _swiftEmptyArrayStorage;
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[9 * v34];
      v36 = v77;
      *(v35 + 4) = v76;
      *(v35 + 5) = v36;
      *(v35 + 96) = v78;
      v37 = v75;
      *(v35 + 2) = v74;
      *(v35 + 3) = v37;
      if (v26 != 1)
      {
        if (v28[2] < 2uLL)
        {
          goto LABEL_49;
        }

        v55 = v6 + v29 + v28;
        v56 = 2 - v26;
        v57 = 1;
        while (1)
        {
          v58 = v0[27];
          sub_100BA9240(v55, v58, type metadata accessor for WildModeAssociationRecord);
          sub_100BA71B0(v58, &v74);
          sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
          v83 = v78;
          v81 = v76;
          v82 = v77;
          v79 = v74;
          v80 = v75;
          v60 = _swiftEmptyArrayStorage[2];
          v59 = _swiftEmptyArrayStorage[3];
          if (v60 >= v59 >> 1)
          {
            sub_101125660((v59 > 1), v60 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v60 + 1;
          v61 = &_swiftEmptyArrayStorage[9 * v60];
          *(v61 + 2) = v79;
          v62 = v80;
          v63 = v81;
          v64 = v82;
          *(v61 + 96) = v83;
          *(v61 + 4) = v63;
          *(v61 + 5) = v64;
          *(v61 + 3) = v62;
          if (v56 + v57 == 1)
          {
            break;
          }

          v55 += v6;
          if (++v57 >= v28[2])
          {
            goto LABEL_49;
          }
        }
      }

      v6 = v28;
    }

    if (qword_101694D10 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v1 = 0;
  v2 = v0[31];
  v3 = v0[25];
  v69 = v0[26];
  v4 = (v2 + 48);
  v5 = (v2 + 32);
  v66 = (v2 + 8);
  v6 = _swiftEmptyArrayStorage;
  v67 = (v2 + 48);
  v68 = v3;
  while (v1 < *(v71 + 16))
  {
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[24];
    v10 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v72 = *(v69 + 72);
    v73 = v6;
    sub_100BA9240(v0[47] + v10 + v72 * v1, v8, type metadata accessor for WildModeAssociationRecord);
    sub_1000D3410(v8 + *(v3 + 18), v9);
    v11 = *v4;
    if ((*v4)(v9, 1, v7) == 1)
    {
      sub_10000B3A8(v0[24], &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v13 = v0[29];
      v12 = v0[30];
      v14 = v0[23];
      v15 = *v5;
      (*v5)(v0[33], v0[24], v12);
      sub_1000D3410(v13 + *(v3 + 19), v14);
      v16 = v11(v14, 1, v12);
      v17 = v0[33];
      if (v16 == 1)
      {
        v18 = v0[23];
        (*v66)(v0[33], v0[30]);
        sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
        v4 = v67;
LABEL_11:
        sub_100BA95D8(v0[29], v0[28], type metadata accessor for WildModeAssociationRecord);
        v6 = v73;
        *&v79 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124B2C(0, v73[2] + 1, 1);
          v6 = v79;
        }

        v24 = v6[2];
        v23 = v6[3];
        if (v24 >= v23 >> 1)
        {
          sub_101124B2C((v23 > 1), v24 + 1, 1);
          v6 = v79;
        }

        v25 = v0[28];
        v6[2] = v24 + 1;
        sub_100BA95D8(v25, v6 + v10 + v24 * v72, type metadata accessor for WildModeAssociationRecord);
        v3 = v68;
        goto LABEL_5;
      }

      v19 = v0[32];
      v20 = v0[30];
      v15(v19, v0[23], v20);
      v21 = static Date.< infix(_:_:)();
      v22 = *v66;
      (*v66)(v19, v20);
      v22(v17, v20);
      v4 = v67;
      v3 = v68;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    sub_100BA92A8(v0[29], type metadata accessor for WildModeAssociationRecord);
    v6 = v73;
LABEL_5:
    if (v70 == ++v1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_28:
  v38 = type metadata accessor for Logger();
  v0[49] = sub_1000076D4(v38, qword_10177BC88);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v6;
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    v43 = *(v71 + 16);

    *(v42 + 4) = v43;

    *(v42 + 12) = 2048;
    *(v42 + 14) = v41[2];

    _os_log_impl(&_mh_execute_header, v39, v40, "Count of wild records is %ld, count of records to publish is %ld", v42, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (v3[2])
  {
    v44 = v0[45];
    v45 = v0[42];
    v46 = *(v0[15] + 128);

    v47 = swift_task_alloc();
    v0[50] = v47;
    *v47 = v0;
    v47[1] = sub_100BA36D8;

    return sub_1007C21F0((v45 | v44) != 0, v3, v46);
  }

  else
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[34];
    v52 = v0[30];
    v53 = v0[31];
    if (v50)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "No records to publish, skip publishing.", v54, 2u);
    }

    else
    {
    }

    (*(v53 + 8))(v51, v52);

    v65 = v0[1];

    return v65();
  }
}

uint64_t sub_100BA36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;
  v5[54] = v3;

  if (v3)
  {
    v6 = v5[15];

    v7 = sub_100BA3B78;
    v8 = v6;
  }

  else
  {
    v8 = v5[15];
    v7 = sub_100BA3804;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100BA3804()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  swift_allocObject();
  *v4 = sub_100280910();
  v8 = *(v7 + 20);
  v9 = enum case for FMNAccountType.none(_:);
  v10 = type metadata accessor for FMNAccountType();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v11 = type metadata accessor for FMNMockingPreferences();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v13 = swift_allocObject();
  sub_100BA9240(v4, v5, type metadata accessor for SubmitUTInfoEndpoint);
  v0[55] = sub_100624AA4(v5, v12, v13);
  sub_100BA92A8(v4, type metadata accessor for SubmitUTInfoEndpoint);
  v0[5] = &type metadata for SubmitUTInfo;
  v0[6] = sub_100BA9308();
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;

  sub_100017D5C(v2, v1);
  v14 = swift_task_alloc();
  v0[56] = v14;
  *v14 = v0;
  v14[1] = sub_100BA3A30;
  v15 = v0[22];

  return sub_1004E682C(v15, (v0 + 2));
}

uint64_t sub_100BA3A30()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);

    v4 = sub_100BA47E4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 120);

    sub_100007BAC((v2 + 16));
    v4 = sub_100BA3CA4;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100BA3B78()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BA3CA4(uint64_t a1)
{
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v1[58] = JSONDecoder.init()();
    v13 = swift_task_alloc();
    v1[59] = v13;
    *v13 = v1;
    v13[1] = sub_100BA3F64;
    v14 = v1[48];
    v15 = v1[34];

    return sub_100BA7CC0(v14, v15);
  }

  else
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to publish wild associated records.", v4, 2u);
    }

    v6 = v1[52];
    v5 = v1[53];
    v7 = v1[31];
    v17 = v1[30];
    v18 = v1[34];
    v8 = v1[21];
    v16 = v1[22];
    v9 = v1[20];

    sub_100BA935C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    sub_100016590(v6, v5);

    (*(v8 + 8))(v16, v9);
    (*(v7 + 8))(v18, v17);

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_100BA3F64()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100BA4934, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[61] = v4;
    *v4 = v2;
    v4[1] = sub_100BA40E4;
    v5 = v2[48];

    return sub_100BA53F0(v5);
  }
}

uint64_t sub_100BA40E4()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100BA4210, v1, 0);
}

uint64_t sub_100BA4210(uint64_t a1)
{
  v43 = v1;
  v2 = v1[60];
  v3 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v5 = v4;
  sub_100BA93B0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v7 = v1[52];
    v6 = v1[53];
    v40 = v1[34];
    v8 = v1[31];
    v9 = v1[21];
    v37 = v1[22];
    v38 = v1[30];
    v36 = v1[20];

    sub_100016590(v3, v5);

    sub_100016590(v7, v6);

    (*(v9 + 8))(v37, v36);
    (*(v8 + 8))(v40, v38);
  }

  else
  {
    sub_100016590(v3, v5);
    v10 = v1[14];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v10 + 16);

      _os_log_impl(&_mh_execute_header, v11, v12, "Got %ld records in response.", v13, 0xCu);
    }

    else
    {
    }

    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = (v10 + 64);
      v39 = v1;
      do
      {
        v22 = *(v15 - 4);
        v23 = *(v15 - 3);
        v24 = *v15;
        swift_bridgeObjectRetain_n();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v16 = v24;
          v17 = swift_slowAlloc();
          v42[0] = swift_slowAlloc();
          *v17 = 141558531;
          *(v17 + 4) = 1752392040;
          *(v17 + 12) = 2081;

          v18 = sub_1000136BC(v22, v23, v42);

          *(v17 + 14) = v18;
          *(v17 + 22) = 2080;

          if (v16)
          {
            v19 = 0x657669746361;
          }

          else
          {
            v19 = 0x7472656E69;
          }

          if (v16)
          {
            v20 = 0xE600000000000000;
          }

          else
          {
            v20 = 0xE500000000000000;
          }

          v21 = sub_1000136BC(v19, v20, v42);

          *(v17 + 24) = v21;
          _os_log_impl(&_mh_execute_header, v25, v26, "Subscription %{private,mask.hash}s, result = %s.", v17, 0x20u);
          swift_arrayDestroy();

          v1 = v39;
        }

        else
        {
        }

        v15 += 40;
        --v14;
      }

      while (v14);
    }

    v28 = v1[52];
    v27 = v1[53];
    v41 = v1[34];
    v30 = v1[30];
    v29 = v1[31];
    v32 = v1[21];
    v31 = v1[22];
    v33 = v1[20];

    sub_100016590(v28, v27);

    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v41, v30);
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_100BA46D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BA47E4()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[31];

  sub_100016590(v1, v2);

  (*(v5 + 8))(v3, v4);
  sub_100007BAC(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BA4934()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v19);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to decode wild associated records %s.", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[31];
  v17 = v0[30];
  v18 = v0[34];
  v11 = v0[21];
  v15 = v0[20];
  v16 = v0[22];
  sub_100BA935C();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();

  sub_100016590(v9, v8);

  (*(v11 + 8))(v16, v15);
  (*(v10 + 8))(v18, v17);

  v13 = v0[1];

  return v13();
}

void *sub_100BA4BF8()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000023;
  v0[15] = 0x80000001013DBD60;
  type metadata accessor for DeviceIdentityUtility(0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 11;
  v0[16] = v5;
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  UUID.init()();
  v0[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v0[18] = 0;
  return v0;
}

uint64_t sub_100BA4DF0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100BA4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100BA4F5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100BA5004()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BA0ED0();
}

uint64_t sub_100BA5090(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100BA5138()
{
  type metadata accessor for WildModeAssociationRecordsPublisher();
  sub_100BA9404(&unk_1016B10D0, v0, type metadata accessor for WildModeAssociationRecordsPublisher, &unk_1013DBE00);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BA52E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA8B54();
}

uint64_t sub_100BA5378@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = result;
  if (result)
  {
    result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  *a2 = v2 == 0;
  return result;
}

uint64_t sub_100BA53F0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[19] = v7;
  *v7 = v2;
  v7[1] = sub_100BA5570;

  return daemon.getter();
}

uint64_t sub_100BA5570(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BA5754;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BA5754(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_100BA706C;
  }

  else
  {

    v5 = sub_100BA58B8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA58B8()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 184) = v1;
  if (!v1)
  {
LABEL_13:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BC88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      *(v11 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removed %{public}ld unstaged records.", v11, 0xCu);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  v2 = 0;
  v3 = *(v0 + 104);
  *(v0 + 264) = *(v3 + 80);
  *(v0 + 192) = *(v3 + 72);
  while (1)
  {
    *(v0 + 208) = 0;
    *(v0 + 216) = v2;
    *(v0 + 200) = 0;
    v5 = *(v0 + 144);
    v6 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v2, v5, type metadata accessor for WildModeAssociationRecord);
    v7 = *(v5 + *(v6 + 64));
    if (v7 > 3)
    {
      if (*(v5 + *(v6 + 64)) > 6u)
      {
        if (v7 != 7)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (v7 != 5 && v7 != 6)
      {
        break;
      }
    }

LABEL_3:
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_21;
    }

LABEL_4:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v2 = *(v0 + 216) + 1;
    if (v2 == *(v0 + 184))
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  v14 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v14, 0);
}

uint64_t sub_100BA5C48()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[18], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[28] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_100BA5DA4;
  v8 = v0[17];
  v9 = v0[12];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v6, v9);
}

uint64_t sub_100BA5DA4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_100BA63A4;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100BA5ECC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BA5ECC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + *(*(v0 + 96) + 64));
  if (v2 <= 3)
  {
    goto LABEL_9;
  }

  if (*(v1 + *(*(v0 + 96) + 64)) <= 5u)
  {
    if (v2 == 4)
    {

LABEL_10:
      v4 = *(v0 + 176);
      v5 = sub_100BA6A14;
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v2 == 6 || v2 == 7)
  {
LABEL_9:
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_10;
    }

    v1 = *(v0 + 136);
  }

  v6 = *(v0 + 144);
  sub_100BA92A8(v1, type metadata accessor for WildModeAssociationRecord);
  sub_100BA92A8(v6, type metadata accessor for WildModeAssociationRecord);
  v18 = *(v0 + 200);
  v7 = *(v0 + 216) + 1;
  if (v7 == *(v0 + 184))
  {
LABEL_13:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BC88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removed %{public}ld unstaged records.", v11, 0xCu);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  while (1)
  {
    *(v0 + 216) = v7;
    *(v0 + 200) = v18;
    v15 = *(v0 + 144);
    v16 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v7, v15, type metadata accessor for WildModeAssociationRecord);
    v17 = *(v15 + *(v16 + 64));
    if (v17 > 3)
    {
      if (*(v15 + *(v16 + 64)) > 6u)
      {
        if (v17 != 7)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v17 != 5 && v17 != 6)
      {
        break;
      }
    }

LABEL_21:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_32;
    }

LABEL_22:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v7 = *(v0 + 216) + 1;
    if (v7 == *(v0 + 184))
    {
      goto LABEL_13;
    }
  }

LABEL_32:
  v4 = *(v0 + 176);
  v5 = sub_100BA5C48;
LABEL_33:

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA63A4()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100BA6410, v1, 0);
}

uint64_t sub_100BA6410()
{
  v32 = v0;
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177BC88);
  sub_100BA9240(v1, v2, type metadata accessor for WildModeAssociationRecord);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100BA9404(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v6;
    v11 = v10;
    sub_100BA92A8(v7, type metadata accessor for WildModeAssociationRecord);
    v12 = sub_1000136BC(v9, v11, &v31);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2082;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v31);

    *(v8 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "    Failed to get wild mode beacon for identifier %{private,mask.hash}s\n    Error: %{public}s", v8, 0x20u);
    swift_arrayDestroy();

    v16 = v29;
  }

  else
  {

    sub_100BA92A8(v7, type metadata accessor for WildModeAssociationRecord);
    v16 = v6;
  }

  sub_100BA92A8(v16, type metadata accessor for WildModeAssociationRecord);
  v30 = *(v0 + 200);
  v17 = *(v0 + 216) + 1;
  if (v17 == *(v0 + 184))
  {
LABEL_7:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v28, qword_10177BC88);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "Removed %{public}ld unstaged records.", v20, 0xCu);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  while (1)
  {
    *(v0 + 216) = v17;
    *(v0 + 200) = v30;
    v24 = *(v0 + 144);
    v25 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v17, v24, type metadata accessor for WildModeAssociationRecord);
    v26 = *(v24 + *(v25 + 64));
    if (v26 > 3)
    {
      if (*(v24 + *(v25 + 64)) > 6u)
      {
        if (v26 != 7)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v26 != 5 && v26 != 6)
      {
        break;
      }
    }

LABEL_15:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_26;
    }

LABEL_16:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v17 = *(v0 + 216) + 1;
    if (v17 == *(v0 + 184))
    {
      goto LABEL_7;
    }
  }

LABEL_26:
  v27 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v27, 0);
}

uint64_t sub_100BA6A14()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  sub_100BA9240(*(v0 + 144), v2, type metadata accessor for WildModeAssociationRecord);
  v4 = swift_allocObject();
  *(v0 + 248) = v4;
  *(v4 + 16) = v1;
  sub_100BA95D8(v2, v4 + v3, type metadata accessor for WildModeAssociationRecord);

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_100BA6B70;

  return unsafeBlocking<A>(context:_:)(v5, 0xD000000000000010, 0x800000010134A8C0, sub_100BA944C, v4, &type metadata for () + 1);
}