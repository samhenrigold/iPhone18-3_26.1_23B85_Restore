void sub_1001A0C98(void *a1, void *a2)
{
  v4 = [a1 egoPeerID];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [a1 egoPeerStableInfo];
  if (!v6)
  {

LABEL_12:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v66 = sub_100216774();
    sub_100002648(v66, qword_10029D160);
    oslog = sub_100216754();
    v67 = sub_100216C74();
    if (os_log_type_enabled(oslog, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v67, "ensureEgoConsistency failed to find ego peer information", v68, 2u);
    }

    goto LABEL_16;
  }

  v7 = v6;
  v8 = sub_100216224();
  v10 = v9;

  v11 = [a1 egoPeerStableInfoSig];
  if (!v11)
  {

    sub_100002BF0(v8, v10, v60, v61, v62, v63, v64, v65);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_100216224();
  v15 = v14;

  v16 = objc_allocWithZone(TPPeerStableInfo);
  sub_100012558(v8, v10);
  sub_100012558(v13, v15);
  isa = sub_100216204().super.isa;
  v18 = sub_100216204().super.isa;
  v19 = [v16 initWithData:isa sig:v18];

  sub_100002BF0(v13, v15, v20, v21, v22, v23, v24, v25);
  sub_100002BF0(v8, v10, v26, v27, v28, v29, v30, v31);
  if (!v19)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v69 = sub_100216774();
    sub_100002648(v69, qword_10029D160);
    oslog = sub_100216754();
    v70 = sub_100216C74();
    if (os_log_type_enabled(oslog, v70))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v70, "ensureEgoConsistency failed to create TPPeerStableInfo from container", v77, 2u);
    }

    sub_100002BF0(v8, v10, v71, v72, v73, v74, v75, v76);
    sub_100002BF0(v13, v15, v78, v79, v80, v81, v82, v83);
LABEL_16:

    return;
  }

  v154 = 0;
  v32 = [a2 getStableInfoForPeerWithID:v5 error:&v154];

  if (v154)
  {
    v33 = v154;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v34 = sub_100216774();
    sub_100002648(v34, qword_10029D160);
    v35 = v33;
    v36 = sub_100216754();
    v37 = sub_100216C74();

    if (os_log_type_enabled(v36, v37))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      v46 = v35;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "ensureEgoConsistency failed to create TPPeerStableInfo from model: %{public}@", v44, 0xCu);
      sub_1000114D4(v45, &qword_10029D580, &unk_10021CCC0);

      sub_100002BF0(v8, v10, v48, v49, v50, v51, v52, v53);
      sub_100002BF0(v13, v15, v54, v55, v56, v57, v58, v59);

      return;
    }

    sub_100002BF0(v8, v10, v38, v39, v40, v41, v42, v43);
    sub_100002BF0(v13, v15, v120, v121, v122, v123, v124, v125);

    goto LABEL_33;
  }

  if (!v32)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v126 = sub_100216774();
    sub_100002648(v126, qword_10029D160);
    v36 = sub_100216754();
    v127 = sub_100216C74();
    if (os_log_type_enabled(v36, v127))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v36, v127, "ensureEgoConsistency failed to create TPPeerStableInfo from model", v134, 2u);
    }

    sub_100002BF0(v8, v10, v128, v129, v130, v131, v132, v133);
    sub_100002BF0(v13, v15, v135, v136, v137, v138, v139, v140);
LABEL_33:

    return;
  }

  v84 = v32;
  v85 = [v84 clock];
  if ([v19 clock] >= v85)
  {

    sub_100002BF0(v8, v10, v141, v142, v143, v144, v145, v146);
    sub_100002BF0(v13, v15, v147, v148, v149, v150, v151, v152);
  }

  else
  {
    v86 = [v84 data];
    v87 = sub_100216224();
    v89 = v88;

    v90 = sub_100216204().super.isa;
    sub_100002BF0(v87, v89, v91, v92, v93, v94, v95, v96);
    [a1 setEgoPeerStableInfo:v90];

    v97 = [v84 sig];
    v98 = sub_100216224();
    v100 = v99;

    v101 = sub_100216204().super.isa;
    sub_100002BF0(v98, v100, v102, v103, v104, v105, v106, v107);
    [a1 setEgoPeerStableInfoSig:v101];

    sub_100002BF0(v8, v10, v108, v109, v110, v111, v112, v113);
    sub_100002BF0(v13, v15, v114, v115, v116, v117, v118, v119);
  }
}

uint64_t sub_1001A13C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1001A1450(uint64_t a1)
{
  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  result = sub_100217114();
  v3 = result;
  v4 = 0;
  v32 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v31 = result + 4;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v32 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v32 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 dictionaryRepresentation];
      if (v21)
      {
        v33 = v17;
        v22 = v10;
        v23 = v3;
        v24 = v18;
        v25 = v21;
        v26 = sub_1002168D4();

        v18 = v24;
        v3 = v23;
        v10 = v22;
        v17 = v33;
      }

      else
      {
        v26 = 0;
      }

      v35 = sub_10001148C(&qword_10029DB68, &qword_1002267F8);

      *&v34 = v26;
      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v27 = (v3[6] + 16 * v15);
      *v27 = v18;
      v27[1] = v17;
      result = sub_1000125AC(&v34, (v3[7] + 32 * v15));
      v28 = v3[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v3[2] = v30;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001A1654(_TtC18TrustedPeersHelper6Client *a1, const char *a2)
{
  v5 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100012558(a1, a2);
  v6 = sub_1001905FC(a1, a2);
  sub_100002BF0(a1, a2, v7, v8, v9, v10, v11, v12);
  if (!v2)
  {
    sub_10001148C(&qword_10029D6D0, &qword_1002265B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10021DBE0;
    *(v13 + 32) = sub_10000200C(0, &qword_10029D6D8, NSDictionary_ptr);
    *(v13 + 40) = sub_10000200C(0, &qword_10029D6E0, NSString_ptr);
    *(v13 + 48) = sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    sub_100216974();
    v15 = v14;
    sub_100216D84();
    v13, v16, v17, v18, v19, v20, v21, v22, v30, v32, v34, v35, v36, v37, v38, v39, v40, v41;
    v15, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41;

    if (v37)
    {
      sub_10001148C(&qword_10029D6E8, &unk_1002265B8);
      swift_dynamicCast();
    }

    else
    {
      sub_1000114D4(&v34, &unk_100297770, &unk_10021DF90);
    }
  }
}

id sub_1001A1800(_TtC18TrustedPeersHelper6Client *a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
    v4 = [objc_allocWithZone(_SFECKeyPair) initRandomKeyPairWithSpecifier:v3];
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      sub_1000561D0();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 13;
      swift_willThrow();
    }
  }

  else
  {
    v7 = objc_opt_self();
    sub_100012558(a1, a2);
    isa = sub_100216204().super.isa;
    v18 = 0;
    v2 = [v7 fetchKeyPairWithPrivateKeyPersistentRef:isa error:&v18];

    if (v2)
    {
      v9 = v18;
    }

    else
    {
      v2 = v18;
      sub_100216154();

      swift_willThrow();
    }

    sub_10004CD18(a1, a2, v10, v11, v12, v13, v14, v15);
  }

  return v2;
}

void sub_1001A19A8(void *a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7, _TtC18TrustedPeersHelper6Client *a8, uint64_t a9, uint64_t a10, uint64_t a11, _TtC18TrustedPeersHelper6Client *a12, void *a13, _TtC18TrustedPeersHelper6Client *a14, void *a15, _TtC18TrustedPeersHelper6Client *a16, int a17, _TtC18TrustedPeersHelper6Client *a18, _TtC18TrustedPeersHelper6Client *a19, _TtC18TrustedPeersHelper6Client *a20, _TtC18TrustedPeersHelper6Client *a21, _TtC18TrustedPeersHelper6Client *a22, unint64_t a23, _TtC18TrustedPeersHelper6Client *a24, _TtC18TrustedPeersHelper6Client *a25, void *a26, const void *a27)
{
  v880 = a8;
  v878 = a7;
  v873 = a6;
  v874 = a3;
  *&v872 = a5;
  v875 = a4;
  v876 = a1;
  *&v877 = a2;
  v886 = a20;
  v885 = a21;
  v889 = a24;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v27);
  v871 = &v840 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100216384();
  v879 = *(v29 - 8);
  __chkstk_darwin(v29, v30);
  v32 = &v840 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a27);
  v33 = swift_allocObject();
  *(v33 + 16) = a27;
  v34 = swift_allocObject();
  *(v34 + 16) = a25;
  *(v34 + 24) = a26;
  *(v34 + 32) = sub_1001AAF14;
  *(v34 + 40) = v33;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  _Block_copy(a27);
  _Block_copy(a27);
  _Block_copy(a27);

  v35 = a26;

  v884 = a27;
  _Block_copy(a27);
  v882 = a25;

  v887 = v35;
  v883 = v33;

  v36 = v889;
  v881 = "eKeyPersistentRef:crk:reply:)";
  v37 = sub_10019C8E0(v36, 0xD0000000000000F2, 0x800000010023CB30);

  v889 = v37;
  swift_retain_n();
  v888 = v34;
  swift_retain_n();
  v38 = sub_1001A1800(v886, v885);
  v39 = 0;
  v886 = v36;
  v40 = v879;
  v869 = sub_1001A1800(a22, a23);
  v112 = v38;
  sub_100216374();
  sub_100216334();
  v114 = v113;
  (*&v40->_TtCs12_SwiftObject_opaque[8])(v32, v29);
  v115 = v114 * 1000.0;
  if (COERCE__INT64(fabs(v114 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v115 <= -1.0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    swift_once();
    v145 = sub_100216774();
    sub_100002648(v145, qword_10029D160);
    swift_errorRetain();
    v146 = sub_100216754();
    v147 = sub_100216C74();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&aBlock = v149;
      *v148 = 136446210;
      v906 = v112;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v150 = sub_100216994();
      v152 = v151;
      v153 = sub_100005FB0(v150, v151, &aBlock);
      v152, v154, v155, v156, v157, v158, v159, v160, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      *(v148 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v146, v147, "bottle creation failed: %{public}s", v148, 0xCu);
      sub_100006128(v149, v161, v162, v163, v164, v165, v166, v167);
    }

    swift_errorRetain();
    v168 = sub_100216C74();
    swift_errorRetain();
    v169 = sub_100216754();

    if (os_log_type_enabled(v169, v168))
    {
      v170 = swift_slowAlloc();
      v906 = swift_slowAlloc();
      *v170 = 136446466;
      aBlock = 0uLL;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v171 = sub_100216994();
      v173 = v172;
      v174 = sub_100005FB0(v171, v172, &v906);
      v173, v175, v176, v177, v178, v179, v180, v181, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      *(v170 + 4) = v174;
      *(v170 + 12) = 2082;
      *&aBlock = 0x203A726F727265;
      *(&aBlock + 1) = 0xE700000000000000;
      v898 = v112;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v908._countAndFlagsBits = sub_100216994();
      object = v908._object;
      sub_100216A14(v908);
      object, v183, v184, v185, v186, v187, v188, v189, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

      v190 = *(&aBlock + 1);
      v191 = sub_100005FB0(aBlock, *(&aBlock + 1), &v906);
      v190, v192, v193, v194, v195, v196, v197, v198, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      *(v170 + 14) = v191;
      _os_log_impl(&_mh_execute_header, v169, v168, "prepare complete peerID: %{public}s %{public}s", v170, 0x16u);
      swift_arrayDestroy();
    }

    v73 = v884;
    v199 = v887;
    sub_10010EEEC(0xD0000000000000F2, (v881 | 0x8000000000000000), v200, v201, v202, v203, v204, v205);
    v206 = *&v199[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
    v207 = *&v199[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
    v208 = v199;
    v209 = *&v199[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
    v210 = *&v199[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
    _Block_copy(v73);
    v211 = v210;
    v111 = v208;
    sub_1001B473C(0x65726170657250, 0xE700000000000000, v206, v207, v209, v211, v112);
    swift_getErrorValue();
    sub_1001ADD74(v896, v897);
    v212 = sub_100216144();
    (v73)[2](v73, 0, 0, 0, 0, 0, 0, v212);

    _Block_release(v73);

    v213 = v888;

    v96 = v882;
    v882, v214, v215, v216, v217, v218, v219, v220;
    v213, v221, v222, v223, v224, v225, v226, v227;
    v885 = v878;
    goto LABEL_8;
  }

  if (v115 >= 1.84467441e19)
  {
    goto LABEL_69;
  }

  v116 = v112;
  v117 = v115;
  v118 = sub_100216964();
  v119 = sub_100216964();
  v120 = objc_opt_self();
  *&aBlock = 0;
  v121 = v869;
  v122 = [v120 permanentInfoWithMachineID:v118 modelID:v119 epoch:1 signingKeyPair:v116 encryptionKeyPair:v869 creationTime:v117 peerIDHashAlgo:1 error:&aBlock];

  if (v122)
  {
    v123 = aBlock;

    v124 = [(Client *)v122 peerID];
    v125 = v116;
    v126 = sub_100216974();
    v128 = v127;

    v129 = objc_allocWithZone(type metadata accessor for BottledPeer());
    v130 = v121;
    v131 = v125;

    v132 = v873;

    v133 = v875;

    v880 = v130;
    v134 = sub_1001FD814(v126, v128, v872, v132, v131, v130, v874, v133);
    v885 = v131;
    v878 = v134;
    v879 = v122;
    v137 = *&v134->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret];
    v138 = *&v134->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret + 8];
    sub_100012558(v137, v138);
    sub_10010ACF0(v137, v138, v126, v128);
    sub_100002BF0(v137, v138, v139, v140, v141, v142, v143, v144);
    strcpy(&aBlock, "signing-key ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v909._countAndFlagsBits = v126;
    v909._object = v128;
    sub_100216A14(v909);
    v228 = *(&aBlock + 1);
    *&v872 = objc_opt_self();
    v229 = [v872 defaultManager];
    v230 = [objc_allocWithZone(_SFIdentity) initWithKeyPair:v131];
    SFAccessibilityMakeWithMode();
    v877 = aBlock;
    v231 = v902;
    v232 = objc_allocWithZone(_SFAccessPolicy);
    aBlock = v877;
    v902 = v231;
    v233 = [v232 initWithAccessibility:&aBlock sharingPolicy:0];
    v873 = 0xD000000000000020;
    v874 = "endMetrics:reply:)";
    v234 = sub_100216964();
    [(Client *)v233 setAccessGroup:v234];

    v235 = sub_100216964();
    v228, v236, v237, v238, v239, v240, v241, v242, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
    *&aBlock = 0;
    v876 = v230;
    *&v877 = v229;
    v875 = v233;
    LOBYTE(v233) = [v229 setIdentity:v230 forIdentifier:v235 accessPolicy:v233 error:&aBlock];

    v243 = aBlock;
    if (v233)
    {
      *&aBlock = 0x6974707972636E65;
      *(&aBlock + 1) = 0xEF2079656B2D6E6FLL;
      v244 = v243;
      v910._countAndFlagsBits = v126;
      v910._object = v128;
      sub_100216A14(v910);
      v128, v245, v246, v247, v248, v249, v250, v251, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      v252 = *(&aBlock + 1);
      v253 = [v872 defaultManager];
      v254 = objc_allocWithZone(_SFIdentity);
      v255 = [v254 initWithKeyPair:v880];
      SFAccessibilityMakeWithMode();
      v872 = aBlock;
      v256 = v902;
      v257 = objc_allocWithZone(_SFAccessPolicy);
      aBlock = v872;
      v902 = v256;
      v258 = [v257 initWithAccessibility:&aBlock sharingPolicy:0];
      v259 = sub_100216964();
      [v258 setAccessGroup:v259];

      v260 = sub_100216964();
      v252, v261, v262, v263, v264, v265, v266, v267, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      *&aBlock = 0;
      LOBYTE(v259) = [v253 setIdentity:v255 forIdentifier:v260 accessPolicy:v258 error:&aBlock];

      v268 = aBlock;
      v867 = v253;
      v868 = v255;
      v866 = v258;
      if (v259)
      {
        v864 = a19;
        v865 = a18;
        v853 = a17;
        v873 = a16;
        v874 = a14;
        v855 = a13;
        v854 = a11;
        *&v872 = a10;
        v852 = a9;
        if (a15)
        {
          v269 = a15;
        }

        else
        {
          v422 = qword_100297228;
          v423 = aBlock;
          if (v422 != -1)
          {
            swift_once();
          }

          v268 = qword_1002B0318;
          v269 = qword_1002B0318;
        }

        v424 = v886;
        v851 = a15;
        v425 = v268;
        sub_10001148C(&qword_100297DA0, &qword_1002264D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100225FB0;
        *(inited + 32) = v269;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v427 = v878;
        v869 = a12;
        v428 = v427;
        v429 = v424;
        v430 = v885;
        v431 = a15;
        v886 = v864;
        swift_bridgeObjectRetain_n();
        v432 = v865;
        swift_bridgeObjectRetain_n();
        v878 = v428;
        v433 = v879;
        v860 = v269;
        v434 = v431;
        v859 = v429;
        v435 = v430;
        v863 = v434;
        v436 = v433;
        v858 = v436;
        v861 = v886;
        v862 = v432;
        v886 = sub_10019C6BC(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v437 = swift_allocObject();
        v438 = v888;
        *(v437 + 16) = v889;
        *(v437 + 24) = sub_1001AAF4C;
        *(v437 + 32) = v438;
        v439 = swift_allocObject();
        *(v439 + 16) = sub_1001AAF8C;
        *(v439 + 24) = v437;
        v440 = v851;
        *(v439 + 32) = 0;
        *(v439 + 40) = v440;
        v441 = v859;
        *(v439 + 48) = v859;
        *(v439 + 56) = v853;
        v442 = v864;
        *(v439 + 64) = v436;
        *(v439 + 72) = v442;
        v443 = v865;
        *(v439 + 80) = v873;
        *(v439 + 88) = v443;
        v444 = v872;
        *(v439 + 96) = v852;
        *(v439 + 104) = v444;
        v445 = v869;
        *(v439 + 112) = v854;
        *(v439 + 120) = v445;
        v446 = v874;
        *(v439 + 128) = v855;
        *(v439 + 136) = v446;
        v447 = v435;
        v448 = v878;
        *(v439 + 144) = v435;
        *(v439 + 152) = v448;
        v449 = swift_allocObject();
        *(v449 + 16) = sub_1001AAFCC;
        *(v449 + 24) = v439;
        v848 = v449;
        v450 = v860;
        *(v449 + 32) = v860;
        v451 = swift_allocObject();
        v849 = v451;
        *v451->endpoint = v886;
        endpoint = v451->endpoint;
        v879 = swift_allocObject();
        swift_retain_n();
        swift_retain_n();
        v453 = v450;
        v454 = v441;
        v859 = v447;
        v860 = v863;
        v861 = v861;

        v862 = v862;

        v455 = endpoint;

        v856 = v878;
        v858 = v858;
        v863 = v453;
        v857 = v437;

        v850 = v439;

        v456 = sub_100019440(_swiftEmptyArrayStorage);
        v457 = v879;
        *v879->endpoint = v456;
        v458 = v457->endpoint;
        v459 = *&v454->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v460 = swift_allocObject();
        *(v460 + 16) = endpoint;
        *(v460 + 24) = v454;
        *(v460 + 32) = v458;
        v461 = swift_allocObject();
        *v461->endpoint = sub_1001ACE80;
        *v461->containerMap = v460;
        v904 = sub_1001ACCC0;
        v905 = v461;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v902 = sub_100109050;
        v903 = &unk_100284368;
        v462 = _Block_copy(&aBlock);
        v463 = v905;
        v878 = v454;

        v463, v464, v465, v466, v467, v468, v469, v470;
        v846 = v459;
        [v459 performBlockAndWait:v462];
        _Block_release(v462);
        LOBYTE(v454) = swift_isEscapingClosureAtFileLocation();
        v461, v471, v472, v473, v474, v475, v476, v477;
        if (v454)
        {
          __break(1u);
        }

        v480 = *v455;
        v481 = (*v455 & 0xC000000000000001) == 0;
        v847 = v460;
        if (v481)
        {
          v482 = *v480->endpoint;
        }

        else
        {

          v482 = sub_100216ED4();
          v480, v483, v484, v485, v486, v487, v488, v489, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        }

        v490 = v889;
        if (v482)
        {
          __chkstk_darwin(v478, v479);
          sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
          sub_100216654();
          v491 = v878;
          v492 = *&v878->containerMap[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          v493 = *&v878[1]._TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          v881 = sub_100006484(&v878->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v492);
          v494 = swift_allocObject();
          *(v494 + 16) = v491;
          *(v494 + 24) = sub_1001ACCBC;
          v495 = v848;
          v496 = v849;
          *(v494 + 32) = v848;
          *(v494 + 40) = v496;
          *(v494 + 48) = v879;
          v497 = *(v493 + 16);
          v498 = *(v497 + 80);
          v499 = v491;

          v500 = v871;
          v498(v871, sub_1001ACE2C, v494, v492, v497);
          v494, v501, v502, v503, v504, v505, v506, v507;
          sub_1001AC1E4(v500, type metadata accessor for FetchPolicyDocumentsRequest);
          v874, v508, v509, v510, v511, v512, v513, v514, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
          v515 = v859;

          v516 = v856;
          v889, v517, v518, v519, v520, v521, v522, v523;
          v344 = v888;
          v888, v524, v525, v526, v527, v528, v529, v530;
          v857, v531, v532, v533, v534, v535, v536, v537;
          v850, v538, v539, v540, v541, v542, v543, v544;
          v495, v545, v546, v547, v548, v549, v550, v551;
          v847, v552, v553, v554, v555, v556, v557, v558;
          v496, v559, v560, v561, v562, v563, v564, v565;
          v879, v566, v567, v568, v569, v570, v571, v572;
          v73 = v884;
          v573 = v866;
          v574 = v867;
LABEL_65:

          v874, v813, v814, v815, v816, v817, v818, v819, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
          v886, v820, v821, v822, v823, v824, v825, v826, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
          v827 = v863;

          v828 = v860;
          v829 = v878;

          v830 = v858;
          v831 = v861;

          swift_bridgeObjectRelease_n();
          v832 = v862;

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v96 = v882;
          v111 = v887;
          goto LABEL_66;
        }

        v575 = *v458;
        swift_retain_n();
        v576 = v888;
        swift_retain_n();
        v577 = v878;
        PolicyDocumentsRequest = v859;
        v840 = v860;
        v844 = v861;
        v578 = v873;

        v579 = v862;

        v580 = v874;

        v845 = v856;
        v581 = v858;

        v582 = sub_100108220(v863, v575);
        v841 = v577;
        v842 = v575;
        v871 = v579;
        v843 = v581;
        if (v582)
        {
          v583 = v582;
          v584 = swift_allocObject();
          v584[2] = v490;
          v584[3] = sub_1001AAF4C;
          v584[4] = v576;
          swift_retain_n();
          swift_retain_n();
          v585 = v583;
          v586 = v585;
          if (v851)
          {
            v587 = [v585 version];
            v588 = *&v577[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
            *&v577[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v587;
          }

          v589 = swift_allocObject();
          *(v589 + 16) = v853;
          *(v589 + 24) = v581;
          *(v589 + 32) = v586;
          v590 = v865;
          *(v589 + 40) = v864;
          *(v589 + 48) = v578;
          v591 = v852;
          *(v589 + 56) = v590;
          *(v589 + 64) = v591;
          v881 = v586;
          v593 = v854;
          v592 = v855;
          *(v589 + 72) = v872;
          *(v589 + 80) = v593;
          v595 = v869;
          v594 = PolicyDocumentsRequest;
          *(v589 + 88) = v869;
          *(v589 + 96) = v592;
          *(v589 + 104) = v580;
          *(v589 + 112) = v594;
          v596 = v845;
          *(v589 + 120) = v577;
          *(v589 + 128) = v596;
          *(v589 + 136) = sub_1001ACE18;
          *(v589 + 144) = v584;
          v597 = swift_allocObject();
          *v597->endpoint = sub_1001AB01C;
          *v597->containerMap = v589;
          v904 = sub_1001ACCC0;
          v905 = v597;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v902 = sub_100109050;
          v903 = &unk_100284430;
          v598 = _Block_copy(&aBlock);
          v855 = v584;
          v599 = v598;
          v864 = v905;
          v600 = v577;
          v865 = v594;
          v601 = v844;

          v602 = v871;

          v39 = v845;
          v603 = v845;
          v604 = v843;
          v605 = v881;
          v606 = v855;

          v864, v607, v608, v609, v610, v611, v612, v613;
          [v846 performBlockAndWait:v599];

          _Block_release(v599);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          v38 = v889;

          v41 = v888;

          v615 = v606;
          v616 = v871;
          v615, v617, v618, v619, v620, v621, v622, v623;
          v624 = v589;
          v136 = PolicyDocumentsRequest;
          v624, v625, v626, v627, v628, v629, v630, v631;
          v597, v632, v633, v634, v635, v636, v637, v638;
          v73 = v884;
          v639 = v847;
          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
LABEL_54:
            swift_once();
            goto LABEL_3;
          }
        }

        else
        {
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v640 = sub_100216774();
          sub_100002648(v640, qword_10029D160);

          v641 = sub_100216754();
          v642 = sub_100216C54();
          v575, v643, v644, v645, v646, v647, v648, v649, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
          if (os_log_type_enabled(v641, v642))
          {
            v650 = swift_slowAlloc();
            v651 = swift_slowAlloc();
            *&aBlock = v651;
            *v650 = 136446210;
            v906 = v575;

            sub_10001148C(&qword_10029D958, &qword_100226700);
            v652 = sub_100216994();
            v654 = v653;
            v655 = sub_100005FB0(v652, v653, &aBlock);
            v654, v656, v657, v658, v659, v660, v661, v662, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
            *(v650 + 4) = v655;
            _os_log_impl(&_mh_execute_header, v641, v642, "fetchPolicyDocument: didn't return policy of version: %{public}s", v650, 0xCu);
            sub_100006128(v651, v663, v664, v665, v666, v667, v668, v669);
          }

          v670 = [v863 versionNumber];
          sub_1000561D0();
          v671 = swift_allocError();
          *v672 = v670;
          *(v672 + 8) = 0;
          *(v672 + 16) = 1;
          swift_retain_n();
          swift_retain_n();
          swift_errorRetain();
          v673 = sub_100216754();
          v674 = sub_100216C54();

          if (os_log_type_enabled(v673, v674))
          {
            v675 = swift_slowAlloc();
            v676 = swift_slowAlloc();
            *&aBlock = v676;
            *v675 = 136446210;
            v906 = v671;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v677 = sub_100216994();
            v679 = v678;
            v680 = sub_100005FB0(v677, v678, &aBlock);
            v679, v681, v682, v683, v684, v685, v686, v687, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
            *(v675 + 4) = v680;
            _os_log_impl(&_mh_execute_header, v673, v674, "Unable to fetch policy: %{public}s", v675, 0xCu);
            sub_100006128(v676, v688, v689, v690, v691, v692, v693, v694);
          }

          v73 = v884;
          v695 = swift_allocError();
          *v696 = xmmword_100225FC0;
          *(v696 + 16) = 13;
          v697 = sub_100216C74();
          swift_errorRetain();
          v698 = sub_100216754();

          if (os_log_type_enabled(v698, v697))
          {
            v699 = swift_slowAlloc();
            v906 = swift_slowAlloc();
            *v699 = 136446466;
            aBlock = 0uLL;
            sub_10001148C(&qword_10029D698, &unk_100226590);
            v700 = sub_100216994();
            v702 = v701;
            v703 = sub_100005FB0(v700, v701, &v906);
            v702, v704, v705, v706, v707, v708, v709, v710, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
            *(v699 + 4) = v703;
            *(v699 + 12) = 2082;
            *&aBlock = 0x203A726F727265;
            *(&aBlock + 1) = 0xE700000000000000;
            v898 = v695;
            swift_errorRetain();
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v913._countAndFlagsBits = sub_100216994();
            v711 = v913._object;
            sub_100216A14(v913);
            v711, v712, v713, v714, v715, v716, v717, v718, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

            v719 = *(&aBlock + 1);
            v720 = sub_100005FB0(aBlock, *(&aBlock + 1), &v906);
            v719, v721, v722, v723, v724, v725, v726, v727, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
            *(v699 + 14) = v720;
            _os_log_impl(&_mh_execute_header, v698, v697, "prepare complete peerID: %{public}s %{public}s", v699, 0x16u);
            swift_arrayDestroy();
          }

          v728 = v887;
          v38 = v889;
          v639 = v847;
          sub_10010EEEC(0xD0000000000000F2, (v881 | 0x8000000000000000), v729, v730, v731, v732, v733, v734);
          sub_1001B473C(0x65726170657250, 0xE700000000000000, *&v728[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name], *&v728[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8], *&v728[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16], *&v728[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24], v695);
          swift_getErrorValue();
          sub_1001ADD74(v890, v891);
          v735 = sub_100216144();
          (v73)[2](v73, 0, 0, 0, 0, 0, 0, v735);

          v41 = v888;

          v136 = PolicyDocumentsRequest;

          v39 = v845;

          v595 = v869;
          v616 = v871;
        }

        v38, v736, v737, v738, v739, v740, v741, v742;
        v41, v743, v744, v745, v746, v747, v748, v749;
        v850, v750, v751, v752, v753, v754, v755, v756;
        v848, v757, v758, v759, v760, v761, v762, v763;
        v639, v764, v765, v766, v767, v768, v769, v770;
        v849, v771, v772, v773, v774, v775, v776, v777;
        v879, v778, v779, v780, v781, v782, v783, v784;
        v842, v785, v786, v787, v788, v789, v790, v791, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

        v873, v792, v793, v794, v795, v796, v797, v798, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        v872, v799, v800, v801, v802, v803, v804, v805, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        v595, v806, v807, v808, v809, v810, v811, v812, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        swift_bridgeObjectRelease_n();
        v344 = v41;
        v573 = v866;
        v574 = v867;
        v515 = v859;
        v516 = v856;
        goto LABEL_65;
      }

      v346 = aBlock;
      v347 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v348 = sub_100216774();
      sub_100002648(v348, qword_10029D160);
      swift_errorRetain();
      v349 = sub_100216754();
      v350 = sub_100216C74();

      if (os_log_type_enabled(v349, v350))
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *&aBlock = v352;
        *v351 = 136446210;
        v906 = v347;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v353 = sub_100216994();
        v355 = v354;
        v356 = sub_100005FB0(v353, v354, &aBlock);
        v355, v357, v358, v359, v360, v361, v362, v363, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v351 + 4) = v356;
        _os_log_impl(&_mh_execute_header, v349, v350, "Unable to save encryption key: %{public}s", v351, 0xCu);
        sub_100006128(v352, v364, v365, v366, v367, v368, v369, v370);
      }

      v371 = v887;
      swift_errorRetain();
      v372 = sub_100216C74();
      swift_errorRetain();
      v373 = sub_100216754();

      if (os_log_type_enabled(v373, v372))
      {
        v374 = swift_slowAlloc();
        v906 = swift_slowAlloc();
        *v374 = 136446466;
        aBlock = 0uLL;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v375 = sub_100216994();
        v377 = v376;
        v378 = sub_100005FB0(v375, v376, &v906);
        v377, v379, v380, v381, v382, v383, v384, v385, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v374 + 4) = v378;
        *(v374 + 12) = 2082;
        *&aBlock = 0x203A726F727265;
        *(&aBlock + 1) = 0xE700000000000000;
        v898 = v347;
        swift_errorRetain();
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v912._countAndFlagsBits = sub_100216994();
        v386 = v912._object;
        sub_100216A14(v912);
        v386, v387, v388, v389, v390, v391, v392, v393, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

        v394 = *(&aBlock + 1);
        v395 = sub_100005FB0(aBlock, *(&aBlock + 1), &v906);
        v394, v396, v397, v398, v399, v400, v401, v402, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v374 + 14) = v395;
        _os_log_impl(&_mh_execute_header, v373, v372, "prepare complete peerID: %{public}s %{public}s", v374, 0x16u);
        swift_arrayDestroy();
      }

      v73 = v884;
      v403 = v868;
      sub_10010EEEC(0xD0000000000000F2, (v881 | 0x8000000000000000), v404, v405, v406, v407, v408, v409);
      v410 = *&v371[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
      v411 = *&v371[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
      v412 = *&v371[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
      v413 = *&v371[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
      _Block_copy(v73);
      sub_1001B473C(0x65726170657250, 0xE700000000000000, v410, v411, v412, v413, v347);
      swift_getErrorValue();
      sub_1001ADD74(v892, v893);
      v414 = sub_100216144();
      (v73)[2](v73, 0, 0, 0, 0, 0, 0, v414);

      _Block_release(v73);

      v111 = v371;
      v344 = v888;

      v345 = v878;
    }

    else
    {
      v270 = aBlock;
      v128, v271, v272, v273, v274, v275, v276, v277, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
      v278 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v279 = sub_100216774();
      sub_100002648(v279, qword_10029D160);
      swift_errorRetain();
      v280 = sub_100216754();
      v281 = sub_100216C74();

      if (os_log_type_enabled(v280, v281))
      {
        v282 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        *&aBlock = v283;
        *v282 = 136446210;
        v906 = v278;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v284 = sub_100216994();
        v286 = v285;
        v287 = sub_100005FB0(v284, v285, &aBlock);
        v286, v288, v289, v290, v291, v292, v293, v294, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v282 + 4) = v287;
        _os_log_impl(&_mh_execute_header, v280, v281, "Unable to save signing key: %{public}s", v282, 0xCu);
        sub_100006128(v283, v295, v296, v297, v298, v299, v300, v301);
      }

      v111 = v887;
      swift_errorRetain();
      v302 = sub_100216C74();
      swift_errorRetain();
      v303 = sub_100216754();

      if (os_log_type_enabled(v303, v302))
      {
        v304 = swift_slowAlloc();
        v906 = swift_slowAlloc();
        *v304 = 136446466;
        aBlock = 0uLL;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v305 = sub_100216994();
        v307 = v306;
        v308 = sub_100005FB0(v305, v306, &v906);
        v307, v309, v310, v311, v312, v313, v314, v315, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v304 + 4) = v308;
        *(v304 + 12) = 2082;
        *&aBlock = 0x203A726F727265;
        *(&aBlock + 1) = 0xE700000000000000;
        v898 = v278;
        swift_errorRetain();
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v911._countAndFlagsBits = sub_100216994();
        v316 = v911._object;
        sub_100216A14(v911);
        v316, v317, v318, v319, v320, v321, v322, v323, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

        v324 = *(&aBlock + 1);
        v325 = sub_100005FB0(aBlock, *(&aBlock + 1), &v906);
        v324, v326, v327, v328, v329, v330, v331, v332, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
        *(v304 + 14) = v325;
        _os_log_impl(&_mh_execute_header, v303, v302, "prepare complete peerID: %{public}s %{public}s", v304, 0x16u);
        swift_arrayDestroy();
      }

      v73 = v884;
      sub_10010EEEC(0xD0000000000000F2, (v881 | 0x8000000000000000), v333, v334, v335, v336, v337, v338);
      v339 = *&v111[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
      v340 = *&v111[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
      v341 = *&v111[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
      v342 = *&v111[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
      _Block_copy(v73);
      sub_1001B473C(0x65726170657250, 0xE700000000000000, v339, v340, v341, v342, v278);
      swift_getErrorValue();
      sub_1001ADD74(v894, v895);
      v343 = sub_100216144();
      (v73)[2](v73, 0, 0, 0, 0, 0, 0, v343);

      _Block_release(v73);

      v344 = v888;

      v345 = v879;
    }

    v96 = v882;
LABEL_66:
    v96, v415, v416, v417, v418, v419, v420, v421;
    v344, v833, v834, v835, v836, v837, v838, v839;
LABEL_8:

    goto LABEL_9;
  }

  v135 = aBlock;
  v136 = sub_100216154();

  swift_willThrow();
  LODWORD(v886) = 1;
  swift_errorRetain();
  LOBYTE(v41) = sub_100216C74();
  if (qword_100297520 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v885 = v38;
  v42 = sub_100216774();
  sub_100002648(v42, qword_10029D160);
  swift_errorRetain();
  v43 = sub_100216754();

  if (os_log_type_enabled(v43, v41))
  {
    v44 = swift_slowAlloc();
    v906 = swift_slowAlloc();
    *v44 = 136446466;
    aBlock = 0uLL;
    sub_10001148C(&qword_10029D698, &unk_100226590);
    v45 = sub_100216994();
    v47 = v46;
    v48 = sub_100005FB0(v45, v46, &v906);
    v47, v49, v50, v51, v52, v53, v54, v55, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
    *(v44 + 4) = v48;
    *(v44 + 12) = 2082;
    *&aBlock = 0x203A726F727265;
    *(&aBlock + 1) = 0xE700000000000000;
    v898 = v136;
    swift_errorRetain();
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v907._countAndFlagsBits = sub_100216994();
    v56 = v907._object;
    sub_100216A14(v907);
    v56, v57, v58, v59, v60, v61, v62, v63, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;

    v64 = *(&aBlock + 1);
    v65 = sub_100005FB0(aBlock, *(&aBlock + 1), &v906);
    v64, v66, v67, v68, v69, v70, v71, v72, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849;
    *(v44 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v43, v41, "prepare complete peerID: %{public}s %{public}s", v44, 0x16u);
    swift_arrayDestroy();
  }

  v73 = v884;
  v74 = v887;
  sub_10010EEEC(0xD0000000000000F2, (v881 | 0x8000000000000000), v75, v76, v77, v78, v79, v80);
  v81 = v74;
  v82 = &v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
  v83 = *&v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
  v84 = *&v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
  v85 = *(v82 + 2);
  v86 = *(v82 + 3);
  _Block_copy(v73);
  sub_1001B473C(0x65726170657250, 0xE700000000000000, v83, v84, v85, v86, v136);
  swift_getErrorValue();
  sub_1001ADD74(v899, v900);
  v87 = sub_100216144();
  (v73)[2](v73, 0, 0, 0, 0, 0, 0, v87);

  _Block_release(v73);
  v88 = v888;

  if (v886)
  {
  }

  v96 = v882;
  v882, v89, v90, v91, v92, v93, v94, v95;
  v88, v97, v98, v99, v100, v101, v102, v103;
  v111 = v81;
  if (!v39)
  {
    goto LABEL_8;
  }

LABEL_9:
  v96, v104, v105, v106, v107, v108, v109, v110;

  _Block_release(v73);
  _Block_release(v73);
  _Block_release(v73);
  _Block_release(v73);
}

void sub_1001A4350(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v10);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v131 = a3;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v133 = v13;
  *(v13 + 32) = a5;
  v14 = swift_allocObject();
  v134 = v14;
  *v14->endpoint = a1;
  endpoint = v14->endpoint;
  v16 = swift_allocObject();

  v130 = a5;

  *v16->endpoint = sub_100019440(_swiftEmptyArrayStorage);
  v17 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v18 = swift_allocObject();
  *(v18 + 16) = endpoint;
  *(v18 + 24) = a2;
  *(v18 + 32) = v16->endpoint;
  v19 = swift_allocObject();
  *v19->endpoint = sub_1001ACE80;
  *v19->containerMap = v18;
  v140 = sub_1001ACCC0;
  v141 = v19;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_100109050;
  v139 = &unk_100284160;
  v20 = _Block_copy(&aBlock);
  v21 = v141;
  v22 = a2;

  v21, v23, v24, v25, v26, v27, v28, v29;
  [v17 performBlockAndWait:v20];
  _Block_release(v20);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v19, v30, v31, v32, v33, v34, v35, v36;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v39 = *endpoint;
    if ((*endpoint & 0xC000000000000001) != 0)
    {

      v40 = sub_100216ED4();
      v39, v41, v42, v43, v44, v45, v46, v47, v130, v131, PolicyDocumentsRequest, v133, v134, v135, aBlock, v137, v138, v139;
      if (v40)
      {
LABEL_4:
        __chkstk_darwin(v37, v38);
        *(&v130 - 2) = endpoint;
        sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
        sub_100216654();
        v49 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v48 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v49);
        v50 = swift_allocObject();
        *(v50 + 16) = v22;
        *(v50 + 24) = sub_1001AAE28;
        PolicyDocumentsRequest = v18;
        v51 = v133;
        v52 = v22;
        v53 = v16;
        v54 = v134;
        *(v50 + 32) = v133;
        *(v50 + 40) = v54;
        *(v50 + 48) = v53;
        v55 = *(v48 + 16);
        v56 = *(v55 + 80);
        v57 = v52;

        v56(v12, sub_1001ACE2C, v50, v49, v55);
        v50, v58, v59, v60, v61, v62, v63, v64;
        sub_1001AC1E4(v12, type metadata accessor for FetchPolicyDocumentsRequest);
        v51, v65, v66, v67, v68, v69, v70, v71;
        PolicyDocumentsRequest, v72, v73, v74, v75, v76, v77, v78;
        v54, v79, v80, v81, v82, v83, v84, v85;
        v53, v86, v87, v88, v89, v90, v91, v92;
        return;
      }
    }

    else if (*v39->endpoint)
    {
      goto LABEL_4;
    }

    v93 = *v16->endpoint;

    sub_100151EFC(v94, 0, v131, a4, v130);
    v133, v95, v96, v97, v98, v99, v100, v101;
    v18, v102, v103, v104, v105, v106, v107, v108;
    v134, v109, v110, v111, v112, v113, v114, v115;
    v16, v116, v117, v118, v119, v120, v121, v122;
    v93, v123, v124, v125, v126, v127, v128, v129, v130, v131, PolicyDocumentsRequest, v133, v134, v135, aBlock, v137, v138, v139;
  }
}

void sub_1001A47C0(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, _TtC18TrustedPeersHelper6Client *a5, void *a6, _TtC18TrustedPeersHelper6Client *a7, void *a8, _TtC18TrustedPeersHelper6Client *a9, char a10, char *a11, void (*a12)(void, void, void *, void, uint64_t), uint64_t a13)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a12;
  *(v17 + 24) = a13;
  v512 = v17;
  v18 = kSecurityRTCEventNameOnqueueEstablishTPH;

  v19 = v18;
  sub_1001A9F94();
  v21 = v20;
  v504 = a4;
  if (a5)
  {
    v22 = sub_100216964();
  }

  else
  {
    v22 = 0;
  }

  v503 = a6;
  if (a7)
  {
    v23 = sub_100216964();
    v24 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
LABEL_6:
      v25 = sub_100216964();
      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    v24 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_9:
  v391 = v24;
  LOBYTE(v380) = a10 & 1;
  v513 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v22 flowID:v23 deviceSessionID:v25 eventName:v19 testsAreEnabled:v21 canSendMetrics:? category:?];

  v26 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v27 = [*&a11[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v27)
  {
LABEL_22:
    sub_1000561D0();
    swift_allocError();
    *v260 = xmmword_10021DA90;
    *(v260 + 16) = 13;
    v261 = sub_100216144();

    [v513 sendMetricWithResult:0 error:v261];

    v262 = swift_allocError();
    *v263 = xmmword_10021DA90;
    *(v263 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v262);

    goto LABEL_23;
  }

  v28 = v27;
  v29 = sub_100216974();
  v31 = v30;

  v32 = [*&a11[v26] egoPeerPermanentInfo];
  if (!v32)
  {
LABEL_21:
    v31, v33, v34, v35, v36, v37, v38, v39, v380, v391, v402, v413, v424, v435, v446, v457, v468, v479;
    goto LABEL_22;
  }

  v40 = v32;
  v41 = sub_100216224();
  v43 = v42;

  v44 = [*&a11[v26] egoPeerPermanentInfoSig];
  if (!v44)
  {
LABEL_20:
    sub_100002BF0(v41, v43, v45, v46, v47, v48, v49, v50);
    goto LABEL_21;
  }

  v499 = v29;
  v502 = v31;
  v51 = v44;
  v52 = sub_100216224();
  v54 = v53;

  v55 = [*&a11[v26] egoPeerStableInfo];
  if (!v55)
  {
LABEL_19:
    sub_100002BF0(v52, v54, v56, v57, v58, v59, v60, v61);
    v31 = v502;
    goto LABEL_20;
  }

  v500 = v43;
  v501 = v41;
  v62 = v55;
  v63 = sub_100216224();
  v65 = v64;

  v66 = [*&a11[v26] egoPeerStableInfoSig];
  if (!v66)
  {
    sub_100002BF0(v63, v65, v67, v68, v69, v70, v71, v72);
    v43 = v500;
    v41 = v501;
    goto LABEL_19;
  }

  v492 = a7;
  v495 = v65;
  v496 = v63;
  v73 = v66;
  v74 = sub_100216224();
  v497 = v75;
  v498 = v74;

  v76 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v501, v500);
  sub_100012558(v52, v54);
  v77 = sub_100216964();
  v502, v78, v79, v80, v81, v82, v83, v84, v380, v391, v402, v413, v424, v435, v446, v457, v468, v479;
  isa = sub_100216204().super.isa;
  v86 = sub_100216204().super.isa;
  v494 = v76;
  v87 = [objc_opt_self() permanentInfoWithPeerID:v77 data:isa sig:v86 keyFactory:v76];

  sub_100002BF0(v52, v54, v88, v89, v90, v91, v92, v93);
  sub_100002BF0(v501, v500, v94, v95, v96, v97, v98, v99);

  if (v87)
  {
    v493 = v54;
    v107 = objc_allocWithZone(TPPeerStableInfo);
    sub_100012558(v63, v495);
    sub_100012558(v498, v497);
    v108 = sub_100216204().super.isa;
    v109 = sub_100216204().super.isa;
    v110 = [v107 initWithData:v108 sig:v109];

    sub_100002BF0(v498, v497, v111, v112, v113, v114, v115, v116);
    sub_100002BF0(v63, v495, v117, v118, v119, v120, v121, v122);
    if (v110)
    {
      v130 = [v87 machineID];
      v131 = sub_100216974();
      v133 = v132;

      LOBYTE(v130) = sub_1001E537C(v131, v133);
      v133, v134, v135, v136, v137, v138, v139, v140, v381, v392, v403, v414, v425, v436, v447, v458, v469, v480;
      if (v130)
      {
        strcpy(v514, "signing-key ");
        BYTE5(v514[1]) = 0;
        HIWORD(v514[1]) = -5120;
        swift_bridgeObjectRetain_n();
        sub_100012558(v501, v500);
        sub_100012558(v52, v54);
        sub_100012558(v63, v495);
        sub_100012558(v498, v497);

        v491 = v513;

        v490 = a11;

        v509 = v87;

        v510 = v110;

        v516._countAndFlagsBits = v499;
        v516._object = v502;
        sub_100216A14(v516);

        sub_1001953F8(v514[0], v514[1], v499, v502, v491, sub_1001AA910, v512, v490, a1, v509, a2, v499, v502, v510, a3, v501, v500, v52, v54, v63, v495, v498, v497, v504, a5, v503, v492, a8, a9, a10 & 1);
        a3, v148, v149, v150, v151, v152, v153, v154, v383, v394, v405, v416, v427, v438, v449, v460, v471, v482;

        a2, v155, v156, v157, v158, v159, v160, v161, v384, v395, v406, v417, v428, v439, v450, v461, v472, v483;
        a1, v162, v163, v164, v165, v166, v167, v168, v385, v396, v407, v418, v429, v440, v451, v462, v473, v484;

        v512, v169, v170, v171, v172, v173, v174, v175;
        v514[1], v176, v177, v178, v179, v180, v181, v182, v386, v397, v408, v419, v430, v441, v452, v463, v474, v485;
        swift_bridgeObjectRelease_n();
        sub_100002BF0(v501, v500, v183, v184, v185, v186, v187, v188);
        sub_100002BF0(v52, v54, v189, v190, v191, v192, v193, v194);
        sub_100002BF0(v63, v495, v195, v196, v197, v198, v199, v200);
        sub_100002BF0(v498, v497, v201, v202, v203, v204, v205, v206);

        a9, v207, v208, v209, v210, v211, v212, v213, v387, v398, v409, v420, v431, v442, v453, v464, v475, v486;
        v492, v214, v215, v216, v217, v218, v219, v220, v388, v399, v410, v421, v432, v443, v454, v465, v476, v487;
        a5, v221, v222, v223, v224, v225, v226, v227, v389, v400, v411, v422, v433, v444, v455, v466, v477, v488;
        sub_100002BF0(v498, v497, v228, v229, v230, v231, v232, v233);
        sub_100002BF0(v63, v495, v234, v235, v236, v237, v238, v239);
        sub_100002BF0(v52, v54, v240, v241, v242, v243, v244, v245);
        sub_100002BF0(v501, v500, v246, v247, v248, v249, v250, v251);
        v259 = v512;
        goto LABEL_24;
      }

      v511 = v110;
      v502, v141, v142, v143, v144, v145, v146, v147, v382, v393, v404, v415, v426, v437, v448, v459, v470, v481;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v320 = sub_100216774();
      sub_100002648(v320, qword_10029D160);
      v321 = v87;
      v322 = sub_100216754();
      v323 = sub_100216C54();

      if (os_log_type_enabled(v322, v323))
      {
        v324 = swift_slowAlloc();
        v325 = swift_slowAlloc();
        v514[0] = v325;
        *v324 = 136446210;
        v326 = [v321 machineID];
        v327 = sub_100216974();
        v329 = v328;

        v330 = sub_100005FB0(v327, v329, v514);
        v329, v331, v332, v333, v334, v335, v336, v337, v390, v401, v412, v423, v434, v445, v456, v467, v478, v489;
        *(v324 + 4) = v330;
        _os_log_impl(&_mh_execute_header, v322, v323, "establish: self machineID %{public}s not on list", v324, 0xCu);
        sub_100006128(v325, v338, v339, v340, v341, v342, v343, v344);
      }

      v345 = objc_allocWithZone(SecTapToRadar);
      v346 = sub_100216964();
      v347 = sub_100216964();
      v348 = sub_100216964();
      v349 = [v345 initTapToRadar:v346 description:v347 radar:v348];

      [v349 trigger];
      v350 = [v321 machineID];
      v351 = sub_100216974();
      v353 = v352;

      sub_1000561D0();
      swift_allocError();
      *v354 = v351;
      *(v354 + 8) = v353;
      *(v354 + 16) = 2;
      v355 = sub_100216144();

      [v513 sendMetricWithResult:0 error:v355];

      v356 = [v321 machineID];
      v357 = sub_100216974();
      v359 = v358;

      v360 = swift_allocError();
      *v361 = v357;
      *(v361 + 8) = v359;
      *(v361 + 16) = 2;
      a12(0, 0, _swiftEmptyArrayStorage, 0, v360);

      sub_100002BF0(v498, v497, v362, v363, v364, v365, v366, v367);
      sub_100002BF0(v496, v495, v368, v369, v370, v371, v372, v373);
      sub_100002BF0(v52, v493, v374, v375, v376, v377, v378, v379);
      v292 = v501;
    }

    else
    {
      v502, v123, v124, v125, v126, v127, v128, v129, v381, v392, v403, v414, v425, v436, v447, v458, v469, v480;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v294 = sub_100216774();
      sub_100002648(v294, qword_10029D160);
      v295 = sub_100216754();
      v296 = sub_100216C54();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        *v297 = 0;
        _os_log_impl(&_mh_execute_header, v295, v296, "cannot create TPPeerStableInfo", v297, 2u);
      }

      sub_1000561D0();
      swift_allocError();
      *v298 = xmmword_10021DC20;
      *(v298 + 16) = 13;
      v299 = sub_100216144();

      [v513 sendMetricWithResult:0 error:v299];

      v300 = swift_allocError();
      *v301 = xmmword_10021DC20;
      *(v301 + 16) = 13;
      a12(0, 0, _swiftEmptyArrayStorage, 0, v300);

      sub_100002BF0(v498, v497, v302, v303, v304, v305, v306, v307);
      sub_100002BF0(v63, v495, v308, v309, v310, v311, v312, v313);
      sub_100002BF0(v52, v54, v314, v315, v316, v317, v318, v319);
      v292 = v501;
    }

    v293 = v500;
  }

  else
  {
    v502, v100, v101, v102, v103, v104, v105, v106, v381, v392, v403, v414, v425, v436, v447, v458, v469, v480;
    sub_1000561D0();
    swift_allocError();
    *v264 = xmmword_10021DA80;
    *(v264 + 16) = 13;
    v265 = sub_100216144();

    [v513 sendMetricWithResult:0 error:v265];

    v266 = swift_allocError();
    *v267 = xmmword_10021DA80;
    *(v267 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v266);

    sub_100002BF0(v498, v497, v268, v269, v270, v271, v272, v273);
    sub_100002BF0(v63, v495, v274, v275, v276, v277, v278, v279);
    sub_100002BF0(v52, v54, v280, v281, v282, v283, v284, v285);
    v292 = v501;
    v293 = v500;
  }

  sub_100002BF0(v292, v293, v286, v287, v288, v289, v290, v291);
LABEL_23:
  v259 = v512;
LABEL_24:
  v259, v252, v253, v254, v255, v256, v257, v258;
}

void sub_1001A5590(unint64_t *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5)
{
  v49 = a5;
  v41 = a2;
  v47 = a4;
  v43 = a1;
  v44 = 0;
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
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*a3[1].endpoint + 8 * v15);
    v17 = [v16 peerID];
    if (v17)
    {
      v18 = v17;
      v45 = v15;
      v19 = sub_100216974();
      v21 = v20;

      if (v19 == v47 && v21 == v49)
      {

        v21, v31, v32, v33, v34, v35, v36, v37, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51;
LABEL_20:
        *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_23:

          sub_10018AD50(v43, v41, v44, a3, &qword_10029D908, &unk_1002266A8, v39, v40);
          return;
        }
      }

      else
      {
        v23 = sub_1002171A4();

        v21, v24, v25, v26, v27, v28, v29, v30, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51;
        if (v23)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
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
      goto LABEL_23;
    }

    v14 = *&containerMap[8 * v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1001A575C(_TtC18TrustedPeersHelper6Client *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  v4 = v3;
  v82 = a2;
  v6 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v83 = a3;

  if (v7 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v77 = v8;
    v78 = v4;
    v76 = &v75;
    __chkstk_darwin(v10, v11);
    v79 = &v75 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v79, v9);
    v80 = 0;
    v9 = 0;
    v14 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & *a1[1].containerMap;
    v8 = (v14 + 63) >> 6;
    while (v4)
    {
      v16 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_13:
      v19 = v16 | (v9 << 6);
      v20 = *(*a1[1].endpoint + 8 * v19);
      v21 = [v20 peerID];
      if (v21)
      {
        v22 = v21;
        v81 = v19;
        v23 = sub_100216974();
        v25 = v24;

        if (v23 == v82 && v25 == v83)
        {

          v25, v35, v36, v37, v38, v39, v40, v41, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
LABEL_21:
          *&v79[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
          if (__OFADD__(v80++, 1))
          {
            __break(1u);
LABEL_24:
            v43 = sub_10018AD50(v79, v77, v80, a1, &qword_10029D908, &unk_1002266A8, v12, v13);
            v83, v44, v45, v46, v47, v48, v49, v50, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
            return v43;
          }
        }

        else
        {
          v27 = sub_1002171A4();

          v25, v28, v29, v30, v31, v32, v33, v34, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
          if (v27)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_24;
      }

      v18 = *&a1[1].containerMap[8 * v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v4 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {
      a1, v52, v53, v54, v55, v56, v57, v58;
      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  v60 = v83;

  v43 = sub_10018A924(v59, v8, a1, v82, v60);
  a1, v61, v62, v63, v64, v65, v66, v67;

  v60, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
  return v43;
}

Swift::Int sub_1001A5A5C(_TtC18TrustedPeersHelper6Client *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001A575C(a1, a2, a3);
  }

  v58 = v3;
  v6 = &_swiftEmptySetSingleton;
  v62 = &_swiftEmptySetSingleton;

  v7 = sub_100216E84();
  v8 = sub_100216F14();
  if (v8)
  {
    v16 = v8;
    type metadata accessor for BottleMO();
    v17 = v16;
    do
    {
      v59 = v17;
      swift_dynamicCast();
      v18 = [v60 peerID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_100216974();
        v22 = v21;

        if (v20 == a2 && v22 == a3)
        {
          v22, v23, v24, v25, v26, v27, v28, v29, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
LABEL_14:
          v39 = *v6->endpoint;
          if (*v6->containerMap <= v39)
          {
            sub_100188D90(v39 + 1, &qword_10029D908, &unk_1002266A8);
          }

          v6 = v62;
          result = sub_100216DB4(*&v62[1]._TtCs12_SwiftObject_opaque[8]);
          containerMap = v62[1].containerMap;
          v42 = -1 << v62[1]._TtCs12_SwiftObject_opaque[0];
          v43 = result & ~v42;
          v44 = v43 >> 6;
          if (((-1 << v43) & ~*&v62[1].containerMap[8 * (v43 >> 6)]) != 0)
          {
            v45 = __clz(__rbit64((-1 << v43) & ~*&v62[1].containerMap[8 * (v43 >> 6)])) | v43 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v46 = 0;
            v47 = (63 - v42) >> 6;
            do
            {
              if (++v44 == v47 && (v46 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v48 = v44 == v47;
              if (v44 == v47)
              {
                v44 = 0;
              }

              v46 |= v48;
              v49 = *&containerMap[8 * v44];
            }

            while (v49 == -1);
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
          }

          *&containerMap[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          *(*v62[1].endpoint + 8 * v45) = v60;
          ++*v62->endpoint;
          goto LABEL_5;
        }

        v31 = sub_1002171A4();
        v22, v32, v33, v34, v35, v36, v37, v38, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
        if (v31)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v17 = sub_100216F14();
    }

    while (v17);
  }

  a3, v9, v10, v11, v12, v13, v14, v15, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v7, v50, v51, v52, v53, v54, v55, v56;
  return v6;
}

void sub_1001A5CD8(uint64_t a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    swift_errorRetain();
    v21 = sub_100216754();
    v22 = sub_100216C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25 = sub_100216994();
      v27 = v26;
      v28 = sub_100005FB0(v25, v26, aBlock);
      v27, v29, v30, v31, v32, v33, v34, v35, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84;
      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "vouchWithBottle: error fetching all requested policies: %{public}s", v23, 0xCu);
      sub_100006128(v24, v36, v37, v38, v39, v40, v41, v42);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a1);
  }

  else
  {
    v85 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v48 = swift_allocObject();
    *(v48 + 16) = a5;
    *(v48 + 24) = a6;
    *(v48 + 32) = a7;
    *(v48 + 40) = a8;
    *(v48 + 48) = a9;
    *(v48 + 56) = a10;
    *(v48 + 64) = a11 & 1;
    v49 = a4;
    *(v48 + 72) = a4;
    *(v48 + 80) = a12;
    *(v48 + 88) = a13;
    *(v48 + 96) = a2;
    *(v48 + 104) = a3;
    *(v48 + 112) = a14;
    *(v48 + 120) = a15;
    *(v48 + 128) = a16;
    *(v48 + 136) = a17;
    *(v48 + 144) = a18;
    v50 = swift_allocObject();
    *v50->endpoint = sub_1001AA680;
    *v50->containerMap = v48;
    aBlock[4] = sub_1001ACCC0;
    v88 = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283940;
    v51 = _Block_copy(aBlock);
    v52 = v88;

    v53 = v49;

    sub_100012558(a14, a15);

    v52, v54, v55, v56, v57, v58, v59, v60;
    [v85 performBlockAndWait:v51];
    _Block_release(v51);
    LOBYTE(a8) = swift_isEscapingClosureAtFileLocation();
    v48, v61, v62, v63, v64, v65, v66, v67;
    v50, v68, v69, v70, v71, v72, v73, v74;
    if (a8)
    {
      __break(1u);
    }
  }
}

void sub_1001A60BC(uint64_t a1, uint64_t a2, id a3, uint64_t (*a4)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a5, char *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v31 = sub_100216994();
      v33 = v32;
      v34 = sub_100005FB0(v31, v32, aBlock);
      v33, v35, v36, v37, v38, v39, v40, v41, v83, v84, v85, v86, v88, v89, v90, v91, v92, v93;
      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unknown policy for beneficiary: %{public}s", v29, 0xCu);
      sub_100006128(v30, v42, v43, v44, v45, v46, v47, v48);
    }

    v49 = sub_100216144();
    [a3 sendMetricWithResult:0 error:v49];

    a4(0, 0xF000000000000000, 0, 0xF000000000000000, a1);
  }

  else
  {
    [a3 sendMetricWithResult:1 error:0];
    v95 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v53 = swift_allocObject();
    *(v53 + 16) = a6;
    *(v53 + 24) = a7;
    *(v53 + 32) = a8;
    *(v53 + 40) = a9;
    *(v53 + 48) = a10;
    *(v53 + 56) = a11;
    *(v53 + 64) = a12;
    *(v53 + 72) = a13;
    *(v53 + 80) = a4;
    *(v53 + 88) = a5;
    *(v53 + 96) = a14;
    *(v53 + 104) = a15;
    *(v53 + 112) = a16;
    *(v53 + 120) = a17;
    *(v53 + 128) = a18;
    *(v53 + 136) = a19;
    *(v53 + 144) = a20;
    *(v53 + 152) = a21;
    *(v53 + 160) = a22 & 1;
    v54 = swift_allocObject();
    *v54->endpoint = sub_1001ACBC0;
    *v54->containerMap = v53;
    aBlock[4] = sub_1001ACCC0;
    v97 = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283B48;
    v55 = _Block_copy(aBlock);
    v56 = v97;

    v57 = a6;
    v58 = a7;
    v59 = a8;

    v60 = a11;

    v61 = a15;

    v56, v62, v63, v64, v65, v66, v67, v68;
    [v95 performBlockAndWait:v55];
    _Block_release(v55);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();
    v53, v69, v70, v71, v72, v73, v74, v75;
    v54, v76, v77, v78, v79, v80, v81, v82;
    if (v55)
    {
      __break(1u);
    }
  }
}

void sub_1001A64F4(void *a1, uint64_t a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, id a5, void *a6, void (*a7)(void *, id, id), void *a8)
{
  v115 = a8;
  v8 = a7;
  p_cache = CKKSSOSSelfPeer.cache;
  if (a1)
  {
    v113 = a7;
    swift_errorRetain();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    swift_errorRetain();
    v17 = sub_100216754();
    v18 = sub_100216C54();

    if (os_log_type_enabled(v17, v18))
    {
      HIDWORD(v111) = v18;
      v19 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v121 = v109;
      *v19 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20 = sub_100216994();
      v21 = a6;
      v22 = a2;
      v24 = v23;
      v25 = a4;
      v26 = a3;
      v27 = a5;
      v28 = sub_100005FB0(v20, v23, &v121);
      v29 = v24;
      a2 = v22;
      a6 = v21;
      v29, v30, v31, v32, v33, v34, v35, v36, v109, v111, v113, v115, a1, v119, v121, v122, v123, v124;
      *(v19 + 4) = v28;
      a5 = v27;
      a3 = v26;
      a4 = v25;
      _os_log_impl(&_mh_execute_header, v17, BYTE4(v111), "join: error fetching all requested policies (continuing anyway): %{public}s", v19, 0xCu);
      sub_100006128(v108, v37, v38, v39, v40, v41, v42, v43);
      p_cache = (CKKSSOSSelfPeer + 16);
    }

    else
    {
    }

    v8 = v113;
  }

  if (a4)
  {
    v44 = a4;
  }

  else
  {
    v45 = [a5 modelID];
    a3 = sub_100216974();
    v44 = v46;
  }

  v47 = sub_100151404(a3, v44, a6);
  v48 = p_cache;
  v49 = a5;
  v50 = v47;
  v44, v51, v52, v53, v54, v55, v56, v57, v108, v111, v113, v115, v117, v119, v121, v122, v123, v124;
  v58 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v59 = a2;
  v60 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v61 = [v49 peerID];
  if (!v61)
  {
    sub_100216974();
    v63 = v62;
    v61 = sub_100216964();
    v63, v64, v65, v66, v67, v68, v69, v70, v110, v112, v114, v116, v118, v120, v121, v122, v123, v124;
  }

  v121 = 0;
  v71 = [v60 peerWithID:v61 error:&v121];

  if (v121)
  {
    v72 = v121;

    swift_willThrow();
LABEL_15:
    if (v48[164] != -1)
    {
      swift_once();
    }

    v73 = sub_100216774();
    sub_100002648(v73, qword_10029D160);
    swift_errorRetain();
    v74 = sub_100216754();
    v75 = sub_100216C74();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v121 = v77;
      *v76 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v78 = sub_100216994();
      v80 = v79;
      v81 = sub_100005FB0(v78, v79, &v121);
      v80, v82, v83, v84, v85, v86, v87, v88, v110, v112, v114, v116, v72, v120, v121, v122, v123, v124;
      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Fetching the syncing policy failed: %{public}s", v76, 0xCu);
      sub_100006128(v77, v89, v90, v91, v92, v93, v94, v95);
    }

    swift_errorRetain();
    v8(0, 0, v72);

    return;
  }

  if (v71)
  {
    v96 = [v71 dynamicInfo];
    if (v96)
    {
      v97 = v96;
      v98 = *(v59 + v58);
      v121 = 0;
      v99 = [v98 userViewSyncabilityConsensusAmongTrustedPeers:v97 error:&v121];
      v100 = v121;
      if (!v121)
      {
        v106 = v99;
        v107 = v50;
        v8(v50, v106, 0);

        return;
      }

      swift_willThrow();
      v72 = v100;

      goto LABEL_15;
    }
  }

  if (v48[164] != -1)
  {
    swift_once();
  }

  v101 = sub_100216774();
  sub_100002648(v101, qword_10029D160);
  v102 = sub_100216754();
  v103 = sub_100216C74();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "fetchCurrentPolicy with no dynamic info", v104, 2u);
  }

  v105 = v50;
  v8(v50, 0, 0);
}

void sub_1001A6B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  if (!a1)
  {
    v23 = 0;
LABEL_20:
    sub_100151AA4(v23, a2, a3, a4);

    v23, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    return;
  }

  v18 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v19 = a4;
    v20 = a3;
    v21 = a2;
    v22 = sub_10018CFD4(a1);
    a2 = v21;
    a3 = v20;
    a4 = v19;
    v23 = v22;
    goto LABEL_20;
  }

  v54 = a2;
  v55 = a3;
  v56 = a4;
  sub_10001148C(&unk_10029D800, &unk_100226620);
  v24 = sub_100217114();
  v23 = v24;
  v25 = 0;
  v26 = v18 + 64;
  v27 = 1 << *(v18 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v18 + 64);
  v30 = (v27 + 63) >> 6;
  v57 = v24 + 64;
  if (v29)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v58 = (v29 - 1) & v29;
LABEL_16:
      v34 = v31 | (v25 << 6);
      v35 = v18;
      v36 = *(*(v18 + 48) + 8 * v34);
      v37 = *(*(v18 + 56) + 8 * v34);
      v59 = v36;
      v38 = v37;
      v39 = [v38 protobuf];
      v40 = sub_100216224();
      v42 = v41;

      *(v57 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      *(*v23[1].endpoint + 8 * v34) = v59;
      v43 = (*v23[1].containerMap + 16 * v34);
      *v43 = v40;
      v43[1] = v42;
      v44 = *v23->endpoint;
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        break;
      }

      *v23->endpoint = v46;
      v18 = v35;
      v29 = v58;
      if (!v58)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        a4 = v56;
        a2 = v54;
        a3 = v55;
        goto LABEL_20;
      }

      v33 = *(v26 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v58 = (v33 - 1) & v33;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001A6D60(uint64_t a1, char *a2, char *a3, void *a4, void *a5, char *a6, unint64_t a7, void *a8, uint64_t isEscapingClosureAtFileLocation, uint64_t a10, _TtC18TrustedPeersHelper6Client *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, unsigned __int8 a20)
{
  v92 = a5;
  v23 = a2;
  v24 = a20;
  v91 = a18;
  v90 = a16;
  v89 = a14;
  v26 = a10;
  if (!a1)
  {
    [a2 sendMetricWithResult:1 error:0];
    goto LABEL_7;
  }

  LODWORD(v88) = a20;
  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v85 = isEscapingClosureAtFileLocation;
    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C54();

    if (os_log_type_enabled(v29, v30))
    {
      v83 = a8;
      v31 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v31 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v32 = sub_100216994();
      v34 = v33;
      v35 = v23;
      v36 = a4;
      v37 = a11;
      v38 = a3;
      v39 = sub_100005FB0(v32, v33, aBlock);
      v34, v40, v41, v42, v43, v44, v45, v46, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92;
      *(v31 + 4) = v39;
      a3 = v38;
      a11 = v37;
      a4 = v36;
      v23 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "join: error fetching all requested policies (continuing anyway): %{public}s", v31, 0xCu);
      sub_100006128(v82, v47, v48, v49, v50, v51, v52, v53);

      v26 = a10;
      a8 = v84;
    }

    v24 = v88;
    v54 = sub_100216144();
    [v23 sendMetricWithResult:0 error:v54];

    isEscapingClosureAtFileLocation = v85;
LABEL_7:
    v86 = a4;
    v87 = a11;
    v23 = a3;
    v88 = *&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v55 = swift_allocObject();
    *(v55 + 16) = a4;
    a4 = v92;
    a3 = a6;
    *(v55 + 24) = v92;
    *(v55 + 32) = a6;
    *(v55 + 40) = a7;
    *(v55 + 48) = a8;
    *(v55 + 56) = isEscapingClosureAtFileLocation;
    *(v55 + 64) = v26;
    *(v55 + 72) = v23;
    *(v55 + 80) = a11;
    *(v55 + 88) = a12;
    *(v55 + 96) = a13;
    *(v55 + 104) = v89;
    *(v55 + 112) = a15;
    *(v55 + 120) = v90;
    *(v55 + 128) = a17;
    v26 = a19;
    *(v55 + 136) = v91;
    *(v55 + 144) = a19;
    *(v55 + 152) = v24 & 1;
    a11 = swift_allocObject();
    *a11->endpoint = sub_1001ACBBC;
    *a11->containerMap = v55;
    aBlock[4] = sub_1001ACCC0;
    v96 = a11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283620;
    v56 = _Block_copy(aBlock);
    v57 = v96;
    sub_100012558(v86, v92);
    sub_100012558(a6, a7);

    v58 = a8;

    v59 = v23;

    v57, v60, v61, v62, v63, v64, v65, v66;
    [v88 performBlockAndWait:v56];
    _Block_release(v56);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v55, v67, v68, v69, v70, v71, v72, v73;
    a11, v74, v75, v76, v77, v78, v79, v80;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }
}

void sub_1001A71BC(void *a1, char *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = a1;
  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = sub_100216774();
    sub_100002648(v10, qword_10029D160);
    swift_errorRetain();
    v11 = sub_100216754();
    v12 = sub_100216C54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v13 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14 = sub_100216994();
      v16 = v15;
      v17 = isEscapingClosureAtFileLocation;
      v18 = a3;
      v19 = sub_100005FB0(v14, v15, &aBlock);
      v16, v20, v21, v22, v23, v24, v25, v26, v59, v9, aBlock, v62, v63, v64, v65, v66, v67, v68;
      *(v13 + 4) = v19;
      a3 = v18;
      isEscapingClosureAtFileLocation = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "preflightPreapprovedJoin: error fetching all requested policies (continuing anyway): %{public}s", v13, 0xCu);
      sub_100006128(v60, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
    }

LABEL_6:
    v9 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a3;
    *(v34 + 32) = isEscapingClosureAtFileLocation;
    *(v34 + 40) = a5;
    a3 = swift_allocObject();
    *a3->endpoint = sub_1001ACE78;
    *a3->containerMap = v34;
    v65 = sub_1001ACCC0;
    v66 = a3;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100109050;
    v64 = &unk_100283328;
    v35 = _Block_copy(&aBlock);
    v36 = v66;

    v37 = a2;

    v36, v38, v39, v40, v41, v42, v43, v44;
    [v9 performBlockAndWait:v35];
    _Block_release(v35);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v34, v45, v46, v47, v48, v49, v50, v51;
    a3, v52, v53, v54, v55, v56, v57, v58;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_8:
    swift_once();
  }
}

void sub_1001A74C0(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v12);
  v164 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v162 = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = swift_allocObject();
  v166 = v15;
  *v15->endpoint = a1;
  endpoint = v15->endpoint;
  v17 = swift_allocObject();

  v161 = a3;

  v18 = v17;
  *(v17 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v19 = v17 + 16;
  v20 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v21 = swift_allocObject();
  *(v21 + 16) = endpoint;
  *(v21 + 24) = a2;
  *(v21 + 32) = v19;
  v22 = swift_allocObject();
  *v22->endpoint = sub_1001ACE80;
  *v22->containerMap = v21;
  v165 = v21;
  v172 = sub_1001ACCC0;
  v173 = v22;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_100109050;
  v171 = &unk_100283210;
  v23 = _Block_copy(&aBlock);
  v24 = v173;
  v25 = a2;

  v24, v26, v27, v28, v29, v30, v31, v32;
  [v20 performBlockAndWait:v23];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();
  v22, v33, v34, v35, v36, v37, v38, v39;
  if (v23)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v42 = *endpoint;
  if ((*endpoint & 0xC000000000000001) != 0)
  {

    v43 = sub_100216ED4();
    v42, v44, v45, v46, v47, v48, v49, v50, v160, v161, v162, PolicyDocumentsRequest, v164, v165, v166, v167, aBlock, v169;
    if (v43)
    {
LABEL_4:
      __chkstk_darwin(v40, v41);
      *(&v160 - 2) = endpoint;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
      v51 = v14;
      v52 = v164;
      sub_100216654();
      v53 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v54 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      PolicyDocumentsRequest = sub_100006484(&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v53);
      v55 = swift_allocObject();
      *(v55 + 16) = v25;
      *(v55 + 24) = sub_1001A9F30;
      v56 = v166;
      *(v55 + 32) = v51;
      *(v55 + 40) = v56;
      *(v55 + 48) = v18;
      v57 = *(v54 + 16);
      v58 = *(v57 + 80);
      v59 = v25;

      v58(v52, sub_1001ACE2C, v55, v53, v57);
      v55, v60, v61, v62, v63, v64, v65, v66;
      sub_1001AC1E4(v52, type metadata accessor for FetchPolicyDocumentsRequest);
      v51, v67, v68, v69, v70, v71, v72, v73;
      v165, v74, v75, v76, v77, v78, v79, v80;
      v56, v81, v82, v83, v84, v85, v86, v87;
      v18, v88, v89, v90, v91, v92, v93, v94;
      return;
    }
  }

  else if (*v42->endpoint)
  {
    goto LABEL_4;
  }

  v95 = v18;
  v96 = *v18->endpoint;
  v97 = v161;
  v164 = *&v161[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v98 = swift_allocObject();
  v99 = v162;
  *(v98 + 16) = v97;
  *(v98 + 24) = v99;
  *(v98 + 32) = a5;
  *(v98 + 40) = a6;
  v100 = swift_allocObject();
  *v100->endpoint = sub_1001A9F40;
  *v100->containerMap = v98;
  v172 = sub_1001ACCC0;
  v173 = v100;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_100109050;
  v171 = &unk_1002832B0;
  v101 = _Block_copy(&aBlock);
  v102 = v173;
  v103 = v97;

  v102, v104, v105, v106, v107, v108, v109, v110;
  [v164 performBlockAndWait:v101];
  _Block_release(v101);
  LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();
  v14, v111, v112, v113, v114, v115, v116, v117;
  v165, v118, v119, v120, v121, v122, v123, v124;
  v166, v125, v126, v127, v128, v129, v130, v131;
  v95, v132, v133, v134, v135, v136, v137, v138;
  v96, v139, v140, v141, v142, v143, v144, v145, v160, v161, v162, PolicyDocumentsRequest, v164, v165, v166, v167, aBlock, v169;
  v98, v146, v147, v148, v149, v150, v151, v152;
  v100, v153, v154, v155, v156, v157, v158, v159;
  if (v101)
  {
    goto LABEL_9;
  }
}

void sub_1001A7A80(uint64_t a1, char *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t (*a4)(void, void), _TtC18TrustedPeersHelper6Client *a5)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v10);
  v161 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v158 = a4;
  *(v12 + 32) = a5;
  v13 = swift_allocObject();
  *v13->endpoint = sub_1001A99EC;
  *v13->containerMap = v12;
  v14 = swift_allocObject();
  v163 = v14;
  *v14->endpoint = a1;
  endpoint = v14->endpoint;
  v16 = swift_allocObject();

  v159 = a5;

  v162 = v12;

  v17 = v16;
  *(v16 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v18 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v19 = swift_allocObject();
  *(v19 + 16) = endpoint;
  *(v19 + 24) = a2;
  *(v19 + 32) = v16 + 16;
  v20 = swift_allocObject();
  *v20->endpoint = sub_100056F54;
  *v20->containerMap = v19;
  v169 = sub_1001ACCC0;
  v170 = v20;
  aBlock = _NSConcreteStackBlock;
  v166 = 1107296256;
  v167 = sub_100109050;
  v168 = &unk_100282CC0;
  v21 = _Block_copy(&aBlock);
  v22 = v170;
  v23 = a2;

  v22, v24, v25, v26, v27, v28, v29, v30;
  [v18 performBlockAndWait:v21];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v20, v31, v32, v33, v34, v35, v36, v37;
  if ((v21 & 1) == 0)
  {
    v40 = *endpoint;
    if ((*endpoint & 0xC000000000000001) != 0)
    {

      v41 = sub_100216ED4();
      v40, v42, v43, v44, v45, v46, v47, v48, v157, v158, v159, PolicyDocumentsRequest, v161, v162, v163, v164, aBlock, v166;
      if (v41)
      {
LABEL_4:
        __chkstk_darwin(v38, v39);
        *(&v157 - 2) = endpoint;
        sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
        v159 = v19;
        v49 = v161;
        sub_100216654();
        v50 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v51 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v50);
        v52 = swift_allocObject();
        *(v52 + 16) = v23;
        *(v52 + 24) = sub_1001A99F8;
        *(v52 + 32) = v13;
        v53 = v23;
        v54 = v13;
        v55 = v163;
        *(v52 + 40) = v163;
        *(v52 + 48) = v17;
        v56 = *(v51 + 16);
        v57 = *(v56 + 80);
        v58 = v53;

        v57(v49, sub_1001A9A00, v52, v50, v56);
        v52, v59, v60, v61, v62, v63, v64, v65;
        sub_1001AC1E4(v49, type metadata accessor for FetchPolicyDocumentsRequest);
        v162, v66, v67, v68, v69, v70, v71, v72;
        v54, v73, v74, v75, v76, v77, v78, v79;
        v159, v80, v81, v82, v83, v84, v85, v86;
        v55, v87, v88, v89, v90, v91, v92, v93;
        v101 = v17;
LABEL_7:
        v101, v94, v95, v96, v97, v98, v99, v100;
        return;
      }
    }

    else if (*v40->endpoint)
    {
      goto LABEL_4;
    }

    v102 = *v17->endpoint;

    v103 = v159;

    sub_1001A6B3C(v104, 0, a3, v158, v103, v105, v106, v107, v157, v158, v159, PolicyDocumentsRequest, v161, v162, v163, v164, aBlock, v166);
    v162, v108, v109, v110, v111, v112, v113, v114;
    v13, v115, v116, v117, v118, v119, v120, v121;
    v19, v122, v123, v124, v125, v126, v127, v128;
    v163, v129, v130, v131, v132, v133, v134, v135;
    v17, v136, v137, v138, v139, v140, v141, v142;
    v102, v143, v144, v145, v146, v147, v148, v149, v157, v158, v159, PolicyDocumentsRequest, v161, v162, v163, v164, aBlock, v166;
    a3, v150, v151, v152, v153, v154, v155, v156;
    v101 = v103;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001A7F5C(objc_class *a1, void *a2, int a3, void *aBlock)
{
  _Block_copy(aBlock);
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
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54._countAndFlagsBits = sub_100216994();
      object = v54._object;
      sub_100216A14(v54);
      object, v15, v16, v17, v18, v19, v20, v21, a2, 0x203A726F727265, 0xE700000000000000, v47, v48, v49, v50, v51, v52, v53;

      v22 = v45;
      v13 = v46;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v23 = sub_100005FB0(v22, v13, &v47);
    v13, v24, v25, v26, v27, v28, v29, v30, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53;
    *(v11 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchAccountSettings complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v31, v32, v33, v34, v35, v36, v37);
  }

  sub_10010EEEC(0xD000000000000055, 0x800000010023C180, v38, v39, v40, v41, v42, v43);
  _Block_copy(aBlock);
  sub_1001B4C3C(a1, a2, aBlock);
  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1001A81A4(void *a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = [a1 includedPeerIDs];
  v5 = sub_100216BB4();

  v6 = [v3 includedPeerIDs];
  v7 = sub_100216BB4();

  LOBYTE(v6) = sub_1001827AC(v5, v7);
  v5, v8, v9, v10, v11, v12, v13, v14, v60, v66, v72, v78, v84, v90, v96, v102, vars0, vars8;
  v7, v15, v16, v17, v18, v19, v20, v21, v61, v67, v73, v79, v85, v91, v97, v103, vars0c, vars8c;
  if (v6 & 1) != 0 && (v22 = [a1 excludedPeerIDs], v23 = sub_100216BB4(), v22, v24 = objc_msgSend(v3, "excludedPeerIDs"), v25 = sub_100216BB4(), v24, LOBYTE(v24) = sub_1001827AC(v23, v25), v23, v26, v27, v28, v29, v30, v31, v32, v62, v68, v74, v80, v86, v92, v98, v104, vars0a, vars8a, v25, v33, v34, v35, v36, v37, v38, v39, v63, v69, v75, v81, v87, v93, v99, v105, vars0d, vars8d, (v24))
  {
    v40 = [a1 preapprovals];
    v41 = sub_100216BB4();

    v42 = [v3 preapprovals];
    v43 = sub_100216BB4();

    LOBYTE(v42) = sub_1001827AC(v41, v43);
    v41, v44, v45, v46, v47, v48, v49, v50, v64, v70, v76, v82, v88, v94, v100, v106, vars0b, vars8b;
    v43, v51, v52, v53, v54, v55, v56, v57, v65, v71, v77, v83, v89, v95, v101, v107, vars0e, vars8e;
    v58 = v42 ^ 1;
  }

  else
  {

    v58 = 1;
  }

  return v58 & 1;
}

void sub_1001A83B4(void *a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
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
    v47 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54._countAndFlagsBits = sub_100216994();
      object = v54._object;
      sub_100216A14(v54);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v47, v48, v49, v50, v51, v52, v53;

      v20 = v45;
      v11 = v46;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v47);
    v11, v22, v23, v24, v25, v26, v27, v28, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "testSemaphore complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C120, v36, v37, v38, v39, v40, v41);
  if (a1)
  {
    swift_getErrorValue();
    v42 = v49;
    v43 = v50;
    _Block_copy(aBlock);
    sub_1001ADD74(v42, v43);
    a1 = sub_100216144();
  }

  else
  {
    _Block_copy(aBlock);
  }

  (*(aBlock + 2))(aBlock, a1);

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_1001A864C(uint64_t a1, void (*a2)(void, void), void *a3, void (**a4)(void, void))
{
  v138 = a2;
  v7 = sub_1002167E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v130 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100216824();
  v131 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100216854();
  v15 = *(v14 - 8);
  v136 = v14;
  v137 = v15;
  v17 = __chkstk_darwin(v14, v16);
  v128 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v135 = &v121 - v20;
  v21 = sub_1002167F4();
  v127 = *(v21 - 8);
  __chkstk_darwin(v21, v22);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1002167D4();
  v133 = *(v25 - 8);
  v134 = v25;
  __chkstk_darwin(v25, v26);
  v132 = (&v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  v29 = swift_allocObject();
  *v29->endpoint = sub_1001A9270;
  *v29->containerMap = v28;
  _Block_copy(a4);

  _Block_copy(a4);

  _Block_copy(a4);

  _Block_copy(a4);

  if (!SecIsInternalRelease())
  {
    sub_1000561D0();
    swift_allocError();
    *v42 = xmmword_100226120;
    *(v42 + 16) = 13;
    swift_getErrorValue();
    v43 = v146;
    v44 = v147;
    _Block_copy(a4);
    sub_1001ADD74(v43, v44);
    v45 = sub_100216144();
    (a4)[2](a4, v45);

    _Block_release(a4);

    v53 = v29;
    goto LABEL_11;
  }

  v123 = v11;
  v124 = v8;
  v125 = v7;
  v126 = a1;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v30 = a3;
  v31 = v126;
  v32 = sub_10019C8E0(v30, 0xD000000000000019, 0x800000010023C120);

  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = sub_1001A9278;
  *(v40 + 32) = v29;
  v41 = v138;
  if ((v31 != 0x796C7065726F6ELL || v138 != 0xE700000000000000) && (sub_1002171A4() & 1) == 0 && (v31 != 110 || v41 != 0xE100000000000000) && (sub_1002171A4() & 1) == 0)
  {
    v122 = v32;
    if (v31 == 0x6863746170736964 && v41 == 0xE800000000000000 || ((v89 = sub_1002171A4(), v31 == 100) ? (v90 = v41 == 0xE100000000000000) : (v90 = 0), !v90 ? (v91 = 0) : (v91 = 1), (v89 & 1) != 0 || (v91 & 1) != 0 || (sub_1002171A4() & 1) != 0))
    {
      v54 = v132;
      *v132 = 1;
      (*(v133 + 104))(v54, enum case for DispatchTimeInterval.seconds(_:), v134);
      sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
      v55 = v127;
      (*(v127 + 104))(v24, enum case for DispatchQoS.QoSClass.userInitiated(_:), v21);

      v126 = sub_100216D04();
      (*(v55 + 8))(v24, v21);
      v56 = v128;
      sub_100216834();
      sub_100216844();
      v57 = *(v137 + 8);
      v137 += 8;
      v138 = v57;
      v57(v56, v136);
      v58 = swift_allocObject();
      *(v58 + 16) = sub_1001A9280;
      *(v58 + 24) = v40;
      v144 = sub_1001A928C;
      v145 = v58;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v59 = &unk_1002825B8;
    }

    else
    {
      if (v31 != 0xD000000000000010 || 0x800000010023C140 != v41)
      {
        v97 = sub_1002171A4();
        v98 = v31 == 43 && v41 == 0xE100000000000000;
        v99 = v98;
        if ((v97 & 1) == 0 && !v99 && (sub_1002171A4() & 1) == 0 && (v31 != 28260 || v41 != 0xE200000000000000) && (sub_1002171A4() & 1) == 0 && (v31 != 7220580 || v41 != 0xE300000000000000) && (sub_1002171A4() & 1) == 0)
        {
          if (v31 == 0x722D656C62756F64 && v138 == 0xEE00657361656C65 || (sub_1002171A4() & 1) != 0)
          {
            _Block_copy(a4);

            sub_1001A83B4(0, v32, a4);
          }

          else
          {
            _Block_copy(a4);
          }

          sub_1001A83B4(0, v32, a4);
          _Block_release(a4);
          v29, v100, v101, v102, v103, v104, v105, v106;
          v40, v107, v108, v109, v110, v111, v112, v113;
          v32, v114, v115, v116, v117, v118, v119, v120;
          goto LABEL_9;
        }
      }

      v92 = v132;
      *v132 = 1;
      (*(v133 + 104))(v92, enum case for DispatchTimeInterval.seconds(_:), v134);
      sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
      v93 = v127;
      (*(v127 + 104))(v24, enum case for DispatchQoS.QoSClass.userInitiated(_:), v21);

      v126 = sub_100216D04();
      (*(v93 + 8))(v24, v21);
      v94 = v128;
      sub_100216834();
      sub_100216844();
      v95 = *(v137 + 8);
      v137 += 8;
      v138 = v95;
      v95(v94, v136);
      v96 = swift_allocObject();
      *(v96 + 16) = sub_1001A9280;
      *(v96 + 24) = v40;
      v144 = EscrowCheckGraphStatus.rawValue.getter;
      v145 = v96;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v59 = &unk_100282568;
    }

    v142 = sub_100063B78;
    v143 = v59;
    v128 = _Block_copy(&aBlock);

    v60 = v129;
    sub_100216804();
    v139 = _swiftEmptyArrayStorage;
    sub_1001A13C4(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10001148C(&unk_100297FD0, &unk_10021DC80);
    sub_1001AC36C(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80, &protocol conformance descriptor for [A]);
    v61 = v40;
    v62 = v130;
    v63 = v125;
    sub_100216E34();
    v64 = v135;
    v65 = v128;
    v66 = v126;
    sub_100216CB4();
    _Block_release(v65);
    v122, v67, v68, v69, v70, v71, v72, v73;
    v61, v74, v75, v76, v77, v78, v79, v80;

    (*(v124 + 8))(v62, v63);
    (*(v131 + 8))(v60, v123);
    v138(v64, v136);
    (*(v133 + 8))(v132, v134);
    v81 = v145;

    v29, v82, v83, v84, v85, v86, v87, v88;
    v53 = v81;
LABEL_11:
    v53, v46, v47, v48, v49, v50, v51, v52;
    goto LABEL_12;
  }

  v40, v33, v34, v35, v36, v37, v38, v39;
LABEL_9:

LABEL_12:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

id sub_1001A9304()
{
  v1 = *(v0 + 16);
  sub_10014C364();
  v2 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  [*(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) setAccountSettings:0];
  v3 = *(v1 + v2);

  return [v3 setAccountSettingsDate:0];
}

int *sub_1001A9364(int *result)
{
  if (*(v1 + 16))
  {
    v2 = 17;
  }

  else
  {
    v2 = 16;
  }

  if (*(v1 + 17))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *result = v3 | v2;
  return result;
}

unint64_t sub_1001A9438()
{
  result = qword_10029D730;
  if (!qword_10029D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D730);
  }

  return result;
}

void sub_1001A9594(_TtC18TrustedPeersHelper6Client *result, SEL a2, id a3, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0, id arg0, id arg8, id arg10, id arg18, id arg20, int a14, id arg30, id arg38, id arg40, id arg48)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, x6_0, x7_0, arg0, arg8, arg10, arg18, arg20, a14, arg30, arg38, arg40, arg48;
  }
}

void sub_1001A95A0(void *a1, void *a2)
{
  v5 = *(sub_1002163D4() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100133C2C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A9690()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001340D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 19) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1001A9794(uint64_t a1)
{
  v3 = *(sub_1002163D4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100135628(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9874()
{
  v1 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1002163D4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100135C3C(*(v0 + 16), (v0 + v2), (v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9A04()
{
  v1 = *(type metadata accessor for FetchPolicyDocumentsResponse(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100152CA8((v0 + v2), v7, v8, v9, v10, v11);
}

uint64_t sub_1001A9AB8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000200C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001A9D18(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1001695B0(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9DE4()
{
  v1 = *(type metadata accessor for Peer(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for JoinWithVoucherResponse(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100169B94(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v4), (v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9F94()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF880;
  v7 = off_1002AF880;
  if (!off_1002AF880)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001AC850;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001AC850(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001AA0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AA258(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) - 8);
  v4 = (*(v3 + 80) + 65) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10015D8A0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001AA348()
{
  v1 = *(type metadata accessor for Peer(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for JoinWithVoucherResponse(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10015DF74(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v3), *(v0 + v4), (v0 + v6), *(v0 + v7), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001AA78C(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

void sub_1001AAAC0()
{
  v1 = *(type metadata accessor for UpdateTrustResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10016CC18(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001AAE9C(void (*a1)(void), const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  a1(*(v8 + 56));

  return _swift_deallocObject(v8, 64, 7);
}

uint64_t sub_1001AB178()
{
  v1 = *(type metadata accessor for ResetResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011FDF4(v3, v0 + v2, v4);
}

void sub_1001AB228(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
    *(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;
  }
}

void sub_1001AB3D8(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  if (a3 > 7u)
  {
    if (a3 > 9u)
    {
      if (a3 == 10 || a3 == 11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3 == 8)
      {
        goto LABEL_10;
      }

      if (a3 == 9)
      {
      }
    }
  }

  else
  {
    if (a3 <= 2u)
    {
      if (a3 && a3 != 2)
      {
        return;
      }

LABEL_10:
      a2, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
      return;
    }

    if (a3 == 3 || a3 == 6)
    {
LABEL_13:
    }
  }
}

uint64_t sub_1001AB700()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1001AB81C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10018F134(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

_TtC18TrustedPeersHelper6Client *sub_1001ABBD4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10014DC3C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void sub_1001ABC14(_TtC18TrustedPeersHelper6Client *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  if (a2)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
  }
}

uint64_t sub_1001ABC20()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

_TtC18TrustedPeersHelper6Client *sub_1001ABC78@<X0>(uint64_t a1@<X8>)
{
  result = sub_10014D604(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1001ABCFC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_1001ABD48()
{
  v1 = *(v0 + 24);
  sub_10014C364();
  return v1(0);
}

uint64_t sub_1001ABE98(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_1001ABF18()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ABFE4()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AC038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AC0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AC134(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(v5, v6, v2 + v4, v8, v9);
}

uint64_t sub_1001AC1E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AC2D8(void (*a1)(void))
{
  a1(*(v1 + 16));

  *(v1 + 40), v2, v3, v4, v5, v6, v7, v8;

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1001AC36C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011534(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AC3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1001AC424(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001AC4A0()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001AC548()
{
  result = qword_10029DB98;
  if (!qword_10029DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DB98);
  }

  return result;
}

__n128 sub_1001AC59C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001AC5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1001AC624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecurityFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecurityFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001AC7FC()
{
  result = qword_10029DBA0;
  if (!qword_10029DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DBA0);
  }

  return result;
}

void *sub_1001AC850(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF888)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001AC9D4;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100285D48;
    v7 = 0;
    qword_1002AF888 = _sl_dlopen();
  }

  v2 = qword_1002AF888;
  if (!qword_1002AF888)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_1002AF880 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001AC9D4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002AF888 = result;
  return result;
}

void *sub_1001ACE88(malloc_zone_t *a1, size_t a2)
{
  if (a1)
  {

    return malloc_zone_malloc(a1, a2);
  }

  else
  {
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void *sub_1001ACEF8(malloc_zone_t *a1, void *a2, size_t a3)
{
  if (a1)
  {

    return malloc_zone_realloc(a1, a2, a3);
  }

  else
  {
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void sub_1001ACF68(malloc_zone_t *a1, void *a2)
{
  if (a1)
  {

    malloc_zone_free(a1, a2);
  }

  else
  {
    sub_1002170E4();
    __break(1u);
  }
}

unint64_t sub_1001ACFD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v15 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v6)
    {
      v2, v8, v9, v10, v11, v12, v13, v14;
      a1, v45, v46, v47, v48, v49, v50, v51;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v27);
    ++v15;
    if (v5)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v29 = (v27 << 10) | (16 * v28);
        v30 = (*(a1 + 48) + v29);
        v32 = *v30;
        v31 = v30[1];
        v33 = *(a1 + 56) + v29;
        v52 = *v33;
        v53 = *(v33 + 8);

        swift_dynamicCast();
        sub_1000125AC(&v56, v60);
        sub_1000125AC(v60, v61);
        sub_1000125AC(v61, &v59);
        result = sub_100015A28(v32, v31);
        if (v34)
        {
          v16 = (*v2[1].endpoint + 16 * result);
          v17 = v16[1];
          *v16 = v32;
          v16[1] = v31;
          v18 = result;
          v17, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54, v55, v56, SDWORD2(v56), v57, v58, v59, *(&v59 + 1);
          v19 = (*v2[1].containerMap + 32 * v18);
          sub_100006128(v19, v20, v21, v22, v23, v24, v25, v26);
          result = sub_1000125AC(&v59, v19);
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (*v2->endpoint >= *v2->containerMap)
          {
            goto LABEL_20;
          }

          *&v2[2]._TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
          v41 = (*v2[1].endpoint + 16 * result);
          *v41 = v32;
          v41[1] = v31;
          result = sub_1000125AC(&v59, (*v2[1].containerMap + 32 * result));
          v42 = *v2->endpoint;
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_21;
          }

          *v2->endpoint = v44;
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v27 = v15;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001AD230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 2;

  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = __clz(__rbit64(v5)) | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = v21[1];
    v23 = *(*(a1 + 56) + 8 * v20);
    *&v46[0] = *v21;
    *(&v46[0] + 1) = v22;

    v23;
    swift_dynamicCast();
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    swift_dynamicCast();
    v42 = v38;
    v43 = v39;
    v44 = v40;
    sub_1000125AC(&v41, v45);
    v38 = v42;
    v39 = v43;
    v40 = v44;
    sub_1000125AC(v45, v46);
    result = sub_100216F54(*&v2[1]._TtCs12_SwiftObject_opaque[8]);
    v24 = -1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v25 >> 6)]) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *&v7->_TtCs12_SwiftObject_opaque[8 * v26];
        if (v30 != -1)
        {
          v17 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v25) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7->_TtCs12_SwiftObject_opaque[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v18 = *v2[1].endpoint + 40 * v17;
    *v18 = v38;
    *(v18 + 16) = v39;
    *(v18 + 32) = v40;
    result = sub_1000125AC(v46, (*v2[1].containerMap + 32 * v17));
    ++*v2->endpoint;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v31, v32, v33, v34, v35, v36, v37;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001AD500(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 2;

  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = (v16 << 10) | (16 * __clz(__rbit64(v5)));
    v21 = (*(a1 + 48) + v20);
    v22 = v21[1];
    v23 = (*(a1 + 56) + v20);
    v24 = *v23;
    v25 = v23[1];
    *&v48[0] = *v21;
    *(&v48[0] + 1) = v22;

    sub_100012558(v24, v25);
    swift_dynamicCast();
    swift_dynamicCast();
    v44 = v40;
    v45 = v41;
    v46 = v42;
    sub_1000125AC(&v43, v47);
    v40 = v44;
    v41 = v45;
    v42 = v46;
    sub_1000125AC(v47, v48);
    result = sub_100216F54(*&v2[1]._TtCs12_SwiftObject_opaque[8]);
    v26 = -1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v27 >> 6)]) == 0)
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
        v32 = *&v7->_TtCs12_SwiftObject_opaque[8 * v28];
        if (v32 != -1)
        {
          v17 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v27) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v27 >> 6)])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7->_TtCs12_SwiftObject_opaque[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v18 = *v2[1].endpoint + 40 * v17;
    *v18 = v40;
    *(v18 + 16) = v41;
    *(v18 + 32) = v42;
    result = sub_1000125AC(v48, (*v2[1].containerMap + 32 * v17));
    ++*v2->endpoint;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v33, v34, v35, v36, v37, v38, v39;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1001AD7C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v52 = v2 + 2;

  v15 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v6)
    {
      v2, v8, v9, v10, v11, v12, v13, v14;
      a1, v44, v45, v46, v47, v48, v49, v50;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v27);
    ++v15;
    if (v5)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v29 = v28 | (v27 << 6);
        v30 = (*(a1 + 48) + 16 * v29);
        v32 = *v30;
        v31 = v30[1];
        sub_100019390(*(a1 + 56) + 40 * v29, v65);
        v63 = v32;
        v64 = v31;
        v53 = v65[0];
        v54 = v65[1];
        v55 = v66;

        swift_dynamicCast();
        sub_1000125AC(&v59, v61);
        sub_1000125AC(v61, v62);
        sub_1000125AC(v62, &v60);
        result = sub_100015A28(v32, v31);
        if (v33)
        {
          v16 = (*v2[1].endpoint + 16 * result);
          v17 = v16[1];
          *v16 = v32;
          v16[1] = v31;
          v18 = result;
          v17, v33, v34, v35, v36, v37, v38, v39, v51, v52, v53, *(&v53 + 1), v54, SDWORD2(v54), v55, v56, v57, v58;
          v19 = (*v2[1].containerMap + 32 * v18);
          sub_100006128(v19, v20, v21, v22, v23, v24, v25, v26);
          result = sub_1000125AC(&v60, v19);
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (*v2->endpoint >= *v2->containerMap)
          {
            goto LABEL_20;
          }

          *&v52->_TtCs12_SwiftObject_opaque[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
          v40 = (*v2[1].endpoint + 16 * result);
          *v40 = v32;
          v40[1] = v31;
          result = sub_1000125AC(&v60, (*v2[1].containerMap + 32 * result));
          v41 = *v2->endpoint;
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_21;
          }

          *v2->endpoint = v43;
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v27 = v15;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001ADA38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 2;

  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = __clz(__rbit64(v5)) | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1000060A0(*(a1 + 56) + 32 * v20, v49);
    *&v48 = v23;
    *(&v48 + 1) = v22;
    v46[2] = v48;
    v47[0] = v49[0];
    v47[1] = v49[1];
    v46[0] = v48;

    swift_dynamicCast();
    sub_1000125AC(v47, v41);
    v42 = v38;
    v43 = v39;
    v44 = v40;
    sub_1000125AC(v41, v45);
    v38 = v42;
    v39 = v43;
    v40 = v44;
    sub_1000125AC(v45, v46);
    result = sub_100216F54(*&v2[1]._TtCs12_SwiftObject_opaque[8]);
    v24 = -1 << v2[1]._TtCs12_SwiftObject_opaque[0];
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v25 >> 6)]) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *&v7->_TtCs12_SwiftObject_opaque[8 * v26];
        if (v30 != -1)
        {
          v17 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v25) & ~*&v7->_TtCs12_SwiftObject_opaque[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7->_TtCs12_SwiftObject_opaque[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v18 = *v2[1].endpoint + 40 * v17;
    *v18 = v38;
    *(v18 + 16) = v39;
    *(v18 + 32) = v40;
    result = sub_1000125AC(v46, (*v2[1].containerMap + 32 * v17));
    ++*v2->endpoint;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v31, v32, v33, v34, v35, v36, v37;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001ADD00()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029DBB0);
  sub_100002648(v0, qword_10029DBB0);
  return sub_100216764();
}

id sub_1001ADD74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1, a2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v55 - v8;
  v10 = *(v3 + 16);
  v56 = v11;
  v10(&v55 - v8, v11, a1);
  if (sub_100217184())
  {
    (*(v3 + 8))(v9, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v12, v9, a1);
  }

  v13 = sub_100216144();

  v14 = [v13 domain];
  v15 = sub_100216974();
  v17 = v16;

  v18 = sub_100216974();
  v26 = v19;
  if (v15 == v18 && v17 == v19)
  {
    v17, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64;
    v26, v43, v44, v45, v46, v47, v48, v49, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64;
    goto LABEL_12;
  }

  v28 = sub_1002171A4();
  v17, v29, v30, v31, v32, v33, v34, v35, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64;
  v26, v36, v37, v38, v39, v40, v41, v42, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64;
  if (v28)
  {
LABEL_12:
    v50 = sub_1001AE07C();
    goto LABEL_13;
  }

  v10(v6, v56, a1);
  if (sub_100217184())
  {
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v52, v6, a1);
  }

  v53 = sub_100216144();

  v50 = CKXPCSuitableError();

  if (!v50)
  {
    sub_1000561D0();
    v50 = swift_allocError();
    *v54 = xmmword_100226AC0;
    *(v54 + 16) = 13;
  }

LABEL_13:

  return v50;
}

id sub_1001AE07C()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1002168D4();

  v4 = sub_100216974();
  v12 = v5;
  if (!*v3->endpoint)
  {
    v3, v5, v6, v7, v8, v9, v10, v11, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104;
    v39 = v12;
LABEL_8:
    v39, v22, v23, v24, v25, v26, v27, v28, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105;
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
    goto LABEL_9;
  }

  v13 = sub_100015A28(v4, v5);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104;
  if ((v15 & 1) == 0)
  {
    v39 = v3;
    goto LABEL_8;
  }

  sub_1000060A0(*v3[1].containerMap + 32 * v13, v111);
  v3, v29, v30, v31, v32, v33, v34, v35, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105;
  if (swift_dynamicCast())
  {
    if (*(&v109 + 1))
    {
      v111[0] = v108;
      v111[1] = v109;
      v112 = v110;
      sub_10001148C(&qword_10029DE98, &unk_100226B30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10021D600;
      *(inited + 32) = sub_100216974();
      *(inited + 40) = v37;
      sub_100019390(v111, inited + 48);
      isa = sub_100019A98(inited);
      swift_setDeallocating();
      sub_1000114D4(inited + 32, &qword_100297D20, &qword_10021D728);
      sub_1000193EC(v111);
      goto LABEL_10;
    }
  }

  else
  {
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
  }

LABEL_9:
  sub_1000114D4(&v108, &qword_10029DE90, &qword_100226B28);
  isa = 0;
LABEL_10:
  v40 = [v1 domain];
  if (!v40)
  {
    sub_100216974();
    v42 = v41;
    v40 = sub_100216964();
    v42, v43, v44, v45, v46, v47, v48, v49, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
  }

  v50 = [v1 code];
  if (isa)
  {
    v51 = sub_1001AD7C8(isa);
    isa, v52, v53, v54, v55, v56, v57, v58, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
    isa = sub_1002168C4().super.isa;
    v51, v59, v60, v61, v62, v63, v64, v65, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107;
  }

  v66 = [objc_allocWithZone(NSError) initWithDomain:v40 code:v50 userInfo:isa];

  return v66;
}

void sub_1001AE410(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100216144();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1001AE474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023D2B0, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

void sub_1001AE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_100216964();
    if (a3)
    {
LABEL_3:
      v7 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1001AE5E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DC20, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

uint64_t sub_1001AE6CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DC00, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

void sub_1001AE7A8(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, void *aBlock, void (*a5)(void *, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(a3, a1, v8);
  _Block_release(v8);
  _Block_release(v8);

  a1, v10, v11, v12, v13, v14, v15, v16;
}

void sub_1001AE83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_1002168C4().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1001AE910(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a2)
  {
    sub_10000200C(0, &qword_10029DB88, &off_100275050);
    isa = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v8 = sub_100216144();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, a1, isa);
}

uint64_t sub_1001AEBC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD000000000000024, 0x80000001002391F0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001AEDC0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7)
{
  sub_1001B473C(a6, a7, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v9 = sub_1001ADD74(v11, v12);
  }

  else
  {
    v9 = 0;
  }

  a4(v9);
}

uint64_t sub_1001AEE80(char a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DBE0, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1 & 1, v8);
}

void sub_1001AF288(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100216144();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1001AF2F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD00000000000001BLL, 0x800000010023DAD0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001AF3C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DA80, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

void sub_1001AF4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_100216B94().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1001AF558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100216144();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1001AF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x65726170657250, 0xE700000000000000, *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a12);
  if (a12)
  {
    swift_getErrorValue();
    v19 = sub_1001ADD74(v25, v26);
  }

  else
  {
    v19 = 0;
  }

  a15(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v19);
}

void sub_1001AF9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v16 = sub_100216964();
  }

  else
  {
    v16 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a6 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_100216204().super.isa;
  }

  if (a8 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_100216204().super.isa;
  }

  if (a10 >> 60 == 15)
  {
    v20 = 0;
    if (a12)
    {
LABEL_15:
      v21 = sub_100216144();
      goto LABEL_18;
    }
  }

  else
  {
    v20 = sub_100216204().super.isa;
    if (a12)
    {
      goto LABEL_15;
    }
  }

  v21 = 0;
LABEL_18:
  v22 = v21;
  (*(a13 + 16))(a13, v16, isa, v18, v19, v20, a11);
}

uint64_t sub_1001AFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000016, 0x800000010023DA60, *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a15);
  if (a15)
  {
    swift_getErrorValue();
    v19 = sub_1001ADD74(v28, v29);
  }

  else
  {
    v19 = 0;
  }

  a18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v19);
}

void sub_1001AFEFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_class *a14, uint64_t a15, uint64_t a16)
{
  v19 = a14;
  if (a2)
  {
    v20 = sub_100216964();
  }

  else
  {
    v20 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a6 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_100216204().super.isa;
  }

  if (a8 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_100216204().super.isa;
  }

  if (a10 >> 60 == 15)
  {
    v24 = 0;
    if (a13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = sub_100216204().super.isa;
    if (a13)
    {
LABEL_15:
      v25 = sub_100216964();
      if (!a14)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v25 = 0;
  if (a14)
  {
LABEL_16:
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v19 = sub_100216B14().super.isa;
  }

LABEL_17:
  v26 = a15;
  if (a15)
  {
    v26 = sub_100216144();
  }

  v27 = v26;
  (*(a16 + 16))(a16, v20, isa, v22, v23, v24, a11, v25, v19, v26);
}

uint64_t sub_1001B00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x73696C6261747345, 0xEC000000676E6968, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4, v14);
}

void sub_1001B020C(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = a3;
  if (a2)
  {
    v10 = sub_100216964();
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a3)
  {
LABEL_3:
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    isa = sub_100216B14().super.isa;
  }

LABEL_4:
  if (a5)
  {
    v11 = sub_100216144();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  (*(a6 + 16))(a6, v10, isa, a4);
}

uint64_t sub_1001B02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x676E696863756F56, 0xE800000000000000, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4, v14);
}

void sub_1001B0658(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_6:
      v11 = sub_100216144();
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_100216204().super.isa;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = v11;
  (*(a6 + 16))(a6, isa, v10);
}

uint64_t sub_1001B072C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, void, id))
{
  sub_1001B473C(0xD00000000000001BLL, 0x800000010023DA40, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4 & 1, v14);
}

void sub_1001B0974(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = sub_100216964();
    if (a5)
    {
LABEL_3:
      v11 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = v11;
  (*(a6 + 16))(a6, v10, a3, a4 & 1);
}

uint64_t sub_1001B0A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023DA20, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

void sub_1001B0D64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, Class a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a4 >> 60 != 15)
  {
    v14 = sub_100216204().super.isa;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (a5)
  {
LABEL_8:
    sub_10000200C(0, &qword_10029DEB0, off_100275028);
    a5 = sub_100216B14().super.isa;
  }

LABEL_9:
  if (a7)
  {
    v15 = sub_100216144();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  (*(a8 + 16))(a8, isa, v14, a5, a6);
}

uint64_t sub_1001B0E84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000020, 0x800000010023D9F0, *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a4);
  if (a4)
  {
    swift_getErrorValue();
    v12 = sub_1001ADD74(v14, v15);
  }

  else
  {
    v12 = 0;
  }

  a7(a1, a2, a3, v12);
}

void sub_1001B0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_100216964();
    if (a4)
    {
LABEL_3:
      v9 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t sub_1001B1010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000029, 0x800000010023D9C0, *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a4);
  if (a4)
  {
    swift_getErrorValue();
    v12 = sub_1001ADD74(v14, v15);
  }

  else
  {
    v12 = 0;
  }

  a7(a1, a2, a3, v12);
}

uint64_t sub_1001B118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D9A0, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_1001B12C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000022, 0x800000010023D970, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

uint64_t sub_1001B13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000024, 0x800000010023D940, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

void sub_1001B14BC(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, void *a4, uint64_t a5, void *aBlock, void (*a7)(void *, id, _TtC18TrustedPeersHelper6Client *, uint64_t, void *), uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v22 = _Block_copy(aBlock);
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v23 = sub_100216B24();
  _Block_copy(v22);
  v24 = a3;
  v25 = a4;

  a7(a3, v25, v23, a1, v22);
  _Block_release(v22);
  _Block_release(v22);

  a1, v26, v27, v28, v29, v30, v31, v32;

  v23, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

uint64_t sub_1001B15A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023D920, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_1001B1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  if (a5)
  {
    v7 = a2;
    v8 = a3;
    v9 = a1;
    v10 = a4;
    swift_getErrorValue();
    v11 = sub_1001ADD74(v14, v15);
    a2 = v7;
    a3 = v8;
    a4 = v10;
    v12 = v11;
    a1 = v9;
  }

  else
  {
    v12 = 0;
  }

  a6(a1, a2, a3, a4, v12);
}

void sub_1001B1BB8(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _TtC18TrustedPeersHelper6Client *a8, void *a9, void *a10, void *aBlock, void (*a12)(id, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, _TtC18TrustedPeersHelper6Client *), void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  HIDWORD(v116) = a10;
  v23 = _Block_copy(aBlock);
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v121 = sub_100216B24();
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v24 = sub_100216B24();
  if (a6)
  {
    v111 = sub_100216B24();
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v106 = 0;
    v26 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v111 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v106 = sub_100216974();
  v26 = v25;
  if (a8)
  {
LABEL_4:
    v27 = sub_100216974();
    a8 = v28;
    goto LABEL_8;
  }

LABEL_7:
  v27 = 0;
LABEL_8:
  v29 = a3;
  v30 = a9;

  if (v30)
  {
    v31 = sub_100216974();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  _Block_copy(v23);
  LOBYTE(v93) = BYTE4(v116);
  v84 = v31;
  v34 = v111;
  a12(v29, v121, v24, v111, v106, v26, v27, a8);
  _Block_release(v23);
  _Block_release(v23);

  a1, v35, v36, v37, v38, v39, v40, v41;
  v121, v42, v43, v44, v45, v46, v47, v48, v84, v33, v93, a1, v23, v106, v111, v116, v121, a12;
  v24, v49, v50, v51, v52, v53, v54, v55, v85, v89, v94, v98, v102, v107, v112, v117, v122, v126;
  v33, v56, v57, v58, v59, v60, v61, v62, v86, v90, v95, v99, v103, v108, v113, v118, v123, v127;
  a8, v63, v64, v65, v66, v67, v68, v69, v87, v91, v96, v100, v104, v109, v114, v119, v124, v128;
  v26, v70, v71, v72, v73, v74, v75, v76, v88, v92, v97, v101, v105, v110, v115, v120, v125, v129;

  v34, v77, v78, v79, v80, v81, v82, v83, a9, a10, aBlock, a12, a13, a14, a15, a16, a17, a18;
}

void sub_1001B1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_100216144();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_1001B2208(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    isa = sub_100216B14().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_1001B22FC(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(void *, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, void *), uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = _Block_copy(aBlock);
  v22 = sub_100216BB4();
  _Block_copy(v21);
  v23 = a3;

  a6(a3, v22, a1, v21);
  _Block_release(v21);
  _Block_release(v21);

  a1, v24, v25, v26, v27, v28, v29, v30;

  v22, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

void sub_1001B24C8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = sub_100216B14().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = sub_100216B14().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_100216144();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

void sub_1001B261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_100216B14().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1001B26B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  if (a7)
  {
    v9 = a2;
    v10 = a3;
    v11 = a1;
    v12 = a6;
    v13 = a5;
    v14 = a4;
    swift_getErrorValue();
    v15 = sub_1001ADD74(v18, v19);
    a2 = v9;
    a3 = v10;
    a4 = v14;
    a5 = v13;
    a6 = v12;
    v16 = v15;
    a1 = v11;
  }

  else
  {
    v16 = 0;
  }

  a8(a1, a2, a3, a4, a5, a6, v16);
}

void sub_1001B278C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if (a2 >> 60 != 15)
  {
    isa = sub_100216204().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v11 = sub_100216964();
  }

LABEL_6:
  if (a6 >> 60 == 15)
  {
    v13 = 0;
    if (a7)
    {
LABEL_8:
      v14 = sub_100216144();
      goto LABEL_11;
    }
  }

  else
  {
    v13 = sub_100216204().super.isa;
    if (a7)
    {
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = v14;
  (*(a8 + 16))(a8, isa, v11, v13);
}

uint64_t sub_1001B2890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

void sub_1001B2AC8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_10006094C();
    isa = sub_1002168C4().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1001B2D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0x766F636552746573, 0xEE0079654B797265, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

void sub_1001B2E14(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, unint64_t *a8, void *a9, void (*a10)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, void *), void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = _Block_copy(aBlock);
  v22 = sub_100216974();
  v24 = v23;
  v25 = sub_100216974();
  v27 = v26;
  sub_10000200C(0, a8, a9);
  v28 = sub_100216B24();
  _Block_copy(v21);
  v29 = a3;

  a10(a3, v22, v24, v25, v27, v28, a1, v21);
  _Block_release(v21);
  _Block_release(v21);

  a1, v30, v31, v32, v33, v34, v35, v36;
  v24, v37, v38, v39, v40, v41, v42, v43, v58, a10, v61, v63, v65, v67, v69, v71, v73, v75;
  v27, v44, v45, v46, v47, v48, v49, v50, v59, v60, v62, v64, v66, v68, v70, v72, v74, v76;

  v28, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

uint64_t sub_1001B2F4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D8E0, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

void sub_1001B31E4(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, a5, a6);
    isa = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v10 = sub_100216144();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1001B3290(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D8C0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001B335C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD000000000000019, 0x800000010023D8A0, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

uint64_t sub_1001B3438(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5, void (*a6)(void *, char *, _TtC18TrustedPeersHelper6Client *, void *))
{
  v10 = sub_1002163D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  sub_1002163C4();
  _Block_copy(v15);
  v16 = a3;

  a6(a3, v14, a1, v15);
  _Block_release(v15);
  _Block_release(v15);

  a1, v17, v18, v19, v20, v21, v22, v23;
  return (*(v11 + 8))(v14, v10);
}

void sub_1001B3804(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_100216204().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_1001B3B1C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    isa = sub_1002168C4().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1001B3C24(uint64_t a1, void (*a2)(id))
{
  if (a1)
  {
    swift_getErrorValue();
    v3 = sub_1001ADD74(v5, v6);
  }

  else
  {
    v3 = 0;
  }

  a2(v3);
}

void sub_1001B3CB0(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, void *), uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = _Block_copy(aBlock);
  v22 = sub_100216974();
  v24 = v23;
  _Block_copy(v21);
  v25 = a3;

  a6(a3, v22, v24, a1, v21);
  _Block_release(v21);
  _Block_release(v21);

  a1, v26, v27, v28, v29, v30, v31, v32;

  v24, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

void sub_1001B3D8C(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(void *, uint64_t, _TtC18TrustedPeersHelper6Client *, uint64_t, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, void *), uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v21 = _Block_copy(aBlock);
  v22 = sub_100216974();
  v24 = v23;
  v25 = sub_100216974();
  v27 = v26;
  _Block_copy(v21);
  v28 = a3;

  a7(a3, v22, v24, v25, v27, a1, v21);
  _Block_release(v21);
  _Block_release(v21);

  a1, v29, v30, v31, v32, v33, v34, v35;
  v24, v36, v37, v38, v39, v40, v41, v42, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59;

  v27, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

uint64_t sub_1001B3E94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_1001ADD74(v7, v8);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

uint64_t sub_1001B3F38(char a1, uint64_t a2, void (*a3)(void, id))
{
  if (a2)
  {
    swift_getErrorValue();
    v5 = sub_1001ADD74(v7, v8);
  }

  else
  {
    v5 = 0;
  }

  a3(a1 & 1, v5);
}

uint64_t sub_1001B3FDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

uint64_t sub_1001B4098(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

void sub_1001B4154(_TtC18TrustedPeersHelper6Client *a1, int a2, void *a3, uint64_t a4, void *aBlock, unint64_t *a6, void *a7, void (*a8)(void *, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, void *), void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v23 = _Block_copy(aBlock);
  sub_10000200C(0, a6, a7);
  v24 = sub_100216B24();
  _Block_copy(v23);
  v25 = a3;

  a8(a3, v24, a1, v23);
  _Block_release(v23);
  _Block_release(v23);

  a1, v26, v27, v28, v29, v30, v31, v32;

  v24, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

void sub_1001B422C(objc_class *a1, Class a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, a5, a6);
    isa = sub_100216B14().super.isa;
  }

  if (a2)
  {
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    a2 = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v10 = sub_100216144();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1001B4308()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

void *sub_1001B436C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1001B43B8(a1, a2);
  sub_1001B44E8(&off_100276008);
  return v3;
}

void *sub_1001B43B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1001B45D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100217034();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100216A44();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001B45D4(v10, 0);
        result = sub_100216FC4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1001B45D4(uint64_t a1, uint64_t a2)
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

  sub_10001148C(&qword_10029DE88, &qword_100226B20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1001B473C(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, _TtC18TrustedPeersHelper6Client *a6, void *a7)
{
  if (a7)
  {
    swift_errorRetain();
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029DBB0);
    swift_errorRetain();

    v13 = sub_100216754();
    v14 = sub_100216C74();
    a6, v15, v16, v17, v18, v19, v20, v21, v104, a3, a5, v137, v142, v148, v149, v150, v151, v152;
    a4, v22, v23, v24, v25, v26, v27, v28, v105, v116, oslogc, v138, v143, v148, v149, v150, v151, v152;
    a2, v29, v30, v31, v32, v33, v34, v35, v106, v117, oslogd, v139, v144, v148, v149, v150, v151, v152;

    if (os_log_type_enabled(v13, v14))
    {
      v36 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v36 = 136446722;
      *(v36 + 4) = sub_100005FB0(a1, a2, &v148);
      *(v36 + 12) = 2082;
      sub_100216FD4(16);
      0xE000000000000000, v37, v38, v39, v40, v41, v42, v43, v107, v118, osloga, 0, 0xE000000000000000, v148, v149, v150, v151, v152;
      v154._countAndFlagsBits = v119;
      v154._object = a4;
      sub_100216A14(v154);
      v155._countAndFlagsBits = 44;
      v155._object = 0xE100000000000000;
      sub_100216A14(v155);
      v156._countAndFlagsBits = osloge;
      v156._object = a6;
      sub_100216A14(v156);
      v157._countAndFlagsBits = 41;
      v157._object = 0xE100000000000000;
      sub_100216A14(v157);
      v44 = sub_100005FB0(0x656E6961746E6F43, 0xEA00000000002872, &v148);
      0xEA00000000002872, v45, v46, v47, v48, v49, v50, v51, v108, v119, osloge, 0x656E6961746E6F43, 0xEA00000000002872, v148, v149, v150, v151, v152;
      *(v36 + 14) = v44;
      *(v36 + 22) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &v148);
      v54, v56, v57, v58, v59, v60, v61, v62, v109, v120, oslogf, a7, v145, v148, v149, v150, v151, v152;
      *(v36 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s errored for %{public}s: %{public}s", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v65 = sub_100216774();
    sub_100002648(v65, qword_10029DBB0);

    oslogg = sub_100216754();
    v66 = sub_100216C54();
    a6, v67, v68, v69, v70, v71, v72, v73, v104, v114, oslogg, v137, v142, v148, v149, v150, v151, v152;
    a4, v74, v75, v76, v77, v78, v79, v80, v110, v121, oslogh, v140, v146, v148, v149, v150, v151, v152;
    a2, v81, v82, v83, v84, v85, v86, v87, v111, v122, oslogi, v141, v147, v148, v149, v150, v151, v152;
    if (os_log_type_enabled(oslogb, v66))
    {
      v88 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v88 = 136446466;
      *(v88 + 4) = sub_100005FB0(a1, a2, &v148);
      *(v88 + 12) = 2082;
      sub_100216FD4(16);
      0xE000000000000000, v89, v90, v91, v92, v93, v94, v95, v112, v123, oslogb, 0, 0xE000000000000000, v148, v149, v150, v151, v152;
      v158._countAndFlagsBits = a3;
      v158._object = a4;
      sub_100216A14(v158);
      v159._countAndFlagsBits = 44;
      v159._object = 0xE100000000000000;
      sub_100216A14(v159);
      v160._countAndFlagsBits = a5;
      v160._object = a6;
      sub_100216A14(v160);
      v161._countAndFlagsBits = 41;
      v161._object = 0xE100000000000000;
      sub_100216A14(v161);
      v96 = sub_100005FB0(0x656E6961746E6F43, 0xEA00000000002872, &v148);
      0xEA00000000002872, v97, v98, v99, v100, v101, v102, v103, v113, v124, oslogj, 0x656E6961746E6F43, 0xEA00000000002872, v148, v149, v150, v151, v152;
      *(v88 + 14) = v96;
      _os_log_impl(&_mh_execute_header, oslogk, v66, "%{public}s finished for %{public}s", v88, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1001B4C3C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a2)
  {
    swift_getErrorValue();
    v5 = sub_1001ADD74(v8, v9);
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a1)
  {
LABEL_3:
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    isa = sub_1002168C4().super.isa;
  }

LABEL_4:
  if (v5)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, isa, v6);
}

void sub_1001B4D20(void *a1, void *a2, void *a3, void (**a4)(void, void))
{
  v128 = a2;
  v137 = swift_allocObject();
  *v137->endpoint = a4;
  _Block_copy(a4);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v135 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v139 = v14;
    *v13 = 136446210;
    v15 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v16 = sub_100216994();
    v18 = v17;
    v19 = sub_100005FB0(v16, v17, &v139);
    v18, v20, v21, v22, v23, v24, v25, v26, v120, v125, v128, v130, v133, v135, v137, a1, v139, v140;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Dumping for %{public}s", v13, 0xCu);
    sub_100006128(v14, v27, v28, v29, v30, v31, v32, v33);

    a3 = v12;
  }

  v34 = objc_autoreleasePoolPush();
  if (a1)
  {
    v131 = v34;
    v35 = a3[3];
    v36 = v9;
    v37 = [v36 cloudkitContainerName];
    v121 = a3;
    v38 = sub_100216974();
    v40 = v39;

    v41 = [v36 octagonContextID];
    v42 = sub_100216974();
    v44 = v43;

    __chkstk_darwin(v45, v46);
    type metadata accessor for Container();
    sub_100216CD4();

    v44, v79, v80, v81, v82, v83, v84, v85, v110, v112, v35, v38, v40, v42, v44, v36, v121, a4;
    v40, v86, v87, v88, v89, v90, v91, v92, v111, v113, v114, v115, v116, v117, v118, v119, v123, v127;
    v93 = v139;
    v94 = swift_allocObject();
    *(v94 + 16) = v124;
    *(v94 + 24) = v93;
    *(v94 + 32) = sub_1001D1C78;
    *(v94 + 40) = v137;

    v95 = v93;

    sub_10011B130(v128, sub_1001D18D0, v94);

    v94, v96, v97, v98, v99, v100, v101, v102;
    objc_autoreleasePoolPop(v131);
  }

  else
  {
    v47 = v34;
    sub_1000561D0();
    v48 = swift_allocError();
    *v49 = xmmword_100226AD0;
    *(v49 + 16) = 13;
    swift_willThrow();
    objc_autoreleasePoolPop(v47);
    v50 = v9;
    swift_errorRetain();
    v51 = sub_100216754();
    v52 = sub_100216C74();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 136446466;
      v139 = v54;
      v55 = v50;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v56 = sub_100216994();
      v58 = v57;
      v59 = sub_100005FB0(v56, v57, &v139);
      v58, v60, v61, v62, v63, v64, v65, v66, v120, v125, v128, v130, 0, v135, v137, 0, v139, v140;
      *(v53 + 4) = v59;
      *(v53 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v67 = sub_100216994();
      v69 = v68;
      v70 = sub_100005FB0(v67, v68, &v139);
      v69, v71, v72, v73, v74, v75, v76, v77, v122, v126, v129, v132, v134, v136, v138, v48, v139, v140;
      *(v53 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v51, v52, "Dumping failed for %{public}s: %{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v141, v142);
    v78 = sub_100216144();
    (a4)[2](a4, v78);
  }

  v137, v103, v104, v105, v106, v107, v108, v109;
}

void sub_1001B5284(void *a1, void *a2, void (**a3)(const void *, void, void *))
{
  v6 = swift_allocObject();
  *v6->endpoint = a3;
  v164 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v162 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446210;
    v172 = a1;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25, v150, v153, v157, v159, v162, v164, aBlock, v167, v168, v169;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "honorIDMSListChanges for %{public}s", v12, 0xCu);
    sub_100006128(v13, v26, v27, v28, v29, v30, v31, v32);
  }

  if (a1)
  {
    v160 = v6;
    v33 = a2[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v82, v83, v84, v85, v86, v87, v88, v140, v142, v33, v36, v38, v40, v42, v34, v150, a2;
    v38, v89, v90, v91, v92, v93, v94, v95, v141, v143, v144, v145, v146, v147, v148, v149, v152, v155;
    v96 = aBlock;
    v97 = swift_allocObject();
    *(v97 + 16) = v156;
    *(v97 + 24) = v96;
    *(v97 + 32) = sub_1001D1BA8;
    *(v97 + 40) = v160;
    v98 = *&v96[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v99 = swift_allocObject();
    *(v99 + 16) = sub_1001D1844;
    *(v99 + 24) = v97;
    *(v99 + 32) = v96;
    v100 = swift_allocObject();
    *v100->endpoint = sub_1001D1850;
    *v100->containerMap = v99;
    v170 = sub_1000574B4;
    v171 = v100;
    aBlock = _NSConcreteStackBlock;
    v167 = 1107296256;
    v168 = sub_100109050;
    v169 = &unk_1002889E8;
    v101 = _Block_copy(&aBlock);
    v102 = v171;
    v103 = v96;

    v102, v104, v105, v106, v107, v108, v109, v110;
    [v98 performBlockAndWait:v101];
    _Block_release(v101);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v160, v112, v113, v114, v115, v116, v117, v118;

    v97, v119, v120, v121, v122, v123, v124, v125;
    v99, v126, v127, v128, v129, v130, v131, v132;
    v100, v133, v134, v135, v136, v137, v138, v139;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v45 = swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v9;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v50 = 136446466;
      v172 = 0;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &aBlock);
      v54, v56, v57, v58, v59, v60, v61, v62, v150, v153, v157, v159, v162, v164, aBlock, v167, v168, v169;
      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      v172 = v45;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &aBlock);
      v65, v67, v68, v69, v70, v71, v72, v73, v151, v154, v158, v161, v163, v165, aBlock, v167, v168, v169;
      *(v50 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v48, v49, "honorIDMSListChanges failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v173, v174);
    v74 = sub_100216144();
    v164[2](v164, 0, v74);

    v6, v75, v76, v77, v78, v79, v80, v81;
  }
}

void sub_1001B58F8(void *a1, void *a2, void *a3, void *a4, void (**a5)(void, void, void))
{
  v130 = a2;
  v132 = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  _Block_copy(a5);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  v10 = sub_100002648(v9, qword_10029DBB0);
  v11 = a1;
  v134 = v10;
  v12 = sub_100216754();
  v13 = sub_100216C54();

  v136 = v8;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a4;
    v16 = swift_slowAlloc();
    v138 = v16;
    *v14 = 136446210;
    v17 = v11;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v18 = sub_100216994();
    v20 = v19;
    v21 = sub_100005FB0(v18, v19, &v138);
    v20, v22, v23, v24, v25, v26, v27, v28, v120, v125, v128, v130, v132, v134, v136, a1, v138, v139;
    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Finding bottleID for %{public}s", v14, 0xCu);
    sub_100006128(v16, v29, v30, v31, v32, v33, v34, v35);
    a4 = v15;
    v8 = v136;
  }

  if (a1)
  {
    v36 = a4[3];
    v37 = v11;
    v38 = [v37 cloudkitContainerName];
    v39 = sub_100216974();
    v41 = v40;

    v42 = [v37 octagonContextID];
    v121 = a4;
    v43 = sub_100216974();
    v45 = v44;

    __chkstk_darwin(v46, v47);
    type metadata accessor for Container();
    sub_100216CD4();

    v45, v78, v79, v80, v81, v82, v83, v84, v110, v112, v36, v39, v41, v43, v45, v37, v121, a1;
    v41, v85, v86, v87, v88, v89, v90, v91, v111, v113, v114, v115, v116, v117, v118, v119, v123, v127;
    v92 = v138;
    v93 = swift_allocObject();
    *v93->endpoint = v124;
    *v93->containerMap = v92;
    *v93[1]._TtCs12_SwiftObject_opaque = sub_1001D1830;
    *&v93[1]._TtCs12_SwiftObject_opaque[8] = v136;

    v94 = v92;

    sub_1000557C8(v130, v132, sub_1001D1838, v93);
    v136, v95, v96, v97, v98, v99, v100, v101;

    v109 = v93;
  }

  else
  {
    sub_1000561D0();
    v48 = swift_allocError();
    *v49 = xmmword_100226AD0;
    *(v49 + 16) = 13;
    swift_willThrow();
    v50 = v11;
    swift_errorRetain();
    v51 = sub_100216754();
    v52 = sub_100216C74();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v53 = 136446466;
      v54 = v50;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v55 = sub_100216994();
      v57 = v56;
      v58 = sub_100005FB0(v55, v56, &v138);
      v57, v59, v60, v61, v62, v63, v64, v65, v120, v125, v128, v130, v132, v134, v136, 0, v138, v139;
      *(v53 + 4) = v58;
      *(v53 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v66 = sub_100216994();
      v68 = v67;
      v69 = sub_100005FB0(v66, v67, &v138);
      v68, v70, v71, v72, v73, v74, v75, v76, v122, v126, v129, v131, v133, v135, v137, v48, v138, v139;
      *(v53 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v51, v52, "Finding bottleID failed for %{public}s: %{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v140, v141);
    v77 = sub_100216144();
    (a5)[2](a5, 0, v77);

    v109 = v8;
  }

  v109, v102, v103, v104, v105, v106, v107, v108;
}

void sub_1001B5E48(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v129 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v127 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v131 = v13;
    *v12 = 136446210;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &v131);
    v17, v19, v20, v21, v22, v23, v24, v25, v117, v121, v124, v127, v129, a1, v131, v132, v133, v134;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Finding deviceNames for %{public}s", v12, 0xCu);
    sub_100006128(v13, v26, v27, v28, v29, v30, v31, v32);
  }

  if (a1)
  {
    v125 = v6;
    v33 = a2[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v75, v76, v77, v78, v79, v80, v81, v107, v109, v33, v36, v38, v40, v42, v34, a2, a1;
    v38, v82, v83, v84, v85, v86, v87, v88, v108, v110, v111, v112, v113, v114, v115, v116, v119, v123;
    v89 = v131;
    v90 = swift_allocObject();
    *v90->endpoint = v120;
    *v90->containerMap = v89;
    *v90[1]._TtCs12_SwiftObject_opaque = sub_1001D181C;
    *&v90[1]._TtCs12_SwiftObject_opaque[8] = v125;

    v91 = v89;

    sub_10011E6F8(sub_1001D1824, v90);
    v125, v92, v93, v94, v95, v96, v97, v98;

    v106 = v90;
  }

  else
  {
    sub_1000561D0();
    v45 = swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v9;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v50 = 136446466;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &v131);
      v54, v56, v57, v58, v59, v60, v61, v62, v117, v121, v124, v127, v129, 0, v131, v132, v133, v134;
      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &v131);
      v65, v67, v68, v69, v70, v71, v72, v73, v118, v122, v126, v128, v130, v45, v131, v132, v133, v134;
      *(v50 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v48, v49, "Finding deviceNames failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v133, v134);
    v74 = sub_100216144();
    (*(v129 + 2))(v129, 0, v74);

    v106 = v6;
  }

  v106, v99, v100, v101, v102, v103, v104, v105;
}

void sub_1001B6380(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = a3;
  if (a1)
  {
    v169 = v6;
    v8 = *(a2 + 24);
    _Block_copy(a3);
    v9 = a1;
    v10 = [v9 cloudkitContainerName];
    v11 = sub_100216974();
    v13 = v12;

    v14 = [v9 octagonContextID];
    v15 = sub_100216974();
    v17 = v16;

    __chkstk_darwin(v18, v19);
    type metadata accessor for Container();
    sub_100216CD4();

    v17, v78, v79, v80, v81, v82, v83, v84, v153, v155, v8, v11, v13, v15, v17, v9, a3, v169;
    v13, v85, v86, v87, v88, v89, v90, v91, v154, v156, v157, v158, v159, v160, v162, v163, v167, v172;
    v92 = aBlock;
    v93 = swift_allocObject();
    *v93->endpoint = sub_1001D0904;
    *v93->containerMap = v173;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v94 = v92;
    v95 = sub_10019C8E0(v94, 0xD000000000000013, 0x800000010023CDC0);

    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = sub_1001D1B98;
    *(v96 + 32) = v93;
    v97 = *&v94[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v98 = swift_allocObject();
    *(v98 + 16) = v94;
    *(v98 + 24) = sub_1001D1804;
    *(v98 + 32) = v96;
    v99 = swift_allocObject();
    *v99->endpoint = sub_1001D1810;
    *v99->containerMap = v98;
    v178 = sub_1000574B4;
    v179 = v99;
    aBlock = _NSConcreteStackBlock;
    v175 = 1107296256;
    v176 = sub_100109050;
    v177 = &unk_100288880;
    v100 = _Block_copy(&aBlock);
    v101 = v179;
    v102 = v94;

    v101, v103, v104, v105, v106, v107, v108, v109;
    [v97 performBlockAndWait:v100];
    v96, v110, v111, v112, v113, v114, v115, v116;
    v95, v117, v118, v119, v120, v121, v122, v123;
    _Block_release(v100);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v173, v125, v126, v127, v128, v129, v130, v131;

    v93, v132, v133, v134, v135, v136, v137, v138;
    v98, v139, v140, v141, v142, v143, v144, v145;
    v99, v146, v147, v148, v149, v150, v151, v152;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v20 = swift_allocError();
    *v21 = xmmword_100226AD0;
    *(v21 + 16) = 13;
    swift_willThrow();
    _Block_copy(a3);
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029DBB0);
    v23 = 0;
    swift_errorRetain();
    v24 = sub_100216754();
    v25 = sub_100216C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v26 = 136446466;
      v180 = 0;
      v27 = v23;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v28 = sub_100216994();
      v30 = v29;
      v31 = sub_100005FB0(v28, v29, &aBlock);
      v30, v32, v33, v34, v35, v36, v37, v38, v164, v168, aBlock, v175, v176, v177, v178, v179, v180, v181;
      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v180 = v20;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v39 = sub_100216994();
      v41 = v40;
      v42 = sub_100005FB0(v39, v40, &aBlock);
      v41, v43, v44, v45, v46, v47, v48, v49, v165, v170, aBlock, v175, v176, v177, v178, v179, v180, v181;
      *(v26 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v24, v25, "Trust status failed for %{public}s: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v50 = sub_100019974(_swiftEmptyArrayStorage);
    v51 = sub_100019974(_swiftEmptyArrayStorage);
    v52 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    isa = sub_1002168C4().super.isa;
    v50, v54, v55, v56, v57, v58, v59, v60, v164, v168, aBlock, v175, v176, v177, v178, v179, v180, v181;
    v61 = sub_1002168C4().super.isa;
    v51, v62, v63, v64, v65, v66, v67, v68, v166, v171, aBlock, v175, v176, v177, v178, v179, v180, v181;
    LOBYTE(v161) = 0;
    v69 = [v52 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v61 isExcluded:0 isLocked:v161];

    swift_getErrorValue();
    sub_1001ADD74(v182, v183);
    v70 = sub_100216144();
    (a3)[2](a3, v69, v70);

    v7, v71, v72, v73, v74, v75, v76, v77;
  }
}

void sub_1001B6A58(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetch Trust State for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D17DC;
    *(v89 + 24) = v123;

    sub_100118CDC(sub_1001D17E4, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "Fetch Trust State failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001B6F80(char *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, char a9, unsigned __int8 a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, char a19, void *a20, const void *a21)
{
  LODWORD(v237) = a8;
  HIDWORD(v254) = a7;
  v250 = a5;
  v246 = a3;
  v242 = a2;
  v24 = swift_allocObject();
  *v24->endpoint = a21;
  _Block_copy(a21);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v25 = sub_100216774();
  sub_100002648(v25, qword_10029DBB0);
  v26 = a1;
  v27 = sub_100216754();
  v28 = sub_100216C54();

  v258 = a6;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v24;
    v31 = a4;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v29 = 136446210;
    v267[0] = a1;
    v33 = v26;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v34 = sub_100216994();
    v36 = v35;
    v37 = sub_100005FB0(v34, v35, aBlock);
    v36, v38, v39, v40, v41, v42, v43, v44, v216, v221, v227, v232, v237, v242, v246, v250, v254, v258;
    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Resetting for %{public}s", v29, 0xCu);
    sub_100006128(v32, v45, v46, v47, v48, v49, v50, v51);
    a4 = v31;
    v24 = v30;
  }

  if (a1)
  {
    v228 = a4;
    v262 = v24;
    v52 = a20[3];
    v53 = v26;
    v54 = [v53 cloudkitContainerName];
    v55 = sub_100216974();
    v57 = v56;

    v58 = [v53 octagonContextID];
    v59 = sub_100216974();
    v61 = v60;

    __chkstk_darwin(v62, v63);
    type metadata accessor for Container();
    sub_100216CD4();

    v61, v101, v102, v103, v104, v105, v106, v107, v205, v207, v52, v55, v57, v59, v61, v53, v216, a20;
    v57, v108, v109, v110, v111, v112, v113, v114, v206, v208, v209, v210, v211, v212, v213, v215, v218, v223;
    v115 = aBlock[0];
    v116 = swift_allocObject();
    *v116->endpoint = v224;
    *v116->containerMap = v115;
    v263 = v116;
    *v116[1]._TtCs12_SwiftObject_opaque = sub_1001D1C78;
    *&v116[1]._TtCs12_SwiftObject_opaque[8] = v262;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v117 = v115;

    v264 = sub_10019C8E0(v117, 0xD0000000000000BBLL, 0x800000010023CD00);
    v234 = v117;

    sub_10001148C(&qword_10029DEB8, &qword_100226B48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    *(inited + 32) = sub_100216974();
    *(inited + 40) = v119;
    LODWORD(v224) = a10;
    *(inited + 48) = sub_100216B84();
    *(inited + 56) = sub_100216974();
    *(inited + 64) = v120;
    *(inited + 72) = sub_100216B84();
    v121 = sub_100019974(inited);
    swift_setDeallocating();
    sub_10001148C(&qword_10029DEC0, &unk_100226B50);
    swift_arrayDestroy();
    v122 = sub_1001AD230(v121);
    v121, v123, v124, v125, v126, v127, v128, v129, v219, v224, v228, v234, v237, v242, v246, v250, v254, v258;
    v130 = kSecurityRTCEventNameResetTPH;
    sub_1001D0674();
    v132 = v131;
    v133.super.isa = sub_1002168C4().super.isa;
    v122, v134, v135, v136, v137, v138, v139, v140, v220, v225, v230, v235, v239, v244, v248, v252, v256, v260;
    if (a14)
    {
      v141 = sub_100216964();
    }

    else
    {
      v141 = 0;
    }

    v142 = a18;
    if (a16)
    {
      v143 = sub_100216964();
    }

    else
    {
      v143 = 0;
    }

    v144 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a18)
    {
      v142 = sub_100216964();
    }

    LOBYTE(v214) = a19 & 1;
    v145 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v133.super.isa altDSID:v141 flowID:v143 deviceSessionID:v142 eventName:v130 testsAreEnabled:v132 canSendMetrics:v214 category:v144];

    v146 = swift_allocObject();
    *(v146 + 16) = v145;
    *(v146 + 24) = v264;
    *(v146 + 32) = sub_1001D1708;
    *(v146 + 40) = v263;
    LODWORD(v267[0]) = 0;
    if (a12 == 1)
    {
      v147 = v226;
      if (v240)
      {
        if (a9)
        {
          v148 = 11;
        }

        else
        {
          v148 = 9;
        }

        if (v226)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (a9)
        {
          v148 = 10;
        }

        else
        {
          v148 = 8;
        }

        if (v226)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v147 = v226;
      if (a12 != 2)
      {
        goto LABEL_38;
      }

      if (v240)
      {
        if (a9)
        {
          v148 = 19;
        }

        else
        {
          v148 = 17;
        }

        if (v226)
        {
LABEL_25:
          v149 = 4;
LABEL_37:
          LODWORD(v267[0]) = v148 | v149;
LABEL_38:
          v241 = *&v236[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v150 = swift_allocObject();
          *(v150 + 16) = v245;
          *(v150 + 24) = v249;
          *(v150 + 32) = v231;
          *(v150 + 40) = v253;
          *(v150 + 48) = v261;
          *(v150 + 56) = v257 & 1;
          *(v150 + 64) = v267;
          *(v150 + 72) = v147 & 1;
          *(v150 + 80) = v236;
          *(v150 + 88) = sub_1001D1788;
          *(v150 + 96) = v146;
          v151 = swift_allocObject();
          *v151->endpoint = sub_1001D1794;
          *v151->containerMap = v150;
          aBlock[4] = sub_1000574B4;
          v266 = v151;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100288740;
          v152 = _Block_copy(aBlock);
          v153 = v266;

          v154 = v236;
          v155 = v145;

          v153, v156, v157, v158, v159, v160, v161, v162;
          [v241 performBlockAndWait:v152];

          v146, v163, v164, v165, v166, v167, v168, v169;
          v264, v170, v171, v172, v173, v174, v175, v176;

          v263, v177, v178, v179, v180, v181, v182, v183;
          _Block_release(v152);
          LOBYTE(v152) = swift_isEscapingClosureAtFileLocation();
          v262, v184, v185, v186, v187, v188, v189, v190;
          v150, v191, v192, v193, v194, v195, v196, v197;
          v151, v198, v199, v200, v201, v202, v203, v204;
          if (v152)
          {
            __break(1u);
          }

          return;
        }
      }

      else
      {
        if (a9)
        {
          v148 = 18;
        }

        else
        {
          v148 = 16;
        }

        if (v226)
        {
          goto LABEL_25;
        }
      }
    }

    v149 = 0;
    goto LABEL_37;
  }

  sub_1000561D0();
  v64 = swift_allocError();
  *v65 = xmmword_100226AD0;
  *(v65 + 16) = 13;
  swift_willThrow();
  v66 = v26;
  swift_errorRetain();
  v67 = sub_100216754();
  v68 = sub_100216C74();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v69 = 136446466;
    v267[0] = 0;
    v70 = v66;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v71 = sub_100216994();
    v73 = v72;
    v74 = sub_100005FB0(v71, v72, aBlock);
    v73, v75, v76, v77, v78, v79, v80, v81, v216, v221, v227, v232, v237, v242, v246, v250, v254, v258;
    *(v69 + 4) = v74;
    *(v69 + 12) = 2082;
    v267[0] = v64;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v82 = sub_100216994();
    v84 = v83;
    v85 = sub_100005FB0(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92, v217, v222, v229, v233, v238, v243, v247, v251, v255, v259;
    *(v69 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v67, v68, "Resetting failed for %{public}s: %{public}s", v69, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  sub_1001ADD74(v267[2], v267[3]);
  v93 = sub_100216144();
  (*(a21 + 2))(a21, v93);

  v24, v94, v95, v96, v97, v98, v99, v100;
}

void sub_1001B7A64(void *a1, int a2, int a3, int a4, int a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *a13, const void *a14)
{
  v226 = a8;
  v232 = a7;
  v223 = a6;
  HIDWORD(v236) = a2;
  v17 = swift_allocObject();
  *v17->endpoint = a14;
  _Block_copy(a14);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  v19 = sub_100002648(v18, qword_10029DBB0);
  v20 = a1;
  v245 = v19;
  v21 = sub_100216754();
  v22 = sub_100216C54();

  LODWORD(v236) = a5;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v17;
    v25 = a4;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v23 = 136446210;
    v252 = a1;
    v27 = v20;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v28 = sub_100216994();
    v30 = v29;
    v31 = sub_100005FB0(v28, v29, aBlock);
    v30, v32, v33, v34, v35, v36, v37, v38, v208, v213, v219, v223, v226, v229, v232, v236, v241, v245;
    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "performCKServerUnreadableDataRemoval for %{public}s", v23, 0xCu);
    sub_100006128(v26, v39, v40, v41, v42, v43, v44, v45);
    a4 = v25;
    v17 = v24;
  }

  if (a1)
  {
    v220 = a1;
    HIDWORD(v213) = a4;
    v46 = a13[3];
    v47 = v20;
    v48 = [v47 cloudkitContainerName];
    v49 = sub_100216974();
    v51 = v50;

    v52 = [v47 octagonContextID];
    v53 = sub_100216974();
    v55 = v54;

    __chkstk_darwin(v56, v57);
    v203 = v53;
    type metadata accessor for Container();
    sub_100216CD4();
    v95 = a9;

    v55, v96, v97, v98, v99, v100, v101, v102, v196, v198, v46, v49, v51, v203, v55, v47, a13, v213;
    v51, v103, v104, v105, v106, v107, v108, v109, v197, v199, v200, v201, v202, v204, v205, v207, v210, v215;
    v110 = aBlock[0];
    v111 = swift_allocObject();
    *(v111 + 16) = v211;
    *(v111 + 24) = v110;
    *(v111 + 32) = sub_1001D1C78;
    *(v111 + 40) = v17;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v112 = v110;

    v249 = sub_10019C8E0(v112, 0xD00000000000008ELL, 0x800000010023CC50);

    sub_10001148C(&qword_10029DEB8, &qword_100226B48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    *(inited + 32) = sub_100216974();
    *(inited + 40) = v114;
    *(inited + 48) = sub_100216B84();
    *(inited + 56) = sub_100216974();
    *(inited + 64) = v115;
    *(inited + 72) = sub_100216B84();
    v116 = sub_100019974(inited);
    swift_setDeallocating();
    sub_10001148C(&qword_10029DEC0, &unk_100226B50);
    swift_arrayDestroy();
    v117 = sub_1001AD230(v116);
    v116, v118, v119, v120, v121, v122, v123, v124, v211, v216, v220, v223, v226, v229, v232, v236, v17, v245;
    v125 = kSecurityRTCEventNamePerformCKServerUnreadableDataRemovalTPH;
    sub_1001D0674();
    LODWORD(v247) = v126;
    v127.super.isa = sub_1002168C4().super.isa;
    v117, v128, v129, v130, v131, v132, v133, v134, v212, v217, v222, v225, v228, v231, v234, v238, v243, v247;
    if (v235)
    {
      v135 = sub_100216964();
    }

    else
    {
      v135 = 0;
    }

    if (a9)
    {
      v95 = sub_100216964();
    }

    v136 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a11)
    {
      v137 = sub_100216964();
    }

    else
    {
      v137 = 0;
    }

    LOBYTE(v206) = a12 & 1;
    v138 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v127.super.isa altDSID:v135 flowID:v95 deviceSessionID:v137 eventName:v125 testsAreEnabled:v248 canSendMetrics:v206 category:v136];

    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = v249;
    *(v139 + 32) = sub_1001D16D8;
    *(v139 + 40) = v111;
    v140 = *&v112[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v141 = swift_allocObject();
    *(v141 + 16) = v240 & 1;
    *(v141 + 17) = v218 & 1;
    *(v141 + 18) = v239 & 1;
    *(v141 + 24) = v112;
    *(v141 + 32) = sub_1001D16E4;
    *(v141 + 40) = v139;
    v142 = swift_allocObject();
    *v142->endpoint = sub_1001D16F0;
    *v142->containerMap = v141;
    aBlock[4] = sub_1000574B4;
    v251 = v142;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100288650;
    v143 = _Block_copy(aBlock);
    v144 = v251;
    v145 = v112;
    v146 = v138;

    v144, v147, v148, v149, v150, v151, v152, v153;
    [v140 performBlockAndWait:v143];

    v139, v154, v155, v156, v157, v158, v159, v160;
    v249, v161, v162, v163, v164, v165, v166, v167;

    v111, v168, v169, v170, v171, v172, v173, v174;
    _Block_release(v143);
    LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();
    v244, v175, v176, v177, v178, v179, v180, v181;
    v141, v182, v183, v184, v185, v186, v187, v188;
    v142, v189, v190, v191, v192, v193, v194, v195;
    if (v143)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v58 = swift_allocError();
    *v59 = xmmword_100226AD0;
    *(v59 + 16) = 13;
    swift_willThrow();
    v60 = v20;
    swift_errorRetain();
    v61 = sub_100216754();
    v62 = sub_100216C74();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v63 = 136446466;
      v252 = 0;
      v64 = v60;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v65 = sub_100216994();
      v67 = v66;
      v68 = sub_100005FB0(v65, v66, aBlock);
      v67, v69, v70, v71, v72, v73, v74, v75, v208, v213, v219, v223, v226, v229, v232, v236, v241, v245;
      *(v63 + 4) = v68;
      *(v63 + 12) = 2082;
      v252 = v58;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v76 = sub_100216994();
      v78 = v77;
      v79 = sub_100005FB0(v76, v77, aBlock);
      v78, v80, v81, v82, v83, v84, v85, v86, v209, v214, v221, v224, v227, v230, v233, v237, v242, v246;
      *(v63 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v61, v62, "performCKServerUnreadableDataRemoval failed for %{public}s: %{public}s", v63, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v253, v254);
    v87 = sub_100216144();
    (*(a14 + 2))(a14, v87);

    v17, v88, v89, v90, v91, v92, v93, v94;
  }
}

void sub_1001B843C(void *a1, void *a2, void (**a3)(const void *, void *))
{
  v6 = swift_allocObject();
  *v6->endpoint = a3;
  v181 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v179 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446210;
    v189 = a1;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25, v167, v170, v174, v176, v179, v181, aBlock, v184, v185, v186;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Performing local reset for %{public}s", v12, 0xCu);
    sub_100006128(v13, v26, v27, v28, v29, v30, v31, v32);
  }

  if (a1)
  {
    v177 = v6;
    v33 = a2[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v82, v83, v84, v85, v86, v87, v88, v157, v159, v33, v36, v38, v40, v42, v34, v167, a2;
    v38, v89, v90, v91, v92, v93, v94, v95, v158, v160, v161, v162, v163, v164, v165, v166, v169, v172;
    v96 = aBlock;
    v97 = swift_allocObject();
    *(v97 + 16) = v173;
    *(v97 + 24) = v96;
    *(v97 + 32) = sub_1001D1C78;
    *(v97 + 40) = v177;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v98 = v96;

    v99 = sub_10019C8E0(v98, 0xD000000000000012, 0x800000010023CC30);
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = sub_1001D1684;
    *(v100 + 32) = v97;
    v101 = *&v98[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    *(v102 + 24) = sub_1001D16C0;
    *(v102 + 32) = v100;
    v103 = swift_allocObject();
    *v103->endpoint = sub_1001D16CC;
    *v103->containerMap = v102;
    v187 = sub_1000574B4;
    v188 = v103;
    aBlock = _NSConcreteStackBlock;
    v184 = 1107296256;
    v185 = sub_100109050;
    v186 = &unk_100288560;
    v104 = _Block_copy(&aBlock);
    v105 = v188;
    v106 = v98;

    v105, v107, v108, v109, v110, v111, v112, v113;
    [v101 performBlockAndWait:v104];
    v100, v114, v115, v116, v117, v118, v119, v120;
    v99, v121, v122, v123, v124, v125, v126, v127;
    _Block_release(v104);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v177, v129, v130, v131, v132, v133, v134, v135;

    v97, v136, v137, v138, v139, v140, v141, v142;
    v102, v143, v144, v145, v146, v147, v148, v149;
    v103, v150, v151, v152, v153, v154, v155, v156;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v45 = swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v9;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v50 = 136446466;
      v189 = 0;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &aBlock);
      v54, v56, v57, v58, v59, v60, v61, v62, v167, v170, v174, v176, v179, v181, aBlock, v184, v185, v186;
      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      v189 = v45;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &aBlock);
      v65, v67, v68, v69, v70, v71, v72, v73, v168, v171, v175, v178, v180, v182, aBlock, v184, v185, v186;
      *(v50 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v48, v49, "Local reset failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v190, v191);
    v74 = sub_100216144();
    v181[2](v181, v74);

    v6, v75, v76, v77, v78, v79, v80, v81;
  }
}

void sub_1001B8B3C(void *a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3, void *a4, uint64_t a5, char a6, void **a7, _TtC18TrustedPeersHelper6Client *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void (**a14)(const void *, void, void *), void *a15, void *a16, uint64_t a17, void *a18, void *a19, void (**a20)(const void *, void, void *))
{
  v25 = swift_allocObject();
  *v25->endpoint = a20;
  _Block_copy(a20);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v318 = sub_100216774();
  sub_100002648(v318, qword_10029DBB0);
  v26 = a1;

  v27 = sub_100216754();
  v28 = sub_100216C54();
  a2, v29, v30, v31, v32, v33, v34, v35, v241, v250, v258, v265, v272, v280, v288, v296, v303, v310;

  v325 = a1;
  v326 = v25;
  v321 = a7;
  v322 = a2;
  if (os_log_type_enabled(v27, v28))
  {
    v36 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v36 = 136446466;
    v333[0] = a1;
    v37 = v26;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v38 = sub_100216994();
    v40 = v39;
    v41 = sub_100005FB0(v38, v39, &aBlock);
    v40, v42, v43, v44, v45, v46, v47, v48, v242, v251, v259, v266, v273, v281, v289, v297, v304, v311;
    *(v36 + 4) = v41;
    *(v36 + 12) = 2082;
    v49 = sub_100216BC4();
    v51 = v50;
    v52 = sub_100005FB0(v49, v50, &aBlock);
    v53 = v51;
    a1 = v325;
    v53, v54, v55, v56, v57, v58, v59, v60, v243, v252, v260, v267, v274, v282, v290, v298, v305, v312;
    *(v36 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v27, v28, "Setting allowed machineIDs for %{public}s to %{public}s", v36, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v317 = a5;
    v61 = a19[3];
    v62 = v26;
    v63 = [v62 cloudkitContainerName];
    v64 = sub_100216974();
    v66 = v65;

    v67 = [v62 octagonContextID];
    v68 = sub_100216974();
    v70 = v69;

    __chkstk_darwin(v71, v72);
    type metadata accessor for Container();
    sub_100216CD4();

    v70, v110, v111, v112, v113, v114, v115, v116, v231, v233, v61, v64, v66, v68, v70, v62, v242, v251;
    v66, v117, v118, v119, v120, v121, v122, v123, v232, v234, v235, v236, v237, v238, v239, v240, v245, v254;
    v124 = aBlock;
    v125 = swift_allocObject();
    v125[2] = a19;
    v125[3] = v124;
    v125[4] = sub_1001D1BB0;
    v125[5] = v326;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v126 = v124;

    v127 = sub_10019C8E0(v126, 0xD0000000000000E7, 0x800000010023DAF0);
    v284 = v126;

    v128 = swift_allocObject();
    v128[2] = v127;
    v128[3] = sub_1001D160C;
    v276 = v128;
    v128[4] = v125;
    v129 = qword_100297540;
    v292 = v127;

    if (v129 != -1)
    {
      swift_once();
    }

    v130 = a17;
    v131 = a15;
    v132 = a11;
    sub_100002648(v318, qword_10029E728);

    v133 = sub_100216754();
    v134 = sub_100216C94();
    a8, v135, v136, v137, v138, v139, v140, v141, v246, a9, a13, a18, v276, v284, v292, v125, a16, a4;
    v322, v142, v143, v144, v145, v146, v147, v148, v247, v255, v262, v269, v277, v285, v293, v300, v307, v314;
    if (os_log_type_enabled(v133, v134))
    {
      v149 = swift_slowAlloc();
      v333[0] = swift_slowAlloc();
      *v149 = 136446466;
      v150 = sub_100216BC4();
      v152 = v151;
      v153 = sub_100005FB0(v150, v151, v333);
      v152, v154, v155, v156, v157, v158, v159, v160, a15, v256, v263, v270, v278, v286, v294, v301, v308, v315;
      *(v149 + 4) = v153;
      *(v149 + 12) = 2082;
      v161 = v321;
      aBlock = v321;
      v328 = a8;

      sub_10001148C(&qword_10029D698, &unk_100226590);
      v162 = sub_100216994();
      v164 = v163;
      v165 = sub_100005FB0(v162, v163, v333);
      v166 = v164;
      v130 = a17;
      v166, v167, v168, v169, v170, v171, v172, v173, v248, v257, v264, v271, v279, v287, v295, v302, v309, v316;
      *(v149 + 14) = v165;
      v131 = v249;
      _os_log_impl(&_mh_execute_header, v133, v134, "Setting allowed machine IDs: %{public}s, version %{public}s", v149, 0x16u);
      swift_arrayDestroy();

      v132 = a11;

      v174 = a8;
      v175 = v322;
    }

    else
    {

      v174 = a8;
      v175 = v322;
      v161 = v321;
    }

    v319 = *&v286[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v176 = swift_allocObject();
    *(v176 + 16) = v286;
    *(v176 + 24) = a3;
    *(v176 + 32) = v315;
    *(v176 + 40) = v317;
    *(v176 + 48) = v175;
    *(v176 + 56) = v131;
    *(v176 + 64) = v308;
    *(v176 + 72) = v263;
    *(v176 + 80) = a14;
    *(v176 + 88) = v256;
    *(v176 + 96) = a10;
    *(v176 + 104) = v132;
    *(v176 + 112) = a12;
    *(v176 + 120) = v130;
    *(v176 + 128) = v270;
    *(v176 + 136) = a6 & 1;
    *(v176 + 144) = v161;
    *(v176 + 152) = v174;
    *(v176 + 160) = sub_1001D1618;
    *(v176 + 168) = v278;
    v177 = swift_allocObject();
    *v177->endpoint = sub_1001D1624;
    *v177->containerMap = v176;
    v331 = sub_1000574B4;
    v332 = v177;
    aBlock = _NSConcreteStackBlock;
    v328 = 1107296256;
    v329 = sub_100109050;
    v330 = &unk_100288470;
    v178 = _Block_copy(&aBlock);
    v179 = v332;

    v180 = v286;

    v179, v181, v182, v183, v184, v185, v186, v187;
    [v319 performBlockAndWait:v178];

    v278, v188, v189, v190, v191, v192, v193, v194;
    v294, v195, v196, v197, v198, v199, v200, v201;
    v301, v202, v203, v204, v205, v206, v207, v208;
    _Block_release(v178);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v326, v210, v211, v212, v213, v214, v215, v216;
    v176, v217, v218, v219, v220, v221, v222, v223;
    v177, v224, v225, v226, v227, v228, v229, v230;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v73 = swift_allocError();
    *v74 = xmmword_100226AD0;
    *(v74 + 16) = 13;
    swift_willThrow();
    v75 = v26;
    swift_errorRetain();
    v76 = sub_100216754();
    v77 = sub_100216C74();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v78 = 136446466;
      v333[0] = v325;
      v79 = v75;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v80 = sub_100216994();
      v82 = v81;
      v83 = sub_100005FB0(v80, v81, &aBlock);
      v82, v84, v85, v86, v87, v88, v89, v90, v242, v251, v259, v266, v273, v281, v289, v297, v304, v311;
      *(v78 + 4) = v83;
      *(v78 + 12) = 2082;
      v333[0] = v73;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v91 = sub_100216994();
      v93 = v92;
      v94 = sub_100005FB0(v91, v92, &aBlock);
      v93, v95, v96, v97, v98, v99, v100, v101, v244, v253, v261, v268, v275, v283, v291, v299, v306, v313;
      *(v78 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v76, v77, "Setting allowed machineIDs failed for %{public}s: %{public}s", v78, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v333[2], v333[3]);
    v102 = sub_100216144();
    a20[2](a20, 0, v102);

    v25, v103, v104, v105, v106, v107, v108, v109;
  }
}

void sub_1001B9634(void *a1, void *a2, void (**a3)(const void *, void *))
{
  v6 = swift_allocObject();
  *v6->endpoint = a3;
  v181 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v179 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446210;
    v189 = a1;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25, v167, v170, v174, v176, v179, v181, aBlock, v184, v185, v186;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Marking MID list as expired for %{public}s", v12, 0xCu);
    sub_100006128(v13, v26, v27, v28, v29, v30, v31, v32);
  }

  if (a1)
  {
    v177 = v6;
    v33 = a2[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v82, v83, v84, v85, v86, v87, v88, v157, v159, v33, v36, v38, v40, v42, v34, v167, a2;
    v38, v89, v90, v91, v92, v93, v94, v95, v158, v160, v161, v162, v163, v164, v165, v166, v169, v172;
    v96 = aBlock;
    v97 = swift_allocObject();
    *(v97 + 16) = v173;
    *(v97 + 24) = v96;
    *(v97 + 32) = sub_1001D1C78;
    *(v97 + 40) = v177;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();

    v98 = v96;

    v99 = sub_10019C8E0(v98, 0xD000000000000028, 0x800000010023DAA0);
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = sub_1001D15E8;
    *(v100 + 32) = v97;
    v101 = *&v98[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    *(v102 + 24) = sub_1001D15F4;
    *(v102 + 32) = v100;
    v103 = swift_allocObject();
    *v103->endpoint = sub_1001D1600;
    *v103->containerMap = v102;
    v187 = sub_1000574B4;
    v188 = v103;
    aBlock = _NSConcreteStackBlock;
    v184 = 1107296256;
    v185 = sub_100109050;
    v186 = &unk_100288380;
    v104 = _Block_copy(&aBlock);
    v105 = v188;
    v106 = v98;

    v105, v107, v108, v109, v110, v111, v112, v113;
    [v101 performBlockAndWait:v104];
    v100, v114, v115, v116, v117, v118, v119, v120;
    v99, v121, v122, v123, v124, v125, v126, v127;
    _Block_release(v104);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v177, v129, v130, v131, v132, v133, v134, v135;

    v97, v136, v137, v138, v139, v140, v141, v142;
    v102, v143, v144, v145, v146, v147, v148, v149;
    v103, v150, v151, v152, v153, v154, v155, v156;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v45 = swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v9;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v50 = 136446466;
      v189 = 0;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &aBlock);
      v54, v56, v57, v58, v59, v60, v61, v62, v167, v170, v174, v176, v179, v181, aBlock, v184, v185, v186;
      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      v189 = v45;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &aBlock);
      v65, v67, v68, v69, v70, v71, v72, v73, v168, v171, v175, v178, v180, v182, aBlock, v184, v185, v186;
      *(v50 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v48, v49, "Marking MID list as expired failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v190, v191);
    v74 = sub_100216144();
    v181[2](v181, v74);

    v6, v75, v76, v77, v78, v79, v80, v81;
  }
}

void sub_1001B9D34(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v129 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  v8 = sub_100002648(v7, qword_10029DBB0);
  v9 = a1;
  v127 = v8;
  v10 = sub_100216754();
  v11 = sub_100216C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v131 = v13;
    *v12 = 136446210;
    v14 = v9;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v15 = sub_100216994();
    v17 = v16;
    v18 = sub_100005FB0(v15, v16, &v131);
    v17, v19, v20, v21, v22, v23, v24, v25, v117, v121, v124, v127, v129, a1, v131, v132, v133, v134;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching allowed machineIDs for %{public}s", v12, 0xCu);
    sub_100006128(v13, v26, v27, v28, v29, v30, v31, v32);
  }

  if (a1)
  {
    v125 = v6;
    v33 = a2[3];
    v34 = v9;
    v35 = [v34 cloudkitContainerName];
    v36 = sub_100216974();
    v38 = v37;

    v39 = [v34 octagonContextID];
    v40 = sub_100216974();
    v42 = v41;

    __chkstk_darwin(v43, v44);
    type metadata accessor for Container();
    sub_100216CD4();

    v42, v75, v76, v77, v78, v79, v80, v81, v107, v109, v33, v36, v38, v40, v42, v34, a2, a1;
    v38, v82, v83, v84, v85, v86, v87, v88, v108, v110, v111, v112, v113, v114, v115, v116, v119, v123;
    v89 = v131;
    v90 = swift_allocObject();
    *v90->endpoint = v120;
    *v90->containerMap = v89;
    *v90[1]._TtCs12_SwiftObject_opaque = sub_1001D15D4;
    *&v90[1]._TtCs12_SwiftObject_opaque[8] = v125;

    v91 = v89;

    sub_1001E6708(sub_1001D15DC, v90);
    v125, v92, v93, v94, v95, v96, v97, v98;

    v106 = v90;
  }

  else
  {
    sub_1000561D0();
    v45 = swift_allocError();
    *v46 = xmmword_100226AD0;
    *(v46 + 16) = 13;
    swift_willThrow();
    v47 = v9;
    swift_errorRetain();
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v50 = 136446466;
      v51 = v47;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v52 = sub_100216994();
      v54 = v53;
      v55 = sub_100005FB0(v52, v53, &v131);
      v54, v56, v57, v58, v59, v60, v61, v62, v117, v121, v124, v127, v129, 0, v131, v132, v133, v134;
      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v63 = sub_100216994();
      v65 = v64;
      v66 = sub_100005FB0(v63, v64, &v131);
      v65, v67, v68, v69, v70, v71, v72, v73, v118, v122, v126, v128, v130, v45, v131, v132, v133, v134;
      *(v50 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v48, v49, "Fetching allowed machineIDs failed for %{public}s: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v133, v134);
    v74 = sub_100216144();
    (*(v129 + 2))(v129, 0, v74);

    v106 = v6;
  }

  v106, v99, v100, v101, v102, v103, v104, v105;
}

void sub_1001BA26C(void *a1, void *a2, void *a3)
{
  v125 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v127 = a3;
  _Block_copy(a3);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  v7 = sub_100002648(v6, qword_10029DBB0);
  v8 = a1;
  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v129 = v12;
    *v11 = 136446210;
    v13 = v8;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v14 = sub_100216994();
    v16 = v15;
    v17 = sub_100005FB0(v14, v15, &v129);
    v16, v18, v19, v20, v21, v22, v23, v24, v115, v118, v122, v125, v127, a1, v129, v130, v131, v132;
    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "retrieving epoch for %{public}s", v11, 0xCu);
    sub_100006128(v12, v25, v26, v27, v28, v29, v30, v31);
  }

  if (a1)
  {
    v119 = a1;
    v123 = v5;
    v32 = v125[3];
    v33 = v8;
    v34 = [v33 cloudkitContainerName];
    v35 = sub_100216974();
    v37 = v36;

    v38 = [v33 octagonContextID];
    v39 = sub_100216974();
    v41 = v40;

    __chkstk_darwin(v42, v43);
    type metadata accessor for Container();
    sub_100216CD4();

    v41, v74, v75, v76, v77, v78, v79, v80, v105, v107, v32, v35, v37, v39, v41, v33, v7, v119;
    v37, v81, v82, v83, v84, v85, v86, v87, v106, v108, v109, v110, v111, v112, v113, v114, v117, v121;
    v88 = v129;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1001D1BAC;
    *(v89 + 24) = v123;

    sub_100126A3C(sub_1001D15B4, v89);
    v123, v90, v91, v92, v93, v94, v95, v96;

    v104 = v89;
  }

  else
  {
    sub_1000561D0();
    v44 = swift_allocError();
    *v45 = xmmword_100226AD0;
    *(v45 + 16) = 13;
    swift_willThrow();
    v46 = v8;
    swift_errorRetain();
    v47 = sub_100216754();
    v48 = sub_100216C74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v49 = 136446466;
      v50 = v46;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v51 = sub_100216994();
      v53 = v52;
      v54 = sub_100005FB0(v51, v52, &v129);
      v53, v55, v56, v57, v58, v59, v60, v61, v115, v118, v122, v125, v127, 0, v129, v130, v131, v132;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v62 = sub_100216994();
      v64 = v63;
      v65 = sub_100005FB0(v62, v63, &v129);
      v64, v66, v67, v68, v69, v70, v71, v72, v116, v120, v124, v126, v128, v44, v129, v130, v131, v132;
      *(v49 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v47, v48, "Epoch retrieval failed for %{public}s: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v131, v132);
    v73 = sub_100216144();
    (*(v127 + 2))(v127, 0, v73);

    v104 = v5;
  }

  v104, v97, v98, v99, v100, v101, v102, v103;
}

void sub_1001BA790(void *a1, void *a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, _TtC18TrustedPeersHelper6Client *a5, uint64_t a6, _TtC18TrustedPeersHelper6Client *a7, _TtC18TrustedPeersHelper6Client *a8, _TtC18TrustedPeersHelper6Client *a9, uint64_t a10, void *a11, uint64_t a12, _TtC18TrustedPeersHelper6Client *a13, void *a14, _TtC18TrustedPeersHelper6Client *a15, void *a16, _TtC18TrustedPeersHelper6Client *a17, int a18, _TtC18TrustedPeersHelper6Client *a19, _TtC18TrustedPeersHelper6Client *a20, _TtC18TrustedPeersHelper6Client *a21, _TtC18TrustedPeersHelper6Client *a22, _TtC18TrustedPeersHelper6Client *a23, unint64_t a24, _TtC18TrustedPeersHelper6Client *a25, void *aBlock)
{
  v28 = aBlock;
  _Block_copy(aBlock);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v29 = sub_100216774();
  sub_100002648(v29, qword_10029DBB0);
  v30 = a1;
  v31 = sub_100216754();
  v32 = sub_100216C54();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v151[0] = v34;
    *v33 = 136446210;
    v35 = v30;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v36 = sub_100216994();
    v38 = v37;
    v39 = sub_100005FB0(v36, v37, v151);
    v38, v40, v41, v42, v43, v44, v45, v46, v121, v124, v128, v130, v132, v134, v136, v138, v140, v142;
    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Preparing new identity for %{public}s", v33, 0xCu);
    sub_100006128(v34, v47, v48, v49, v50, v51, v52, v53);
  }

  if (a1)
  {
    v144 = a8;
    v54 = *a25->containerMap;
    v55 = v30;
    v56 = [v55 cloudkitContainerName];
    v57 = sub_100216974();
    v59 = v58;

    v60 = [v55 octagonContextID];
    v61 = sub_100216974();
    v63 = v62;

    __chkstk_darwin(v64, v65);
    type metadata accessor for Container();
    sub_100216CD4();

    v63, v95, v96, v97, v98, v99, v100, v101, v111, v113, v54, v57, v59, v61, v63, v55, v121, a11;
    v59, v102, v103, v104, v105, v106, v107, v108, v112, v114, v115, v116, v117, v118, v119, v120, v123, v126;
    v109 = v151[0];
    v28 = aBlock;
    _Block_copy(aBlock);

    v110 = v109;
    sub_1001A19A8(a2, a3, a4, a5, a6, a7, v144, a9, a10, v127, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v110, a25, v110, aBlock);
    _Block_release(aBlock);
  }

  else
  {
    sub_1000561D0();
    swift_allocError();
    *v66 = xmmword_100226AD0;
    *(v66 + 16) = 13;
    swift_willThrow();
    v67 = v30;
    swift_errorRetain();
    v68 = sub_100216754();
    v69 = sub_100216C74();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v70 = 136446466;
      v71 = v67;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, v151);
      v74, v76, v77, v78, v79, v80, v81, v82, v121, v124, v128, v130, v132, v134, v136, v138, v140, v142;
      *(v70 + 4) = v75;
      *(v70 + 12) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v83 = sub_100216994();
      v85 = v84;
      v86 = sub_100005FB0(v83, v84, v151);
      v85, v87, v88, v89, v90, v91, v92, v93, v122, v125, v129, v131, v133, v135, v137, v139, v141, v143;
      *(v70 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v68, v69, "Prepare failed for %{public}s: %{public}s", v70, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v151[2], v151[3]);
    v94 = sub_100216144();
    (*(aBlock + 2))(aBlock, 0, 0, 0, 0, 0, 0, v94);
  }

  _Block_release(v28);
}

void sub_1001BAD7C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, int a14, void *a15, void *a16, _TtC18TrustedPeersHelper6Client *a17, void (**a18)(void, void, void, void, void, void, void, void, void, void))
{
  v215 = a2;
  v20 = swift_allocObject();
  *v20->endpoint = a18;
  _Block_copy(a18);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v21 = sub_100216774();
  sub_100002648(v21, qword_10029DBB0);
  v22 = a1;
  v23 = sub_100216754();
  v24 = sub_100216C54();

  v224 = v20;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a7;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446210;
    v227 = a1;
    v28 = v22;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v29 = sub_100216994();
    v30 = a1;
    v32 = v31;
    v33 = sub_100005FB0(v29, v31, aBlock);
    v34 = v32;
    a1 = v30;
    v34, v35, v36, v37, v38, v39, v40, v41, v191, v195, v199, v201, v203, v205, v208, v210, v212, v215;
    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Preparing new identity for inheritance peer %{public}s", v26, 0xCu);
    sub_100006128(v27, v42, v43, v44, v45, v46, v47, v48);

    a7 = v25;
    v20 = v224;
  }

  if (a1)
  {
    v213 = a7;
    v49 = *a17->containerMap;
    v50 = v22;
    v51 = [v50 cloudkitContainerName];
    v52 = sub_100216974();
    v54 = v53;

    v55 = [v50 octagonContextID];
    v56 = sub_100216974();
    v58 = v57;

    __chkstk_darwin(v59, v60);
    type metadata accessor for Container();
    sub_100216CD4();

    v58, v98, v99, v100, v101, v102, v103, v104, v181, v183, v49, v52, v54, v56, v58, v50, a16, a12;
    v54, v105, v106, v107, v108, v109, v110, v111, v182, v184, v185, v186, v187, v188, v189, v190, v193, v197;
    v112 = aBlock[0];
    v113 = swift_allocObject();
    *(v113 + 16) = a17;
    *(v113 + 24) = v112;
    *(v113 + 32) = sub_1001D148C;
    *(v113 + 40) = v224;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v114 = v112;

    v207 = sub_10019C8E0(v114, 0xD0000000000000FDLL, 0x800000010023CA30);

    v115 = swift_allocObject();
    *(v115 + 16) = v207;
    *(v115 + 24) = sub_1001D14C8;
    *(v115 + 32) = v113;
    v116 = swift_allocObject();
    *(v116 + 16) = sub_1001D1510;
    *(v116 + 24) = v115;
    *(v116 + 32) = a16;
    *(v116 + 40) = v114;
    *(v116 + 48) = v215;
    *(v116 + 56) = a3;
    *(v116 + 64) = a4;
    *(v116 + 72) = a5;
    *(v116 + 80) = a12;
    *(v116 + 88) = a14;
    *(v116 + 96) = a13;
    *(v116 + 104) = a15;
    *(v116 + 112) = a6;
    *(v116 + 120) = v213;
    *(v116 + 128) = a8;
    *(v116 + 136) = a9;
    *(v116 + 144) = a10;
    *(v116 + 152) = a11;
    v221 = *&v114[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v117 = swift_allocObject();
    *(v117 + 16) = v114;
    *(v117 + 24) = sub_1001D1558;
    *(v117 + 32) = v116;
    v118 = swift_allocObject();
    *v118->endpoint = sub_1001ACE84;
    *v118->containerMap = v117;
    aBlock[4] = sub_1000574B4;
    v226 = v118;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002881F0;
    v119 = _Block_copy(aBlock);
    v219 = v226;

    v120 = v114;

    v121 = v194;

    v122 = v198;

    v123 = a15;

    v219, v124, v125, v126, v127, v128, v129, v130;
    [v221 performBlockAndWait:v119];
    _Block_release(v119);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v224, v132, v133, v134, v135, v136, v137, v138;

    v113, v139, v140, v141, v142, v143, v144, v145;
    v207, v146, v147, v148, v149, v150, v151, v152;
    v115, v153, v154, v155, v156, v157, v158, v159;
    v116, v160, v161, v162, v163, v164, v165, v166;
    v117, v167, v168, v169, v170, v171, v172, v173;
    v118, v174, v175, v176, v177, v178, v179, v180;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v61 = swift_allocError();
    *v62 = xmmword_100226AD0;
    *(v62 + 16) = 13;
    swift_willThrow();
    v63 = v22;
    swift_errorRetain();
    v64 = sub_100216754();
    v65 = sub_100216C74();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v66 = 136446466;
      v227 = 0;
      v67 = v63;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v68 = sub_100216994();
      v70 = v69;
      v71 = sub_100005FB0(v68, v69, aBlock);
      v70, v72, v73, v74, v75, v76, v77, v78, v191, v195, v199, v201, v203, v205, v208, v210, v212, v215;
      *(v66 + 4) = v71;
      *(v66 + 12) = 2082;
      v227 = v61;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v79 = sub_100216994();
      v81 = v80;
      v82 = sub_100005FB0(v79, v80, aBlock);
      v81, v83, v84, v85, v86, v87, v88, v89, v192, v196, v200, v202, v204, v206, v209, v211, v214, v216;
      *(v66 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v64, v65, "prepareInheritancePeer failed for %{public}s: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v228, v229);
    v90 = sub_100216144();
    (a18)[2](a18, 0, 0, 0, 0, 0, 0, 0, 0, v90);

    v20, v91, v92, v93, v94, v95, v96, v97;
  }
}

void sub_1001BB65C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, _TtC18TrustedPeersHelper6Client *a12, void (**a13)(void, void, void, void, void))
{
  v188 = a5;
  v190 = a7;
  v196 = a4;
  v198 = a6;
  v192 = a2;
  v194 = a3;
  v15 = swift_allocObject();
  *v15->endpoint = a13;
  _Block_copy(a13);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029DBB0);
  v17 = a1;
  v18 = sub_100216754();
  v19 = sub_100216C54();

  v201 = a1;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v204 = a1;
    v22 = v17;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v23 = sub_100216994();
    v25 = v24;
    v26 = sub_100005FB0(v23, v24, aBlock);
    v27 = v25;
    a1 = v201;
    v27, v28, v29, v30, v31, v32, v33, v34, v174, v177, v182, v185, v188, v190, v192, v194, v196, v198;
    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Establishing %{public}s", v20, 0xCu);
    sub_100006128(v21, v35, v36, v37, v38, v39, v40, v41);
  }

  if (a1)
  {
    v186 = a8;
    v200 = v15;
    v42 = *a12->containerMap;
    v43 = v17;
    v44 = [v43 cloudkitContainerName];
    v45 = sub_100216974();
    v47 = v46;

    v48 = [v43 octagonContextID];
    v49 = sub_100216974();
    v51 = v50;

    __chkstk_darwin(v52, v53);
    type metadata accessor for Container();
    sub_100216CD4();

    v51, v91, v92, v93, v94, v95, v96, v97, v164, v166, v42, v45, v47, v49, v51, v43, v174, a12;
    v47, v98, v99, v100, v101, v102, v103, v104, v165, v167, v168, v169, v170, v171, v172, v173, v176, v179;
    v105 = aBlock[0];
    v106 = swift_allocObject();
    *(v106 + 16) = v180;
    *(v106 + 24) = v105;
    *(v106 + 32) = sub_1001D1C54;
    *(v106 + 40) = v200;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v107 = v105;

    v181 = sub_10019C8E0(v107, 0xD000000000000062, 0x800000010023C990);

    v108 = swift_allocObject();
    *(v108 + 16) = v181;
    *(v108 + 24) = sub_1001D140C;
    *(v108 + 32) = v106;
    v184 = *&v107[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v109 = swift_allocObject();
    *(v109 + 16) = v107;
    *(v109 + 24) = v192;
    *(v109 + 32) = v194;
    *(v109 + 40) = v196;
    *(v109 + 48) = v188;
    *(v109 + 56) = v198;
    *(v109 + 64) = v190;
    *(v109 + 72) = v186;
    *(v109 + 80) = a9;
    *(v109 + 88) = a10;
    *(v109 + 96) = a11 & 1;
    *(v109 + 104) = sub_1001D1438;
    *(v109 + 112) = v108;
    v110 = swift_allocObject();
    *v110->endpoint = sub_1001D1444;
    *v110->containerMap = v109;
    aBlock[4] = sub_1000574B4;
    v203 = v110;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002880D8;
    v111 = _Block_copy(aBlock);
    v112 = v203;

    v113 = v107;

    v112, v114, v115, v116, v117, v118, v119, v120;
    [v184 performBlockAndWait:v111];

    v108, v121, v122, v123, v124, v125, v126, v127;
    v181, v128, v129, v130, v131, v132, v133, v134;
    v106, v135, v136, v137, v138, v139, v140, v141;
    _Block_release(v111);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v200, v143, v144, v145, v146, v147, v148, v149;
    v109, v150, v151, v152, v153, v154, v155, v156;
    v110, v157, v158, v159, v160, v161, v162, v163;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v54 = swift_allocError();
    *v55 = xmmword_100226AD0;
    *(v55 + 16) = 13;
    swift_willThrow();
    v56 = v17;
    swift_errorRetain();
    v57 = sub_100216754();
    v58 = sub_100216C74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v59 = 136446466;
      v204 = v201;
      v60 = v56;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v61 = sub_100216994();
      v63 = v62;
      v64 = sub_100005FB0(v61, v62, aBlock);
      v63, v65, v66, v67, v68, v69, v70, v71, v174, v177, v182, v185, v188, v190, v192, v194, v196, v198;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      v204 = v54;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v175, v178, v183, v187, v189, v191, v193, v195, v197, v199;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "Establishing failed for %{public}s: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v205, v206);
    v83 = sub_100216144();
    (a13)[2](a13, 0, 0, 0, v83);

    v15, v84, v85, v86, v87, v88, v89, v90;
  }
}

void sub_1001BBE44(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, _TtC18TrustedPeersHelper6Client *a15, const void *a16, unsigned __int8 a17, void *a18, const void *a19)
{
  v22 = swift_allocObject();
  *v22->endpoint = a19;
  _Block_copy(a19);
  if (qword_100297538 != -1)
  {
    swift_once();
  }

  v23 = sub_100216774();
  sub_100002648(v23, qword_10029DBB0);
  v24 = a1;
  v25 = sub_100216754();
  v26 = sub_100216C54();

  v219 = a8;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    v223 = a1;
    v29 = v24;
    sub_10001148C(&qword_10029DE80, &unk_100226B10);
    v30 = sub_100216994();
    v31 = v22;
    v32 = a7;
    v33 = a1;
    v35 = v34;
    v36 = sub_100005FB0(v30, v34, aBlock);
    v37 = v35;
    a1 = v33;
    a7 = v32;
    v22 = v31;
    v37, v38, v39, v40, v41, v42, v43, v44, v183, v187, v191, v194, v197, v199, v202, v205, v207, v209;
    *(v27 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Vouching %{public}s", v27, 0xCu);
    sub_100006128(v28, v45, v46, v47, v48, v49, v50, v51);
  }

  if (a1)
  {
    v212 = a7;
    v220 = v22;
    v52 = a18[3];
    v53 = v24;
    v54 = [v53 cloudkitContainerName];
    v55 = sub_100216974();
    v57 = v56;

    v58 = [v53 octagonContextID];
    v59 = sub_100216974();
    v61 = v60;

    __chkstk_darwin(v62, v63);
    type metadata accessor for Container();
    sub_100216CD4();

    v61, v101, v102, v103, v104, v105, v106, v107, v173, v175, v52, v55, v57, v59, v61, v53, v183, a11;
    v57, v108, v109, v110, v111, v112, v113, v114, v174, v176, v177, v178, v179, v180, v181, v182, v185, v189;
    v115 = aBlock[0];
    v116 = [v53 altDSID];
    v196 = sub_100216974();
    v193 = v117;

    v118 = swift_allocObject();
    *(v118 + 16) = a18;
    *(v118 + 24) = v115;
    *(v118 + 32) = sub_1001D136C;
    *(v118 + 40) = v220;
    type metadata accessor for Container.SemaphoreWrapper();
    swift_allocObject();
    v119 = v115;

    v186 = sub_10019C8E0(v119, 0xD000000000000083, 0x800000010023C900);

    v120 = swift_allocObject();
    *(v120 + 16) = v186;
    *(v120 + 24) = sub_1001D1374;
    *(v120 + 32) = v118;
    v211 = *&v119[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v121 = swift_allocObject();
    *(v121 + 16) = v119;
    *(v121 + 24) = sub_1001D13A0;
    *(v121 + 32) = v120;
    *(v121 + 40) = a2;
    *(v121 + 48) = a3;
    *(v121 + 56) = a4;
    *(v121 + 64) = a5;
    *(v121 + 72) = a6;
    *(v121 + 80) = v212;
    *(v121 + 88) = v219;
    *(v121 + 96) = a9;
    *(v121 + 104) = a10;
    *(v121 + 112) = a11;
    *(v121 + 120) = v196;
    *(v121 + 128) = v193;
    *(v121 + 136) = a13;
    *(v121 + 144) = a14;
    *(v121 + 152) = a15;
    *(v121 + 160) = a16;
    *(v121 + 168) = a17 & 1;
    *(v121 + 176) = a12;
    v122 = swift_allocObject();
    *v122->endpoint = sub_1001D13AC;
    *v122->containerMap = v121;
    aBlock[4] = sub_1000574B4;
    v222 = v122;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100287FE8;
    v204 = _Block_copy(aBlock);
    v201 = v222;
    v214 = v119;

    sub_100012558(a4, a5);
    sub_100012558(a6, v212);
    sub_100012558(v219, a9);
    sub_100012558(a10, v190);

    v201, v123, v124, v125, v126, v127, v128, v129;
    [v211 performBlockAndWait:v204];

    v120, v130, v131, v132, v133, v134, v135, v136;
    v186, v137, v138, v139, v140, v141, v142, v143;
    v118, v144, v145, v146, v147, v148, v149, v150;
    _Block_release(v204);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v220, v152, v153, v154, v155, v156, v157, v158;
    v121, v159, v160, v161, v162, v163, v164, v165;
    v122, v166, v167, v168, v169, v170, v171, v172;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000561D0();
    v64 = swift_allocError();
    *v65 = xmmword_100226AD0;
    *(v65 + 16) = 13;
    swift_willThrow();
    v66 = v24;
    swift_errorRetain();
    v67 = sub_100216754();
    v68 = sub_100216C74();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v69 = 136446466;
      v223 = 0;
      v70 = v66;
      sub_10001148C(&qword_10029DE80, &unk_100226B10);
      v71 = sub_100216994();
      v73 = v72;
      v74 = sub_100005FB0(v71, v72, aBlock);
      v73, v75, v76, v77, v78, v79, v80, v81, v183, v187, v191, v194, v197, v199, v202, v205, v207, v209;
      *(v69 + 4) = v74;
      *(v69 + 12) = 2082;
      v223 = v64;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v82 = sub_100216994();
      v84 = v83;
      v85 = sub_100005FB0(v82, v83, aBlock);
      v84, v86, v87, v88, v89, v90, v91, v92, v184, v188, v192, v195, v198, v200, v203, v206, v208, v210;
      *(v69 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v67, v68, "Vouching failed for %{public}s: %{public}s", v69, 0x16u);
      swift_arrayDestroy();
    }

    swift_getErrorValue();
    sub_1001ADD74(v224, v225);
    v93 = sub_100216144();
    (*(a19 + 2))(a19, 0, 0, v93);

    v22, v94, v95, v96, v97, v98, v99, v100;
  }
}