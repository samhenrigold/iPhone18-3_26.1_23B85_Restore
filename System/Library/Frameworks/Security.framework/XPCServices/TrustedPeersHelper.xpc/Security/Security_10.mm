void sub_100133C2C(void *a1, id a2, void (*a3)(void, void, void), uint64_t a4, char *a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, int a17)
{
  v107 = a7;
  v108 = a4;
  v106 = a3;
  v22 = sub_1002163D4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    HIDWORD(v100) = a17;
    v98 = a15;
    v99 = a16;
    v96 = a13;
    v97 = a14;
    v95 = a1;
    v105 = a11;
    v94 = a10;
    v28 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v101 = a5;
    v103 = v28;
    v104 = a9;
    v29 = *(v23 + 16);
    v93 = v26;
    v29(&v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a12, v26);
    v30 = (*(v23 + 80) + 96) & ~*(v23 + 80);
    v31 = (v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = a6;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = a5;
    *(v33 + 24) = a6;
    *(v33 + 32) = v107;
    *(v33 + 40) = a8;
    v34 = v94;
    *(v33 + 48) = v104;
    *(v33 + 56) = v34;
    v35 = v106;
    v36 = v95;
    *(v33 + 64) = v105;
    *(v33 + 72) = v36;
    v37 = v108;
    *(v33 + 80) = v35;
    *(v33 + 88) = v37;
    (*(v23 + 32))(v33 + v30, v27, v93);
    v38 = (v33 + v31);
    a2 = v97;
    *v38 = v96;
    v38[1] = a2;
    v39 = (v33 + v32);
    v40 = v99;
    *v39 = v98;
    v39[1] = v40;
    *(v33 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8)) = HIDWORD(v100);
    v41 = swift_allocObject();
    *v41->endpoint = sub_1001A9690;
    *v41->containerMap = v33;
    aBlock[4] = sub_1001ACCC0;
    v110 = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282B08;
    v42 = _Block_copy(aBlock);
    v43 = v110;
    v44 = v36;
    v45 = v101;
    v46 = v107;
    v47 = a8;

    v43, v48, v49, v50, v51, v52, v53, v54;
    [v103 performBlockAndWait:v42];

    _Block_release(v42);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();
    v33, v55, v56, v57, v58, v59, v60, v61;
    v41, v62, v63, v64, v65, v66, v67, v68;
    if ((v44 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v69 = sub_100216774();
  sub_100002648(v69, qword_10029D160);
  v70 = a2;
  swift_errorRetain();
  v71 = sub_100216754();
  v72 = sub_100216C74();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136446210;
    v111 = v70;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v75 = sub_100216994();
    v77 = v76;
    v78 = sub_100005FB0(v75, v76, aBlock);
    v77, v79, v80, v81, v82, v83, v84, v85, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102;
    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v71, v72, "handle: no signing key pair: %{public}s", v73, 0xCu);
    sub_100006128(v74, v86, v87, v88, v89, v90, v91, v92);
  }

  v106(0, 0, v70);
}

uint64_t sub_1001340D8(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, uint64_t a8, void (*a9)(void, void, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _TtC18TrustedPeersHelper6Client *a14, void *a15, int a16)
{
  v278 = a8;
  v282 = a7;
  v281 = a6;
  v287 = a5;
  v20 = sub_1002163D4();
  v274 = *(v20 - 1);
  __chkstk_darwin(v20, v21);
  v273 = v22;
  v279 = &v266 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  __chkstk_darwin(v272, v23);
  v25 = &v266 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for SignedPeerDynamicInfo(0);
  __chkstk_darwin(v271, v26);
  v28 = (&v266 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = type metadata accessor for SignedCustodianRecoveryKey(0);
  __chkstk_darwin(v276, v29);
  containerMap = &v266 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v32 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v33 = *(a2 + 24);
  v291[0] = 0;
  v286 = a3;
  v34 = [v32 getViewsForCRK:v33 donorPermanentInfo:a3 donorStableInfo:a4 error:v291];
  v35 = v291[0];
  if (!v34)
  {
    v76 = v291[0];
    v77 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    a9(0, 0, v77);
  }

  v267 = v20;
  v268 = v28;
  v269 = v25;
  v270 = a1;
  v283 = a2;
  v284 = a9;
  v285 = a10;
  v36 = v34;
  v37 = sub_100216BB4();
  v38 = v35;

  v290 = _swiftEmptyArrayStorage;
  v46 = v287;
  v47 = v287 & 0xFFFFFFFFFFFFFF8;
  if (v287 >> 62)
  {
    goto LABEL_44;
  }

  v48 = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v275 = containerMap;
  if (v48)
  {
    v49 = 0;
    v50 = v46 & 0xC000000000000001;
    v51 = v46 + 32;
    v280 = _swiftEmptyArrayStorage;
    containerMap = v37[1].containerMap;
    v46 = 0x100293000;
    v289 = v48;
    *&v288 = v50;
    while (1)
    {
      if (v50)
      {
        v52 = sub_100217014();
      }

      else
      {
        if (v49 >= *(v47 + 16))
        {
          goto LABEL_43;
        }

        v52 = *(v51 + 8 * v49);
      }

      v53 = v52;
      v54 = __OFADD__(v49, 1);
      v49 = (v49 + 1);
      if (v54)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v48 = sub_1002170F4();
        goto LABEL_4;
      }

      if (([v52 *(v46 + 3328)] & 1) == 0)
      {
        v55 = v47;
        v56 = [v53 tlk];
        v57 = [v56 zoneID];

        v58 = [v57 zoneName];
        v59 = sub_100216974();
        v61 = v60;

        if (*v37->endpoint)
        {
          sub_100217264();
          sub_1002169C4();
          v69 = sub_100217284();
          v70 = -1 << v37[1]._TtCs12_SwiftObject_opaque[0];
          v71 = v69 & ~v70;
          if ((*&containerMap[(v71 >> 3) & 0xFFFFFFFFFFFFFF8] >> v71))
          {
            v72 = ~v70;
            while (1)
            {
              v73 = (*v37[1].endpoint + 16 * v71);
              v62 = v73[1];
              v74 = *v73 == v59 && v62 == v61;
              if (v74 || (sub_1002171A4() & 1) != 0)
              {
                break;
              }

              v71 = (v71 + 1) & v72;
              if (((*&containerMap[(v71 >> 3) & 0xFFFFFFFFFFFFFF8] >> v71) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v61, v62, v63, v64, v65, v66, v67, v68, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
            v75 = [v53 tlk];

            v47 = v55;
            v50 = v288;
            v48 = v289;
            v46 = 0x100293000;
            if (v75)
            {
              sub_100216B04();
              if (*((v290 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v290 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_100216B44();
                v50 = v288;
              }

              sub_100216B64();
              v280 = v290;
              v48 = v289;
            }

            goto LABEL_8;
          }
        }

LABEL_6:
        v61, v62, v63, v64, v65, v66, v67, v68, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
        v47 = v55;
        v50 = v288;
        v48 = v289;
        v46 = &selRef_hasPeerWithID_error_;
      }

LABEL_8:
      if (v49 == v48)
      {
        goto LABEL_31;
      }
    }
  }

  v280 = _swiftEmptyArrayStorage;
LABEL_31:
  v37, v39, v40, v41, v42, v43, v44, v45, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v78 = v283;
  v79 = *(v283 + 16);
  v80 = [v286 epoch];
  if (v80 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v81 = v280;
  v82 = sub_10010C3CC(v280, v79, v79, v80);
  v81, v83, v84, v85, v86, v87, v88, v89, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;

  v289 = v82;
  v91 = v275;
  *v275 = xmmword_10021D470;
  *(v91 + 1) = xmmword_10021D470;
  v288 = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v92 = [*(v78 + 24) data];
  v93 = sub_100216224();
  v95 = v94;

  sub_100002BF0(*v91, *(v91 + 1), v96, v97, v98, v99, v100, v101);
  *v91 = v93;
  *(v91 + 1) = v95;
  v102 = [*(v78 + 24) sig];
  v103 = sub_100216224();
  v105 = v104;

  sub_100002BF0(*(v91 + 2), *(v91 + 3), v106, v107, v108, v109, v110, v111);
  *(v91 + 2) = v103;
  *(v91 + 3) = v105;
  v112 = [*(v78 + 24) peerID];
  v113 = sub_100216974();
  v115 = v114;

  v116 = v270;
  v117 = *&v270[v277];
  v118 = sub_100216964();
  sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_10021D600;
  *(v119 + 32) = v113;
  *(v119 + 40) = v115;

  v120.super.isa = sub_100216B14().super.isa;
  v119, v121, v122, v123, v124, v125, v126, v127, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v128 = [*&v116[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v129 = &_swiftEmptySetSingleton;
  if (v128)
  {
    v130 = v128;
    v291[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v291[0])
    {
      v129 = v291[0];
    }
  }

  sub_100108644(v129);
  v132 = v131;
  v129, v133, v134, v135, v136, v137, v138, v139, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v140 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v132, v142, v143, v144, v145, v146, v147, v148, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v149 = [v140 initWithEntries:isa];

  v291[0] = 0;
  v150 = [v117 calculateDynamicInfoForPeerWithID:v118 addingPeerIDs:v120.super.isa removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:v278 currentMachineIDs:v149 error:v291];

  v151 = v291[0];
  if (!v150)
  {
    v224 = v291[0];
    v115, v225, v226, v227, v228, v229, v230, v231, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
    v289, v232, v233, v234, v235, v236, v237, v238, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
    v46 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 == -1)
    {
LABEL_38:
      v239 = sub_100216774();
      sub_100002648(v239, qword_10029D160);
      swift_errorRetain();
      v240 = sub_100216754();
      v241 = sub_100216C74();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v291[0] = v243;
        *v242 = 136446210;
        v290 = v46;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v244 = sub_100216994();
        v246 = v245;
        v247 = sub_100005FB0(v244, v245, v291);
        v246, v248, v249, v250, v251, v252, v253, v254, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
        *(v242 + 4) = v247;
        _os_log_impl(&_mh_execute_header, v240, v241, "Error preparing dynamic info: %{public}s", v242, 0xCu);
        sub_100006128(v243, v255, v256, v257, v258, v259, v260, v261);
      }

      v262 = v284;
      v263 = v275;
      swift_errorRetain();
      v262(0, 0, v46);

      v223 = v263;
      return sub_1001AC1E4(v223, type metadata accessor for SignedCustodianRecoveryKey);
    }

LABEL_46:
    swift_once();
    goto LABEL_38;
  }

  LODWORD(v287) = a16;
  v286 = a15;
  v280 = a14;
  v278 = a13;
  v277 = a12;
  v152 = v268;
  v153 = v288;
  *v268 = v288;
  v152[1] = v153;
  v154 = v151;
  v155 = v150;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  *&v288 = v155;
  v156 = [v155 data];
  v157 = sub_100216224();
  v159 = v158;

  sub_100002BF0(*v152, *(v152 + 1), v160, v161, v162, v163, v164, v165);
  *v152 = v157;
  *(v152 + 1) = v159;
  v166 = [v155 sig];
  v167 = sub_100216224();
  v169 = v168;

  sub_100002BF0(*(v152 + 2), *(v152 + 3), v170, v171, v172, v173, v174, v175);
  *(v152 + 2) = v167;
  *(v152 + 3) = v169;
  __chkstk_darwin(v176, v177);
  v178 = v282;
  *(&v266 - 8) = v281;
  *(&v266 - 7) = v178;
  *(&v266 - 6) = v113;
  *(&v266 - 5) = v115;
  v179 = v289;
  *(&v266 - 4) = v275;
  *(&v266 - 3) = v179;
  v264 = v180;
  v265 = v270;
  v181 = v270;
  sub_1001A13C4(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);
  sub_100216654();
  v179, v182, v183, v184, v185, v186, v187, v188, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v115, v189, v190, v191, v192, v193, v194, v195, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275;
  v196 = v181;
  v197 = *&v181[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  v289 = *&v181[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v281 = v197;
  v282 = sub_100006484(&v181[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v289);
  v198 = v274;
  v199 = v267;
  (*(v274 + 2))(v279, a11, v267);
  v200 = (*(v198 + 80) + 24) & ~*(v198 + 80);
  v201 = (v273 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
  v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF8;
  v203 = (v202 + 23) & 0xFFFFFFFFFFFFFFF8;
  v204 = (v203 + 19) & 0xFFFFFFFFFFFFFFF8;
  v205 = swift_allocObject();
  *v205->endpoint = v196;
  v198[4](&v205->_TtCs12_SwiftObject_opaque[v200], v279, v199);
  *&v205->_TtCs12_SwiftObject_opaque[v201] = v283;
  v206 = &v205->_TtCs12_SwiftObject_opaque[v202];
  v207 = v278;
  *v206 = v277;
  v206[1] = v207;
  v208 = &v205->_TtCs12_SwiftObject_opaque[v203];
  v209 = v286;
  *v208 = v280;
  *(v208 + 1) = v209;
  *&v205->_TtCs12_SwiftObject_opaque[v204] = v287;
  v210 = &v205->_TtCs12_SwiftObject_opaque[(v204 + 11) & 0xFFFFFFFFFFFFFFF8];
  v211 = v285;
  *v210 = v284;
  *(v210 + 1) = v211;
  v212 = v281[2];
  v213 = *(v212 + 48);
  v214 = v196;

  v215 = v269;
  v213(v269, sub_1001A9794, v205, v289, v212);
  v205, v216, v217, v218, v219, v220, v221, v222;

  sub_1001AC1E4(v215, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_1001AC1E4(v268, type metadata accessor for SignedPeerDynamicInfo);
  v223 = v275;
  return sub_1001AC1E4(v223, type metadata accessor for SignedCustodianRecoveryKey);
}

void sub_100134F10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v79 = a7;
  v81 = a8;
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v12 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v12 - 8, v13);
  v85 = &v75 - v14;
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  v82 = *(v15 - 1);
  v83 = v15;
  __chkstk_darwin(v15, v16);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v75 - v20;
  v22 = type metadata accessor for Peer(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + v27);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v29 = sub_1000CB2E0(v29);
    *(a1 + v27) = v29;
  }

  swift_beginAccess();
  v30 = *(v29 + 5);
  *(v29 + 4) = a2;
  *(v29 + 5) = a3;

  v30, v31, v32, v33, v34, v35, v36, v37, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
  __chkstk_darwin(v38, v39);
  v40 = v76;
  *(&v75 - 4) = v75;
  *(&v75 - 3) = v40;
  *(&v75 - 2) = v77;
  sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_100216654();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + v27);
  if ((v41 & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v42 = sub_1000CB2E0(v42);
    *(a1 + v27) = v42;
  }

  sub_1001AC038(v26, v21, type metadata accessor for Peer);
  (*(v23 + 56))(v21, 0, 1, v22);
  v43 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v21, &v42->_TtCs12_SwiftObject_opaque[v43], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v27);
  if ((v44 & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v45 = sub_1000CB2E0(v45);
    *(a1 + v27) = v45;
  }

  v46 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v47 = *&v45->_TtCs12_SwiftObject_opaque[v46];
  *&v45->_TtCs12_SwiftObject_opaque[v46] = v79;

  v47, v48, v49, v50, v51, v52, v53, v54, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
  v55 = v80;
  sub_1001AC0A0(v81, v80, type metadata accessor for SignedPeerDynamicInfo);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a1 + v27);
  if ((v56 & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v57 = sub_1000CB2E0(v57);
    *(a1 + v27) = v57;
  }

  v58 = v85;
  sub_1001AC038(v55, v85, type metadata accessor for SignedPeerDynamicInfo);
  (*(v82 + 7))(v58, 0, 1, v83);
  v59 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v58, &v57->_TtCs12_SwiftObject_opaque[v59], &unk_10029D760, &qword_10021E810);
  swift_endAccess();
  v60 = [*(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v60)
  {
    v61 = v60;
    v62 = sub_100216974();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xE000000000000000;
  }

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(a1 + v27);
  if ((v65 & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v66 = sub_1000CB2E0(v66);
    *(a1 + v27) = v66;
  }

  swift_beginAccess();
  v67 = *v66->containerMap;
  *v66->endpoint = v62;
  *v66->containerMap = v64;
  v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
}

uint64_t sub_1001354C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 1);

  v13, v14, v15, v16, v17, v18, v19, v20, v23[0], v23[1], v23[2], v23[3], v23[4], v24, v25, v26, vars0, vars8;
  *a1 = a2;
  *(a1 + 1) = a3;
  sub_1001AC0A0(a4, v12, type metadata accessor for SignedCustodianRecoveryKey);
  v21 = *(type metadata accessor for Peer(0) + 44);
  sub_1000114D4(&a1[v21], &unk_10029D7B0, &unk_10021E820);
  sub_1001AC038(v12, &a1[v21], type metadata accessor for SignedCustodianRecoveryKey);
  return (*(v9 + 56))(&a1[v21], 0, 1, v8);
}

void sub_100135628(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9, void (*a10)(void, void, uint64_t), uint64_t a11)
{
  v99 = a6;
  v100 = a8;
  v97 = a5;
  v98 = a7;
  v101 = a4;
  v96 = a3;
  v105 = a11;
  v106 = a2;
  v104 = a10;
  v103 = sub_1002163D4();
  v12 = *(v103 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v103, v14);
  v102 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  v95 = *(v15 - 8);
  v16 = v95[8];
  v18 = __chkstk_darwin(v15 - 8, v17);
  v19 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v91 - v21;
  v23 = sub_10001148C(&qword_100298450, &unk_10021DEC0);
  __chkstk_darwin(v23, v24);
  v26 = (&v91 - v25);
  sub_100019C6C(a1, &v91 - v25, &qword_100298450, &unk_10021DEC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v104;
    v28 = *v26;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v29 = sub_100216774();
    sub_100002648(v29, qword_10029D160);
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      v109 = v28;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = v35;
      v37 = sub_100005FB0(v34, v35, aBlock);
      v36, v38, v39, v40, v41, v42, v43, v44, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100;
      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "CreateCustodianRecoveryKey failed: %{public}s", v32, 0xCu);
      sub_100006128(v33, v45, v46, v47, v48, v49, v50, v51);
    }

    swift_errorRetain();
    v27(0, 0, v28);
  }

  else
  {
    HIDWORD(v92) = a9;
    v91 = type metadata accessor for AddCustodianRecoveryKeyResponse;
    v94 = v22;
    sub_1001AC038(v26, v22, type metadata accessor for AddCustodianRecoveryKeyResponse);
    v93 = *&v106[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v22, v19, type metadata accessor for AddCustodianRecoveryKeyResponse);
    (*(v12 + 16))(v102, v96, v103);
    v52 = (*(v95 + 80) + 24) & ~*(v95 + 80);
    v53 = (v16 + *(v12 + 80) + v52) & ~*(v12 + 80);
    v54 = (v13 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 19) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *v58->endpoint = v106;
    sub_1001AC038(v19, &v58->_TtCs12_SwiftObject_opaque[v52], v91);
    (*(v12 + 32))(&v58->_TtCs12_SwiftObject_opaque[v53], v102, v103);
    *&v58->_TtCs12_SwiftObject_opaque[v54] = v101;
    v59 = &v58->_TtCs12_SwiftObject_opaque[v55];
    v60 = v98;
    v62 = v99;
    v61 = v100;
    *v59 = v97;
    *(v59 + 1) = v62;
    v63 = &v58->_TtCs12_SwiftObject_opaque[v56];
    *v63 = v60;
    *(v63 + 1) = v61;
    *&v58->_TtCs12_SwiftObject_opaque[v57] = HIDWORD(v92);
    v64 = &v58->_TtCs12_SwiftObject_opaque[(v57 + 11) & 0xFFFFFFFFFFFFFFF8];
    v65 = v105;
    *v64 = v104;
    *(v64 + 1) = v65;
    v66 = swift_allocObject();
    *v66->endpoint = sub_1001A9874;
    *v66->containerMap = v58;
    aBlock[4] = sub_1001ACCC0;
    v108 = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282BA8;
    v67 = _Block_copy(aBlock);
    v68 = v108;
    v69 = v106;

    v68, v70, v71, v72, v73, v74, v75, v76;
    [v93 performBlockAndWait:v67];
    _Block_release(v67);
    sub_1001AC1E4(v94, type metadata accessor for AddCustodianRecoveryKeyResponse);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();
    v58, v77, v78, v79, v80, v81, v82, v83;
    v66, v84, v85, v86, v87, v88, v89, v90;
    if (v67)
    {
      __break(1u);
    }
  }
}

void sub_100135C3C(uint64_t a1, uint64_t *a2, void *a3, id *a4, void *a5, uint64_t a6, void *a7, void *a8, unsigned int a9, void (*a10)(void *, id, void), void *a11)
{
  v93 = a7;
  v94 = a8;
  v91 = a5;
  v92 = a6;
  v89 = a3;
  v90 = a4;
  v95 = a11;
  v99 = sub_100216424();
  v96 = *(v99 - 8);
  v13 = __chkstk_darwin(v99, v12);
  v98 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = &v87 - v16;
  v18 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v87 - v20;
  v22 = type metadata accessor for Changes(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  sub_100019C6C(a2 + *(v27 + 24), v21, &unk_10029D750, &qword_10021E850);
  v28 = *(v23 + 48);
  if (v28(v21, 1, v22) == 1)
  {
    *v26 = 0;
    *(v26 + 1) = 0xE000000000000000;
    *(v26 + 2) = _swiftEmptyArrayStorage;
    *(v26 + 24) = xmmword_10021D470;
    *(v26 + 40) = xmmword_10021D470;
    v26[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v21, 1, v22) != 1)
    {
      sub_1000114D4(v21, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v21, v26, type metadata accessor for Changes);
  }

  sub_100174C2C(v26, 0);
  sub_1001AC1E4(v26, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  HIDWORD(v87) = a9;
  v29 = sub_100216774();
  sub_100002648(v29, qword_10029D160);
  v30 = sub_100216754();
  v31 = sub_100216C54();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "CreateCustodianRecoveryKey succeeded", v32, 2u);
  }

  v88 = a10;

  v33 = *a2;
  v100 = _swiftEmptyArrayStorage;
  v34 = *(v33 + 16);
  if (v34)
  {
    v97 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v35 = *v96->endpoint;
    v36 = v33 + ((v96[2].endpoint[0] + 32) & ~v96[2].endpoint[0]);
    v37 = *&v96[2]._TtCs12_SwiftObject_opaque[8];
    v38 = &v96->_TtCs12_SwiftObject_opaque[8];
    v96 = _swiftEmptyArrayStorage;
    do
    {
      v39 = v99;
      v35(v17, v36, v99);
      v35(v98, v17, v39);
      v40 = sub_100216D94();
      (*v38)(v17, v39);
      if (v40)
      {
        sub_100216B04();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v96 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v96 = v100;
      }

      v36 += v37;
      --v34;
    }

    while (v34);
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
  }

  sub_1002163A4();
  v42 = v41;
  v43 = v90;
  v44 = [objc_msgSend(v90[3] "encryptionPublicKey")];
  swift_unknownObjectRelease();
  v45 = sub_100216224();
  v47 = v46;

  v48 = [objc_msgSend(v43[3] "signingPublicKey")];
  swift_unknownObjectRelease();
  v49 = sub_100216224();
  v51 = v50;

  v52 = objc_allocWithZone(TrustedPeersHelperCustodianRecoveryKey);
  v53 = sub_100216964();
  v42, v54, v55, v56, v57, v58, v59, v60, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
  isa = sub_100216204().super.isa;
  sub_100002BF0(v45, v47, v62, v63, v64, v65, v66, v67);
  v68 = sub_100216204().super.isa;
  sub_100002BF0(v49, v51, v69, v70, v71, v72, v73, v74);
  v75 = sub_100216964();
  v76 = sub_100216964();
  v77 = [v52 initWithUUID:v53 encryptionKey:isa signingKey:v68 recoveryString:v75 salt:v76 kind:HIDWORD(v87)];

  v78 = v77;
  v79 = v96;
  (v88)(v96, v77, 0);
  v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
}

uint64_t sub_10013641C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "removeCustodianRecoveryKey complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000027, 0x800000010023C3B0, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

void sub_100136644(char *a1, void (*a2)(id), _TtC18TrustedPeersHelper6Client *a3, uint64_t a4)
{
  v8 = sub_1002163D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v14 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v14)
  {
    v152 = a2;
    v153 = a3;
    v15 = v14;
    v16 = sub_100216974();
    v18 = v17;

    v19 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    isa = sub_1002163B4().super.isa;
    v154 = [v19 findCustodianRecoveryKeyWithUUID:isa];

    if (v154)
    {
      v28 = [v154 peerID];
      v29 = sub_100216974();
      v31 = v30;

      if (v29 == v16 && v31 == v18)
      {
        v31, v32, v33, v34, v35, v36, v37, v38, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
        goto LABEL_21;
      }

      v40 = sub_1002171A4();
      v18, v41, v42, v43, v44, v45, v46, v47, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
      if (v40)
      {
        v18 = v31;
LABEL_21:
        v18, v48, v49, v50, v51, v52, v53, v54, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
        v83 = v152;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v84 = sub_100216774();
        sub_100002648(v84, qword_10029D160);
        v85 = sub_100216754();
        v86 = sub_100216C54();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v85, v86, "Self-distrust via peerID not allowed", v87, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v88 = xmmword_100225FE0;
        *(v88 + 16) = 13;
        v83();

        v89 = v154;

        return;
      }

      sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10021D600;
      *(inited + 32) = v29;
      *(inited + 40) = v31;

      v92 = sub_100190BF4(inited);
      swift_setDeallocating();
      sub_1000608EC(inited + 32);
      v93 = *&a1[v13];
      swift_bridgeObjectRetain_n();
      v94 = a1;
      v95 = v154;
      swift_retain_n();
      v96 = v94;
      v97 = v95;
      v98 = [v93 egoPeerID];
      if (v98)
      {
        v99 = v98;
        v100 = sub_100216974();
        v102 = v101;

        strcpy(v155, "signing-key ");
        BYTE5(v155[1]) = 0;
        HIWORD(v155[1]) = -5120;
        v158._countAndFlagsBits = v100;
        v158._object = v102;
        sub_100216A14(v158);
        v104 = v155[0];
        v103 = v155[1];

        v105 = v96;
        v154 = v96;
        v106 = v97;
        v107 = v105;
        v108 = v106;

        v109 = v104;
        v110 = v153;
        sub_100199120(v109, v103, v107, v100, v102, v92, v107, v29, v31, v108, v152, v153);
        v103, v111, v112, v113, v114, v115, v116, v117, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];

        v97 = v106;
        v96 = v154;
        swift_bridgeObjectRelease_n();
        v92, v118, v119, v120, v121, v122, v123, v124, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
        swift_bridgeObjectRelease_n();

        v110, v125, v126, v127, v128, v129, v130, v131;
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v139 = sub_100216774();
        sub_100002648(v139, qword_10029D160);
        v140 = sub_100216754();
        v141 = sub_100216C54();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&_mh_execute_header, v140, v141, "No dynamic info for self?", v142, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v143 = xmmword_10021DA90;
        *(v143 + 16) = 13;
        (v152)();

        v31, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
      }

      v92, v132, v133, v134, v135, v136, v137, v138, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v18, v21, v22, v23, v24, v25, v26, v27, v151, v152, v153, 0, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v60 = sub_100216774();
      sub_100002648(v60, qword_10029D160);
      (*(v9 + 16))(v12, a4, v8);
      v61 = sub_100216754();
      v62 = sub_100216C54();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v155[0] = v64;
        *v63 = 136446210;
        sub_1001A13C4(&qword_10029D738, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v65 = sub_100217174();
        v67 = v66;
        (*(v9 + 8))(v12, v8);
        v68 = sub_100005FB0(v65, v67, v155);
        v67, v69, v70, v71, v72, v73, v74, v75, v151, v152, v153, v154, v155[0], v155[1], *v156, *&v156[8], *&v156[16], *&v156[24];
        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v61, v62, "Unable to find custodian recovery key %{public}s on model", v63, 0xCu);
        sub_100006128(v64, v76, v77, v78, v79, v80, v81, v82);
      }

      else
      {

        (*(v9 + 8))(v12, v8);
      }

      sub_1000561D0();
      swift_allocError();
      *v90 = xmmword_10021DC00;
      *(v90 + 16) = 13;
      (v152)();
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v55 = sub_100216774();
    sub_100002648(v55, qword_10029D160);
    v56 = sub_100216754();
    v57 = sub_100216C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No dynamic info for self?", v58, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v59 = xmmword_10021DA90;
    *(v59 + 16) = 13;
    (a2)();
  }
}

void sub_100136F74(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    (a6)(a1, a2, a3, a4, a5);
    sub_100186C6C(v6, v7, v32, v33, v34, v35, v36, v37);
    return;
  }

  v38 = a6;
  v11 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  v13 = swift_allocObject();
  v6 = sub_1001ACE74;
  *v13->endpoint = sub_1001ACE74;
  *v13->containerMap = v7;
  aBlock[4] = sub_1001ACCC0;
  v40 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100282A68;
  v14 = _Block_copy(aBlock);
  v15 = v40;
  v16 = a2;

  v17 = a5;

  v15, v18, v19, v20, v21, v22, v23, v24;
  [v11 performBlockAndWait:v14];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();
  v13, v25, v26, v27, v28, v29, v30, v31;
  if ((v11 & 1) == 0)
  {
    a6 = v38;
    a1 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10013712C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = sub_100216964();
  [v6 removeCustodianRecoveryKey:v7];

  v8 = type metadata accessor for CustodianRecoveryKeyMO();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
  v10 = [a4 data];
  v11 = sub_100216224();
  v13 = v12;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v11, v13, v15, v16, v17, v18, v19, v20);
  [v9 setCrkInfo:isa];

  v21 = [a4 sig];
  v22 = sub_100216224();
  v24 = v23;

  v25 = sub_100216204().super.isa;
  sub_100002BF0(v22, v24, v26, v27, v28, v29, v30, v31);
  [v9 setCrkInfoSig:v25];

  v32 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  sub_10001148C(&qword_10029D150, &qword_100226560);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10021D600;
  *(v33 + 56) = v8;
  *(v33 + 32) = v9;
  sub_10000200C(0, &unk_10029D790, NSSet_ptr);
  v34 = v32;
  v35 = v9;
  v36 = sub_100216D64();
  [v34 removeCustodianRecoveryKeys:v36];
}

uint64_t sub_100137358(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "findCustodianRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023C380, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

void sub_100137598(uint64_t a1, uint64_t a2, void (*a3)(id, void *))
{
  v5 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  isa = sub_1002163B4().super.isa;
  v8 = [v6 findCustodianRecoveryKeyWithUUID:isa];

  if (!v8)
  {
    a3(0, 0);
    return;
  }

  v9 = *(a1 + v5);
  v92 = 0;
  v10 = v8;
  v11 = [v9 isCustodianRecoveryKeyTrusted:v10 error:&v92];
  v12 = v92;
  if (v92)
  {
    swift_willThrow();
    v13 = qword_100297520;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    v16 = v14;
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v16;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "error determine whether CRK is trusted: %{public}@", v19, 0xCu);
      sub_1000114D4(v20, &qword_10029D580, &unk_10021CCC0);
    }

    v23 = v16;
    a3(0, v12);
  }

  else
  {
    if (v11)
    {
      v24 = sub_1002163A4();
      v88 = v25;
      v90 = v24;
      v26 = [objc_msgSend(v10 "encryptionPublicKey")];
      swift_unknownObjectRelease();
      v27 = sub_100216224();
      v29 = v28;

      v30 = [objc_msgSend(v10 "signingPublicKey")];
      swift_unknownObjectRelease();
      v31 = sub_100216224();
      v33 = v32;

      HIDWORD(v85) = [v10 kind];
      v34 = objc_allocWithZone(TrustedPeersHelperCustodianRecoveryKey);
      v35 = sub_100216964();
      v88, v36, v37, v38, v39, v40, v41, v42, v85, v88, v90, v91, v92, v93, v94, v95, v96, v97;
      v43 = sub_100216204().super.isa;
      sub_100002BF0(v27, v29, v44, v45, v46, v47, v48, v49);
      v50 = sub_100216204().super.isa;
      sub_100002BF0(v31, v33, v51, v52, v53, v54, v55, v56);
      v57 = [v34 initWithUUID:v35 encryptionKey:v43 signingKey:v50 recoveryString:0 salt:0 kind:v86];

      v58 = v57;
      a3(v57, 0);

      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v59 = sub_100216774();
    sub_100002648(v59, qword_10029D160);
    v23 = v10;
    v60 = sub_100216754();
    v61 = sub_100216C64();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v92 = v63;
      *v62 = 136315138;
      v64 = [v23 peerID];
      v65 = sub_100216974();
      v67 = v66;

      v68 = sub_100005FB0(v65, v67, &v92);
      v67, v69, v70, v71, v72, v73, v74, v75, v85, v87, v89, v91, v92, v93, v94, v95, v96, v97;
      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "CRK %s is not trusted", v62, 0xCu);
      sub_100006128(v63, v76, v77, v78, v79, v80, v81, v82);
    }

    sub_1000561D0();
    v83 = swift_allocError();
    *v84 = xmmword_10021DC10;
    *(v84 + 16) = 13;
    a3(0, v83);
  }
}

uint64_t sub_100137B10(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a8;
  v60 = a3;
  v58 = a2;
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a5;
    v56 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65._countAndFlagsBits = sub_100216994();
      object = v65._object;
      sub_100216A14(v65);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58, v59, v60, a7, 0x203A726F727265, 0xE700000000000000, v64;

      v29 = v62;
      v20 = v63;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v64);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithBottle complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a5 = v55;
    a6 = v57;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000006BLL, 0x800000010023C890, v30, v31, v32, v33, v34, v35);
  return a9(a1, v58, v60, a4, a5, a6, a7);
}

void sub_100137D78(uint64_t a1@<X0>, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = 0;
  v6 = [v5 allPolicyVersionsWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = v6;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v9 = sub_100216BB4();
    v10 = v7;
  }

  else
  {
    v11 = v19;
    v12 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching all policy versions: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100138068(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, char a7, char *a8, void *a9, void *a10, void (*a11)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a12, _TtC18TrustedPeersHelper6Client *a13, const char *a14, uint64_t a15, _TtC18TrustedPeersHelper6Client *a16, unint64_t a17)
{
  v21 = kSecurityRTCEventNameVouchWithBottleTPH;
  sub_1001A9F94();
  v22 = a2;
  v24 = v23;
  if (v22)
  {
    v25 = sub_100216964();
  }

  else
  {
    v25 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v26 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v27 = sub_100216964();
  }

  else
  {
    v27 = 0;
  }

  LOBYTE(v321) = a7 & 1;
  v366 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v25 flowID:a4 deviceSessionID:v27 eventName:v21 testsAreEnabled:v24 canSendMetrics:? category:?];

  v28 = sub_1000539B0(a9, a10);
  v54 = v53;
  v363 = v28;

  v54, v56, v57, v58, v59, v60, v61, v62, v321, v26, v328, v332, v336, v340, v344, v348, v352, v356;
  v63 = [(Client *)v363 contents];
  if (v63)
  {
    v64 = v63;
    v65 = sub_100216224();
    v67 = v66;

    v68 = [(Client *)v363 signatureUsingEscrowKey];
    if (v68)
    {
      v69 = v68;
      v70 = sub_100216224();
      v72 = v71;

      v73 = [(Client *)v363 signatureUsingPeerKey];
      if (v73)
      {
        v74 = v73;
        v75 = sub_100216224();
        v77 = v76;

        v78 = [(Client *)v363 peerID];
        if (v78)
        {
          v357 = v72;
          v361 = v77;
          v362 = v65;
          v79 = v78;
          v80 = sub_100216974();
          v82 = v81;
          v83 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
          v84 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
          aBlock[0] = 0;
          v85 = v84;
          v86 = [v85 peerWithID:v79 error:aBlock];

          v353 = v75;
          if (aBlock[0])
          {
            aBlock[0];

            v82, v94, v95, v96, v97, v98, v99, v100, v322, v325, v329, v333, v337, v341, v345, v349, v75, v357;
            swift_willThrow();
            v101 = v358;
            v102 = v67;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v103 = v70;
            v104 = sub_100216774();
            sub_100002648(v104, qword_10029D160);
            swift_errorRetain();
            v105 = sub_100216754();
            v106 = sub_100216C74();

            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              aBlock[0] = v108;
              *v107 = 136446210;
              swift_errorRetain();
              sub_10001148C(&unk_10029D560, qword_10021D450);
              v109 = sub_100216994();
              v111 = v110;
              v112 = v358;
              v113 = sub_100005FB0(v109, v110, aBlock);
              v111, v114, v115, v116, v117, v118, v119, v120, v323, v326, v330, v334, v338, v342, v346, v350, v354, v358;
              *(v107 + 4) = v113;
              v101 = v112;
              _os_log_impl(&_mh_execute_header, v105, v106, "vouchWithBottle: Verification of bottled signature failed: %{public}s", v107, 0xCu);
              sub_100006128(v108, v121, v122, v123, v124, v125, v126, v127);
            }

            sub_1000561D0();
            swift_allocError();
            *v128 = xmmword_100226000;
            *(v128 + 16) = 13;
            v129 = sub_100216144();

            [(Client *)v366 sendMetricWithResult:0 error:v129];

            v130 = swift_allocError();
            *v131 = xmmword_100226000;
            *(v131 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v130);

            sub_100002BF0(v103, v101, v132, v133, v134, v135, v136, v137);

            sub_100002BF0(v354, v361, v138, v139, v140, v141, v142, v143);
            v150 = v362;
            v151 = v102;
            goto LABEL_47;
          }

          v347 = v83;
          v351 = v80;
          if (v86)
          {
            v196 = [v86 permanentInfo];
            v197 = [v196 signingPubKey];

            objc_opt_self();
            v198 = swift_dynamicCastObjCClass();
            if (v198)
            {
              v343 = v82;
              sub_100200E38(v362, v67, v75, v361, v198);

              swift_unknownObjectRelease();
              v331 = type metadata accessor for BottledPeer();
              v335 = objc_allocWithZone(v331);
              sub_100012558(v362, v67);

              sub_100012558(v70, v357);
              sub_100012558(v75, v361);
              sub_100012558(a13, a14);
              v339 = v70;
              v242 = sub_1001FEE00(v362, v67, a13, a14, a15, a16, v70, v357, v75, v361);
              v243 = qword_100297520;
              v244 = v242;
              if (v243 != -1)
              {
                swift_once();
              }

              v245 = sub_100216774();
              sub_100002648(v245, qword_10029D160);
              v246 = v244;
              v247 = sub_100216754();
              v248 = sub_100216C54();

              if (os_log_type_enabled(v247, v248))
              {
                v249 = swift_slowAlloc();
                v250 = swift_slowAlloc();
                aBlock[0] = v250;
                *v249 = 136446210;
                v251 = *&v246[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
                v252 = *&v246[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8];

                v253 = sub_100005FB0(v251, v252, aBlock);
                v252, v254, v255, v256, v257, v258, v259, v260, v324, v327, v331, v335, v339, v343, v83, v351, v353, v357;
                *(v249 + 4) = v253;
                _os_log_impl(&_mh_execute_header, v247, v248, "Have a bottle for peer %{public}s", v249, 0xCu);
                sub_100006128(v250, v261, v262, v263, v264, v265, v266, v267);
              }

              v268 = *&v347[a8];
              v269 = *&v246[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys];
              v270 = v268;
              v271 = sub_10010C6BC(a17, v269, v270);
              v273 = v272;

              v274 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
              v275 = swift_allocObject();
              *(v275 + 16) = a8;
              *(v275 + 24) = v366;
              *(v275 + 32) = a11;
              *(v275 + 40) = a12;
              *(v275 + 48) = v351;
              *(v275 + 56) = v343;
              *(v275 + 64) = v246;
              *(v275 + 72) = v271;
              *(v275 + 80) = v273;
              v276 = swift_allocObject();
              *v276->endpoint = sub_1001AA60C;
              *v276->containerMap = v275;
              aBlock[4] = sub_1001ACCC0;
              v368 = v276;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100109050;
              aBlock[3] = &unk_1002838A0;
              v277 = _Block_copy(aBlock);
              v278 = v368;
              v279 = a8;
              v280 = v366;

              v281 = v273;

              v278, v282, v283, v284, v285, v286, v287, v288;
              [v274 performBlockAndWait:v277];

              sub_100002BF0(v339, v357, v289, v290, v291, v292, v293, v294);
              _Block_release(v277);
              sub_100002BF0(v353, v361, v295, v296, v297, v298, v299, v300);
              sub_100002BF0(v362, v67, v301, v302, v303, v304, v305, v306);

              LOBYTE(v274) = swift_isEscapingClosureAtFileLocation();
              v275, v307, v308, v309, v310, v311, v312, v313;
              v276, v314, v315, v316, v317, v318, v319, v320;
              if (v274)
              {
                __break(1u);
                swift_once();
                v29 = sub_100216774();
                sub_100002648(v29, qword_10029D160);
                swift_errorRetain();
                v30 = sub_100216754();
                v31 = sub_100216C74();

                if (os_log_type_enabled(v30, v31))
                {
                  v32 = swift_slowAlloc();
                  v33 = swift_slowAlloc();
                  aBlock[0] = v33;
                  *v32 = 136446210;
                  swift_errorRetain();
                  sub_10001148C(&unk_10029D560, qword_10021D450);
                  v34 = sub_100216994();
                  v36 = v35;
                  v37 = sub_100005FB0(v34, v35, aBlock);
                  v36, v38, v39, v40, v41, v42, v43, v44, v324, v327, v331, v335, v339, v343, v347, v351, v353, v357;
                  *(v32 + 4) = v37;
                  _os_log_impl(&_mh_execute_header, v30, v31, "vouchWithBottle failed preflight: %{public}s", v32, 0xCu);
                  sub_100006128(v33, v45, v46, v47, v48, v49, v50, v51);
                }

                v52 = sub_100216144();
                [(Client *)v366 sendMetricWithResult:0 error:v52];

                swift_errorRetain();
                a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v246);
              }

              return;
            }

            v221 = v86;
            v82, v199, v200, v201, v202, v203, v204, v205, v322, v325, v329, v333, v337, v341, v83, v351, v75, v357;
            swift_unknownObjectRelease();
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v222 = sub_100216774();
            sub_100002648(v222, qword_10029D160);
            v223 = sub_100216754();
            v224 = sub_100216C54();
            v209 = v362;
            if (os_log_type_enabled(v223, v224))
            {
              v225 = swift_slowAlloc();
              *v225 = 0;
              _os_log_impl(&_mh_execute_header, v223, v224, "vouchWithBottle: Unable to create a sponsor public key", v225, 2u);
            }

            sub_1000561D0();
            swift_allocError();
            *v226 = xmmword_100226010;
            *(v226 + 16) = 13;
            v227 = sub_100216144();

            [(Client *)v366 sendMetricWithResult:0 error:v227];

            v228 = swift_allocError();
            *v229 = xmmword_100226010;
            *(v229 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v228);

            sub_100002BF0(v70, v360, v230, v231, v232, v233, v234, v235);
          }

          else
          {
            v82, v87, v88, v89, v90, v91, v92, v93, v322, v325, v329, v333, v337, v341, v83, v80, v75, v357;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v206 = sub_100216774();
            sub_100002648(v206, qword_10029D160);
            v207 = sub_100216754();
            v208 = sub_100216C54();
            v209 = v362;
            if (os_log_type_enabled(v207, v208))
            {
              v210 = swift_slowAlloc();
              *v210 = 0;
              _os_log_impl(&_mh_execute_header, v207, v208, "vouchWithBottle: Unable to find peer that created the bottle", v210, 2u);
            }

            sub_1000561D0();
            swift_allocError();
            *v211 = xmmword_10021DAA0;
            *(v211 + 16) = 13;
            v212 = sub_100216144();

            [(Client *)v366 sendMetricWithResult:0 error:v212];

            v213 = swift_allocError();
            *v214 = xmmword_10021DAA0;
            *(v214 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v213);

            sub_100002BF0(v70, v359, v215, v216, v217, v218, v219, v220);
          }

          sub_100002BF0(v355, v361, v236, v237, v238, v239, v240, v241);
          v150 = v209;
          v151 = v67;
LABEL_47:
          sub_100002BF0(v150, v151, v144, v145, v146, v147, v148, v149);

          return;
        }

        sub_1000561D0();
        swift_allocError();
        *v179 = xmmword_100226020;
        v365 = v67;
        v180 = v77;
        *(v179 + 16) = 13;
        v181 = sub_100216144();

        [(Client *)v366 sendMetricWithResult:0 error:v181];

        v182 = swift_allocError();
        *v183 = xmmword_100226020;
        *(v183 + 16) = 13;
        a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v182);

        sub_100002BF0(v70, v72, v184, v185, v186, v187, v188, v189);

        sub_100002BF0(v75, v180, v190, v191, v192, v193, v194, v195);
        v177 = v65;
        v178 = v365;
        goto LABEL_28;
      }

      sub_1000561D0();
      swift_allocError();
      *v167 = xmmword_100226030;
      *(v167 + 16) = 13;
      v168 = sub_100216144();

      [(Client *)v366 sendMetricWithResult:0 error:v168];

      v169 = swift_allocError();
      *v170 = xmmword_100226030;
      *(v170 + 16) = 13;
      a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v169);

      sub_100002BF0(v70, v72, v171, v172, v173, v174, v175, v176);
    }

    else
    {
      sub_1000561D0();
      swift_allocError();
      *v157 = xmmword_100226040;
      *(v157 + 16) = 13;
      v158 = sub_100216144();

      [(Client *)v366 sendMetricWithResult:0 error:v158];

      v159 = swift_allocError();
      *v160 = xmmword_100226040;
      *(v160 + 16) = 13;
      a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v159);
    }

    v177 = v65;
    v178 = v67;
LABEL_28:
    sub_100002BF0(v177, v178, v161, v162, v163, v164, v165, v166);
    v156 = v363;
    goto LABEL_29;
  }

  sub_1000561D0();
  swift_allocError();
  *v152 = xmmword_100226050;
  *(v152 + 16) = 13;
  v153 = sub_100216144();

  [(Client *)v366 sendMetricWithResult:0 error:v153];

  v154 = swift_allocError();
  *v155 = xmmword_100226050;
  *(v155 + 16) = 13;
  a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v154);

  v156 = v366;
LABEL_29:
}

void sub_1001396BC(char *a1, void *a2, void (*a3)(void, unint64_t, void, unint64_t, void, void, uint64_t), void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v17 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v18)
  {
    v261 = a5;
    v262 = a6;
    v265 = a3;
    v19 = v18;
    v20 = sub_100216974();
    v22 = v21;

    v23 = [*&a1[v17] egoPeerPermanentInfo];
    if (v23)
    {
      v31 = v23;
      v263 = sub_100216224();
      v264 = v32;

      v33 = [*&a1[v17] egoPeerPermanentInfoSig];
      if (!v33)
      {
        v22, v34, v35, v36, v37, v38, v39, v40, v227, v229, v232, v234, v237, v241, v244, v246, v249, v253;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v157 = sub_100216774();
        sub_100002648(v157, qword_10029D160);
        v158 = sub_100216754();
        v159 = sub_100216C54();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v158, v159, "permanentInfoSig does not exist", v160, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v161 = xmmword_100225FD0;
        *(v161 + 16) = 13;
        v162 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v162];

        v163 = swift_allocError();
        *v164 = xmmword_100225FD0;
        *(v164 + 16) = 13;
        v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v163);

        goto LABEL_51;
      }

      v41 = v33;
      v259 = sub_100216224();
      v260 = v42;

      v43 = [*&a1[v17] egoPeerStableInfo];
      if (!v43)
      {
        v22, v44, v45, v46, v47, v48, v49, v50, v227, v229, v232, v234, v237, v241, v244, v246, v249, v253;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v171 = sub_100216774();
        sub_100002648(v171, qword_10029D160);
        v172 = sub_100216754();
        v173 = sub_100216C54();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&_mh_execute_header, v172, v173, "stableInfo does not exist", v174, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v175 = xmmword_100225FD0;
        *(v175 + 16) = 13;
        v176 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v176];

        v177 = swift_allocError();
        *v178 = xmmword_100225FD0;
        *(v178 + 16) = 13;
        v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v177);

        goto LABEL_50;
      }

      v235 = a8;
      v51 = v43;
      v52 = sub_100216224();
      v54 = v53;

      v55 = [*&a1[v17] egoPeerStableInfoSig];
      v258 = v52;
      if (v55)
      {
        v230 = a7;
        v63 = v55;
        v250 = sub_100216224();
        v254 = v64;

        v65 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        sub_100012558(v263, v264);
        sub_100012558(v259, v260);
        v66 = sub_100216964();
        v22, v67, v68, v69, v70, v71, v72, v73, v20, v230, a9, v235, v237, a2, a4, v54, v250, v254;
        isa = sub_100216204().super.isa;
        v75 = sub_100216204().super.isa;
        v238 = v65;
        v76 = [objc_opt_self() permanentInfoWithPeerID:v66 data:isa sig:v75 keyFactory:v65];

        sub_100002BF0(v259, v260, v77, v78, v79, v80, v81, v82);
        sub_100002BF0(v263, v264, v83, v84, v85, v86, v87, v88);

        if (!v76)
        {
          v199 = v251;
          v200 = v255;
          v22, v89, v90, v91, v92, v93, v94, v95, v228, v231, v233, v236, v238, v242, v245, v247, v251, v255;
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v201 = sub_100216774();
          sub_100002648(v201, qword_10029D160);
          v202 = sub_100216754();
          v203 = sub_100216C54();
          if (os_log_type_enabled(v202, v203))
          {
            v204 = swift_slowAlloc();
            *v204 = 0;
            _os_log_impl(&_mh_execute_header, v202, v203, "Invalid permenent info or signature; can't vouch for them", v204, 2u);
          }

          sub_1000561D0();
          swift_allocError();
          *v205 = xmmword_10021DA80;
          *(v205 + 16) = 13;
          v206 = sub_100216144();

          [v243 sendMetricWithResult:0 error:v206];

          v207 = swift_allocError();
          *v208 = xmmword_10021DA80;
          *(v208 + 16) = 13;
          v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v207);

          v139 = v199;
          v140 = v200;
          goto LABEL_42;
        }

        v96 = objc_allocWithZone(TPPeerStableInfo);
        v54 = v247;
        sub_100012558(v52, v247);
        sub_100012558(v251, v255);
        v97 = sub_100216204().super.isa;
        v98 = sub_100216204().super.isa;
        v99 = [v96 initWithData:v97 sig:v98];

        sub_100002BF0(v251, v255, v100, v101, v102, v103, v104, v105);
        sub_100002BF0(v52, v247, v106, v107, v108, v109, v110, v111);
        if (v99)
        {
          v119 = swift_allocObject();
          *(v119 + 16) = v242;
          *(v119 + 24) = v265;
          *(v119 + 32) = v245;
          *(v119 + 40) = a1;
          *(v119 + 48) = v76;
          *(v119 + 56) = v99;
          *(v119 + 64) = v261;
          *(v119 + 72) = v262;
          *(v119 + 80) = v231;
          *(v119 + 88) = v236;
          *(v119 + 96) = v233;
          strcpy(v266, "signing-key ");
          BYTE5(v266[1]) = 0;
          HIWORD(v266[1]) = -5120;
          v120 = v242;

          v121 = a1;
          v122 = v76;
          v123 = v99;

          v124 = v233;
          v125 = v231;
          v268._countAndFlagsBits = v228;
          v268._object = v22;
          sub_100216A14(v268);

          sub_100198E8C(v266[0], v266[1], sub_1001AA624, v119, v228, v22);

          v266[1], v126, v127, v128, v129, v130, v131, v132, v228, v231, v233, v236, v238, v242, v245, v247, v251, v255;

          swift_bridgeObjectRelease_n();
          v139 = v252;
          v140 = v256;
LABEL_42:
          sub_100002BF0(v139, v140, v133, v134, v135, v136, v137, v138);
          v209 = v52;
          v210 = v248;
LABEL_49:
          sub_100002BF0(v209, v210, v193, v194, v195, v196, v197, v198);
LABEL_50:
          sub_100002BF0(v259, v260, v179, v180, v181, v182, v183, v184);
LABEL_51:

          sub_100002BF0(v263, v264, v165, v166, v167, v168, v169, v170);
          return;
        }

        v211 = v242;
        v212 = v251;
        v22, v112, v113, v114, v115, v116, v117, v118, v228, v231, v233, v236, v238, v242, v245, v247, v251, v255;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v213 = sub_100216774();
        sub_100002648(v213, qword_10029D160);
        v214 = sub_100216754();
        v215 = sub_100216C54();
        if (os_log_type_enabled(v214, v215))
        {
          v216 = swift_slowAlloc();
          *v216 = 0;
          _os_log_impl(&_mh_execute_header, v214, v215, "Invalid stableinfo or signature; van't vouch for them", v216, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v217 = xmmword_10021DC20;
        *(v217 + 16) = 13;
        v218 = sub_100216144();

        [v211 sendMetricWithResult:0 error:v218];

        v219 = swift_allocError();
        *v220 = xmmword_10021DC20;
        *(v220 + 16) = 13;
        v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v219);

        sub_100002BF0(v212, v257, v221, v222, v223, v224, v225, v226);
      }

      else
      {
        v22, v56, v57, v58, v59, v60, v61, v62, v227, v229, a9, v235, v237, v241, v244, v246, v249, v253;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v185 = sub_100216774();
        sub_100002648(v185, qword_10029D160);
        v186 = sub_100216754();
        v187 = sub_100216C54();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          *v188 = 0;
          _os_log_impl(&_mh_execute_header, v186, v187, "stableInfoSig does not exist", v188, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v189 = xmmword_100225FD0;
        *(v189 + 16) = 13;
        v190 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v190];

        v191 = swift_allocError();
        *v192 = xmmword_100225FD0;
        *(v192 + 16) = 13;
        v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v191);
      }

      v209 = v258;
      v210 = v54;
      goto LABEL_49;
    }

    v22, v24, v25, v26, v27, v28, v29, v30, v227, v229, v232, v234, v237, v241, v244, v246, v249, v253;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v149 = sub_100216774();
    sub_100002648(v149, qword_10029D160);
    v150 = sub_100216754();
    v151 = sub_100216C54();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "permanentInfo does not exist", v152, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v153 = xmmword_100225FD0;
    *(v153 + 16) = 13;
    v154 = sub_100216144();

    [a2 sendMetricWithResult:0 error:v154];

    v155 = swift_allocError();
    *v156 = xmmword_100225FD0;
    *(v156 + 16) = 13;
    v265(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v155);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v141 = sub_100216774();
    sub_100002648(v141, qword_10029D160);
    v142 = sub_100216754();
    v143 = sub_100216C54();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v142, v143, "As a nonmember, can't vouch for someone else", v144, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v145 = xmmword_100225FD0;
    *(v145 + 16) = 13;
    v146 = sub_100216144();

    [a2 sendMetricWithResult:0 error:v146];

    v147 = swift_allocError();
    *v148 = xmmword_100225FD0;
    *(v148 + 16) = 13;
    a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v147);
  }
}

void sub_10013A604(void *a1, void *a2, void *a3, void (*a4)(uint64_t, unint64_t, uint64_t, unint64_t, unint64_t *, uint64_t, id), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _TtC18TrustedPeersHelper6Client *a12, void *a13)
{
  if (!a1)
  {
    v23 = a2;
    if (qword_100297520 == -1)
    {
LABEL_6:
      v27 = sub_100216774();
      sub_100002648(v27, qword_10029D160);
      swift_errorRetain();
      v28 = sub_100216754();
      v29 = sub_100216C74();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v112 = v31;
        *v30 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v32 = sub_100216994();
        v34 = v33;
        v35 = sub_100005FB0(v32, v33, &v112);
        v34, v36, v37, v38, v39, v40, v41, v42, v106, v107, v110, v23, v112, v113, v114, v115, v116, v117;
        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error loading ego peer keys: %{public}s", v30, 0xCu);
        sub_100006128(v31, v43, v44, v45, v46, v47, v48, v49);
      }

      if (v23)
      {
        v50 = sub_100216144();
      }

      else
      {
        v50 = 0;
      }

      [a3 sendMetricWithResult:0 error:v50];

      a4(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v23);
      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v18 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = a1;
  v20 = sub_100216964();
  v21 = *(*(a11 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  v112 = 0;
  v22 = [v18 createVoucherForCandidate:a7 stableInfo:a8 withSponsorID:v20 reason:1 signingKeyPair:v21 error:&v112];

  v23 = v112;
  if (v22)
  {
    v24 = v19;
    v25 = v23;
    v26 = [a7 epoch];
    if ((v26 & 0x8000000000000000) == 0)
    {
      v77 = sub_10010BD08(a12, v24, v24, v26);

      [a3 sendMetricWithResult:1 error:0];
      v78 = [v22 data];
      v79 = sub_100216224();
      v81 = v80;

      v82 = [v22 sig];
      v83 = a4;
      v84 = sub_100216224();
      v86 = v85;

      v83(v79, v81, v84, v86, v77->_TtCs12_SwiftObject_opaque, a13, 0);
      v77, v87, v88, v89, v90, v91, v92, v93, v106, a13, v110, v111, v112, v113, v114, v115, v116, v117;
      sub_100002BF0(v84, v86, v94, v95, v96, v97, v98, v99);
      sub_100002BF0(v79, v81, v100, v101, v102, v103, v104, v105);

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v51 = v112;
  v52 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v53 = sub_100216774();
  sub_100002648(v53, qword_10029D160);
  swift_errorRetain();
  v54 = sub_100216754();
  v55 = sub_100216C74();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v112 = v108;
    *v56 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v57 = sub_100216994();
    v59 = v58;
    v60 = a4;
    v61 = sub_100005FB0(v57, v58, &v112);
    v59, v62, v63, v64, v65, v66, v67, v68, v106, v108, v110, v52, v112, v113, v114, v115, v116, v117;
    *(v56 + 4) = v61;
    a4 = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "Error creating voucher with bottle: %{public}s", v56, 0xCu);
    sub_100006128(v109, v69, v70, v71, v72, v73, v74, v75);
  }

  v76 = sub_100216144();
  [a3 sendMetricWithResult:0 error:v76];

  swift_errorRetain();
  a4(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v52);
}

uint64_t sub_10013ABDC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a8;
  v60 = a3;
  v58 = a2;
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a5;
    v56 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65._countAndFlagsBits = sub_100216994();
      object = v65._object;
      sub_100216A14(v65);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58, v59, v60, a7, 0x203A726F727265, 0xE700000000000000, v64;

      v29 = v62;
      v20 = v63;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v64);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithRecoveryKey complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a5 = v55;
    a6 = v57;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000037, 0x800000010023C850, v30, v31, v32, v33, v34, v35);
  return a9(a1, v58, v60, a4, a5, a6, a7);
}

void sub_10013AE44(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  v15 = sub_100216754();
  v16 = sub_100216C54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "beginning a vouchWithRecoveryKey", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v19 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v19)
  {
    v20 = v19;
    v266 = sub_100216974();
    v22 = v21;

    v23 = [*&a1[v18] egoPeerPermanentInfo];
    if (v23)
    {
      v265 = a6;
      v31 = v23;
      v32 = sub_100216224();
      v267 = v33;

      v34 = [*&a1[v18] egoPeerPermanentInfoSig];
      if (!v34)
      {
        v22, v35, v36, v37, v38, v39, v40, v41, v230, v232, v234, v238, v241, v245, v249, v252, v254, v258;
        v153 = sub_100216754();
        v154 = sub_100216C54();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&_mh_execute_header, v153, v154, "permanentInfoSig does not exist", v155, 2u);
        }

        sub_1000561D0();
        v156 = swift_allocError();
        *v157 = xmmword_100225FD0;
        *(v157 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v156);

        v164 = v32;
        goto LABEL_38;
      }

      v259 = a5;
      v261 = a7;
      v42 = v34;
      v43 = sub_100216224();
      v45 = v44;

      v46 = [*&a1[v18] egoPeerStableInfo];
      if (v46)
      {
        v54 = v46;
        v263 = sub_100216224();
        v264 = v55;

        v56 = [*&a1[v18] egoPeerStableInfoSig];
        if (v56)
        {
          v64 = v56;
          v255 = sub_100216224();
          v239 = v65;

          v262 = [objc_allocWithZone(TPECPublicKeyFactory) init];

          sub_100012558(v32, v267);
          sub_100012558(v43, v45);
          v66 = sub_100216964();
          v22, v67, v68, v69, v70, v71, v72, v73, v230, a8, v66, v239, v241, v245, v249, a3, v255, v259;
          isa = sub_100216204().super.isa;
          v75 = sub_100216204().super.isa;
          v76 = [objc_opt_self() permanentInfoWithPeerID:v66 data:isa sig:v75 keyFactory:v262];

          v242 = v43;
          v246 = v45;
          sub_100002BF0(v43, v45, v77, v78, v79, v80, v81, v82);

          sub_100002BF0(v32, v267, v83, v84, v85, v86, v87, v88);
          if (v76)
          {
            v236 = v76;
            v96 = objc_allocWithZone(TPPeerStableInfo);
            sub_100012558(v263, v264);
            sub_100012558(v256, v240);
            v97 = sub_100216204().super.isa;
            v98 = sub_100216204().super.isa;
            v99 = [v96 initWithData:v97 sig:v98];

            sub_100002BF0(v256, v240, v100, v101, v102, v103, v104, v105);
            sub_100002BF0(v263, v264, v106, v107, v108, v109, v110, v111);
            v119 = v240;
            if (!v99)
            {
              v206 = v256;
              v22, v112, v113, v114, v115, v116, v117, v118, v231, v233, v236, v240, v43, v45, v32, v253, v256, v260;
              v207 = sub_100216754();
              v208 = sub_100216C54();
              if (os_log_type_enabled(v207, v208))
              {
                v209 = swift_slowAlloc();
                *v209 = 0;
                _os_log_impl(&_mh_execute_header, v207, v208, "Invalid stableinfo or signature; van't vouch for them", v209, 2u);
              }

              sub_1000561D0();
              v210 = swift_allocError();
              *v211 = xmmword_10021DC20;
              *(v211 + 16) = 13;
              a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v210);

              sub_100002BF0(v206, v119, v212, v213, v214, v215, v216, v217);
              sub_100002BF0(v263, v264, v218, v219, v220, v221, v222, v223);
              sub_100002BF0(v244, v248, v224, v225, v226, v227, v228, v229);
              v164 = v251;
              goto LABEL_38;
            }

            v120 = v99;
            v121 = swift_allocObject();
            *(v121 + 16) = a2;
            *(v121 + 24) = v253;
            *(v121 + 32) = a4;
            *(v121 + 40) = v260;
            *(v121 + 48) = v265;
            *(v121 + 56) = v261;
            *(v121 + 64) = a1;
            *(v121 + 72) = v236;
            *(v121 + 80) = v120;
            *(v121 + 88) = v233;
            strcpy(v270, "signing-key ");
            BYTE5(v270[1]) = 0;
            HIWORD(v270[1]) = -5120;

            v122 = a1;
            v123 = v240;
            v124 = v236;
            v125 = v120;

            v272._countAndFlagsBits = v266;
            v272._object = v22;
            sub_100216A14(v272);

            sub_100198E8C(v270[0], v270[1], sub_1001AA5E8, v121, v266, v22);

            v270[1], v126, v127, v128, v129, v130, v131, v132, v231, v233, v236, v240, v43, v246, v32, v253, v256, v260;

            swift_bridgeObjectRelease_n();
            sub_100002BF0(v257, v123, v133, v134, v135, v136, v137, v138);
            v145 = v263;
            v146 = v264;
          }

          else
          {
            v187 = v256;
            v188 = v240;
            v22, v89, v90, v91, v92, v93, v94, v95, v231, v233, v235, v240, v242, v246, v32, v253, v256, v260;
            v189 = sub_100216754();
            v190 = sub_100216C54();
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              *v191 = 0;
              _os_log_impl(&_mh_execute_header, v189, v190, "Invalid permenent info or signature; can't vouch for them", v191, 2u);
            }

            sub_1000561D0();
            v192 = swift_allocError();
            *v193 = xmmword_10021DA80;
            *(v193 + 16) = 13;
            a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v192);

            sub_100002BF0(v187, v188, v194, v195, v196, v197, v198, v199);
            v145 = v263;
            v146 = v264;
          }

          sub_100002BF0(v145, v146, v139, v140, v141, v142, v143, v144);
          sub_100002BF0(v243, v247, v200, v201, v202, v203, v204, v205);
          v164 = v250;
LABEL_38:

          sub_100002BF0(v164, v267, v158, v159, v160, v161, v162, v163);
          return;
        }

        v22, v57, v58, v59, v60, v61, v62, v63, v230, v232, v234, v238, v241, v245, v249, v252, v254, v259;
        v176 = sub_100216754();
        v177 = sub_100216C54();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&_mh_execute_header, v176, v177, "stableInfoSig does not exist", v178, 2u);
        }

        sub_1000561D0();
        v179 = swift_allocError();
        *v180 = xmmword_100225FD0;
        *(v180 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v179);

        sub_100002BF0(v263, v264, v181, v182, v183, v184, v185, v186);
      }

      else
      {
        v22, v47, v48, v49, v50, v51, v52, v53, v230, v232, v234, v238, v241, v245, v249, v252, v254, v259;
        v165 = sub_100216754();
        v166 = sub_100216C54();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v165, v166, "stableInfo does not exist", v167, 2u);
        }

        sub_1000561D0();
        v168 = swift_allocError();
        *v169 = xmmword_100225FD0;
        *(v169 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v168);
      }

      sub_100002BF0(v43, v45, v170, v171, v172, v173, v174, v175);
      v164 = v32;
      goto LABEL_38;
    }

    v22, v24, v25, v26, v27, v28, v29, v30, v230, v232, v234, v238, v241, v245, v249, v252, v254, v258;
    v147 = sub_100216754();
    v148 = sub_100216C54();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      v150 = "permanentInfo does not exist";
      goto LABEL_17;
    }
  }

  else
  {
    v147 = sub_100216754();
    v148 = sub_100216C54();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      v150 = "As a nonmember, can't vouch for someone else";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v147, v148, v150, v149, 2u);
    }
  }

  sub_1000561D0();
  v151 = swift_allocError();
  *v152 = xmmword_100225FD0;
  *(v152 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v151);
}

void sub_10013B970(void *a1, void *a2, void (*a3)(_TtC18TrustedPeersHelper6Client *, unint64_t, _TtC18TrustedPeersHelper6Client *, unint64_t, _TtC18TrustedPeersHelper6Client *, id, id), uint64_t a4, uint64_t a5, unint64_t a6, void *a7, _TtC18TrustedPeersHelper6Client *a8, uint64_t a9, void *a10, void *a11, unint64_t a12)
{
  if (a1)
  {
    v17 = a1;

    v18 = sub_100013A8C(a5, a6, a7, a8);
    v358 = v17;
    v363 = a3;
    v43 = OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys;
    v44 = *(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
    v45 = v18;
    v46 = v18;
    v47 = [v44 publicKey];
    v48 = [v47 keyData];

    v49 = sub_100216224();
    v51 = v50;

    v343 = v43;
    v348 = v45;
    v52 = *&v45[v43];
    v353 = v46;

    v53 = *&v52[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey];
    v54 = [v53 publicKey];

    v55 = [v54 keyData];
    v56 = sub_100216224();
    v366 = v57;

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);
    sub_100012558(v49, v51);
    v59 = sub_100216754();
    v60 = sub_100216C54();
    sub_100002BF0(v49, v51, v61, v62, v63, v64, v65, v66);
    v365 = v51;
    if (os_log_type_enabled(v59, v60))
    {
      v67 = v56;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v367 = v69;
      *v68 = 136446210;
      v70 = v49;
      v71 = sub_100216214(0);
      v73 = v72;
      v74 = sub_100005FB0(v71, v72, &v367);
      v73, v75, v76, v77, v78, v79, v80, v81, v313, v318, v323, v328, v332, v336, v343, v348, v353, v358;
      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v59, v60, "vouchWithRecoveryKey signingPubKey: %{public}s", v68, 0xCu);
      sub_100006128(v69, v82, v83, v84, v85, v86, v87, v88);

      v56 = v67;
    }

    else
    {
      v70 = v49;
    }

    v89 = v366;
    sub_100012558(v56, v366);
    v90 = sub_100216754();
    v91 = sub_100216C54();
    sub_100002BF0(v56, v366, v92, v93, v94, v95, v96, v97);
    if (os_log_type_enabled(v90, v91))
    {
      v98 = v56;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v367 = v100;
      *v99 = 136446210;
      v101 = sub_100216214(0);
      v103 = v102;
      v104 = sub_100005FB0(v101, v102, &v367);
      v105 = v103;
      v89 = v366;
      v105, v106, v107, v108, v109, v110, v111, v112, v313, v318, v323, v328, v332, v336, v343, v348, v353, v358;
      *(v99 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v90, v91, "vouchWithRecoveryKey encryptionPubKey: %{public}s", v99, 0xCu);
      sub_100006128(v100, v113, v114, v115, v116, v117, v118, v119);

      v56 = v98;
    }

    v120 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v121 = *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v367 = 0;
    v122 = [v121 isRecoveryKeyEnrolledWithError:&v367];
    v123 = v367;
    if (v367)
    {
      swift_willThrow();
      v124 = v123;
      v125 = sub_100216754();
      v126 = sub_100216C74();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v127 = 138543362;
        v129 = v124;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 4) = v130;
        *v128 = v130;
        _os_log_impl(&_mh_execute_header, v125, v126, "Error determining whether Recovery Key is enrolled: %{public}@", v127, 0xCu);
        sub_1000114D4(v128, &qword_10029D580, &unk_10021CCC0);
      }

LABEL_18:

      v131 = v124;
      v363(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v123);
      sub_100002BF0(v70, v365, v132, v133, v134, v135, v136, v137);
      sub_100002BF0(v56, v89, v138, v139, v140, v141, v142, v143);

      v144 = v358;
LABEL_29:

      return;
    }

    if (v122)
    {
      v145 = *(a9 + v120);
      v146 = objc_allocWithZone(TPRecoveryKeyPair);
      sub_100012558(v70, v365);
      sub_100012558(v56, v89);
      v147 = v145;
      isa = sub_100216204().super.isa;
      v337 = v56;
      v149 = sub_100216204().super.isa;
      v150 = [v146 initWithSigningKeyData:isa encryptionKeyData:v149];

      v56 = v337;
      sub_100002BF0(v337, v89, v151, v152, v153, v154, v155, v156);

      v324 = v70;
      sub_100002BF0(v70, v365, v157, v158, v159, v160, v161, v162);
      v367 = 0;
      v163 = [v147 peerIDThatTrustsRecoveryKeys:v150 canIntroducePeer:a10 stableInfo:a11 error:&v367];

      v123 = v367;
      if (v367)
      {
        v164 = v367;

        swift_willThrow();
        v124 = v164;
        v125 = sub_100216754();
        v165 = sub_100216C74();

        if (os_log_type_enabled(v125, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *v166 = 138543362;
          v168 = v124;
          v169 = _swift_stdlib_bridgeErrorToNSError();
          *(v166 + 4) = v169;
          *v167 = v169;
          _os_log_impl(&_mh_execute_header, v125, v165, "Failed to get peer that trusts RK: %{public}@", v166, 0xCu);
          sub_1000114D4(v167, &qword_10029D580, &unk_10021CCC0);
        }

        goto LABEL_18;
      }

      if (v163)
      {
        v188 = sub_100216974();
        v319 = v163;
        v190 = v189;
        v192 = v343;
        v191 = v348;
        v193 = *(a9 + v120);
        v194 = *&v343[v348];
        v195 = v193;
        v196 = sub_10010C8B4(a12, v194, v188, v190, v195);
        v314 = v197;

        v190, v198, v199, v200, v201, v202, v203, v204, v314, v319, v324, a11, a10, v337, v343, v348, v353, v358;
        v205 = *(a9 + v120);
        v206 = *(*&v192[v191] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
        v367 = 0;
        v207 = v205;
        v208 = [v207 createVoucherForCandidate:v333 stableInfo:v329 withSponsorID:v320 reason:6 signingKeyPair:v206 error:&v367];

        v209 = v367;
        if (v208)
        {
          v210 = v359;
          v211 = v209;
          v212 = [v333 epoch];
          v213 = v338;
          if (v212 < 0)
          {
            __break(1u);
          }

          v264 = sub_10010BD08(v196, v210, v210, v212);
          v196, v265, v266, v267, v268, v269, v270, v271, v315, v320, v325, v329, v333, v338, v344, v349, v354, v359;

          v272 = v208;
          v364 = v208;
          v273 = [v208 data];
          v274 = sub_100216224();
          v276 = v275;

          v277 = [v272 sig];
          v278 = sub_100216224();
          v361 = v210;
          v280 = v279;

          v281 = v317;
          v363(v274, v276, v278, v280, v264, v317, 0);
          sub_100002BF0(v327, v365, v282, v283, v284, v285, v286, v287);
          sub_100002BF0(v213, v366, v288, v289, v290, v291, v292, v293);
          v264, v294, v295, v296, v297, v298, v299, v300, v317, v322, v327, v331, v335, v341, v346, v351, v355, v361;

          sub_100002BF0(v278, v280, v301, v302, v303, v304, v305, v306);
          sub_100002BF0(v274, v276, v307, v308, v309, v310, v311, v312);

          v144 = v364;
          goto LABEL_29;
        }

        v219 = v367;
        v196, v220, v221, v222, v223, v224, v225, v226, v315, v320, v325, v329, v333, v338, v344, v349, v354, v359;
        v227 = sub_100216154();

        swift_willThrow();
        v228 = v360;
        v229 = v339;
        swift_errorRetain();
        v230 = sub_100216754();
        v231 = sub_100216C74();

        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v367 = v233;
          *v232 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v234 = sub_100216994();
          v236 = v235;
          v237 = sub_100005FB0(v234, v235, &v367);
          v236, v238, v239, v240, v241, v242, v243, v244, v316, v321, v326, v330, v334, v339, v345, v350, v353, v360;
          *(v232 + 4) = v237;
          v229 = v340;
          _os_log_impl(&_mh_execute_header, v230, v231, "Error creating voucher using recovery key set: %{public}s", v232, 0xCu);
          sub_100006128(v233, v245, v246, v247, v248, v249, v250, v251);
        }

        swift_errorRetain();
        v363(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v227);
        sub_100002BF0(v326, v365, v252, v253, v254, v255, v256, v257);
        sub_100002BF0(v229, v366, v258, v259, v260, v261, v262, v263);

        goto LABEL_28;
      }

      v214 = sub_100216754();
      v215 = sub_100216C54();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        *v216 = 0;
        _os_log_impl(&_mh_execute_header, v214, v215, "Untrusted recovery key set", v216, 2u);
      }

      sub_1000561D0();
      v217 = swift_allocError();
      *v218 = xmmword_10021DC10;
      *(v218 + 16) = 13;
      v363(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v217);
      v181 = v70;
    }

    else
    {
      v170 = sub_100216754();
      v171 = sub_100216C54();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&_mh_execute_header, v170, v171, "Recovery Key is not enrolled", v172, 2u);
      }

      sub_1000561D0();
      v173 = swift_allocError();
      *v174 = xmmword_10021DC00;
      *(v174 + 16) = 13;
      v363(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v173);
      v181 = v70;
    }

    sub_100002BF0(v181, v365, v175, v176, v177, v178, v179, v180);
    sub_100002BF0(v56, v89, v182, v183, v184, v185, v186, v187);

LABEL_28:

    v144 = v353;
    goto LABEL_29;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v20 = sub_100216774();
  sub_100002648(v20, qword_10029D160);
  swift_errorRetain();
  v21 = sub_100216754();
  v22 = sub_100216C74();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v367 = v24;
    *v23 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v25 = sub_100216994();
    v27 = v26;
    v28 = sub_100005FB0(v25, v26, &v367);
    v27, v29, v30, v31, v32, v33, v34, v35, v313, v318, v323, v328, v332, v336, v342, v347, v352, v357;
    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Don't have my own peer keys; can't vouch with recovery key: %{public}s", v23, 0xCu);
    sub_100006128(v24, v36, v37, v38, v39, v40, v41, v42);
  }

  a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
}

uint64_t sub_10013C98C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
{
  if (a3)
  {
    v11 = sub_100216C74();
  }

  else
  {
    v11 = sub_100216C54();
  }

  v12 = v11;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029D160);
  swift_errorRetain();
  v14 = sub_100216754();

  if (os_log_type_enabled(v14, v12))
  {
    v49 = a6;
    v50 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136446210;
    v17 = 0xE700000000000000;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v60._countAndFlagsBits = sub_100216994();
      object = v60._object;
      sub_100216A14(v60);
      object, v19, v20, v21, v22, v23, v24, v25, v49, v50, a3, 0x203A726F727265, 0xE700000000000000, v55, v56, v57, v58, v59;

      v26 = v53;
      v17 = v54;
    }

    else
    {
      v26 = 0x73736563637573;
    }

    v33 = sub_100005FB0(v26, v17, &v55);
    v17, v34, v35, v36, v37, v38, v39, v40, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59;
    *(v15 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v14, v12, "recoverTLKSharesForInheritor complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000032, 0x800000010023C810, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

void sub_10013CBD4(char *a1, void (*a2)(void, void, uint64_t), void *a3, void *a4, void *a5)
{
  v6 = a4;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = sub_100216754();
  v12 = sub_100216C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginning a recoverTLKSharesForInheritor", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100216974();
    v19 = v18;

    v20 = [*&a1[v14] egoPeerPermanentInfo];
    if (v20)
    {
      v136 = v6;
      v139 = a5;
      v28 = v20;
      v29 = sub_100216224();
      v31 = v30;

      v32 = [*&a1[v14] egoPeerPermanentInfoSig];
      if (v32)
      {
        v133 = a3;
        v40 = v32;
        v41 = v19;
        v42 = sub_100216224();
        v43 = v17;
        v45 = v44;

        v142 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        sub_100012558(v29, v31);
        sub_100012558(v42, v45);
        v46 = v29;
        v47 = sub_100216964();
        v41, v48, v49, v50, v51, v52, v53, v54, v43, v41, v127, a2, v133, v136, v139, v142, v144[0], v144[1];
        isa = sub_100216204().super.isa;
        v56 = sub_100216204().super.isa;
        v57 = [objc_opt_self() permanentInfoWithPeerID:v47 data:isa sig:v56 keyFactory:v143];

        sub_100002BF0(v42, v45, v58, v59, v60, v61, v62, v63);
        v64 = v31;
        sub_100002BF0(v46, v31, v65, v66, v67, v68, v69, v70);

        v78 = v46;
        if (v57)
        {
          v79 = swift_allocObject();
          *(v79 + 16) = v130;
          *(v79 + 24) = v134;
          *(v79 + 32) = v137;
          *(v79 + 40) = a1;
          *(v79 + 48) = v57;
          *(v79 + 56) = v140;
          strcpy(v144, "signing-key ");
          BYTE5(v144[1]) = 0;
          HIWORD(v144[1]) = -5120;

          v80 = v137;
          v81 = a1;
          v82 = v57;

          sub_100216A14(v125);

          sub_100198E8C(v144[0], v144[1], sub_1001AA5D8, v79, v125._countAndFlagsBits, v125._object);

          v144[1], v83, v84, v85, v86, v87, v88, v89, v125._countAndFlagsBits, v125._object, v42, v130, v134, v137, v140, v143, v144[0], v144[1];

          swift_bridgeObjectRelease_n();
          v96 = v128;
          v97 = v45;
        }

        else
        {
          v117 = v143;
          v118 = v45;
          v125._object, v71, v72, v73, v74, v75, v76, v77, v125._countAndFlagsBits, v125._object, v42, v130, v134, v137, v140, v143, v144[0], v144[1];
          v119 = sub_100216754();
          v120 = sub_100216C54();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            *v121 = 0;
            _os_log_impl(&_mh_execute_header, v119, v120, "Invalid permenent info or signature; can't vouch for them", v121, 2u);
          }

          sub_1000561D0();
          v122 = swift_allocError();
          *v123 = xmmword_10021DA80;
          *(v123 + 16) = 13;
          v131(0, 0, v122);

          v96 = v42;
          v97 = v118;
        }

        sub_100002BF0(v96, v97, v90, v91, v92, v93, v94, v95);
        v115 = v78;
        v116 = v64;
      }

      else
      {
        v19, v33, v34, v35, v36, v37, v38, v39, v124, v126, v127, v129, v132, v136, v139, v141, v144[0], v144[1];
        v104 = sub_100216754();
        v105 = sub_100216C54();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v104, v105, "permanentInfoSig does not exist", v106, 2u);
        }

        sub_1000561D0();
        v107 = swift_allocError();
        *v108 = xmmword_100225FD0;
        *(v108 + 16) = 13;
        a2(0, 0, v107);

        v115 = v29;
        v116 = v31;
      }

      sub_100002BF0(v115, v116, v109, v110, v111, v112, v113, v114);
      return;
    }

    v19, v21, v22, v23, v24, v25, v26, v27, v124, v126, v127, v129, v132, v135, v138, v141, v144[0], v144[1];
    v98 = sub_100216754();
    v99 = sub_100216C54();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      v101 = "permanentInfo does not exist";
      goto LABEL_14;
    }
  }

  else
  {
    v98 = sub_100216754();
    v99 = sub_100216C54();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      v101 = "As a nonmember, can't vouch for someone else";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v98, v99, v101, v100, 2u);
    }
  }

  sub_1000561D0();
  v102 = swift_allocError();
  *v103 = xmmword_100225FD0;
  *(v103 + 16) = 13;
  a2(0, 0, v102);
}

void sub_10013D274(void *a1, void *a2, void (*a3)(void, void, id), uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v374 = a8;
  v15 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v365 - v17;
  v19 = sub_1002163D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v365 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v375 = v23;
    v377 = a4;
    v378 = a3;
    v376 = a1;
    v24 = [a5 uuid];
    sub_100216974();
    v26 = v25;

    sub_100216394();
    v26, v27, v28, v29, v30, v31, v32, v33, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1000114D4(v18, &qword_10029D900, &qword_1002266A0);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v34 = sub_100216774();
      sub_100002648(v34, qword_10029D160);
      v35 = a5;
      v36 = sub_100216754();
      v37 = sub_100216C54();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v380 = v39;
        *v38 = 136446210;
        v40 = [v35 uuid];
        v41 = sub_100216974();
        v43 = v42;

        v44 = sub_100005FB0(v41, v43, &v380);
        v43, v45, v46, v47, v48, v49, v50, v51, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to parse uuid: %{public}s", v38, 0xCu);
        sub_100006128(v39, v52, v53, v54, v55, v56, v57, v58);
      }

      sub_1000561D0();
      v59 = swift_allocError();
      *v60 = xmmword_10021DC00;
      *(v60 + 16) = 13;
      v378(0, 0, v59);

      return;
    }

    v373 = v20;
    (*(v20 + 32))(v375, v18, v19);
    v84 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v85 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    isa = sub_1002163B4().super.isa;
    v87 = [v85 findCustodianRecoveryKeyWithUUID:isa];

    if (v87)
    {
      v88 = *(a6 + v84);
      v380 = 0;
      v89 = [v88 isCustodianRecoveryKeyTrusted:v87 error:&v380];
      v90 = v380;
      if (v380)
      {
        swift_willThrow();
        v91 = qword_100297520;
        v92 = v90;
        v93 = v378;
        if (v91 != -1)
        {
          swift_once();
        }

        v94 = sub_100216774();
        sub_100002648(v94, qword_10029D160);
        v95 = v92;
        v96 = sub_100216754();
        v97 = sub_100216C54();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 138543362;
          v100 = v95;
          v101 = _swift_stdlib_bridgeErrorToNSError();
          *(v98 + 4) = v101;
          *v99 = v101;
          _os_log_impl(&_mh_execute_header, v96, v97, "error determining whether Custodian Recovery Key is trusted: %{public}@", v98, 0xCu);
          sub_1000114D4(v99, &qword_10029D580, &unk_10021CCC0);
        }

        v102 = v95;
        v93(0, 0, v90);

        goto LABEL_20;
      }

      v130 = v378;
      if (v89)
      {
        v131 = [a5 recoveryString];
        if (v131)
        {
          v132 = v131;
          v133 = sub_100216974();
          v135 = v134;

          v136 = [a5 salt];
          if (v136)
          {
            v144 = v136;
            v145 = sub_100216974();
            v371 = v146;

            type metadata accessor for CustodianRecoveryKey();
            swift_allocObject();
            v372 = v87;
            v158 = sub_1000129C8(v372, v133, v135, v145, v371);
            v159 = qword_100297520;
            swift_retain_n();
            if (v159 != -1)
            {
              swift_once();
            }

            v160 = sub_100216774();
            v371 = sub_100002648(v160, qword_10029D160);
            v161 = sub_100216754();
            v162 = sub_100216C54();
            v158, v163, v164, v165, v166, v167, v168, v169;
            v170 = os_log_type_enabled(v161, v162);
            v369 = 0;
            v370 = v158;
            if (v170)
            {
              v171 = swift_slowAlloc();
              v367 = v171;
              v368 = swift_slowAlloc();
              v380 = v368;
              *v171 = 136446210;
              v172 = [*(*v158->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
              v173 = [v172 keyData];

              v174 = sub_100216224();
              v176 = v175;

              v177 = sub_100216214(0);
              v179 = v178;
              sub_100002BF0(v174, v176, v180, v181, v182, v183, v184, v185);
              v186 = v177;
              v158 = v370;
              v187 = sub_100005FB0(v186, v179, &v380);
              v179, v188, v189, v190, v191, v192, v193, v194, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
              v195 = v367;
              *(v367 + 4) = v187;
              _os_log_impl(&_mh_execute_header, v161, v162, "recoverTLKSharesForInheritor signingPubKey: %{public}s", v195, 0xCu);
              sub_100006128(v368, v196, v197, v198, v199, v200, v201, v202);
            }

            v203 = sub_100216754();
            v204 = sub_100216C54();
            v158, v205, v206, v207, v208, v209, v210, v211;
            if (os_log_type_enabled(v203, v204))
            {
              v212 = swift_slowAlloc();
              v367 = v212;
              v368 = swift_slowAlloc();
              v380 = v368;
              *v212 = 136446210;
              v213 = [*(*v158->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
              HIDWORD(v366) = v204;
              v214 = v213;
              v215 = [v213 keyData];

              v216 = sub_100216224();
              v217 = v158;
              v219 = v218;

              v220 = sub_100216214(0);
              v222 = v221;
              v217, v221, v223, v224, v225, v226, v227, v228;
              sub_100002BF0(v216, v219, v229, v230, v231, v232, v233, v234);
              v235 = sub_100005FB0(v220, v222, &v380);
              v222, v236, v237, v238, v239, v240, v241, v242, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
              v243 = v367;
              *(v367 + 4) = v235;
              _os_log_impl(&_mh_execute_header, v203, BYTE4(v366), "recoverTLKSharesForInheritor encryptionPubKey: %{public}s", v243, 0xCu);
              sub_100006128(v368, v244, v245, v246, v247, v248, v249, v250);
            }

            else
            {

              v158, v251, v252, v253, v254, v255, v256, v257;
            }

            v258 = v378;
            v259 = *(a6 + v84);
            v380 = 0;
            v260 = [v259 peerIDThatTrustsCustodianRecoveryKeys:v372 canIntroducePeer:a7 stableInfo:0 error:&v380];
            v261 = v260;
            v262 = v380;
            if (!v380)
            {
              if (v260)
              {
                v278 = sub_100216974();
                v280 = v279;

                v281 = *(a6 + v84);
                v282 = *v370->endpoint;
                v283 = v281;
                v284 = sub_10010C8B4(v374, v282, v278, v280, v283);
                v286 = v285;

                v280, v287, v288, v289, v290, v291, v292, v293, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
                v294 = v376;
                v295 = [a7 epoch];
                if (v295 < 0)
                {
                  __break(1u);
                  return;
                }

                v296 = v369;
                v297 = sub_10010BD08(v284, v294, v294, v295);
                if (v296)
                {
                  v284, v298, v299, v300, v301, v302, v303, v304, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;

                  swift_errorRetain();
                  v305 = sub_100216754();
                  v306 = sub_100216C74();

                  if (os_log_type_enabled(v305, v306))
                  {
                    v307 = swift_slowAlloc();
                    v378 = v286;
                    v308 = v307;
                    v309 = swift_slowAlloc();
                    v379 = v296;
                    v380 = v309;
                    *v308 = 136446210;
                    swift_errorRetain();
                    sub_10001148C(&unk_10029D560, qword_10021D450);
                    v310 = sub_100216994();
                    v312 = v311;
                    v313 = sub_100005FB0(v310, v311, &v380);
                    v312, v314, v315, v316, v317, v318, v319, v320, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
                    *(v308 + 4) = v313;
                    _os_log_impl(&_mh_execute_header, v305, v306, "Error making CKKSTLKShares for inheritor: %{public}s", v308, 0xCu);
                    sub_100006128(v309, v321, v322, v323, v324, v325, v326, v327);

                    v286 = v378;
                  }

                  swift_errorRetain();
                  v258(0, 0, v296);

                  v370, v328, v329, v330, v331, v332, v333, v334;
                }

                else
                {
                  v349 = v297;
                  v284, v298, v299, v300, v301, v302, v303, v304, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;

                  v350 = v286;
                  v258(v349, v286, 0);

                  v370, v351, v352, v353, v354, v355, v356, v357;
                  v349, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
                }
              }

              else
              {
                v335 = sub_100216754();
                v336 = sub_100216C54();
                v337 = os_log_type_enabled(v335, v336);
                v338 = v370;
                if (v337)
                {
                  v339 = swift_slowAlloc();
                  *v339 = 0;
                  _os_log_impl(&_mh_execute_header, v335, v336, "Untrusted custodian recovery key set", v339, 2u);
                }

                sub_1000561D0();
                v340 = swift_allocError();
                *v341 = xmmword_10021DC10;
                *(v341 + 16) = 13;
                v258(0, 0, v340);

                v338, v342, v343, v344, v345, v346, v347, v348;
              }

LABEL_43:
              (*(v373 + 1))(v375, v19);
              return;
            }

            v263 = v380;

            swift_willThrow();
            v264 = v263;
            v265 = sub_100216754();
            v266 = sub_100216C74();

            if (os_log_type_enabled(v265, v266))
            {
              v267 = swift_slowAlloc();
              v268 = swift_slowAlloc();
              *v267 = 138543362;
              v269 = v264;
              v270 = _swift_stdlib_bridgeErrorToNSError();
              *(v267 + 4) = v270;
              *v268 = v270;
              _os_log_impl(&_mh_execute_header, v265, v266, "Error getting peer that trusts CRK: %{public}@", v267, 0xCu);
              sub_1000114D4(v268, &qword_10029D580, &unk_10021CCC0);
            }

            v102 = v264;
            v258(0, 0, v262);

            v370, v271, v272, v273, v274, v275, v276, v277;
LABEL_20:

            goto LABEL_43;
          }

          v135, v137, v138, v139, v140, v141, v142, v143, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v154 = sub_100216774();
        sub_100002648(v154, qword_10029D160);
        v155 = sub_100216754();
        v156 = sub_100216C54();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&_mh_execute_header, v155, v156, "Bad format CRK: recovery string or salt not set", v157, 2u);
        }

        sub_1000561D0();
        v152 = swift_allocError();
        v153 = xmmword_10021DC30;
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v147 = sub_100216774();
        sub_100002648(v147, qword_10029D160);
        v148 = sub_100216754();
        v149 = sub_100216C54();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v148, v149, "Custodian Recovery Key is not trusted", v150, 2u);
        }

        sub_1000561D0();
        v152 = swift_allocError();
        v153 = xmmword_10021DC10;
      }

      *v151 = v153;
      *(v151 + 16) = 13;
      v130(0, 0, v152);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v103 = sub_100216774();
      sub_100002648(v103, qword_10029D160);
      v104 = a5;
      v105 = sub_100216754();
      v106 = sub_100216C54();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v380 = v108;
        *v107 = 136446210;
        v109 = [v104 uuid];
        v110 = sub_100216974();
        v112 = v111;

        v113 = sub_100005FB0(v110, v112, &v380);
        v112, v114, v115, v116, v117, v118, v119, v120, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
        *(v107 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v105, v106, "Unable to find custodian recovery key %{public}s on model", v107, 0xCu);
        sub_100006128(v108, v121, v122, v123, v124, v125, v126, v127);
      }

      sub_1000561D0();
      v128 = swift_allocError();
      *v129 = xmmword_10021DC00;
      *(v129 + 16) = 13;
      v378(0, 0, v128);
    }

    goto LABEL_43;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v61 = sub_100216774();
  sub_100002648(v61, qword_10029D160);
  swift_errorRetain();
  v62 = sub_100216754();
  v63 = sub_100216C74();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v379 = a2;
    v380 = v65;
    *v64 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v66 = sub_100216994();
    v68 = v67;
    v69 = sub_100005FB0(v66, v67, &v380);
    v68, v70, v71, v72, v73, v74, v75, v76, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374;
    *(v64 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v62, v63, "Don't have my own peer keys; can't establish: %{public}s", v64, 0xCu);
    sub_100006128(v65, v77, v78, v79, v80, v81, v82, v83);
  }

  a3(0, 0, a2);
}

uint64_t sub_10013E720(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a8;
  v60 = a3;
  v58 = a2;
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a5;
    v56 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65._countAndFlagsBits = sub_100216994();
      object = v65._object;
      sub_100216A14(v65);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58, v59, v60, a7, 0x203A726F727265, 0xE700000000000000, v64;

      v29 = v62;
      v20 = v63;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v64);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithCustodianRecoveryKey complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a5 = v55;
    a6 = v57;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000033, 0x800000010023C7D0, v30, v31, v32, v33, v34, v35);
  return a9(a1, v58, v60, a4, a5, a6, a7);
}

void sub_10013E988(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), void *a3, void *a4, void *a5)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = sub_100216754();
  v12 = sub_100216C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginning a vouchWithCustodianRecoveryKey", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v278 = a2;
    v16 = v15;
    v17 = sub_100216974();
    v19 = v18;

    v20 = [*&a1[v14] egoPeerPermanentInfo];
    if (v20)
    {
      v28 = v20;
      v277 = sub_100216224();
      v30 = v29;

      v31 = [*&a1[v14] egoPeerPermanentInfoSig];
      if (v31)
      {
        v275 = v17;
        v39 = v31;
        v40 = sub_100216224();
        v276 = v41;

        v42 = [*&a1[v14] egoPeerStableInfo];
        if (v42)
        {
          v249 = a5;
          v50 = v42;
          v274 = sub_100216224();
          v52 = v51;

          v53 = [*&a1[v14] egoPeerStableInfoSig];
          if (v53)
          {
            v246 = a4;
            v61 = v53;
            v266 = sub_100216224();
            v252 = v62;

            v63 = [objc_allocWithZone(TPECPublicKeyFactory) init];

            sub_100012558(v277, v30);
            sub_100012558(v40, v276);
            v64 = sub_100216964();
            v19, v65, v66, v67, v68, v69, v70, v71, v239, v241, v246, v249, v252, v254, v258, a3, v266, v52;
            v273 = v30;
            isa = sub_100216204().super.isa;
            v73 = sub_100216204().super.isa;
            v255 = v63;
            v74 = [objc_opt_self() permanentInfoWithPeerID:v64 data:isa sig:v73 keyFactory:v63];

            v259 = v40;
            sub_100002BF0(v40, v276, v75, v76, v77, v78, v79, v80);

            sub_100002BF0(v277, v273, v81, v82, v83, v84, v85, v86);
            if (v74)
            {
              v243 = v74;
              v94 = objc_allocWithZone(TPPeerStableInfo);
              sub_100012558(v274, v270);
              v95 = v253;
              sub_100012558(v267, v253);
              v96 = sub_100216204().super.isa;
              v97 = sub_100216204().super.isa;
              v98 = [v94 initWithData:v96 sig:v97];

              sub_100002BF0(v267, v253, v99, v100, v101, v102, v103, v104);
              sub_100002BF0(v274, v270, v105, v106, v107, v108, v109, v110);
              v118 = v253;
              if (v98)
              {
                v119 = swift_allocObject();
                *(v119 + 16) = v278;
                *(v119 + 24) = v264;
                *(v119 + 32) = v247;
                *(v119 + 40) = a1;
                *(v119 + 48) = v74;
                *(v119 + 56) = v98;
                *(v119 + 64) = v250;
                strcpy(v279, "signing-key ");
                BYTE5(v279[1]) = 0;
                HIWORD(v279[1]) = -5120;

                v120 = v247;
                v121 = a1;
                v122 = v74;
                v123 = v98;

                v281._countAndFlagsBits = v275;
                v281._object = v19;
                sub_100216A14(v281);

                sub_100198E8C(v279[0], v279[1], sub_1001AA5A4, v119, v275, v19);

                v279[1], v124, v125, v126, v127, v128, v129, v130, v240, v74, v247, v250, v253, v255, v259, v264, v267, v270;

                swift_bridgeObjectRelease_n();
                sub_100002BF0(v268, v95, v131, v132, v133, v134, v135, v136);
                sub_100002BF0(v274, v271, v137, v138, v139, v140, v141, v142);
                v149 = v260;
              }

              else
              {
                v220 = v267;
                v221 = v270;
                v19, v111, v112, v113, v114, v115, v116, v117, v240, v243, v247, v250, v253, v255, v259, v264, v267, v270;
                v222 = sub_100216754();
                v223 = sub_100216C54();
                if (os_log_type_enabled(v222, v223))
                {
                  v224 = swift_slowAlloc();
                  *v224 = 0;
                  _os_log_impl(&_mh_execute_header, v222, v223, "Invalid stableinfo or signature; van't vouch for them", v224, 2u);
                }

                sub_1000561D0();
                v225 = swift_allocError();
                *v226 = xmmword_10021DC20;
                *(v226 + 16) = 13;
                v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v225);

                sub_100002BF0(v220, v118, v227, v228, v229, v230, v231, v232);
                sub_100002BF0(v274, v221, v233, v234, v235, v236, v237, v238);
                v149 = v262;
              }

              sub_100002BF0(v149, v276, v143, v144, v145, v146, v147, v148);
              v193 = v277;
              v194 = v273;
            }

            else
            {
              v195 = v267;
              v196 = v253;
              v19, v87, v88, v89, v90, v91, v92, v93, v240, v242, v247, v250, v253, v255, v259, v264, v267, v270;
              v197 = sub_100216754();
              v198 = sub_100216C54();
              if (os_log_type_enabled(v197, v198))
              {
                v199 = swift_slowAlloc();
                *v199 = 0;
                _os_log_impl(&_mh_execute_header, v197, v198, "Invalid permenent info or signature; can't vouch for them", v199, 2u);
              }

              sub_1000561D0();
              v200 = swift_allocError();
              *v201 = xmmword_10021DA80;
              *(v201 + 16) = 13;
              v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v200);

              sub_100002BF0(v195, v196, v202, v203, v204, v205, v206, v207);
              sub_100002BF0(v274, v272, v208, v209, v210, v211, v212, v213);
              sub_100002BF0(v261, v276, v214, v215, v216, v217, v218, v219);
              v193 = v277;
              v194 = v273;
            }

            goto LABEL_33;
          }

          v19, v54, v55, v56, v57, v58, v59, v60, v239, v241, v245, v249, v251, v254, v258, v263, v265, v269;
          v182 = sub_100216754();
          v183 = sub_100216C54();
          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            *v184 = 0;
            _os_log_impl(&_mh_execute_header, v182, v183, "stableInfoSig does not exist", v184, 2u);
          }

          sub_1000561D0();
          v185 = swift_allocError();
          *v186 = xmmword_100225FD0;
          *(v186 + 16) = 13;
          v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v185);

          sub_100002BF0(v274, v52, v187, v188, v189, v190, v191, v192);
        }

        else
        {
          v19, v43, v44, v45, v46, v47, v48, v49, v239, v241, v245, v248, v251, v254, v258, v263, v265, v269;
          v171 = sub_100216754();
          v172 = sub_100216C54();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            *v173 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "stableInfo does not exist", v173, 2u);
          }

          sub_1000561D0();
          v174 = swift_allocError();
          *v175 = xmmword_100225FD0;
          *(v175 + 16) = 13;
          v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v174);
        }

        sub_100002BF0(v40, v276, v176, v177, v178, v179, v180, v181);
      }

      else
      {
        v19, v32, v33, v34, v35, v36, v37, v38, v239, v241, v245, v248, v251, v254, v258, v263, v265, v269;
        v160 = sub_100216754();
        v161 = sub_100216C54();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&_mh_execute_header, v160, v161, "permanentInfoSig does not exist", v162, 2u);
        }

        sub_1000561D0();
        v163 = swift_allocError();
        *v164 = xmmword_100225FD0;
        *(v164 + 16) = 13;
        v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v163);
      }

      v193 = v277;
      v194 = v30;
LABEL_33:

      sub_100002BF0(v193, v194, v165, v166, v167, v168, v169, v170);
      return;
    }

    v19, v21, v22, v23, v24, v25, v26, v27, v239, v241, v245, v248, v251, v254, v258, v263, v265, v269;
    v155 = sub_100216754();
    v156 = sub_100216C54();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v155, v156, "permanentInfo does not exist", v157, 2u);
    }

    sub_1000561D0();
    v158 = swift_allocError();
    *v159 = xmmword_100225FD0;
    *(v159 + 16) = 13;
    v278(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v158);
  }

  else
  {
    v150 = sub_100216754();
    v151 = sub_100216C54();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "As a nonmember, can't vouch for someone else", v152, 2u);
    }

    sub_1000561D0();
    v153 = swift_allocError();
    *v154 = xmmword_100225FD0;
    *(v154 + 16) = 13;
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v153);
  }
}

void sub_10013F540(void *a1, NSObject *a2, void (*a3)(void, unint64_t, void, unint64_t, void, void, NSObject *), uint64_t a4, void *a5, uint64_t a6, void *a7, _TtC18TrustedPeersHelper6Client **a8, _TtC18TrustedPeersHelper6Client **a9)
{
  v431 = a7;
  v16 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v422 - v18;
  v20 = sub_1002163D4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v24 = &v422 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v432 = a4;
    v433 = v24;
    v435 = a3;
    v434 = a1;
    v25 = [a5 uuid];
    sub_100216974();
    v27 = v26;

    sub_100216394();
    v27, v28, v29, v30, v31, v32, v33, v34, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1000114D4(v19, &qword_10029D900, &qword_1002266A0);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v35 = sub_100216774();
      sub_100002648(v35, qword_10029D160);
      v36 = a5;
      v37 = sub_100216754();
      v38 = sub_100216C54();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v437 = v40;
        *v39 = 136446210;
        v41 = [v36 uuid];
        v42 = sub_100216974();
        v44 = v43;

        v45 = sub_100005FB0(v42, v44, &v437);
        v44, v46, v47, v48, v49, v50, v51, v52, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unable to parse uuid %{public}s", v39, 0xCu);
        sub_100006128(v40, v53, v54, v55, v56, v57, v58, v59);
      }

      sub_1000561D0();
      v60 = swift_allocError();
      *v61 = xmmword_10021DC00;
      *(v61 + 16) = 13;
      v435(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v60);

      return;
    }

    v430 = v21;
    (*(v21 + 32))(v433, v19, v20);
    v85 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v86 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    isa = sub_1002163B4().super.isa;
    v88 = [v86 findCustodianRecoveryKeyWithUUID:isa];

    if (v88)
    {
      v89 = *(a6 + v85);
      v437 = 0;
      v90 = [v89 isCustodianRecoveryKeyTrusted:v88 error:&v437];
      v91 = v437;
      if (v437)
      {
        swift_willThrow();
        v92 = qword_100297520;
        v93 = v91;
        v94 = v435;
        if (v92 != -1)
        {
          swift_once();
        }

        v95 = sub_100216774();
        sub_100002648(v95, qword_10029D160);
        v96 = v93;
        v97 = sub_100216754();
        v98 = sub_100216C54();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *v99 = 138543362;
          v101 = v96;
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 4) = v102;
          *v100 = v102;
          _os_log_impl(&_mh_execute_header, v97, v98, "Error determining whether Custodian Recovery Key is trusted: %{public}@", v99, 0xCu);
          sub_1000114D4(v100, &qword_10029D580, &unk_10021CCC0);
        }

        v103 = v96;
        v94(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v91);

LABEL_20:
LABEL_44:
        (*(v430 + 1))(v433, v20);
        return;
      }

      v131 = v435;
      if (v90)
      {
        v132 = [a5 recoveryString];
        if (v132)
        {
          v133 = v132;
          v134 = sub_100216974();
          v136 = v135;

          v137 = [a5 salt];
          if (v137)
          {
            v145 = v137;
            v146 = sub_100216974();
            v429 = v147;

            type metadata accessor for CustodianRecoveryKey();
            swift_allocObject();
            v148 = v88;
            v149 = v134;
            v150 = v148;
            v163 = sub_1000129C8(v148, v149, v136, v146, v429);
            v164 = qword_100297520;
            swift_retain_n();
            if (v164 != -1)
            {
              swift_once();
            }

            v165 = sub_100216774();
            v429 = sub_100002648(v165, qword_10029D160);
            v166 = sub_100216754();
            v167 = sub_100216C54();
            v163, v168, v169, v170, v171, v172, v173, v174;
            LODWORD(v427) = v167;
            v175 = v166;
            v176 = os_log_type_enabled(v166, v167);
            v428 = v163;
            v425 = 0;
            if (v176)
            {
              v177 = swift_slowAlloc();
              v423 = v177;
              v424 = swift_slowAlloc();
              v437 = v424;
              *v177 = 136446210;
              v178 = [*(*v163->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
              v179 = [v178 keyData];

              v180 = sub_100216224();
              v182 = v181;

              v183 = sub_100216214(0);
              v185 = v184;
              sub_100002BF0(v180, v182, v186, v187, v188, v189, v190, v191);
              v192 = v183;
              v163 = v428;
              v193 = sub_100005FB0(v192, v185, &v437);
              v185, v194, v195, v196, v197, v198, v199, v200, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
              v201 = v423;
              *(v423 + 4) = v193;
              _os_log_impl(&_mh_execute_header, v175, v427, "vouchWithCustodianRecoveryKey signingPubKey: %{public}s", v201, 0xCu);
              sub_100006128(v424, v202, v203, v204, v205, v206, v207, v208);
            }

            v209 = sub_100216754();
            v210 = sub_100216C54();
            v163, v211, v212, v213, v214, v215, v216, v217;
            if (os_log_type_enabled(v209, v210))
            {
              v218 = swift_slowAlloc();
              v426 = v150;
              v219 = v218;
              v427 = swift_slowAlloc();
              v437 = v427;
              *v219 = 136446210;
              v220 = [*(*v163->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
              v424 = v209;
              v221 = v220;
              v222 = [v220 keyData];
              LODWORD(v423) = v210;
              v223 = v222;

              v224 = sub_100216224();
              v225 = v163;
              v227 = v226;

              v228 = sub_100216214(0);
              v230 = v229;
              v225, v229, v231, v232, v233, v234, v235, v236;
              sub_100002BF0(v224, v227, v237, v238, v239, v240, v241, v242);
              v243 = sub_100005FB0(v228, v230, &v437);
              v230, v244, v245, v246, v247, v248, v249, v250, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
              v251 = v219;
              v150 = v426;
              *(v251 + 1) = v243;
              v252 = v424;
              _os_log_impl(&_mh_execute_header, v424, v423, "vouchWithCustodianRecoveryKey encryptionPubKey: %{public}s", v251, 0xCu);
              sub_100006128(v427, v253, v254, v255, v256, v257, v258, v259);
            }

            else
            {

              v163, v260, v261, v262, v263, v264, v265, v266;
            }

            v267 = v435;
            v268 = *(a6 + v85);
            v437 = 0;
            v269 = [v268 peerIDThatTrustsCustodianRecoveryKeys:v150 canIntroducePeer:v431 stableInfo:a8 error:&v437];
            v270 = v269;
            v271 = v437;
            if (v437)
            {
              v272 = v437;

              swift_willThrow();
              v273 = v272;
              v274 = sub_100216754();
              v275 = sub_100216C54();

              if (os_log_type_enabled(v274, v275))
              {
                v276 = swift_slowAlloc();
                v277 = v150;
                v278 = swift_slowAlloc();
                *v276 = 138543362;
                v279 = v273;
                v280 = _swift_stdlib_bridgeErrorToNSError();
                *(v276 + 4) = v280;
                *v278 = v280;
                _os_log_impl(&_mh_execute_header, v274, v275, "Error getting peer that trusts CRK: %{public}@", v276, 0xCu);
                sub_1000114D4(v278, &qword_10029D580, &unk_10021CCC0);
                v150 = v277;
              }

              v103 = v273;
              v267(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v271);

              v428, v281, v282, v283, v284, v285, v286, v287;
              goto LABEL_20;
            }

            if (!v269)
            {
              v335 = sub_100216754();
              v336 = sub_100216C54();
              if (os_log_type_enabled(v335, v336))
              {
                v337 = swift_slowAlloc();
                *v337 = 0;
                _os_log_impl(&_mh_execute_header, v335, v336, "Untrusted custodian recovery key set", v337, 2u);
              }

              sub_1000561D0();
              v338 = swift_allocError();
              *v339 = xmmword_10021DC10;
              *(v339 + 16) = 13;
              v267(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v338);

              v428, v340, v341, v342, v343, v344, v345, v346;
              goto LABEL_44;
            }

            v427 = a9;
            v423 = sub_100216974();
            v424 = a8;
            v289 = v288;
            v290 = v428;
            v291 = *(a6 + v85);
            v292 = *v428->endpoint;
            v293 = v291;
            v427 = sub_10010C8B4(v427, v292, v423, v289, v293);
            v423 = v294;

            v295 = v289;
            v296 = v290;
            v295, v297, v298, v299, v300, v301, v302, v303, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;

            v304 = v431;
            v305 = *(a6 + v85);
            v306 = *(*v290->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
            v437 = 0;
            v307 = v305;
            v308 = [v307 createVoucherForCandidate:v304 stableInfo:v424 withSponsorID:v270 reason:7 signingKeyPair:v306 error:&v437];

            v309 = v437;
            v426 = v150;
            if (v308)
            {
              v310 = v427;
              v311 = v434;
              v312 = v309;
              v313 = [v304 epoch];
              v314 = v435;
              if (v313 < 0)
              {
                __break(1u);
                return;
              }

              v315 = v313;
              v316 = v310;
              v317 = v310;
              v318 = v425;
              v319 = sub_10010BD08(v317, v311, v311, v315);
              if (!v318)
              {
                v434 = v319;
                v316, v320, v321, v322, v323, v324, v325, v326, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;

                v384 = [v308 data];
                v385 = sub_100216224();
                v387 = v386;

                v388 = [v308 sig];
                v389 = sub_100216224();
                v391 = v390;

                v392 = v423;
                v393 = v423;
                v394 = v314;
                v395 = v434;
                v394(v385, v387, v389, v391, v434, v392, 0);
                v395, v396, v397, v398, v399, v400, v401, v402, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;

                sub_100002BF0(v389, v391, v403, v404, v405, v406, v407, v408);
                sub_100002BF0(v385, v387, v409, v410, v411, v412, v413, v414);

                v428, v415, v416, v417, v418, v419, v420, v421;
                goto LABEL_44;
              }

              v327 = v318;

              v316, v328, v329, v330, v331, v332, v333, v334, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
            }

            else
            {
              v347 = v437;
              v427, v348, v349, v350, v351, v352, v353, v354, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
              v327 = sub_100216154();

              swift_willThrow();
              v314 = v435;
            }

            swift_errorRetain();
            v355 = sub_100216754();
            v356 = sub_100216C74();

            if (os_log_type_enabled(v355, v356))
            {
              v357 = swift_slowAlloc();
              v358 = swift_slowAlloc();
              v436 = v327;
              v437 = v358;
              *v357 = 136446210;
              swift_errorRetain();
              sub_10001148C(&unk_10029D560, qword_10021D450);
              v359 = sub_100216994();
              v361 = v360;
              v362 = sub_100005FB0(v359, v360, &v437);
              v361, v363, v364, v365, v366, v367, v368, v369, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
              *(v357 + 4) = v362;
              _os_log_impl(&_mh_execute_header, v355, v356, "Error creating voucher using custodian recovery key set: %{public}s", v357, 0xCu);
              sub_100006128(v358, v370, v371, v372, v373, v374, v375, v376);
              v296 = v428;
            }

            swift_errorRetain();
            v314(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v327);

            v296, v377, v378, v379, v380, v381, v382, v383;

            v162 = v426;
LABEL_43:

            goto LABEL_44;
          }

          v136, v138, v139, v140, v141, v142, v143, v144, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v158 = sub_100216774();
        sub_100002648(v158, qword_10029D160);
        v159 = sub_100216754();
        v160 = sub_100216C54();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&_mh_execute_header, v159, v160, "Bad format CRK: recovery string or salt not set", v161, 2u);
        }

        sub_1000561D0();
        v156 = swift_allocError();
        v157 = xmmword_10021DC30;
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v151 = sub_100216774();
        sub_100002648(v151, qword_10029D160);
        v152 = sub_100216754();
        v153 = sub_100216C54();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&_mh_execute_header, v152, v153, "Custodian Recovery Key is not trusted", v154, 2u);
        }

        sub_1000561D0();
        v156 = swift_allocError();
        v157 = xmmword_10021DC10;
      }

      *v155 = v157;
      *(v155 + 16) = 13;
      v131(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v156);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v104 = sub_100216774();
      sub_100002648(v104, qword_10029D160);
      v105 = a5;
      v106 = sub_100216754();
      v107 = sub_100216C54();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v437 = v109;
        *v108 = 136446210;
        v110 = [v105 uuid];
        v111 = sub_100216974();
        v113 = v112;

        v114 = sub_100005FB0(v111, v113, &v437);
        v113, v115, v116, v117, v118, v119, v120, v121, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
        *(v108 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v106, v107, "Unable to find custodian recovery key %{public}s on model", v108, 0xCu);
        sub_100006128(v109, v122, v123, v124, v125, v126, v127, v128);
      }

      sub_1000561D0();
      v129 = swift_allocError();
      *v130 = xmmword_10021DC00;
      *(v130 + 16) = 13;
      v435(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v129);
    }

    v162 = v434;
    goto LABEL_43;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v62 = sub_100216774();
  sub_100002648(v62, qword_10029D160);
  swift_errorRetain();
  v63 = sub_100216754();
  v64 = sub_100216C74();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v436 = a2;
    v437 = v66;
    *v65 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v67 = sub_100216994();
    v69 = v68;
    v70 = sub_100005FB0(v67, v68, &v437);
    v69, v71, v72, v73, v74, v75, v76, v77, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431;
    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "Don't have my own peer keys; can't establish: %{public}s", v65, 0xCu);
    sub_100006128(v66, v78, v79, v80, v81, v82, v83, v84);
  }

  a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
}

uint64_t sub_100140BE8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a8;
  v60 = a3;
  v58 = a2;
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a5;
    v56 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65._countAndFlagsBits = sub_100216994();
      object = v65._object;
      sub_100216A14(v65);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58, v59, v60, a7, 0x203A726F727265, 0xE700000000000000, v64;

      v29 = v62;
      v20 = v63;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v64);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithReroll complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a5 = v55;
    a6 = v57;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000002BLL, 0x800000010023C7A0, v30, v31, v32, v33, v34, v35);
  return a9(a1, v58, v60, a4, a5, a6, a7);
}

void sub_100140E50(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  sub_100002648(v12, qword_10029D160);
  v13 = sub_100216754();
  v14 = sub_100216C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "beginning a vouchWithReroll", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v17)
  {
    v264 = a2;
    v18 = v17;
    v19 = sub_100216974();
    v21 = v20;

    v22 = [*&a1[v16] egoPeerPermanentInfo];
    if (v22)
    {
      v262 = v19;
      v30 = v22;
      v31 = sub_100216224();
      v263 = v32;

      v33 = [*&a1[v16] egoPeerPermanentInfoSig];
      if (!v33)
      {
        v21, v34, v35, v36, v37, v38, v39, v40, v226, v228, v232, v235, v239, v242, v244, v248, v253, v256;
        v153 = sub_100216754();
        v154 = sub_100216C54();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&_mh_execute_header, v153, v154, "permanentInfoSig does not exist", v155, 2u);
        }

        sub_1000561D0();
        v156 = swift_allocError();
        *v157 = xmmword_100225FD0;
        *(v157 + 16) = 13;
        v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v156);

        v164 = v31;
        goto LABEL_37;
      }

      v254 = a4;
      v257 = a5;
      v41 = v33;
      v42 = sub_100216224();
      v44 = v43;

      v45 = [*&a1[v16] egoPeerStableInfo];
      if (v45)
      {
        v53 = v45;
        v260 = sub_100216224();
        v261 = v54;

        v55 = [*&a1[v16] egoPeerStableInfoSig];
        if (v55)
        {
          v63 = v55;
          v245 = sub_100216224();
          v249 = v64;

          v259 = [objc_allocWithZone(TPECPublicKeyFactory) init];

          sub_100012558(v31, v263);
          sub_100012558(v42, v44);
          v65 = sub_100216964();
          v21, v66, v67, v68, v69, v70, v71, v72, a6, v65, v232, v235, v239, v9, v245, v249, v254, v257;
          isa = sub_100216204().super.isa;
          v74 = sub_100216204().super.isa;
          v75 = [objc_opt_self() permanentInfoWithPeerID:v65 data:isa sig:v74 keyFactory:v259];

          v236 = v44;
          sub_100002BF0(v42, v44, v76, v77, v78, v79, v80, v81);

          sub_100002BF0(v31, v263, v82, v83, v84, v85, v86, v87);
          if (!v75)
          {
            v190 = v246;
            v189 = v250;
            v21, v88, v89, v90, v91, v92, v93, v94, v227, v229, v42, v236, v31, v243, v246, v250, v255, v258;
            v191 = sub_100216754();
            v192 = sub_100216C54();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              *v193 = 0;
              _os_log_impl(&_mh_execute_header, v191, v192, "Invalid permenent info or signature; can't vouch for them", v193, 2u);
            }

            sub_1000561D0();
            v194 = swift_allocError();
            *v195 = xmmword_10021DA80;
            *(v195 + 16) = 13;
            v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v194);

            sub_100002BF0(v190, v189, v196, v197, v198, v199, v200, v201);
            v141 = v260;
            v142 = v261;
            goto LABEL_36;
          }

          v230 = v75;
          v95 = objc_allocWithZone(TPPeerStableInfo);
          sub_100012558(v260, v261);
          sub_100012558(v246, v250);
          v96 = sub_100216204().super.isa;
          v97 = sub_100216204().super.isa;
          v98 = [v95 initWithData:v96 sig:v97];

          sub_100002BF0(v246, v250, v99, v100, v101, v102, v103, v104);
          sub_100002BF0(v260, v261, v105, v106, v107, v108, v109, v110);
          if (v98)
          {
            v118 = swift_allocObject();
            *(v118 + 16) = v264;
            *(v118 + 24) = v243;
            *(v118 + 32) = v255;
            *(v118 + 40) = v258;
            *(v118 + 48) = v227;
            *(v118 + 56) = a1;
            *(v118 + 64) = v230;
            *(v118 + 72) = v98;
            *(v118 + 80) = v262;
            *(v118 + 88) = v21;
            strcpy(v265, "signing-key ");
            BYTE5(v265[1]) = 0;
            HIWORD(v265[1]) = -5120;

            v119 = a1;
            v120 = v230;
            v121 = v98;
            v267._countAndFlagsBits = v262;
            v267._object = v21;
            sub_100216A14(v267);

            sub_100198E8C(v265[0], v265[1], sub_1001AA574, v118, v262, v21);

            v265[1], v122, v123, v124, v125, v126, v127, v128, v227, v230, v42, v44, v31, v243, v246, v250, v255, v258;

            swift_bridgeObjectRelease_n();
            sub_100002BF0(v247, v251, v129, v130, v131, v132, v133, v134);
            v141 = v260;
            v142 = v261;
LABEL_36:
            sub_100002BF0(v141, v142, v135, v136, v137, v138, v139, v140);
            sub_100002BF0(v233, v237, v202, v203, v204, v205, v206, v207);
            v164 = v240;
            goto LABEL_37;
          }

          v208 = v246;
          v21, v111, v112, v113, v114, v115, v116, v117, v227, v230, v42, v44, v31, v243, v246, v250, v255, v258;
          v209 = sub_100216754();
          v210 = sub_100216C54();
          v31 = v241;
          if (os_log_type_enabled(v209, v210))
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            _os_log_impl(&_mh_execute_header, v209, v210, "Invalid stableinfo or signature; van't vouch for them", v211, 2u);
          }

          sub_1000561D0();
          v212 = swift_allocError();
          *v213 = xmmword_10021DC20;
          *(v213 + 16) = 13;
          v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v212);

          sub_100002BF0(v208, v252, v214, v215, v216, v217, v218, v219);
          sub_100002BF0(v260, v261, v220, v221, v222, v223, v224, v225);
          v187 = v234;
          v188 = v238;
LABEL_32:
          sub_100002BF0(v187, v188, v170, v171, v172, v173, v174, v175);
          v164 = v31;
LABEL_37:

          sub_100002BF0(v164, v263, v158, v159, v160, v161, v162, v163);
          return;
        }

        v21, v56, v57, v58, v59, v60, v61, v62, v226, v228, v232, v235, v239, v242, v244, v248, v254, v257;
        v176 = sub_100216754();
        v177 = sub_100216C54();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&_mh_execute_header, v176, v177, "stableInfoSig does not exist", v178, 2u);
        }

        sub_1000561D0();
        v179 = swift_allocError();
        *v180 = xmmword_100225FD0;
        *(v180 + 16) = 13;
        v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v179);

        sub_100002BF0(v260, v261, v181, v182, v183, v184, v185, v186);
      }

      else
      {
        v21, v46, v47, v48, v49, v50, v51, v52, v226, v228, v232, v235, v239, v242, v244, v248, v254, v257;
        v165 = sub_100216754();
        v166 = sub_100216C54();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v165, v166, "stableInfo does not exist", v167, 2u);
        }

        sub_1000561D0();
        v168 = swift_allocError();
        *v169 = xmmword_100225FD0;
        *(v169 + 16) = 13;
        v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v168);
      }

      v187 = v42;
      v188 = v44;
      goto LABEL_32;
    }

    v21, v23, v24, v25, v26, v27, v28, v29, v226, v228, v232, v235, v239, v242, v244, v248, v253, v256;
    v148 = sub_100216754();
    v149 = sub_100216C54();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v148, v149, "permanentInfo does not exist", v150, 2u);
    }

    sub_1000561D0();
    v151 = swift_allocError();
    *v152 = xmmword_100225FD0;
    *(v152 + 16) = 13;
    v264(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v151);
  }

  else
  {
    v143 = sub_100216754();
    v144 = sub_100216C54();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v143, v144, "As a nonmember, can't vouch for someone else", v145, 2u);
    }

    sub_1000561D0();
    v146 = swift_allocError();
    *v147 = xmmword_100225FD0;
    *(v147 + 16) = 13;
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v146);
  }
}

void sub_1001419DC(void *a1, uint64_t a2, uint64_t (*a3)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  if (a1)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    *(v25 + 32) = a7;
    *(v25 + 40) = a5;
    *(v25 + 48) = a6;
    *(v25 + 56) = a8;
    *(v25 + 64) = a9;
    *(v25 + 72) = a10;
    *(v25 + 80) = a11;
    *(v25 + 88) = a12;
    *(v25 + 96) = a1;
    strcpy(v72, "signing-key ");
    BYTE5(v72[1]) = 0;
    HIWORD(v72[1]) = -5120;
    v26 = a1;

    v27 = a8;
    v28 = a9;
    v29 = a10;

    v79._countAndFlagsBits = a5;
    v79._object = a6;
    sub_100216A14(v79);

    sub_100198E8C(v72[0], v72[1], sub_1001AA58C, v25, a5, a6);

    v72[1], v30, v31, v32, v33, v34, v35, v36, v68, a3, a11, v72[0], v72[1], v73, v74, v75, v76, v77;

    a6, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v45 = sub_100216774();
    sub_100002648(v45, qword_10029D160);
    swift_errorRetain();
    v46 = sub_100216754();
    v47 = sub_100216C74();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72[0] = v49;
      *v48 = 136446210;
      v73 = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v50 = sub_100216994();
      v52 = v51;
      v53 = sub_100005FB0(v50, v51, v72);
      v52, v54, v55, v56, v57, v58, v59, v60, v68, v69, v71, v72[0], v72[1], v73, v74, v75, v76, v77;
      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Don't have my own peer keys; can't establish: %{public}s", v48, 0xCu);
      sub_100006128(v49, v61, v62, v63, v64, v65, v66, v67);
    }

    a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
  }
}

void sub_100141CEC(void *a1, void *a2, char *a3, char *a4, unint64_t a5, uint64_t a6, _TtC18TrustedPeersHelper6Client *a7, uint64_t a8, void *a9, uint64_t a10, _TtC18TrustedPeersHelper6Client *a11, _TtC18TrustedPeersHelper6Client *a12, uint64_t a13)
{
  v13 = a3;
  if (!a1)
  {
    v19 = a2;
    if (qword_100297520 == -1)
    {
LABEL_6:
      v37 = sub_100216774();
      sub_100002648(v37, qword_10029D160);
      swift_errorRetain();
      v38 = sub_100216754();
      v39 = sub_100216C74();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v141 = v41;
        *v40 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v42 = sub_100216994();
        v44 = v43;
        v45 = sub_100005FB0(v42, v43, &v141);
        v44, v46, v47, v48, v49, v50, v51, v52, v128, v132, v136, v19, v141, v142, v143, v144, v145, v146;
        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Don't have my own peer keys; can't establish: %{public}s", v40, 0xCu);
        sub_100006128(v41, v53, v54, v55, v56, v57, v58, v59);
      }

      (v13)(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v19);
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v19 = a9;
  v20 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v21 = *(a8 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v22 = a1;
  v13 = sub_10010C8B4(a5, v22, a6, a7, v21);
  v24 = v23;

  v25 = *(a8 + v20);
  v26 = sub_100216964();
  v27 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
  v141 = 0;
  v28 = [v25 createVoucherForCandidate:a9 stableInfo:a10 withSponsorID:v26 reason:2 signingKeyPair:v27 error:&v141];

  if (v28)
  {
    v29 = v141;
    sub_1001820D4(a11, a12, v30, v31, v32, v33, v34, v35, a4, a3);
    v36 = [a9 epoch];
    if ((v36 & 0x8000000000000000) == 0)
    {
      v92 = sub_10010BD08(v13, a13, a13, v36);
      v13, v93, v94, v95, v96, v97, v98, v99, v128, v132, v136, v139, v141, v142, v143, v144, v145, v146;
      v100 = [v28 data];
      v101 = sub_100216224();
      v103 = v102;

      v104 = [v28 sig];
      v105 = sub_100216224();
      v107 = v106;

      v108 = v24;
      v135(v101, v103, v105, v107, v92, v24, 0);
      v92, v109, v110, v111, v112, v113, v114, v115, v131, v135, v138, v140, v141, v142, v143, v144, v145, v146;

      sub_100002BF0(v105, v107, v116, v117, v118, v119, v120, v121);
      sub_100002BF0(v101, v103, v122, v123, v124, v125, v126, v127);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v60 = v141;
  v13, v61, v62, v63, v64, v65, v66, v67, a4, a3, v136, v139, v141, v142, v143, v144, v145, v146;
  v68 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v69 = sub_100216774();
  sub_100002648(v69, qword_10029D160);
  swift_errorRetain();
  v70 = sub_100216754();
  v71 = sub_100216C74();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v141 = v73;
    *v72 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v74 = sub_100216994();
    v76 = v75;
    v77 = sub_100005FB0(v74, v75, &v141);
    v76, v78, v79, v80, v81, v82, v83, v84, v130, v134, v137, v68, v141, v142, v143, v144, v145, v146;
    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "Error creating voucher using reroll: %{public}s", v72, 0xCu);
    sub_100006128(v73, v85, v86, v87, v88, v89, v90, v91);
  }

  swift_errorRetain();
  (v134)(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v68);
}

uint64_t sub_10014227C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void), void *a8)
{
  v57 = a3;
  if (a5)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a8;
    v55 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v64._countAndFlagsBits = sub_100216994();
      object = v64._object;
      sub_100216A14(v64);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v55, v57, a5, 1869771365, 0xE700000000000000, v61, v62, v63;

      v29 = v59;
      v20 = v60;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v61);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v55, v57, v58, v59, v60, v61, v62, v63;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouch complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a7 = v56;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000083, 0x800000010023C900, v30, v31, v32, v33, v34, v35);
  return a7(a1, a2, v57, a4, a5);
}

void sub_1001424DC(char *a1, void (*a2)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5, _TtC18TrustedPeersHelper6Client *a6, const char *a7, _TtC18TrustedPeersHelper6Client *a8, const char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21)
{
  v25 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v26 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100216974();
    v30 = v29;

    v31 = [*&a1[v25] egoPeerPermanentInfo];
    if (v31)
    {
      v241 = a5;
      v39 = v31;
      v40 = sub_100216224();
      v42 = v41;

      v43 = [*&a1[v25] egoPeerPermanentInfoSig];
      if (v43)
      {
        v235 = a2;
        v240 = a3;
        v50 = v43;
        v51 = v28;
        v52 = sub_100216224();
        v54 = v53;

        v55 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        v56 = v55;
        sub_100012558(v40, v42);
        sub_100012558(v52, v54);
        v200 = v51;
        v57 = sub_100216964();
        v30, v58, v59, v60, v61, v62, v63, v64, v196, v200, v203, a17, v208, v213, v218, v224, v230, v235;
        isa = sub_100216204().super.isa;
        v242 = v42;
        v66 = sub_100216204().super.isa;
        v225 = objc_opt_self();
        v67 = v30;
        v68 = [v225 permanentInfoWithPeerID:v57 data:isa sig:v66 keyFactory:v56];

        sub_100002BF0(v52, v54, v69, v70, v71, v72, v73, v74);
        sub_100002BF0(v40, v242, v75, v76, v77, v78, v79, v80);

        if (v68)
        {
          v220 = v40;
          v88 = v56;

          sub_100012558(a6, a7);
          sub_100012558(a8, a9);
          v89 = sub_100216964();
          v241, v90, v91, v92, v93, v94, v95, v96, v197, v201, v67, v206, v54, v52, v220, v225, v68, v236;
          v97 = sub_100216204().super.isa;
          v98 = sub_100216204().super.isa;
          v99 = [v226 permanentInfoWithPeerID:v89 data:v97 sig:v98 keyFactory:v88];

          v227 = v88;
          sub_100002BF0(a8, a9, v100, v101, v102, v103, v104, v105);

          sub_100002BF0(a6, a7, v106, v107, v108, v109, v110, v111);
          if (v99)
          {
            v119 = v99;
            v120 = objc_allocWithZone(TPPeerStableInfo);
            v121 = sub_100216204().super.isa;
            v122 = sub_100216204().super.isa;
            v123 = [v120 initWithData:v121 sig:v122];

            v131 = v237;
            v133 = v215;
            v132 = v221;
            v134 = v210;
            if (v123)
            {
              v135 = swift_allocObject();
              *(v135 + 16) = a4;
              *(v135 + 24) = v241;
              *(v135 + 32) = v119;
              *(v135 + 40) = v237;
              *(v135 + 48) = v240;
              *(v135 + 56) = a14;
              *(v135 + 64) = a15;
              *(v135 + 72) = a16;
              *(v135 + 80) = v207;
              *(v135 + 88) = a18;
              *(v135 + 96) = a19;
              *(v135 + 104) = a20 & 1;
              *(v135 + 112) = a1;
              *(v135 + 120) = v123;
              *(v135 + 128) = v202;
              *(v135 + 144) = a21;
              *(v135 + 152) = v231;
              strcpy(v247, "signing-key ");
              BYTE5(v247[1]) = 0;
              HIWORD(v247[1]) = -5120;

              v136 = a1;
              v137 = v123;

              v138 = v231;

              v139 = v119;

              sub_100216A14(v202);

              sub_100198E8C(v247[0], v247[1], sub_1001AA6CC, v135, v202._countAndFlagsBits, v202._object);

              v247[1], v140, v141, v142, v143, v144, v145, v146, v198, v202._countAndFlagsBits, v202._object, v207, v210, v215, v221, v227, v231, v237;

              swift_bridgeObjectRelease_n();
              sub_100002BF0(v216, v211, v147, v148, v149, v150, v151, v152);
              v159 = v222;
              v160 = v242;
LABEL_29:

              sub_100002BF0(v159, v160, v153, v154, v155, v156, v157, v158);
              return;
            }

            v202._object, v124, v125, v126, v127, v128, v129, v130, v198, v202._countAndFlagsBits, v202._object, v207, v210, v215, v221, v227, v231, v237;
            v178 = v242;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v190 = sub_100216774();
            sub_100002648(v190, qword_10029D160);
            v191 = sub_100216754();
            v192 = sub_100216C54();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              *v193 = 0;
              _os_log_impl(&_mh_execute_header, v191, v192, "Invalid stableinfo or signature; van't vouch for them", v193, 2u);
            }

            sub_1000561D0();
            v194 = swift_allocError();
            *v195 = xmmword_10021DC20;
            *(v195 + 16) = 13;
            v131(0, 0xF000000000000000, 0, 0xF000000000000000, v194);

            v188 = v133;
            v189 = v134;
          }

          else
          {
            v202._object, v112, v113, v114, v115, v116, v117, v118, v198, v202._countAndFlagsBits, v202._object, v207, v210, v215, v221, v88, v231, v237;
            v132 = v223;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v175 = sub_100216774();
            sub_100002648(v175, qword_10029D160);
            v176 = sub_100216754();
            v177 = sub_100216C54();
            v178 = v242;
            if (os_log_type_enabled(v176, v177))
            {
              v179 = swift_slowAlloc();
              *v179 = 0;
              _os_log_impl(&_mh_execute_header, v176, v177, "Invalid permenent info or signature; can't vouch for them", v179, 2u);
            }

            sub_1000561D0();
            v180 = swift_allocError();
            *v181 = xmmword_10021DA80;
            *(v181 + 16) = 13;
            v239(0, 0xF000000000000000, 0, 0xF000000000000000, v180);

            v188 = v217;
            v189 = v212;
          }

          sub_100002BF0(v188, v189, v182, v183, v184, v185, v186, v187);
          v159 = v132;
          v160 = v178;
          goto LABEL_29;
        }

        v67, v81, v82, v83, v84, v85, v86, v87, v197, v201, v204, v206, v209, v214, v219, v225, 0, v236;
        sub_1000561D0();
        v167 = swift_allocError();
        *v168 = xmmword_10021DA80;
        *(v168 + 16) = 13;
        v238(0, 0xF000000000000000, 0, 0xF000000000000000, v167);

        sub_100002BF0(v52, v54, v169, v170, v171, v172, v173, v174);
        v159 = v40;
        v160 = v242;
        goto LABEL_29;
      }

      sub_100002BF0(v40, v42, v44, v45, v46, v47, v48, v49);
    }

    v30, v32, v33, v34, v35, v36, v37, v38, v196, v199, v203, v205, v208, v213, v218, v224, v230, v234;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v161 = sub_100216774();
  sub_100002648(v161, qword_10029D160);
  v162 = sub_100216754();
  v163 = sub_100216C54();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&_mh_execute_header, v162, v163, "As a nonmember, can't vouch for someone else", v164, 2u);
  }

  sub_1000561D0();
  v165 = swift_allocError();
  *v166 = xmmword_100225FD0;
  *(v166 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0xF000000000000000, v165);
}

void sub_100142E38(void *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4, _TtC18TrustedPeersHelper6Client *a5, _TtC18TrustedPeersHelper6Client *a6, uint64_t a7, uint64_t a8, _TtC18TrustedPeersHelper6Client *a9, uint64_t a10, _TtC18TrustedPeersHelper6Client *a11, void *a12, _TtC18TrustedPeersHelper6Client *a13, char a14, _TtC18TrustedPeersHelper6Client *a15, void *a16, uint64_t a17, _TtC18TrustedPeersHelper6Client *a18, _TtC18TrustedPeersHelper6Client *a19, void *a20)
{
  v339 = a6;
  v336 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v28 = __chkstk_darwin(PolicyDocumentsRequest, v27);
  v30 = (&v317 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    if (qword_100297520 == -1)
    {
LABEL_5:
      v34 = sub_100216774();
      sub_100002648(v34, qword_10029D160);
      swift_errorRetain();
      v35 = a5;

      v36 = sub_100216754();
      v37 = sub_100216C74();

      a4, v38, v39, v40, v41, v42, v43, v44, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;

      if (os_log_type_enabled(v36, v37))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v45 = 136446722;
        *(v45 + 4) = sub_100005FB0(v336, a4, &aBlock);
        *(v45 + 12) = 2114;
        *(v45 + 14) = v35;
        *v46 = v35;
        *(v45 + 22) = 2082;
        v351 = a2;
        swift_errorRetain();
        v47 = v35;
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v48 = sub_100216994();
        v50 = v49;
        v51 = sub_100005FB0(v48, v49, &aBlock);
        v50, v52, v53, v54, v55, v56, v57, v58, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
        *(v45 + 24) = v51;
        _os_log_impl(&_mh_execute_header, v36, v37, "Don't have my own keys: can't vouch for %{public}s(%{public}@): %{public}s", v45, 0x20u);
        sub_1000114D4(v46, &qword_10029D580, &unk_10021CCC0);

        swift_arrayDestroy();
      }

      (v339)(0, 0xF000000000000000, 0, 0xF000000000000000, a2);
      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_5;
  }

  v326 = a5;
  v320 = v28;
  v321 = v30;
  v31 = kSecurityRTCEventNameFetchPolicyDocument;
  v327 = a1;
  sub_1001A9F94();
  LODWORD(v337) = v32;
  if (a9)
  {
    v33 = sub_100216964();
  }

  else
  {
    v33 = 0;
  }

  v330 = a8;
  v341 = a9;
  v59 = a13;
  v332 = a2;
  v333 = a7;
  v340 = a11;
  v329 = a10;
  if (a11)
  {
    v60 = sub_100216964();
    v59 = a13;
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v335 = a20;
  v342 = a18;
  v343 = a19;
  v328 = a17;
  v334 = a16;
  v325 = a15;
  v62 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v344 = a4;
  v338 = v59;
  if (v59)
  {
    v63 = sub_100216964();
  }

  else
  {
    v63 = 0;
  }

  v64 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  LOBYTE(v316) = a14 & 1;
  v65 = [v64 initWithKeychainCircleMetrics:0 altDSID:v33 flowID:v61 deviceSessionID:v63 eventName:v31 testsAreEnabled:v337 canSendMetrics:v316 category:v62];
  v324 = v65;

  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100225FB0;
  v67 = v334;
  *(inited + 32) = [v334 bestPolicyVersion];
  v68 = sub_10019C6BC(inited);
  v331 = v68;
  swift_setDeallocating();
  swift_arrayDestroy();
  v69 = swift_allocObject();
  *(v69 + 16) = v332;
  *(v69 + 24) = v65;
  v70 = v333;
  *(v69 + 32) = v339;
  *(v69 + 40) = v70;
  v71 = v325;
  v72 = v326;
  *(v69 + 48) = v325;
  *(v69 + 56) = v72;
  v73 = v328;
  *(v69 + 64) = v67;
  *(v69 + 72) = v73;
  v74 = v327;
  *(v69 + 80) = v342;
  *(v69 + 88) = v74;
  v76 = v343;
  v75 = v344;
  *(v69 + 96) = v336;
  *(v69 + 104) = v75;
  v77 = v335;
  *(v69 + 112) = v76;
  *(v69 + 120) = v77;
  v78 = v340;
  *(v69 + 128) = v329;
  *(v69 + 136) = v78;
  v319 = a12;
  *(v69 + 144) = a12;
  v79 = v330;
  *(v69 + 152) = v338;
  *(v69 + 160) = v79;
  *(v69 + 168) = v341;
  HIDWORD(v318) = a14 & 1;
  *(v69 + 176) = BYTE4(v318);
  v80 = swift_allocObject();
  v323 = v80;
  *v80->endpoint = v68;
  endpoint = v80->endpoint;
  v337 = swift_allocObject();
  v82 = v74;
  swift_errorRetain();

  v327 = v82;
  v83 = v324;

  v325 = v71;
  v326 = v72;
  v334 = v334;

  v324 = v335;

  swift_errorRetain();
  v322 = v83;

  a5 = v325;
  v326 = v326;
  v335 = v334;

  v334 = v324;

  v84 = sub_100019440(_swiftEmptyArrayStorage);
  v85 = v337;
  *v337->endpoint = v84;
  a2 = *&a5->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v86 = swift_allocObject();
  a4 = endpoint;
  *(v86 + 16) = endpoint;
  *(v86 + 24) = a5;
  *(v86 + 32) = v85->endpoint;
  v87 = swift_allocObject();
  *v87->endpoint = sub_1001ACE80;
  *v87->containerMap = v86;
  v349 = sub_1001ACCC0;
  v350 = v87;
  aBlock = _NSConcreteStackBlock;
  v346 = 1107296256;
  v347 = sub_100109050;
  v348 = &unk_100283A08;
  v88 = _Block_copy(&aBlock);
  v89 = v350;
  v90 = a5;

  v89, v91, v92, v93, v94, v95, v96, v97;
  v324 = a2;
  [a2 performBlockAndWait:v88];
  _Block_release(v88);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();
  v87, v98, v99, v100, v101, v102, v103, v104;
  if (v88)
  {
    __break(1u);
    goto LABEL_25;
  }

  v107 = *a4->_TtCs12_SwiftObject_opaque;
  if ((*a4->_TtCs12_SwiftObject_opaque & 0xC000000000000001) != 0)
  {

    v108 = sub_100216ED4();
    v107, v109, v110, v111, v112, v113, v114, v115, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
  }

  else
  {
    v108 = *v107->endpoint;
  }

  v325 = v86;
  if (v108)
  {
    __chkstk_darwin(v105, v106);
    sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
    v116 = v321;
    sub_100216654();
    v117 = *&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    v339 = *&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    sub_100006484(&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v339);
    v118 = swift_allocObject();
    *(v118 + 16) = v90;
    *(v118 + 24) = sub_1001AA720;
    v119 = v323;
    *(v118 + 32) = v69;
    *(v118 + 40) = v119;
    v120 = v337;
    *(v118 + 48) = v337;
    v121 = *(v117 + 16);
    v122 = v90;
    v123 = *(v121 + 80);
    v124 = v90;

    v123(v116, sub_1001ACE2C, v118, v339, v121);
    v118, v125, v126, v127, v128, v129, v130, v131;
    sub_1001AC1E4(v116, type metadata accessor for FetchPolicyDocumentsRequest);
    v340, v132, v133, v134, v135, v136, v137, v138, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v338, v139, v140, v141, v142, v143, v144, v145, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v341, v146, v147, v148, v149, v150, v151, v152, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v69, v153, v154, v155, v156, v157, v158, v159;
    v325, v160, v161, v162, v163, v164, v165, v166;
    v119, v167, v168, v169, v170, v171, v172, v173;
    v120, v174, v175, v176, v177, v178, v179, v180;
    v181 = v333;
    v182 = v322;
    v183 = v334;
LABEL_23:

    v181, v280, v281, v282, v283, v284, v285, v286;
    v342, v287, v288, v289, v290, v291, v292, v293, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v294 = v327;

    v344, v295, v296, v297, v298, v299, v300, v301, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v343, v302, v303, v304, v305, v306, v307, v308, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;

    v331, v309, v310, v311, v312, v313, v314, v315, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    return;
  }

  v321 = *v337->endpoint;

  v182 = v322;
  [v322 sendMetricWithResult:1 error:0];
  v184 = swift_allocObject();
  v185 = v326;
  *(v184 + 16) = v90;
  *(v184 + 24) = v185;
  v186 = v328;
  *(v184 + 32) = v335;
  *(v184 + 40) = v186;
  v187 = v90;
  v188 = v327;
  *(v184 + 48) = v342;
  *(v184 + 56) = v188;
  v189 = v344;
  *(v184 + 64) = v336;
  *(v184 + 72) = v189;
  v190 = v340;
  v181 = v333;
  *(v184 + 80) = v339;
  *(v184 + 88) = v181;
  v191 = v334;
  *(v184 + 96) = v343;
  *(v184 + 104) = v191;
  *(v184 + 112) = v329;
  *(v184 + 120) = v190;
  v192 = v338;
  *(v184 + 128) = v319;
  *(v184 + 136) = v192;
  v193 = v341;
  *(v184 + 144) = v330;
  *(v184 + 152) = v193;
  *(v184 + 160) = BYTE4(v318);
  v194 = swift_allocObject();
  *v194->endpoint = sub_1001AA788;
  *v194->containerMap = v184;
  v349 = sub_1001ACCC0;
  v350 = v194;
  aBlock = _NSConcreteStackBlock;
  v346 = 1107296256;
  v347 = sub_100109050;
  v348 = &unk_100283AA8;
  v195 = _Block_copy(&aBlock);
  v339 = v350;
  v196 = v188;

  v336 = v187;
  v197 = v187;
  v198 = v185;
  v199 = v335;

  v183 = v334;

  v200 = v183;

  v201 = v338;

  v202 = v341;

  v339, v203, v204, v205, v206, v207, v208, v209;
  [v324 performBlockAndWait:v195];
  _Block_release(v195);
  LOBYTE(v195) = swift_isEscapingClosureAtFileLocation();
  v201, v210, v211, v212, v213, v214, v215, v216, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
  v202, v217, v218, v219, v220, v221, v222, v223, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
  v69, v224, v225, v226, v227, v228, v229, v230;
  v325, v231, v232, v233, v234, v235, v236, v237;
  v323, v238, v239, v240, v241, v242, v243, v244;
  v337, v245, v246, v247, v248, v249, v250, v251;
  v321, v252, v253, v254, v255, v256, v257, v258, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
  v184, v259, v260, v261, v262, v263, v264, v265;
  v194, v266, v267, v268, v269, v270, v271, v272;
  if ((v195 & 1) == 0)
  {
    v190, v273, v274, v275, v276, v277, v278, v279, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326;
    v122 = v336;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_100143C04(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void *a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7, _TtC18TrustedPeersHelper6Client *a8, void (*a9)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a10, unint64_t a11, id a12, const char *a13, const char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v302 = a9;
  v303 = a10;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v27);
  v289 = &v283 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v29 - 8, v30);
  v298 = &v283 - v31;
  v32 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v32 - 8, v33);
  v297 = &v283 - v34;
  v35 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v35 - 8, v36);
  v296 = &v283 - v37;
  v38 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v38 - 8, v39);
  v295 = &v283 - v40;
  v41 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v41 - 8, v42);
  v294 = &v283 - v43;
  v293 = type metadata accessor for Metrics(0);
  v285 = *(v293 - 8);
  __chkstk_darwin(v293, v44);
  v299 = &v283 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v47 = *&a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v286 = a4;
  v287 = a5;
  v48 = sub_100216964();
  v301 = a6;
  v49 = *&a6->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
  v309[0] = 0;
  v50 = [v47 createVoucherForCandidate:a2 stableInfo:a3 withSponsorID:v48 reason:4 signingKeyPair:v49 error:v309];

  v300 = v50;
  if (!v50)
  {
    v72 = v309[0];
    v73 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v74 = sub_100216774();
    sub_100002648(v74, qword_10029D160);
    swift_errorRetain();
    v75 = sub_100216754();
    v76 = sub_100216C74();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v309[0] = v78;
      *v77 = 136446210;
      v308 = v73;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v79 = sub_100216994();
      v81 = v80;
      v82 = sub_100005FB0(v79, v80, v309);
      v81, v83, v84, v85, v86, v87, v88, v89, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
      *(v77 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v76, "Error creating voucher: %{public}s", v77, 0xCu);
      sub_100006128(v78, v90, v91, v92, v93, v94, v95, v96);
    }

    v97 = v302;
    swift_errorRetain();
    v97(0, 0xF000000000000000, 0, 0xF000000000000000, v73);

    return;
  }

  v51 = a11;
  v52 = v309[0];
  v307 = a7;
  v292 = a8;
  sub_1001820D4(a7, a8, v53, v54, v55, v56, v57, v58, v283, v284);
  v59 = *&a1->_TtCs12_SwiftObject_opaque[v46];
  v309[0] = 0;
  v291 = a2;
  v60 = [v59 getViewsForPeer:a2 stableInfo:a3 error:v309];
  v61 = v309[0];
  if (v60)
  {
    v62 = v60;
    v63 = sub_100216BB4();
    v64 = v61;
  }

  else
  {
    v98 = v309[0];
    v61 = sub_100216154();

    a3 = v61;
    swift_willThrow();

    v63 = 0;
  }

  v290 = 0;
  v309[0] = _swiftEmptyArrayStorage;
  if (a11 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v284 = a1;
    if (i)
    {
      v100 = 0;
      a3 = (v51 & 0xC000000000000001);
      v306 = (v51 & 0xC000000000000001);
      while (1)
      {
        if (a3)
        {
          v101 = sub_100217014();
        }

        else
        {
          if (v100 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v101 = *(v51 + 8 * v100 + 32);
        }

        v61 = v101;
        v102 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (([(Client *)v101 newUpload]& 1) != 0)
        {
        }

        else
        {
          sub_100217044();
          a1 = v63;
          sub_100217074();
          sub_100217084();
          sub_100217054();
          a3 = v306;
        }

        ++v100;
        if (v102 == i)
        {
          v103 = v309[0];
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v103 = _swiftEmptyArrayStorage;
LABEL_25:
    v308 = _swiftEmptyArrayStorage;
    a1 = v307;
    if ((v103 & 0x8000000000000000) == 0 && (v103 & 0x4000000000000000) == 0)
    {
      v104 = *v103->endpoint;
      v105 = &selRef_signingKey;
      if (!v104)
      {
        break;
      }

      goto LABEL_28;
    }

    v104 = sub_1002170F4();
    v105 = &selRef_signingKey;
    if (!v104)
    {
      break;
    }

LABEL_28:
    v106 = 0;
    TtCs12_SwiftObject_opaque = v103[1]._TtCs12_SwiftObject_opaque;
    v306 = (v103 & 0xC000000000000001);
    a3 = (v63 + 56);
    v304 = v103;
    while (1)
    {
      if (v306)
      {
        v107 = sub_100217014();
      }

      else
      {
        if (v106 >= *v103->endpoint)
        {
          goto LABEL_53;
        }

        v107 = *(TtCs12_SwiftObject_opaque + 8 * v106);
      }

      a1 = v107;
      if (__OFADD__(v106++, 1))
      {
        break;
      }

      if (v63)
      {
        v109 = v105;
        v110 = [v107 v105[15]];
        v111 = [v110 zoneID];

        v112 = [v111 zoneName];
        v51 = sub_100216974();
        v61 = v113;

        if (*v63->endpoint && (sub_100217264(), sub_1002169C4(), v121 = sub_100217284(), v122 = -1 << v63[1]._TtCs12_SwiftObject_opaque[0], v123 = v121 & ~v122, ((*&a3->_TtCs12_SwiftObject_opaque[(v123 >> 3) & 0xFFFFFFFFFFFFFF8] >> v123) & 1) != 0))
        {
          v124 = ~v122;
          while (1)
          {
            v125 = (*v63[1].endpoint + 16 * v123);
            v114 = v125[1];
            v126 = *v125 == v51 && v114 == v61;
            if (v126 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v123 = (v123 + 1) & v124;
            if (((*&a3->_TtCs12_SwiftObject_opaque[(v123 >> 3) & 0xFFFFFFFFFFFFFF8] >> v123) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          v61, v114, v115, v116, v117, v118, v119, v120, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
          sub_100217044();
          v61 = *v308->endpoint;
          sub_100217074();
          sub_100217084();
          sub_100217054();
        }

        else
        {
LABEL_45:
          v61, v114, v115, v116, v117, v118, v119, v120, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
        }

        v105 = v109;
        v103 = v304;
      }

      else
      {
      }

      a1 = v307;
      if (v106 == v104)
      {
        v127 = v308;
        goto LABEL_57;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v127 = _swiftEmptyArrayStorage;
LABEL_57:
  v103, v65, v66, v67, v68, v69, v70, v71;
  v63, v128, v129, v130, v131, v132, v133, v134, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
  v142 = v292;
  if ((v127 & 0x8000000000000000) != 0 || (v127 & 0x4000000000000000) != 0)
  {
    v143 = sub_1002170F4();
    if (!v143)
    {
      goto LABEL_68;
    }

LABEL_60:
    v309[0] = _swiftEmptyArrayStorage;
    sub_100217064();
    if ((v143 & 0x8000000000000000) == 0)
    {
      v144 = 0;
      a3 = (v127 & 0xC000000000000001);
      do
      {
        if (a3)
        {
          v145 = sub_100217014();
        }

        else
        {
          v145 = *&v127[1]._TtCs12_SwiftObject_opaque[8 * v144];
        }

        v146 = v145;
        ++v144;
        v147 = [v145 v105[15]];

        sub_100217044();
        sub_100217074();
        sub_100217084();
        sub_100217054();
      }

      while (v143 != v144);
      v127, v148, v149, v150, v151, v152, v153, v154;
      v155 = v309[0];
      goto LABEL_69;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
LABEL_72:
    v165 = sub_100216774();
    sub_100002648(v165, qword_10029D160);

    v166 = v61;
    swift_errorRetain();
    v167 = sub_100216754();
    v168 = sub_100216C74();

    v142, v169, v170, v171, v172, v173, v174, v175, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;

    if (os_log_type_enabled(v167, v168))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v309[0] = swift_slowAlloc();
      *v176 = 136446722;
      *(v176 + 4) = sub_100005FB0(a1, v142, v309);
      *(v176 + 12) = 2114;
      *(v176 + 14) = v166;
      *v177 = v166;
      *(v176 + 22) = 2082;
      v308 = a3;
      v178 = v166;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v179 = sub_100216994();
      v181 = v180;
      v182 = sub_100005FB0(v179, v180, v309);
      v181, v183, v184, v185, v186, v187, v188, v189, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
      *(v176 + 24) = v182;
      _os_log_impl(&_mh_execute_header, v167, v168, "Unable to make TLKShares for beneficiary %{public}s(%{public}@): %{public}s", v176, 0x20u);
      sub_1000114D4(v177, &qword_10029D580, &unk_10021CCC0);

      swift_arrayDestroy();
    }

    swift_errorRetain();
    v302(0, 0xF000000000000000, 0, 0xF000000000000000, a3);

    return;
  }

  v143 = *v127->endpoint;
  if (v143)
  {
    goto LABEL_60;
  }

LABEL_68:
  v127, v135, v136, v137, v138, v139, v140, v141;
  v155 = _swiftEmptyArrayStorage;
LABEL_69:
  v156 = [a12 epoch];
  v61 = v291;
  if (v156 < 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  a3 = v290;
  v157 = sub_10010C3CC(v155, v301, v291, v156);
  if (a3)
  {
    v155, v158, v159, v160, v161, v162, v163, v164, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
    if (qword_100297520 == -1)
    {
      goto LABEL_72;
    }

    goto LABEL_93;
  }

  v190 = v157;
  v155, v158, v159, v160, v161, v162, v163, v164, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
  if (*v190->endpoint)
  {
    v199 = a18;
    v200 = a16;
    v201 = a14;
    __chkstk_darwin(v191, v192);
    *(&v283 - 4) = a13;
    *(&v283 - 3) = a14;
    v281 = a15;
    v282 = a16;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
    sub_100216654();
    v202 = kSecurityRTCEventNameUpdateTrust;
    sub_1001A9F94();
    v204 = v203;
    v306 = v190;
    if (a18)
    {
      v199 = sub_100216964();
    }

    if (a14)
    {
      v201 = sub_100216964();
    }

    v205 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v307 = 0;
    if (a16)
    {
      v200 = sub_100216964();
    }

    v206 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    LOBYTE(v281) = a19 & 1;
    v207 = [v206 initWithKeychainCircleMetrics:0 altDSID:v199 flowID:v201 deviceSessionID:v200 eventName:v202 testsAreEnabled:v204 canSendMetrics:v281 category:v205];

    v208 = v284;
    v209 = sub_100006484(&v284->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], *&v284->containerMap[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish]);
    v210 = [*&v208[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
    if (v210)
    {
      v211 = v210;
      v304 = sub_100216974();
      TtCs12_SwiftObject_opaque = v212;
    }

    else
    {
      v304 = 0;
      TtCs12_SwiftObject_opaque = 0xE000000000000000;
    }

    v238 = v298;
    v239 = v285;
    v240 = type metadata accessor for SignedPeerStableInfo(0);
    v241 = v294;
    (*(*(v240 - 8) + 56))();
    v242 = type metadata accessor for SignedPeerDynamicInfo(0);
    v243 = v295;
    (*(*(v242 - 8) + 56))(v295, 1, 1, v242);
    v244 = type metadata accessor for IdmsTrustedDevicesVersion(0);
    v245 = v296;
    (*(*(v244 - 8) + 56))(v296, 1, 1, v244);
    v246 = v297;
    sub_1001AC0A0(v299, v297, type metadata accessor for Metrics);
    v239[7](v246, 0, 1, v293);
    v247 = type metadata accessor for AccountInfo(0);
    (*(*(v247 - 8) + 56))(v238, 1, 1, v247);
    v248 = swift_allocObject();
    v301 = &v283;
    v249 = v302;
    v250 = v303;
    *(v248 + 16) = v207;
    *(v248 + 24) = v249;
    v251 = v300;
    *(v248 + 32) = v250;
    *(v248 + 40) = v251;
    v302 = *v209;
    __chkstk_darwin(v248, v252);
    v253 = v238;
    v254 = TtCs12_SwiftObject_opaque;
    *(&v283 - 12) = v304;
    *(&v283 - 11) = v254;
    v255 = v287;
    *(&v283 - 10) = v286;
    *(&v283 - 9) = v255;
    *(&v283 - 8) = v241;
    *(&v283 - 7) = v243;
    v256 = v306;
    *(&v283 - 6) = v306;
    *(&v283 - 5) = _swiftEmptyArrayStorage;
    *(&v283 - 4) = v245;
    *(&v283 - 3) = v246;
    v281 = v253;
    sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
    v257 = v207;

    v258 = v251;
    v259 = v289;
    sub_100216654();
    v254, v260, v261, v262, v263, v264, v265, v266, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
    v256, v267, v268, v269, v270, v271, v272, v273, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
    RetryingCKCodeService.updateTrust(_:completion:)(v259, sub_1001AA7E4, v248);

    v248, v274, v275, v276, v277, v278, v279, v280;
    sub_1001AC1E4(v259, type metadata accessor for UpdateTrustRequest);
    sub_1001AC1E4(v299, type metadata accessor for Metrics);
    sub_1000114D4(v298, &unk_10029D6F0, &qword_100226B40);
    sub_1000114D4(v297, &qword_100297FE0, &unk_10021E7F0);
    sub_1000114D4(v296, &qword_10029D770, &qword_10021E860);
    sub_1000114D4(v295, &unk_10029D760, &qword_10021E810);
    sub_1000114D4(v294, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    v190, v192, v193, v194, v195, v196, v197, v198, v283, v284, v285, v286, v287, updated, v289, v290, v291, v292;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v213 = sub_100216774();
    sub_100002648(v213, qword_10029D160);
    v214 = sub_100216754();
    v215 = sub_100216C54();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      *v216 = 0;
      _os_log_impl(&_mh_execute_header, v214, v215, "No TLKShares to upload for new peer, returning voucher", v216, 2u);
    }

    v217 = v300;
    v218 = [v300 data];
    v219 = sub_100216224();
    v221 = v220;

    v222 = [v217 sig];
    v223 = sub_100216224();
    v225 = v224;

    v302(v219, v221, v223, v225, 0);
    sub_100002BF0(v223, v225, v226, v227, v228, v229, v230, v231);
    sub_100002BF0(v219, v221, v232, v233, v234, v235, v236, v237);
  }
}

uint64_t sub_100144F68(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t), void *a4, void *a5)
{
  v154 = a2;
  v155 = a5;
  v8 = sub_100216424();
  v157 = *(v8 - 8);
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v153 = &v149 - v14;
  updated = type metadata accessor for UpdateTrustResponse(0);
  __chkstk_darwin(updated - 8, v16);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  __chkstk_darwin(v19, v20);
  v22 = (&v149 - v21);
  sub_100019C6C(a1, &v149 - v21, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    swift_errorRetain();
    v25 = sub_100216754();
    v26 = sub_100216C74();

    v27 = a3;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v159 = v23;
      v160 = v29;
      *v28 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v30 = sub_100216994();
      v32 = v31;
      v33 = sub_100005FB0(v30, v31, &v160);
      v34 = v32;
      v35 = v154;
      v34, v36, v37, v38, v39, v40, v41, v42, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to upload new tlkshares: %{public}s", v28, 0xCu);
      sub_100006128(v29, v43, v44, v45, v46, v47, v48, v49);
    }

    else
    {

      v35 = v154;
    }

    v50 = v155;
    v60 = sub_100216144();
    [v35 sendMetricWithResult:0 error:v60];

    v61 = [v50 data];
    v62 = sub_100216224();
    v64 = v63;

    v65 = [v50 sig];
    v66 = sub_100216224();
    v68 = v67;

    swift_errorRetain();
    v27(v62, v64, v66, v68, v23);

    sub_100002BF0(v66, v68, v69, v70, v71, v72, v73, v74);
    sub_100002BF0(v62, v64, v75, v76, v77, v78, v79, v80);
  }

  else
  {
    sub_1001AC038(v22, v18, type metadata accessor for UpdateTrustResponse);
    v152 = v18;
    v51 = *v18;
    v52 = *(*v18 + 16);
    v53 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v150 = a4;
      v151 = a3;
      v160 = _swiftEmptyArrayStorage;
      sub_100217064();
      v54 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v55 = v157 + 16;
      v157 = *(v157 + 2);
      v158 = v54;
      v56 = v51 + ((v55[64] + 32) & ~v55[64]);
      v156 = *(v55 + 7);
      v57 = v153;
      do
      {
        v58 = v157;
        (v157)(v57, v56, v8);
        (v58)(v12, v57, v8);
        sub_100216D94();
        (*(v55 - 1))(v57, v8);
        sub_100217044();
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v56 += v156;
        --v52;
      }

      while (v52);
      v53 = v160;
      v59 = v151;
    }

    else
    {
      v59 = a3;
    }

    v82 = v154;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029D160);

    v84 = sub_100216754();
    v85 = sub_100216C54();
    v53, v86, v87, v88, v89, v90, v91, v92, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
    if (os_log_type_enabled(v84, v85))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v160 = v101;
      *v100 = 136446210;
      sub_10001148C(&qword_10029D7E8, &qword_100226610);
      v102 = v82;
      v103 = sub_100216B34();
      v105 = v104;
      v53, v104, v106, v107, v108, v109, v110, v111, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
      v112 = sub_100005FB0(v103, v105, &v160);
      v105, v113, v114, v115, v116, v117, v118, v119, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
      *(v100 + 4) = v112;
      v82 = v102;
      _os_log_impl(&_mh_execute_header, v84, v85, "Uploaded new tlkshares: %{public}s", v100, 0xCu);
      sub_100006128(v101, v120, v121, v122, v123, v124, v125, v126);
    }

    else
    {
      v53, v93, v94, v95, v96, v97, v98, v99, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158;
    }

    v127 = v155;
    v128 = v152;
    [v82 sendMetricWithResult:1 error:0];
    v129 = [v127 data];
    v130 = sub_100216224();
    v132 = v131;

    v133 = [v127 sig];
    v134 = sub_100216224();
    v136 = v135;

    v59(v130, v132, v134, v136, 0);
    sub_100002BF0(v134, v136, v137, v138, v139, v140, v141, v142);
    sub_100002BF0(v130, v132, v143, v144, v145, v146, v147, v148);
    return sub_1001AC1E4(v128, type metadata accessor for UpdateTrustResponse);
  }
}

uint64_t sub_1001456B4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "departByDistrustingSelf complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD00000000000001FLL, 0x800000010023C520, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

void sub_1001458DC(uint64_t a1, void (*a2)(void), _TtC18TrustedPeersHelper6Client *a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100216974();
    v9 = v8;

    sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = v7;
    v11 = inited + 32;
    *(inited + 40) = v9;
    v12 = sub_100190BF4(inited);
    swift_setDeallocating();
    sub_1000608EC(v11);
    sub_1001464A4(v12, a2, a3, v13, v14, v15, v16, v17, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48);
    v12, v18, v19, v20, v21, v22, v23, v24, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v25 = sub_100216774();
    sub_100002648(v25, qword_10029D160);
    v26 = sub_100216754();
    v27 = sub_100216C54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No dynamic info for self?", v28, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v29 = xmmword_10021DA90;
    *(v29 + 16) = 13;
    a2();
  }
}

uint64_t sub_100145AE8(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "distrust complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000018, 0x800000010023C500, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

void sub_100145D10(uint64_t a1, void (*a2)(void), _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v8 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v9 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v9)
  {
    if (qword_100297520 != -1)
    {
LABEL_32:
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_10029D160);
    v28 = sub_100216754();
    v29 = sub_100216C54();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No dynamic info for self?", v30, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v26 = xmmword_10021DA90;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_100216974();
  v13 = v12;

  LOBYTE(v10) = sub_10004C758(v11, v13, a4);
  v13, v14, v15, v16, v17, v18, v19, v20, v60, v62, v64, v66, v69, v71, v73, v75, v77, v79;
  if (v10)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029D160);
    v22 = sub_100216754();
    v23 = sub_100216C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Self-distrust via peerID not allowed", v24, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v26 = xmmword_100225FE0;
LABEL_12:
    *v25 = v26;
    *(v25 + 16) = 13;
    a2();

    return;
  }

  v63 = a3;
  v65 = a2;
  v67 = [*(a1 + v8) egoSponsoredBeneficiaryIDs];
  if (!v67)
  {
    v67 = [objc_allocWithZone(NSSet) init];
  }

  v31 = 1 << a4[1]._TtCs12_SwiftObject_opaque[0];
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *a4[1].containerMap;
  v34 = (v31 + 63) >> 6;

  a2 = 0;
  while (v33)
  {
LABEL_26:
    v43 = *a4[1].endpoint + ((a2 << 10) | (16 * __clz(__rbit64(v33))));
    v45 = *v43;
    v44 = *(v43 + 8);

    v46 = sub_100216964();
    v47 = [v67 containsObject:v46];

    if (v47)
    {
      sub_1001820F0(v45, v44);
    }

    v33 &= v33 - 1;
    v44, v48, v49, v50, v51, v52, v53, v54, v61, v63, v65, v67, v70, v72, v74, v76, v78, v80;
  }

  while (1)
  {
    v42 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v42 >= v34)
    {
      break;
    }

    v33 = *&a4[1].containerMap[8 * v42];
    a2 = (a2 + 1);
    if (v33)
    {
      a2 = v42;
      goto LABEL_26;
    }
  }

  a4, v35, v36, v37, v38, v39, v40, v41;
  sub_1001464A4(a4, v65, v63, v55, v56, v57, v58, v59, v61, v63, v65, v67, v70, v72, v74, v76, v78, v80);
}

uint64_t sub_100146108(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  __chkstk_darwin(v4 - 8, v5);
  v45 = &v43 - v6;
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v47 = &v43 - v13;
  v48 = sub_1002164A4();
  v14 = *(v48 - 8);
  __chkstk_darwin(v48, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = a2;
  v19 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) idmsTrustedDevicesVersion];
  if (v19)
  {
    v27 = v19;
    v28 = sub_100216974();
    v30 = v29;
  }

  else
  {
    v30 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
  }

  a1[1], v20, v21, v22, v23, v24, v25, v26, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
  *a1 = v28;
  a1[1] = v30;
  v31 = [*(v18 + v17) idmsTrustedDeviceListFetchDate];
  v32 = v47;
  if (v31)
  {
    v33 = v44;
    v34 = v31;
    sub_100216344();

    v35 = *(v8 + 32);
    v36 = v45;
    v35(v45, v33, v7);
    (*(v8 + 56))(v36, 0, 1, v7);
    v35(v32, v36, v7);
  }

  else
  {
    v37 = v45;
    (*(v8 + 56))(v45, 1, 1, v7);
    sub_100216324();
    if ((*(v8 + 48))(v37, 1, v7) != 1)
    {
      sub_1000114D4(v37, &qword_10029D778, &qword_1002265C8);
    }
  }

  v38 = v46;
  sub_100216484();
  v39 = *(type metadata accessor for IdmsTrustedDevicesVersion(0) + 24);
  sub_1000114D4(a1 + v39, &qword_10029D780, &qword_1002265D0);
  v40 = v38;
  v41 = v48;
  (*(v14 + 32))(a1 + v39, v40, v48);
  return (*(v14 + 56))(a1 + v39, 0, 1, v41);
}

void sub_1001464A4(_TtC18TrustedPeersHelper6Client *a1, void (*a2)(void), _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v19 = v18;
  v23 = [*&v18[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100216974();
    v27 = v26;

    strcpy(v55, "signing-key ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    v62._countAndFlagsBits = v25;
    v62._object = v27;
    sub_100216A14(v62);

    v28 = v19;

    sub_10019A168(v55[0], v55[1], a2, a3, v28, v25, v27, a1);
    v55[1], v29, v30, v31, v32, v33, v34, v35, v55[0], v55[1], v55[2], v55[3], v55[4], v56, v57, v58, v59, v60;
    a3, v36, v37, v38, v39, v40, v41, v42;

    swift_bridgeObjectRelease_n();

    a1, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v50 = sub_100216774();
    sub_100002648(v50, qword_10029D160);
    v51 = sub_100216754();
    v52 = sub_100216C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No dynamic info for self?", v53, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v54 = xmmword_10021DA90;
    *(v54 + 16) = 13;
    a2();
  }
}

uint64_t sub_1001466F8(char *a1, void *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, _TtC18TrustedPeersHelper6Client *a5, void (*a6)(void), id a7)
{
  v175 = a5;
  v176 = a6;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v12);
  v172 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SignedPeerDynamicInfo(0);
  __chkstk_darwin(v14, v15);
  v17 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v169 = a2;
  v170 = a3;
  v173 = sub_100216964();
  v18 = *a4->endpoint;
  v168 = a4;
  if (v18)
  {
    v166 = v14;
    v167 = v17;
    v17 = a1;
    v19 = a7;
    v20 = sub_1001830AC(v18, 0);
    v21 = sub_10018FF74(v178, v20[1]._TtCs12_SwiftObject_opaque, v18, a4);
    v23 = v178[0];
    v22 = v178[1];
    v24 = v178[2];
    v25 = v178[3];
    a7 = v178[4];

    sub_10000D778(v23, v22, v24, v25, a7, v26, v27, v28);
    if (v21 != v18)
    {
      __break(1u);
      goto LABEL_20;
    }

    a7 = v19;
    a1 = v17;
    v17 = v167;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v29.super.isa = sub_100216B14().super.isa;
  v20, v30, v31, v32, v33, v34, v35, v36;
  v37 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v38 = &_swiftEmptySetSingleton;
  if (v37)
  {
    v39 = v37;
    v178[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v178[0])
    {
      v38 = v178[0];
    }
  }

  sub_100108644(v38);
  v41 = v40;
  v38, v42, v43, v44, v45, v46, v47, v48, v166, v167, v168, v169, v170, updated, v172, v173, v174, v175;
  v49 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v41, v51, v52, v53, v54, v55, v56, v57, v166, v167, v168, v169, v170, updated, v172, v173, v174, v175;
  v58 = [v49 initWithEntries:isa];

  v178[0] = 0;
  v60 = v173;
  v59 = v174;
  v61 = [v174 calculateDynamicInfoForPeerWithID:v173 addingPeerIDs:0 removingPeerIDs:v29.super.isa preapprovedKeys:0 signingKeyPair:v175 currentMachineIDs:v58 error:v178];

  v62 = v178[0];
  if (v61)
  {
    v173 = 0;
    v174 = a1;
    *v17 = xmmword_10021D470;
    *(v17 + 1) = xmmword_10021D470;
    v20 = v61;
    v24 = v61;
    v63 = v62;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v64 = [(Client *)v24 data];
    v65 = sub_100216224();
    v67 = v66;

    sub_100002BF0(*v17, *(v17 + 1), v68, v69, v70, v71, v72, v73);
    *v17 = v65;
    *(v17 + 1) = v67;
    v74 = [(Client *)v24 sig];
    v75 = sub_100216224();
    v77 = v76;

    sub_100002BF0(*(v17 + 2), *(v17 + 3), v78, v79, v80, v81, v82, v83);
    *(v17 + 2) = v75;
    *(v17 + 3) = v77;
    if (qword_100297520 == -1)
    {
LABEL_10:
      v84 = sub_100216774();
      sub_100002648(v84, qword_10029D160);
      v85 = v168;

      v86 = v24;
      v87 = sub_100216754();
      v88 = sub_100216C54();
      v175 = v86;

      v85, v89, v90, v91, v92, v93, v94, v95, v166, v167, v168, v169, v170, updated, v172, v173, v174, v175;
      if (os_log_type_enabled(v87, v88))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v178[0] = v98;
        *v96 = 136446466;
        v99 = sub_100216BC4();
        v101 = v100;
        v102 = a7;
        v103 = sub_100005FB0(v99, v100, v178);
        v101, v104, v105, v106, v107, v108, v109, v110, v166, v167, v168, v169, v170, updated, v172, v173, v174, v175;
        *(v96 + 4) = v103;
        a7 = v102;
        *(v96 + 12) = 2114;
        *(v96 + 14) = v175;
        *v97 = v20;
        _os_log_impl(&_mh_execute_header, v87, v88, "attempting distrust for %{public}s with: %{public}@", v96, 0x16u);
        sub_1000114D4(v97, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v98, v111, v112, v113, v114, v115, v116, v117);
      }

      else
      {
      }

      __chkstk_darwin(v118, v119);
      v146 = v174;
      v148 = v169;
      v147 = v170;
      *(&v166 - 4) = v174;
      *(&v166 - 3) = v148;
      v164 = v147;
      v165 = v17;
      sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
      v149 = v172;
      sub_100216654();
      v150 = *&v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v151 = *&v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v150);
      v152 = swift_allocObject();
      v153 = v176;
      *(v152 + 16) = v146;
      *(v152 + 24) = v153;
      *(v152 + 32) = a7;
      v154 = *(v151 + 16);
      v155 = *(v154 + 32);
      v156 = v146;

      v155(v149, sub_1001A954C, v152, v150, v154);
      v152, v157, v158, v159, v160, v161, v162, v163;

      sub_1001AC1E4(v149, type metadata accessor for UpdateTrustRequest);
      return sub_1001AC1E4(v17, type metadata accessor for SignedPeerDynamicInfo);
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  v120 = v178[0];
  v121 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v122 = sub_100216774();
  sub_100002648(v122, qword_10029D160);
  swift_errorRetain();
  v123 = sub_100216754();
  v124 = sub_100216C74();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v178[0] = v126;
    *v125 = 136446210;
    v177 = v121;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v127 = sub_100216994();
    v129 = v128;
    v130 = sub_100005FB0(v127, v128, v178);
    v129, v131, v132, v133, v134, v135, v136, v137, v166, v167, v168, v169, v170, updated, v172, v173, v174, v175;
    *(v125 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v123, v124, "Error preparing dynamic info: %{public}s", v125, 0xCu);
    sub_100006128(v126, v138, v139, v140, v141, v142, v143, v144);
  }

  swift_errorRetain();
  v176(v121);
}

uint64_t sub_100146FA4(uint64_t a1, void *a2, void (*a3)(uint64_t), void *a4)
{
  v58 = a4;
  v59 = a3;
  v57 = a2;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v55 - v7;
  v9 = type metadata accessor for Changes(0);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustResponse(0);
  __chkstk_darwin(updated, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  __chkstk_darwin(v17, v18);
  v20 = (&v55 - v19);
  sub_100019C6C(a1, &v55 - v19, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    swift_errorRetain();
    v23 = sub_100216754();
    v24 = sub_100216C74();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v21;
      v62[0] = v26;
      *v25 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v27 = sub_100216994();
      v29 = v28;
      v30 = sub_100005FB0(v27, v28, v62);
      v29, v31, v32, v33, v34, v35, v36, v37, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2];
      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "updateTrust failed: %{public}s", v25, 0xCu);
      sub_100006128(v26, v38, v39, v40, v41, v42, v43, v44);
    }

    swift_errorRetain();
    (v59)(v21);
  }

  else
  {
    sub_1001AC038(v20, v16, type metadata accessor for UpdateTrustResponse);
    sub_100019C6C(&v16[*(updated + 24)], v8, &unk_10029D750, &qword_10021E850);
    v46 = v56[6];
    v47 = v16;
    if (v46(v8, 1, v9) == 1)
    {
      *v12 = 0;
      *(v12 + 1) = 0xE000000000000000;
      *(v12 + 2) = _swiftEmptyArrayStorage;
      *(v12 + 24) = xmmword_10021D470;
      *(v12 + 40) = xmmword_10021D470;
      v12[56] = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v48 = v46(v8, 1, v9);
      if (v48 != 1)
      {
        v48 = sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v48 = sub_1001AC038(v8, v12, type metadata accessor for Changes);
    }

    __chkstk_darwin(v48, v49);
    *(&v55 - 4) = v12;
    *(&v55 - 3) = v50;
    *(&v55 - 16) = 0;
    sub_100216D34();
    sub_1001AC1E4(v12, type metadata accessor for Changes);
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v51 = sub_100216774();
    sub_100002648(v51, qword_10029D160);
    v52 = sub_100216754();
    v53 = sub_100216C54();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "distrust succeeded", v54, 2u);
    }

    (v59)(0);
    return sub_1001AC1E4(v47, type metadata accessor for UpdateTrustResponse);
  }
}

uint64_t sub_1001476DC(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C94();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "drop complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000014, 0x800000010023C4E0, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

id sub_100147904(uint64_t a1, unint64_t a2, void *a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v8)
  {
    if (qword_100297520 != -1)
    {
LABEL_37:
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_10029D160);
    v28 = sub_100216754();
    v29 = sub_100216C74();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No dynamic info for self?", v30, 2u);
    }

    sub_1000561D0();
    v24 = swift_allocError();
    v26 = xmmword_10021DA90;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_100216974();
  v12 = v11;

  LOBYTE(v9) = sub_10004C758(v10, v12, a4);
  v12, v13, v14, v15, v16, v17, v18, v19, v71, v73, v75, v77, v79, v80, v81, v82, v83, v84;
  if (v9)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    v21 = sub_100216754();
    v22 = sub_100216C74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Self-drop not allowed", v23, 2u);
    }

    sub_1000561D0();
    v24 = swift_allocError();
    v26 = xmmword_100225FE0;
LABEL_12:
    *v25 = v26;
    *(v25 + 16) = 13;
    (a2)(v24);

    v31 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);

    return [v31 rollback];
  }

  v72 = a3;
  v74 = a2;
  v33 = 1 << a4[1]._TtCs12_SwiftObject_opaque[0];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  a2 = v34 & *a4[1].containerMap;
  v35 = (v33 + 63) >> 6;

  v43 = 0;
  if (a2)
  {
    while (1)
    {
      v44 = v43;
LABEL_22:
      v45 = *a4[1].endpoint + ((v44 << 10) | (16 * __clz(__rbit64(a2))));
      v47 = *v45;
      v46 = *(v45 + 8);

      v48 = objc_autoreleasePoolPush();
      sub_100148150(a1, v47, v46, &v79);
      a2 &= a2 - 1;
      v46, v49, v50, v51, v52, v53, v54, v55, v72, v74, v76, v78, v79, v80, v81, v82, v83, v84;
      objc_autoreleasePoolPop(v48);
      v43 = v44;
      if (!a2)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
LABEL_19:
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v44 >= v35)
    {
      break;
    }

    a2 = *&a4[1].containerMap[8 * v44];
    ++v43;
    if (a2)
    {
      goto LABEL_22;
    }
  }

  a4, v36, v37, v38, v39, v40, v41, v42;
  v56 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v79 = 0;
  if ([v56 save:&v79])
  {
    v57 = qword_100297520;
    v58 = v79;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_100216774();
    sub_100002648(v59, qword_10029D160);
    v60 = sub_100216754();
    v61 = sub_100216C94();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Saved MOC to drop peer MOs", v62, 2u);
    }

    (v74)(0);
  }

  else
  {
    v63 = v79;
    v64 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v65 = sub_100216774();
    sub_100002648(v65, qword_10029D160);
    swift_errorRetain();
    v66 = sub_100216754();
    v67 = sub_100216C74();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138543362;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to save MOC to drop peers: %{public}@", v68, 0xCu);
      sub_1000114D4(v69, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    (v74)(v64);
  }

  return [v56 rollback];
}

void sub_100148150(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4)
{
  v9 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v10 = *v9->endpoint;
  v11 = *v9->containerMap;

  v12 = sub_10019CE9C(v10, v11, a2, a3);
  v9, v13, v14, v15, v16, v17, v18, v19;
  if (v4)
  {
    *a4 = v4;
  }

  else if (v12)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);

    v21 = sub_100216754();
    v22 = sub_100216C94();
    a3, v23, v24, v25, v26, v27, v28, v29, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67;
    if (os_log_type_enabled(v21, v22))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100005FB0(a2, a3, &v59);
      _os_log_impl(&_mh_execute_header, v21, v22, "Dropping MO for %{public}s", v30, 0xCu);
      sub_100006128(v31, v32, v33, v34, v35, v36, v37, v38);
    }

    [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc) deleteObject:v12];
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v39 = sub_100216774();
    sub_100002648(v39, qword_10029D160);

    v40 = sub_100216754();
    v41 = sub_100216C94();
    a3, v42, v43, v44, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67;
    if (os_log_type_enabled(v40, v41))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_100005FB0(a2, a3, &v59);
      _os_log_impl(&_mh_execute_header, v40, v41, "MO for peer not found, but that's ok: %{public}s", v49, 0xCu);
      sub_100006128(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }
}

void sub_100148428(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD00000000000001BLL, 0x800000010023D030);

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = qword_100297520;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  v10 = sub_100216754();
  v11 = sub_100216C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "beginning a fetchEscrowContents", v12, 2u);
  }

  v13 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = sub_1001ABDEC;
  *(v14 + 32) = v7;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001ABE18;
  *v15->containerMap = v14;
  v55[4] = sub_1001ACCC0;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_100285588;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v5;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  v7, v26, v27, v28, v29, v30, v31, v32;
  v6, v33, v34, v35, v36, v37, v38, v39;
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1001486E8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v59 = a8;
  v60 = a3;
  v58 = a2;
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a5;
    v56 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v65._countAndFlagsBits = sub_100216994();
      object = v65._object;
      sub_100216A14(v65);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58, v59, v60, a7, 0x203A726F727265, 0xE700000000000000, v64;

      v29 = v62;
      v20 = v63;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v64);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "fetchEscrowContents complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a5 = v55;
    a6 = v57;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001BLL, 0x800000010023D030, v30, v31, v32, v33, v34, v35);
  return a9(a1, v58, v60, a4, a5, a6, a7);
}

void sub_100148950(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a3)
{
  v5 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v6 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v6)
  {
    v7 = v6;
    v35 = sub_100216974();
    v37 = v8;

    v9 = [*(a1 + v5) bottles];
    if (v9)
    {
      v17 = v9;
      v18 = type metadata accessor for BottleMO();
      sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO, &protocol conformance descriptor for NSObject);
      v34 = v18;
      sub_100216BA4();
    }

    v37, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v19 = sub_100216774();
    sub_100002648(v19, qword_10029D160);
    v20 = sub_100216754();
    v21 = sub_100216C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "fetchEscrowContents failed", v22, 2u);
    }

    sub_1000561D0();
    v24 = swift_allocError();
    v25 = xmmword_100226080;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    v27 = sub_100216754();
    v28 = sub_100216C54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchEscrowContents failed", v29, 2u);
    }

    sub_1000561D0();
    v24 = swift_allocError();
    v25 = xmmword_10021DA90;
  }

  *v23 = v25;
  *(v23 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0, 0, 0xF000000000000000, v24);
}

uint64_t sub_100149494(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), void *a6, void *a7, void *a8)
{
  v9 = a3;
  sub_10010EEEC(0xD000000000000036, 0x800000010023C4A0, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C74();
    sub_1001A9B3C(a1, a2, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446210;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v95._countAndFlagsBits = sub_100216994();
      object = v95._object;
      sub_100216A14(v95);
      object, v18, v19, v20, v21, v22, v23, v24, a1, 0x203A726F727265, 0xE700000000000000, v16, v89, v90, v91, v92, v93, v94;
      sub_1001A9B3C(a1, a2, 1);
      v25 = sub_100005FB0(v81, v85, &v88);
      v85, v26, v27, v28, v29, v30, v31, v32, v77, v81, v85, v88, v89, v90, v91, v92, v93, v94;
      *(v15 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, "fetchViableBottles failed with %{public}s", v15, 0xCu);
      sub_100006128(v16, v33, v34, v35, v36, v37, v38, v39);
    }

    v40 = 0;
    v41 = 0;
    v42 = a1;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v43 = sub_100216774();
    sub_100002648(v43, qword_10029D160);

    v44 = sub_100216754();
    v45 = sub_100216C54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134349312;
      *(v46 + 4) = *a1->endpoint;
      a1, v47, v48, v49, v50, v51, v52, v53, v76, v80, v84, v88, v89, v90, v91, v92, v93, v94;
      *(v46 + 12) = 2050;
      *(v46 + 14) = *a2->endpoint;
      a2, v54, v55, v56, v57, v58, v59, v60, v78, v82, v86, v88, v89, v90, v91, v92, v93, v94;
      _os_log_impl(&_mh_execute_header, v44, v45, "fetchViableBottles succeeded with %{public}ld viable bottles and %{public}ld partial bottles", v46, 0x16u);
    }

    else
    {

      a1, v61, v62, v63, v64, v65, v66, v67, v76, v80, v84, v88, v89, v90, v91, v92, v93, v94;
      a2, v68, v69, v70, v71, v72, v73, v74, v79, v83, v87, v88, v89, v90, v91, v92, v93, v94;
    }

    v40 = a1;
    v41 = a2;
    v42 = 0;
  }

  return a5(v40, v41, v42);
}

void sub_1001497CC(uint64_t a1)
{
  v2 = type metadata accessor for EscrowInformation(0);
  v75 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EscrowPair(0);
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v74 - v13;
  v15 = sub_10001148C(&qword_10029DA78, &qword_100226790);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v74 - v21;
  __chkstk_darwin(v20, v23);
  v25 = (&v74 - v24);
  sub_100019C6C(a1, &v74 - v24, &qword_10029DA78, &qword_100226790);
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  v27 = *(*(ViableBottlesResponse - 8) + 48);
  if (v27(v25, 1, ViableBottlesResponse) != 1)
  {
    v77 = *v25;

    sub_1001AC1E4(v25, type metadata accessor for FetchViableBottlesResponse);
    sub_100019C6C(a1, v22, &qword_10029DA78, &qword_100226790);
    v32 = v27(v22, 1, ViableBottlesResponse);
    v74 = v5;
    if (v32 == 1)
    {
      sub_1000114D4(v22, &qword_10029DA78, &qword_100226790);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v33 = sub_100216774();
      sub_100002648(v33, qword_10029D160);
      v34 = sub_100216754();
      v35 = sub_100216C54();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "fetchViableBottles returned no partially viable bottles, but that's ok", v36, 2u);
      }

      v37 = _swiftEmptyArrayStorage;
    }

    else
    {
      v37 = *(v22 + 1);

      sub_1001AC1E4(v22, type metadata accessor for FetchViableBottlesResponse);
    }

    v38 = v76;
    sub_100019C6C(a1, v76, &qword_10029DA78, &qword_100226790);
    if (v27(v38, 1, ViableBottlesResponse) == 1)
    {
      sub_1000114D4(v38, &qword_10029DA78, &qword_100226790);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v39 = sub_100216774();
      sub_100002648(v39, qword_10029D160);
      v40 = sub_100216754();
      v41 = sub_100216C54();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "fetchViableBottles returned no legacy escrow records", v42, 2u);
      }

      v50 = _swiftEmptyArrayStorage;
    }

    else
    {
      v50 = *(v38 + 16);

      sub_1001AC1E4(v38, type metadata accessor for FetchViableBottlesResponse);
    }

    v51 = v77;
    v52 = *v77->endpoint;
    if (v52)
    {
      v53 = 0;
      while (v53 < *v51->endpoint)
      {
        sub_1001AC0A0(&v51->_TtCs12_SwiftObject_opaque[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v53], v14, type metadata accessor for EscrowPair);
        sub_10014A054(v14, v78, &selRef_fullyViableEscrowRecords, sub_1001ACC84, "fetchViableBottles already knows about record, re-adding entry, label = %{public}s", &selRef_removeFullyViableEscrowRecords_, 0, sub_1001ACC68, v74, v75);
        ++v53;
        sub_1001AC1E4(v14, type metadata accessor for EscrowPair);
        v51 = v77;
        if (v52 == v53)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v51, v43, v44, v45, v46, v47, v48, v49, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83;
      v61 = *v37->endpoint;
      if (!v61)
      {
LABEL_28:
        v37, v54, v55, v56, v57, v58, v59, v60, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83;
        v70 = *v50->endpoint;
        v72 = v74;
        v71 = v75;
        if (!v70)
        {
LABEL_32:
          v50, v63, v64, v65, v66, v67, v68, v69, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83;
          return;
        }

        v73 = 0;
        while (v73 < *v50->endpoint)
        {
          sub_1001AC0A0(&v50->_TtCs12_SwiftObject_opaque[((*(v71 + 80) + 32) & ~*(v71 + 80)) + v71[9] * v73], v72, type metadata accessor for EscrowInformation);
          sub_10014B678(v72, v78);
          ++v73;
          sub_1001AC1E4(v72, type metadata accessor for EscrowInformation);
          if (v70 == v73)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_35;
      }

      v62 = 0;
      while (v62 < *v37->endpoint)
      {
        sub_1001AC0A0(&v37->_TtCs12_SwiftObject_opaque[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v62], v11, type metadata accessor for EscrowPair);
        sub_10014A054(v11, v78, &selRef_partiallyViableEscrowRecords, sub_1001ABDCC, "fetchViableBottles already knows about record, re-adding entry: %{public}s", &selRef_removePartiallyViableEscrowRecords_, 1u, sub_1001ABDAC);
        ++v62;
        sub_1001AC1E4(v11, type metadata accessor for EscrowPair);
        if (v61 == v62)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000114D4(v25, &qword_10029DA78, &qword_100226790);
  if (qword_100297520 != -1)
  {
LABEL_36:
    swift_once();
  }

  v28 = sub_100216774();
  sub_100002648(v28, qword_10029D160);
  v29 = sub_100216754();
  v30 = sub_100216C54();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "fetchViableBottles returned no viable bottles", v31, 2u);
  }
}

uint64_t sub_10014A054(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(id *), char *a5, SEL *a6, unsigned int a7, uint64_t (*a8)(id *), ...)
{
  v172 = a8;
  v173 = a3;
  v170 = a7;
  v165 = a5;
  v166 = a6;
  v167 = a4;
  v178 = a2;
  v9 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v174 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v164 - v14;
  v16 = type metadata accessor for EscrowInformation(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v168 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v177 = (&v164 - v22);
  v23 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v164 - v25;
  v27 = type metadata accessor for Bottle(0);
  v28 = *(v27 - 8);
  v30 = __chkstk_darwin(v27, v29);
  v171 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v164 - v33;
  v35 = *(a1 + *(type metadata accessor for EscrowPair(0) + 20));
  v36 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v35 + v36, v26, &unk_10029D880, &qword_10021E830);
  v37 = *(v28 + 48);
  v38 = v37(v26, 1, v27);
  v176 = v34;
  if (v38 == 1)
  {
    *v34 = xmmword_10021D470;
    *(v34 + 1) = xmmword_10021D470;
    *(v34 + 2) = xmmword_10021D470;
    *(v34 + 3) = xmmword_10021D470;
    *(v34 + 8) = 0;
    *(v34 + 9) = 0xE000000000000000;
    *(v34 + 10) = 0;
    *(v34 + 11) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v37(v26, 1, v27) != 1)
    {
      sub_1000114D4(v26, &unk_10029D880, &qword_10021E830);
    }
  }

  else
  {
    sub_1001AC038(v26, v34, type metadata accessor for Bottle);
  }

  v39 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(v35 + v39, v15, &qword_1002985C8, &qword_10021E838);
  v40 = *(v17 + 48);
  if (v40(v15, 1, v16) == 1)
  {
    v41 = v177;
    *v177 = 0;
    v41[1] = 0;
    v41[3] = 0;
    v41[4] = 0;
    v41[2] = 0xE000000000000000;
    *(v41 + 40) = 1;
    v41[6] = 0;
    *(v41 + 56) = 1;
    v41[8] = 0;
    v41[9] = 0xE000000000000000;
    v41[10] = 0;
    v41[11] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v42 = *(v16 + 48);
    v43 = sub_1002164A4();
    (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
    v44 = *(v16 + 52);
    v45 = type metadata accessor for EscrowInformation.Metadata(0);
    (*(*(v45 - 8) + 56))(v41 + v44, 1, 1, v45);
    if (v40(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_1002985C8, &qword_10021E838);
    }
  }

  else
  {
    v41 = v177;
    sub_1001AC038(v15, v177, type metadata accessor for EscrowInformation);
  }

  v46 = v35 + v39;
  v47 = v174;
  sub_100019C6C(v46, v174, &qword_1002985C8, &qword_10021E838);
  v48 = v40(v47, 1, v16);
  sub_1000114D4(v47, &qword_1002985C8, &qword_10021E838);
  if (v48 == 1)
  {
    v49 = v176;
    v50 = v178;
    goto LABEL_24;
  }

  v51 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v50 = v178;
  v52 = [*(v178 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) *v173];
  v49 = v176;
  if (v52)
  {
    v53 = v52;
    v179 = 0;
    v54 = type metadata accessor for EscrowRecordMO();
    v55 = sub_1001A13C4(&qword_10029DA88, type metadata accessor for EscrowRecordMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v179)
    {
      v174 = v55;
      __chkstk_darwin(v56, v57);
      *(&v164 - 2) = v41;
      v59 = sub_10018843C(v167, (&v164 - 4), v58, &unk_10029DA90, &unk_1002267A0, sub_1001EED88, type metadata accessor for EscrowRecordMO);
      v67 = v59;
      if ((v59 & 0xC000000000000001) != 0)
      {
        v68 = sub_100216ED4();
        v69 = v168;
        if (v68)
        {
LABEL_15:
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v70 = sub_100216774();
          sub_100002648(v70, qword_10029D160);
          sub_1001AC0A0(v177, v69, type metadata accessor for EscrowInformation);
          v71 = sub_100216754();
          v72 = sub_100216C54();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v175 = v54;
            v74 = v73;
            v173 = swift_slowAlloc();
            v179 = v173;
            *v74 = 136446210;
            v75 = v69;
            v77 = *(v69 + 8);
            v76 = *(v69 + 16);

            sub_1001AC1E4(v75, type metadata accessor for EscrowInformation);
            v78 = sub_100005FB0(v77, v76, &v179);
            v76, v79, v80, v81, v82, v83, v84, v85, v164, v165, v166, v167, v168, v169, v171, v172, v173, v174;
            *(v74 + 4) = v78;
            v49 = v176;
            _os_log_impl(&_mh_execute_header, v71, v72, v165, v74, 0xCu);
            sub_100006128(v173, v86, v87, v88, v89, v90, v91, v92);
          }

          else
          {

            sub_1001AC1E4(v69, type metadata accessor for EscrowInformation);
          }

          v50 = v178;
          v93 = *(v178 + v51);
          isa = sub_100216B94().super.isa;
          v67, v95, v96, v97, v98, v99, v100, v101;
          [v93 *v166];

          goto LABEL_23;
        }
      }

      else
      {
        v69 = v168;
        if (*(v59 + 16))
        {
          goto LABEL_15;
        }
      }

      v67, v60, v61, v62, v63, v64, v65, v66;
LABEL_23:
      v41 = v177;
      sub_1001F7878(v177, v170);
    }
  }

LABEL_24:
  v102 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v103 = [*(v50 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) bottles];
  if (!v103)
  {
    goto LABEL_33;
  }

  v104 = v103;
  v179 = 0;
  type metadata accessor for BottleMO();
  sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO, &protocol conformance descriptor for NSObject);
  sub_100216BA4();

  if (!v179)
  {
    goto LABEL_33;
  }

  __chkstk_darwin(v105, v106);
  *(&v164 - 2) = v49;
  v108 = sub_10018843C(v172, (&v164 - 4), v107, &qword_10029D908, &unk_1002266A8, sub_1001EED5C, type metadata accessor for BottleMO);
  if ((v108 & 0xC000000000000001) == 0)
  {
    v149 = *(v108 + 16);
    v108, v109, v110, v111, v112, v113, v114, v115;
    if (v149)
    {
      goto LABEL_28;
    }

LABEL_33:
    type metadata accessor for BottleMO();
    v150 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v50 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
    v151 = sub_100216964();
    [v150 setPeerID:v151];

    v152 = sub_100216964();
    [v150 setBottleID:v152];

    v153 = sub_100216204().super.isa;
    [v150 setEscrowedSigningSPKI:v153];

    v154 = sub_100216204().super.isa;
    [v150 setSignatureUsingEscrowKey:v154];

    v155 = sub_100216204().super.isa;
    [v150 setSignatureUsingPeerKey:v155];

    v156 = sub_100216204().super.isa;
    [v150 setContents:v156];

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v157 = sub_100216774();
    sub_100002648(v157, qword_10029D160);
    v127 = v150;
    v158 = sub_100216754();
    v159 = sub_100216C54();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138543362;
      *(v160 + 4) = v127;
      *v161 = v127;
      v162 = v127;
      _os_log_impl(&_mh_execute_header, v158, v159, "fetchViableBottles saving new bottle: %{public}@", v160, 0xCu);
      sub_1000114D4(v161, &qword_10029D580, &unk_10021CCC0);

      v50 = v178;
    }

    [*(v50 + v102) addBottlesObject:v127];
    goto LABEL_38;
  }

  v116 = v108;
  v117 = sub_100216ED4();
  v116, v118, v119, v120, v121, v122, v123, v124;
  if (!v117)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v125 = sub_100216774();
  sub_100002648(v125, qword_10029D160);
  v126 = v171;
  sub_1001AC0A0(v49, v171, type metadata accessor for Bottle);
  v127 = sub_100216754();
  v128 = sub_100216C54();
  if (!os_log_type_enabled(v127, v128))
  {

    sub_1001AC1E4(v126, type metadata accessor for Bottle);
    goto LABEL_39;
  }

  v129 = swift_slowAlloc();
  v130 = swift_slowAlloc();
  v179 = v130;
  *v129 = 136446210;
  v131 = v126;
  v132 = *(v126 + 80);
  v133 = *(v126 + 88);

  sub_1001AC1E4(v131, type metadata accessor for Bottle);
  v134 = sub_100005FB0(v132, v133, &v179);
  v133, v135, v136, v137, v138, v139, v140, v141, v164, v165, v166, v167, v168, v169, v171, v172, v173, v174;
  *(v129 + 4) = v134;
  _os_log_impl(&_mh_execute_header, v127, v128, "fetchViableBottles already knows about bottle: %{public}s", v129, 0xCu);
  sub_100006128(v130, v142, v143, v144, v145, v146, v147, v148);

LABEL_38:

LABEL_39:
  sub_1001AC1E4(v41, type metadata accessor for EscrowInformation);
  return sub_1001AC1E4(v49, type metadata accessor for Bottle);
}

uint64_t sub_10014ADC0(void **a1, uint64_t a2)
{
  v5 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v60[-1] - v7;
  v9 = type metadata accessor for EscrowInformation.Metadata(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v60[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = [v14 label];
  if (!v15)
  {
    v36 = 0;
    return v36 & 1;
  }

  v62 = v2;
  v16 = v15;
  v17 = sub_100216974();
  v19 = v18;

  v25 = *(a2 + 8);
  v26 = *(a2 + 16);
  if (v17 == v25 && v19 == v26)
  {
    v19, v20, v25, v26, v21, v22, v23, v24, v59, v60[0], v60[1], v60[2], v61, v62, v63, v64, v65, v66;
  }

  else
  {
    v28 = sub_1002171A4();
    v19, v29, v30, v31, v32, v33, v34, v35, v59, v60[0], v60[1], v60[2], v61, v62, v63, v64, v65, v66;
    if ((v28 & 1) == 0)
    {
      v36 = 0;
      return v36 & 1;
    }
  }

  v37 = [v14 escrowMetadata];
  if (v37 && (v38 = v37, v39 = [v37 bottleID], v38, v39))
  {
    v40 = sub_100216974();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(a2 + *(v43 + 52), v8, &unk_10029DAA0, &qword_10021E870);
  v44 = *(v10 + 48);
  if (v44(v8, 1, v9) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v45 = *(v9 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *&v13[v45] = qword_100298568;
    v46 = v44(v8, 1, v9);

    if (v46 != 1)
    {
      sub_1000114D4(v8, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001AC038(v8, v13, type metadata accessor for EscrowInformation.Metadata);
  }

  v47 = (*&v13[*(v9 + 20)] + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];

  sub_1001AC1E4(v13, type metadata accessor for EscrowInformation.Metadata);
  if (v42)
  {
    if (v40 == v49 && v42 == v48)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_1002171A4();
    }

    v42, v50, v51, v52, v53, v54, v55, v56, v59, v60[0], v60[1], v60[2], v61, v62, v63, v64, v65, v66;
  }

  else
  {
    v36 = 0;
  }

  v48, v50, v51, v52, v53, v54, v55, v56, v59, v60[0], v60[1], v60[2], v61, v62, v63, v64, v65, v66;
  return v36 & 1;
}

uint64_t sub_10014B160(id *a1, uint64_t *a2)
{
  v3 = *a1;
  result = [*a1 peerID];
  if (result)
  {
    v5 = result;
    v6 = sub_100216974();
    v8 = v7;

    v14 = a2[8];
    v15 = a2[9];
    if (v6 == v14 && v8 == v15)
    {
      v8, v9, v14, v15, v10, v11, v12, v13, v218, v220, v222, v224, v226, v228, v230, v232, vars0, vars8;
    }

    else
    {
      v17 = sub_1002171A4();
      v8, v18, v19, v20, v21, v22, v23, v24, v218, v220, v222, v224, v226, v228, v230, v232, vars0, vars8;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    result = [v3 bottleID];
    if (!result)
    {
      return result;
    }

    v25 = result;
    v26 = sub_100216974();
    v28 = v27;

    v34 = a2[10];
    v35 = a2[11];
    if (v26 == v34 && v28 == v35)
    {
      v28, v29, v34, v35, v30, v31, v32, v33, v219, v221, v223, v225, v227, v229, v231, v233, vars0a, vars8a;
    }

    else
    {
      v36 = sub_1002171A4();
      v28, v37, v38, v39, v40, v41, v42, v43, v219, v221, v223, v225, v227, v229, v231, v233, vars0a, vars8a;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

    v44 = [v3 escrowedSigningSPKI];
    if (v44)
    {
      v45 = v44;
      v46 = sub_100216224();
      v48 = v47;

      v49 = a2[2];
      v50 = a2[3];
      if (v48 >> 60 != 15)
      {
        if (v50 >> 60 == 15)
        {
          goto LABEL_42;
        }

        v51 = a2[2];
        v52 = a2[3];
        sub_100012558(v49, v50);
        sub_100012558(v51, v52);
        sub_1000602D0(v46, v48);
        v53 = sub_100052F18(v46, v48, v51, v52);
        sub_10004CD18(v51, v52, v54, v55, v56, v57, v58, v59);
        sub_100002BF0(v51, v52, v60, v61, v62, v63, v64, v65);
        sub_10004CD18(v46, v48, v66, v67, v68, v69, v70, v71);
        sub_10004CD18(v46, v48, v72, v73, v74, v75, v76, v77);
        if (!v53)
        {
          return 0;
        }

LABEL_22:
        v84 = [v3 signatureUsingEscrowKey];
        if (v84)
        {
          v85 = v84;
          v46 = sub_100216224();
          v48 = v86;

          v49 = a2[4];
          v50 = a2[5];
          if (v48 >> 60 != 15)
          {
            if (v50 >> 60 == 15)
            {
              goto LABEL_42;
            }

            v87 = a2[4];
            v88 = a2[5];
            sub_100012558(v49, v50);
            sub_100012558(v87, v88);
            sub_1000602D0(v46, v48);
            v89 = sub_100052F18(v46, v48, v87, v88);
            sub_10004CD18(v87, v88, v90, v91, v92, v93, v94, v95);
            sub_100002BF0(v87, v88, v96, v97, v98, v99, v100, v101);
            sub_10004CD18(v46, v48, v102, v103, v104, v105, v106, v107);
            sub_10004CD18(v46, v48, v108, v109, v110, v111, v112, v113);
            if (!v89)
            {
              return 0;
            }

LABEL_30:
            v120 = [v3 signatureUsingPeerKey];
            if (v120)
            {
              v121 = v120;
              v46 = sub_100216224();
              v48 = v122;

              v49 = a2[6];
              v50 = a2[7];
              if (v48 >> 60 != 15)
              {
                if (v50 >> 60 != 15)
                {
                  v123 = a2[6];
                  v124 = a2[7];
                  sub_100012558(v49, v50);
                  sub_100012558(v123, v124);
                  sub_1000602D0(v46, v48);
                  v125 = sub_100052F18(v46, v48, v123, v124);
                  sub_10004CD18(v123, v124, v126, v127, v128, v129, v130, v131);
                  sub_100002BF0(v123, v124, v132, v133, v134, v135, v136, v137);
                  sub_10004CD18(v46, v48, v138, v139, v140, v141, v142, v143);
                  sub_10004CD18(v46, v48, v144, v145, v146, v147, v148, v149);
                  if (!v125)
                  {
                    return 0;
                  }

LABEL_38:
                  v156 = [v3 contents];
                  if (v156)
                  {
                    v157 = v156;
                    v158 = sub_100216224();
                    v160 = v159;

                    v161 = *a2;
                    v162 = a2[1];
                    if (v160 >> 60 != 15)
                    {
                      if (v162 >> 60 != 15)
                      {
                        v163 = *a2;
                        sub_100012558(v161, v162);
                        sub_100012558(v163, v162);
                        sub_1000602D0(v158, v160);
                        v164 = sub_100052F18(v158, v160, v163, v162);
                        sub_10004CD18(v163, v162, v165, v166, v167, v168, v169, v170);
                        sub_100002BF0(v163, v162, v171, v172, v173, v174, v175, v176);
                        sub_10004CD18(v158, v160, v177, v178, v179, v180, v181, v182);
                        sub_10004CD18(v158, v160, v183, v184, v185, v186, v187, v188);
                        return v164;
                      }

LABEL_49:
                      v211 = v161;
                      sub_100012558(v161, v162);
                      sub_10004CD18(v158, v160, v212, v213, v214, v215, v216, v217);
                      v203 = v211;
                      v204 = v162;
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v158 = 0;
                    v161 = *a2;
                    v162 = a2[1];
                    v160 = 0xF000000000000000;
                  }

                  if (v162 >> 60 == 15)
                  {
                    sub_100012558(v161, v162);
                    sub_10004CD18(v158, v160, v205, v206, v207, v208, v209, v210);
                    return 1;
                  }

                  goto LABEL_49;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v46 = 0;
              v49 = a2[6];
              v50 = a2[7];
              v48 = 0xF000000000000000;
            }

            if (v50 >> 60 == 15)
            {
              sub_100012558(v49, v50);
              sub_10004CD18(v46, v48, v150, v151, v152, v153, v154, v155);
              goto LABEL_38;
            }

LABEL_42:
            v189 = v49;
            v190 = v50;
            sub_100012558(v49, v50);
            sub_10004CD18(v46, v48, v191, v192, v193, v194, v195, v196);
            v203 = v189;
            v204 = v190;
LABEL_43:
            sub_10004CD18(v203, v204, v197, v198, v199, v200, v201, v202);
            return 0;
          }
        }

        else
        {
          v46 = 0;
          v49 = a2[4];
          v50 = a2[5];
          v48 = 0xF000000000000000;
        }

        if (v50 >> 60 != 15)
        {
          goto LABEL_42;
        }

        sub_100012558(v49, v50);
        sub_10004CD18(v46, v48, v114, v115, v116, v117, v118, v119);
        goto LABEL_30;
      }
    }

    else
    {
      v46 = 0;
      v49 = a2[2];
      v50 = a2[3];
      v48 = 0xF000000000000000;
    }

    if (v50 >> 60 != 15)
    {
      goto LABEL_42;
    }

    sub_100012558(v49, v50);
    sub_10004CD18(v46, v48, v78, v79, v80, v81, v82, v83);
    goto LABEL_22;
  }

  return result;
}

void sub_10014B678(void *a1, char *a2)
{
  v5 = type metadata accessor for EscrowInformation(0);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = (&v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v104 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v104 - v15;
  v17 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] legacyEscrowRecords];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v113 = 0;
  v20 = type metadata accessor for EscrowRecordMO();
  v111 = sub_1001A13C4(&qword_10029DA88, type metadata accessor for EscrowRecordMO, &protocol conformance descriptor for NSObject);
  sub_100216BA4();

  if (!v113)
  {
    return;
  }

  v110 = v20;
  __chkstk_darwin(v21, v22);
  *(&v104 - 2) = a1;
  v24 = sub_10018843C(sub_1001ABD8C, (&v104 - 4), v23, &unk_10029DA90, &unk_1002267A0, sub_1001EED88, type metadata accessor for EscrowRecordMO);
  v32 = v24;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v33 = sub_100216ED4();
    p_cache = CKKSSOSSelfPeer.cache;
    if (v33)
    {
LABEL_5:
      v109 = v13;
      if (p_cache[164] != -1)
      {
        swift_once();
      }

      v35 = sub_100216774();
      sub_100002648(v35, qword_10029D160);
      sub_1001AC0A0(a1, v16, type metadata accessor for EscrowInformation);
      v36 = sub_100216754();
      v37 = sub_100216C54();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v106 = a2;
        v39 = v38;
        v40 = swift_slowAlloc();
        v108 = v2;
        v41 = v40;
        v113 = v40;
        *v39 = 136446210;
        v105 = *(v16 + 1);
        v107 = v9;
        v42 = *(v16 + 2);

        sub_1001AC1E4(v16, type metadata accessor for EscrowInformation);
        v43 = sub_100005FB0(v105, v42, &v113);
        v44 = v42;
        v9 = v107;
        v44, v45, v46, v47, v48, v49, v50, v51, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113;
        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "fetchViableBottles already knows about legacy record %{public}s, re-adding entry", v39, 0xCu);
        sub_100006128(v41, v52, v53, v54, v55, v56, v57, v58);

        a2 = v106;
      }

      else
      {

        sub_1001AC1E4(v16, type metadata accessor for EscrowInformation);
      }

      v13 = v109;
      v59 = *&a2[v17];
      isa = sub_100216B94().super.isa;
      v32, v61, v62, v63, v64, v65, v66, v67;
      [v59 removeLegacyEscrowRecords:isa];

      goto LABEL_13;
    }
  }

  else
  {
    p_cache = (CKKSSOSSelfPeer + 16);
    if (*(v24 + 16))
    {
      goto LABEL_5;
    }
  }

  v32, v25, v26, v27, v28, v29, v30, v31;
LABEL_13:
  v114._countAndFlagsBits = 0x656C62756F642ELL;
  v114._object = 0xE700000000000000;
  if (sub_100216AA4(v114))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v68 = sub_100216774();
    sub_100002648(v68, qword_10029D160);
    sub_1001AC0A0(a1, v13, type metadata accessor for EscrowInformation);
    v69 = sub_100216754();
    v70 = sub_100216C54();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v113 = v72;
      *v71 = 136446210;
      v73 = *(v13 + 1);
      v74 = *(v13 + 2);

      sub_1001AC1E4(v13, type metadata accessor for EscrowInformation);
      v75 = sub_100005FB0(v73, v74, &v113);
      v74, v76, v77, v78, v79, v80, v81, v82, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113;
      *(v71 + 4) = v75;
      v83 = "ignoring double enrollment record %{public}s";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v69, v70, v83, v71, 0xCu);
      sub_100006128(v72, v97, v98, v99, v100, v101, v102, v103);

      return;
    }

    v84 = v13;
  }

  else
  {
    v115._object = 0x800000010023D010;
    v115._countAndFlagsBits = 0xD000000000000016;
    if (sub_100216A94(v115))
    {
      sub_1001F7878(a1, 2);
      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v85 = sub_100216774();
    sub_100002648(v85, qword_10029D160);
    sub_1001AC0A0(a1, v9, type metadata accessor for EscrowInformation);
    v69 = sub_100216754();
    v70 = sub_100216C54();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v113 = v72;
      *v71 = 136446210;
      v86 = v9;
      v87 = v9[1];
      v88 = *(v86 + 16);

      sub_1001AC1E4(v86, type metadata accessor for EscrowInformation);
      v89 = sub_100005FB0(v87, v88, &v113);
      v88, v90, v91, v92, v93, v94, v95, v96, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113;
      *(v71 + 4) = v89;
      v83 = "ignoring non-iCDP record: %{public}s";
      goto LABEL_25;
    }

    v84 = v9;
  }

  sub_1001AC1E4(v84, type metadata accessor for EscrowInformation);
}

uint64_t sub_10014BE34(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v4 = a1;
    a1 = 0;
    a2 = 0;
  }

  else
  {
    v4 = 0;
  }

  return a4(a1, a2, v4);
}

void sub_10014BE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);
  v7 = sub_100216754();
  v8 = sub_100216C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "beginning a removeEscrowCache", v9, 2u);
  }

  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v10 = v3;
  v11 = sub_10019C8E0(v10, 0xD000000000000019, 0x800000010023CFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  v13 = *&v10[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = sub_1001ABD3C;
  *(v14 + 32) = v12;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001ABD48;
  *v15->containerMap = v14;
  v55[4] = sub_1001ACCC0;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_1002854E8;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v10;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  v12, v26, v27, v28, v29, v30, v31, v32;
  v11, v33, v34, v35, v36, v37, v38, v39;
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10014C13C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "removeEscrowCache complete %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023CFF0, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

id sub_10014C364()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    [*(v0 + v1) removeFullyViableEscrowRecords:v2];
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    [*(v0 + v1) removePartiallyViableEscrowRecords:v4];
  }

  v6 = [*(v0 + v1) legacyEscrowRecords];
  if (v6)
  {
    v7 = v6;
    [*(v0 + v1) removeLegacyEscrowRecords:v6];
  }

  v8 = *(v0 + v1);

  return [v8 setEscrowFetchDate:0];
}

uint64_t sub_10014C458(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a3 & 1) == 0 && (*(a1 + 16) || *(a2 + 16)))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029D160);
    v22 = sub_100216754();
    v23 = sub_100216C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "fetchViableBottlesFromCache returned bottles", v24, 2u);
    }

    return a4(a1, a2, 0);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = sub_100216754();
    v16 = sub_100216C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetchViableBottlesFromCache did not return any bottles, checking cuttlefish", v17, 2u);
    }

    return sub_10014E26C(a7, a8, a9, a10, a4, a5);
  }
}

void sub_10014C66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchEscrowRecordsWithSemaphore from source %ld", v11, 0xCu);
  }

  if (a1 == 2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    *(v12 + 32) = v4;

    v13 = v4;
    sub_10014E26C(0, 0, 0, 0, sub_1001ABCC8, v12);
  }

  else
  {
    if (a1 == 1)
    {

      sub_10014D024(0, a2, a3);
      return;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    *(v12 + 32) = v4;

    v21 = v4;
    sub_10014D024(1, sub_1001ABCB8, v12);
  }

  v12, v14, v15, v16, v17, v18, v19, v20;
}

void sub_10014C878(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, void *a5)
{
  if ((a2 & 1) != 0 || !*(a1 + 16))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    v14 = sub_100216754();
    v15 = sub_100216C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "fetchEscrowRecordsFromCache did not return any records, checking cuttlefish", v16, 2u);
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a5;

    v18 = a5;
    sub_10014E26C(0, 0, 0, 0, sub_1001ACBB4, v17);

    v17, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    v10 = sub_100216754();
    v11 = sub_100216C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchEscrowRecordsFromCache returned records", v12, 2u);
    }

    a3(a1, 0);
  }
}

void sub_10014CAC0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchViableBottlesFromCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  v12 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = swift_allocObject();
  *v14->endpoint = sub_1001ABC60;
  *v14->containerMap = v13;
  v40[4] = sub_1001ACCC0;
  v41 = v14;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_100109050;
  v40[3] = &unk_1002853D0;
  v15 = _Block_copy(v40);
  v16 = v41;
  v17 = v4;

  v16, v18, v19, v20, v21, v22, v23, v24;
  [v12 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v13, v26, v27, v28, v29, v30, v31, v32;
  v14, v33, v34, v35, v36, v37, v38, v39;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10014CD0C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void), _TtC18TrustedPeersHelper6Client *a4)
{
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchFromEscrowCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  __chkstk_darwin(v12, v13);
  sub_10001148C(&qword_10029DA70, &qword_100226788);
  sub_100216D34();
  a3(v21, v22, v23);
  sub_1001A9B3C(v21, v22, v23);
  a4, v14, v15, v16, v17, v18, v19, v20;
}

BOOL sub_10014CEF4(uint64_t *a1)
{
  v2 = sub_1001FBCB8();
  v3 = [v2 viableBottles];
  v4 = sub_100216B24();

  *a1 = v4;
  v5 = [v2 partialBottles];
  v6 = sub_100216B24();

  a1[1] = v6;
  v7 = [v2 viableBottles];
  v8 = sub_100216B24();

  v9 = *v8->endpoint;
  v8, v10, v11, v12, v13, v14, v15, v16, v28, v30, v32, v34, v36, v38, v40, v42, vars0, vars8;
  if (v9)
  {

    return 0;
  }

  else
  {
    v18 = [v2 partialBottles];
    v19 = sub_100216B24();

    v20 = *v19->endpoint;
    v19, v21, v22, v23, v24, v25, v26, v27, v29, v31, v33, v35, v37, v39, v41, v43, vars0a, vars8a;
    return v20 == 0;
  }
}

void sub_10014D024(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchEscrowRecordsFromCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  v12 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = swift_allocObject();
  *v14->endpoint = sub_1001ABBBC;
  *v14->containerMap = v13;
  v40[4] = sub_1001ACCC0;
  v41 = v14;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_100109050;
  v40[3] = &unk_100285358;
  v15 = _Block_copy(v40);
  v16 = v41;
  v17 = v4;

  v16, v18, v19, v20, v21, v22, v23, v24;
  [v12 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v13, v26, v27, v28, v29, v30, v31, v32;
  v14, v33, v34, v35, v36, v37, v38, v39;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10014D270(void *a1, char a2, void (*a3)(uint64_t, void), _TtC18TrustedPeersHelper6Client *a4)
{
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchFromEscrowCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  __chkstk_darwin(v12, v13);
  sub_10001148C(&qword_10029DA80, &qword_100226798);
  sub_100216D34();
  a3(v31, v32);
  sub_1001ABC14(v31, v32, v14, v15, v16, v17, v18, v19, v27, v28, a1, v30, v31, v32, v33, v34, v35, v36);
  a4, v20, v21, v22, v23, v24, v25, v26;
}

BOOL sub_10014D450(char **a1)
{
  sub_1001FBE54();
  v10 = v2;
  v11 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_22:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v12 = sub_1002170F4();
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_3:
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = v13;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = sub_100217014();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_20;
        }

        v16 = *&v10[1]._TtCs12_SwiftObject_opaque[8 * v15];
      }

      v17 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v18 = [v16 data];
      if (v18)
      {
        break;
      }

      ++v15;
      if (v13 == v12)
      {
        goto LABEL_23;
      }
    }

    v27 = a1;
    v19 = v18;
    v20 = sub_100216224();
    v26 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100182FA0(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = sub_100182FA0((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    a1 = v27;
    *(v24 + 4) = v20;
    *(v24 + 5) = v26;
  }

  while (v13 != v12);
LABEL_23:
  v10, v3, v4, v5, v6, v7, v8, v9, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35;
  *a1 = v14;
  return *(v14 + 2) == 0;
}