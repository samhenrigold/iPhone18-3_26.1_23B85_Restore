uint64_t sub_10017DA48(void *a1, char *a2, void *a3, void *a4, uint64_t a5, void (*a6)(void, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v276 = a4;
  v277 = a8;
  v279 = a6;
  v280 = a7;
  v275 = a5;
  v278 = a3;
  v11 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  __chkstk_darwin(v11, v12);
  v14 = &v259 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  __chkstk_darwin(v15, v16);
  v18 = (&v259 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for SignedPeerStableInfo(0);
  __chkstk_darwin(v19, v20);
  v22 = &v259 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 bestPolicyVersion];
  v24 = sub_100179A18([v23 versionNumber]);
  v266 = v19;
  v260 = v15;
  v261 = v11;
  v264 = a2;
  v262 = v18;
  v27 = v24;
  v28 = [a1 clock];
  if (v28 == -1)
  {
    __break(1u);
  }

  else
  {
    *&v273 = v28 + 1;
    if (qword_100297230 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v263 = 0;
  v272 = qword_1002B0320;
  v267 = v27;
  v29 = [v27 version];
  v30 = [a1 policySecrets];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1002168D4();
  }

  else
  {
    v32 = 0;
  }

  v268 = v23;
  v274 = v22;
  v269 = [a1 syncUserControllableViews];
  v33 = [a1 secureElementIdentity];
  v34 = [a1 walrusSetting];
  v35 = [a1 webAccess];
  v36 = [a1 deviceName];
  v271 = v34;
  if (v36)
  {
    v37 = v36;
    sub_100216974();
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = v35;
  v270 = v33;
  v265 = v14;
  v41 = [a1 serialNumber];
  v42 = v29;
  if (v41)
  {
    v43 = v41;
    sub_100216974();
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = [a1 osVersion];
  if (!v46)
  {
    sub_100216974();
    v48 = v47;
    v46 = sub_100216964();
    v48, v49, v50, v51, v52, v53, v54, v55, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
  }

  v56 = [a1 isInheritedAccount];
  if (v32)
  {
    v57.super.isa = sub_1002168C4().super.isa;
    v32, v58, v59, v60, v61, v62, v63, v64, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
    if (v39)
    {
      goto LABEL_16;
    }

LABEL_19:
    v65 = 0;
    if (v45)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v57.super.isa = 0;
  if (!v39)
  {
    goto LABEL_19;
  }

LABEL_16:
  v65 = sub_100216964();
  v39, v66, v67, v68, v69, v70, v71, v72, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
  if (v45)
  {
LABEL_17:
    v73 = sub_100216964();
    v45, v74, v75, v76, v77, v78, v79, v80, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
    goto LABEL_21;
  }

LABEL_20:
  v73 = 0;
LABEL_21:
  v81 = objc_allocWithZone(TPPeerStableInfo);
  v282 = 0;
  LOBYTE(v258) = v56;
  v82 = v40;
  v83 = v271;
  v84 = v42;
  v85 = v42;
  v86 = v270;
  v87 = [v81 initWithClock:v273 frozenPolicyVersion:v272 flexiblePolicyVersion:v85 policySecrets:v57.super.isa syncUserControllableViews:v269 secureElementIdentity:v270 walrusSetting:v271 webAccess:v40 deviceName:v65 serialNumber:v73 osVersion:v46 signingKeyPair:v278 recoverySigningPubKey:0 recoveryEncryptionPubKey:0 isInheritedAccount:v258 error:&v282];

  if (v87)
  {
    v88 = v282;

    v89 = v274;
    *v274 = xmmword_10021D470;
    v89[1] = xmmword_10021D470;
    v273 = xmmword_10021D470;
    v90 = v87;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v91 = [v90 data];
    v92 = sub_100216224();
    v94 = v93;

    sub_100002BF0(*v89, *(v89 + 1), v95, v96, v97, v98, v99, v100);
    *v89 = v92;
    *(v89 + 1) = v94;
    v101 = [v90 sig];
    v102 = sub_100216224();
    v104 = v103;

    sub_100002BF0(*(v89 + 2), *(v89 + 3), v105, v106, v107, v108, v109, v110);
    *(v89 + 2) = v102;
    *(v89 + 3) = v104;
    v111 = [v276 peerID];
    if (v111)
    {
      v276 = v90;
      v112 = v111;
      v113 = sub_100216974();
      v115 = v114;

      v116 = v264;
      v117 = *&v264[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
      v118 = sub_100216964();
      sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_10021D600;
      *(v119 + 32) = v113;
      *(v119 + 40) = v115;
      v120.super.isa = sub_100216B14().super.isa;
      v119, v121, v122, v123, v124, v125, v126, v127, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
      v128 = [*&v116[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
      v129 = &_swiftEmptySetSingleton;
      if (v128)
      {
        v130 = v128;
        v282 = 0;
        type metadata accessor for MachineMO();
        sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
        sub_100216BA4();

        if (v282)
        {
          v129 = v282;
        }
      }

      sub_100108644(v129);
      v132 = v131;
      v129, v133, v134, v135, v136, v137, v138, v139, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
      v140 = objc_allocWithZone(TPMachineIDList);
      sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
      isa = sub_100216B14().super.isa;
      v132, v142, v143, v144, v145, v146, v147, v148, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
      v149 = [v140 initWithEntries:isa];

      v282 = 0;
      v150 = [v117 calculateDynamicInfoForPeerWithID:v118 addingPeerIDs:0 removingPeerIDs:v120.super.isa preapprovedKeys:0 signingKeyPair:v278 currentMachineIDs:v149 error:&v282];

      v151 = v282;
      if (v150)
      {
        v152 = v116;
        v153 = v262;
        v154 = v273;
        *v262 = v273;
        *(v153 + 16) = v154;
        v155 = v151;
        v156 = v150;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        v278 = v156;
        v157 = [v156 data];
        v158 = sub_100216224();
        v160 = v159;

        sub_100002BF0(*v153, *(v153 + 8), v161, v162, v163, v164, v165, v166);
        *v153 = v158;
        *(v153 + 8) = v160;
        v167 = [v156 sig];
        v168 = sub_100216224();
        v170 = v169;

        sub_100002BF0(*(v153 + 16), *(v153 + 24), v171, v172, v173, v174, v175, v176);
        *(v153 + 16) = v168;
        *(v153 + 24) = v170;
        __chkstk_darwin(v177, v178);
        sub_1001A13C4(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);
        sub_100216654();
        v179 = *&v152[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v180 = *&v152[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v152[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v179);
        v181 = swift_allocObject();
        v182 = v276;
        *(v181 + 16) = v152;
        *(v181 + 24) = v182;
        v183 = v280;
        *(v181 + 32) = v279;
        *(v181 + 40) = v183;
        v184 = *(v180 + 16);
        v185 = *(v184 + 120);
        v186 = v182;
        v187 = v152;

        v188 = v265;
        v185(v265, sub_1001AB5EC, v181, v179, v184);

        v181, v189, v190, v191, v192, v193, v194, v195;
        sub_1001AC1E4(v188, type metadata accessor for RemoveRecoveryKeyRequest);
        sub_1001AC1E4(v153, type metadata accessor for SignedPeerDynamicInfo);
        v196 = v274;
      }

      else
      {
        v228 = v282;
        v229 = sub_100216154();

        swift_willThrow();
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v230 = sub_100216774();
        sub_100002648(v230, qword_10029D160);
        swift_errorRetain();
        v231 = sub_100216754();
        v232 = sub_100216C74();

        v233 = os_log_type_enabled(v231, v232);
        v234 = v268;
        if (v233)
        {
          v235 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v281 = v229;
          v282 = v236;
          *v235 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v237 = sub_100216994();
          v239 = v238;
          v240 = sub_100005FB0(v237, v238, &v282);
          v239, v241, v242, v243, v244, v245, v246, v247, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
          *(v235 + 4) = v240;
          _os_log_impl(&_mh_execute_header, v231, v232, "Error preparing dynamic info: %{public}s", v235, 0xCu);
          sub_100006128(v236, v248, v249, v250, v251, v252, v253, v254);
        }

        v255 = v279;
        v256 = v274;
        v257 = v276;
        swift_errorRetain();
        v255(0, v229);

        v196 = v256;
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v200 = sub_100216774();
      sub_100002648(v200, qword_10029D160);
      v201 = v275;
      swift_errorRetain();
      v202 = sub_100216754();
      v203 = sub_100216C74();

      v204 = os_log_type_enabled(v202, v203);
      v205 = v268;
      if (v204)
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v281 = v201;
        v282 = v207;
        *v206 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v208 = sub_100216994();
        v209 = v90;
        v211 = v210;
        v212 = sub_100005FB0(v208, v210, &v282);
        v213 = v211;
        v90 = v209;
        v213, v214, v215, v216, v217, v218, v219, v220, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268;
        *(v206 + 4) = v212;
        _os_log_impl(&_mh_execute_header, v202, v203, "Error creating recovery key peerid: %{public}s", v206, 0xCu);
        sub_100006128(v207, v221, v222, v223, v224, v225, v226, v227);
      }

      v279(0, v201);
      v196 = v89;
    }

    return sub_1001AC1E4(v196, type metadata accessor for SignedPeerStableInfo);
  }

  else
  {
    v197 = v282;
    v198 = sub_100216154();

    swift_willThrow();
    v199 = v198;

    v25 = v279;
    swift_errorRetain();
    v25(0, v199);
  }
}

void sub_10017E820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  v45 = a6;
  v43 = a5;
  v44 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v44 - 1);
  __chkstk_darwin(v44, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SignedPeerStableInfo(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];

  v19, v20, v21, v22, v23, v24, v25, v26, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51;
  a1[2] = a2;
  a1[3] = a3;
  sub_1001AC0A0(a4, v18, type metadata accessor for SignedPeerStableInfo);
  v27 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v28 = *(v27 + 28);
  sub_1000114D4(a1 + v28, &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v18, a1 + v28, type metadata accessor for SignedPeerStableInfo);
  (*(v15 + 56))(a1 + v28, 0, 1, v14);
  sub_1001AC0A0(v43, v13, type metadata accessor for SignedPeerDynamicInfo);
  v29 = *(v27 + 32);
  sub_1000114D4(a1 + v29, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v13, a1 + v29, type metadata accessor for SignedPeerDynamicInfo);
  (*(v10 + 56))(a1 + v29, 0, 1, v44);
  v30 = [*&v45[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
  if (v30)
  {
    v38 = v30;
    v39 = sub_100216974();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  a1[1], v31, v32, v33, v34, v35, v36, v37, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51;
  *a1 = v39;
  a1[1] = v41;
}

void sub_10017EAE4(uint64_t a1, char *a2, void *a3, void (*a4)(void, void *), void *a5)
{
  v80 = a4;
  v81 = a5;
  v79 = a3;
  v7 = type metadata accessor for RemoveRecoveryKeyResponse(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v12 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v79 - v14;
  v16 = sub_10001148C(&qword_100298430, &unk_10021DEA0);
  __chkstk_darwin(v16, v17);
  v19 = (&v79 - v18);
  sub_100019C6C(a1, &v79 - v18, &qword_100298430, &unk_10021DEA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v80;
    v21 = *v19;
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
      aBlock = v26;
      *v25 = 136446210;
      v88 = v21;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v27 = sub_100216994();
      v29 = v28;
      v30 = sub_100005FB0(v27, v28, &aBlock);
      v29, v31, v32, v33, v34, v35, v36, v37, v79, v80, v81, aBlock, v83, v84, v85, v86, v87, v88;
      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "removeRecoveryKey failed: %{public}s", v25, 0xCu);
      sub_100006128(v26, v38, v39, v40, v41, v42, v43, v44);
    }

    swift_errorRetain();
    v20(0, v21);
  }

  else
  {
    sub_1001AC038(v19, v15, type metadata accessor for RemoveRecoveryKeyResponse);
    v45 = a2;
    v46 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v15, v12, type metadata accessor for RemoveRecoveryKeyResponse);
    v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v48 = (v9 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v79;
    *v49->endpoint = a2;
    *v49->containerMap = v50;
    sub_1001AC038(v12, &v49->_TtCs12_SwiftObject_opaque[v47], type metadata accessor for RemoveRecoveryKeyResponse);
    v51 = &v49->_TtCs12_SwiftObject_opaque[v48];
    v52 = v81;
    *v51 = v80;
    *(v51 + 1) = v52;
    v53 = swift_allocObject();
    *v53->endpoint = sub_1001AB5F8;
    *v53->containerMap = v49;
    v86 = sub_1001ACCC0;
    v87 = v53;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100109050;
    v85 = &unk_100284A48;
    v54 = _Block_copy(&aBlock);
    v55 = v87;
    v56 = v45;
    v57 = v50;

    v55, v58, v59, v60, v61, v62, v63, v64;
    [v46 performBlockAndWait:v54];
    _Block_release(v54);
    sub_1001AC1E4(v15, type metadata accessor for RemoveRecoveryKeyResponse);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();
    v49, v65, v66, v67, v68, v69, v70, v71;
    v53, v72, v73, v74, v75, v76, v77, v78;
    if (v54)
    {
      __break(1u);
    }
  }
}

uint64_t sub_10017EF94(char *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), void *a5)
{
  v80 = a5;
  v81 = a4;
  v78 = a3;
  v7 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v76 - v9;
  v11 = type metadata accessor for Changes(0);
  v77 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v16 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
  v17 = [a2 data];
  v18 = sub_100216224();
  v20 = v19;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v18, v20, v22, v23, v24, v25, v26, v27);
  [v16 setEgoPeerStableInfo:isa];

  v79 = a1;
  v28 = *&a1[v15];
  v29 = [a2 sig];
  v30 = sub_100216224();
  v32 = v31;

  v33 = sub_100216204().super.isa;
  sub_100002BF0(v30, v32, v34, v35, v36, v37, v38, v39);
  [v28 setEgoPeerStableInfoSig:v33];

  v40 = v77;
  v41 = type metadata accessor for RemoveRecoveryKeyResponse(0);
  sub_100019C6C(v78 + *(v41 + 20), v10, &unk_10029D750, &qword_10021E850);
  v42 = v40[6];
  if (v42(v10, 1, v11) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0xE000000000000000;
    *(v14 + 2) = _swiftEmptyArrayStorage;
    *(v14 + 24) = xmmword_10021D470;
    *(v14 + 40) = xmmword_10021D470;
    v14[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v42(v10, 1, v11) != 1)
    {
      sub_1000114D4(v10, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v10, v14, type metadata accessor for Changes);
  }

  v43 = v79;
  sub_100174C2C(v14, 0);
  sub_1001AC1E4(v14, type metadata accessor for Changes);
  [*&v43[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] removeRecoveryKey];
  [*&v43[v15] setRecoveryKeySigningSPKI:0];
  [*&v43[v15] setRecoveryKeyEncryptionSPKI:0];
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v44 = sub_100216774();
  sub_100002648(v44, qword_10029D160);
  v45 = sub_100216754();
  v46 = sub_100216C54();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "removeRecoveryKey succeeded", v47, 2u);
  }

  v48 = *&v43[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v84[0] = 0;
  if ([v48 save:v84])
  {
    v49 = v84[0];
    return v81(1, 0);
  }

  else
  {
    v51 = v84[0];
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
      v57 = swift_slowAlloc();
      v84[0] = v57;
      *v56 = 136446210;
      v82 = v52;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v58 = sub_100216994();
      v60 = v59;
      v61 = sub_100005FB0(v58, v59, v84);
      v60, v62, v63, v64, v65, v66, v67, v68, v76, v77, v78, v79, v80, v81, v82, v83, v84[0], v84[1];
      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "removeRecoveryKey handling failed: %{public}s", v56, 0xCu);
      sub_100006128(v57, v69, v70, v71, v72, v73, v74, v75);
    }

    swift_errorRetain();
    v81(0, v52);
  }
}

uint64_t sub_10017F5C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PerformATOPRVActionsRequest(0);
  __chkstk_darwin(v5, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28[-v11];
  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v28[-v15];
  sub_100006484((v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24));
  v17 = type metadata accessor for Metrics(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = type metadata accessor for AccountInfo(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  *v19->endpoint = a1;
  *v19->containerMap = a2;
  v29 = v16;
  v30 = v12;
  sub_1001A13C4(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);

  sub_100216654();
  RetryingCKCodeService.performAtoprvactions(_:completion:)(v8, sub_1001AB528, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1001AC1E4(v8, type metadata accessor for PerformATOPRVActionsRequest);
  sub_1000114D4(v12, &unk_10029D6F0, &qword_100226B40);
  return sub_1000114D4(v16, &qword_100297FE0, &unk_10021E7F0);
}

uint64_t sub_10017F89C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_10001148C(&qword_100298420, &qword_10021DE90);
  __chkstk_darwin(v4, v5);
  v7 = (&v34[-1] - v6);
  sub_100019C6C(a1, &v34[-1] - v6, &qword_100298420, &qword_10021DE90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    swift_errorRetain();
    v10 = sub_100216754();
    v11 = sub_100216C74();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v8;
      v34[0] = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14 = sub_100216994();
      v16 = v15;
      v17 = sub_100005FB0(v14, v15, v34);
      v16, v18, v19, v20, v21, v22, v23, v24, v33, v34[0], v34[1], v34[2], v34[3], v35, v36, v37, v38, v39;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "performATOPRVActions failed: %{public}s", v12, 0xCu);
      sub_100006128(v13, v25, v26, v27, v28, v29, v30, v31);
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    a2(0);
    return sub_1000114D4(v7, &qword_100298420, &qword_10021DE90);
  }
}

uint64_t sub_10017FB04(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C64();
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
    _os_log_impl(&_mh_execute_header, v8, v6, "testSemaphore complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C120, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

_TtC18TrustedPeersHelper6Client *sub_10017FD2C(unint64_t a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3)
{
  v85 = a2;
  v86 = a1;
  v5 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v79 - v11;
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  __chkstk_darwin(Request, v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v17 = v3;
  v18 = sub_10019C8E0(v17, 0xD00000000000001ELL, 0x800000010023CEA0);
  v82 = v17;

  v19 = swift_allocObject();
  v20 = v85;
  *v19->endpoint = v18;
  *v19->containerMap = v20;
  v85 = v19;
  *v19[1]._TtCs12_SwiftObject_opaque = a3;
  v21 = qword_100297520;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_100216774();
  sub_100002648(v22, qword_10029D160);
  v23 = sub_100216754();
  v24 = sub_100216C54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "starting fetchCurrentItem", v25, 2u);
  }

  v28 = v86;
  v83 = Request;
  if (v86 >> 62)
  {
    v78 = v86;
    v26 = sub_1002170F4();
    v28 = v78;
    v29 = v26;
  }

  else
  {
    v29 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = _swiftEmptyArrayStorage;
  v84 = v18;
  if (!v29)
  {
    goto LABEL_21;
  }

  v31 = v28;
  v88 = _swiftEmptyArrayStorage;
  result = sub_1001878F0(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v81 = v16;
    v30 = v88;
    if ((v31 & 0xC000000000000001) != 0)
    {
      v33 = 0;
      do
      {
        v34 = sub_100217014();
        *(&v79 - 2) = __chkstk_darwin(v34, v35);
        sub_1001A13C4(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);
        sub_100216654();
        swift_unknownObjectRelease();
        v88 = v30;
        v37 = *v30->endpoint;
        v36 = *v30->containerMap;
        if (v37 >= v36 >> 1)
        {
          sub_1001878F0((v36 > 1), v37 + 1, 1);
          v30 = v88;
        }

        ++v33;
        *v30->endpoint = v37 + 1;
        v26 = sub_1001AC038(v12, &v30->_TtCs12_SwiftObject_opaque[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37], type metadata accessor for CurrentCKKSItemSpecifier);
        v27 = v86;
      }

      while (v29 != v33);
    }

    else
    {
      v38 = v31 + 32;
      v26 = sub_1001A13C4(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier, &protocol conformance descriptor for CurrentCKKSItemSpecifier);
      v86 = v26;
      v39 = v80;
      do
      {
        __chkstk_darwin(v26, v27);
        *(&v79 - 2) = v40;
        v41 = v40;
        sub_100216654();

        v88 = v30;
        v43 = *v30->endpoint;
        v42 = *v30->containerMap;
        if (v43 >= v42 >> 1)
        {
          sub_1001878F0((v42 > 1), v43 + 1, 1);
          v30 = v88;
        }

        *v30->endpoint = v43 + 1;
        v26 = sub_1001AC038(v39, &v30->_TtCs12_SwiftObject_opaque[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43], type metadata accessor for CurrentCKKSItemSpecifier);
        v38 += 8;
        --v29;
      }

      while (v29);
    }

    v16 = v81;
LABEL_21:
    __chkstk_darwin(v26, v27);
    *(&v79 - 2) = v30;
    sub_1001A13C4(&qword_100299090, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);
    sub_100216654();
    v30, v44, v45, v46, v47, v48, v49, v50, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
    v51 = *&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v52 = *&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v51);
    v53 = swift_allocObject();
    v54 = v85;
    *v53->endpoint = sub_1001AB494;
    *v53->containerMap = v54;
    v55 = *(v52 + 16);
    v56 = *(v55 + 144);

    v56(v16, sub_1001AB520, v53, v51, v55);
    v84, v57, v58, v59, v60, v61, v62, v63;
    v54, v64, v65, v66, v67, v68, v69, v70;
    v53, v71, v72, v73, v74, v75, v76, v77;
    return sub_1001AC1E4(v16, type metadata accessor for CurrentItemFetchRequest);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001803C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
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
    _os_log_impl(&_mh_execute_header, v14, v12, "fetchCurrentItem complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023CEA0, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

void *sub_1001806BC(uint64_t a1, void (*a2)(void *, void *, uint64_t), void *a3)
{
  v6 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v6 - 8, v7);
  v117 = &v103 - v8;
  v9 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  __chkstk_darwin(v9 - 8, v10);
  v116 = &v103 - v11;
  v115 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v109 = *(v115 - 8);
  __chkstk_darwin(v115, v12);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for CurrentCKKSItem(0);
  v108 = *(v120 - 8);
  __chkstk_darwin(v120, v15);
  v119 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100216424();
  v110 = *(v121 - 8);
  v18 = __chkstk_darwin(v121, v17);
  v114 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v118 = &v103 - v22;
  __chkstk_darwin(v21, v23);
  v25 = &v103 - v24;
  Response = type metadata accessor for CurrentItemFetchResponse(0);
  __chkstk_darwin(Response - 8, v27);
  v29 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_10001148C(&qword_100298410, &unk_10021DE80);
  __chkstk_darwin(v30, v31);
  v33 = (&v103 - v32);
  sub_100019C6C(a1, &v103 - v32, &qword_100298410, &unk_10021DE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v33;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v35 = sub_100216774();
    sub_100002648(v35, qword_10029D160);
    swift_errorRetain();
    v36 = sub_100216754();
    v37 = sub_100216C74();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v122 = v34;
      v123 = v39;
      *v38 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = v41;
      v43 = sub_100005FB0(v40, v41, &v123);
      v42, v44, v45, v46, v47, v48, v49, v50, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112;
      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "fetchCurrentItem failed: %{public}s", v38, 0xCu);
      sub_100006128(v39, v51, v52, v53, v54, v55, v56, v57);
    }

    swift_errorRetain();
    a2(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v34);
  }

  else
  {
    v104 = v14;
    v105 = a2;
    v107 = a3;
    sub_1001AC038(v33, v29, type metadata accessor for CurrentItemFetchResponse);
    v106 = v29;
    v59 = v29[1];
    v123 = _swiftEmptyArrayStorage;
    v60 = *(v59 + 16);
    if (v60)
    {
      v61 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v62 = *(v110 + 2);
      v63 = v59 + ((v110[80] + 32) & ~v110[80]);
      v112 = *(v110 + 9);
      v113 = v61;
      v64 = (v110 + 8);
      v111 = _swiftEmptyArrayStorage;
      v65 = v119;
      do
      {
        v66 = v121;
        v62(v25, v63, v121);
        v62(v118, v25, v66);
        v67 = sub_100216D94();
        (*v64)(v25, v66);
        if (v67)
        {
          sub_100216B04();
          if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100216B44();
          }

          sub_100216B64();
          v111 = v123;
          v65 = v119;
        }

        v63 += v112;
        --v60;
      }

      while (v60);
    }

    else
    {
      v111 = _swiftEmptyArrayStorage;
      v65 = v119;
    }

    v68 = v106;
    v69 = *v106;
    v70 = *(*v106 + 16);
    v71 = _swiftEmptyArrayStorage;
    if (v70)
    {
      v123 = _swiftEmptyArrayStorage;
      sub_100217064();
      v72 = v108;
      v73 = v69 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
      sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v74 = v109 + 48;
      v113 = *(v72 + 72);
      v118 = v110 + 48;
      v110 += 32;
      v75 = v104;
      while (1)
      {
        sub_1001AC0A0(v73, v65, type metadata accessor for CurrentCKKSItem);
        v76 = v116;
        sub_100019C6C(v65 + *(v120 + 24), v116, &qword_100298588, &unk_10021E7E0);
        v77 = *v74;
        v78 = v115;
        if ((*v74)(v76, 1, v115) == 1)
        {
          *v75 = 0;
          v75[1] = 0xE000000000000000;
          v75[2] = 0;
          v75[3] = 0xE000000000000000;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v77(v76, 1, v78) != 1)
          {
            sub_1000114D4(v76, &qword_100298588, &unk_10021E7E0);
          }
        }

        else
        {
          sub_1001AC038(v76, v75, type metadata accessor for CurrentCKKSItemSpecifier);
        }

        v79 = objc_allocWithZone(CuttlefishCurrentItemSpecifier);
        v80 = sub_100216964();
        v81 = sub_100216964();
        v82 = [v79 init:v80 zoneID:v81];

        sub_1001AC1E4(v75, type metadata accessor for CurrentCKKSItemSpecifier);
        v65 = v119;
        v83 = v117;
        sub_100019C6C(&v119[*(v120 + 20)], v117, &qword_10029D9C0, &qword_100226740);
        v84 = *v118;
        v85 = v121;
        if ((*v118)(v83, 1, v121) == 1)
        {
          v112 = v82;
          sub_100216414();
          v86 = v84(v83, 1, v85);
          v82 = v112;
          if (v86 != 1)
          {
            sub_1000114D4(v83, &qword_10029D9C0, &qword_100226740);
          }
        }

        else
        {
          (*v110)(v114, v83, v85);
        }

        result = sub_100216D94();
        if (!result)
        {
          break;
        }

        v87 = result;
        [objc_allocWithZone(CuttlefishCurrentItem) init:v82 item:result];

        sub_1001AC1E4(v65, type metadata accessor for CurrentCKKSItem);
        sub_100217044();
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v73 += v113;
        if (!--v70)
        {
          v71 = v123;
          v68 = v106;
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v88 = v111;
      (v105)(v71, v111, 0);
      v71, v89, v90, v91, v92, v93, v94, v95, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112;
      v88, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112;
      return sub_1001AC1E4(v68, type metadata accessor for CurrentItemFetchResponse);
    }
  }

  return result;
}

_TtC18TrustedPeersHelper6Client *sub_1001810B8(unint64_t a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3)
{
  v85 = a2;
  v86 = a1;
  v5 = type metadata accessor for PCSService(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v79 - v11;
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  __chkstk_darwin(Request, v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v17 = v3;
  v18 = sub_10019C8E0(v17, 0xD000000000000026, 0x800000010023CE70);
  v82 = v17;

  v19 = swift_allocObject();
  v20 = v85;
  *v19->endpoint = v18;
  *v19->containerMap = v20;
  v85 = v19;
  *v19[1]._TtCs12_SwiftObject_opaque = a3;
  v21 = qword_100297520;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_100216774();
  sub_100002648(v22, qword_10029D160);
  v23 = sub_100216754();
  v24 = sub_100216C54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "starting fetchPCSIdentityByKey", v25, 2u);
  }

  v28 = v86;
  v83 = Request;
  if (v86 >> 62)
  {
    v78 = v86;
    v26 = sub_1002170F4();
    v28 = v78;
    v29 = v26;
  }

  else
  {
    v29 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = _swiftEmptyArrayStorage;
  v84 = v18;
  if (!v29)
  {
    goto LABEL_21;
  }

  v31 = v28;
  v88 = _swiftEmptyArrayStorage;
  result = sub_100187934(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v81 = v16;
    v30 = v88;
    if ((v31 & 0xC000000000000001) != 0)
    {
      v33 = 0;
      do
      {
        v34 = sub_100217014();
        *(&v79 - 2) = __chkstk_darwin(v34, v35);
        sub_1001A13C4(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);
        sub_100216654();
        swift_unknownObjectRelease();
        v88 = v30;
        v37 = *v30->endpoint;
        v36 = *v30->containerMap;
        if (v37 >= v36 >> 1)
        {
          sub_100187934((v36 > 1), v37 + 1, 1);
          v30 = v88;
        }

        ++v33;
        *v30->endpoint = v37 + 1;
        v26 = sub_1001AC038(v12, &v30->_TtCs12_SwiftObject_opaque[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37], type metadata accessor for PCSService);
        v27 = v86;
      }

      while (v29 != v33);
    }

    else
    {
      v38 = v31 + 32;
      v26 = sub_1001A13C4(&qword_10029D9A0, type metadata accessor for PCSService, &protocol conformance descriptor for PCSService);
      v86 = v26;
      v39 = v80;
      do
      {
        __chkstk_darwin(v26, v27);
        *(&v79 - 2) = v40;
        v41 = v40;
        sub_100216654();

        v88 = v30;
        v43 = *v30->endpoint;
        v42 = *v30->containerMap;
        if (v43 >= v42 >> 1)
        {
          sub_100187934((v42 > 1), v43 + 1, 1);
          v30 = v88;
        }

        *v30->endpoint = v43 + 1;
        v26 = sub_1001AC038(v39, &v30->_TtCs12_SwiftObject_opaque[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43], type metadata accessor for PCSService);
        v38 += 8;
        --v29;
      }

      while (v29);
    }

    v16 = v81;
LABEL_21:
    __chkstk_darwin(v26, v27);
    *(&v79 - 2) = v30;
    sub_1001A13C4(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);
    sub_100216654();
    v30, v44, v45, v46, v47, v48, v49, v50, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
    v51 = *&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v52 = *&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v82[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v51);
    v53 = swift_allocObject();
    v54 = v85;
    *v53->endpoint = sub_1001AB464;
    *v53->containerMap = v54;
    v55 = *(v52 + 16);
    v56 = *(v55 + 136);

    v56(v16, sub_1001AB48C, v53, v51, v55);
    v84, v57, v58, v59, v60, v61, v62, v63;
    v54, v64, v65, v66, v67, v68, v69, v70;
    v53, v71, v72, v73, v74, v75, v76, v77;
    return sub_1001AC1E4(v16, type metadata accessor for DirectPCSIdentityFetchRequest);
  }

  __break(1u);
  return result;
}

void sub_100181754(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, uint64_t a4, void (*a5)(void, void, void), void *a6)
{
  v66 = a6;
  if (a3)
  {
    v10 = sub_100216C74();
  }

  else
  {
    v10 = sub_100216C54();
  }

  v11 = v10;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  sub_100002648(v12, qword_10029D160);
  swift_errorRetain();
  v13 = sub_100216754();

  if (os_log_type_enabled(v13, v11))
  {
    v64 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74 = v15;
    *v14 = 136446210;
    v16 = 0xE700000000000000;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v79._countAndFlagsBits = sub_100216994();
      object = v79._object;
      sub_100216A14(v79);
      object, v18, v19, v20, v21, v22, v23, v24, v64, v66, a3, 0x203A726F727265, 0xE700000000000000, v74, v75, v76, v77, v78;

      v25 = v70;
      v16 = v72;
    }

    else
    {
      v25 = 0x73736563637573;
    }

    v32 = sub_100005FB0(v25, v16, &v74);
    v16, v33, v34, v35, v36, v37, v38, v39, v64, v66, v68, v70, v72, v74, v75, v76, v77, v78;
    *(v14 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v13, v11, "fetchPCSIdentityByKey complete: %{public}s", v14, 0xCu);
    sub_100006128(v15, v40, v41, v42, v43, v44, v45, v46);

    a5 = v63;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000026, 0x800000010023CE70, v26, v27, v28, v29, v30, v31);
  if (a1)
  {
    v47 = a1;
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  if (a2)
  {
    v48 = a2;
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  a5(v47, v48, a3);
  v48, v49, v50, v51, v52, v53, v54, v55, v63, v66, v68, v70, v72, v74, v75, v76, v77, v78;
  v47, v56, v57, v58, v59, v60, v61, v62, v65, v67, v69, v71, v73, v74, v75, v76, v77, v78;
}

uint64_t sub_100181AF0(uint64_t a1, void (*a2)(void *, void *, uint64_t), void *a3)
{
  v82 = a3;
  v83 = a2;
  v4 = type metadata accessor for DirectPCSIdentity(0);
  v79 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100216424();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v79 - v14;
  Response = type metadata accessor for DirectPCSIdentityFetchResponse(0);
  __chkstk_darwin(Response - 8, v17);
  v19 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100298400, &qword_10021DE70);
  __chkstk_darwin(v20, v21);
  v23 = (&v79 - v22);
  sub_100019C6C(a1, &v79 - v22, &qword_100298400, &qword_10021DE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v25 = sub_100216774();
    sub_100002648(v25, qword_10029D160);
    swift_errorRetain();
    v26 = sub_100216754();
    v27 = sub_100216C74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v87 = v24;
      v88 = v29;
      *v28 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v30 = sub_100216994();
      v32 = v31;
      v33 = sub_100005FB0(v30, v31, &v88);
      v32, v34, v35, v36, v37, v38, v39, v40, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchPCSIdentityByKey failed: %{public}s", v28, 0xCu);
      sub_100006128(v29, v41, v42, v43, v44, v45, v46, v47);
    }

    v48 = v83;
    swift_errorRetain();
    v48(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v24);
  }

  else
  {
    sub_1001AC038(v23, v19, type metadata accessor for DirectPCSIdentityFetchResponse);
    v81 = v19;
    v50 = v19[1];
    v88 = _swiftEmptyArrayStorage;
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v55 = *(v8 + 16);
      v54 = v8 + 16;
      v53 = v55;
      v56 = (v50 + ((*(v54 + 64) + 32) & ~*(v54 + 64)));
      v85 = *(v54 + 56);
      v86 = v52;
      v84 = _swiftEmptyArrayStorage;
      v55(v15, v56, v7);
      while (1)
      {
        v53(v12, v15, v7);
        v57 = sub_100216D94();
        (*(v54 - 8))(v15, v7);
        if (v57)
        {
          sub_100216B04();
          if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v84 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100216B44();
          }

          sub_100216B64();
          v84 = v88;
        }

        v56 = &v85[v56];
        if (!--v51)
        {
          break;
        }

        v53(v15, v56, v7);
      }
    }

    else
    {
      v84 = _swiftEmptyArrayStorage;
    }

    v58 = *v81;
    v59 = *(*v81 + 16);
    v60 = _swiftEmptyArrayStorage;
    if (v59)
    {
      v88 = _swiftEmptyArrayStorage;
      sub_100217064();
      v61 = v80;
      v62 = v58 + ((v79[80] + 32) & ~v79[80]);
      v63 = *(v79 + 9);
      do
      {
        sub_1001AC0A0(v62, v61, type metadata accessor for DirectPCSIdentity);
        sub_100059518();
        sub_1001AC1E4(v61, type metadata accessor for DirectPCSIdentity);
        sub_100217044();
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v62 += v63;
        --v59;
      }

      while (v59);
      v60 = v88;
    }

    v64 = v84;
    (v83)(v60, v84, 0);
    v60, v65, v66, v67, v68, v69, v70, v71, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
    v64, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
    return sub_1001AC1E4(v81, type metadata accessor for DirectPCSIdentityFetchResponse);
  }
}

void sub_10018210C(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, SEL *a3, SEL *a4, const char *a5, ...)
{
  v8 = v5;
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = [*(v5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) *a3];
  if (v12)
  {
    v72 = 0;
    v13 = v12;
    sub_100216BA4();
  }

  v74 = &_swiftEmptySetSingleton;

  sub_10018B000(&v72, a1, a2);
  v73, v14, v15, v16, v17, v18, v19, v20, oslog, v72, v73, v74, v75, v76, v77, v78, v79, v80;
  v21 = *(v8 + v11);
  v22 = v74;
  v23 = v21;

  isa = sub_100216B94().super.isa;
  v22, v25, v26, v27, v28, v29, v30, v31, oslogc, v72, v73, v74, v75, v76, v77, v78, v79, v80;
  [v23 *a4];

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v32 = sub_100216774();
  sub_100002648(v32, qword_10029D160);

  oslogd = sub_100216754();
  v33 = sub_100216C54();
  a2, v34, v35, v36, v37, v38, v39, v40, oslogd, v72, v73, v74, v75, v76, v77, v78, v79, v80;
  if (os_log_type_enabled(osloga, v33))
  {
    v48 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_100005FB0(a1, a2, &v72);
    *(v48 + 12) = 2080;

    v49 = sub_100216BC4();
    v51 = v50;
    v22, v50, v52, v53, v54, v55, v56, v57, osloga, v72, v73, v74, v75, v76, v77, v78, v79, v80;
    v58 = sub_100005FB0(v49, v51, &v72);
    v51, v59, v60, v61, v62, v63, v64, v65, osloge, v72, v73, v74, v75, v76, v77, v78, v79, v80;
    *(v48 + 14) = v58;
    _os_log_impl(&_mh_execute_header, osloga, v33, a5, v48, 0x16u);
    swift_arrayDestroy();
  }

  v22, v41, v42, v43, v44, v45, v46, v47, osloga, v72, v73, v74, v75, v76, v77, v78, v79, v80;
}

id sub_1001823DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Container();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100182510(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish);
  v4 = v3[3];
  v5 = v3[4];
  sub_100006484(v3, v4);
  return (*(*(v5 + 8) + 8))(a1, v4) & 1;
}

uint64_t sub_10018257C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100216034();
    if (v10)
    {
      v11 = sub_100216064();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100216054();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100216034();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100216064();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100216054();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001827AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_100217264();

    sub_1002169C4();
    v16 = sub_100217284();
    v24 = -1 << *(a2 + 32);
    v25 = v16 & ~v24;
    if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_23:
      v14, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38;
      return 0;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(a2 + 48) + 16 * v25);
      v17 = v27[1];
      v28 = *v27 == v15 && v17 == v14;
      if (v28 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38;
    result = v29;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100182964(_TtC18TrustedPeersHelper6Client *result, int64_t a2, char a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->containerMap;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = *a4->endpoint;
  if (v7 <= v8)
  {
    v9 = *a4->endpoint;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001148C(&qword_10029D7C0, &unk_1002265E8);
  v10 = *(type metadata accessor for TLKShare(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  *v13->endpoint = v8;
  *v13->containerMap = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = type metadata accessor for TLKShare(0);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = &a4->_TtCs12_SwiftObject_opaque[v22];
  if (v5)
  {
    if (v13 < a4 || &v13->_TtCs12_SwiftObject_opaque[v22] >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8;
  return v13;
}

void *sub_1001830AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100183130(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_1001831B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001148C(&qword_10029D830, &qword_10021D778);
    v2 = sub_100217134();
    v27 = v2;
    v3 = sub_1002170A4();
    v4 = sub_1002170D4();
    if (v4)
    {
      v12 = v4;
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      v13 = v12;
      do
      {
        v25 = v13;
        swift_dynamicCast();
        sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
        swift_dynamicCast();
        v20 = *(v2 + 16);
        if (*(v2 + 24) <= v20)
        {
          sub_100184588(v20 + 1, 1);
        }

        v2 = v27;
        result = sub_100216DB4(*(v27 + 40));
        v15 = v27 + 64;
        v16 = -1 << *(v27 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
          }

          while (v24 == -1);
          v19 = __clz(__rbit64(~v24)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v27 + 48) + 8 * v19) = v26;
        *(*(v27 + 56) + 8 * v19) = v25;
        ++*(v27 + 16);
        v13 = sub_1002170D4();
      }

      while (v13);
    }

    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_100183404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&qword_10029D690, &qword_10021D750);
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = (*(v5 + 56) + 32 * v26);
      if (v4)
      {
        sub_1000125AC(v28, v39);
      }

      else
      {
        sub_1000060A0(v28, v39);
        v29 = v27;
      }

      sub_100217264();
      type metadata accessor for CFString(0);
      sub_1001A13C4(&qword_100297D40, type metadata accessor for CFString, &unk_10021D368);
      sub_100216454();
      v30 = sub_100217284();
      v31 = -1 << *(v14 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      sub_1000125AC(v39, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_34:
  *v3 = v14;
}

void sub_1001836E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  v41 = v4;
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v5 + 56) + 32 * v27);
      if (v41)
      {
        sub_1000125AC(v31, v42);
      }

      else
      {
        sub_1000060A0(v31, v42);
      }

      sub_100217264();
      sub_1002169C4();
      v32 = sub_100217284();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      sub_1000125AC(v42, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_34:
  *v3 = v14;
}

void sub_10018399C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&qword_100297D90, &qword_10021D7A8);
  v46 = v4;
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
    v45 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 32 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[3];
      v48 = v29[2];
      v33 = *(v28 + 8 * v27);
      if ((v46 & 1) == 0)
      {

        v34 = v33;
      }

      sub_100217264();
      sub_1002169C4();
      sub_1002169C4();
      v35 = sub_100217284();
      v36 = -1 << *(v14 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 32 * v22);
      *v23 = v30;
      v23[1] = v31;
      v19 = v47;
      v23[2] = v48;
      v23[3] = v32;
      *(*(v14 + 56) + 8 * v22) = v33;
      ++*(v14 + 16);
      v5 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v47 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v44;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_100183C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100216194();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10001148C(&qword_100297D10, &qword_10021D718);
  v48 = v4;
  v11 = sub_100217124();
  v19 = v11;
  if (*(v10 + 16))
  {
    v52 = v9;
    v44 = v2;
    v20 = 0;
    v21 = (v10 + 64);
    v22 = 1 << *(v10 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v10 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = (v6 + 16);
    v46 = v10;
    v47 = v6;
    v49 = (v6 + 32);
    v26 = v11 + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v20 << 6);
      v32 = *(v10 + 48);
      v51 = *(v47 + 72);
      v33 = v32 + v51 * v31;
      if (v48)
      {
        (*v49)(v52, v33, v5);
        v50 = *(*(v10 + 56) + 8 * v31);
      }

      else
      {
        (*v45)(v52, v33, v5);
        v50 = *(*(v10 + 56) + 8 * v31);
      }

      sub_1001A13C4(&unk_10029D660, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v34 = sub_1002168F4();
      v35 = -1 << *(v19 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v49)((*(v19 + 48) + v51 * v27), v52, v5);
      *(*(v19 + 56) + 8 * v27) = v50;
      ++*(v19 + 16);
      v10 = v46;
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v21, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
LABEL_34:
  *v3 = v19;
}

void sub_100184050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&qword_100297D88, &qword_10021D7A0);
  v45 = v4;
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v44 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = 16 * (v26 | (v15 << 6));
      v30 = (*(v5 + 48) + v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = (*(v5 + 56) + v29);
      v34 = v33[1];
      v46 = *v33;
      if ((v45 & 1) == 0)
      {
      }

      sub_100217264();
      sub_1002169C4();
      v35 = sub_100217284();
      v36 = -1 << *(v14 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = 16 * v22;
      v24 = (*(v14 + 48) + v23);
      *v24 = v31;
      v24[1] = v32;
      v25 = (*(v14 + 56) + v23);
      *v25 = v46;
      v25[1] = v34;
      ++*(v14 + 16);
      v5 = v44;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_100184310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&unk_10029D800, &unk_100226620);
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v39 = *(*(v5 + 56) + 16 * v26);
      if ((v4 & 1) == 0)
      {
        v28 = v27;
        sub_100012558(v39, *(&v39 + 1));
      }

      v29 = sub_100216DB4(*(v14 + 40));
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      *(*(v14 + 56) + 16 * v22) = v39;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
    v3 = v38;
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *v3 = v14;
}

void sub_100184588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001148C(&qword_10029D830, &qword_10021D778);
  v6 = sub_100217124();
  v14 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = *(*(v5 + 56) + 8 * v26);
      if ((v4 & 1) == 0)
      {
        v29 = v27;
        v30 = v28;
      }

      v31 = sub_100216DB4(*(v14 + 40));
      v32 = -1 << *(v14 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      *(*(v14 + 56) + 8 * v22) = v28;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
    v3 = v40;
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *v3 = v14;
}

void sub_1001847F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10001148C(a3, a4);
  v45 = v6;
  v8 = sub_100217124();
  v16 = v8;
  if (*(v7 + 16))
  {
    v44 = v7;
    v17 = 0;
    v18 = (v7 + 64);
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v8 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = (*(v7 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(*(v7 + 56) + 8 * v29);
      if ((v45 & 1) == 0)
      {

        v34 = v33;
      }

      sub_100217264();
      sub_1002169C4();
      v35 = sub_100217284();
      v36 = -1 << *(v16 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v31;
      v25[1] = v32;
      *(*(v16 + 56) + 8 * v24) = v33;
      ++*(v16 + 16);
      v7 = v44;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      v5 = v4;
      goto LABEL_33;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v4;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_33:
  *v5 = v16;
}

void sub_100184A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10001148C(a3, a4);
  v44 = v6;
  v8 = sub_100217124();
  v16 = v8;
  if (*(v7 + 16))
  {
    v43 = v7;
    v17 = 0;
    v18 = (v7 + 64);
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v8 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = (*(v7 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(*(v7 + 56) + 8 * v29);
      if ((v44 & 1) == 0)
      {
      }

      sub_100217264();
      sub_1002169C4();
      v34 = sub_100217284();
      v35 = -1 << *(v16 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v31;
      v25[1] = v32;
      *(*(v16 + 56) + 8 * v24) = v33;
      ++*(v16 + 16);
      v7 = v43;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      v5 = v4;
      goto LABEL_33;
    }

    v42 = 1 << *(v7 + 32);
    v5 = v4;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v7 + 16) = 0;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_33:
  *v5 = v16;
}

void sub_100184D2C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_100217264();
      type metadata accessor for CFString(0);
      sub_1001A13C4(&qword_100297D40, type metadata accessor for CFString, &unk_10021D368);
      v11 = v10;
      sub_100216454();
      v12 = sub_100217284();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_100184F24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_100217264();

      sub_1002169C4();
      v11 = sub_100217284();
      v10, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

unint64_t sub_1001850D4(int64_t a1, uint64_t a2)
{
  v41 = sub_100216194();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_100216E54();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_1001A13C4(&unk_10029D660, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = sub_1002168F4();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

void sub_1001853F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_100217264();

      sub_1002169C4();
      v10 = sub_100217284();
      v9, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1001855A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_100217264();

      sub_1002169C4();
      v10 = sub_100217284();
      v9, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

_OWORD *sub_100185754(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015974(a2);
  v15 = v7[2];
  v16 = (v9 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v9;
  v20 = v7[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v8;
      sub_10018676C();
      v8 = v21;
      goto LABEL_8;
    }

    sub_100183404(v18, a3 & 1);
    v8 = sub_100015974(a2);
    if ((v19 & 1) != (v9 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1002171C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v4;
  if (v19)
  {
    v23 = (v22[7] + 32 * v8);
    sub_100006128(v23, v9, v10, v22, v11, v12, v13, v14);

    return sub_1000125AC(a1, v23);
  }

  else
  {
    sub_1001865E0(v8, a2, a1, v22);

    return a2;
  }
}

_OWORD *sub_100185894(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100015A28(a2, a3);
  v18 = v10[2];
  v19 = (v12 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v12;
  v23 = v10[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = v11;
      sub_1001868EC();
      v11 = v24;
      goto LABEL_8;
    }

    sub_1001836E4(v21, a4 & 1);
    v11 = sub_100015A28(a2, a3);
    if ((v22 & 1) != (v12 & 1))
    {
LABEL_16:
      result = sub_1002171C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v5;
  if (v22)
  {
    v26 = (v25[7] + 32 * v11);
    sub_100006128(v26, v12, v13, v14, v25, v15, v16, v17);

    return sub_1000125AC(a1, v26);
  }

  else
  {
    sub_100186648(v11, a2, a3, a1, v25);
  }
}

uint64_t sub_1001859E4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_100185A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 17))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100185A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100185A8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    LOBYTE(a2) = 13;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_100185B20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100185B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100185B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100185BC8()
{
  result = qword_10029D530;
  if (!qword_10029D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D530);
  }

  return result;
}

uint64_t sub_100185C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1000158D4(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10018399C(v20, a6 & 1);
      v15 = sub_1000158D4(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100186A90();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_100185DC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100216194();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100015B28(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100186CCC();
      goto LABEL_7;
    }

    sub_100183C74(v18, a3 & 1);
    v24 = sub_100015B28(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1001866B4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1002171C4();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_100185F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v19 = v18;
  v25 = *v18;
  v26 = sub_100015A28(a3, a4);
  v34 = *(v25 + 16);
  v35 = (v27 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    __break(1u);
    goto LABEL_17;
  }

  v38 = v27;
  v39 = *(v25 + 24);
  if (v39 < v37 || (a5 & 1) == 0)
  {
    if (v39 < v37 || (a5 & 1) != 0)
    {
      sub_100184050(v37, a5 & 1);
      v26 = sub_100015A28(a3, a4);
      if ((v38 & 1) != (v27 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return;
      }
    }

    else
    {
      v40 = v26;
      sub_100186F40();
      v26 = v40;
    }
  }

  v41 = *v19;
  if (v38)
  {
    v42 = (v41[7] + 16 * v26);
    v43 = v42[1];
    *v42 = a1;
    v42[1] = a2;

    v43, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    return;
  }

  v41[(v26 >> 6) + 8] |= 1 << v26;
  v44 = (v41[6] + 16 * v26);
  *v44 = a3;
  v44[1] = a4;
  v45 = (v41[7] + 16 * v26);
  *v45 = a1;
  v45[1] = a2;
  v46 = v41[2];
  v36 = __OFADD__(v46, 1);
  v47 = v46 + 1;
  if (v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41[2] = v47;
}

id sub_100186118(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015AE4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100184588(v13, a3 & 1);
      v8 = sub_100015AE4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1001870B8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_100186290(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100015A28(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1001847F0(v20, a4 & 1, a5, a6);
      v15 = sub_100015A28(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100187218(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_100186440(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = v18;
  v26 = *v18;
  v27 = sub_100015A28(a2, a3);
  v35 = *(v26 + 16);
  v36 = (v28 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
    goto LABEL_17;
  }

  v39 = v28;
  v40 = *(v26 + 24);
  if (v40 < v38 || (a4 & 1) == 0)
  {
    if (v40 < v38 || (a4 & 1) != 0)
    {
      sub_100184A8C(v38, a4 & 1, a5, a6);
      v27 = sub_100015A28(a2, a3);
      if ((v39 & 1) != (v28 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return;
      }
    }

    else
    {
      v41 = v27;
      sub_100187374(a5, a6);
      v27 = v41;
    }
  }

  v42 = *v21;
  if (v39)
  {
    v43 = v42[7];
    v44 = *(v43 + 8 * v27);
    *(v43 + 8 * v27) = a1;

    v44, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    return;
  }

  v42[(v27 >> 6) + 8] |= 1 << v27;
  v45 = (v42[6] + 16 * v27);
  *v45 = a2;
  v45[1] = a3;
  *(v42[7] + 8 * v27) = a1;
  v46 = v42[2];
  v37 = __OFADD__(v46, 1);
  v47 = v46 + 1;
  if (v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42[2] = v47;
}

_OWORD *sub_1001865E0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000125AC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100186648(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000125AC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1001866B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100216194();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_10018676C()
{
  v1 = v0;
  sub_10001148C(&qword_10029D690, &qword_10021D750);
  v2 = *v0;
  v3 = sub_100217114();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 64);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[2] + 8 * v13)
    {
      memmove(v12, &v2[2], 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[2]._TtCs12_SwiftObject_opaque;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*v2[1].endpoint + 8 * v24);
        sub_1000060A0(*v2[1].containerMap + 32 * v24, v27);
        *(*v11[1].endpoint + 8 * v24) = v25;
        sub_1000125AC(v27, (*v11[1].containerMap + 32 * v24));
        v26 = v25;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[2]._TtCs12_SwiftObject_opaque[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_1001868EC()
{
  v1 = v0;
  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  v2 = *v0;
  v3 = sub_100217114();
  v11 = v3;
  if (*v2->endpoint)
  {
    v31 = v1;
    v12 = (v3 + 64);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[2] + 8 * v13)
    {
      memmove(v12, &v2[2], 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[2]._TtCs12_SwiftObject_opaque;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = (*v2[1].endpoint + 16 * v24);
        v28 = *v26;
        v27 = v26[1];
        v29 = 32 * v24;
        sub_1000060A0(*v2[1].containerMap + 32 * v24, v32);
        v30 = (*v11[1].endpoint + v25);
        *v30 = v28;
        v30[1] = v27;
        sub_1000125AC(v32, (*v11[1].containerMap + v29));
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        v2, v4, v5, v6, v7, v8, v9, v10;
        v1 = v31;
        goto LABEL_21;
      }

      v23 = *&v2[2]._TtCs12_SwiftObject_opaque[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
LABEL_21:
    *v1 = v11;
  }
}

void sub_100186A90()
{
  v1 = v0;
  sub_10001148C(&qword_100297D90, &qword_10021D7A8);
  v2 = *v0;
  v3 = sub_100217114();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 64);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[2] + 8 * v13)
    {
      memmove(v12, &v2[2], 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[2]._TtCs12_SwiftObject_opaque;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*v2[1].endpoint + 32 * v24);
        v26 = v25[1];
        v27 = v25[2];
        v28 = v25[3];
        v29 = *(*v2[1].containerMap + 8 * v24);
        v30 = (*v11[1].endpoint + 32 * v24);
        *v30 = *v25;
        v30[1] = v26;
        v30[2] = v27;
        v30[3] = v28;
        *(*v11[1].containerMap + 8 * v24) = v29;

        v31 = v29;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[2]._TtCs12_SwiftObject_opaque[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

uint64_t sub_100186C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100186C6C(uint64_t result, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (result)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_100186CCC()
{
  v1 = v0;
  v40 = sub_100216194();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40, v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001148C(&qword_100297D10, &qword_10021D718);
  v4 = *v0;
  v5 = sub_100217114();
  v13 = v5;
  if (*v4->endpoint)
  {
    v14 = (v5 + 64);
    v15 = v4 + 2;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v4 + 2;
    if (v13 != v4 || v14 >= v15 + 8 * v16)
    {
      memmove(v14, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *v4->endpoint;
    v41 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << v4[1]._TtCs12_SwiftObject_opaque[0];
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *v4[2]._TtCs12_SwiftObject_opaque;
    v22 = (v19 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_14:
        v26 = v23 | (v17 << 6);
        v27 = v42;
        v28 = *(v42 + 72) * v26;
        v30 = v39;
        v29 = v40;
        (*(v42 + 16))(v39, *v4[1].endpoint + v28, v40);
        v31 = *(*v4[1].containerMap + 8 * v26);
        v32 = v41;
        (*(v27 + 32))(*(v41 + 48) + v28, v30, v29);
        *(*(v32 + 56) + 8 * v26) = v31;
        v33 = v31;
        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        v4, v15, v7, v8, v9, v10, v11, v12;
        v1 = v35;
        v13 = v41;
        goto LABEL_18;
      }

      v25 = *&v36->_TtCs12_SwiftObject_opaque[8 * v17];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
LABEL_18:
    *v1 = v13;
  }
}

void sub_100186F40()
{
  v1 = v0;
  sub_10001148C(&qword_100297D88, &qword_10021D7A0);
  v2 = *v0;
  v3 = sub_100217114();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 64);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[2] + 8 * v13)
    {
      memmove(v12, &v2[2], 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[2]._TtCs12_SwiftObject_opaque;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*v2[1].endpoint + v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = (*v2[1].containerMap + v24);
        v29 = *v28;
        v30 = v28[1];
        v31 = (*v11[1].endpoint + v24);
        *v31 = v27;
        v31[1] = v26;
        v32 = (*v11[1].containerMap + v24);
        *v32 = v29;
        v32[1] = v30;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[2]._TtCs12_SwiftObject_opaque[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_1001870B8()
{
  v1 = v0;
  sub_10001148C(&qword_10029D830, &qword_10021D778);
  v2 = *v0;
  v3 = sub_100217114();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 64);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[2] + 8 * v13)
    {
      memmove(v12, &v2[2], 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[2]._TtCs12_SwiftObject_opaque;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*v2[1].endpoint + 8 * v24);
        v26 = *(*v2[1].containerMap + 8 * v24);
        *(*v11[1].endpoint + 8 * v24) = v25;
        *(*v11[1].containerMap + 8 * v24) = v26;
        v27 = v25;
        v28 = v26;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[2]._TtCs12_SwiftObject_opaque[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_100187218(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100217114();
  v13 = v5;
  if (*v4->endpoint)
  {
    v14 = (v5 + 64);
    v15 = ((1 << v13[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v13 != v4 || v14 >= &v4[2] + 8 * v15)
    {
      memmove(v14, &v4[2], 8 * v15);
    }

    v17 = 0;
    *v13->endpoint = *v4->endpoint;
    v18 = 1 << v4[1]._TtCs12_SwiftObject_opaque[0];
    v19 = *v4[2]._TtCs12_SwiftObject_opaque;
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = (*v4[1].endpoint + 16 * v26);
        v28 = v27[1];
        v29 = *(*v4[1].containerMap + 8 * v26);
        v30 = (*v13[1].endpoint + 16 * v26);
        *v30 = *v27;
        v30[1] = v28;
        *(*v13[1].containerMap + 8 * v26) = v29;

        v31 = v29;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *&v4[2]._TtCs12_SwiftObject_opaque[8 * v17];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}

void sub_100187374(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100217114();
  v13 = v5;
  if (*v4->endpoint)
  {
    v14 = (v5 + 64);
    v15 = ((1 << v13[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v13 != v4 || v14 >= &v4[2] + 8 * v15)
    {
      memmove(v14, &v4[2], 8 * v15);
    }

    v17 = 0;
    *v13->endpoint = *v4->endpoint;
    v18 = 1 << v4[1]._TtCs12_SwiftObject_opaque[0];
    v19 = *v4[2]._TtCs12_SwiftObject_opaque;
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = (*v4[1].endpoint + 16 * v26);
        v28 = v27[1];
        v29 = *(*v4[1].containerMap + 8 * v26);
        v30 = (*v13[1].endpoint + 16 * v26);
        *v30 = *v27;
        v30[1] = v28;
        *(*v13[1].containerMap + 8 * v26) = v29;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *&v4[2]._TtCs12_SwiftObject_opaque[8 * v17];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}

uint64_t **sub_1001874D4(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100216ED4();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100183130(v2, 0);

    v1 = sub_10018FD34(v8, v3 + 4, v2, v1);
    sub_10000D778(v8[0], v8[1], v8[2], v8[3], v8[4], v4, v5, v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100187584(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10001148C(&qword_10029D7C0, &unk_1002265E8);
      v7 = *(type metadata accessor for TLKShare(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for TLKShare(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

_TtC18TrustedPeersHelper6Client *sub_100187724(_TtC18TrustedPeersHelper6Client *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187978(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_100187744(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187AAC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_100187764(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187BCC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100187784(_TtC18TrustedPeersHelper6Client *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187CDC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1001877A4(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187E10(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_1001877C4(_TtC18TrustedPeersHelper6Client *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100187F1C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1001877E4(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100188050(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100187804(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D7C0, &unk_1002265E8, type metadata accessor for TLKShare);
  *v3 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100187848(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D950, &qword_1002266F8, type metadata accessor for ViewKeys);
  *v3 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_10018788C(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D850, &qword_100226640, type metadata accessor for PolicyDocumentKey);
  *v3 = result;
  return result;
}

char *sub_1001878D0(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100188154(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_1001878F0(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D9C8, &qword_100226748, type metadata accessor for CurrentCKKSItemSpecifier);
  *v3 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100187934(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D9A8, &qword_100226738, type metadata accessor for PCSService);
  *v3 = result;
  return result;
}

_TtC18TrustedPeersHelper6Client *sub_100187978(_TtC18TrustedPeersHelper6Client *result, const char *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->containerMap;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029D5D8, &qword_100226518);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->endpoint = v12;
    *v14->containerMap = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 16 * v12))
    {
      memmove(&v14[1], &a4[1], 16 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_10001148C(&unk_10029D5E0, &unk_100226520);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100187AAC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_100297D98, &unk_10021D9B0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[40 * v12])
    {
      memmove(v16, v17, 40 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100187BCC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029D150, &qword_100226560);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18TrustedPeersHelper6Client *sub_100187CDC(_TtC18TrustedPeersHelper6Client *result, const char *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->containerMap;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029D5C8, &qword_100226508);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->endpoint = v12;
    *v14->containerMap = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= &a4[v12 + 1])
    {
      memmove(&v14[1], &a4[1], 32 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_10001148C(&qword_10029D5D0, &qword_100226510);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100187E10(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18TrustedPeersHelper6Client *sub_100187F1C(_TtC18TrustedPeersHelper6Client *result, const char *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->containerMap;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029DB80, &qword_100226810);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->endpoint = v12;
    *v14->containerMap = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 8 * v12))
    {
      memmove(&v14[1], &a4[1], 8 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_10001148C(&qword_10029DB38, &qword_1002267C8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100188050(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&unk_10029D7F0, &qword_100226618);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100188154(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10001148C(&qword_10029D890, &qword_100226660);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC18TrustedPeersHelper6Client *sub_100188260(_TtC18TrustedPeersHelper6Client *result, int64_t a2, char a3, _TtC18TrustedPeersHelper6Client *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->containerMap;
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
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

  sub_10001148C(a5, a6);
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

  *v17->endpoint = v12;
  *v17->containerMap = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = &a4->_TtCs12_SwiftObject_opaque[v26];
  if (v9)
  {
    if (v17 < a4 || &v17->_TtCs12_SwiftObject_opaque[v26] >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

Swift::Int sub_10018843C(uint64_t (*a1)(id *), uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = &_swiftEmptySetSingleton;
    v51 = &_swiftEmptySetSingleton;
    v13 = sub_100216E84();
    if (sub_100216F14())
    {
      a7(0);
      while (1)
      {
        swift_dynamicCast();
        v21 = a1(&v50);
        if (v7)
        {
          break;
        }

        v29 = v50;
        if (v21)
        {
          v30 = *v8->endpoint;
          if (*v8->containerMap <= v30)
          {
            sub_100188D90(v30 + 1, a4, a5);
          }

          v8 = v51;
          result = sub_100216DB4(*&v51[1]._TtCs12_SwiftObject_opaque[8]);
          containerMap = v8[1].containerMap;
          v33 = -1 << v8[1]._TtCs12_SwiftObject_opaque[0];
          v34 = result & ~v33;
          v35 = v34 >> 6;
          if (((-1 << v34) & ~*&v8[1].containerMap[8 * (v34 >> 6)]) != 0)
          {
            v36 = __clz(__rbit64((-1 << v34) & ~*&v8[1].containerMap[8 * (v34 >> 6)])) | v34 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v37 = 0;
            v38 = (63 - v33) >> 6;
            do
            {
              if (++v35 == v38 && (v37 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v39 = v35 == v38;
              if (v35 == v38)
              {
                v35 = 0;
              }

              v37 |= v39;
              v40 = *&containerMap[8 * v35];
            }

            while (v40 == -1);
            v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          }

          *&containerMap[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
          *(*v8[1].endpoint + 8 * v36) = v29;
          ++*v8->endpoint;
        }

        else
        {
        }

        if (!sub_100216F14())
        {
          goto LABEL_21;
        }
      }

      v13, v22, v23, v24, v25, v26, v27, v28;
      v42 = v50;
      v8, v43, v44, v45, v46, v47, v48, v49;
    }

    else
    {
LABEL_21:
      v13, v14, v15, v16, v17, v18, v19, v20;
    }
  }

  else
  {
    v41 = sub_100189EA0(a1, a2, a3, a4, a5, a6);
    if (!v7)
    {
      return v41;
    }
  }

  return v8;
}

void sub_100188698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    containerMap = v3[1].containerMap;
    v15 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *v3[1].containerMap;
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = (*v3[1].endpoint + 16 * (v22 | (v13 << 6)));
      v26 = *v25;
      v27 = v25[1];
      sub_100217264();
      sub_1002169C4();
      v28 = sub_100217284();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v26;
      v21[1] = v27;
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = *&containerMap[8 * v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v36 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v36 >= 64)
    {
      bzero(v3[1].containerMap, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *containerMap = -1 << v36;
    }

    v2 = v1;
    *v3->endpoint = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1001888F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    containerMap = v3[1].containerMap;
    v15 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *v3[1].containerMap;
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = *v3[1].endpoint + 40 * (v22 | (v13 << 6));
      v35 = *v25;
      v36 = *(v25 + 16);
      v37 = *(v25 + 32);
      v26 = sub_100216F54(*(v12 + 40));
      v27 = -1 << *(v12 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 40 * v20;
      *v21 = v35;
      *(v21 + 16) = v36;
      *(v21 + 32) = v37;
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = *&containerMap[8 * v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v34 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v34 >= 64)
    {
      bzero(v3[1].containerMap, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *containerMap = -1 << v34;
    }

    v2 = v1;
    *v3->endpoint = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_100188B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    containerMap = v3[1].containerMap;
    v15 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    v33 = v2;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *v3[1].containerMap;
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(*v3[1].endpoint + 8 * (v21 | (v13 << 6)));
      v25 = sub_100217254();
      v26 = -1 << *(v12 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v24;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = *&containerMap[8 * v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v15 >= 64)
    {
      bzero(v3[1].containerMap, 8 * v18);
    }

    else
    {
      *containerMap = -1 << v15;
    }

    v2 = v33;
    *v3->endpoint = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_100188D90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10001148C(a2, a3);
  v6 = sub_100216F94();
  v14 = v6;
  if (*v5->endpoint)
  {
    v15 = 0;
    containerMap = v5[1].containerMap;
    v17 = 1 << v5[1]._TtCs12_SwiftObject_opaque[0];
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *v5[1].containerMap;
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(*v5[1].endpoint + 8 * (v23 | (v15 << 6)));
      v27 = sub_100216DB4(*(v14 + 40));
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v21 + 8 * v30);
          if (v34 != -1)
          {
            v22 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v26;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = *&containerMap[8 * v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v35 = 1 << v5[1]._TtCs12_SwiftObject_opaque[0];
    if (v35 >= 64)
    {
      bzero(v5[1].containerMap, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *containerMap = -1 << v35;
    }

    *v5->endpoint = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v4 = v14;
}

unint64_t sub_100188FB0(uint64_t a1, void *a2)
{
  sub_100216DB4(a2[5]);
  result = sub_100216E64();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_100189034(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if ([*(*a1[1].endpoint + 8 * v4) status] == 1)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A7DC);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_10018929C(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if ([*(*a1[1].endpoint + 8 * v4) status] == 2)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A694);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_100189504(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if ([*(*a1[1].endpoint + 8 * v4) status] == 5)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A54C);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_10018976C(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if ([*(*a1[1].endpoint + 8 * v4) status] == 3)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A404);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_1001899D4(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if ([*(*a1[1].endpoint + 8 * v4) status] == 4)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A2BC);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_100189C3C(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v4;
    v41 = v1;
    v39 = &v39;
    __chkstk_darwin(a1, v5);
    v7 = &v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v10 = 0;
    v11 = 0;
    v12 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *a1[1].containerMap;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      if (![*(*a1[1].endpoint + 8 * v4) status])
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_10018AD50(v7, v40, v10, a1, &qword_10029D598, &qword_1002264E8, v8, v9);
      }

      v18 = *&a1[1].containerMap[8 * v11];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v21 = v1;
    v22 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v23, v24, v25, v26, v27, v28, v29;
    v5 = v22;
    v1 = v21;
  }

  v30 = swift_slowAlloc();
  v31 = sub_10018A9C8(v30, v4, a1, sub_10018A178);
  a1, v32, v33, v34, v35, v36, v37, v38;

  return v31;
}

void *sub_100189EA0(uint64_t (*a1)(id *), uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, uint64_t))
{
  v7 = a3;
  v64 = a1;
  v9 = a3[1]._TtCs12_SwiftObject_opaque[0];
  v10 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v10;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v58 = v10;
    v59 = a4;
    v60 = a5;
    v65 = v6;
    v62 = &v58;
    __chkstk_darwin(a1, v11);
    v61 = &v58 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v61, v12);
    v63 = 0;
    v15 = 0;
    containerMap = v7[1].containerMap;
    v17 = 1 << v7[1]._TtCs12_SwiftObject_opaque[0];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *v7[1].containerMap;
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_12:
      v10 = v21 | (v15 << 6);
      v24 = v7;
      v66 = *(*v7[1].endpoint + 8 * v10);
      v25 = v66;
      v6 = v65;
      v26 = v64(&v66);
      v65 = v6;
      if (v6)
      {
        v24, v27, v28, v29, v30, v31, v32, v33;

        return swift_willThrow();
      }

      v34 = v26;

      v7 = v24;
      if (v34)
      {
        *&v61[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v63++, 1))
        {
          __break(1u);
          return sub_10018AD50(v61, v58, v63, v7, v59, v60, v13, v14);
        }
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        return sub_10018AD50(v61, v58, v63, v7, v59, v60, v13, v14);
      }

      v23 = *&containerMap[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v37 = a4;
    v38 = a5;
    v39 = v6;
    v40 = a6;
    v41 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v7, v42, v43, v44, v45, v46, v47, v48;
    v11 = v41;
    v6 = v39;
    a5 = v38;
    a4 = v37;
  }

  v49 = swift_slowAlloc();
  v50 = sub_10018AA50(v49, v10, v7, v64, a2, v40);
  v7, v51, v52, v53, v54, v55, v56, v57;

  if (!v39)
  {
    return v50;
  }

  return result;
}

char *sub_10018A178(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (!result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018A2BC(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (result == 4)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018A404(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (result == 3)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018A54C(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (result == 5)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018A694(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (result == 2)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018A7DC(char *result, const char *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  containerMap = a3[1].containerMap;
  v8 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a3[1].containerMap;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*a3[1].endpoint + 8 * v15) status];
    if (result == 1)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8, v17, v18);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A924(unint64_t *result, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001A5590(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();
    a3, v12, v13, v14, v15, v16, v17, v18;
    return v11;
  }

  return result;
}

void *sub_10018A9C8(void *result, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);
    a3, v9, v10, v11, v12, v13, v14, v15;
    return v8;
  }

  return result;
}

void *sub_10018AA50(void *result, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);
    a3, v13, v14, v15, v16, v17, v18, v19;
    return v12;
  }

  return result;
}

uint64_t sub_10018AB04(unint64_t *a1, const char *a2, char *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = &_swiftEmptySetSingleton;
LABEL_6:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return v13;
  }

  v9 = a3;
  if (*a4->endpoint == a3)
  {
    return v8;
  }

  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  result = sub_100216FB4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = v8;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = (*v8[1].endpoint + 16 * (v17 | (v15 << 6)));
    v21 = *v20;
    v22 = v20[1];
    sub_100217264();

    sub_1002169C4();
    result = sub_100217284();
    v23 = -1 << v13[1]._TtCs12_SwiftObject_opaque[0];
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*v13[1].endpoint + 16 * v26);
    *v31 = v21;
    v31[1] = v22;
    ++*v13->endpoint;
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    v8 = v33;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10018AD50(unint64_t *a1, const char *a2, char *a3, _TtC18TrustedPeersHelper6Client *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = &_swiftEmptySetSingleton;
LABEL_6:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return v13;
  }

  v9 = a3;
  if (*a4->endpoint == a3)
  {
    return v8;
  }

  sub_10001148C(a5, a6);
  result = sub_100216FB4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = v13[5];
    v21 = *(*v8[1].endpoint + 8 * (v17 | (v15 << 6)));
    result = sub_100216DB4(v20);
    v22 = -1 << *(v13 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(v13[6] + 8 * v25) = v21;
    ++v13[2];
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10018AF3C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1002170F4();
LABEL_9:
  result = sub_100217024();
  *v2 = result;
  return result;
}

uint64_t sub_10018B000(void *a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v7 = *v3;
  sub_100217264();
  sub_1002169C4();
  v8 = sub_100217284();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14, v25, v26, v28, v29, v30, v31, v32, v33, v34, v35;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;

    sub_10018BC54(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10018B150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100216F54(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100019390(*(v6 + 48) + 40 * v9, v16);
      v11 = sub_100216F64();
      sub_1000193EC(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000193EC(a2);
    sub_100019390(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100019390(a2, v16);
    v15 = *v3;
    sub_10018BDD4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_10018B29C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100216EF4();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16, v37, v38, v41, v42, v43, v44, v45, v46, v47, v48;

      type metadata accessor for PolicyMO();
      swift_dynamicCast();
      result = 0;
      *a1 = v39;
      return result;
    }

    result = sub_100216ED4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_10018BA5C(v7, result + 1, &qword_10029D600, &qword_100226540, type metadata accessor for PolicyMO);
    v27 = v26[2];
    if (v26[3] <= v27)
    {
      sub_100188D90(v27 + 1, &qword_10029D600, &qword_100226540);
    }

    v25 = v8;
    sub_100188FB0(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34, v37, v26, v41, v42, v43, v44, v45, v46, v47, v48;
    *v3 = v26;
    goto LABEL_16;
  }

  type metadata accessor for PolicyMO();
  v18 = sub_100216DB4(*(v6 + 40));
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v3;
    v25 = a2;
    sub_10018BF4C(v25, v20, isUniquelyReferenced_nonNull_native, &qword_10029D600, &qword_100226540, type metadata accessor for PolicyMO);
    *v3 = v40;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_100216DC4();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_10018B50C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100217254();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10018C0D0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10018B5EC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100216EF4();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16, v37, v38, v41, v42, v43, v44, v45, v46, v47, v48;

      type metadata accessor for MachineMO();
      swift_dynamicCast();
      result = 0;
      *a1 = v39;
      return result;
    }

    result = sub_100216ED4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_10018BA5C(v7, result + 1, &qword_10029D598, &qword_1002264E8, type metadata accessor for MachineMO);
    v27 = v26[2];
    if (v26[3] <= v27)
    {
      sub_100188D90(v27 + 1, &qword_10029D598, &qword_1002264E8);
    }

    v25 = v8;
    sub_100188FB0(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34, v37, v26, v41, v42, v43, v44, v45, v46, v47, v48;
    *v3 = v26;
    goto LABEL_16;
  }

  type metadata accessor for MachineMO();
  v18 = sub_100216DB4(*(v6 + 40));
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v3;
    v25 = a2;
    sub_10018BF4C(v25, v20, isUniquelyReferenced_nonNull_native, &qword_10029D598, &qword_1002264E8, type metadata accessor for MachineMO);
    *v3 = v40;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_100216DC4();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

Swift::Int sub_10018B85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_10001148C(a3, a4);
    v10 = sub_100216FA4();
    v31 = v10;
    v11 = sub_100216E84();
    if (sub_100216F14())
    {
      sub_10000200C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v25 = *(v10 + 16);
        if (*(v10 + 24) <= v25)
        {
          sub_100188D90(v25 + 1, a3, a4);
        }

        v10 = v31;
        result = sub_100216DB4(*(v31 + 40));
        v20 = v31 + 56;
        v21 = -1 << *(v31 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v31 + 56 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v31 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = 0;
          v27 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v27 && (v26 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v28 = v23 == v27;
            if (v23 == v27)
            {
              v23 = 0;
            }

            v26 |= v28;
            v29 = *(v20 + 8 * v23);
          }

          while (v29 == -1);
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
        }

        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v31 + 48) + 8 * v24) = v30;
        ++*(v31 + 16);
      }

      while (sub_100216F14());
    }

    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10018BA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_10001148C(a3, a4);
    v8 = sub_100216FA4();
    v29 = v8;
    v9 = sub_100216E84();
    if (sub_100216F14())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v23 = *(v8 + 16);
        if (*(v8 + 24) <= v23)
        {
          sub_100188D90(v23 + 1, a3, a4);
        }

        v8 = v29;
        result = sub_100216DB4(*(v29 + 40));
        v18 = v29 + 56;
        v19 = -1 << *(v29 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v29 + 56 + 8 * (v20 >> 6))) != 0)
        {
          v22 = __clz(__rbit64((-1 << v20) & ~*(v29 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = 0;
          v25 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v25 && (v24 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v26 = v21 == v25;
            if (v21 == v25)
            {
              v21 = 0;
            }

            v24 |= v26;
            v27 = *(v18 + 8 * v21);
          }

          while (v27 == -1);
          v22 = __clz(__rbit64(~v27)) + (v21 << 6);
        }

        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v29 + 48) + 8 * v22) = v28;
        ++*(v29 + 16);
      }

      while (sub_100216F14());
    }

    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

void sub_10018BC54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100188698(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10018C1F0();
      goto LABEL_16;
    }

    sub_10018C744(v8 + 1);
  }

  v10 = *v4;
  sub_100217264();
  sub_1002169C4();
  v11 = sub_100217284();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1002171A4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1002171B4();
  __break(1u);
}

void sub_10018BDD4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001888F8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_10018C34C();
      goto LABEL_12;
    }

    sub_10018C97C(v7 + 1);
  }

  v9 = *v3;
  v10 = sub_100216F54(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_100019390(*(v9 + 48) + 40 * a2, v20);
      v13 = sub_100216F64();
      sub_1000193EC(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

void sub_10018BF4C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_100188D90(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10018C604(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_10000595C(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_100216DB4(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_100216DC4();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

void sub_10018C0D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100188B6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10018C4C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10018CBA8(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_100217254();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

void sub_10018C1F0()
{
  v1 = v0;
  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  v2 = *v0;
  v3 = sub_100216F84();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 56);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[1].containerMap[8 * v13])
    {
      memmove(v12, v2[1].containerMap, 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[1].containerMap;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*v2[1].endpoint + v24);
        v26 = v25[1];
        v27 = (*v11[1].endpoint + v24);
        *v27 = *v25;
        v27[1] = v26;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[1].containerMap[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_10018C34C()
{
  v1 = v0;
  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  v2 = *v0;
  v3 = sub_100216F84();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 56);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[1].containerMap[8 * v13])
    {
      memmove(v12, v2[1].containerMap, 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = *v2[1].containerMap;
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 40 * (v21 | (v15 << 6));
        sub_100019390(*v2[1].endpoint + v24, v28);
        v25 = *v11[1].endpoint + v24;
        v26 = v28[0];
        v27 = v28[1];
        *(v25 + 32) = v29;
        *v25 = v26;
        *(v25 + 16) = v27;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *&v2[1].containerMap[8 * v15];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_10018C4C4()
{
  v1 = v0;
  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  v2 = *v0;
  v3 = sub_100216F84();
  v11 = v3;
  if (*v2->endpoint)
  {
    v12 = (v3 + 56);
    v13 = ((1 << v11[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v11 != v2 || v12 >= &v2[1].containerMap[8 * v13])
    {
      memmove(v12, v2[1].containerMap, 8 * v13);
    }

    v15 = 0;
    *v11->endpoint = *v2->endpoint;
    v16 = 1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *v2[1].containerMap;
    for (i = (v16 + 63) >> 6; v18; *(*v11[1].endpoint + 8 * v21) = *(*v2[1].endpoint + 8 * v21))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = v20 | (v15 << 6);
LABEL_17:
      ;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= i)
      {
        goto LABEL_19;
      }

      v23 = *&v2[1].containerMap[8 * v15];
      ++v22;
      if (v23)
      {
        v18 = (v23 - 1) & v23;
        v21 = __clz(__rbit64(v23)) | (v15 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_10018C604(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100216F84();
  v13 = v5;
  if (*v4->endpoint)
  {
    v14 = (v5 + 56);
    v15 = ((1 << v13[1]._TtCs12_SwiftObject_opaque[0]) + 63) >> 6;
    if (v13 != v4 || v14 >= &v4[1].containerMap[8 * v15])
    {
      memmove(v14, v4[1].containerMap, 8 * v15);
    }

    v17 = 0;
    *v13->endpoint = *v4->endpoint;
    v18 = 1 << v4[1]._TtCs12_SwiftObject_opaque[0];
    v19 = *v4[1].containerMap;
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = *(*v4[1].endpoint + 8 * v26);
        *(*v13[1].endpoint + 8 * v26) = v27;
        v28 = v27;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *&v4[1].containerMap[8 * v17];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}

void sub_10018C744(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    v14 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *v3[1].containerMap;
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = (*v3[1].endpoint + 16 * (v21 | (v13 << 6)));
      v25 = *v24;
      v26 = v24[1];
      sub_100217264();

      sub_1002169C4();
      v27 = sub_100217284();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v12 + 48) + 16 * v19);
      *v20 = v25;
      v20[1] = v26;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v1;
        goto LABEL_26;
      }

      v23 = *&v3[1].containerMap[8 * v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_26:
    *v2 = v12;
  }
}

void sub_10018C97C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    v14 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *v3[1].containerMap;
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      sub_100019390(*v3[1].endpoint + 40 * (v23 | (v13 << 6)), v34);
      v26 = sub_100216F54(*(v12 + 40));
      v27 = -1 << *(v12 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v12 + 48) + 40 * v19;
      v21 = v34[0];
      v22 = v34[1];
      *(v20 + 32) = v35;
      *v20 = v21;
      *(v20 + 16) = v22;
      ++*(v12 + 16);
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v1;
        goto LABEL_26;
      }

      v25 = *&v3[1].containerMap[8 * v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_26:
    *v2 = v12;
  }
}

void sub_10018CBA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  v4 = sub_100216F94();
  v12 = v4;
  if (*v3->endpoint)
  {
    v13 = 0;
    v14 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *v3[1].containerMap;
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(*v3[1].endpoint + 8 * (v20 | (v13 << 6)));
      v24 = sub_100217254();
      v25 = -1 << *(v12 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v12 + 48) + 8 * v19) = v23;
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_24;
      }

      v22 = *&v3[1].containerMap[8 * v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    v3, v5, v6, v7, v8, v9, v10, v11;
    *v2 = v12;
  }
}

uint64_t sub_10018CD98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1002170F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1002170F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AC36C(&qword_10029D7E0, &qword_10029D7D8, &qword_100226608, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10001148C(&qword_10029D7D8, &qword_100226608);
            v9 = sub_10018CF4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10018CF4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100217014();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10018CFCC;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10018CFD4(uint64_t a1)
{
  if (sub_1002170B4())
  {
    sub_10001148C(&unk_10029D800, &unk_100226620);
    v1 = sub_100217144();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v31 = v1;
  v2 = sub_1002170A4();
  swift_unknownObjectRetain();
  v3 = sub_1002170D4();
  if (v3)
  {
    v11 = v3;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    v12 = v11;
    do
    {
      v29 = v12;
      swift_dynamicCast();
      sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
      swift_dynamicCast();
      v20 = [v29 protobuf];
      v21 = sub_100216224();
      v23 = v22;

      v24 = v1[2];
      if (v1[3] <= v24)
      {
        sub_100184310(v24 + 1, 1);
      }

      v1 = v31;
      result = sub_100216DB4(v31[5]);
      v14 = (v31 + 8);
      v15 = -1 << *(v31 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~v31[(v16 >> 6) + 8]) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~v31[(v16 >> 6) + 8])) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v26 && (v25 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *&v14[8 * v17];
        }

        while (v28 == -1);
        v18 = __clz(__rbit64(~v28)) + (v17 << 6);
      }

      *&v14[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
      *(v31[6] + 8 * v18) = v30;
      v19 = (v31[7] + 16 * v18);
      *v19 = v21;
      v19[1] = v23;
      ++v31[2];
      v12 = sub_1002170D4();
    }

    while (v12);
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  return v1;
}