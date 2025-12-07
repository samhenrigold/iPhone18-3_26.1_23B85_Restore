void sub_10011A724(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void *a5)
{
  v6 = v5;
  v11 = a1;
  v176 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v12 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v13 = sub_100216964();
  v182 = 0;
  v14 = [v12 peerWithID:v13 error:&v182];

  v173 = a4;
  if (v182)
  {
    v170 = v11;
    v15 = v182;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);

    v17 = v15;
    v18 = sub_100216754();
    v19 = sub_100216C74();

    a3, v20, v21, v22, v23, v24, v25, v26, v154, v158, v162, v165, v170, a4, v176, v180, v182, v183;
    if (os_log_type_enabled(v18, v19))
    {
      v27 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v182 = v166;
      *v27 = 136315394;
      *(v27 + 4) = sub_100005FB0(a2, a3, &v182);
      *(v27 + 12) = 2082;
      v181 = v17;
      v28 = v17;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29 = sub_100216994();
      v30 = a5;
      v31 = a2;
      v32 = a3;
      v34 = v33;
      v35 = sub_100005FB0(v29, v33, &v182);
      v36 = v34;
      a3 = v32;
      a2 = v31;
      a5 = v30;
      v36, v37, v38, v39, v40, v41, v42, v43, v154, v158, v162, v166, v169, v173, v176, v181, v182, v183;
      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error getting trusted peer %s from model: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v6 = 0;
    v11 = v169;
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    v52 = *&v176[v11];
    v53 = sub_100216964();
    v54 = [v52 custodianPeerWithID:v53];

    if (v54)
    {
      v55 = *&v176[v11];
      v56 = [a5 permanentInfo];
      v57 = [a5 stableInfo];
      v182 = 0;
      v58 = [v55 getViewsForCRK:v54 donorPermanentInfo:v56 donorStableInfo:v57 error:&v182];

      v59 = v182;
      if (v58)
      {
        v60 = sub_100216BB4();
        v61 = v59;
      }

      else
      {
        v81 = v182;
        sub_100216154();

        swift_willThrow();

        v6 = 0;
        v60 = &_swiftEmptySetSingleton;
      }

      v82 = v173;
      sub_100012EC8(v60);
      if (v6)
      {
        v60, v83, v84, v85, v86, v87, v88, v89, v154, v158, v162, v165, v169, v173, v176, v180, v182, v183;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v90 = sub_100216774();
        sub_100002648(v90, qword_10029D160);
        swift_errorRetain();
        v91 = sub_100216754();
        v92 = sub_100216C74();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v182 = v94;
          *v93 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v95 = sub_100216994();
          v97 = v96;
          v98 = sub_100005FB0(v95, v96, &v182);
          v97, v99, v100, v101, v102, v103, v104, v105, v155, v159, v164, v168, v172, v174, v177, v6, v182, v183;
          *(v93 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v91, v92, "Unable to add CRK as a trusted peer: %{public}s", v93, 0xCu);
          sub_100006128(v94, v106, v107, v108, v109, v110, v111, v112);
        }

        else
        {
        }
      }

      else
      {
        v60, v83, v84, v85, v86, v87, v88, v89, v154, v158, v162, v165, v169, v173, v176, v180, v182, v183;
        sub_100216B04();
        if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v62 = sub_100216774();
      sub_100002648(v62, qword_10029D160);

      v63 = sub_100216754();
      v64 = sub_100216C54();
      a3, v65, v66, v67, v68, v69, v70, v71, v154, v158, v162, v165, v169, v173, v176, v180, v182, v183;
      if (os_log_type_enabled(v63, v64))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v182 = v73;
        *v72 = 136446210;
        *(v72 + 4) = sub_100005FB0(a2, a3, &v182);
        _os_log_impl(&_mh_execute_header, v63, v64, "No peer for trusted ID %{public}s", v72, 0xCu);
        sub_100006128(v73, v74, v75, v76, v77, v78, v79, v80);
      }
    }

    return;
  }

  v167 = a2;
  v171 = a3;
  v44 = *&v176[v11];
  v45 = v14;
  v46 = [v45 permanentInfo];
  v47 = [v45 stableInfo];
  v182 = 0;
  v48 = [v44 getViewsForPeer:v46 stableInfo:v47 error:&v182];

  v49 = v182;
  if (v48)
  {
    v163 = v5;
    v50 = sub_100216BB4();
    v51 = v49;
  }

  else
  {
    v113 = v182;
    sub_100216154();

    swift_willThrow();

    v50 = 0;
    v163 = 0;
  }

  v114 = [v45 permanentInfo];
  v115 = [v114 signingPubKey];

  v116 = [v115 spki];
  swift_unknownObjectRelease();
  v117 = sub_100216224();
  v156 = v118;
  v160 = v117;

  v119 = [v45 permanentInfo];
  v120 = [v119 encryptionPubKey];

  v121 = [v120 spki];
  swift_unknownObjectRelease();
  v122 = sub_100216224();
  v124 = v123;

  v178 = v45;
  v125 = [v45 stableInfo];
  v126 = [v125 secureElementIdentity];

  if (v50)
  {
    v127 = v50;
  }

  else
  {
    v127 = &_swiftEmptySetSingleton;
  }

  v128 = objc_allocWithZone(TrustedPeersHelperPeer);
  v129 = sub_100216964();
  isa = sub_100216204().super.isa;
  v131 = v122;
  v132 = v124;
  v133 = sub_100216204().super.isa;
  v134 = sub_100216B94().super.isa;
  v127, v135, v136, v137, v138, v139, v140, v141, v156, v160, v163, v167, v171, v173, v178, v180, v182, v183;
  [v128 initWithPeerID:v129 signingSPKI:isa encryptionSPKI:v133 secureElementIdentity:v126 viewList:v134];

  sub_100002BF0(v131, v132, v142, v143, v144, v145, v146, v147);
  sub_100002BF0(v161, v157, v148, v149, v150, v151, v152, v153);

  sub_100216B04();
  if (*((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100216B44();
  }

  sub_100216B64();
}

void sub_10011B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *v7->endpoint = a2;
  *v7->containerMap = a3;
  v8 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v3;
  *(v9 + 32) = sub_1001AC2D0;
  *(v9 + 40) = v7;
  v10 = swift_allocObject();
  *v10->endpoint = sub_1001AC328;
  *v10->containerMap = v9;
  v43[4] = sub_1001ACCC0;
  v44 = v10;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 1107296256;
  v43[2] = sub_100109050;
  v43[3] = &unk_100285A60;
  v11 = _Block_copy(v43);
  v12 = v44;

  swift_unknownObjectRetain();
  v13 = v3;

  v12, v14, v15, v16, v17, v18, v19, v20;
  [v8 performBlockAndWait:v11];
  v7, v21, v22, v23, v24, v25, v26, v27;
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v9, v29, v30, v31, v32, v33, v34, v35;
  v10, v36, v37, v38, v39, v40, v41, v42;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10011B2F8(void *a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v4 = sub_100216C74();
  }

  else
  {
    v4 = sub_100216C54();
  }

  v5 = v4;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);
  swift_errorRetain();
  v7 = sub_100216754();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136446210;
    v10 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v46._countAndFlagsBits = sub_100216994();
      object = v46._object;
      sub_100216A14(v46);
      object, v12, v13, v14, v15, v16, v17, v18, a1, 0x203A726F727265, 0xE700000000000000, v39, v40, v41, v42, v43, v44, v45;

      v19 = v37;
      v10 = v38;
    }

    else
    {
      v19 = 0x73736563637573;
    }

    v20 = sub_100005FB0(v19, v10, &v39);
    v10, v21, v22, v23, v24, v25, v26, v27, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45;
    *(v8 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v5, "dump complete: %{public}s", v8, 0xCu);
    sub_100006128(v9, v28, v29, v30, v31, v32, v33, v34);
  }

  return a2(a1);
}

void sub_10011B4FC(void *a1, id a2, void (*a3)(void), void *a4)
{
  v8 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v229 - v14;
  v16 = xpc_fd_dup(a1);
  type metadata accessor for StreamingEncoderDict();
  swift_allocObject();
  v17 = sub_100106528(v16, 0x7B, 0xE100000000000000, 125, 0xE100000000000000);
  v237 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v18)
  {
    v235 = v17;
    v19 = v18;
    v234 = sub_100216974();
    v21 = v20;
    v236 = a2;
    v22 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    *&v240 = 0;
    v23 = v22;
    v24 = [v23 peerWithID:v19 error:&v240];

    v233 = v15;
    if (v240)
    {
      v25 = v240;

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v26 = sub_100216774();
      sub_100002648(v26, qword_10029D160);
      v27 = v25;
      v28 = sub_100216754();
      v29 = sub_100216C74();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = v21;
        v32 = v12;
        v33 = swift_slowAlloc();
        *v30 = 138543362;
        v34 = v27;
        HIDWORD(v232) = v16;
        v16 = a4;
        v35 = a3;
        v36 = v34;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v37;
        *v33 = v37;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error getting ego peer from model: %{public}@", v30, 0xCu);
        sub_1000114D4(v33, &qword_10029D580, &unk_10021CCC0);
        v12 = v32;
        v21 = v31;

        v27 = v28;
        v28 = v36;
        a3 = v35;
        a4 = v16;
        LODWORD(v16) = HIDWORD(v232);
      }

      a2 = v236;
    }

    else
    {
      if (v24)
      {
        v43 = v24;
        v21, v44, v45, v46, v47, v48, v49, v50, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
        v51 = objc_autoreleasePoolPush();
        sub_100116608(v43, &v243);
        objc_autoreleasePoolPop(v51);
        v52 = v243;
        *(&v241 + 1) = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
        *&v240 = v52;
        v17 = v235;
        sub_1001078BC(1718379891, 0xE400000000000000, &v240);
        a2 = v236;
        v234 = v12;

        goto LABEL_13;
      }

      a2 = v236;
    }

    sub_10001148C(&qword_10029DB48, &qword_1002267D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = 0x444972656570;
    v39 = inited + 32;
    v40 = v234;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v41 = sub_100019860(inited);
    swift_setDeallocating();
    sub_1000114D4(v39, &qword_10029DB50, &qword_1002267E0);
    *(&v241 + 1) = sub_10001148C(&qword_10029DB58, &unk_1002267E8);
    *&v240 = v41;
    v17 = v235;
    sub_1001078BC(1718379891, 0xE400000000000000, &v240);
    v234 = v12;
  }

  else
  {
    v42 = sub_100019254(_swiftEmptyArrayStorage);
    *(&v241 + 1) = sub_10001148C(&unk_10029DB10, &unk_1002267B0);
    *&v240 = v42;
    sub_1001078BC(1718379891, 0xE400000000000000, &v240);
    v234 = v12;
    v233 = v15;
  }

LABEL_13:
  sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
  v53 = v237;
  v54 = [*&v237[a2] egoSponsoredBeneficiaryIDs];
  if (!v54)
  {
    goto LABEL_18;
  }

  *&v240 = 0;
  v55 = v54;
  sub_100216BA4();

  v63 = v240;
  if (!v240)
  {
    goto LABEL_18;
  }

  v64 = *(v240 + 16);
  if (!v64)
  {
    v240, v56, v57, v58, v59, v60, v61, v62, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v65 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v65 = sub_1001830AC(*(v240 + 16), 0);
  v66 = sub_10018FF74(&v240, v65 + 4, v64, v63);
  sub_10000D778(v240, *(&v240 + 1), v241, *(&v241 + 1), v242, v67, v68, v69);
  if (v66 == v64)
  {
LABEL_20:
    v244 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    *&v243 = v65;
    sub_1001078BC(0xD00000000000001ALL, 0x800000010023D090, &v243);
    v70 = &v243;
    goto LABEL_21;
  }

  __break(1u);
LABEL_18:
  *(&v241 + 1) = sub_10001148C(&qword_10029D148, &qword_100225F40);
  *&v240 = _swiftEmptyArrayStorage;
  sub_1001078BC(0xD00000000000001ALL, 0x800000010023D090, &v240);
  v70 = &v240;
LABEL_21:
  sub_1000114D4(v70, &unk_100297770, &unk_10021DF90);
  v71 = [*&v53[a2] distrustedEgoSponsoredBeneficiaryIDs];
  if (!v71)
  {
    goto LABEL_26;
  }

  *&v240 = 0;
  v72 = v71;
  sub_100216BA4();

  v80 = v240;
  if (!v240)
  {
    goto LABEL_26;
  }

  v81 = *(v240 + 16);
  if (!v81)
  {
    v240, v73, v74, v75, v76, v77, v78, v79, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
    v82 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v82 = sub_1001830AC(*(v240 + 16), 0);
  v83 = sub_10018FF74(&v240, v82 + 4, v81, v80);
  sub_10000D778(v240, *(&v240 + 1), v241, *(&v241 + 1), v242, v84, v85, v86);
  if (v83 == v81)
  {
LABEL_28:
    v244 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    *&v243 = v82;
    sub_1001078BC(0xD000000000000024, 0x800000010023D0B0, &v243);
    v87 = a2;
    v88 = &v243;
    goto LABEL_29;
  }

  __break(1u);
LABEL_26:
  *(&v241 + 1) = sub_10001148C(&qword_10029D148, &qword_100225F40);
  *&v240 = _swiftEmptyArrayStorage;
  sub_1001078BC(0xD000000000000024, 0x800000010023D0B0, &v240);
  v87 = a2;
  v88 = &v240;
LABEL_29:
  v89 = sub_1000114D4(v88, &unk_100297770, &unk_10021DF90);
  __chkstk_darwin(v89, v90);
  *(&v229 - 2) = v87;
  sub_100107A88(0x7372656570, 0xE500000000000000, sub_1001AC334);
  __chkstk_darwin(v91, v92);
  *(&v229 - 2) = v87;
  sub_100107A88(0x7372656863756F76, 0xE800000000000000, sub_1001AC350);
  v93 = objc_autoreleasePoolPush();
  sub_10011D790(v17, v87, &v240);
  objc_autoreleasePoolPop(v93);
  v94 = objc_autoreleasePoolPush();
  sub_10011DB24(v87, v17, &v240);
  objc_autoreleasePoolPop(v94);
  v95 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v236 = v87;
  v96 = [*&v87[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] recoverySigningPublicKey];
  if (v96)
  {
    v97 = v96;
    v98 = sub_100216224();
    v100 = v99;

    v101 = &type metadata for Data;
  }

  else
  {
    v98 = 0;
    v100 = 0;
    v101 = 0;
    *&v241 = 0;
  }

  *&v240 = v98;
  *(&v240 + 1) = v100;
  *(&v241 + 1) = v101;
  sub_1001078BC(0xD00000000000001DLL, 0x800000010023D120, &v240);
  sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
  v102 = [*(v236 + v95) recoveryEncryptionPublicKey];
  if (v102)
  {
    v103 = v102;
    v104 = sub_100216224();
    v106 = v105;

    v107 = &type metadata for Data;
  }

  else
  {
    v104 = 0;
    v106 = 0;
    v107 = 0;
    *&v241 = 0;
  }

  *&v240 = v104;
  *(&v240 + 1) = v106;
  *(&v241 + 1) = v107;
  sub_1001078BC(0xD000000000000020, 0x800000010023D140, &v240);
  v235 = v17;
  sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
  v108 = *(v236 + v95);
  *&v243 = 0;
  v109 = [v108 allRegisteredPolicyVersionsWithError:&v243];
  v110 = v243;
  v230 = a3;
  HIDWORD(v232) = v16;
  v229 = a4;
  if (!v109)
  {
    v158 = v243;
    v159 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v160 = sub_100216774();
    sub_100002648(v160, qword_10029D160);
    swift_errorRetain();
    v161 = sub_100216754();
    v162 = sub_100216C74();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v163 = 138543362;
      swift_errorRetain();
      v165 = _swift_stdlib_bridgeErrorToNSError();
      *(v163 + 4) = v165;
      *v164 = v165;
      _os_log_impl(&_mh_execute_header, v161, v162, "Error getting registered policy versions: %{public}@", v163, 0xCu);
      sub_1000114D4(v164, &qword_10029D580, &unk_10021CCC0);
    }

    *&v243 = 0;
    *(&v243 + 1) = 0xE000000000000000;
    v239 = v159;
    sub_10001148C(&unk_10029D560, qword_10021D450);
    sub_100217094();
    *(&v241 + 1) = &type metadata for String;
    v240 = v243;
    sub_1001078BC(0xD00000000000001DLL, 0x800000010023D170, &v240);

    goto LABEL_59;
  }

  v111 = v109;
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
  v112 = sub_100216BB4();
  v113 = v110;

  *&v243 = sub_1001874D4(v112);
  sub_10018D25C(sub_1001900CC, 0);
  v112, v114, v115, v116, v117, v118, v119, v120, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
  v128 = v243;
  if ((v243 & 0x8000000000000000) != 0 || (v243 & 0x4000000000000000) != 0)
  {
    v129 = sub_1002170F4();
    if (v129)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v129 = *(v243 + 16);
    if (v129)
    {
LABEL_41:
      v239 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v129 & ~(v129 >> 63), 0, v123, v124, v125, v126, v127);
      if (v129 < 0)
      {
        __break(1u);

        v243, v222, v223, v224, v225, v226, v227, v228;
        __break(1u);
        return;
      }

      v130 = v129;
      v131 = 0;
      v132 = v239;
      v133 = v128;
      v231 = (v128 & 0xC000000000000001);
      do
      {
        if (v231)
        {
          v134 = sub_100217014();
        }

        else
        {
          v134 = *&v133[1]._TtCs12_SwiftObject_opaque[8 * v131];
        }

        v135 = v134;
        v238 = [v134 versionNumber];
        *&v243 = sub_100217174();
        *(&v243 + 1) = v136;
        v245._countAndFlagsBits = 8236;
        v245._object = 0xE200000000000000;
        sub_100216A14(v245);
        v137 = [v135 policyHash];
        v138 = sub_100216974();
        v140 = v139;

        v246._countAndFlagsBits = v138;
        v246._object = v140;
        sub_100216A14(v246);

        v140, v141, v142, v143, v144, v145, v146, v147, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
        v155 = v243;
        v239 = v132;
        v157 = v132[2];
        v156 = v132[3];
        if (v157 >= v156 >> 1)
        {
          sub_1001877A4((v156 > 1), v157 + 1, 1, v150, v151, v152, v153, v154);
          v132 = v239;
        }

        ++v131;
        v132[2] = v157 + 1;
        *&v132[2 * v157 + 4] = v155;
        v133 = v128;
      }

      while (v130 != v131);
      v128, v148, v149, v150, v151, v152, v153, v154;
      goto LABEL_53;
    }
  }

  v128, v121, v122, v123, v124, v125, v126, v127;
  v132 = _swiftEmptyArrayStorage;
LABEL_53:
  *(&v241 + 1) = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
  *&v240 = v132;
  sub_1001078BC(0xD000000000000018, 0x800000010023D1B0, &v240);
LABEL_59:
  sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
  v166 = [*&v237[v236] accountSettings];
  if (v166)
  {
    v167 = v166;
    v168 = sub_100216224();
    v170 = v169;

    sub_1001A1654(v168, v170);
    v191 = v171;
    if (v171)
    {
      v192 = sub_1001A1450(v171);
      v191, v193, v194, v195, v196, v197, v198, v199, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238;
      *(&v241 + 1) = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
      *&v240 = v192;
      sub_1001078BC(0x53746E756F636361, 0xEF73676E69747465, &v240);
      sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
      v200 = [*&v237[v236] accountSettingsDate];
      if (v200)
      {
        v201 = v200;
        sub_100216344();

        v202 = 0;
      }

      else
      {
        v202 = 1;
      }

      v210 = sub_100216384();
      v211 = *(v210 - 8);
      v212 = v234;
      (*(v211 + 56))(v234, v202, 1, v210);
      v213 = v212;
      v214 = v233;
      sub_1001AC3B4(v213, v233);
      if ((*(v211 + 48))(v214, 1, v210) == 1)
      {
        sub_1000114D4(v214, &qword_10029D778, &qword_1002265C8);
        v240 = 0u;
        v241 = 0u;
      }

      else
      {
        *(&v241 + 1) = v210;
        v215 = sub_1001AC424(&v240);
        (*(v211 + 32))(v215, v214, v210);
      }

      sub_1001078BC(0xD000000000000013, 0x800000010023D190, &v240);
      sub_100002BF0(v168, v170, v216, v217, v218, v219, v220, v221);
      v166 = sub_1000114D4(&v240, &unk_100297770, &unk_10021DF90);
    }

    else
    {
      sub_100002BF0(v168, v170, v172, v173, v174, v175, v176, v177);
    }
  }

  sub_100106AA8(v166);
  *&v240 = &off_10027E9E0;
  sub_10001148C(&qword_10029DB20, &qword_1002267C0);
  sub_1001AC36C(&qword_10029DB28, &qword_10029DB20, &qword_1002267C0, &protocol conformance descriptor for [A]);
  v178 = sub_1002167C4();
  if (v179)
  {
    v180 = v178;
    LODWORD(v243) = v178;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    v181 = swift_allocError();
    *v182 = v180;
    v235, v182, v183, v184, v185, v186, v187, v188;
    v189 = v230;
    v190 = HIDWORD(v232);
    swift_errorRetain();
    v189(v181);
  }

  else
  {
    (v230)(0);
    v235, v203, v204, v205, v206, v207, v208, v209;
    v190 = HIDWORD(v232);
  }

  sub_10011CCDC(v190);
}

void sub_10011CCDC(int a1)
{
  v2 = sub_1002167B4();
  if ((v2 & 0x100000000) != 0)
  {
    LODWORD(v35[0]) = v2;
    v6 = v2;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    *v8 = v6;
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
      v35[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = a1;
      *(v12 + 8) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14 = sub_100216994();
      v16 = v15;
      v17 = sub_100005FB0(v14, v15, v35);
      v16, v18, v19, v20, v21, v22, v23, v24, v32, oslog, v7, v35[0], v35[1], v36, v37, v38, v39, v40;
      *(v12 + 10) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "dump failed to close XPC FD (%d): %{public}s", v12, 0x12u);
      sub_100006128(v13, v25, v26, v27, v28, v29, v30, v31);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v3 = sub_100216774();
    sub_100002648(v3, qword_10029D160);
    osloga = sub_100216754();
    v4 = sub_100216C64();
    if (os_log_type_enabled(osloga, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = a1;
      _os_log_impl(&_mh_execute_header, osloga, v4, "dump closed XPC FD (%d)", v5, 8u);
    }
  }
}

id sub_10011CFB4(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  aBlock[4] = sub_1001AC490;
  v20 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ACE38;
  aBlock[3] = &unk_100285AD8;
  v6 = _Block_copy(aBlock);
  v7 = v20;
  v8 = v4;
  v9 = a2;

  v7, v10, v11, v12, v13, v14, v15, v16;
  aBlock[0] = 0;
  LODWORD(a1) = [v8 enumeratePeersUsingBlock:v6 error:aBlock];
  _Block_release(v6);

  if (a1)
  {
    return aBlock[0];
  }

  v18 = aBlock[0];
  sub_100216154();

  return swift_willThrow();
}

void sub_10011D128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v20 = [a1 peerID];
  v21 = sub_100216974();
  v23 = v22;

  v24 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v24)
  {
    v23, v25, v26, v27, v28, v29, v30, v31, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85;
    goto LABEL_9;
  }

  v32 = v24;
  v33 = sub_100216974();
  v35 = v34;

  if (v21 != v33 || v23 != v35)
  {
    v44 = sub_1002171A4();
    v23, v45, v46, v47, v48, v49, v50, v51, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85;
    v35, v52, v53, v54, v55, v56, v57, v58, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85;
    if (v44)
    {
      return;
    }

LABEL_9:
    v59 = objc_autoreleasePoolPush();
    sub_100116608(a1, &v77);
    objc_autoreleasePoolPop(v59);
    v60 = v77;
    v81 = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
    v78 = v60;
    sub_100107794(&v78);
    sub_100006128(&v78, v68, v69, v70, v71, v72, v73, v74);
    return;
  }

  v23, v36, v37, v38, v39, v40, v41, v42, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85;

  v35, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

id sub_10011D3E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  aBlock[4] = sub_1001AC488;
  v16 = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ACE38;
  aBlock[3] = &unk_100285A88;
  v3 = _Block_copy(aBlock);
  v4 = v16;
  v5 = v2;

  v4, v6, v7, v8, v9, v10, v11, v12;
  aBlock[0] = 0;
  LODWORD(v4) = [v5 enumerateVouchersUsingBlock:v3 error:aBlock];
  _Block_release(v3);

  if (v4)
  {
    return aBlock[0];
  }

  v14 = aBlock[0];
  sub_100216154();

  return swift_willThrow();
}

void sub_10011D534(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  v2 = sub_1002168D4();

  v10[3] = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
  v10[0] = v2;
  sub_100107794(v10);
  sub_100006128(v10, v3, v4, v5, v6, v7, v8, v9);
}

void sub_10011D71C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v12 = a2;
  v4();
  v3, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_10011D790(void *a1, char *a2, void *a3)
{
  v7 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] allCustodianRecoveryKeys];
  sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
  v8 = sub_100216B24();

  if (v8 >> 62)
  {
    v16 = sub_1002170F4();
  }

  else
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = a2;
  v68 = v3;
  if (v16)
  {
    v63 = _swiftEmptyArrayStorage;
    result = sub_1001877C4(0, (v16 & ~(v16 >> 63)), 0, v11, v12, v13, v14, v15);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v59 = a3;
    v18 = 0;
    v19 = v63;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v20 = sub_100217014();
      }

      else
      {
        v20 = *(v8 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 dictionaryRepresentation];
      v23 = sub_1002168D4();

      v63 = v19;
      v32 = v19[2];
      v31 = v19[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001877C4((v31 > 1), (v32 + 1), 1, v26, v27, v28, v29, v30);
        v19 = v63;
      }

      ++v18;
      v19[2] = v32 + 1;
      v19[v32 + 4] = v23;
    }

    while (v16 != v18);
    v8, v24, v25, v26, v27, v28, v29, v30, v54, a1, v59, v61, v63, v64, v65, v66, v67, v68;
    a3 = v60;
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15, v54, v56, v58, a2, v63, v64, v65, v66, v67, v68;
    v19 = _swiftEmptyArrayStorage;
  }

  v33 = sub_10001148C(&qword_10029DB70, &qword_100226800);
  v66 = v33;
  v63 = v19;
  v34 = v68;
  sub_1001078BC(0xD000000000000017, 0x800000010023D2D0, &v63);
  result = sub_1000114D4(&v63, &unk_100297770, &unk_10021DF90);
  if (v34)
  {
    *a3 = v34;
  }

  else
  {
    v35 = [*&v62[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] bottles];
    if (v35 && (v36 = v35, v63 = 0, type metadata accessor for BottleMO(), sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO, &protocol conformance descriptor for NSObject), sub_100216BA4(), v36, (v44 = v63) != 0))
    {
      sub_1001082E4(v63, v37, v38, v39, v40, v41, v42, v43);
      v46 = v45;
      v44, v47, v48, v49, v50, v51, v52, v53, v55, v57, v60, v62, v63, v64, v65, v66, v67, v68;
      v66 = v33;
      v63 = v46;
    }

    else
    {
      v66 = sub_10001148C(&qword_10029D148, &qword_100225F40);
      v63 = _swiftEmptyArrayStorage;
    }

    sub_1001078BC(0x73656C74746F62, 0xE700000000000000, &v63);
    return sub_1000114D4(&v63, &unk_100297770, &unk_10021DF90);
  }

  return result;
}

void sub_10011DB24(char *a1, void *a2, void *a3)
{
  v7 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v155 - v13;
  v160 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v16 = &_swiftEmptySetSingleton;
  if (v15)
  {
    v17 = v15;
    *&v161 = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v161)
    {
      v16 = v161;
    }
  }

  sub_100108644(v16);
  v19 = v18;
  v16, v20, v21, v22, v23, v24, v25, v26, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v27 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v19, v29, v30, v31, v32, v33, v34, v35, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v166 = [v27 initWithEntries:isa];

  v159 = a1;
  v36 = v160;
  v37 = [*&a1[v160] idmsTrustedDevicesVersion];
  if (v37)
  {
    v38 = v37;
    v39 = sub_100216974();
    v41 = v40;

    v42 = &type metadata for String;
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v42 = 0;
    *&v162 = 0;
  }

  *&v161 = v39;
  *(&v161 + 1) = v41;
  *(&v162 + 1) = v42;
  sub_1001078BC(0xD000000000000019, 0x800000010023D1D0, &v161);
  if (v3)
  {

    sub_1000114D4(&v161, &unk_100297770, &unk_10021DF90);
    *a3 = v3;
    return;
  }

  v158 = a2;
  sub_1000114D4(&v161, &unk_100297770, &unk_10021DF90);
  v43 = [*&v159[v36] idmsTrustedDeviceListFetchDate];
  if (v43)
  {
    v44 = v43;
    sub_100216344();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = sub_100216384();
  v47 = *(v46 - 8);
  (*(v47 + 56))(v11, v45, 1, v46);
  sub_1001AC3B4(v11, v14);
  if ((*(v47 + 48))(v14, 1, v46) == 1)
  {
    sub_1000114D4(v14, &qword_10029D778, &qword_1002265C8);
    v161 = 0u;
    v162 = 0u;
  }

  else
  {
    *(&v162 + 1) = v46;
    v48 = sub_1001AC424(&v161);
    (*(v47 + 32))(v48, v14, v46);
  }

  sub_1001078BC(0xD00000000000001ELL, 0x800000010023D1F0, &v161);
  sub_1000114D4(&v161, &unk_100297770, &unk_10021DF90);
  v49 = [v166 machineIDsInStatus:1];
  v50 = sub_100216BB4();

  v51 = *v50->endpoint;
  v157 = a3;
  if (v51)
  {
    v52 = sub_1001830AC(v51, 0);
    v53 = sub_10018FF74(&v161, v52 + 4, v51, v50);
    v54 = v161;
    v55 = v162;
    v56 = v163;

    sub_10000D778(v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58, v59);
    if (v53 != v51)
    {
      __break(1u);
      goto LABEL_41;
    }

    v36 = v160;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  *&v161 = v52;
  sub_1001EF23C(&v161);
  v50, v60, v61, v62, v63, v64, v65, v66, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v67 = v161;
  v68 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
  v165 = v68;
  v164[0] = v67;
  sub_1001078BC(0xD000000000000011, 0x800000010023D210, v164);
  sub_1000114D4(v164, &unk_100297770, &unk_10021DF90);
  v69 = [v166 machineIDsInStatus:2];
  v70 = sub_100216BB4();

  v71 = *v70->endpoint;
  v156 = v68;
  if (v71)
  {
    v72 = sub_1001830AC(v71, 0);
    v73 = sub_10018FF74(&v161, v72 + 4, v71, v70);
    v74 = v161;
    v75 = v162;
    v76 = v163;

    sub_10000D778(v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79);
    if (v73 == v71)
    {
      v36 = v160;
      v68 = v156;
      goto LABEL_24;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_24:
  *&v161 = v72;
  sub_1001EF23C(&v161);
  v70, v80, v81, v82, v83, v84, v85, v86, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v165 = v68;
  v164[0] = v161;
  sub_1001078BC(0xD000000000000014, 0x800000010023D230, v164);
  sub_1000114D4(v164, &unk_100297770, &unk_10021DF90);
  v87 = [v166 machineIDsInStatus:3];
  v88 = sub_100216BB4();

  v89 = *(v88 + 16);
  if (v89)
  {
    v90 = sub_1001830AC(*(v88 + 16), 0);
    v91 = sub_10018FF74(&v161, v90 + 4, v89, v88);
    v92 = v161;
    v93 = v162;
    v94 = v163;

    sub_10000D778(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96, v97);
    if (v91 == v89)
    {
      v36 = v160;
      v68 = v156;
      goto LABEL_28;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v90 = _swiftEmptyArrayStorage;
LABEL_28:
  *&v161 = v90;
  sub_1001EF23C(&v161);
  v88, v98, v99, v100, v101, v102, v103, v104, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v165 = v68;
  v164[0] = v161;
  sub_1001078BC(0xD000000000000011, 0x800000010023D250, v164);
  sub_1000114D4(v164, &unk_100297770, &unk_10021DF90);
  v105 = [v166 machineIDsInStatus:4];
  v106 = sub_100216BB4();

  v107 = *(v106 + 16);
  if (v107)
  {
    v108 = sub_1001830AC(*(v106 + 16), 0);
    v109 = sub_10018FF74(&v161, v108 + 4, v107, v106);
    v110 = v161;
    v111 = v162;
    v112 = v163;

    sub_10000D778(v110, *(&v110 + 1), v111, *(&v111 + 1), v112, v113, v114, v115);
    if (v109 == v107)
    {
      v36 = v160;
      v68 = v156;
      goto LABEL_32;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v108 = _swiftEmptyArrayStorage;
LABEL_32:
  *&v161 = v108;
  sub_1001EF23C(&v161);
  v106, v116, v117, v118, v119, v120, v121, v122, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v165 = v68;
  v164[0] = v161;
  sub_1001078BC(0xD000000000000017, 0x800000010023D270, v164);
  sub_1000114D4(v164, &unk_100297770, &unk_10021DF90);
  v123 = [v166 machineIDsInStatus:5];
  v124 = sub_100216BB4();

  v125 = *(v124 + 16);
  if (!v125)
  {
    v126 = _swiftEmptyArrayStorage;
    v134 = v159;
    goto LABEL_36;
  }

  v126 = sub_1001830AC(*(v124 + 16), 0);
  v127 = sub_10018FF74(&v161, v126 + 4, v125, v124);
  v128 = v161;
  v129 = v162;
  v130 = v163;

  sub_10000D778(v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133);
  if (v127 != v125)
  {
LABEL_44:
    __break(1u);

    v161, v148, v149, v150, v151, v152, v153, v154;
    __break(1u);
    return;
  }

  v134 = v159;
  v36 = v160;
  v68 = v156;
LABEL_36:
  *&v161 = v126;
  sub_1001EF23C(&v161);
  v124, v135, v136, v137, v138, v139, v140, v141, v155, v156, v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1);
  v165 = v68;
  v164[0] = v161;
  sub_1001078BC(0xD000000000000018, 0x800000010023D290, v164);
  sub_1000114D4(v164, &unk_100297770, &unk_10021DF90);
  v142 = [*&v134[v36] honorIDMSListChanges];
  if (v142)
  {
    v143 = v142;
    v144 = sub_100216974();
    v146 = v145;

    v147 = &type metadata for String;
  }

  else
  {
    v144 = 0;
    v146 = 0;
    v147 = 0;
    *&v162 = 0;
  }

  *&v161 = v144;
  *(&v161 + 1) = v146;
  *(&v162 + 1) = v147;
  sub_1001078BC(0xD000000000000014, 0x800000010023D2B0, &v161);

  sub_1000114D4(&v161, &unk_100297770, &unk_10021DF90);
}

void sub_10011E658(void (*a1)(uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v19 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v19)
  {
    v20 = v19;
    v21 = sub_100216974();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  a1(v21, v23, 0);

  v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
}

void sub_10011E6F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *v5->endpoint = a1;
  *v5->containerMap = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = sub_1001AC2BC;
  *(v7 + 32) = v5;
  v8 = swift_allocObject();
  *v8->endpoint = sub_1001AC2C4;
  *v8->containerMap = v7;
  v41[4] = sub_1001ACCC0;
  v42 = v8;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 1107296256;
  v41[2] = sub_100109050;
  v41[3] = &unk_1002859C0;
  v9 = _Block_copy(v41);
  v10 = v42;

  v11 = v2;

  v10, v12, v13, v14, v15, v16, v17, v18;
  [v6 performBlockAndWait:v9];
  v5, v19, v20, v21, v22, v23, v24, v25;
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v7, v27, v28, v29, v30, v31, v32, v33;
  v8, v34, v35, v36, v37, v38, v39, v40;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10011E8AC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446210;
    v12 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v48._countAndFlagsBits = sub_100216994();
      object = v48._object;
      sub_100216A14(v48);
      object, v14, v15, v16, v17, v18, v19, v20, a2, 0x203A726F727265, 0xE700000000000000, v41, v42, v43, v44, v45, v46, v47;

      v21 = v39;
      v12 = v40;
    }

    else
    {
      v21 = 0x73736563637573;
    }

    v22 = sub_100005FB0(v21, v12, &v41);
    v12, v23, v24, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47;
    *(v10 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v9, v7, "trustedDeviceNamesByPeerID complete: %{public}s", v10, 0xCu);
    sub_100006128(v11, v30, v31, v32, v33, v34, v35, v36);
  }

  return a3(a1, a2);
}

void sub_10011EAB8(char *a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v9 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v185 = 0;
    v10 = v9;
    v11 = [v10 peerWithID:v7 error:&v185];

    if (v185)
    {
      v12 = v185;

      swift_willThrow();
LABEL_4:
      swift_errorRetain();
      (a2)(0, v12);

LABEL_5:

      return;
    }

    if (!v11)
    {
      if (qword_100297520 != -1)
      {
LABEL_55:
        swift_once();
      }

      v34 = sub_100216774();
      sub_100002648(v34, qword_10029D160);
      v35 = sub_100216C74();
      v36 = sub_100216754();
      if (os_log_type_enabled(v36, v35))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v36, v35, "self peerID present but egoPeer not found", v37, 2u);
      }

      sub_1000561D0();
      v38 = swift_allocError();
      *v39 = xmmword_10021DA90;
      *(v39 + 16) = 13;
      (a2)(0, v38);
      goto LABEL_5;
    }

    v180 = a1;
    v15 = sub_100019860(_swiftEmptyArrayStorage);
    if (qword_100297520 != -1)
    {
      goto LABEL_53;
    }

    while (1)
    {
      v16 = sub_100216774();
      sub_100002648(v16, qword_10029D160);
      v17 = sub_100216C54();
      v18 = v11;
      v19 = sub_100216754();

      if (os_log_type_enabled(v19, v17))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v18;
        *v21 = v11;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v19, v17, "egoPeer: %@", v20, 0xCu);
        sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
      }

      v23 = [(Client *)v18 dynamicInfo];
      v162 = v3;
      v166 = a2;
      v156 = v18;
      if (v23)
      {
        v31 = v23;
        v32 = [v23 includedPeerIDs];

        v33 = sub_100216BB4();
      }

      else
      {
        v33 = &_swiftEmptySetSingleton;
      }

      v11 = v15;
      v40 = 0;
      a2 = v33[1].containerMap;
      v41 = 1 << v33[1]._TtCs12_SwiftObject_opaque[0];
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *v33[1].containerMap;
      v3 = (v41 + 63) >> 6;
      v171 = v8;
      v175 = v33;
      if (v43)
      {
        break;
      }

LABEL_24:
      while (1)
      {
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v45 >= v3)
        {
          v33, v24, v25, v26, v27, v28, v29, v30;
          (v166)(v11, 0);
          v11, v112, v113, v114, v115, v116, v117, v118, v140, v144, v148, v152, v156, v162, v166, v171, v175, v180;

          return;
        }

        v43 = *&a2[8 * v45];
        ++v40;
        if (v43)
        {
          v44 = v11;
          v40 = v45;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_53:
      swift_once();
    }

    while (1)
    {
      v44 = v11;
LABEL_28:
      v46 = (*v33[1].endpoint + ((v40 << 10) | (16 * __clz(__rbit64(v43)))));
      v47 = *v46;
      v15 = v46[1];

      v184 = objc_autoreleasePoolPush();
      v48 = *&v180[v8];
      v49 = sub_100216964();
      v185 = 0;
      v50 = [v48 peerWithID:v49 error:&v185];

      if (v185)
      {
        v12 = v185;

        v15, v119, v120, v121, v122, v123, v124, v125, v140, v144, v148, v152, v156, v162, v166, v171, v175, v180;
        swift_willThrow();
        objc_autoreleasePoolPop(v184);
        v44, v126, v127, v128, v129, v130, v131, v132, v143, v147, v151, v155, v160, v165, v169, v174, v178, v183;

        v179, v133, v134, v135, v136, v137, v138, v139;
        a2 = v170;
        goto LABEL_4;
      }

      if (!v50 || (v51 = [v50 stableInfo]) == 0 || (v52 = v51, v53 = objc_msgSend(v51, "deviceName"), v52, !v53))
      {
        v77 = v47;
        v11 = v44;
        v78 = sub_100015A28(v77, v15);
        v80 = v79;
        v15, v79, v81, v82, v83, v84, v85, v86, v140, v144, v148, v152, v156, v162, v166, v171, v175, v180;
        if (v80)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v44;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100186F40();
            v11 = v185;
          }

          *(*v11[1].endpoint + 16 * v78 + 8), v88, v89, v90, v91, v92, v93, v94, v140, v144, v148, v152, v156, v162, v166, v171, v175, v180;
          *(*v11[1].containerMap + 16 * v78 + 8), v95, v96, v97, v98, v99, v100, v101, v141, v145, v149, v153, v157, v163, v167, v172, v176, v181;
          sub_1001853F4(v78, v11);
        }

        goto LABEL_43;
      }

      v148 = sub_100216974();
      v152 = v54;

      v55 = v44;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v185 = v44;
      v64 = sub_100015A28(v47, v15);
      v65 = *v55->endpoint;
      v66 = (v57 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (*v55->containerMap >= v67)
      {
        if (v56)
        {
          if ((v57 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v111 = v57;
          sub_100186F40();
          v57 = v111;
          if ((v111 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        HIDWORD(v144) = v57;
        sub_100184050(v67, v56);
        v68 = sub_100015A28(v47, v15);
        v70 = v69 & 1;
        v57 = HIDWORD(v144);
        if ((BYTE4(v144) & 1) != v70)
        {
          sub_1002171C4();
          __break(1u);
          return;
        }

        v64 = v68;
        if ((BYTE4(v144) & 1) == 0)
        {
LABEL_36:
          v71 = v185;
          *&v185[2]._TtCs12_SwiftObject_opaque[8 * (v64 >> 6)] |= 1 << v64;
          v72 = (*v71[1].endpoint + 16 * v64);
          *v72 = v47;
          v72[1] = v15;
          v11 = v71;
          v73 = (*v71[1].containerMap + 16 * v64);
          *v73 = v148;
          v73[1] = v152;

          v74 = *v11->endpoint;
          v75 = __OFADD__(v74, 1);
          v76 = v74 + 1;
          if (v75)
          {
            __break(1u);
          }

          *v11->endpoint = v76;
          goto LABEL_43;
        }
      }

      v15, v57, v58, v59, v60, v61, v62, v63, v140, v144, v148, v152, v156, v162, v166, v171, v175, v180;
      v11 = v185;
      v102 = (*v185[1].containerMap + 16 * v64);
      v103 = v102[1];
      *v102 = v150;
      v102[1] = v154;

      v103, v104, v105, v106, v107, v108, v109, v110, v142, v146, v150, v154, v158, v164, v168, v173, v177, v182;
LABEL_43:
      v8 = v171;
      v33 = v175;
      v43 &= v43 - 1;
      objc_autoreleasePoolPop(v184);
      if (!v43)
      {
        goto LABEL_24;
      }
    }
  }

  sub_1000561D0();
  v13 = swift_allocError();
  *v14 = xmmword_10021DA90;
  *(v14 + 16) = 13;
  (a2)(0, v13);
}

uint64_t sub_10011F2A0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
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
    v47 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v52 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v57._countAndFlagsBits = sub_100216994();
      object = v57._object;
      sub_100216A14(v57);
      object, v15, v16, v17, v18, v19, v20, v21, v46, v47, a1, 0x203A726F727265, 0xE700000000000000, v52, v53, v54, v55, v56;

      v22 = v50;
      v13 = v51;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v30 = sub_100005FB0(v22, v13, &v52);
    v13, v31, v32, v33, v34, v35, v36, v37, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56;
    *(v11 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v10, v8, "reset complete %{public}s", v11, 0xCu);
    sub_100006128(v12, v38, v39, v40, v41, v42, v43, v44);

    a4 = v48;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_13:
      [a2 sendMetricWithResult:1 error:0];
      goto LABEL_14;
    }
  }

  swift_errorRetain();
  v23 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v23];

LABEL_14:
  sub_10010EEEC(0xD0000000000000BBLL, 0x800000010023CD00, v24, v25, v26, v27, v28, v29);
  return a4(a1);
}

uint64_t sub_10011F534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8, char *a9, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v41 = a10;
  v42 = a11;
  v18 = type metadata accessor for ResetRequest(0);
  __chkstk_darwin(v18, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10019131C(a1);
  v44 = v22 & 1;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = v40;
  sub_1001A13C4(&qword_100298CE0, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);
  sub_100216654();
  v23 = *&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v24 = *&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v23);
  v25 = swift_allocObject();
  v26 = v41;
  v27 = v42;
  *(v25 + 16) = a9;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27;
  v28 = *(v24 + 16);
  v29 = *(v28 + 8);
  v30 = a9;

  v29(v21, sub_1001AB16C, v25, v23, v28);
  v25, v31, v32, v33, v34, v35, v36, v37;
  return sub_1001AC1E4(v21, type metadata accessor for ResetRequest);
}

uint64_t sub_10011F728(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void *a6, unint64_t a7, int a8, void *a9, unsigned __int8 a10)
{
  v44 = a6;
  LODWORD(v51) = a8;
  HIDWORD(v51) = a10;
  v45 = a9;
  v16 = type metadata accessor for AccountInfo(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  *(a1 + 8) = a3 & 1;
  if (a5)
  {
    v21 = a4;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24 = *(a1 + 24);

  v24, v25, v26, v27, v28, v29, v30, v31, v43, v44, v45, v46, v47[0], v47[1], v48, v49, v50, v51;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  if (a7)
  {
    v32 = v44;
  }

  else
  {
    v32 = 0;
  }

  if (a7)
  {
    v22 = a7;
  }

  v33 = *(a1 + 40);

  v33, v34, v35, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47[0], v47[1], v48, v49, v50, v51;
  *(a1 + 32) = v32;
  *(a1 + 40) = v22;
  *(a1 + 48) = v51;
  v48 = v45;
  sub_1001A13C4(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216654();
  v41 = *(type metadata accessor for ResetRequest(0) + 40);
  sub_1000114D4(a1 + v41, &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v20, a1 + v41, type metadata accessor for AccountInfo);
  result = (*(v17 + 56))(a1 + v41, 0, 1, v16);
  *(a1 + 49) = BYTE4(v51);
  return result;
}

void sub_10011F958(uint64_t a1, char *a2, void (*a3)(void *), void (*a4)(uint64_t))
{
  v76 = a3;
  v77 = a4;
  v6 = type metadata accessor for ResetResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6 - 8, v9);
  v11 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v75 - v13;
  v15 = sub_10001148C(&qword_100298510, &unk_10021DF80);
  __chkstk_darwin(v15, v16);
  v18 = (&v75 - v17);
  sub_100019C6C(a1, &v75 - v17, &qword_100298510, &unk_10021DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v76;
    v20 = *v18;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029D160);
    swift_errorRetain();
    v22 = sub_100216754();
    v23 = sub_100216C74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446210;
      v84 = v20;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v26 = sub_100216994();
      v28 = v27;
      v29 = sub_100005FB0(v26, v27, &aBlock);
      v28, v30, v31, v32, v33, v34, v35, v36, v75, v76, v77, aBlock, v79, v80, v81, v82, v83, v84;
      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "reset failed: %{public}s", v24, 0xCu);
      sub_100006128(v25, v37, v38, v39, v40, v41, v42, v43);
    }

    swift_errorRetain();
    v19(v20);
  }

  else
  {
    sub_1001AC038(v18, v14, type metadata accessor for ResetResponse);
    v44 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v14, v11, type metadata accessor for ResetResponse);
    v45 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v46 = (v8 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *v47->endpoint = a2;
    sub_1001AC038(v11, &v47->_TtCs12_SwiftObject_opaque[v45], type metadata accessor for ResetResponse);
    v48 = &v47->_TtCs12_SwiftObject_opaque[v46];
    v49 = v77;
    *v48 = v76;
    *(v48 + 1) = v49;
    v50 = swift_allocObject();
    *v50->endpoint = sub_1001AB178;
    *v50->containerMap = v47;
    v82 = sub_1001ACCC0;
    v83 = v50;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_100109050;
    v81 = &unk_100284570;
    v51 = _Block_copy(&aBlock);
    v52 = v83;
    v53 = a2;

    v52, v54, v55, v56, v57, v58, v59, v60;
    [v44 performBlockAndWait:v51];
    _Block_release(v51);
    sub_1001AC1E4(v14, type metadata accessor for ResetResponse);
    LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();
    v47, v61, v62, v63, v64, v65, v66, v67;
    v50, v68, v69, v70, v71, v72, v73, v74;
    if (v51)
    {
      __break(1u);
    }
  }
}

uint64_t sub_10011FDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001163D8();
  [swift_getObjCClassFromMetadata() post:OTCliqueChanged];
  v14 = type metadata accessor for ResetResponse(0);
  sub_100019C6C(a2 + *(v14 + 20), v8, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    v13[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v8, v13, type metadata accessor for Changes);
  }

  sub_100174C2C(v13, 0);
  sub_1001AC1E4(v13, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  v17 = sub_100216754();
  v18 = sub_100216C54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "reset succeded", v19, 2u);
  }

  return a3(0);
}

uint64_t sub_10012028C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
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
    v47 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v52 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v57._countAndFlagsBits = sub_100216994();
      object = v57._object;
      sub_100216A14(v57);
      object, v15, v16, v17, v18, v19, v20, v21, v46, v47, a1, 0x203A726F727265, 0xE700000000000000, v52, v53, v54, v55, v56;

      v22 = v50;
      v13 = v51;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v30 = sub_100005FB0(v22, v13, &v52);
    v13, v31, v32, v33, v34, v35, v36, v37, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56;
    *(v11 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v10, v8, "performCkserverUnreadableRemoval complete %{public}s", v11, 0xCu);
    sub_100006128(v12, v38, v39, v40, v41, v42, v43, v44);

    a4 = v48;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_13:
      [a2 sendMetricWithResult:1 error:0];
      goto LABEL_14;
    }
  }

  swift_errorRetain();
  v23 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v23];

LABEL_14:
  sub_10010EEEC(0xD00000000000008ELL, 0x800000010023CC50, v24, v25, v26, v27, v28, v29);
  return a4(a1);
}

uint64_t sub_100120520(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  __chkstk_darwin(v12, v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29[16] = a1;
  v29[17] = a2;
  v29[18] = a3;
  sub_1001A13C4(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  v16 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
  v17 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
  sub_100006484((a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v16);
  v18 = swift_allocObject();
  *v18->endpoint = a5;
  *v18->containerMap = a6;
  v19 = *(v17 + 16);
  v20 = *(v19 + 152);

  v20(v15, sub_1001AB120, v18, v16, v19);
  v18, v21, v22, v23, v24, v25, v26, v27;
  return sub_1001AC1E4(v15, type metadata accessor for RemoveUnreadableCKServerDataRequest);
}

uint64_t sub_1001206D0(_BYTE *a1, char a2, char a3, char a4)
{
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v23[-v10];
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  if (a3)
  {
    v17 = 17;
    v18 = 19;
  }

  else
  {
    v17 = 16;
    v18 = 18;
  }

  if (a4)
  {
    v17 = v18;
  }

  v24 = v17;
  if (a2)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  sub_100019C6C(&a1[v20], v11, &unk_10029D6F0, &qword_100226B40);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v21(v11, 1, v12) != 1)
    {
      sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1001AC038(v11, v16, type metadata accessor for AccountInfo);
  }

  *v16 = v24 | v19;
  sub_1000114D4(&a1[v20], &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v16, &a1[v20], type metadata accessor for AccountInfo);
  return (*(v13 + 56))(&a1[v20], 0, 1, v12);
}

uint64_t sub_100120944(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_10001148C(&qword_1002983D0, &unk_100226710);
  __chkstk_darwin(v4, v5);
  v7 = (&v38[-1] - v6);
  sub_100019C6C(a1, &v38[-1] - v6, &qword_1002983D0, &unk_100226710);
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
      v37 = v8;
      v38[0] = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14 = sub_100216994();
      v16 = v15;
      v17 = sub_100005FB0(v14, v15, v38);
      v16, v18, v19, v20, v21, v22, v23, v24, v37, v38[0], v38[1], v38[2], v38[3], v39, v40, v41, v42, v43;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "performCkserverUnreadableRemoval failed: %{public}s", v12, 0xCu);
      sub_100006128(v13, v25, v26, v27, v28, v29, v30, v31);
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    v34 = sub_100216754();
    v35 = sub_100216C94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "performCkserverUnreadableRemoval success", v36, 2u);
    }

    a2(0);
    return sub_1000114D4(v7, &qword_1002983D0, &unk_100226710);
  }
}

uint64_t sub_100120C60(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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
    _os_log_impl(&_mh_execute_header, v8, v6, "localReset complete %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD000000000000012, 0x800000010023CC30, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

uint64_t sub_100120E88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1001163D8();
  v4 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v9 = 0;
  if ([v4 save:&v9])
  {
    v5 = v9;
    return a2(0);
  }

  else
  {
    v7 = v9;
    v8 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    a2(v8);
  }
}

uint64_t sub_100120F80(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a12)
  {
    v19 = sub_100216C74();
  }

  else
  {
    v19 = sub_100216C54();
  }

  v20 = v19;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v21 = sub_100216774();
  sub_100002648(v21, qword_10029D160);

  swift_errorRetain();
  v22 = sub_100216754();
  a2, v23, v24, v25, v26, v27, v28, v29, v66, v69, v72, v75, v78, v81, v85, a9, a10, a13;

  if (os_log_type_enabled(v22, v20))
  {
    v82 = a7;
    v86 = a8;
    v30 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v30 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v31 = sub_100216994();
    v33 = v32;
    v34 = sub_100005FB0(v31, v32, v98);
    v33, v35, v36, v37, v38, v39, v40, v41, v67, v70, v73, v76, a6, v82, v86, v89, v91, v93;
    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    if (a12)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v99._countAndFlagsBits = sub_100216994();
      object = v99._object;
      sub_100216A14(v99);
      object, v43, v44, v45, v46, v47, v48, v49, v68, v71, v74, v77, v79, v83, v87, v90, v92, v94;

      v50 = 0x203A726F727265;
    }

    else
    {
      v50 = 0x73736563637573;
    }

    v57 = sub_100005FB0(v50, 0xE700000000000000, v98);
    0xE700000000000000, v58, v59, v60, v61, v62, v63, v64, v68, v71, v74, v77, v79, v83, v87, v90, v92, v94;
    *(v30 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v22, v20, "prepare complete peerID: %{public}s %{public}s", v30, 0x16u);
    swift_arrayDestroy();

    a7 = v84;
    a8 = v88;
    a6 = v80;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000F2, 0x800000010023CB30, v51, v52, v53, v54, v55, v56);
  return a14(a1, a2, a3, a4, a5, a6, a7, a8, v89, v91, a11, a12);
}

void sub_10012128C(void *a1, uint64_t a2, void (*a3)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (a1 && !a2)
  {
    v52 = a1;
    v53 = v52;
    if (a6)
    {
      v54 = [v52 version];
      v55 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
      *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v54;
    }

    v99 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v56 = v53;
    v57 = swift_allocObject();
    *(v57 + 16) = a8;
    *(v57 + 24) = a9;
    *(v57 + 32) = v56;
    *(v57 + 40) = a10;
    *(v57 + 48) = a11;
    *(v57 + 56) = a12;
    *(v57 + 64) = a13;
    *(v57 + 72) = a14;
    *(v57 + 80) = a15;
    *(v57 + 88) = a16;
    *(v57 + 96) = a17;
    *(v57 + 104) = a18;
    *(v57 + 112) = a19;
    *(v57 + 120) = a7;
    *(v57 + 128) = a20;
    *(v57 + 136) = a3;
    *(v57 + 144) = a4;
    v58 = swift_allocObject();
    *v58->endpoint = sub_1001ACBCC;
    *v58->containerMap = v57;
    aBlock[4] = sub_1001ACCC0;
    v101 = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002844A8;
    v59 = _Block_copy(aBlock);
    v96 = v101;

    v60 = a7;

    v61 = a20;
    v62 = a19;
    v63 = a9;

    v64 = v56;
    v65 = a10;

    v66 = a12;

    v96, v67, v68, v69, v70, v71, v72, v73;
    [v99 performBlockAndWait:v59];

    _Block_release(v59);
    LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();
    v57, v74, v75, v76, v77, v78, v79, v80;
    v58, v81, v82, v83, v84, v85, v86, v87;
    if (v64)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    swift_errorRetain();
    v25 = sub_100216754();
    v26 = sub_100216C54();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      v102 = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v29 = sub_100216994();
      v31 = v30;
      v32 = sub_100005FB0(v29, v30, aBlock);
      v31, v33, v34, v35, v36, v37, v38, v39, v88, v89, v90, v91, v92, v93, v94, v95, v97, v98;
      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to fetch policy: %{public}s", v27, 0xCu);
      sub_100006128(v28, v40, v41, v42, v43, v44, v45, v46);
    }

    if (a5)
    {
      v47 = a5;
    }

    else
    {
      sub_1000561D0();
      v47 = swift_allocError();
      *v48 = xmmword_100225FC0;
      *(v48 + 16) = 13;
    }

    swift_errorRetain();
    a3(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, v47);
  }
}

void sub_100121704(int a1, id a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(uint64_t, _TtC18TrustedPeersHelper6Client *, _TtC18TrustedPeersHelper6Client *, const char *, _TtC18TrustedPeersHelper6Client *, const char *, _TtC18TrustedPeersHelper6Client *, const char *), uint64_t a17)
{
  if (a1)
  {
    v21 = [a2 modelID];
    sub_100216974();
    v23 = v22;

    v322._countAndFlagsBits = 0x5654656C707041;
    v322._object = 0xE700000000000000;
    if (sub_100216A94(v322))
    {
      v23, v24, v25, v26, v27, v28, v29, v30, v270, v274, v278, v282, v286, v290, v294, v298, v302, v305;
      v31 = 3;
    }

    else
    {
      v323._countAndFlagsBits = 0x6363416F69647541;
      v323._object = 0xEE0079726F737365;
      v32 = sub_100216A94(v323);
      v23, v33, v34, v35, v36, v37, v38, v39, v270, v274, v278, v282, v286, v290, v294, v298, v302, v305;
      if (v32)
      {
        v31 = 3;
      }

      else
      {
        v31 = a1;
      }
    }

    v318 = v31;
  }

  else
  {
    v318 = 0;
  }

  v40 = [a3 version];
  v41 = [v40 versionNumber];

  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v42 = qword_1002B0320;
  v43 = [qword_1002B0320 versionNumber];
  v44 = v43;
  if (a4)
  {
    v45 = a4;
    v46 = [v45 walrus];
    if (v46)
    {
      v47 = v46;
      v48 = [objc_allocWithZone(TPPBPeerStableInfoSetting) init];
      if (v48)
      {
        v49 = v48;
        [v48 setValue:{objc_msgSend(v47, "enabled")}];
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v56 = [v45 webAccess];
    if (v56)
    {
      v57 = v56;
      v58 = [objc_allocWithZone(TPPBPeerStableInfoSetting) init];
      if (v58)
      {
        v59 = v58;
        [v58 setValue:{objc_msgSend(v57, "enabled")}];
      }

      else
      {
        v59 = 0;
      }

      a4 = v49;
    }

    else
    {
      v59 = 0;
      v57 = v45;
      a4 = v49;
    }

    v50 = v59;
    if (v41 < v44)
    {
LABEL_28:
      v51 = [a3 version];
      v52 = 0;
      if (!a5)
      {
        goto LABEL_29;
      }

LABEL_17:
      v53 = a4;
      v54 = v50;
      v55.super.isa = sub_1002168C4().super.isa;
      goto LABEL_30;
    }
  }

  else
  {
    v50 = 0;
    if (v41 < v43)
    {
      goto LABEL_28;
    }
  }

  v51 = v42;
  v52 = [a3 version];
  if (a5)
  {
    goto LABEL_17;
  }

LABEL_29:
  v60 = a4;
  v61 = v50;
  v55.super.isa = 0;
LABEL_30:
  v62 = a10;
  v320 = a4;
  if (a8)
  {
    v63 = sub_100216964();
  }

  else
  {
    v63 = 0;
  }

  if (a10)
  {
    v62 = sub_100216964();
  }

  v64 = objc_allocWithZone(TPPeerStableInfo);
  v321 = 0;
  v295 = 0;
  v299 = 0;
  v306 = &v321;
  LOBYTE(v302) = 0;
  v287 = sub_100216964();
  v291 = a13;
  v279 = v63;
  v283 = v62;
  v275 = v50;
  v271 = a4;
  v65 = [v64 initWithClock:1 frozenPolicyVersion:v51 flexiblePolicyVersion:v52 policySecrets:v55.super.isa syncUserControllableViews:v318 secureElementIdentity:a6 walrusSetting:? webAccess:? deviceName:? serialNumber:? osVersion:? signingKeyPair:? recoverySigningPubKey:? recoveryEncryptionPubKey:? isInheritedAccount:? error:?];

  if (v65)
  {
    v319 = v65;
    v66 = v321;

    v316 = v50;
    v67 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v68 = *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v69 = [a2 peerID];
    if (!v69)
    {
      sub_100216974();
      v71 = v70;
      v69 = sub_100216964();
      v71, v72, v73, v74, v75, v76, v77, v78, a4, v50, v279, v62, v287, a13, 0, 0, v302, &v321;
    }

    [v68 setEgoPeerID:v69];

    v79 = *(a14 + v67);
    v80 = [a2 data];
    v81 = sub_100216224();
    v83 = v82;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v81, v83, v85, v86, v87, v88, v89, v90);
    [v79 setEgoPeerPermanentInfo:isa];

    v91 = *(a14 + v67);
    v92 = [a2 sig];
    v93 = sub_100216224();
    v95 = v94;

    v96 = sub_100216204().super.isa;
    sub_100002BF0(v93, v95, v97, v98, v99, v100, v101, v102);
    [v91 setEgoPeerPermanentInfoSig:v96];

    v103 = *(a14 + v67);
    v104 = [v65 data];
    v105 = sub_100216224();
    v107 = v106;

    v108 = sub_100216204().super.isa;
    sub_100002BF0(v105, v107, v109, v110, v111, v112, v113, v114);
    [v103 setEgoPeerStableInfo:v108];

    v115 = *(a14 + v67);
    v116 = [v65 sig];
    v117 = sub_100216224();
    v119 = v118;

    v120 = sub_100216204().super.isa;
    sub_100002BF0(v117, v119, v121, v122, v123, v124, v125, v126);
    [v115 setEgoPeerStableInfoSig:v120];

    type metadata accessor for BottleMO();
    v127 = *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v128 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v127];
    v129 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8);

    v130 = sub_100216964();
    v129, v131, v132, v133, v134, v135, v136, v137, v271, v275, v279, v283, v287, v291, v295, v299, v302, v306;
    [v128 setPeerID:v130];

    v138 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8);

    v139 = sub_100216964();
    v138, v140, v141, v142, v143, v144, v145, v146, v272, v276, v280, v284, v288, v292, v296, v300, v303, v307;
    [v128 setBottleID:v139];

    v147 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI);
    v148 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI + 8);
    sub_100012558(v147, v148);
    v149 = sub_100216204().super.isa;
    sub_100002BF0(v147, v148, v150, v151, v152, v153, v154, v155);
    [v128 setEscrowedSigningSPKI:v149];

    v156 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey);
    v157 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8);
    sub_100012558(v156, v157);
    v158 = sub_100216204().super.isa;
    sub_100002BF0(v156, v157, v159, v160, v161, v162, v163, v164);
    [v128 setSignatureUsingEscrowKey:v158];

    v165 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey);
    v166 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey + 8);
    sub_100012558(v165, v166);
    v167 = sub_100216204().super.isa;
    sub_100002BF0(v165, v166, v168, v169, v170, v171, v172, v173);
    [v128 setSignatureUsingPeerKey:v167];

    v174 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents);
    v175 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents + 8);
    sub_100012558(v174, v175);
    v176 = sub_100216204().super.isa;
    sub_100002BF0(v174, v175, v177, v178, v179, v180, v181, v182);
    [v128 setContents:v176];

    [*(a14 + v67) addBottlesObject:v128];
    v183 = [a2 modelID];
    v184 = sub_100216974();
    v186 = v185;

    v189 = sub_100151404(v184, v186, v65);
    v186, v190, v191, v192, v193, v194, v195, v196, v273, v277, v281, v285, v289, v293, v297, v301, v304, v308;
    v321 = 0;
    if ([v127 save:&v321])
    {
      v198 = v321;
      v199 = [a2 peerID];
      v311 = sub_100216974();
      v312 = v200;

      v201 = [a2 data];
      v202 = sub_100216224();
      v204 = v203;

      v205 = [a2 sig];
      v314 = sub_100216224();
      v310 = v206;

      v207 = [v65 data];
      v208 = sub_100216224();
      v210 = v209;

      v211 = [v319 sig];
      v212 = sub_100216224();
      v214 = v213;

      v309 = v189;
      a16(v311, v312, v202, v204, v314, v310, v208, v210);

      sub_100002BF0(v212, v214, v215, v216, v217, v218, v219, v220);
      sub_100002BF0(v208, v210, v221, v222, v223, v224, v225, v226);
      sub_100002BF0(v314, v310, v227, v228, v229, v230, v231, v232);
      sub_100002BF0(v202, v204, v233, v234, v235, v236, v237, v238);

      v312, v239, v240, v241, v242, v243, v244, v245, v212, v214, v189, 0, v287, v291, v295, v299, v302, v306;
      return;
    }

    v246 = v321;
    v188 = sub_100216154();

    swift_willThrow();
  }

  else
  {
    v187 = v321;

    v188 = sub_100216154();
    swift_willThrow();
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v247 = sub_100216774();
  sub_100002648(v247, qword_10029D160);
  swift_errorRetain();
  v248 = sub_100216754();
  v249 = sub_100216C74();

  if (os_log_type_enabled(v248, v249))
  {
    v250 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v321 = v251;
    *v250 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v252 = sub_100216994();
    v254 = v253;
    v255 = sub_100005FB0(v252, v253, &v321);
    v254, v256, v257, v258, v259, v260, v261, v262, v271, v275, v279, v283, v287, v291, v295, v299, v302, v306;
    *(v250 + 4) = v255;
    _os_log_impl(&_mh_execute_header, v248, v249, "Unable to save identity: %{public}s", v250, 0xCu);
    sub_100006128(v251, v263, v264, v265, v266, v267, v268, v269);
  }

  swift_errorRetain();
  (a16)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, v188);
}

uint64_t sub_1001223E4(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a15)
  {
    v22 = sub_100216C74();
  }

  else
  {
    v22 = sub_100216C54();
  }

  v23 = v22;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);

  swift_errorRetain();
  v25 = sub_100216754();
  a2, v26, v27, v28, v29, v30, v31, v32, v69, v72, v75, v78, v81, v84, v87, v90, v93, v97;

  if (os_log_type_enabled(v25, v23))
  {
    v94 = a7;
    v98 = a8;
    v33 = swift_slowAlloc();
    v104[0] = swift_slowAlloc();
    *v33 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v34 = sub_100216994();
    v36 = v35;
    v37 = sub_100005FB0(v34, v35, v104);
    v36, v38, v39, v40, v41, v42, v43, v44, v70, v73, v76, v79, v82, v85, v88, a6, v94, v98;
    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    if (a15)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v105._countAndFlagsBits = sub_100216994();
      object = v105._object;
      sub_100216A14(v105);
      object, v46, v47, v48, v49, v50, v51, v52, v71, v74, v77, v80, v83, v86, v89, v91, v95, v99;

      v53 = 0x203A726F727265;
    }

    else
    {
      v53 = 0x73736563637573;
    }

    v60 = sub_100005FB0(v53, 0xE700000000000000, v104);
    0xE700000000000000, v61, v62, v63, v64, v65, v66, v67, v71, v74, v77, v80, v83, v86, v89, v91, v95, v99;
    *(v33 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v25, v23, "prepareInheritancePeer complete peerID: %{public}s %{public}s", v33, 0x16u);
    swift_arrayDestroy();

    a7 = v96;
    a8 = v100;
    a6 = v92;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000FDLL, 0x800000010023CA30, v54, v55, v56, v57, v58, v59);
  return a17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100122718(uint64_t a1, uint64_t (*a2)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, void, void, void, uint64_t), uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, char *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, int a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19)
{
  *&v494 = a8;
  v495 = a7;
  v496 = a4;
  v23 = sub_100216384();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23, v25);
  v27 = &v473 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v473 - v30;
  v32 = sub_1002163D4();
  v33 = *(v32 - 8);
  v35 = __chkstk_darwin(v32, v34);
  v37 = &v473 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_10029D160);
    swift_errorRetain();
    v39 = sub_100216754();
    v40 = sub_100216C74();

    v41 = a2;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v497 = v43;
      *v42 = 136446210;
      v499 = a1;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v44 = sub_100216994();
      v46 = v45;
      v47 = sub_100005FB0(v44, v45, &v497);
      v46, v48, v49, v50, v51, v52, v53, v54, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "prepareInheritancePeer unable to fetch changes: %{public}s", v42, 0xCu);
      sub_100006128(v43, v55, v56, v57, v58, v59, v60, v61);
    }

    return v41(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, a1);
  }

  v487 = v27;
  v488 = v24;
  v489 = v23;
  v490 = a5;
  v491 = v37;
  v492 = a2;
  v493 = a3;
  v63 = v35;
  v64 = v496;
  v65 = [(Client *)v496 uuid];
  sub_100216974();
  v67 = v66;

  sub_100216394();
  v67, v68, v69, v70, v71, v72, v73, v74, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
  if ((*(v33 + 48))(v31, 1, v63) != 1)
  {
    v486 = v33;
    v102 = *(v33 + 32);
    v485 = v63;
    v103 = v491;
    v102();
    v104 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v105 = v490;
    v106 = *&v490[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    isa = sub_1002163B4().super.isa;
    v108 = [v106 findCustodianRecoveryKeyWithUUID:isa];

    if (!v108)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v123 = sub_100216774();
      sub_100002648(v123, qword_10029D160);
      v124 = v64;
      v125 = sub_100216754();
      v126 = sub_100216C54();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *&v497 = v128;
        *v127 = 136446210;
        v129 = [(Client *)v124 uuid];
        v130 = sub_100216974();
        v132 = v131;

        v133 = sub_100005FB0(v130, v132, &v497);
        v132, v134, v135, v136, v137, v138, v139, v140, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
        *(v127 + 4) = v133;
        _os_log_impl(&_mh_execute_header, v125, v126, "Unable to find custodian recovery key %{public}s on model", v127, 0xCu);
        sub_100006128(v128, v141, v142, v143, v144, v145, v146, v147);
      }

      sub_1000561D0();
      v148 = swift_allocError();
      *v149 = xmmword_10021DC00;
      *(v149 + 16) = 13;
      v492(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v148);

      return (*(v486 + 8))(v103, v485);
    }

    v109 = *&v105[v104];
    *&v497 = 0;
    v110 = [v109 isCustodianRecoveryKeyTrusted:v108 error:&v497];
    v111 = v497;
    if (v497)
    {
      swift_willThrow();
      v112 = qword_100297520;
      v113 = v111;
      if (v112 != -1)
      {
        swift_once();
      }

      v114 = sub_100216774();
      sub_100002648(v114, qword_10029D160);
      v115 = v113;
      v116 = sub_100216754();
      v117 = sub_100216C74();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        *v118 = 138543362;
        v120 = v115;
        v121 = _swift_stdlib_bridgeErrorToNSError();
        *(v118 + 4) = v121;
        *v119 = v121;
        _os_log_impl(&_mh_execute_header, v116, v117, "Error determining whether Custodian Recovery Key is trusted: %{public}@", v118, 0xCu);
        sub_1000114D4(v119, &qword_10029D580, &unk_10021CCC0);
      }

      v122 = v115;
      v492(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v111);

      return (*(v486 + 8))(v103, v485);
    }

    if (v110)
    {
      v150 = [(Client *)v64 recoveryString];
      if (v150)
      {
        v151 = v150;
        v152 = sub_100216974();
        v154 = v153;

        v155 = [(Client *)v64 salt];
        if (v155)
        {
          v163 = v155;
          v164 = sub_100216974();
          v166 = v165;

          type metadata accessor for CustodianRecoveryKey();
          swift_allocObject();
          v167 = v108;
          v182 = sub_1000129C8(v167, v152, v154, v164, v166);
          v183 = *v182->endpoint;
          v184 = *(v183 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
          v185 = *(v183 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey);
          v186 = qword_100297520;
          swift_retain_n();
          v187 = v184;
          v188 = v185;
          v483 = v187;
          v189 = v188;
          v484 = v189;
          if (v186 != -1)
          {
            swift_once();
          }

          v190 = sub_100216774();
          v482 = sub_100002648(v190, qword_10029D160);
          v191 = sub_100216754();
          v192 = sub_100216C54();
          v182, v193, v194, v195, v196, v197, v198, v199;
          v200 = os_log_type_enabled(v191, v192);
          v496 = v182;
          if (v200)
          {
            v201 = swift_slowAlloc();
            v481 = swift_slowAlloc();
            *&v497 = v481;
            *v201 = 136446210;
            v202 = [*(*v182->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
            v203 = [v202 keyData];

            v204 = sub_100216224();
            v205 = v192;
            v207 = v206;

            v208 = sub_100216214(0);
            v210 = v209;
            v211 = v204;
            v182 = v496;
            sub_100002BF0(v211, v207, v212, v213, v214, v215, v216, v217);
            v218 = sub_100005FB0(v208, v210, &v497);
            v210, v219, v220, v221, v222, v223, v224, v225, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
            *(v201 + 4) = v218;
            _os_log_impl(&_mh_execute_header, v191, v205, "prepareInheritancePeer signingPubKey: %{public}s", v201, 0xCu);
            sub_100006128(v481, v226, v227, v228, v229, v230, v231, v232);
          }

          v233 = sub_100216754();
          v234 = sub_100216C54();
          v182, v235, v236, v237, v238, v239, v240, v241;
          if (os_log_type_enabled(v233, v234))
          {
            v242 = swift_slowAlloc();
            v481 = swift_slowAlloc();
            *&v497 = v481;
            *v242 = 136446210;
            v243 = [*(*v182->endpoint + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
            v244 = [v243 keyData];

            v245 = sub_100216224();
            v246 = v234;
            v248 = v247;

            v249 = sub_100216214(0);
            v251 = v250;
            v496, v250, v252, v253, v254, v255, v256, v257;
            v258 = v245;
            v182 = v496;
            sub_100002BF0(v258, v248, v259, v260, v261, v262, v263, v264);
            v265 = sub_100005FB0(v249, v251, &v497);
            v251, v266, v267, v268, v269, v270, v271, v272, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
            *(v242 + 4) = v265;
            _os_log_impl(&_mh_execute_header, v233, v246, "prepareInheritancePeer encryptionPubKey: %{public}s", v242, 0xCu);
            sub_100006128(v481, v273, v274, v275, v276, v277, v278, v279);
          }

          else
          {

            v182, v280, v281, v282, v283, v284, v285, v286;
          }

          v287 = v484;
          v288 = v483;
          v289 = v489;
          v290 = v487;
          sub_100216374();
          sub_100216334();
          v292 = v291;
          (v488)[1](v290, v289);
          v293 = v292 * 1000.0;
          if (COERCE__INT64(fabs(v292 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v293 > -1.0)
          {
            if (v293 < 1.84467441e19)
            {
              v294 = v293;
              v295 = sub_100216964();
              v296 = sub_100216964();
              v297 = objc_opt_self();
              *&v497 = 0;
              v298 = [v297 permanentInfoWithMachineID:v295 modelID:v296 epoch:1 signingKeyPair:v288 encryptionKeyPair:v287 creationTime:v294 peerIDHashAlgo:1 error:&v497];

              if (v298)
              {
                v495 = v167;
                v299 = v497;

                v300 = v298;
                v301 = [v300 peerID];
                v302 = sub_100216974();
                v304 = v303;

                strcpy(&v497, "signing-key ");
                BYTE13(v497) = 0;
                HIWORD(v497) = -5120;
                v488 = v302;
                v500._countAndFlagsBits = v302;
                v500._object = v304;
                sub_100216A14(v500);
                v305 = *(&v497 + 1);
                v306 = objc_opt_self();
                v307 = [v306 defaultManager];
                v308 = [objc_allocWithZone(_SFIdentity) initWithKeyPair:v288];
                SFAccessibilityMakeWithMode();
                v494 = v497;
                v309 = v498;
                v310 = objc_allocWithZone(_SFAccessPolicy);
                v497 = v494;
                v498 = v309;
                v311 = [v310 initWithAccessibility:&v497 sharingPolicy:0];
                v312 = sub_100216964();
                [v311 setAccessGroup:v312];

                v313 = sub_100216964();
                v305, v314, v315, v316, v317, v318, v319, v320, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
                *&v497 = 0;
                *&v494 = v307;
                v321 = v307;
                v322 = v308;
                v489 = v311;
                LOBYTE(v312) = [v321 setIdentity:v308 forIdentifier:v313 accessPolicy:v311 error:&v497];

                v323 = v497;
                if (v312)
                {
                  v487 = v300;
                  *&v497 = 0x6974707972636E65;
                  *(&v497 + 1) = 0xEF2079656B2D6E6FLL;
                  v324 = v323;
                  v501._countAndFlagsBits = v488;
                  v501._object = v304;
                  sub_100216A14(v501);
                  v304, v325, v326, v327, v328, v329, v330, v331, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
                  v332 = *(&v497 + 1);
                  v333 = [v306 defaultManager];
                  v334 = objc_allocWithZone(_SFIdentity);
                  v335 = v484;
                  v336 = [v334 initWithKeyPair:v484];
                  SFAccessibilityMakeWithMode();
                  v479 = v497;
                  v337 = v498;
                  v338 = objc_allocWithZone(_SFAccessPolicy);
                  v497 = v479;
                  v498 = v337;
                  v339 = [v338 initWithAccessibility:&v497 sharingPolicy:0];
                  v340 = sub_100216964();
                  [v339 setAccessGroup:v340];

                  v341 = sub_100216964();
                  v332, v342, v343, v344, v345, v346, v347, v348, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
                  *&v497 = 0;
                  LODWORD(v332) = [v333 setIdentity:v336 forIdentifier:v341 accessPolicy:v339 error:&v497];

                  v349 = v497;
                  v488 = v333;
                  v481 = v336;
                  *&v479 = v339;
                  if (v332)
                  {
                    v478 = v322;
                    v475 = a18;
                    v474 = a16;
                    v482 = a15;
                    v473 = a14;
                    if (a10)
                    {
                      v350 = a10;
                    }

                    else
                    {
                      v439 = qword_100297228;
                      v440 = v497;
                      if (v439 != -1)
                      {
                        swift_once();
                      }

                      v349 = qword_1002B0318;
                      v350 = qword_1002B0318;
                    }

                    v441 = v349;
                    v442 = swift_allocObject();
                    v443 = v493;
                    *(v442 + 16) = v492;
                    *(v442 + 24) = v443;
                    *(v442 + 32) = 0;
                    *(v442 + 40) = a10;
                    *(v442 + 48) = v490;
                    *(v442 + 56) = a11;
                    v444 = v487;
                    *(v442 + 64) = v487;
                    *(v442 + 72) = a12;
                    v476 = a12;
                    v477 = a13;
                    v445 = v473;
                    *(v442 + 80) = a13;
                    *(v442 + 88) = v445;
                    v446 = v474;
                    *(v442 + 96) = v482;
                    *(v442 + 104) = v446;
                    v447 = v475;
                    *(v442 + 112) = a17;
                    *(v442 + 120) = v447;
                    v448 = v483;
                    *(v442 + 128) = a19;
                    *(v442 + 136) = v448;
                    v449 = v496;
                    *(v442 + 144) = v496;
                    sub_10001148C(&qword_100297DA0, &qword_1002264D0);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100225FB0;
                    *(inited + 32) = v350;

                    v451 = v350;
                    v452 = a10;
                    v453 = v448;

                    v454 = v444;
                    v455 = v452;

                    v456 = v490;

                    v457 = v477;

                    v458 = sub_10019C6BC(inited);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    v393 = v451;

                    sub_1001A4350(v458, v456, sub_1001AADD8, v442, v393);

                    v449, v459, v460, v461, v462, v463, v464, v465;
                    v458, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;

                    v392 = v491;
                    goto LABEL_69;
                  }

                  v404 = v497;
                  v405 = sub_100216154();

                  swift_willThrow();
                  swift_errorRetain();
                  swift_errorRetain();
                  v406 = sub_100216754();
                  v407 = sub_100216C74();

                  if (os_log_type_enabled(v406, v407))
                  {
                    v408 = swift_slowAlloc();
                    v409 = swift_slowAlloc();
                    *&v497 = v409;
                    *v408 = 136446210;
                    v499 = v405;
                    swift_errorRetain();
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v410 = sub_100216994();
                    v412 = v411;
                    v413 = sub_100005FB0(v410, v411, &v497);
                    v412, v414, v415, v416, v417, v418, v419, v420, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
                    *(v408 + 4) = v413;
                    _os_log_impl(&_mh_execute_header, v406, v407, "Unable to save encryption key: %{public}s", v408, 0xCu);
                    sub_100006128(v409, v421, v422, v423, v424, v425, v426, v427);
                  }

                  v428 = v492;
                  v392 = v491;
                  v393 = v495;
                  v429 = v496;
                  v430 = v487;
                  v431 = v494;
                  swift_errorRetain();
                  v428(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v405);

                  v429, v432, v433, v434, v435, v436, v437, v438;
                }

                else
                {
                  v360 = v497;
                  v304, v361, v362, v363, v364, v365, v366, v367, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;

                  v368 = sub_100216154();
                  swift_willThrow();
                  swift_errorRetain();
                  swift_errorRetain();
                  v369 = sub_100216754();
                  v370 = sub_100216C74();

                  if (os_log_type_enabled(v369, v370))
                  {
                    v371 = swift_slowAlloc();
                    v372 = swift_slowAlloc();
                    *&v497 = v372;
                    *v371 = 136446210;
                    v499 = v368;
                    swift_errorRetain();
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v373 = sub_100216994();
                    v375 = v374;
                    v376 = sub_100005FB0(v373, v374, &v497);
                    v375, v377, v378, v379, v380, v381, v382, v383, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
                    *(v371 + 4) = v376;
                    _os_log_impl(&_mh_execute_header, v369, v370, "Unable to save signing key: %{public}s", v371, 0xCu);
                    sub_100006128(v372, v384, v385, v386, v387, v388, v389, v390);
                  }

                  v391 = v492;
                  v392 = v491;
                  v393 = v495;
                  v394 = v496;
                  v395 = v483;
                  v396 = v494;
                  swift_errorRetain();
                  v391(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v368);

                  v394, v397, v398, v399, v400, v401, v402, v403;
                }

LABEL_69:

                return (*(v486 + 8))(v392, v485);
              }

              v351 = v497;
              v352 = sub_100216154();

              swift_willThrow();
              swift_errorRetain();
              v492(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v352);

              v182, v353, v354, v355, v356, v357, v358, v359;

              return (*(v486 + 8))(v103, v485);
            }

LABEL_72:
            __break(1u);
          }

          __break(1u);
          goto LABEL_72;
        }

        v154, v156, v157, v158, v159, v160, v161, v162, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v177 = sub_100216774();
      sub_100002648(v177, qword_10029D160);
      v178 = sub_100216754();
      v179 = sub_100216C54();
      v180 = os_log_type_enabled(v178, v179);
      v172 = v492;
      if (v180)
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&_mh_execute_header, v178, v179, "Bad format CRK: recovery string or salt not set", v181, 2u);
      }

      sub_1000561D0();
      v174 = swift_allocError();
      v176 = xmmword_10021DC30;
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v168 = sub_100216774();
      sub_100002648(v168, qword_10029D160);
      v169 = sub_100216754();
      v170 = sub_100216C54();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v492;
      if (v171)
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&_mh_execute_header, v169, v170, "Custodian Recovery Key is not trusted", v173, 2u);
      }

      sub_1000561D0();
      v174 = swift_allocError();
      v176 = xmmword_10021DC10;
    }

    *v175 = v176;
    *(v175 + 16) = 13;
    v172(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v174);

    return (*(v486 + 8))(v103, v485);
  }

  sub_1000114D4(v31, &qword_10029D900, &qword_1002266A0);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v75 = sub_100216774();
  sub_100002648(v75, qword_10029D160);
  v76 = v64;
  v77 = sub_100216754();
  v78 = sub_100216C54();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v497 = v80;
    *v79 = 136446210;
    v81 = [(Client *)v76 uuid];
    v82 = sub_100216974();
    v84 = v83;

    v85 = sub_100005FB0(v82, v84, &v497);
    v84, v86, v87, v88, v89, v90, v91, v92, v473, v474, v475, v476, v477, v478, v479, *(&v479 + 1), v480, v481;
    *(v79 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "Unable to parse uuid: %{public}s", v79, 0xCu);
    sub_100006128(v80, v93, v94, v95, v96, v97, v98, v99);
  }

  sub_1000561D0();
  v100 = swift_allocError();
  *v101 = xmmword_10021DC00;
  *(v101 + 16) = 13;
  v492(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v100);
}

void sub_1001244CC(void *a1, uint64_t a2, void (*a3)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, void, void, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (a1 && !a2)
  {
    v50 = a1;
    v51 = v50;
    if (a6)
    {
      v52 = [v50 version];
      v53 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
      *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v52;
    }

    v97 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v54 = swift_allocObject();
    v55 = v51;
    v96 = v51;
    v56 = v54;
    *(v54 + 16) = a8;
    *(v54 + 24) = a9;
    *(v54 + 32) = v55;
    *(v54 + 40) = a10;
    *(v54 + 48) = a11;
    *(v54 + 56) = a12;
    *(v54 + 64) = a13;
    *(v54 + 72) = a14;
    *(v54 + 80) = a15;
    *(v54 + 88) = a16;
    *(v54 + 96) = a17;
    *(v54 + 104) = a18;
    *(v54 + 112) = a7;
    *(v54 + 120) = a3;
    *(v54 + 128) = a4;
    *(v54 + 136) = a19;
    v57 = swift_allocObject();
    *v57->endpoint = sub_1001AAE34;
    *v57->containerMap = v56;
    aBlock[4] = sub_1001ACCC0;
    v100 = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284200;
    v58 = _Block_copy(aBlock);
    v95 = v100;

    v59 = a7;

    v60 = a18;
    v61 = a9;

    v62 = v96;

    v63 = a11;

    v95, v64, v65, v66, v67, v68, v69, v70;
    [v97 performBlockAndWait:v58];

    _Block_release(v58);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();
    v56, v71, v72, v73, v74, v75, v76, v77;
    v57, v78, v79, v80, v81, v82, v83, v84;
    if (v62)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    swift_errorRetain();
    v23 = sub_100216754();
    v24 = sub_100216C54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v101 = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v27 = sub_100216994();
      v29 = v28;
      v30 = sub_100005FB0(v27, v28, aBlock);
      v29, v31, v32, v33, v34, v35, v36, v37, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94;
      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to fetch policy: %{public}s", v25, 0xCu);
      sub_100006128(v26, v38, v39, v40, v41, v42, v43, v44);
    }

    if (a5)
    {
      v45 = a5;
    }

    else
    {
      sub_1000561D0();
      v45 = swift_allocError();
      *v46 = xmmword_100225FC0;
      *(v46 + 16) = 13;
    }

    swift_errorRetain();
    a3(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v45);
  }
}

void sub_10012493C(uint64_t a1, const char *a2, void *a3, Class a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(char *, uint64_t (*)(), void *, uint64_t, uint64_t), uint64_t a15, uint64_t a16)
{
  v381 = a8;
  v383 = a5;
  v384 = a2;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  __chkstk_darwin(RecoverableTLKSharesRequest, v20);
  v380 = &v370 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = [v384 modelID];
    sub_100216974();
    v24 = v23;

    v387._countAndFlagsBits = 0x5654656C707041;
    v387._object = 0xE700000000000000;
    if (sub_100216A94(v387))
    {
      v24, v25, v26, v27, v28, v29, v30, v31, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
      a1 = 3;
    }

    else
    {
      v388._countAndFlagsBits = 0x6363416F69647541;
      v388._object = 0xEE0079726F737365;
      v32 = sub_100216A94(v388);
      v24, v33, v34, v35, v36, v37, v38, v39, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
      if (v32)
      {
        a1 = 3;
      }

      else
      {
        a1 = a1;
      }
    }
  }

  v40 = [a3 version];
  v41 = [v40 versionNumber];

  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v42 = qword_1002B0320;
  if (v41 >= [qword_1002B0320 versionNumber])
  {
    v43 = v42;
    v44 = [a3 version];
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v43 = [a3 version];
  v44 = 0;
  if (a4)
  {
LABEL_13:
    a4 = sub_1002168C4().super.isa;
  }

LABEL_14:
  if (a7)
  {
    v45 = sub_100216964();
  }

  else
  {
    v45 = 0;
  }

  v382 = a14;
  if (a9)
  {
    v46 = sub_100216964();
  }

  else
  {
    v46 = 0;
  }

  v381 = a15;
  v47 = objc_allocWithZone(TPPeerStableInfo);
  v48 = sub_100216964();
  v386 = 0;
  LOBYTE(v369) = 1;
  v49 = [v47 initWithClock:1 frozenPolicyVersion:v43 flexiblePolicyVersion:v44 policySecrets:a4 syncUserControllableViews:a1 secureElementIdentity:v383 walrusSetting:0 webAccess:0 deviceName:v45 serialNumber:v46 osVersion:v48 signingKeyPair:a12 recoverySigningPubKey:0 recoveryEncryptionPubKey:0 isInheritedAccount:v369 error:&v386];

  if (v49)
  {
    v50 = v386;

    v51 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v52 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v53 = [v384 peerID];
    if (!v53)
    {
      sub_100216974();
      v55 = v54;
      v53 = sub_100216964();
      v55, v56, v57, v58, v59, v60, v61, v62, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
    }

    [v52 setEgoPeerID:v53];

    v63 = *(a13 + v51);
    v64 = v384;
    v65 = [v384 data];
    v66 = sub_100216224();
    v68 = v67;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v66, v68, v70, v71, v72, v73, v74, v75);
    [v63 setEgoPeerPermanentInfo:isa];

    v76 = *(a13 + v51);
    v77 = [v64 sig];
    v78 = sub_100216224();
    v80 = v79;

    v81 = sub_100216204().super.isa;
    sub_100002BF0(v78, v80, v82, v83, v84, v85, v86, v87);
    [v76 setEgoPeerPermanentInfoSig:v81];

    v88 = *(a13 + v51);
    v89 = [v49 data];
    v90 = sub_100216224();
    v92 = v91;

    v93 = sub_100216204().super.isa;
    sub_100002BF0(v90, v92, v94, v95, v96, v97, v98, v99);
    [v88 setEgoPeerStableInfo:v93];

    v100 = *(a13 + v51);
    v101 = [v49 sig];
    v102 = sub_100216224();
    v104 = v103;

    v105 = sub_100216204().super.isa;
    sub_100002BF0(v102, v104, v106, v107, v108, v109, v110, v111);
    [v100 setEgoPeerStableInfoSig:v105];

    v112 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v386 = 0;
    if ([v112 save:&v386])
    {
      v113 = *(a13 + v51);
      v114 = v386;
      v115 = [v113 egoPeerID];
      if (v115)
      {
        v116 = v115;
        sub_100216974();
        v118 = v117;

        v119 = [*(a13 + v51) egoPeerPermanentInfo];
        if (v119)
        {
          v127 = v119;
          v128 = sub_100216224();
          v130 = v129;

          v131 = [*(a13 + v51) egoPeerPermanentInfoSig];
          if (v131)
          {
            v139 = v131;
            v140 = sub_100216224();
            v384 = v141;

            v142 = [*(a13 + v51) egoPeerStableInfo];
            if (v142)
            {
              v150 = v142;
              v378 = sub_100216224();
              v383 = v151;

              v152 = [*(a13 + v51) egoPeerStableInfoSig];
              if (v152)
              {
                v160 = v152;
                v375 = sub_100216224();
                v376 = v161;

                v162 = [objc_allocWithZone(TPECPublicKeyFactory) init];
                sub_100012558(v128, v130);
                v377 = v130;
                v163 = v384;
                sub_100012558(v140, v384);
                v164 = sub_100216964();
                v118, v165, v166, v167, v168, v169, v170, v171, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
                v172 = sub_100216204().super.isa;
                v173 = sub_100216204().super.isa;
                v174 = [objc_opt_self() permanentInfoWithPeerID:v164 data:v172 sig:v173 keyFactory:v162];

                v175 = v163;
                v130 = v377;
                sub_100002BF0(v140, v175, v176, v177, v178, v179, v180, v181);

                sub_100002BF0(v128, v130, v182, v183, v184, v185, v186, v187);
                v374 = v174;
                if (v174)
                {
                  v371 = v162;
                  v372 = v128;
                  v373 = v140;
                  v188 = objc_allocWithZone(TPPeerStableInfo);
                  v189 = v378;
                  v190 = v376;
                  v191 = v383;
                  sub_100012558(v378, v383);
                  v192 = v375;
                  sub_100012558(v375, v190);
                  v193 = sub_100216204().super.isa;
                  v194 = sub_100216204().super.isa;
                  v195 = [v188 initWithData:v193 sig:v194];

                  sub_100002BF0(v192, v190, v196, v197, v198, v199, v200, v201);
                  sub_100002BF0(v189, v191, v202, v203, v204, v205, v206, v207);
                  if (v195)
                  {
                    v208 = v374;
                    v209 = [v374 modelID];
                    v210 = sub_100216974();
                    v212 = v211;

                    v321 = sub_100151404(v210, v212, v195);
                    v212, v322, v323, v324, v325, v326, v327, v328, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
                    sub_1001A13C4(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);
                    sub_100216654();
                    v329 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
                    RecoverableTLKSharesRequest = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
                    sub_100006484((a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), RecoverableTLKSharesRequest);
                    v330 = swift_allocObject();
                    *(v330 + 16) = v382;
                    *(v330 + 24) = v381;
                    *(v330 + 32) = v208;
                    *(v330 + 40) = v195;
                    *(v330 + 48) = v321;
                    *(v330 + 56) = a16;
                    v331 = v195;
                    v332 = v208;
                    v333 = *(v329 + 16);
                    v382 = *(v333 + 72);

                    v334 = v332;
                    v335 = v331;
                    v336 = v321;

                    v337 = v380;
                    v382(v380, sub_1001AAF04, v330, RecoverableTLKSharesRequest, v333);

                    v330, v338, v339, v340, v341, v342, v343, v344;
                    sub_100002BF0(v375, v376, v345, v346, v347, v348, v349, v350);
                    sub_100002BF0(v378, v383, v351, v352, v353, v354, v355, v356);

                    sub_100002BF0(v373, v384, v357, v358, v359, v360, v361, v362);
                    sub_100002BF0(v372, v377, v363, v364, v365, v366, v367, v368);
                    sub_1001AC1E4(v337, type metadata accessor for FetchRecoverableTLKSharesRequest);
                    return;
                  }

                  v292 = v374;
                  if (qword_100297520 != -1)
                  {
                    swift_once();
                  }

                  v293 = sub_100216774();
                  sub_100002648(v293, qword_10029D160);
                  v294 = sub_100216754();
                  v295 = sub_100216C54();
                  v296 = os_log_type_enabled(v294, v295);
                  v297 = v373;
                  v298 = v377;
                  v299 = v371;
                  if (v296)
                  {
                    v300 = swift_slowAlloc();
                    *v300 = 0;
                    _os_log_impl(&_mh_execute_header, v294, v295, "Invalid stableinfo or signature", v300, 2u);
                  }

                  sub_1000561D0();
                  v301 = swift_allocError();
                  *v302 = xmmword_10021DC20;
                  *(v302 + 16) = 13;
                  (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v301);

                  sub_100002BF0(v375, v376, v303, v304, v305, v306, v307, v308);
                  sub_100002BF0(v378, v383, v309, v310, v311, v312, v313, v314);
                  sub_100002BF0(v297, v384, v315, v316, v317, v318, v319, v320);
                  v290 = v372;
                  v291 = v298;
                  goto LABEL_65;
                }

                sub_1000561D0();
                v282 = swift_allocError();
                *v283 = xmmword_10021DA80;
                *(v283 + 16) = 13;
                (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v282);

                sub_100002BF0(v375, v376, v284, v285, v286, v287, v288, v289);
              }

              else
              {
                v118, v153, v154, v155, v156, v157, v158, v159, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v270 = sub_100216774();
                sub_100002648(v270, qword_10029D160);
                v271 = sub_100216754();
                v272 = sub_100216C54();
                if (os_log_type_enabled(v271, v272))
                {
                  v273 = swift_slowAlloc();
                  *v273 = 0;
                  _os_log_impl(&_mh_execute_header, v271, v272, "stableInfoSig does not exist", v273, 2u);
                }

                sub_1000561D0();
                v274 = swift_allocError();
                *v275 = xmmword_100225FD0;
                *(v275 + 16) = 13;
                (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v274);
              }

              sub_100002BF0(v378, v383, v276, v277, v278, v279, v280, v281);
            }

            else
            {
              v118, v143, v144, v145, v146, v147, v148, v149, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v258 = sub_100216774();
              sub_100002648(v258, qword_10029D160);
              v259 = sub_100216754();
              v260 = sub_100216C54();
              if (os_log_type_enabled(v259, v260))
              {
                v261 = swift_slowAlloc();
                *v261 = 0;
                _os_log_impl(&_mh_execute_header, v259, v260, "stableInfo does not exist", v261, 2u);
              }

              sub_1000561D0();
              v262 = swift_allocError();
              *v263 = xmmword_100225FD0;
              *(v263 + 16) = 13;
              (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v262);
            }

            sub_100002BF0(v140, v384, v264, v265, v266, v267, v268, v269);
          }

          else
          {
            v118, v132, v133, v134, v135, v136, v137, v138, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v246 = sub_100216774();
            sub_100002648(v246, qword_10029D160);
            v247 = sub_100216754();
            v248 = sub_100216C54();
            if (os_log_type_enabled(v247, v248))
            {
              v249 = swift_slowAlloc();
              *v249 = 0;
              _os_log_impl(&_mh_execute_header, v247, v248, "permanentInfoSig does not exist", v249, 2u);
            }

            sub_1000561D0();
            v250 = swift_allocError();
            *v251 = xmmword_100225FD0;
            *(v251 + 16) = 13;
            (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v250);
          }

          v290 = v128;
          v291 = v130;
LABEL_65:
          sub_100002BF0(v290, v291, v252, v253, v254, v255, v256, v257);
          goto LABEL_66;
        }

        v118, v120, v121, v122, v123, v124, v125, v126, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v242 = sub_100216774();
        sub_100002648(v242, qword_10029D160);
        v243 = sub_100216754();
        v244 = sub_100216C54();
        if (os_log_type_enabled(v243, v244))
        {
          v245 = swift_slowAlloc();
          *v245 = 0;
          _os_log_impl(&_mh_execute_header, v243, v244, "permanentInfo does not exist", v245, 2u);
        }

        sub_1000561D0();
        v239 = swift_allocError();
        v241 = xmmword_100225FD0;
      }

      else
      {
        sub_1000561D0();
        v239 = swift_allocError();
        v241 = xmmword_10021DA90;
      }

      *v240 = v241;
      *(v240 + 16) = 13;
      (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v239);

LABEL_66:

      return;
    }

    v215 = v386;
    v214 = sub_100216154();

    swift_willThrow();
    v44 = v49;
  }

  else
  {
    v213 = v386;
    v214 = sub_100216154();

    swift_willThrow();
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v216 = sub_100216774();
  sub_100002648(v216, qword_10029D160);
  swift_errorRetain();
  v217 = sub_100216754();
  v218 = sub_100216C74();

  if (os_log_type_enabled(v217, v218))
  {
    v219 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v386 = v220;
    *v219 = 136446210;
    v385 = v214;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v221 = sub_100216994();
    v223 = v222;
    v224 = sub_100005FB0(v221, v222, &v386);
    v223, v225, v226, v227, v228, v229, v230, v231, v370, v371, v372, v373, v374, v375, v376, v377, v378, RecoverableTLKSharesRequest;
    *(v219 + 4) = v224;
    _os_log_impl(&_mh_execute_header, v217, v218, "Unable to save inheritance identity: %{public}s", v219, 0xCu);
    sub_100006128(v220, v232, v233, v234, v235, v236, v237, v238);
  }

  swift_errorRetain();
  (v382)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v214);
}

uint64_t sub_100125F20(uint64_t a1, char *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, const char *a5, void *a6, id *a7)
{
  v168 = a7;
  v169 = a6;
  v166 = a4;
  v167 = a5;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v11 = *(RecoverableTLKShares - 8);
  __chkstk_darwin(RecoverableTLKShares - 8, v12);
  v14 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesResponse = type metadata accessor for FetchRecoverableTLKSharesResponse(0);
  v17 = __chkstk_darwin(RecoverableTLKSharesResponse - 8, v16);
  v170 = (&v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v19);
  v21 = &v160 - v20;
  v22 = sub_10001148C(&qword_100298440, &qword_10021DEB0);
  __chkstk_darwin(v22, v23);
  v25 = (&v160 - v24);
  sub_100019C6C(a1, &v160 - v24, &qword_100298440, &qword_10021DEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = a2;
    v27 = *v25;
    if (qword_100297520 == -1)
    {
LABEL_3:
      v28 = sub_100216774();
      sub_100002648(v28, qword_10029D160);
      swift_errorRetain();
      v29 = sub_100216754();
      v30 = sub_100216C74();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v172 = v32;
        *v31 = 136446210;
        v171 = v27;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v33 = sub_100216994();
        v35 = v34;
        v36 = sub_100005FB0(v33, v34, &v172);
        v35, v37, v38, v39, v40, v41, v42, v43, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169;
        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "fetchRecoverableTlkshares failed: %{public}s", v31, 0xCu);
        sub_100006128(v32, v44, v45, v46, v47, v48, v49, v50);
      }

      swift_errorRetain();
      (v26)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v27);
    }

LABEL_24:
    swift_once();
    goto LABEL_3;
  }

  sub_1001AC038(v25, v21, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v26 = *v21;
  v59 = *(*v21 + 16);
  v163 = a3;
  v164 = a2;
  v165 = v21;
  if (v59)
  {
    v172 = _swiftEmptyArrayStorage;
    sub_1001877E4(0, v59, 0, v54, v55, v56, v57, v58);
    v60 = v172;
    v61 = *(v11 + 80);
    v162 = v26;
    v62 = &v26[(v61 + 32) & ~v61];
    v63 = *(v11 + 72);
    v27 = v170;
    do
    {
      sub_1001AC0A0(v62, v14, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v64 = *(*(v14 + 2) + 16);
      sub_1001AC1E4(v14, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v172 = v60;
      v66 = *v60->endpoint;
      v65 = *v60->containerMap;
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        sub_1001877E4((v65 > 1), v66 + 1, 1, v54, v55, v56, v57, v58);
        v60 = v172;
      }

      *v60->endpoint = v67;
      *&v60[1]._TtCs12_SwiftObject_opaque[8 * v66] = v64;
      v62 += v63;
      --v59;
    }

    while (v59);
    v21 = v165;
    v26 = v162;
LABEL_13:
    v68 = 0;
    v69 = 32;
    while (1)
    {
      v70 = *&v60->_TtCs12_SwiftObject_opaque[v69];
      v71 = __OFADD__(v68, v70);
      v68 += v70;
      if (v71)
      {
        break;
      }

      v69 += 8;
      if (!--v67)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v60 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage[2];
  v27 = v170;
  if (v67)
  {
    goto LABEL_13;
  }

  v68 = 0;
LABEL_16:
  v60, v52, v53, v54, v55, v56, v57, v58, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v72 = sub_100216774();
  sub_100002648(v72, qword_10029D160);
  sub_1001AC0A0(v21, v27, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v73 = sub_100216754();
  v74 = sub_100216C54();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134218240;
    v76 = *(*v27 + 16);
    sub_1001AC1E4(v27, type metadata accessor for FetchRecoverableTLKSharesResponse);
    *(v75 + 4) = v76;
    *(v75 + 12) = 2048;
    *(v75 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v73, v74, "fetchRecoverableTlkshares succeeded: found %ld views and %ld total TLKShares", v75, 0x16u);
  }

  else
  {
    sub_1001AC1E4(v27, type metadata accessor for FetchRecoverableTLKSharesResponse);
  }

  sub_1001266F4(v26);
  v78 = v77;
  v79 = v166;
  v80 = [(Client *)v166 peerID];
  v81 = sub_100216974();
  v170 = v82;

  v83 = [(Client *)v79 data];
  v84 = sub_100216224();
  v86 = v85;

  v87 = [(Client *)v79 sig];
  v166 = sub_100216224();
  v162 = v88;

  v89 = v167;
  v90 = [v167 data];
  v91 = sub_100216224();
  v161 = v92;

  v93 = [v89 sig];
  v94 = sub_100216224();
  v160 = v94;
  v96 = v95;
  v167 = v95;

  v97 = [v168[3] peerID];
  v98 = sub_100216974();
  v100 = v99;

  v159 = v98;
  v158 = v96;
  v157 = v94;
  v101 = v81;
  v102 = v170;
  v103 = v84;
  v104 = v84;
  v105 = v86;
  v106 = v86;
  v107 = v166;
  v108 = v162;
  v109 = v91;
  v110 = v91;
  v111 = v161;
  (v164)(v101, v170, v104, v106, v166, v162, v110, v161, v157, v158, v169, v159, v100, v78, 0);
  v100, v112, v113, v114, v115, v116, v117, v118, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169;
  v78, v119, v120, v121, v122, v123, v124, v125, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169;
  sub_100002BF0(v160, v167, v126, v127, v128, v129, v130, v131);
  sub_100002BF0(v109, v111, v132, v133, v134, v135, v136, v137);
  sub_100002BF0(v107, v108, v138, v139, v140, v141, v142, v143);
  sub_100002BF0(v103, v105, v144, v145, v146, v147, v148, v149);
  v102, v150, v151, v152, v153, v154, v155, v156, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169;
  return sub_1001AC1E4(v165, type metadata accessor for FetchRecoverableTLKSharesResponse);
}

void sub_1001266F4(uint64_t a1)
{
  v50 = *(a1 + 16);
  if (!v50)
  {
    return;
  }

  v2 = 0;
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) - 8);
  v4 = _swiftEmptyArrayStorage;
  v49 = (a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v48 = *(v3 + 72);
  v5 = &qword_10029D7D8;
  while (1)
  {
    v6 = sub_10005895C();
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      v9 = sub_1002170F4();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      v43 = sub_1002170F4();
      v12 = v43 + v9;
      if (__OFADD__(v43, v9))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v57 = v9;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v10)
      {
        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1002170F4();
      goto LABEL_15;
    }

    if (v10)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = sub_100217024();
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v8)
    {
      break;
    }

    v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v23 >> 1) - v22) < v57)
    {
      goto LABEL_35;
    }

    v52 = v2;
    v54 = v4;
    v27 = v21 + 8 * v22 + 32;
    v47 = v21;
    if (v8)
    {
      if (v24 < 1)
      {
        goto LABEL_37;
      }

      sub_1001AC36C(&qword_10029D7E0, v5, &qword_100226608, &protocol conformance descriptor for [A]);
      for (i = 0; i != v24; ++i)
      {
        sub_10001148C(v5, &qword_100226608);
        v36 = v5;
        v37 = sub_10018CF4C(&v55, i, v7);
        v39 = *v38;
        (v37)(&v55, 0);
        v5 = v36;
        *(v27 + 8 * i) = v39;
      }
    }

    else
    {
      sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      swift_arrayInitWithCopy();
    }

    v7, v28, v29, v30, v31, v32, v33, v34, v44, v45, v47, v48, v49, v50, v52, v54, v55, v56;
    v2 = v51;
    v4 = v53;
    if (v57 >= 1)
    {
      v40 = v46[2];
      v41 = __OFADD__(v40, v57);
      v42 = v40 + v57;
      if (v41)
      {
        goto LABEL_36;
      }

      v46[2] = v42;
    }

LABEL_4:
    if (++v2 == v50)
    {
      return;
    }
  }

  v25 = v21;
  v26 = sub_1002170F4();
  v21 = v25;
  v24 = v26;
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7, v14, v15, v16, v17, v18, v19, v20, v44, v45, v46, v48, v49, v50, v51, v53, v55, v56;
  if (v57 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_100126A3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *v5->endpoint = a1;
  *v5->containerMap = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = sub_1001AC2A8;
  *(v7 + 32) = v5;
  v8 = swift_allocObject();
  *v8->endpoint = sub_1001AC2B0;
  *v8->containerMap = v7;
  v41[4] = sub_1001ACCC0;
  v42 = v8;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 1107296256;
  v41[2] = sub_100109050;
  v41[3] = &unk_100285920;
  v9 = _Block_copy(v41);
  v10 = v42;

  v11 = v2;

  v10, v12, v13, v14, v15, v16, v17, v18;
  [v6 performBlockAndWait:v9];
  v5, v19, v20, v21, v22, v23, v24, v25;
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v7, v27, v28, v29, v30, v31, v32, v33;
  v8, v34, v35, v36, v37, v38, v39, v40;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100126BF0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 134218242;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2082;
    v12 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v48._countAndFlagsBits = sub_100216994();
      object = v48._object;
      sub_100216A14(v48);
      object, v14, v15, v16, v17, v18, v19, v20, a2, 0x203A726F727265, 0xE700000000000000, v41, v42, v43, v44, v45, v46, v47;

      v21 = v39;
      v12 = v40;
    }

    else
    {
      v21 = 0x73736563637573;
    }

    v22 = sub_100005FB0(v21, v12, &v41);
    v12, v23, v24, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47;
    *(v10 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v7, "getEgoEpoch complete: %llu %{public}s", v10, 0x16u);
    sub_100006128(v11, v30, v31, v32, v33, v34, v35, v36);
  }

  return a3(a1, a2);
}

void sub_100126E08(uint64_t a1, void (*a2)(id, id))
{
  v4 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v28 = 0;
    v7 = v6;
    v8 = [v7 peerWithID:v5 error:&v28];

    v9 = v28;
    if (v28)
    {
      v10 = v28;

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v11 = sub_100216774();
      sub_100002648(v11, qword_10029D160);
      v12 = v10;
      v13 = sub_100216754();
      v14 = sub_100216C74();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        v17 = v12;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&_mh_execute_header, v13, v14, "Error getting ego peer from model: %{public}@", v15, 0xCu);
        sub_1000114D4(v16, &qword_10029D580, &unk_10021CCC0);
      }

      v19 = v12;
      v20 = 0;
      v21 = v9;
      goto LABEL_13;
    }

    if (v8)
    {
      v19 = v8;
      v24 = [v19 permanentInfo];
      v25 = [v24 epoch];

      v20 = v25;
      v21 = 0;
LABEL_13:
      a2(v20, v21);

      return;
    }

    sub_1000561D0();
    v26 = swift_allocError();
    *v27 = xmmword_10021DA90;
    *(v27 + 16) = 13;
    a2(0, v26);
  }

  else
  {
    sub_1000561D0();
    v22 = swift_allocError();
    *v23 = xmmword_10021DA90;
    *(v23 + 16) = 13;
    a2(0, v22);
  }
}

uint64_t sub_100127160(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void), void *a8)
{
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
  a2, v18, v19, v20, v21, v22, v23, v24, v62, v66, v68, a3, v75, v78, v80, v82, v83, v84;

  if (os_log_type_enabled(v17, v15))
  {
    v63 = a4;
    v69 = a7;
    v25 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v25 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v26 = sub_100216994();
    v28 = v27;
    v29 = sub_100005FB0(v26, v27, &v82);
    v28, v30, v31, v32, v33, v34, v35, v36, v63, a8, v69, v73, v76, a1, a2, v82, v83, v84;
    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v37 = 0xE700000000000000;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v85._countAndFlagsBits = sub_100216994();
      object = v85._object;
      sub_100216A14(v85);
      object, v39, v40, v41, v42, v43, v44, v45, v64, v67, v70, v74, a5, 1869771365, 0xE700000000000000, v82, v83, v84;

      v46 = v79;
      v37 = v81;
    }

    else
    {
      v46 = 0x73736563637573;
    }

    v53 = sub_100005FB0(v46, v37, &v82);
    v37, v54, v55, v56, v57, v58, v59, v60, v64, v67, v70, v74, v77, v79, v81, v82, v83, v84;
    *(v25 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v17, v15, "establish complete peer: %{public}s %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    a7 = v71;
    a4 = v65;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000062, 0x800000010023C990, v47, v48, v49, v50, v51, v52);
  return a7(a1, a2, v73, a4, a5);
}

void sub_100127430(char *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, _TtC18TrustedPeersHelper6Client *a6, void *a7, _TtC18TrustedPeersHelper6Client *a8, void *a9, _TtC18TrustedPeersHelper6Client *a10, char a11, void (*a12)(void, void, void *, void, uint64_t), _TtC18TrustedPeersHelper6Client *a13)
{

  sub_1001A47C0(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1, a12, a13);

  a13, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1001274E8(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = kSecurityRTCEventNameFetchAfterEstablish;
  sub_1001A9F94();
  v18 = a2;
  v20 = v19;
  if (v18)
  {
    v21 = sub_100216964();
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v23 = sub_100216964();
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v35) = a7 & 1;
  v24 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v21 flowID:a4 deviceSessionID:v23 eventName:v17 testsAreEnabled:v20 canSendMetrics:v35 category:v22];

  sub_100175FF0();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a9;
  *(v25 + 32) = a10;
  *(v25 + 40) = a8;
  *(v25 + 48) = a11;
  *(v25 + 56) = a12;
  v26 = v24;

  v27 = a8;

  sub_10016ECB4(0, sub_1001AAA28, v25);

  v25, v28, v29, v30, v31, v32, v33, v34;
}

void sub_10012788C(void *a1, void *a2, uint64_t (*a3)(void, void, void *, void, uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029D160);
    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v16 = sub_100216994();
      v18 = v17;
      v19 = sub_100005FB0(v16, v17, &aBlock);
      v18, v20, v21, v22, v23, v24, v25, v26, v67, a1, aBlock, v69, v70, v71, v72, v73, v74, v75;
      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "fetchAfterEstablish failed to fetch changes: %{public}s", v14, 0xCu);
      sub_100006128(v15, v27, v28, v29, v30, v31, v32, v33);
    }

    v34 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v34];

    a3(0, 0, _swiftEmptyArrayStorage, 0, a1);
  }

  else
  {
    v37 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v39 = swift_allocObject();
    *(v39 + 16) = a5;
    *(v39 + 24) = a2;
    *(v39 + 32) = a3;
    *(v39 + 40) = a4;
    *(v39 + 48) = a6;
    *(v39 + 56) = a7;
    v40 = swift_allocObject();
    *v40->endpoint = sub_1001AAA58;
    *v40->containerMap = v39;
    v72 = sub_1001ACCC0;
    v73 = v40;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100109050;
    v71 = &unk_100283DC8;
    v41 = _Block_copy(&aBlock);
    v42 = v73;
    v43 = a5;
    v44 = a2;

    v42, v45, v46, v47, v48, v49, v50, v51;
    [v37 performBlockAndWait:v41];
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v39, v53, v54, v55, v56, v57, v58, v59;
    v40, v60, v61, v62, v63, v64, v65, v66;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100127BC8(char *a1, void *a2, void (*a3)(void, void, void *, void, void *), uint64_t a4, _TtC18TrustedPeersHelper6Client *a5, _TtC18TrustedPeersHelper6Client *a6)
{
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v12)
  {
    v13 = v12;
    v668 = a4;
    v14 = sub_100216974();
    v16 = v15;
    v17 = [*&a1[v11] egoPeerPermanentInfo];
    if (v17)
    {
      v666 = a5;
      v669 = v16;
      v25 = v17;
      v26 = sub_100216224();
      v28 = v27;

      v29 = [*&a1[v11] egoPeerPermanentInfoSig];
      if (v29)
      {
        v662 = v14;
        v667 = v26;
        v30 = v29;
        v31 = sub_100216224();
        v33 = v32;

        v34 = [*&a1[v11] egoPeerStableInfo];
        if (v34)
        {
          v664 = v33;
          v665 = v31;
          v35 = v34;
          v36 = sub_100216224();
          v38 = v37;

          v39 = [*&a1[v11] egoPeerStableInfoSig];
          if (v39)
          {
            v660 = v36;
            v661 = v28;
            v40 = v39;
            v658 = sub_100216224();
            v659 = v41;

            v42 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
            v672[0] = 0;
            v43 = v42;
            v44 = [v43 hasPeerWithID:v13 error:v672];

            v45 = v672[0];
            if (v672[0])
            {
              swift_willThrow();
              v46 = qword_100297520;
              v47 = v45;
              if (v46 != -1)
              {
                swift_once();
              }

              v48 = sub_100216774();
              sub_100002648(v48, qword_10029D160);

              v49 = v47;
              v50 = sub_100216754();
              v51 = sub_100216C54();

              v669, v52, v53, v54, v55, v56, v57, v58, v549, v559, v569, v579, v589, v598, v607, v615, v625, v634;
              if (os_log_type_enabled(v50, v51))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v672[0] = v68;
                *v66 = 136446466;
                v69 = sub_100005FB0(v662, v669, v672);
                v669, v70, v71, v72, v73, v74, v75, v76, v550, v560, v570, v580, v590, v599, v608, v616, v626, v635;
                *(v66 + 4) = v69;
                *(v66 + 12) = 2114;
                v77 = v49;
                v78 = _swift_stdlib_bridgeErrorToNSError();
                *(v66 + 14) = v78;
                *v67 = v78;
                _os_log_impl(&_mh_execute_header, v50, v51, "fetchAfterEstablish: error finding peer %{public}s in model: %{public}@", v66, 0x16u);
                sub_1000114D4(v67, &qword_10029D580, &unk_10021CCC0);

                sub_100006128(v68, v79, v80, v81, v82, v83, v84, v85);
              }

              else
              {
                v669, v59, v60, v61, v62, v63, v64, v65, v550, v560, v570, v580, v590, v599, v608, v616, v626, v635;
              }

              v298 = sub_100216144();
              [a2 sendMetricWithResult:0 error:v298];

              v299 = v49;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v45);

              sub_100002BF0(v658, v659, v300, v301, v302, v303, v304, v305);
              sub_100002BF0(v660, v38, v306, v307, v308, v309, v310, v311);
              sub_100002BF0(v665, v664, v312, v313, v314, v315, v316, v317);
              v324 = v667;
              v325 = v661;
              goto LABEL_58;
            }

            if (v44)
            {
              v657 = v38;
              v656 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v667, v661);
              sub_100012558(v665, v664);
              v653 = sub_100216964();
              v669, v122, v123, v124, v125, v126, v127, v128, v549, v559, v569, v579, v589, v598, v607, v615, v625, v634;
              isa = sub_100216204().super.isa;
              v130 = sub_100216204().super.isa;
              v646 = objc_opt_self();
              v131 = [v646 permanentInfoWithPeerID:v653 data:isa sig:v130 keyFactory:v656];

              sub_100002BF0(v665, v664, v132, v133, v134, v135, v136, v137);
              sub_100002BF0(v667, v661, v138, v139, v140, v141, v142, v143);

              v654 = v131;
              if (!v131)
              {
                v669, v144, v145, v146, v147, v148, v149, v150, v551, v561, v571, v581, v591, v600, v609, v617, v627, v636;
                sub_1000561D0();
                swift_allocError();
                *v386 = xmmword_10021DA80;
                *(v386 + 16) = 13;
                v387 = sub_100216144();

                [a2 sendMetricWithResult:0 error:v387];

                v388 = swift_allocError();
                *v389 = xmmword_10021DA80;
                *(v389 + 16) = 13;
                a3(0, 0, _swiftEmptyArrayStorage, 0, v388);

                sub_100002BF0(v658, v659, v390, v391, v392, v393, v394, v395);
                sub_100002BF0(v660, v657, v396, v397, v398, v399, v400, v401);
                sub_100002BF0(v665, v664, v402, v403, v404, v405, v406, v407);
                v324 = v667;
                v325 = v661;
                goto LABEL_58;
              }

              v650 = objc_allocWithZone(TPPeerStableInfo);
              sub_100012558(v660, v657);
              sub_100012558(v658, v659);
              v648 = sub_100216204().super.isa;
              v151 = sub_100216204().super.isa;
              v152 = [v650 initWithData:v648 sig:v151];

              sub_100002BF0(v658, v659, v153, v154, v155, v156, v157, v158);
              sub_100002BF0(v660, v657, v159, v160, v161, v162, v163, v164);
              if (v152)
              {
                v172 = swift_allocObject();
                *v172->endpoint = a2;
                *v172->containerMap = a3;
                *v172[1]._TtCs12_SwiftObject_opaque = v668;
                *&v172[1]._TtCs12_SwiftObject_opaque[8] = a1;
                *v172[1].endpoint = v654;
                *v172[1].containerMap = v152;
                v173 = v662;
                v663 = v172;
                *v172[2]._TtCs12_SwiftObject_opaque = v173;
                *&v172[2]._TtCs12_SwiftObject_opaque[8] = v669;
                v643 = *&a1[v11];
                swift_bridgeObjectRetain_n();
                v651 = a2;
                swift_retain_n();
                v174 = a1;
                v175 = v654;
                v176 = v152;
                v645 = v651;
                v649 = v174;
                v652 = v175;
                v655 = v176;
                v177 = [v643 egoPeerID];
                if (v177)
                {
                  v178 = v177;
                  v179 = sub_100216974();
                  v181 = v180;

                  v182 = [*&a1[v11] egoPeerPermanentInfo];
                  if (v182)
                  {
                    v190 = v182;
                    v191 = sub_100216224();
                    v193 = v192;

                    v194 = [*&a1[v11] egoPeerPermanentInfoSig];
                    if (v194)
                    {
                      v201 = v194;
                      v202 = sub_100216224();
                      v203 = v181;
                      v205 = v204;

                      v206 = objc_allocWithZone(TPECPublicKeyFactory);

                      sub_100012558(v191, v193);
                      sub_100012558(v202, v205);
                      v644 = v191;
                      v207 = [v206 init];
                      v208 = sub_100216964();
                      v203, v209, v210, v211, v212, v213, v214, v215, v551, v561, v571, v581, v591, v600, v203, v617, v627, v636;
                      v216 = sub_100216204().super.isa;
                      v601._countAndFlagsBits = v179;
                      v217 = sub_100216204().super.isa;
                      v218 = [v646 permanentInfoWithPeerID:v208 data:v216 sig:v217 keyFactory:v207];

                      sub_100002BF0(v202, v205, v219, v220, v221, v222, v223, v224);
                      sub_100002BF0(v644, v193, v225, v226, v227, v228, v229, v230);

                      v618 = v202;
                      if (v218)
                      {
                        strcpy(v672, "signing-key ");
                        BYTE5(v672[1]) = 0;
                        HIWORD(v672[1]) = -5120;
                        swift_bridgeObjectRetain_n();
                        v238 = v649;
                        v671 = v649;

                        v239 = v218;
                        sub_100216A14(v601);
                        v240 = v672[0];
                        v241 = v672[1];
                        v242 = v657;
                        v647 = v672[1];

                        sub_100197B58(v240, v241, v601._countAndFlagsBits, v601._object, sub_1001AAA68, v663, v671, v601._countAndFlagsBits, v601._object, v666, a6, v239);

                        a6, v243, v244, v245, v246, v247, v248, v249, v553, v563, v573, v583, v592, v601._countAndFlagsBits, v601._object, v618, v205, v193;
                        v666, v250, v251, v252, v253, v254, v255, v256, v554, v564, v574, v584, v593, v602, v610, v619, v628, v637;

                        v663, v257, v258, v259, v260, v261, v262, v263;
                        v647, v264, v265, v266, v267, v268, v269, v270, v555, v565, v575, v585, v594, v603, v611, v620, v629, v638;
                        swift_bridgeObjectRelease_n();
                        sub_100002BF0(v621, v630, v271, v272, v273, v274, v275, v276);
                        sub_100002BF0(v644, v639, v277, v278, v279, v280, v281, v282);
                        v290 = v663;
                        v292 = v667;
                        v291 = v668;
                        v293 = v661;
                        v295 = v664;
                        v294 = v665;
                        v296 = v656;
                        v297 = v645;
LABEL_57:
                        v290, v283, v284, v285, v286, v287, v288, v289;

                        swift_bridgeObjectRelease_n();
                        v291, v457, v458, v459, v460, v461, v462, v463;

                        sub_100002BF0(v658, v659, v464, v465, v466, v467, v468, v469);
                        sub_100002BF0(v660, v242, v470, v471, v472, v473, v474, v475);
                        sub_100002BF0(v294, v295, v476, v477, v478, v479, v480, v481);
                        v324 = v292;
                        v325 = v293;
                        goto LABEL_58;
                      }

                      v601._object, v231, v232, v233, v234, v235, v236, v237, v552, v562, v572, v582, v592, v601._countAndFlagsBits, v601._object, v202, v205, v193;
                      if (qword_100297520 != -1)
                      {
                        swift_once();
                      }

                      v482 = sub_100216774();
                      sub_100002648(v482, qword_10029D160);

                      v483 = sub_100216754();
                      v484 = sub_100216C54();
                      v666, v485, v486, v487, v488, v489, v490, v491, v557, v567, v577, v587, v596, v605, v613, v623, v632, v641;
                      v295 = v664;
                      if (os_log_type_enabled(v483, v484))
                      {
                        v492 = swift_slowAlloc();
                        v493 = swift_slowAlloc();
                        v672[0] = v493;
                        *v492 = 136446210;
                        sub_10000200C(0, &qword_10029D938, off_100275018);
                        v494 = sub_100216B34();
                        v496 = v495;
                        v497 = sub_100005FB0(v494, v495, v672);
                        v496, v498, v499, v500, v501, v502, v503, v504, v558, v568, v578, v588, v597, v606, v614, v624, v633, v642;
                        *(v492 + 4) = v497;
                        _os_log_impl(&_mh_execute_header, v483, v484, "Couldn't parse self identity: %{public}s", v492, 0xCu);
                        sub_100006128(v493, v505, v506, v507, v508, v509, v510, v511);
                      }

                      sub_1000561D0();
                      v512 = swift_allocError();
                      *v513 = xmmword_10021DA80;
                      *(v513 + 16) = 13;
                      swift_errorRetain();
                      v514 = sub_100216754();
                      v515 = sub_100216C74();

                      if (os_log_type_enabled(v514, v515))
                      {
                        v516 = swift_slowAlloc();
                        v517 = swift_slowAlloc();
                        v672[0] = v517;
                        *v516 = 136446210;
                        v673 = v512;
                        swift_errorRetain();
                        sub_10001148C(&qword_100297E80, &unk_1002265A0);
                        v518 = sub_100216994();
                        v520 = v519;
                        v521 = sub_100005FB0(v518, v519, v672);
                        v520, v522, v523, v524, v525, v526, v527, v528, v558, v568, v578, v588, v597, v606, v614, v624, v633, v642;
                        *(v516 + 4) = v521;
                        _os_log_impl(&_mh_execute_header, v514, v515, "fetchAfterEstablish failed to update TLKs: %{public}s", v516, 0xCu);
                        sub_100006128(v517, v529, v530, v531, v532, v533, v534, v535);
                      }

                      v293 = v661;
                      v292 = v667;
                      v294 = v665;
                      v296 = v656;
                      v536 = sub_100216144();
                      v297 = v645;
                      [v645 sendMetricWithResult:0 error:v536];

                      v291 = v668;
                      a3(0, 0, _swiftEmptyArrayStorage, 0, v512);

                      sub_100002BF0(v624, v633, v537, v538, v539, v540, v541, v542);
                      sub_100002BF0(v644, v642, v543, v544, v545, v546, v547, v548);
LABEL_56:
                      v242 = v657;
                      v290 = v663;
                      v238 = v649;
                      goto LABEL_57;
                    }

                    sub_100002BF0(v191, v193, v195, v196, v197, v198, v199, v200);
                  }

                  v181, v183, v184, v185, v186, v187, v188, v189, v551, v561, v571, v581, v591, v600, v609, v617, v627, v636;
                }

                v295 = v664;
                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v428 = sub_100216774();
                sub_100002648(v428, qword_10029D160);
                v429 = sub_100216754();
                v430 = sub_100216C54();
                if (os_log_type_enabled(v429, v430))
                {
                  v431 = swift_slowAlloc();
                  *v431 = 0;
                  _os_log_impl(&_mh_execute_header, v429, v430, "Have no self identity, can't make tlk shares", v431, 2u);
                }

                sub_1000561D0();
                v432 = swift_allocError();
                *v433 = xmmword_10021DA90;
                *(v433 + 16) = 13;
                swift_errorRetain();
                v434 = sub_100216754();
                v435 = sub_100216C74();

                if (os_log_type_enabled(v434, v435))
                {
                  v436 = swift_slowAlloc();
                  v437 = swift_slowAlloc();
                  v672[0] = v437;
                  *v436 = 136446210;
                  v673 = v432;
                  swift_errorRetain();
                  sub_10001148C(&qword_100297E80, &unk_1002265A0);
                  v438 = sub_100216994();
                  v440 = v439;
                  v441 = sub_100005FB0(v438, v439, v672);
                  v440, v442, v443, v444, v445, v446, v447, v448, v551, v561, v571, v581, v591, v600, v609, v617, v627, v636;
                  *(v436 + 4) = v441;
                  _os_log_impl(&_mh_execute_header, v434, v435, "fetchAfterEstablish failed to update TLKs: %{public}s", v436, 0xCu);
                  sub_100006128(v437, v449, v450, v451, v452, v453, v454, v455);
                }

                v293 = v661;
                v292 = v667;
                v294 = v665;
                v296 = v656;
                v456 = sub_100216144();
                v297 = v645;
                [v645 sendMetricWithResult:0 error:v456];

                v291 = v668;
                a3(0, 0, _swiftEmptyArrayStorage, 0, v432);

                goto LABEL_56;
              }

              v669, v165, v166, v167, v168, v169, v170, v171, v551, v561, v571, v581, v591, v600, v609, v617, v627, v636;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v408 = sub_100216774();
              sub_100002648(v408, qword_10029D160);
              v409 = sub_100216754();
              v410 = sub_100216C54();
              v344 = v667;
              if (os_log_type_enabled(v409, v410))
              {
                v411 = swift_slowAlloc();
                *v411 = 0;
                _os_log_impl(&_mh_execute_header, v409, v410, "cannot create TPPeerStableInfo", v411, 2u);
              }

              sub_1000561D0();
              swift_allocError();
              *v412 = xmmword_10021DC20;
              *(v412 + 16) = 13;
              v413 = sub_100216144();

              [a2 sendMetricWithResult:0 error:v413];

              v414 = swift_allocError();
              *v415 = xmmword_10021DC20;
              *(v415 + 16) = 13;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v414);

              sub_100002BF0(v658, v659, v416, v417, v418, v419, v420, v421);
              sub_100002BF0(v660, v657, v422, v423, v424, v425, v426, v427);
              v384 = v665;
              v385 = v664;
            }

            else
            {
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v326 = v38;
              v327 = sub_100216774();
              sub_100002648(v327, qword_10029D160);

              v328 = sub_100216754();
              v329 = sub_100216C54();
              v669, v330, v331, v332, v333, v334, v335, v336, v549, v559, v569, v579, v589, v598, v607, v615, v625, v634;
              v344 = v667;
              if (os_log_type_enabled(v328, v329))
              {
                v345 = swift_slowAlloc();
                v346 = swift_slowAlloc();
                v672[0] = v346;
                *v345 = 136446210;
                v347 = sub_100005FB0(v662, v669, v672);
                v669, v348, v349, v350, v351, v352, v353, v354, v556, v566, v576, v586, v595, v604, v612, v622, v631, v640;
                *(v345 + 4) = v347;
                _os_log_impl(&_mh_execute_header, v328, v329, "fetchAfterEstablish: did not find peer %{public}s in model", v345, 0xCu);
                sub_100006128(v346, v355, v356, v357, v358, v359, v360, v361);
              }

              else
              {
                v669, v337, v338, v339, v340, v341, v342, v343, v556, v566, v576, v586, v595, v604, v612, v622, v631, v640;
              }

              sub_1000561D0();
              swift_allocError();
              *v362 = xmmword_100225FE0;
              *(v362 + 16) = 13;
              v363 = sub_100216144();

              [a2 sendMetricWithResult:0 error:v363];

              v364 = swift_allocError();
              *v365 = xmmword_100225FE0;
              *(v365 + 16) = 13;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v364);

              sub_100002BF0(v658, v659, v366, v367, v368, v369, v370, v371);
              sub_100002BF0(v660, v326, v372, v373, v374, v375, v376, v377);
              v385 = v664;
              v384 = v665;
            }

            sub_100002BF0(v384, v385, v378, v379, v380, v381, v382, v383);
            v324 = v344;
            v325 = v661;
LABEL_58:
            sub_100002BF0(v324, v325, v318, v319, v320, v321, v322, v323);
            return;
          }

          sub_100002BF0(v36, v38, v101, v102, v103, v104, v105, v106);
          v100 = v664;
          v99 = v665;
        }

        else
        {

          v99 = v31;
          v100 = v33;
        }

        sub_100002BF0(v99, v100, v93, v94, v95, v96, v97, v98);
        v92 = v667;
      }

      else
      {

        v92 = v26;
      }

      sub_100002BF0(v92, v28, v86, v87, v88, v89, v90, v91);
      v669, v107, v108, v109, v110, v111, v112, v113, v549, v559, v569, v579, v589, v598, v607, v615, v625, v634;
    }

    else
    {
      v16, v18, v19, v20, v21, v22, v23, v24, v549, v559, v569, v579, v589, v598, v607, v615, v625, v634;
    }
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v114 = sub_100216774();
  sub_100002648(v114, qword_10029D160);
  v115 = sub_100216754();
  v116 = sub_100216C54();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "fetchAfterEstablish: failed to fetch egoPeerID", v117, 2u);
  }

  sub_1000561D0();
  swift_allocError();
  *v118 = xmmword_10021DA90;
  *(v118 + 16) = 13;
  v119 = sub_100216144();

  [a2 sendMetricWithResult:0 error:v119];

  v120 = swift_allocError();
  *v121 = xmmword_10021DA90;
  *(v121 + 16) = 13;
  a3(0, 0, _swiftEmptyArrayStorage, 0, v120);
}

void sub_100129168(void *a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t, _TtC18TrustedPeersHelper6Client *, void *, uint64_t), int a5, int a6, id a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
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
      v69 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v18 = sub_100216994();
      v20 = v19;
      v21 = sub_100005FB0(v18, v19, &v69);
      v20, v22, v23, v24, v25, v26, v27, v28, v62, a2, v69, v70, v71, v72, v73, v74, v75, v76;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "fetchAfterEstablish failed to update TLKs: %{public}s", v16, 0xCu);
      sub_100006128(v17, v29, v30, v31, v32, v33, v34, v35);
    }

    v36 = sub_100216144();
    [a3 sendMetricWithResult:0 error:v36];

    a4(0, 0, _swiftEmptyArrayStorage, 0, a2);
  }

  else
  {
    v38 = [a7 modelID];
    v39 = sub_100216974();
    v41 = v40;

    v42 = sub_100151404(v39, v41, a8);
    v41, v43, v44, v45, v46, v47, v48, v49, a1, v67, v69, v70, v71, v72, v73, v74, v75, v76;
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
      _os_log_impl(&_mh_execute_header, v51, v52, "fetchAfterEstablish succeeded", v53, 2u);
    }

    [a3 sendMetricWithResult:1 error:0];
    if (v64)
    {
      v54 = v64;
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
    }

    v65 = v42;
    a4(a9, a10, v54, v42, 0);
    v54, v55, v56, v57, v58, v59, v60, v61, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76;
  }
}

void sub_1001296AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, void (*a11)(void, void, void *, void, uint64_t), uint64_t a12)
{
  v17 = kSecurityRTCEventNameOnqueueEstablishTPH;
  sub_1001A9F94();
  v19 = v18;
  v330 = a4;
  if (a5)
  {
    v20 = sub_100216964();
  }

  else
  {
    v20 = 0;
  }

  v331 = a6;
  if (a7)
  {
    v21 = sub_100216964();
    v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
LABEL_6:
      v23 = sub_100216964();
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
    v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
LABEL_9:
  v278 = v22;
  LOBYTE(v274) = a10 & 1;
  v336 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v20 flowID:v21 deviceSessionID:v23 eventName:v17 testsAreEnabled:v19 canSendMetrics:? category:?];

  v24 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v25 = [*&v12[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v25)
  {
LABEL_22:
    sub_1000561D0();
    swift_allocError();
    *v171 = xmmword_10021DA90;
    *(v171 + 16) = 13;
    v172 = sub_100216144();

    [v336 sendMetricWithResult:0 error:v172];

    v173 = swift_allocError();
    *v174 = xmmword_10021DA90;
    *(v174 + 16) = 13;
    a11(0, 0, _swiftEmptyArrayStorage, 0, v173);

    goto LABEL_23;
  }

  v26 = v25;
  v27 = sub_100216974();
  v29 = v28;

  v30 = [*&v12[v24] egoPeerPermanentInfo];
  if (!v30)
  {
LABEL_21:
    v29, v31, v32, v33, v34, v35, v36, v37, v274, v278, v282, v286, v290, v294, v298, v303, v308, v315;
    goto LABEL_22;
  }

  v38 = v30;
  v39 = sub_100216224();
  v41 = v40;

  v42 = [*&v12[v24] egoPeerPermanentInfoSig];
  if (!v42)
  {
LABEL_20:
    sub_100002BF0(v39, v41, v43, v44, v45, v46, v47, v48);
    goto LABEL_21;
  }

  v328 = v39;
  v49 = v42;
  v329 = sub_100216224();
  v51 = v50;

  v52 = [*&v12[v24] egoPeerStableInfo];
  if (!v52)
  {
LABEL_19:
    sub_100002BF0(v329, v51, v53, v54, v55, v56, v57, v58);
    v39 = v328;
    goto LABEL_20;
  }

  v324 = v27;
  v327 = v41;
  v59 = v52;
  v60 = sub_100216224();
  v62 = v61;

  v63 = [*&v12[v24] egoPeerStableInfoSig];
  if (!v63)
  {
    sub_100002BF0(v60, v62, v64, v65, v66, v67, v68, v69);
    v41 = v327;
    goto LABEL_19;
  }

  v326 = v60;
  v70 = v63;
  v309 = sub_100216224();
  v316 = v71;

  v325 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v328, v327);
  sub_100012558(v329, v51);
  v72 = sub_100216964();
  v29, v73, v74, v75, v76, v77, v78, v79, v274, v278, v282, a7, v290, v294, v72, v62, v309, v316;
  isa = sub_100216204().super.isa;
  v323 = v51;
  v81 = sub_100216204().super.isa;
  v82 = [objc_opt_self() permanentInfoWithPeerID:v72 data:isa sig:v81 keyFactory:v325];

  sub_100002BF0(v329, v323, v83, v84, v85, v86, v87, v88);
  sub_100002BF0(v328, v327, v89, v90, v91, v92, v93, v94);

  if (v82)
  {
    v102 = objc_allocWithZone(TPPeerStableInfo);
    sub_100012558(v326, v304);
    sub_100012558(v310, v317);
    v103 = sub_100216204().super.isa;
    v104 = sub_100216204().super.isa;
    v105 = [v102 initWithData:v103 sig:v104];

    sub_100002BF0(v310, v317, v106, v107, v108, v109, v110, v111);
    sub_100002BF0(v326, v304, v112, v113, v114, v115, v116, v117);
    if (v105)
    {
      v300 = v105;
      v125 = [v82 machineID];
      v126 = sub_100216974();
      v128 = v127;

      LOBYTE(v125) = sub_1001E537C(v126, v128);
      v128, v129, v130, v131, v132, v133, v134, v135, v275, v279, v283, v287, v29, v82, v300, v304, v310, v317;
      if (v125)
      {
        v143 = swift_allocObject();
        *(v143 + 16) = v336;
        *(v143 + 24) = a11;
        *(v143 + 32) = a12;
        *(v143 + 40) = v12;
        *(v143 + 48) = a1;
        *(v143 + 56) = v82;
        *(v143 + 64) = a2;
        *(v143 + 72) = v324;
        *(v143 + 80) = v292;
        *(v143 + 88) = v301;
        *(v143 + 96) = a3;
        *(v143 + 104) = v328;
        *(v143 + 112) = v327;
        *(v143 + 120) = v329;
        *(v143 + 128) = v323;
        *(v143 + 136) = v326;
        *(v143 + 144) = v305;
        *(v143 + 152) = v311;
        *(v143 + 160) = v318;
        *(v143 + 168) = v330;
        *(v143 + 176) = a5;
        *(v143 + 184) = v331;
        *(v143 + 192) = v288;
        *(v143 + 200) = a8;
        *(v143 + 208) = a9;
        *(v143 + 216) = a10 & 1;
        strcpy(v337, "signing-key ");
        BYTE5(v337[1]) = 0;
        HIWORD(v337[1]) = -5120;

        sub_100012558(v328, v327);
        sub_100012558(v329, v323);
        v144 = v305;
        sub_100012558(v326, v305);
        v145 = v311;
        sub_100012558(v311, v318);

        v146 = v336;

        v147 = v12;

        v148 = v295;

        v149 = v301;

        v339._countAndFlagsBits = v324;
        v339._object = v292;
        sub_100216A14(v339);

        sub_100198E8C(v337[0], v337[1], sub_1001AC244, v143, v324, v292);

        v337[1], v150, v151, v152, v153, v154, v155, v156, v276, v280, v284, v288, v292, v295, v301, v305, v311, v318;

        swift_bridgeObjectRelease_n();
        sub_100002BF0(v145, v319, v157, v158, v159, v160, v161, v162);
        v169 = v326;
        v170 = v144;
      }

      else
      {
        v292, v136, v137, v138, v139, v140, v141, v142, v276, v280, v284, v288, v292, v295, v301, v305, v311, v318;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v220 = sub_100216774();
        sub_100002648(v220, qword_10029D160);
        v221 = v82;
        v222 = sub_100216754();
        v223 = sub_100216C54();

        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v337[0] = v225;
          *v224 = 136446210;
          v226 = [v221 machineID];
          v227 = sub_100216974();
          v229 = v228;

          v230 = sub_100005FB0(v227, v229, v337);
          v229, v231, v232, v233, v234, v235, v236, v237, v277, v281, v285, v289, v293, v297, v302, v307, v314, v322;
          *(v224 + 4) = v230;
          _os_log_impl(&_mh_execute_header, v222, v223, "establish: self machineID %{public}s not on list", v224, 0xCu);
          sub_100006128(v225, v238, v239, v240, v241, v242, v243, v244);
        }

        else
        {
        }

        v245 = objc_allocWithZone(SecTapToRadar);
        v246 = sub_100216964();
        v247 = sub_100216964();
        v248 = sub_100216964();
        v249 = [v245 initTapToRadar:v246 description:v247 radar:v248];

        [v249 trigger];
        v250 = [v221 machineID];
        v251 = sub_100216974();
        v253 = v252;

        sub_1000561D0();
        swift_allocError();
        *v254 = v251;
        *(v254 + 8) = v253;
        *(v254 + 16) = 2;
        v255 = sub_100216144();

        [v336 sendMetricWithResult:0 error:v255];

        v256 = [v221 machineID];
        v257 = sub_100216974();
        v259 = v258;

        v260 = swift_allocError();
        *v261 = v257;
        *(v261 + 8) = v259;
        *(v261 + 16) = 2;
        a11(0, 0, _swiftEmptyArrayStorage, 0, v260);

        sub_100002BF0(v314, v322, v262, v263, v264, v265, v266, v267);
        v169 = v326;
        v170 = v307;
      }

      sub_100002BF0(v169, v170, v163, v164, v165, v166, v167, v168);
      v197 = v329;
    }

    else
    {
      v199 = v304;
      v29, v118, v119, v120, v121, v122, v123, v124, v275, v279, v283, v287, v29, v82, v299, v304, v310, v317;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v200 = sub_100216774();
      sub_100002648(v200, qword_10029D160);
      v201 = sub_100216754();
      v202 = sub_100216C54();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&_mh_execute_header, v201, v202, "cannot create TPPeerStableInfo", v203, 2u);
      }

      sub_1000561D0();
      swift_allocError();
      *v204 = xmmword_10021DC20;
      *(v204 + 16) = 13;
      v205 = sub_100216144();

      [v336 sendMetricWithResult:0 error:v205];

      v206 = swift_allocError();
      *v207 = xmmword_10021DC20;
      *(v207 + 16) = 13;
      a11(0, 0, _swiftEmptyArrayStorage, 0, v206);

      sub_100002BF0(v313, v321, v208, v209, v210, v211, v212, v213);
      sub_100002BF0(v326, v199, v214, v215, v216, v217, v218, v219);
      v197 = v329;
    }

    v198 = v323;
  }

  else
  {
    v29, v95, v96, v97, v98, v99, v100, v101, v275, v279, v283, v287, v291, 0, v299, v304, v310, v317;
    sub_1000561D0();
    swift_allocError();
    *v175 = xmmword_10021DA80;
    *(v175 + 16) = 13;
    v176 = sub_100216144();

    [v336 sendMetricWithResult:0 error:v176];

    v177 = swift_allocError();
    *v178 = xmmword_10021DA80;
    *(v178 + 16) = 13;
    a11(0, 0, _swiftEmptyArrayStorage, 0, v177);

    sub_100002BF0(v312, v320, v179, v180, v181, v182, v183, v184);
    sub_100002BF0(v326, v306, v185, v186, v187, v188, v189, v190);
    v197 = v329;
    v198 = v323;
  }

  sub_100002BF0(v197, v198, v191, v192, v193, v194, v195, v196);
  sub_100002BF0(v328, v327, v268, v269, v270, v271, v272, v273);
LABEL_23:
}

void sub_10012A3CC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void *, void, uint64_t), uint64_t a5, char *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t (*a15)(void, void, void *, void, uint64_t), uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, unint64_t a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, char a28)
{
  v28 = a4;
  if (a1)
  {
    v95 = a26;
    v94 = a25;
    v93 = a24;
    v92 = a23;
    v90 = a4;
    v91 = a22;
    v89 = a13;
    v88 = a10;
    v98 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v29 = a1;
    v33 = swift_allocObject();
    *(v33 + 16) = a7;
    *(v33 + 24) = v29;
    *(v33 + 32) = a8;
    *(v33 + 40) = a9;
    *(v33 + 48) = a3;
    *(v33 + 56) = v90;
    *(v33 + 64) = a5;
    *(v33 + 72) = a6;
    *(v33 + 80) = a10;
    *(v33 + 88) = a11;
    *(v33 + 96) = a12;
    *(v33 + 104) = a13;
    *(v33 + 112) = a14;
    v28 = a15;
    *(v33 + 120) = a15;
    *(v33 + 128) = a16;
    *(v33 + 136) = a17;
    *(v33 + 144) = a18;
    *(v33 + 152) = a19;
    *(v33 + 160) = a20;
    *(v33 + 168) = a21;
    *(v33 + 176) = a22;
    *(v33 + 184) = a23;
    *(v33 + 192) = a24;
    *(v33 + 200) = a25;
    *(v33 + 208) = a26;
    *(v33 + 216) = a27;
    *(v33 + 224) = a28 & 1;
    v34 = swift_allocObject();
    *v34->endpoint = sub_1001ACBC8;
    *v34->containerMap = v33;
    aBlock[4] = sub_1001ACCC0;
    v102 = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284098;
    v35 = _Block_copy(aBlock);
    v96 = v102;

    v36 = v29;

    v37 = a8;

    v38 = a3;

    v39 = a6;

    v40 = a12;
    sub_100012558(a14, a15);
    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);

    v96, v41, v42, v43, v44, v45, v46, v47;
    [v98 performBlockAndWait:v35];

    _Block_release(v35);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();
    v33, v48, v49, v50, v51, v52, v53, v54;
    v34, v55, v56, v57, v58, v59, v60, v61;
    if ((v29 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v62 = a2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v63 = sub_100216774();
  sub_100002648(v63, qword_10029D160);
  swift_errorRetain();
  v64 = sub_100216754();
  v65 = sub_100216C74();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136446210;
    v103 = v62;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v68 = sub_100216994();
    v70 = v69;
    v71 = sub_100005FB0(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "Don't have my own peer keys; can't establish: %{public}s", v66, 0xCu);
    sub_100006128(v67, v79, v80, v81, v82, v83, v84, v85);
  }

  if (v62)
  {
    v86 = sub_100216144();
  }

  else
  {
    v86 = 0;
  }

  [a3 sendMetricWithResult:0 error:v86];

  v28(0, 0, _swiftEmptyArrayStorage, 0, v62);
}

uint64_t sub_10012A8A4(unint64_t a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, unint64_t a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, char *a8, _TtC18TrustedPeersHelper6Client *a9, _TtC18TrustedPeersHelper6Client *a10, void *a11, uint64_t a12, _TtC18TrustedPeersHelper6Client *a13, const char *a14, _TtC18TrustedPeersHelper6Client *a15, const char *a16, _TtC18TrustedPeersHelper6Client *a17, _TtC18TrustedPeersHelper6Client *a18, _TtC18TrustedPeersHelper6Client *a19, const char *a20, char *a21, _TtC18TrustedPeersHelper6Client *a22, char *a23, _TtC18TrustedPeersHelper6Client *a24, uint64_t a25, char *a26, unsigned __int8 a27)
{
  v623 = a8;
  v624 = a5;
  v625 = a6;
  v626 = a7;
  v604 = type metadata accessor for EstablishRequest(0);
  __chkstk_darwin(v604, v31);
  v611 = &v602 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v35 = __chkstk_darwin(v33 - 8, v34);
  v610 = &v602 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v603 = &v602 - v38;
  v608 = type metadata accessor for SignedPeerDynamicInfo(0);
  v606 = *(v608 - 1);
  v40 = __chkstk_darwin(v608, v39);
  v609 = &v602 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v602 = (&v602 - v43);
  v605 = type metadata accessor for Bottle(0);
  v45 = __chkstk_darwin(v605, v44);
  v614 = &v602 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45, v47);
  v615 = (&v602 - v48);
  v49 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v49 - 8, v50);
  v618 = &v602 - v51;
  v617 = type metadata accessor for SignedPeerStableInfo(0);
  v52 = *(v617 - 8);
  __chkstk_darwin(v617, v53);
  v619 = &v602 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TLKShare(0);
  isa = v55[-1].isa;
  v633 = v55;
  v57 = __chkstk_darwin(v55, v56);
  v613 = &v602 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57, v59);
  v621 = (&v602 - v60);
  v620 = type metadata accessor for Peer(0);
  v62 = __chkstk_darwin(v620, v61);
  v612 = &v602 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v62, v64);
  v607 = &v602 - v66;
  v68 = __chkstk_darwin(v65, v67);
  v629 = (&v602 - v69);
  __chkstk_darwin(v68, v70);
  v622 = &v602 - v71;
  v72 = type metadata accessor for ViewKeys(0);
  v73 = *(v72 - 8);
  v75 = __chkstk_darwin(v72, v74);
  v77 = &v602 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75, v78);
  v80 = &v602 - v79;
  v635 = a1;
  if (a1 >> 62)
  {
    v81 = sub_1002170F4();
  }

  else
  {
    v81 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = _swiftEmptyArrayStorage;
  v630 = a4;
  v628 = a3;
  v616 = v52;
  v627 = a2;
  if (v81)
  {
    v638 = _swiftEmptyArrayStorage;
    sub_100187848(0, v81 & ~(v81 >> 63), 0);
    v634 = v81;
    if (v81 < 0)
    {
      goto LABEL_104;
    }

    v83 = v638;
    *&v636 = v635 & 0xC000000000000001;
    if ((v635 & 0xC000000000000001) != 0)
    {
      v84 = 0;
      v81 = 0;
      do
      {
        v85 = sub_100217014();
        v600 = __chkstk_darwin(v85, v86);
        sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
        sub_100216654();
        swift_unknownObjectRelease();
        v638 = v83;
        v88 = *v83->endpoint;
        v87 = *v83->containerMap;
        if (v88 >= v87 >> 1)
        {
          sub_100187848((v87 > 1), v88 + 1, 1);
          v83 = v638;
        }

        v84 = (v84 + 1);
        *v83->endpoint = v88 + 1;
        sub_1001AC038(v80, &v83->_TtCs12_SwiftObject_opaque[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v88], type metadata accessor for ViewKeys);
      }

      while (v634 != v84);
    }

    else
    {
      v91 = v635 + 32;
      v92 = sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
      v631 = v92;
      v81 = 0;
      v94 = v634;
      do
      {
        __chkstk_darwin(v92, v93);
        v600 = v95;
        v96 = v95;
        sub_100216654();

        v638 = v83;
        v98 = *v83->endpoint;
        v97 = *v83->containerMap;
        if (v98 >= v97 >> 1)
        {
          sub_100187848((v97 > 1), v98 + 1, 1);
          v83 = v638;
        }

        *v83->endpoint = v98 + 1;
        v92 = sub_1001AC038(v77, &v83->_TtCs12_SwiftObject_opaque[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v98], type metadata accessor for ViewKeys);
        v91 += 8;
        v94 = (v94 - 1);
      }

      while (v94);
    }

    v638 = _swiftEmptyArrayStorage;
    v99 = v634;
    sub_100217064();
    v100 = 0;
    v101 = v635;
    v90 = v629;
    do
    {
      if (v636)
      {
        v102 = sub_100217014();
      }

      else
      {
        v102 = *(v101 + 8 * v100 + 32);
      }

      v103 = v102;
      v100 = (v100 + 1);
      v104 = [v102 tlk];

      sub_100217044();
      sub_100217074();
      sub_100217084();
      sub_100217054();
    }

    while (v99 != v100);
    v82 = v638;
    a4 = v630;
    a2 = v627;
    a3 = v628;
    v89 = v83;
  }

  else
  {
    v89 = _swiftEmptyArrayStorage;
    v90 = v629;
  }

  v105 = [a3 epoch];
  if (v105 < 0)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    swift_once();
    v106 = sub_100216774();
    sub_100002648(v106, qword_10029D160);
    swift_errorRetain();
    v107 = sub_100216754();
    v108 = sub_100216C74();

    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_46;
    }

    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v638 = v110;
    *v109 = 136446210;
    v637 = v81;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v111 = sub_100216994();
    v113 = v112;
    v114 = sub_100005FB0(v111, v112, &v638);
    v113, v115, v116, v117, v118, v119, v120, v121, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v109 + 4) = v114;
    v122 = "Unable to make TLKShares for self: %{public}s";
    goto LABEL_45;
  }

  v634 = sub_10010C3CC(v82, a2, a2, v105);
  v82, v123, v124, v125, v126, v127, v128, v129, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
  if (a4 >> 62)
  {
    v130 = sub_1002170F4();
  }

  else
  {
    v130 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v621;
  *&v636 = v89;
  if (!v130)
  {
    v132 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v638 = _swiftEmptyArrayStorage;
  sub_100187804(0, v130 & ~(v130 >> 63), 0);
  if (v130 < 0)
  {
    __break(1u);
    swift_once();
    v147 = sub_100216774();
    sub_100002648(v147, qword_10029D160);
    swift_errorRetain();
    v107 = sub_100216754();
    v108 = sub_100216C74();

    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_46;
    }

    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v638 = v110;
    *v109 = 136446210;
    v637 = 0;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v148 = sub_100216994();
    v150 = v149;
    v151 = sub_100005FB0(v148, v149, &v638);
    v150, v152, v153, v154, v155, v156, v157, v158, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v109 + 4) = v151;
    v122 = "Unable to create peer for joining: %{public}s";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v107, v108, v122, v109, 0xCu);
    sub_100006128(v110, v159, v160, v161, v162, v163, v164, v165);

LABEL_46:

    v166 = sub_100216144();
    [v624 sendMetricWithResult:0 error:v166];

    swift_errorRetain();
    v625(0, 0, _swiftEmptyArrayStorage, 0, v81);
  }

  v132 = v638;
  if ((a4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v130; ++i)
    {
      v134 = sub_100217014();
      v600 = __chkstk_darwin(v134, v135);
      sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
      sub_100216654();
      swift_unknownObjectRelease();
      v638 = v132;
      v137 = *v132->endpoint;
      v136 = *v132->containerMap;
      if (v137 >= v136 >> 1)
      {
        sub_100187804((v136 > 1), v137 + 1, 1);
        v132 = v638;
      }

      *v132->endpoint = v137 + 1;
      sub_1001AC038(v131, &v132->_TtCs12_SwiftObject_opaque[((isa[2].endpoint[0] + 32) & ~isa[2].endpoint[0]) + *&isa[2]._TtCs12_SwiftObject_opaque[8] * v137], type metadata accessor for TLKShare);
    }
  }

  else
  {
    v138 = a4 + 32;
    v139 = sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
    v141 = v613;
    do
    {
      __chkstk_darwin(v139, v140);
      v600 = v142;
      v143 = v142;
      sub_100216654();

      v638 = v132;
      v145 = *v132->endpoint;
      v144 = *v132->containerMap;
      if (v145 >= v144 >> 1)
      {
        sub_100187804((v144 > 1), v145 + 1, 1);
        v132 = v638;
      }

      *v132->endpoint = v145 + 1;
      v139 = sub_1001AC038(v141, &v132->_TtCs12_SwiftObject_opaque[((isa[2].endpoint[0] + 32) & ~isa[2].endpoint[0]) + *&isa[2]._TtCs12_SwiftObject_opaque[8] * v145], type metadata accessor for TLKShare);
      v138 += 8;
      --v130;
    }

    while (v130);
  }

  v90 = v629;
LABEL_42:
  v638 = v634;
  sub_10011028C(v132);
  v146 = v638;
  v168 = sub_100156564(v90, a9, a10, v628, a11, 0, 0, a12, _swiftEmptyArrayStorage, v627);
  isa = v146;
  v169 = v622;
  sub_1001AC038(v90, v622, type metadata accessor for Peer);
  v170 = qword_100297520;
  v171 = v168;
  if (v170 != -1)
  {
    swift_once();
  }

  v172 = sub_100216774();
  v173 = sub_100002648(v172, qword_10029D160);
  v174 = v171;
  v634 = v173;
  v175 = sub_100216754();
  v176 = sub_100216C54();

  v177 = os_log_type_enabled(v175, v176);
  v631 = a9;
  v633 = v174;
  if (v177)
  {
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *v178 = 138543362;
    *(v178 + 4) = v174;
    *v179 = v174;
    _os_log_impl(&_mh_execute_header, v175, v176, "dynamic info: %{public}@", v178, 0xCu);
    sub_1000114D4(v179, &qword_10029D580, &unk_10021CCC0);
  }

  else
  {

    v175 = v174;
  }

  v180 = v619;
  v181 = v618;
  v182 = v617;

  sub_100019C6C(v169 + *(v620 + 32), v181, &qword_1002985A8, &unk_100226650);
  v183 = *(v616 + 48);
  if (v183(v181, 1, v182) == 1)
  {
    *v180 = xmmword_10021D470;
    v180[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v183(v181, 1, v182) != 1)
    {
      sub_1000114D4(v181, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v181, v180, type metadata accessor for SignedPeerStableInfo);
  }

  v184 = objc_allocWithZone(TPPeerStableInfo);
  v185 = sub_100216204().super.isa;
  v186 = sub_100216204().super.isa;
  v187 = [v184 initWithData:v185 sig:v186];

  sub_1001AC1E4(v180, type metadata accessor for SignedPeerStableInfo);
  if (!v187)
  {
    isa, v188, v189, v190, v191, v192, v193, v194, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    v636, v197, v198, v199, v200, v201, v202, v203, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    v204 = sub_100216754();
    v205 = sub_100216C54();
    v206 = os_log_type_enabled(v204, v205);
    v207 = v633;
    if (v206)
    {
      v208 = swift_slowAlloc();
      *v208 = 0;
      _os_log_impl(&_mh_execute_header, v204, v205, "Unable to create new peer stable info for joining", v208, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v636 = xmmword_10021DC20;
    *v209 = xmmword_10021DC20;
    *(v209 + 16) = 13;
    v210 = sub_100216144();

    [v624 sendMetricWithResult:0 error:v210];

    v211 = swift_allocError();
    *v212 = v636;
    *(v212 + 16) = 13;
    v625(0, 0, _swiftEmptyArrayStorage, 0, v211);

    return sub_1001AC1E4(v622, type metadata accessor for Peer);
  }

  v195 = v614;
  v196 = v631;
  sub_10017B39C(v631, a10, v614);
  v629 = a15;
  sub_1001AC038(v195, v615, type metadata accessor for Bottle);

  v213 = sub_100216754();
  v214 = sub_100216C54();
  a10, v215, v216, v217, v218, v219, v220, v221, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
  v222 = os_log_type_enabled(v213, v214);
  v621 = a10;
  v619 = v187;
  if (v222)
  {
    v223 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v638 = v224;
    *v223 = 136446210;
    *(v223 + 4) = sub_100005FB0(v196, a10, &v638);
    _os_log_impl(&_mh_execute_header, v213, v214, "Beginning establish for peer %{public}s", v223, 0xCu);
    sub_100006128(v224, v225, v226, v227, v228, v229, v230, v231);
  }

  v627 = a18;
  sub_100012558(a13, a14);
  v232 = sub_100216754();
  v233 = sub_100216C54();
  sub_100002BF0(a13, a14, v234, v235, v236, v237, v238, v239);
  if (os_log_type_enabled(v232, v233))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v638 = v241;
    *v240 = 136446210;
    v242 = sub_100216214(0);
    v244 = v243;
    v245 = sub_100005FB0(v242, v243, &v638);
    v244, v246, v247, v248, v249, v250, v251, v252, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v240 + 4) = v245;
    _os_log_impl(&_mh_execute_header, v232, v233, "Establish permanentInfo: %{public}s", v240, 0xCu);
    sub_100006128(v241, v253, v254, v255, v256, v257, v258, v259);
  }

  v260 = v629;
  sub_100012558(v629, a16);
  v261 = sub_100216754();
  v262 = sub_100216C54();
  sub_100002BF0(v260, a16, v263, v264, v265, v266, v267, v268);
  if (os_log_type_enabled(v261, v262))
  {
    v269 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v638 = v270;
    *v269 = 136446210;
    v271 = sub_100216214(0);
    v273 = v272;
    v274 = sub_100005FB0(v271, v272, &v638);
    v273, v275, v276, v277, v278, v279, v280, v281, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v269 + 4) = v274;
    _os_log_impl(&_mh_execute_header, v261, v262, "Establish permanentInfoSig: %{public}s", v269, 0xCu);
    sub_100006128(v270, v282, v283, v284, v285, v286, v287, v288);
  }

  v629 = 0;
  v289 = v627;
  sub_100012558(a17, v627);
  v290 = sub_100216754();
  v291 = sub_100216C54();
  sub_100002BF0(a17, v289, v292, v293, v294, v295, v296, v297);
  if (os_log_type_enabled(v290, v291))
  {
    v298 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    v638 = v299;
    *v298 = 136446210;
    v300 = sub_100216214(0);
    v302 = v301;
    v303 = sub_100005FB0(v300, v301, &v638);
    v302, v304, v305, v306, v307, v308, v309, v310, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v298 + 4) = v303;
    _os_log_impl(&_mh_execute_header, v290, v291, "Establish stableInfo: %{public}s", v298, 0xCu);
    sub_100006128(v299, v311, v312, v313, v314, v315, v316, v317);
  }

  v318 = v608;
  v319 = v612;
  sub_100012558(a19, a20);
  v320 = sub_100216754();
  v321 = sub_100216C54();
  sub_100002BF0(a19, a20, v322, v323, v324, v325, v326, v327);
  if (os_log_type_enabled(v320, v321))
  {
    v328 = swift_slowAlloc();
    v329 = swift_slowAlloc();
    v638 = v329;
    *v328 = 136446210;
    v330 = sub_100216214(0);
    v332 = v331;
    v333 = sub_100005FB0(v330, v331, &v638);
    v332, v334, v335, v336, v337, v338, v339, v340, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v328 + 4) = v333;
    _os_log_impl(&_mh_execute_header, v320, v321, "Establish stableInfoSig: %{public}s", v328, 0xCu);
    sub_100006128(v329, v341, v342, v343, v344, v345, v346, v347);
  }

  v348 = v610;
  v349 = v609;
  v350 = v607;
  v351 = v622;
  sub_1001AC0A0(v622, v607, type metadata accessor for Peer);
  v352 = sub_100216754();
  v353 = sub_100216C54();
  if (os_log_type_enabled(v352, v353))
  {
    v354 = v350;
    v355 = swift_slowAlloc();
    v356 = swift_slowAlloc();
    v638 = v356;
    *v355 = 136446210;
    v357 = v603;
    sub_100019C6C(v354 + *(v620 + 36), v603, &unk_10029D760, &qword_10021E810);
    v358 = *(v606 + 6);
    if (v358(v357, 1, v318) == 1)
    {
      v359 = v602;
      *v602 = xmmword_10021D470;
      *(v359 + 16) = xmmword_10021D470;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v358(v357, 1, v318) != 1)
      {
        sub_1000114D4(v357, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      v359 = v602;
      sub_1001AC038(v357, v602, type metadata accessor for SignedPeerDynamicInfo);
    }

    v360 = *v359;
    v361 = *(v359 + 8);
    sub_100012558(*v359, v361);
    sub_1001AC1E4(v359, type metadata accessor for SignedPeerDynamicInfo);
    v362 = sub_100216214(0);
    v364 = v363;
    sub_100002BF0(v360, v361, v365, v366, v367, v368, v369, v370);
    sub_1001AC1E4(v607, type metadata accessor for Peer);
    v371 = sub_100005FB0(v362, v364, &v638);
    v364, v372, v373, v374, v375, v376, v377, v378, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v355 + 4) = v371;
    _os_log_impl(&_mh_execute_header, v352, v353, "Establish dynamicInfo: %{public}s", v355, 0xCu);
    sub_100006128(v356, v379, v380, v381, v382, v383, v384, v385);

    v351 = v622;
    v348 = v610;
    v349 = v609;
    v318 = v608;
    v319 = v612;
  }

  else
  {

    sub_1001AC1E4(v350, type metadata accessor for Peer);
  }

  sub_1001AC0A0(v351, v319, type metadata accessor for Peer);
  v386 = sub_100216754();
  v387 = sub_100216C54();
  if (os_log_type_enabled(v386, v387))
  {
    v388 = swift_slowAlloc();
    v389 = swift_slowAlloc();
    v638 = v389;
    *v388 = 136446210;
    sub_100019C6C(v319 + *(v620 + 36), v348, &unk_10029D760, &qword_10021E810);
    v390 = *(v606 + 6);
    if (v390(v348, 1, v318) == 1)
    {
      *v349 = xmmword_10021D470;
      *(v349 + 16) = xmmword_10021D470;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v391 = v390(v348, 1, v318);
      v392 = v629;
      if (v391 != 1)
      {
        sub_1000114D4(v348, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      sub_1001AC038(v348, v349, type metadata accessor for SignedPeerDynamicInfo);
      v392 = v629;
    }

    v393 = *(v349 + 16);
    v394 = *(v349 + 24);
    sub_100012558(v393, v394);
    sub_1001AC1E4(v349, type metadata accessor for SignedPeerDynamicInfo);
    v395 = sub_100216214(0);
    v397 = v396;
    sub_100002BF0(v393, v394, v398, v399, v400, v401, v402, v403);
    sub_1001AC1E4(v612, type metadata accessor for Peer);
    v404 = sub_100005FB0(v395, v397, &v638);
    v397, v405, v406, v407, v408, v409, v410, v411, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v388 + 4) = v404;
    _os_log_impl(&_mh_execute_header, v386, v387, "Establish dynamicInfoSig: %{public}s", v388, 0xCu);
    sub_100006128(v389, v412, v413, v414, v415, v416, v417, v418);
  }

  else
  {

    sub_1001AC1E4(v319, type metadata accessor for Peer);
    v392 = v629;
  }

  v419 = v636;

  v420 = isa;

  v421 = sub_100216754();
  v422 = sub_100216C54();
  if (os_log_type_enabled(v421, v422))
  {
    v423 = swift_slowAlloc();
    *v423 = 134218240;
    *(v423 + 4) = *v419->endpoint;
    v419, v424, v425, v426, v427, v428, v429, v430, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v423 + 12) = 2048;
    *(v423 + 14) = *v420->endpoint;
    v420, v431, v432, v433, v434, v435, v436, v437, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    _os_log_impl(&_mh_execute_header, v421, v422, "Establish introducing %ld key sets, %ld tlk shares", v423, 0x16u);
  }

  else
  {

    v419, v438, v439, v440, v441, v442, v443, v444, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    v420, v445, v446, v447, v448, v449, v450, v451, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
  }

  LODWORD(v617) = a27;
  v616 = a25;
  v614 = a23;
  v613 = a21;
  sub_1001A13C4(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  v452 = sub_100216624();
  v454 = v631;
  v629 = a24;
  v627 = a22;
  v618 = a26;
  if (v392)
  {
    swift_errorRetain();
    v499 = sub_100216754();
    v500 = sub_100216C74();

    if (!os_log_type_enabled(v499, v500))
    {

      goto LABEL_97;
    }

    v501 = swift_slowAlloc();
    v502 = swift_slowAlloc();
    v638 = v502;
    *v501 = 136446210;
    v637 = v392;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v503 = sub_100216994();
    v505 = v504;
    v506 = sub_100005FB0(v503, v504, &v638);
    v505, v507, v508, v509, v510, v511, v512, v513, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    *(v501 + 4) = v506;
    _os_log_impl(&_mh_execute_header, v499, v500, "Establish unable to encode bottle/peer: %{public}s", v501, 0xCu);
    sub_100006128(v502, v514, v515, v516, v517, v518, v519, v520);
  }

  else
  {
    v455 = v452;
    v456 = v453;
    v457 = sub_100216214(0);
    v459 = v458;
    sub_100002BF0(v455, v456, v460, v461, v462, v463, v464, v465);

    v466 = sub_100216754();
    v467 = sub_100216C54();
    v459, v468, v469, v470, v471, v472, v473, v474, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    if (os_log_type_enabled(v466, v467))
    {
      v482 = swift_slowAlloc();
      v483 = swift_slowAlloc();
      v638 = v483;
      *v482 = 136446210;
      v484 = sub_100005FB0(v457, v459, &v638);
      v459, v485, v486, v487, v488, v489, v490, v491, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
      *(v482 + 4) = v484;
      _os_log_impl(&_mh_execute_header, v466, v467, "Establish bottle: %{public}s", v482, 0xCu);
      sub_100006128(v483, v492, v493, v494, v495, v496, v497, v498);
    }

    else
    {
      v459, v475, v476, v477, v478, v479, v480, v481, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    }

    sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
    v556 = sub_100216624();
    v558 = v557;
    v559 = sub_100216214(0);
    v561 = v560;
    sub_100002BF0(v556, v558, v562, v563, v564, v565, v566, v567);

    v499 = sub_100216754();
    v568 = sub_100216C54();
    v561, v569, v570, v571, v572, v573, v574, v575, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    if (os_log_type_enabled(v499, v568))
    {
      v583 = swift_slowAlloc();
      v584 = swift_slowAlloc();
      v638 = v584;
      *v583 = 136446210;
      v585 = sub_100005FB0(v559, v561, &v638);
      v561, v586, v587, v588, v589, v590, v591, v592, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
      *(v583 + 4) = v585;
      _os_log_impl(&_mh_execute_header, v499, v568, "Establish peer: %{public}s", v583, 0xCu);
      sub_100006128(v584, v593, v594, v595, v596, v597, v598, v599);
    }

    else
    {
      v561, v576, v577, v578, v579, v580, v581, v582, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
    }
  }

LABEL_97:
  __chkstk_darwin(v521, v522);
  v523 = v615;
  *(&v602 - 4) = v622;
  *(&v602 - 3) = v523;
  v524 = v636;
  v525 = isa;
  v600 = v636;
  v601 = isa;
  sub_1001A13C4(&unk_10029D920, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);
  sub_100216654();
  v525, v526, v527, v528, v529, v530, v531, v532, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611;
  v533 = v623;
  v534 = *&v623[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  v634 = *&v623[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  isa = sub_100006484(&v623[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v634);
  v535 = swift_allocObject();
  *(v535 + 16) = v524;
  *(v535 + 24) = v533;
  v536 = v628;
  v537 = v619;
  *(v535 + 32) = v628;
  *(v535 + 40) = v537;
  v539 = v624;
  v538 = v625;
  *(v535 + 48) = v624;
  *(v535 + 56) = v538;
  *(v535 + 64) = v626;
  *(v535 + 72) = v454;
  v540 = v635;
  *(v535 + 80) = v621;
  *(v535 + 88) = v540;
  v541 = v613;
  *(v535 + 96) = v630;
  *(v535 + 104) = v541;
  v542 = v614;
  *(v535 + 112) = v627;
  *(v535 + 120) = v542;
  v543 = v616;
  *(v535 + 128) = v629;
  *(v535 + 136) = v543;
  *(v535 + 144) = v618;
  *(v535 + 152) = v617 & 1;
  v631 = *(v534 + 16);
  *&v636 = *v631->endpoint;

  v544 = v533;
  v545 = v536;
  v546 = v537;
  v547 = v539;

  v548 = v611;
  (v636)(v611, sub_1001AA978, v535, v634, v631);

  v535, v549, v550, v551, v552, v553, v554, v555;
  sub_1001AC1E4(v548, type metadata accessor for EstablishRequest);
  sub_1001AC1E4(v615, type metadata accessor for Bottle);
  return sub_1001AC1E4(v622, type metadata accessor for Peer);
}

void sub_10012CD5C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v54 = a3;
  v7 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for Bottle(0);
  v55 = *(v11 - 1);
  v56 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for Peer(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AC0A0(a2, v23, type metadata accessor for Peer);
  v24 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v26 = sub_1000BDADC(v26);
    *(a1 + v24) = v26;
  }

  sub_1001AC038(v23, v18, type metadata accessor for Peer);
  (*(v20 + 56))(v18, 0, 1, v19);
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v18, &v26->_TtCs12_SwiftObject_opaque[v27], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v54, v14, type metadata accessor for Bottle);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + v24);
  if ((v28 & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v29 = sub_1000BDADC(v29);
    *(a1 + v24) = v29;
  }

  sub_1001AC038(v14, v10, type metadata accessor for Bottle);
  (v55)[7](v10, 0, 1, v56);
  v30 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v10, &v29->_TtCs12_SwiftObject_opaque[v30], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + v24);
  if ((v31 & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v32 = sub_1000BDADC(v32);
    *(a1 + v24) = v32;
  }

  v33 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v34 = *&v32->_TtCs12_SwiftObject_opaque[v33];
  *&v32->_TtCs12_SwiftObject_opaque[v33] = v57;

  v34, v35, v36, v37, v38, v39, v40, v41, v53, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v60;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + v24);
  if ((v42 & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v43 = sub_1000BDADC(v43);
    *(a1 + v24) = v43;
  }

  v44 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v45 = *&v43->_TtCs12_SwiftObject_opaque[v44];
  *&v43->_TtCs12_SwiftObject_opaque[v44] = v58;

  v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v60;
}

void sub_10012D1D4(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, char *a3, void *a4, void *a5, void *a6, void (*a7)(void, void, _TtC18TrustedPeersHelper6Client *, void, uint64_t), uint64_t a8, uint64_t a9, void *a10, _TtC18TrustedPeersHelper6Client *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char *a18, char a19)
{
  v343 = a7;
  v344 = a8;
  v338 = a5;
  v337 = a4;
  v340 = a3;
  v350 = sub_100216424();
  v331 = *(v350 - 1);
  v23 = __chkstk_darwin(v350, v22);
  v349 = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v348 = &v324 - v26;
  v333 = sub_1002164F4();
  v334 = *(v333 - 1);
  __chkstk_darwin(v333, v27);
  v336 = &v324 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v31 = __chkstk_darwin(v29 - 8, v30);
  v328 = &v324 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31, v33);
  v329 = &v324 - v35;
  __chkstk_darwin(v34, v36);
  v335 = &v324 - v37;
  v38 = type metadata accessor for Changes(0);
  v345 = *(v38 - 8);
  v40 = __chkstk_darwin(v38, v39);
  v42 = &v324 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v40, v43);
  v330 = (&v324 - v45);
  __chkstk_darwin(v44, v46);
  v347 = &v324 - v47;
  v332 = type metadata accessor for EstablishResponse(0);
  __chkstk_darwin(v332, v48);
  v50 = &v324 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_10001148C(&qword_100298500, &qword_10021DF70);
  __chkstk_darwin(v346, v51);
  v341 = &v324 - v52;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v53 = sub_100216774();
  v54 = sub_100002648(v53, qword_10029D160);

  v55 = sub_100216754();
  v56 = sub_100216C54();
  a2, v57, v58, v59, v60, v61, v62, v63, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
  v64 = os_log_type_enabled(v55, v56);
  v342 = a6;
  v327 = v42;
  v339 = v38;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136446210;
    type metadata accessor for ViewKeys(0);
    v67 = sub_100216B34();
    v68 = a1;
    v69 = v54;
    v70 = v50;
    v72 = v71;
    v73 = sub_100005FB0(v67, v71, &aBlock);
    v74 = v72;
    v50 = v70;
    v54 = v69;
    a1 = v68;
    v38 = v339;
    v74, v75, v76, v77, v78, v79, v80, v81, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v55, v56, "Establish: viewKeys: %{public}s", v65, 0xCu);
    sub_100006128(v66, v82, v83, v84, v85, v86, v87, v88);
  }

  v89 = v341;
  sub_100019C6C(a1, v341, &qword_100298500, &qword_10021DF70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v91 = v347;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_11:
    v127 = v334;
    v128 = v333;
    sub_1001AC038(v89, v50, type metadata accessor for EstablishResponse);
    v332 = *(v332 + 24);
    v129 = v335;
    sub_100019C6C(&v50[v332], v335, &unk_10029D750, &qword_10021E850);
    v130 = v345 + 48;
    v131 = *(v345 + 48);
    v132 = v131(v129, 1, v38);
    v345 = v130;
    if (v132 == 1)
    {
      *v91 = 0;
      *(v91 + 8) = 0xE000000000000000;
      *(v91 + 16) = _swiftEmptyArrayStorage;
      *(v91 + 24) = xmmword_10021D470;
      *(v91 + 40) = xmmword_10021D470;
      *(v91 + 56) = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v131(v129, 1, v38) != 1)
      {
        sub_1000114D4(v129, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      sub_1001AC038(v129, v91, type metadata accessor for Changes);
    }

    v157 = v336;
    sub_1002164E4();
    sub_1001A13C4(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
    v158 = sub_100216604();
    v325 = v131;
    v160 = v159;
    v335 = 0;
    v346 = v158;
    (*(v127 + 8))(v157, v128);
    sub_1001AC1E4(v91, type metadata accessor for Changes);

    v161 = sub_100216754();
    v162 = sub_100216C54();
    v160, v163, v164, v165, v166, v167, v168, v169, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
    if (os_log_type_enabled(v161, v162))
    {
      v177 = v54;
      v178 = v50;
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      aBlock = v180;
      *v179 = 136446210;
      v181 = sub_100005FB0(v346, v160, &aBlock);
      v160, v182, v183, v184, v185, v186, v187, v188, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
      *(v179 + 4) = v181;
      _os_log_impl(&_mh_execute_header, v161, v162, "Establish returned changes: %{public}s", v179, 0xCu);
      sub_100006128(v180, v189, v190, v191, v192, v193, v194, v195);

      v50 = v178;
      v54 = v177;
    }

    else
    {
      v160, v170, v171, v172, v173, v174, v175, v176, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
    }

    v326 = v54;
    v341 = v50;
    v196 = *v50;
    aBlock = _swiftEmptyArrayStorage;
    v197 = *(v196 + 16);
    if (v197)
    {
      v347 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v198 = *(v331 + 2);
      v199 = v196 + ((v331[80] + 32) & ~v331[80]);
      v200 = *(v331 + 9);
      v201 = v331 + 8;
      v346 = _swiftEmptyArrayStorage;
      v202 = v350;
      do
      {
        v203 = v348;
        v198(v348, v199, v202);
        v198(v349, v203, v202);
        v204 = sub_100216D94();
        (*v201)(v203, v202);
        if (v204)
        {
          sub_100216B04();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v346 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100216B44();
          }

          sub_100216B64();
          v346 = aBlock;
        }

        v199 += v200;
        --v197;
      }

      while (v197);
    }

    else
    {
      v346 = _swiftEmptyArrayStorage;
    }

    v205 = [v337 modelID];
    v206 = sub_100216974();
    v208 = v207;

    v209 = v340;
    v210 = v335;
    v211 = sub_100151404(v206, v208, v338);
    if (v210)
    {
      v208, v212, v213, v214, v215, v216, v217, v218, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
      v219 = v343;
      v220 = v341;
      swift_errorRetain();
      v232 = sub_100216754();
      v233 = sub_100216C74();

      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        aBlock = v235;
        *v234 = 136446210;
        v357 = v210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v236 = sub_100216994();
        v238 = v237;
        v239 = sub_100005FB0(v236, v237, &aBlock);
        v238, v240, v241, v242, v243, v244, v245, v246, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
        *(v234 + 4) = v239;
        _os_log_impl(&_mh_execute_header, v232, v233, "establish handling failed: %{public}s", v234, 0xCu);
        sub_100006128(v235, v247, v248, v249, v250, v251, v252, v253);
        v220 = v341;
      }

      v254 = v342;
      v255 = sub_100216144();
      [v254 sendMetricWithResult:0 error:v255];

      swift_errorRetain();
      v256 = v346;
      v219(0, 0, v346, 0, v210);
      v256, v257, v258, v259, v260, v261, v262, v263, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
    }

    else
    {
      v221 = v211;
      v208, v212, v213, v214, v215, v216, v217, v218, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
      v222 = v341;
      v223 = v329;
      sub_100019C6C(&v341[v332], v329, &unk_10029D750, &qword_10021E850);
      v224 = v339;
      v225 = v325;
      v226 = v325(v223, 1, v339);
      v227 = v343;
      if (v226 == 1)
      {
        v228 = v330;
        *v330 = 0;
        *(v228 + 1) = 0xE000000000000000;
        *(v228 + 2) = _swiftEmptyArrayStorage;
        *(v228 + 24) = xmmword_10021D470;
        *(v228 + 40) = xmmword_10021D470;
        v228[56] = 0;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        v229 = v225(v223, 1, v224);
        if (v229 != 1)
        {
          v229 = sub_1000114D4(v223, &unk_10029D750, &qword_10021E850);
        }
      }

      else
      {
        v228 = v330;
        v229 = sub_1001AC038(v223, v330, type metadata accessor for Changes);
      }

      v231 = *&v209[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
      __chkstk_darwin(v229, v230);
      *(&v324 - 4) = v228;
      *(&v324 - 3) = v209;
      *(&v324 - 16) = 0;
      sub_100216D34();
      sub_1001AC1E4(v228, type metadata accessor for Changes);
      v265 = v328;
      sub_100019C6C(v222 + v332, v328, &unk_10029D750, &qword_10021E850);
      v266 = v339;
      if (v225(v265, 1, v339) == 1)
      {
        v267 = v327;
        *v327 = 0;
        *(v267 + 1) = 0xE000000000000000;
        *(v267 + 2) = _swiftEmptyArrayStorage;
        *(v267 + 24) = xmmword_10021D470;
        *(v267 + 40) = xmmword_10021D470;
        v267[56] = 0;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        if (v225(v265, 1, v266) != 1)
        {
          sub_1000114D4(v265, &unk_10029D750, &qword_10021E850);
        }
      }

      else
      {
        v267 = v327;
        sub_1001AC038(v265, v327, type metadata accessor for Changes);
      }

      v268 = v267[56];
      sub_1001AC1E4(v267, type metadata accessor for Changes);
      v269 = sub_100216754();
      v270 = sub_100216C54();
      v271 = os_log_type_enabled(v269, v270);
      if (v268)
      {
        if (v271)
        {
          v272 = swift_slowAlloc();
          *v272 = 0;
          _os_log_impl(&_mh_execute_header, v269, v270, "establish succeeded, but more changes need fetching...", v272, 2u);
        }

        v273 = swift_allocObject();
        v274 = v342;
        *(v273 + 16) = v342;
        *(v273 + 24) = v227;
        v275 = v346;
        *(v273 + 32) = v344;
        *(v273 + 40) = v275;
        *(v273 + 48) = a9;
        *(v273 + 56) = a10;
        v350 = a10;
        v276 = v221;
        *(v273 + 64) = v221;
        v277 = swift_allocObject();
        *(v277 + 16) = 0;
        v278 = v340;
        *(v277 + 24) = v340;
        *(v277 + 32) = sub_1001AAA14;
        *(v277 + 40) = v273;
        v279 = swift_allocObject();
        *v279->endpoint = sub_1001ACE7C;
        *v279->containerMap = v277;
        v355 = sub_1001ACCC0;
        v356 = v279;
        aBlock = _NSConcreteStackBlock;
        v352 = 1107296256;
        v353 = sub_100109050;
        v354 = &unk_100283D28;
        v280 = _Block_copy(&aBlock);
        v281 = v356;
        v282 = v276;
        v283 = v274;

        v284 = v278;

        v281, v285, v286, v287, v288, v289, v290, v291;
        [v231 performBlockAndWait:v280];
        _Block_release(v280);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        v273, v293, v294, v295, v296, v297, v298, v299;
        v277, v300, v301, v302, v303, v304, v305, v306;
        v279, v307, v308, v309, v310, v311, v312, v313;
        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          return;
        }

        v264 = v341;
        goto LABEL_40;
      }

      if (v271)
      {
        v314 = swift_slowAlloc();
        *v314 = 0;
        _os_log_impl(&_mh_execute_header, v269, v270, "establish succeeded", v314, 2u);
      }

      [v342 sendMetricWithResult:1 error:0];
      v315 = v221;
      v316 = v346;
      v227(a9, a10, v346, v221, 0);
      v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;

      v220 = v341;
    }

    v264 = v220;
LABEL_40:
    sub_1001AC1E4(v264, type metadata accessor for EstablishResponse);
    return;
  }

  v92 = *v89;
  swift_errorRetain();
  swift_errorRetain();
  v93 = sub_100216144();
  v94 = [v93 isCuttlefishError:1001];

  if (v94)
  {
    v95 = a17;
    v96 = a15;
    v348 = a16;
    v349 = a18;
    v347 = a14;

    v97 = sub_100216754();
    v98 = sub_100216C54();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "establish returned failed, trying fetch", v99, 2u);
      v95 = a17;
      v96 = a15;
    }

    v346 = a11;

    v100 = sub_100216144();
    [v342 sendMetricWithResult:0 error:v100];

    v54 = v340;
    v350 = *&v340[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v91 = swift_allocObject();
    *(v91 + 16) = a13;
    v50 = v348;
    *(v91 + 24) = v347;
    *(v91 + 32) = v96;
    *(v91 + 40) = v50;
    *(v91 + 48) = v95;
    *(v91 + 56) = v349;
    *(v91 + 64) = a19 & 1;
    v101 = v343;
    v38 = v344;
    *(v91 + 72) = v54;
    *(v91 + 80) = v101;
    *(v91 + 88) = v38;
    *(v91 + 96) = a11;
    *(v91 + 104) = a12;
    v102 = swift_allocObject();
    *v102->endpoint = sub_1001AA9D0;
    *v102->containerMap = v91;
    v355 = sub_1001ACCC0;
    v356 = v102;
    aBlock = _NSConcreteStackBlock;
    v352 = 1107296256;
    v353 = sub_100109050;
    v354 = &unk_100283C88;
    v103 = _Block_copy(&aBlock);
    v104 = v356;

    v105 = v54;

    v104, v106, v107, v108, v109, v110, v111, v112;
    [v350 performBlockAndWait:v103];

    _Block_release(v103);
    v89 = swift_isEscapingClosureAtFileLocation();
    v91, v113, v114, v115, v116, v117, v118, v119;
    v102, v120, v121, v122, v123, v124, v125, v126;
    if (v89)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    swift_errorRetain();
    v133 = sub_100216754();
    v134 = sub_100216C74();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      aBlock = v136;
      *v135 = 136446210;
      v357 = v92;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v137 = sub_100216994();
      v139 = v138;
      v140 = sub_100005FB0(v137, v138, &aBlock);
      v139, v141, v142, v143, v144, v145, v146, v147, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333;
      *(v135 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v133, v134, "establish failed: %{public}s", v135, 0xCu);
      sub_100006128(v136, v148, v149, v150, v151, v152, v153, v154);
    }

    v155 = v342;
    v156 = sub_100216144();
    [v155 sendMetricWithResult:0 error:v156];

    v343(0, 0, _swiftEmptyArrayStorage, 0, v92);
  }
}

uint64_t sub_10012E788(void *a1, void *a2, uint64_t (*a3)(void, void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v15 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v16 = sub_100216994();
      v17 = a3;
      v19 = v18;
      v20 = sub_100005FB0(v16, v18, v53);
      v21 = v19;
      a3 = v17;
      v21, v22, v23, v24, v25, v26, v27, v28, v50, v51, a1, v53[0], v53[1], v54, v55, v56, v57, v58;
      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "fetch-after-establish failed: %{public}s", v15, 0xCu);
      sub_100006128(v52, v29, v30, v31, v32, v33, v34, v35);
    }

    v36 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v36];

    v37 = 0;
    v38 = 0;
    v39 = a5;
    v40 = 0;
    v41 = a1;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v45 = sub_100216774();
    sub_100002648(v45, qword_10029D160);
    v46 = sub_100216754();
    v47 = sub_100216C54();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "fetch-after-establish succeeded", v48, 2u);
    }

    [a2 sendMetricWithResult:1 error:0];
    v37 = a6;
    v38 = a7;
    v39 = a5;
    v40 = a8;
    v41 = 0;
  }

  return a3(v37, v38, v39, v40, v41);
}

void sub_10012EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v13 = v7;
  v14 = sub_10019C8E0(v13, 0xD000000000000030, 0x800000010023D050);

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a6;
  *(v15 + 32) = a7;
  v16 = qword_100297520;
  v72 = v14;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  sub_100002648(v17, qword_10029D160);
  v18 = sub_100216754();
  v19 = sub_100216C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "beginning a setRecoveryKey", v20, 2u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1001ABED8;
  *(v21 + 24) = v15;
  *(v21 + 32) = v13;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = a5;
  v70 = *&v13[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v13;
  *(v22 + 32) = sub_1001ABEE4;
  *(v22 + 40) = v21;
  v23 = swift_allocObject();
  *v23->endpoint = sub_1001ACE7C;
  *v23->containerMap = v22;
  aBlock[4] = sub_1001ACCC0;
  v74 = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_1002856C8;
  v24 = _Block_copy(aBlock);
  v25 = v74;
  v26 = v13;

  v25, v27, v28, v29, v30, v31, v32, v33;
  [v70 performBlockAndWait:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();
  v72, v34, v35, v36, v37, v38, v39, v40;
  v15, v41, v42, v43, v44, v45, v46, v47;
  v21, v48, v49, v50, v51, v52, v53, v54;
  v22, v55, v56, v57, v58, v59, v60, v61;
  v23, v62, v63, v64, v65, v66, v67, v68;
  if (v24)
  {
    __break(1u);
  }
}

uint64_t sub_10012EDC8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
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
    _os_log_impl(&_mh_execute_header, v10, v8, "setRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000030, 0x800000010023D050, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

void sub_10012F008(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v15 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3;
    *(v17 + 40) = a5;
    *(v17 + 48) = a6;
    *(v17 + 56) = a7;
    *(v17 + 64) = a8;
    *(v17 + 72) = a9;
    v18 = swift_allocObject();
    *v18->endpoint = sub_1001ABF58;
    *v18->containerMap = v17;
    v43[4] = sub_1001ACCC0;
    v44 = v18;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 1107296256;
    v43[2] = sub_100109050;
    v43[3] = &unk_100285740;
    v19 = _Block_copy(v43);
    v20 = v44;
    v21 = a4;

    v20, v22, v23, v24, v25, v26, v27, v28;
    [v15 performBlockAndWait:v19];
    _Block_release(v19);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();
    v17, v29, v30, v31, v32, v33, v34, v35;
    v18, v36, v37, v38, v39, v40, v41, v42;
    if (v15)
    {
      __break(1u);
    }
  }
}

void sub_10012F1DC(char *a1, void (*a2)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, unint64_t a5, void *a6, _TtC18TrustedPeersHelper6Client *a7, _TtC18TrustedPeersHelper6Client *a8)
{
  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v17)
  {
    v18 = v17;
    v729 = v16;
    v731 = a1;
    v19 = a2;
    v20 = sub_100216974();
    v22 = v21;

    v29 = sub_100013A8C(a4, a5, a6, a7);
    v726 = a8;
    v727 = v22;
    v728 = a3;
    v30 = *&v731[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v733 = v29;
    v31 = OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys;
    v32 = *(*&v29[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);
    v33 = v30;

    v34 = sub_100216964();
    v32, v35, v36, v37, v38, v39, v40, v41, v640, v646, v655, v662, v669, v677, v684, v694, v701, v708;
    *&aBlock = 0;
    v42 = [v33 anyTrustedPeerDistrustsOtherPeer:v34 error:&aBlock];

    if (aBlock)
    {
      v50 = aBlock;
      v22, v51, v52, v53, v54, v55, v56, v57, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
      swift_willThrow();
      v58 = v19;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v59 = sub_100216774();
      sub_100002648(v59, qword_10029D160);
      swift_errorRetain();
      v60 = sub_100216754();
      v61 = sub_100216C74();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&aBlock = v63;
        *v62 = 136446210;
        v739 = v50;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v64 = sub_100216994();
        v66 = v65;
        v67 = sub_100005FB0(v64, v65, &aBlock);
        v66, v68, v69, v70, v71, v72, v73, v74, v642, v648, v657, v664, v671, v679, v686, v696, v703, v710;
        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "failed to create recovery keys: %{public}s", v62, 0xCu);
        sub_100006128(v63, v75, v76, v77, v78, v79, v80, v81);
      }

      sub_1000561D0();
      v82 = swift_allocError();
      *v83 = v50;
      *(v83 + 8) = 0;
      *(v83 + 16) = 3;
      swift_errorRetain();
      v58(0, v82);

      goto LABEL_16;
    }

    v84 = v19;
    if (v42)
    {
      v727, v43, v44, v45, v46, v47, v48, v49, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v85 = sub_100216774();
      sub_100002648(v85, qword_10029D160);
      v86 = sub_100216754();
      v87 = sub_100216C74();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Recovery key is distrusted!", v88, 2u);
      }

      sub_1000561D0();
      v89 = swift_allocError();
      *v90 = xmmword_10021DC10;
      *(v90 + 16) = 13;
      v19(0, v89);

      goto LABEL_57;
    }

    v91 = [*(*&v29[v31] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingVerificationKey) keyData];
    v92 = sub_100216224();
    v94 = v93;

    v95 = [*(*&v29[v31] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionVerificationKey) keyData];
    v725 = sub_100216224();
    v97 = v96;

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v98 = sub_100216774();
    sub_100002648(v98, qword_10029D160);
    sub_100012558(v92, v94);
    v99 = sub_100216754();
    v100 = sub_100216C54();
    sub_100002BF0(v92, v94, v101, v102, v103, v104, v105, v106);
    v723 = v97;
    v724 = v94;
    v722 = v92;
    if (os_log_type_enabled(v99, v100))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&aBlock = v108;
      *v107 = 136446210;
      v109 = sub_100216214(0);
      v111 = v110;
      v112 = sub_100005FB0(v109, v110, &aBlock);
      v111, v113, v114, v115, v116, v117, v118, v119, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
      *(v107 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v99, v100, "setRecoveryKey signingPubKey: %{public}s", v107, 0xCu);
      sub_100006128(v108, v120, v121, v122, v123, v124, v125, v126);

      v97 = v723;
    }

    sub_100012558(v725, v97);
    v127 = sub_100216754();
    v128 = sub_100216C54();
    sub_100002BF0(v725, v97, v129, v130, v131, v132, v133, v134);
    if (os_log_type_enabled(v127, v128))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&aBlock = v136;
      *v135 = 136446210;
      v137 = sub_100216214(0);
      v139 = v138;
      v140 = sub_100005FB0(v137, v138, &aBlock);
      v139, v141, v142, v143, v144, v145, v146, v147, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
      *(v135 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v127, v128, "setRecoveryKey encryptionPubKey: %{public}s", v135, 0xCu);
      sub_100006128(v136, v148, v149, v150, v151, v152, v153, v154);
    }

    v155 = v724;
    v156 = [*&v731[v729] egoPeerStableInfo];
    if (v156)
    {
      v164 = v156;
      v165 = sub_100216224();
      v167 = v166;

      v168 = [*&v731[v729] egoPeerStableInfoSig];
      if (v168)
      {
        v176 = v168;
        v721 = sub_100216224();
        v178 = v177;

        v179 = [*&v731[v729] egoPeerPermanentInfo];
        if (v179)
        {
          v719 = v178;
          v187 = v179;
          v718 = sub_100216224();
          v189 = v188;

          v190 = [*&v731[v729] egoPeerPermanentInfoSig];
          if (v190)
          {
            v716 = v84;
            v717 = v189;
            v198 = v190;
            v199 = sub_100216224();
            v201 = v200;

            v202 = objc_allocWithZone(TPPeerStableInfo);
            v203 = v167;
            sub_100012558(v165, v167);
            sub_100012558(v721, v719);
            isa = sub_100216204().super.isa;
            v730 = v165;
            v205 = sub_100216204().super.isa;
            v206 = [v202 initWithData:isa sig:v205];

            v207 = v730;
            sub_100002BF0(v721, v719, v208, v209, v210, v211, v212, v213);

            sub_100002BF0(v730, v167, v214, v215, v216, v217, v218, v219);
            if (v206)
            {
              v687 = v206;
              v711 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v718, v717);
              sub_100012558(v199, v201);
              v227 = sub_100216964();
              v727, v228, v229, v230, v231, v232, v233, v234, v641, v647, v656, v20, v167, v227, v687, v695, v702, v711;
              v235 = sub_100216204().super.isa;
              v236 = sub_100216204().super.isa;
              v237 = [objc_opt_self() permanentInfoWithPeerID:v227 data:v235 sig:v236 keyFactory:v712];

              v697 = v199;
              v704 = v201;
              sub_100002BF0(v199, v201, v238, v239, v240, v241, v242, v243);

              sub_100002BF0(v718, v717, v244, v245, v246, v247, v248, v249);
              v155 = v724;
              if (v237)
              {
                strcpy(&aBlock, "signing-key ");
                BYTE13(aBlock) = 0;
                HIWORD(aBlock) = -5120;
                v741._countAndFlagsBits = v665;
                v741._object = v727;
                sub_100216A14(v741);
                v257 = *(&aBlock + 1);
                v258 = objc_opt_self();
                sub_100012558(v722, v724);
                sub_100012558(v725, v723);

                v681 = v731;

                v732 = v237;
                v259 = v688;
                v260 = [v258 defaultManager];
                v261 = sub_100216964();
                v666 = v260;
                v262 = [v260 identityForIdentifier:v261];

                v659 = v257;
                v689 = v259;
                if (!v262)
                {
                  v405 = sub_100216754();
                  v406 = sub_100216C74();
                  if (os_log_type_enabled(v405, v406))
                  {
                    v407 = swift_slowAlloc();
                    v408 = swift_slowAlloc();
                    *&aBlock = v408;
                    *v407 = 136446210;
                    v739 = 0;
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v409 = sub_100216994();
                    v411 = v410;
                    v412 = sub_100005FB0(v409, v410, &aBlock);
                    v411, v413, v414, v415, v416, v417, v418, v419, v643, v649, v257, v666, v672, v681, v689, v697, v704, v712;
                    *(v407 + 4) = v412;
                    _os_log_impl(&_mh_execute_header, v405, v406, "handle: no signing key pair: %{public}s", v407, 0xCu);
                    sub_100006128(v408, v420, v421, v422, v423, v424, v425, v426);
                  }

                  v262 = v723;
                  v427 = v730;
                  v289 = v717;
                  v429 = v697;
                  v428 = v704;
                  (v84)(0, 0);
                  v727, v430, v431, v432, v433, v434, v435, v436, v643, v649, v659, v666, v672, v681, v689, v697, v704, v712;

                  goto LABEL_87;
                }

                v263 = [v262 resultType];
                if (v263)
                {
                  if (v263 == 1)
                  {
                    v651 = v262;
                    sub_1000561D0();
                    v444 = swift_allocError();
                    v445 = xmmword_100225F90;
LABEL_75:
                    *v443 = v445;
                    *(v443 + 16) = 13;
                    swift_errorRetain();
                    v502 = sub_100216754();
                    v503 = sub_100216C74();

                    if (os_log_type_enabled(v502, v503))
                    {
                      v504 = swift_slowAlloc();
                      v505 = swift_slowAlloc();
                      *&aBlock = v505;
                      *v504 = 136446210;
                      v739 = v444;
                      swift_errorRetain();
                      sub_10001148C(&qword_100297E80, &unk_1002265A0);
                      v506 = sub_100216994();
                      v508 = v507;
                      v509 = sub_100005FB0(v506, v507, &aBlock);
                      v508, v510, v511, v512, v513, v514, v515, v516, v643, v651, v659, v666, v672, v681, v689, v697, v704, v712;
                      *(v504 + 4) = v509;
                      v155 = v724;
                      v517 = v727;
                      _os_log_impl(&_mh_execute_header, v502, v503, "handle: no signing key pair: %{public}s", v504, 0xCu);
                      sub_100006128(v505, v518, v519, v520, v521, v522, v523, v524);

                      v262 = v723;
                      v289 = v717;
                      v525 = v666;
                    }

                    else
                    {

                      v262 = v723;
                      v289 = v717;
                      v525 = v666;
                      v517 = v727;
                    }

                    (v716)(0, v444);

                    v517, v526, v527, v528, v529, v530, v531, v532, v643, v651, v659, v666, v672, v681, v689, v697, v704, v712;
                    goto LABEL_81;
                  }

                  if (v263 == 2)
                  {
                    v264 = v262;
                    v265 = [v262 error];
                    swift_errorRetain();
                    v266 = sub_100216754();
                    v267 = sub_100216C74();

                    if (os_log_type_enabled(v266, v267))
                    {
                      v268 = swift_slowAlloc();
                      v269 = swift_slowAlloc();
                      *&aBlock = v269;
                      *v268 = 136446210;
                      v739 = v265;
                      swift_errorRetain();
                      sub_10001148C(&qword_100297E80, &unk_1002265A0);
                      v270 = sub_100216994();
                      v272 = v271;
                      v273 = sub_100005FB0(v270, v271, &aBlock);
                      v272, v274, v275, v276, v277, v278, v279, v280, v643, v649, v659, v666, v672, v681, v689, v697, v704, v712;
                      *(v268 + 4) = v273;
                      v155 = v724;
                      v281 = v727;
                      _os_log_impl(&_mh_execute_header, v266, v267, "handle: no signing key pair: %{public}s", v268, 0xCu);
                      sub_100006128(v269, v282, v283, v284, v285, v286, v287, v288);

                      v262 = v723;
                      v289 = v717;
                      v290 = v666;
                    }

                    else
                    {

                      v262 = v723;
                      v289 = v717;
                      v290 = v666;
                      v281 = v727;
                    }

                    (v716)(0, v265);
                    v281, v533, v534, v535, v536, v537, v538, v539, v643, v649, v659, v666, v672, v681, v689, v697, v704, v712;

LABEL_81:
                    v427 = v730;
LABEL_86:
                    v429 = v697;
                    v428 = v704;
LABEL_87:
                    v453 = v725;
                    sub_100002BF0(v725, v262, v437, v438, v439, v440, v441, v442);
                    v452 = v722;
                    sub_100002BF0(v722, v155, v570, v571, v572, v573, v574, v575);
                    goto LABEL_88;
                  }

LABEL_74:
                  v651 = v262;
                  sub_1000561D0();
                  v444 = swift_allocError();
                  v445 = xmmword_100225FA0;
                  goto LABEL_75;
                }

                v652 = v262;
                v446 = [v262 value];
                if (v446)
                {
                  v447 = v446;
                  v448 = [v446 keyPair];

                  if (v448)
                  {
                    objc_opt_self();
                    v449 = swift_dynamicCastObjCClass();
                    if (v449)
                    {
                      v450 = v449;
                      v720 = *&v681[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
                      v451 = swift_allocObject();
                      *(v451 + 16) = v726;
                      *(v451 + 24) = &v733;
                      *(v451 + 32) = v732;
                      *(v451 + 40) = v259;
                      *(v451 + 48) = v681;
                      *(v451 + 56) = v450;
                      v452 = v722;
                      *(v451 + 64) = v722;
                      *(v451 + 72) = v724;
                      v453 = v725;
                      *(v451 + 80) = v725;
                      *(v451 + 88) = v723;
                      *(v451 + 96) = v20;
                      *(v451 + 104) = v727;
                      *(v451 + 112) = v716;
                      *(v451 + 120) = v728;
                      v454 = swift_allocObject();
                      *(v454 + 16) = sub_1001ABF6C;
                      *(v454 + 24) = v451;
                      v737 = sub_1001ACCC0;
                      v738 = v454;
                      *&aBlock = _NSConcreteStackBlock;
                      *(&aBlock + 1) = 1107296256;
                      v735 = sub_100109050;
                      v736 = &unk_1002857B8;
                      v455 = _Block_copy(&aBlock);
                      v716 = v738;
                      v456 = v448;
                      sub_100012558(v722, v724);
                      sub_100012558(v725, v723);

                      v457 = v681;

                      v458 = v732;
                      v459 = v689;
                      v460 = v456;

                      v716, v461, v462, v463, v464, v465, v466, v467;
                      [v720 performBlockAndWait:v455];

                      _Block_release(v455);
                      LOBYTE(v455) = swift_isEscapingClosureAtFileLocation();
                      v727, v468, v469, v470, v471, v472, v473, v474, v643, v652, v257, v666, v672, v681, v689, v697, v201, v712;

                      v451, v475, v476, v477, v478, v479, v480, v481;
                      v482 = v454;
                      v262 = v723;
                      v482, v483, v484, v485, v486, v487, v488, v489;
                      sub_100002BF0(v725, v723, v490, v491, v492, v493, v494, v495);
                      sub_100002BF0(v722, v724, v496, v497, v498, v499, v500, v501);
                      v427 = v730;
                      v289 = v717;
                      v429 = v697;
                      v428 = v704;
                      if ((v455 & 1) == 0)
                      {
LABEL_88:

                        v659, v576, v577, v578, v579, v580, v581, v582, v643, v650, v659, v666, v672, v681, v689, v697, v704, v712;
                        v727, v583, v584, v585, v586, v587, v588, v589, v644, v653, v660, v667, v674, v682, v691, v699, v706, v714;
                        v728, v590, v591, v592, v593, v594, v595, v596;

                        v726, v597, v598, v599, v600, v601, v602, v603, v645, v654, v661, v668, v675, v683, v692, v700, v707, v715;
                        sub_100002BF0(v429, v428, v604, v605, v606, v607, v608, v609);
                        sub_100002BF0(v718, v289, v610, v611, v612, v613, v614, v615);
                        sub_100002BF0(v721, v719, v616, v617, v618, v619, v620, v621);
                        sub_100002BF0(v427, v676, v622, v623, v624, v625, v626, v627);
                        sub_100002BF0(v453, v262, v628, v629, v630, v631, v632, v633);
                        sub_100002BF0(v452, v155, v634, v635, v636, v637, v638, v639);
LABEL_16:

                        return;
                      }

                      __break(1u);
                      goto LABEL_74;
                    }
                  }
                }

                v540 = sub_100216754();
                v541 = sub_100216C74();
                v542 = v666;
                if (os_log_type_enabled(v540, v541))
                {
                  v543 = swift_slowAlloc();
                  v544 = swift_slowAlloc();
                  *&aBlock = v544;
                  *v543 = 136446210;
                  v739 = 0;
                  sub_10001148C(&qword_100297E80, &unk_1002265A0);
                  v545 = sub_100216994();
                  v547 = v546;
                  v548 = sub_100005FB0(v545, v546, &aBlock);
                  v547, v549, v550, v551, v552, v553, v554, v555, v643, v652, v257, v666, v672, v681, v689, v697, v704, v712;
                  *(v543 + 4) = v548;
                  _os_log_impl(&_mh_execute_header, v540, v541, "handle: no signing key pair: %{public}s", v543, 0xCu);
                  sub_100006128(v544, v556, v557, v558, v559, v560, v561, v562);
                }

                v262 = v723;
                v427 = v730;
                v289 = v717;
                (v84)(0, 0);
                v727, v563, v564, v565, v566, v567, v568, v569, v643, v652, v659, v666, v672, v681, v689, v697, v704, v712;

                goto LABEL_86;
              }

              v727, v250, v251, v252, v253, v254, v255, v256, v643, v649, v658, v665, v672, v680, v688, v199, v201, v712;
              v382 = sub_100216754();
              v383 = sub_100216C54();
              if (os_log_type_enabled(v382, v383))
              {
                v384 = swift_slowAlloc();
                *v384 = 0;
                _os_log_impl(&_mh_execute_header, v382, v383, "cannot create TPPeerPermanentInfo", v384, 2u);
              }

              sub_1000561D0();
              v385 = swift_allocError();
              *v386 = xmmword_10021DC20;
              *(v386 + 16) = 13;
              (v84)(0, v385);

              sub_100002BF0(v698, v705, v387, v388, v389, v390, v391, v392);
              sub_100002BF0(v718, v717, v393, v394, v395, v396, v397, v398);
              sub_100002BF0(v721, v719, v399, v400, v401, v402, v403, v404);
              v380 = v730;
              v381 = v673;
            }

            else
            {
              v727, v220, v221, v222, v223, v224, v225, v226, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
              v351 = sub_100216754();
              v352 = sub_100216C54();
              v155 = v724;
              if (os_log_type_enabled(v351, v352))
              {
                v353 = swift_slowAlloc();
                *v353 = 0;
                _os_log_impl(&_mh_execute_header, v351, v352, "cannot create TPPeerStableInfo", v353, 2u);
                v207 = v730;
              }

              sub_1000561D0();
              v354 = swift_allocError();
              *v355 = xmmword_10021DC20;
              *(v355 + 16) = 13;
              (v84)(0, v354);

              sub_100002BF0(v199, v201, v356, v357, v358, v359, v360, v361);
              sub_100002BF0(v718, v717, v362, v363, v364, v365, v366, v367);
              sub_100002BF0(v721, v719, v368, v369, v370, v371, v372, v373);
              v380 = v207;
              v381 = v203;
            }

            sub_100002BF0(v380, v381, v374, v375, v376, v377, v378, v379);
            goto LABEL_44;
          }

          v727, v191, v192, v193, v194, v195, v196, v197, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
          v334 = sub_100216754();
          v335 = sub_100216C54();
          if (os_log_type_enabled(v334, v335))
          {
            v336 = swift_slowAlloc();
            *v336 = 0;
            _os_log_impl(&_mh_execute_header, v334, v335, "permInfoSig does not exist", v336, 2u);
          }

          sub_1000561D0();
          v337 = swift_allocError();
          *v338 = xmmword_100225FD0;
          *(v338 + 16) = 13;
          (v84)(0, v337);

          sub_100002BF0(v718, v189, v339, v340, v341, v342, v343, v344);
          v332 = v721;
          v333 = v719;
        }

        else
        {
          v727, v180, v181, v182, v183, v184, v185, v186, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
          v321 = sub_100216754();
          v322 = sub_100216C54();
          if (os_log_type_enabled(v321, v322))
          {
            v323 = swift_slowAlloc();
            *v323 = 0;
            _os_log_impl(&_mh_execute_header, v321, v322, "permanentInfo does not exist", v323, 2u);
          }

          sub_1000561D0();
          v324 = swift_allocError();
          *v325 = xmmword_100225FD0;
          *(v325 + 16) = 13;
          (v84)(0, v324);

          v332 = v721;
          v333 = v178;
        }

        sub_100002BF0(v332, v333, v326, v327, v328, v329, v330, v331);
      }

      else
      {
        v727, v169, v170, v171, v172, v173, v174, v175, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
        v310 = sub_100216754();
        v311 = sub_100216C54();
        if (os_log_type_enabled(v310, v311))
        {
          v312 = swift_slowAlloc();
          *v312 = 0;
          _os_log_impl(&_mh_execute_header, v310, v311, "stableInfoSig does not exist", v312, 2u);
        }

        sub_1000561D0();
        v313 = swift_allocError();
        *v314 = xmmword_100225FD0;
        *(v314 + 16) = 13;
        (v84)(0, v313);
      }

      sub_100002BF0(v165, v167, v315, v316, v317, v318, v319, v320);
      sub_100002BF0(v725, v723, v345, v346, v347, v348, v349, v350);
      v308 = v722;
      v309 = v724;
      goto LABEL_56;
    }

    v727, v157, v158, v159, v160, v161, v162, v163, v641, v647, v656, v663, v670, v678, v685, v695, v702, v709;
    v291 = sub_100216754();
    v292 = sub_100216C54();
    if (os_log_type_enabled(v291, v292))
    {
      v293 = swift_slowAlloc();
      *v293 = 0;
      _os_log_impl(&_mh_execute_header, v291, v292, "stableInfo does not exist", v293, 2u);
    }

    sub_1000561D0();
    v294 = swift_allocError();
    *v295 = xmmword_100225FD0;
    *(v295 + 16) = 13;
    (v84)(0, v294);

LABEL_44:
    sub_100002BF0(v725, v723, v296, v297, v298, v299, v300, v301);
    v308 = v722;
    v309 = v155;
LABEL_56:
    sub_100002BF0(v308, v309, v302, v303, v304, v305, v306, v307);
LABEL_57:

    return;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v23 = sub_100216774();
  sub_100002648(v23, qword_10029D160);
  v24 = sub_100216754();
  v25 = sub_100216C54();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "no prepared identity, cannot set recovery key", v26, 2u);
  }

  sub_1000561D0();
  v27 = swift_allocError();
  *v28 = xmmword_10021DA90;
  *(v28 + 16) = 13;
  a2(0, v27);
}

uint64_t sub_100130C5C(unint64_t a1, void *a2, id a3, void *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, _TtC18TrustedPeersHelper6Client *a9, uint64_t a10, void *a11, void *a12, void (*a13)(void, uint64_t), char **a14)
{
  v185 = a6;
  isa = a4;
  v182 = type metadata accessor for SetRecoveryKeyRequest(0);
  __chkstk_darwin(v182, v23);
  v184 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for SignedPeerStableInfo(0);
  __chkstk_darwin(v181, v25);
  v183 = (&v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = a8;
  if (a1 >> 62)
  {
    v27 = sub_1002170F4();
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = _swiftEmptyArrayStorage;
  v186 = a7;
  if (v27)
  {
    v191 = _swiftEmptyArrayStorage;
    v29 = &v191;
    sub_100217064();
    if (v27 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v188 = a3;
    v30 = 0;
    v14 = &selRef_signingKey;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = sub_100217014();
      }

      else
      {
        v31 = *(a1 + 8 * v30 + 32);
      }

      v32 = v31;
      ++v30;
      v15 = [v31 tlk];

      sub_100217044();
      v16 = *v191->endpoint;
      sub_100217074();
      sub_100217084();
      sub_100217054();
    }

    while (v27 != v30);
    v28 = v191;
    a3 = v188;
  }

  swift_beginAccess();
  v29 = *(*a2 + OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys);
  v33 = [a3 epoch];
  a1 = isa;
  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v15 = a13;
  v14 = a14;
  v16 = sub_10010C3CC(v28, v29, v29, v33);
  v28, v34, v35, v36, v37, v38, v39, v40, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;

  v28 = [a1 bestPolicyVersion];
  v29 = sub_100179A18([(Client *)v28 versionNumber]);
  v41 = [a1 clock];
  a3 = v41 + 1;
  if (v41 != -1)
  {
    if (qword_100297230 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_14:
  v177 = v28;
  v171 = qword_1002B0320;
  v174 = [(Client *)v29 version];
  v42 = [a1 policySecrets];
  if (v42)
  {
    v43 = v42;
    v169 = sub_1002168D4();
  }

  else
  {
    v169 = 0;
  }

  v173 = a3;
  HIDWORD(v170) = [a1 syncUserControllableViews];
  v44 = [a1 secureElementIdentity];
  v188 = [a1 walrusSetting];
  v180 = [a1 webAccess];
  v45 = [a1 deviceName];
  if (v45)
  {
    v46 = v45;
    v166 = sub_100216974();
    v48 = v47;
  }

  else
  {
    v166 = 0;
    v48 = 0;
  }

  v172 = v44;
  v49 = [a1 serialNumber];
  v176 = v29;
  if (v49)
  {
    v50 = v49;
    v165 = sub_100216974();
    v168 = v51;
  }

  else
  {
    v165 = 0;
    v168 = 0;
  }

  v52 = [a1 osVersion];
  if (!v52)
  {
    sub_100216974();
    v54 = v53;
    v52 = sub_100216964();
    v54, v55, v56, v57, v58, v59, v60, v61, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
  }

  v179 = v14;
  HIDWORD(v167) = [a1 isInheritedAccount];
  v62 = v169;
  if (v169)
  {
    isa = sub_1002168C4().super.isa;
    v62, v63, v64, v65, v66, v67, v68, v69, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
    v70 = v188;
    if (v48)
    {
LABEL_27:
      v71 = sub_100216964();
      v48, v72, v73, v74, v75, v76, v77, v78, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
      goto LABEL_30;
    }
  }

  else
  {
    isa = 0;
    v70 = v188;
    if (v48)
    {
      goto LABEL_27;
    }
  }

  v71 = 0;
LABEL_30:
  v178 = v15;
  v175 = v16;
  v164 = a5;
  if (v168)
  {
    v79 = v168;
    v80 = sub_100216964();
    v79, v81, v82, v83, v84, v85, v86, v87, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
  }

  else
  {
    v80 = 0;
  }

  v88 = objc_allocWithZone(TPPeerStableInfo);
  v89 = sub_100216204().super.isa;
  v169 = a9;
  v90.super.isa = sub_100216204().super.isa;
  v168 = a10;
  v91 = v90.super.isa;
  v190[0] = 0;
  LOBYTE(v162) = BYTE4(v167);
  v161 = v90.super.isa;
  v160 = v52;
  v159 = v70;
  v92 = v88;
  v93 = v174;
  v94 = v52;
  v95 = isa;
  v96 = v172;
  v97 = [v92 initWithClock:v173 frozenPolicyVersion:v171 flexiblePolicyVersion:v174 policySecrets:isa syncUserControllableViews:HIDWORD(v170) secureElementIdentity:v172 walrusSetting:v159 webAccess:v180 deviceName:v71 serialNumber:v80 osVersion:v160 signingKeyPair:v185 recoverySigningPubKey:v89 recoveryEncryptionPubKey:v161 isInheritedAccount:v162 error:v190];

  if (v97)
  {
    isa = a12;
    v98 = v190[0];

    v99 = v183;
    *v183 = xmmword_10021D470;
    *(v99 + 16) = xmmword_10021D470;
    v100 = v97;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v101 = [v100 data];
    v102 = sub_100216224();
    v104 = v103;

    sub_100002BF0(*v99, *(v99 + 8), v105, v106, v107, v108, v109, v110);
    *v99 = v102;
    *(v99 + 8) = v104;
    v111 = [v100 sig];
    v112 = sub_100216224();
    v114 = v113;

    sub_100002BF0(*(v99 + 16), *(v99 + 24), v115, v116, v117, v118, v119, v120);
    v121 = v164;
    *(v99 + 16) = v112;
    *(v99 + 24) = v114;
    __chkstk_darwin(v122, v123);
    v124 = v175;
    sub_1001A13C4(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);
    v125 = v184;
    sub_100216654();
    v124, v126, v127, v128, v129, v130, v131, v132, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
    v133 = *&v121[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v134 = *&v121[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    isa = sub_100006484(&v121[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v133);
    v135 = swift_allocObject();
    *(v135 + 16) = v121;
    *(v135 + 24) = v100;
    v136 = v179;
    *(v135 + 32) = v178;
    *(v135 + 40) = v136;
    v137 = *(v134 + 16);
    v138 = *(v137 + 40);
    v139 = v100;
    v140 = v121;

    v138(v125, sub_1001AC02C, v135, v133, v137);

    v135, v141, v142, v143, v144, v145, v146, v147;
    sub_1001AC1E4(v125, type metadata accessor for SetRecoveryKeyRequest);
    return sub_1001AC1E4(v99, type metadata accessor for SignedPeerStableInfo);
  }

  else
  {
    v149 = v190[0];
    v175, v150, v151, v152, v153, v154, v155, v156, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172;
    v157 = sub_100216154();

    swift_willThrow();
    v158 = v178;

    swift_errorRetain();
    v158(0, v157);
  }
}

void sub_100131610(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, void *a9, char *a10)
{
  v67 = a8;
  v69 = a9;
  v70 = a10;
  v68 = type metadata accessor for SignedPeerStableInfo(0);
  v17 = *(v68 - 1);
  __chkstk_darwin(v68, v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];

  v21, v22, v23, v24, v25, v26, v27, v28, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76;
  a1[2] = a2;
  a1[3] = a3;
  v29 = a1[4];
  v30 = a1[5];
  a1[4] = a4;
  a1[5] = a5;
  sub_100012558(a4, a5);
  sub_100002BF0(v29, v30, v31, v32, v33, v34, v35, v36);
  v37 = a1[6];
  v38 = a1[7];
  a1[6] = a6;
  a1[7] = a7;
  sub_100012558(a6, a7);
  sub_100002BF0(v37, v38, v39, v40, v41, v42, v43, v44);
  sub_1001AC0A0(v67, v20, type metadata accessor for SignedPeerStableInfo);
  v45 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
  sub_1000114D4(a1 + v45, &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v20, a1 + v45, type metadata accessor for SignedPeerStableInfo);
  (*(v17 + 56))(a1 + v45, 0, 1, v68);
  v46 = a1[8];
  v47 = v69;

  v46, v48, v49, v50, v51, v52, v53, v54, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76;
  a1[8] = v47;
  v55 = [*&v70[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
  if (v55)
  {
    v63 = v55;
    v64 = sub_100216974();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0xE000000000000000;
  }

  a1[1], v56, v57, v58, v59, v60, v61, v62, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76;
  *a1 = v64;
  a1[1] = v66;
}

void sub_100131848(uint64_t a1, char *a2, void *a3, void (*a4)(void, void *), void *a5)
{
  v80 = a4;
  v81 = a5;
  v79 = a3;
  v7 = type metadata accessor for SetRecoveryKeyResponse(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v12 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v79 - v14;
  v16 = sub_10001148C(&qword_1002984D0, &unk_10021DF40);
  __chkstk_darwin(v16, v17);
  v19 = (&v79 - v18);
  sub_100019C6C(a1, &v79 - v18, &qword_1002984D0, &unk_10021DF40);
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
      _os_log_impl(&_mh_execute_header, v23, v24, "setRecoveryKey failed: %{public}s", v25, 0xCu);
      sub_100006128(v26, v38, v39, v40, v41, v42, v43, v44);
    }

    swift_errorRetain();
    v20(0, v21);
  }

  else
  {
    sub_1001AC038(v19, v15, type metadata accessor for SetRecoveryKeyResponse);
    v45 = a2;
    v46 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v15, v12, type metadata accessor for SetRecoveryKeyResponse);
    v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v48 = (v9 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v79;
    *v49->endpoint = a2;
    *v49->containerMap = v50;
    sub_1001AC038(v12, &v49->_TtCs12_SwiftObject_opaque[v47], type metadata accessor for SetRecoveryKeyResponse);
    v51 = &v49->_TtCs12_SwiftObject_opaque[v48];
    v52 = v81;
    *v51 = v80;
    *(v51 + 1) = v52;
    v53 = swift_allocObject();
    *v53->endpoint = sub_1001AC108;
    *v53->containerMap = v49;
    v86 = sub_1001ACCC0;
    v87 = v53;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100109050;
    v85 = &unk_100285858;
    v54 = _Block_copy(&aBlock);
    v55 = v87;
    v56 = v45;
    v57 = v50;

    v55, v58, v59, v60, v61, v62, v63, v64;
    [v46 performBlockAndWait:v54];
    _Block_release(v54);
    sub_1001AC1E4(v15, type metadata accessor for SetRecoveryKeyResponse);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();
    v49, v65, v66, v67, v68, v69, v70, v71;
    v53, v72, v73, v74, v75, v76, v77, v78;
    if (v54)
    {
      __break(1u);
    }
  }
}

void sub_100131CF8(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(_TtC18TrustedPeersHelper6Client *, void), void *a5)
{
  v73 = a4;
  v74 = a5;
  v76 = a3;
  v79 = sub_100216424();
  v72 = *(v79 - 1);
  v8 = __chkstk_darwin(v79, v7);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v77 = &v71 - v11;
  v12 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for Changes(0);
  v75 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v21 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v22 = [a2 data];
  v23 = sub_100216224();
  v25 = v24;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v23, v25, v27, v28, v29, v30, v31, v32);
  [v21 setEgoPeerStableInfo:isa];

  v33 = *(a1 + v20);
  v34 = [a2 sig];
  v35 = sub_100216224();
  v37 = v36;

  v38 = sub_100216204().super.isa;
  v39 = v35;
  v40 = v75;
  v41 = v76;
  sub_100002BF0(v39, v37, v42, v43, v44, v45, v46, v47);
  [v33 setEgoPeerStableInfoSig:v38];

  v48 = type metadata accessor for SetRecoveryKeyResponse(0);
  sub_100019C6C(v41 + *(v48 + 24), v15, &unk_10029D750, &qword_10021E850);
  v49 = v40[6];
  if (v49(v15, 1, v16) == 1)
  {
    *v19 = 0;
    *(v19 + 1) = 0xE000000000000000;
    *(v19 + 2) = _swiftEmptyArrayStorage;
    *(v19 + 24) = xmmword_10021D470;
    *(v19 + 40) = xmmword_10021D470;
    v19[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v49(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v15, v19, type metadata accessor for Changes);
  }

  sub_100174C2C(v19, 0);
  sub_1001AC1E4(v19, type metadata accessor for Changes);
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
    _os_log_impl(&_mh_execute_header, v51, v52, "setRecoveryKey succeeded", v53, 2u);
  }

  v54 = *v41;
  v55 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v56 = *(v54 + 16);
  if (v56)
  {
    v57 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v58 = *(v72 + 2);
    v59 = v54 + ((v72[80] + 32) & ~v72[80]);
    v75 = *(v72 + 9);
    v76 = v57;
    v60 = v72 + 8;
    do
    {
      v61 = v77;
      v62 = v79;
      v58(v77, v59, v79);
      v58(v78, v61, v62);
      v63 = sub_100216D94();
      (*v60)(v61, v62);
      if (v63)
      {
        sub_100216B04();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v55 = v81;
      }

      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v73(v55, 0);
  v55, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80;
}

uint64_t sub_10013242C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
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
    _os_log_impl(&_mh_execute_header, v14, v12, "createCustodianRecoveryKey complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000046, 0x800000010023C3E0, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

void sub_100132674(char *a1, _TtC18TrustedPeersHelper6Client *a2, void (*a3)(void, void, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v532 = a7;
  v533 = a8;
  v530 = a6;
  v531 = a5;
  v535 = a3;
  v536 = a4;
  v529 = a10;
  v12 = sub_1002163D4();
  v537 = *(v12 - 8);
  v538 = v12;
  v13 = *(v537 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v16 = &v512 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v512 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v512 - v23;
  __chkstk_darwin(v22, v25);
  v27 = (&v512 - v26);
  v28 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v534 = a2;
  isa = sub_1002163B4().super.isa;
  v30 = [v28 findCustodianRecoveryKeyWithUUID:isa];

  if (v30)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v31 = sub_100216774();
    sub_100002648(v31, qword_10029D160);
    v32 = v537;
    v33 = v538;
    (*(v537 + 16))(v16, v534, v538);
    v34 = sub_100216754();
    v35 = sub_100216C74();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v539[0] = v37;
      *v36 = 136315138;
      sub_1001A13C4(&qword_10029D738, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = sub_100217174();
      v40 = v39;
      (*(v32 + 8))(v16, v33);
      v41 = sub_100005FB0(v38, v40, v539);
      v40, v42, v43, v44, v45, v46, v47, v48, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "CRK UUID %s already exists", v36, 0xCu);
      sub_100006128(v37, v49, v50, v51, v52, v53, v54, v55);
    }

    else
    {

      (*(v32 + 8))(v16, v33);
    }

    sub_1000561D0();
    v81 = swift_allocError();
    *v82 = xmmword_100225FF0;
    *(v82 + 16) = 13;
    v535(0, 0, v81);
    goto LABEL_20;
  }

  v525 = v20;
  v526 = v24;
  v528 = v27;
  v524 = v13;
  v527 = a9;
  v56 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v57 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v57)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029D160);
    v84 = sub_100216754();
    v85 = sub_100216C54();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "no prepared identity, cannot create custodian recovery key", v86, 2u);
    }

    sub_1000561D0();
    v87 = swift_allocError();
    *v88 = xmmword_10021DA90;
    *(v88 + 16) = 13;
    v535(0, 0, v87);

    goto LABEL_20;
  }

  v523 = v56;
  v58 = v57;
  v59 = sub_100216974();
  v61 = v60;

  v62 = (v537 + 16);
  v63 = *(v537 + 16);
  (v63)(v528, v534, v538);
  v64 = v530;
  v65 = v531;
  v66 = sub_1001B43B8(v531, v530);
  v522 = a1;
  if ((v64 & 0x1000000000000000) != 0)
  {
    v511 = v66;
    v67 = sub_100216A44();
    v66 = v511;
  }

  else if ((v64 & 0x2000000000000000) != 0)
  {
    v67 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v67 = v65 & 0xFFFFFFFFFFFFLL;
  }

  v69 = v532;
  v68 = v533;
  v70 = v66;
  v71 = sub_1000139DC(v66[1]._TtCs12_SwiftObject_opaque, v67);
  v73 = v72;
  v70, v72, v74, v75, v76, v77, v78, v79;
  v80 = objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v71, v73);

  v89 = sub_100014D24(v71, v73, v69, v68);
  v521 = v59;
  v90 = v526;
  v91 = v528;
  v92 = v538;
  (v63)(v526, v528, v538);
  type metadata accessor for CustodianRecoveryKey();
  swift_allocObject();
  v93 = sub_100012654(v90, v89, v527);
  v520 = v63;
  v526 = v62;
  (*(v537 + 8))(v91, v92);
  sub_100002BF0(v71, v73, v94, v95, v96, v97, v98, v99);
  v100 = qword_100297520;
  swift_retain_n();
  v101 = v93;
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_100216774();
  v103 = sub_100002648(v102, qword_10029D160);
  v104 = sub_100216754();
  v105 = sub_100216C54();
  v101, v106, v107, v108, v109, v110, v111, v112;
  v113 = os_log_type_enabled(v104, v105);
  v528 = v61;
  if (v113)
  {
    v114 = swift_slowAlloc();
    v519 = swift_slowAlloc();
    v539[0] = v519;
    *v114 = 136446210;
    v115 = [objc_msgSend(*v101->containerMap "signingPublicKey")];
    swift_unknownObjectRelease();
    v116 = sub_100216224();
    v118 = v117;

    v119 = sub_100216214(0);
    v121 = v120;
    sub_100002BF0(v116, v118, v122, v123, v124, v125, v126, v127);
    v128 = sub_100005FB0(v119, v121, v539);
    v121, v129, v130, v131, v132, v133, v134, v135, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    *(v114 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v104, v105, "createCustodianRecoveryKey signingPubKey: %{public}s", v114, 0xCu);
    sub_100006128(v519, v136, v137, v138, v139, v140, v141, v142);
  }

  v143 = sub_100216754();
  v144 = sub_100216C54();
  v101, v145, v146, v147, v148, v149, v150, v151;
  if (os_log_type_enabled(v143, v144))
  {
    v152 = swift_slowAlloc();
    v519 = swift_slowAlloc();
    v539[0] = v519;
    *v152 = 136446210;
    v153 = [objc_msgSend(*v101->containerMap "encryptionPublicKey")];
    swift_unknownObjectRelease();
    v154 = sub_100216224();
    v156 = v155;

    v157 = sub_100216214(0);
    v159 = v158;
    v101, v158, v160, v161, v162, v163, v164, v165;
    sub_100002BF0(v154, v156, v166, v167, v168, v169, v170, v171);
    v172 = sub_100005FB0(v157, v159, v539);
    v159, v173, v174, v175, v176, v177, v178, v179, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    *(v152 + 4) = v172;
    _os_log_impl(&_mh_execute_header, v143, v144, "createCustodianRecoveryKey encryptionPubKey: %{public}s", v152, 0xCu);
    sub_100006128(v519, v180, v181, v182, v183, v184, v185, v186);
  }

  else
  {

    v101, v187, v188, v189, v190, v191, v192, v193;
  }

  v195 = v522;
  v194 = v523;
  v196 = [*&v523->_TtCs12_SwiftObject_opaque[v522] egoPeerPermanentInfo];
  if (!v196)
  {
    v528, v197, v198, v199, v200, v201, v202, v203, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v367 = sub_100216754();
    v368 = sub_100216C54();
    if (os_log_type_enabled(v367, v368))
    {
      v369 = swift_slowAlloc();
      *v369 = 0;
      _os_log_impl(&_mh_execute_header, v367, v368, "permanentInfo does not exist", v369, 2u);
    }

    sub_1000561D0();
    v370 = swift_allocError();
    *v371 = xmmword_100225FD0;
    *(v371 + 16) = 13;
    v535(0, 0, v370);
    v101, v372, v373, v374, v375, v376, v377, v378;
    goto LABEL_20;
  }

  v204 = v196;
  v205 = sub_100216224();
  v207 = v206;

  v208 = [*&v194->_TtCs12_SwiftObject_opaque[v195] egoPeerPermanentInfoSig];
  if (!v208)
  {
    v528, v209, v210, v211, v212, v213, v214, v215, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v379 = sub_100216754();
    v380 = sub_100216C54();
    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      *v381 = 0;
      _os_log_impl(&_mh_execute_header, v379, v380, "permInfoSig does not exist", v381, 2u);
    }

    sub_1000561D0();
    v382 = swift_allocError();
    *v383 = xmmword_100225FD0;
    *(v383 + 16) = 13;
    v535(0, 0, v382);
    v101, v384, v385, v386, v387, v388, v389, v390;
    sub_100002BF0(v205, v207, v391, v392, v393, v394, v395, v396);
    goto LABEL_20;
  }

  v515 = v103;
  v519 = v101;
  v216 = v208;
  v217 = sub_100216224();
  v219 = v218;

  v220 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v221 = v528;

  sub_100012558(v205, v207);
  sub_100012558(v217, v219);
  v222 = sub_100216964();
  v221, v223, v224, v225, v226, v227, v228, v229, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
  v230 = sub_100216204().super.isa;
  v231 = sub_100216204().super.isa;
  v232 = objc_opt_self();
  v516 = v220;
  v233 = [v232 permanentInfoWithPeerID:v222 data:v230 sig:v231 keyFactory:v220];

  v517 = v217;
  sub_100002BF0(v217, v219, v234, v235, v236, v237, v238, v239);

  v518 = v207;
  sub_100002BF0(v205, v207, v240, v241, v242, v243, v244, v245);

  if (!v233)
  {
    v221, v246, v247, v248, v249, v250, v251, v252, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v397 = sub_100216754();
    v398 = sub_100216C54();
    v399 = os_log_type_enabled(v397, v398);
    v400 = v519;
    if (v399)
    {
      v401 = swift_slowAlloc();
      *v401 = 0;
      _os_log_impl(&_mh_execute_header, v397, v398, "cannot create TPPeerPermanentInfo", v401, 2u);
    }

    sub_1000561D0();
    v402 = swift_allocError();
    *v403 = xmmword_10021DA80;
    *(v403 + 16) = 13;
    v535(0, 0, v402);
    v400, v404, v405, v406, v407, v408, v409, v410;
    sub_100002BF0(v205, v518, v411, v412, v413, v414, v415, v416);
    sub_100002BF0(v517, v219, v417, v418, v419, v420, v421, v422);
    goto LABEL_47;
  }

  v253 = v523;
  v254 = [*&v523->_TtCs12_SwiftObject_opaque[v195] egoPeerStableInfo];
  v262 = v519;
  if (!v254)
  {
    v528, v255, v256, v257, v258, v259, v260, v261, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v423 = sub_100216754();
    v424 = sub_100216C54();
    v425 = os_log_type_enabled(v423, v424);
    v426 = v518;
    if (v425)
    {
      v427 = swift_slowAlloc();
      *v427 = 0;
      _os_log_impl(&_mh_execute_header, v423, v424, "stableInfo does not exist", v427, 2u);
    }

    sub_1000561D0();
    v428 = swift_allocError();
    *v429 = xmmword_10021DC20;
    *(v429 + 16) = 13;
    v535(0, 0, v428);
    v262, v430, v431, v432, v433, v434, v435, v436;
    sub_100002BF0(v205, v426, v437, v438, v439, v440, v441, v442);
    sub_100002BF0(v517, v219, v443, v444, v445, v446, v447, v448);

LABEL_47:
LABEL_20:

    return;
  }

  v263 = v254;
  v264 = sub_100216224();
  v514 = v265;

  v266 = [*&v253->_TtCs12_SwiftObject_opaque[v195] egoPeerStableInfoSig];
  if (!v266)
  {
    v528, v267, v268, v269, v270, v271, v272, v273, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v449 = sub_100216754();
    v450 = sub_100216C54();
    if (os_log_type_enabled(v449, v450))
    {
      v451 = swift_slowAlloc();
      *v451 = 0;
      _os_log_impl(&_mh_execute_header, v449, v450, "stableInfoSig does not exist", v451, 2u);
    }

    sub_1000561D0();
    v452 = swift_allocError();
    *v453 = xmmword_10021DC20;
    *(v453 + 16) = 13;
    v535(0, 0, v452);
    v262, v454, v455, v456, v457, v458, v459, v460;
    sub_100002BF0(v205, v518, v461, v462, v463, v464, v465, v466);
    sub_100002BF0(v517, v219, v467, v468, v469, v470, v471, v472);

    v479 = v264;
    v480 = v514;
    goto LABEL_54;
  }

  v523 = v205;
  v274 = v266;
  v275 = sub_100216224();
  v277 = v276;

  v278 = objc_allocWithZone(TPPeerStableInfo);
  v279 = v514;
  sub_100012558(v264, v514);
  sub_100012558(v275, v277);
  v280 = sub_100216204().super.isa;
  v281 = sub_100216204().super.isa;
  v282 = [v278 initWithData:v280 sig:v281];

  sub_100002BF0(v275, v277, v283, v284, v285, v286, v287, v288);
  sub_100002BF0(v264, v279, v289, v290, v291, v292, v293, v294);
  if (!v282)
  {
    v528, v295, v296, v297, v298, v299, v300, v301, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
    v481 = sub_100216754();
    v482 = sub_100216C54();
    if (os_log_type_enabled(v481, v482))
    {
      v483 = swift_slowAlloc();
      *v483 = 0;
      _os_log_impl(&_mh_execute_header, v481, v482, "cannot create TPPeerStableInfo", v483, 2u);
    }

    sub_1000561D0();
    v484 = swift_allocError();
    *v485 = xmmword_10021DC20;
    *(v485 + 16) = 13;
    v535(0, 0, v484);
    v519, v486, v487, v488, v489, v490, v491, v492;
    sub_100002BF0(v523, v518, v493, v494, v495, v496, v497, v498);
    sub_100002BF0(v517, v219, v499, v500, v501, v502, v503, v504);

    sub_100002BF0(v264, v514, v505, v506, v507, v508, v509, v510);
    v479 = v275;
    v480 = v277;
LABEL_54:
    sub_100002BF0(v479, v480, v473, v474, v475, v476, v477, v478);

    goto LABEL_20;
  }

  strcpy(v539, "signing-key ");
  BYTE5(v539[1]) = 0;
  HIWORD(v539[1]) = -5120;
  v541._countAndFlagsBits = v521;
  v541._object = v528;
  sub_100216A14(v541);
  v515 = v539[0];
  v513 = v539[1];
  v302 = v282;
  v303 = v534;
  v534 = v275;
  (v520)(v525, v303, v538);
  v304 = v537;
  v305 = *(v537 + 80);
  v520 = v264;
  v306 = (v305 + 88) & ~v305;
  v307 = &v524[v306 + 7];
  v524 = v219;
  v526 = v277;
  v512 = v233;
  v308 = v307 & 0xFFFFFFFFFFFFFFF8;
  v309 = ((v307 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v310 = swift_allocObject();
  v311 = v536;
  *(v310 + 16) = v535;
  *(v310 + 24) = v311;
  v312 = v519;
  *(v310 + 32) = v522;
  *(v310 + 40) = v312;
  *(v310 + 48) = v233;
  *(v310 + 56) = v302;
  v313 = v521;
  *(v310 + 64) = v529;
  *(v310 + 72) = v313;
  *(v310 + 80) = v528;
  (*(v304 + 32))(v310 + v306, v525, v538);
  v314 = (v310 + v308);
  v315 = v530;
  *v314 = v531;
  v314[1] = v315;
  v316 = (v310 + v309);
  v317 = v533;
  *v316 = v532;
  v316[1] = v317;
  *(v310 + ((v309 + 19) & 0xFFFFFFFFFFFFFFF8)) = v527;

  v318 = v522;
  v319 = v512;
  v320 = v302;

  v321 = v513;
  sub_10010B83C(v515, v513, sub_1001A95A0);
  v312, v322, v323, v324, v325, v326, v327, v328;
  sub_100002BF0(v523, v518, v329, v330, v331, v332, v333, v334);
  sub_100002BF0(v517, v524, v335, v336, v337, v338, v339, v340);

  sub_100002BF0(v520, v514, v341, v342, v343, v344, v345, v346);
  sub_100002BF0(v534, v526, v347, v348, v349, v350, v351, v352);
  v321, v353, v354, v355, v356, v357, v358, v359, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521;
  v310, v360, v361, v362, v363, v364, v365, v366;
}