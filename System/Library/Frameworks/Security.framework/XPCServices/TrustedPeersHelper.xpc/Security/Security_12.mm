uint64_t sub_100165334(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void), void *a8)
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
    _os_log_impl(&_mh_execute_header, v17, v15, "preapprovedJoin complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a7 = v56;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000068, 0x800000010023C630, v30, v31, v32, v33, v34, v35);
  return a7(a1, a2, v57, a4, a5);
}

void sub_100165594(void *a1, uint64_t (*a2)(void, void, void *, void, uint64_t), void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    swift_errorRetain();
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v21 = sub_100216994();
      v23 = v22;
      v24 = sub_100005FB0(v21, v22, aBlock);
      v23, v25, v26, v27, v28, v29, v30, v31, v71, v72, v73, v74, v76, v77, v78, a3, a1, aBlock[0];
      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "preapprovedJoin unable to fetch changes: %{public}s", v19, 0xCu);
      sub_100006128(v20, v32, v33, v34, v35, v36, v37, v38);
    }

    a2(0, 0, _swiftEmptyArrayStorage, 0, a1);
  }

  else
  {
    v79 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v44 = swift_allocObject();
    *(v44 + 16) = a4;
    *(v44 + 24) = a5;
    *(v44 + 32) = a6;
    *(v44 + 40) = a7;
    *(v44 + 48) = a8;
    *(v44 + 56) = a9;
    *(v44 + 64) = a10;
    *(v44 + 72) = a11;
    *(v44 + 80) = a12;
    *(v44 + 88) = a13;
    *(v44 + 96) = a14 & 1;
    *(v44 + 104) = a2;
    *(v44 + 112) = a3;
    v45 = swift_allocObject();
    *v45->endpoint = sub_1001A9C0C;
    *v45->containerMap = v44;
    aBlock[4] = sub_1001ACCC0;
    v82 = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283030;
    v46 = _Block_copy(aBlock);
    v47 = v82;

    v48 = a4;

    v47, v49, v50, v51, v52, v53, v54, v55;
    [v79 performBlockAndWait:v46];
    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v44, v57, v58, v59, v60, v61, v62, v63;
    v45, v64, v65, v66, v67, v68, v69, v70;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100165918(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11, void (*a12)(void, void, void *, void, uint64_t), uint64_t a13)
{
  v21 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v347[0] = 0;
  v22 = [v21 peerCountWithError:v347];
  v23 = v347[0];
  if (v347[0])
  {
    swift_willThrow();
    v24 = qword_100297520;
    v25 = v23;
    if (v24 != -1)
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
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v27;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "preapprovedJoin: error getting peerCount: %{public}@", v30, 0xCu);
      sub_1000114D4(v31, &qword_10029D580, &unk_10021CCC0);
    }

    v34 = v27;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v23);

    return;
  }

  v345 = a4;
  v344 = a2;
  if (v22)
  {
    v35 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v36 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
    if (v36)
    {
      v37 = v36;
      v38 = sub_100216974();
      v40 = v39;

      v41 = [*&a1[v35] egoPeerPermanentInfo];
      if (v41)
      {
        v49 = v41;
        v50 = sub_100216224();
        v52 = v51;

        v53 = [*&a1[v35] egoPeerPermanentInfoSig];
        if (v53)
        {
          v60 = v53;
          v340 = sub_100216224();
          v341 = v61;

          v62 = [*&a1[v35] egoPeerStableInfo];
          if (v62)
          {
            v342 = a3;
            v69 = v62;
            v70 = sub_100216224();
            v72 = v71;

            v73 = [*&a1[v35] egoPeerStableInfoSig];
            if (v73)
            {
              v337 = v70;
              v80 = v73;
              v338 = sub_100216224();
              v332 = v81;

              v82 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v50, v52);
              v339 = v52;
              sub_100012558(v340, v341);
              v83 = sub_100216964();
              v40, v84, v85, v86, v87, v88, v89, v90, v290, v294, v298, v302, v306, v310, v315, v321, v325, v332;
              isa = sub_100216204().super.isa;
              v92 = sub_100216204().super.isa;
              v326 = v82;
              v93 = [objc_opt_self() permanentInfoWithPeerID:v83 data:isa sig:v92 keyFactory:v82];

              sub_100002BF0(v340, v341, v94, v95, v96, v97, v98, v99);
              sub_100002BF0(v50, v52, v100, v101, v102, v103, v104, v105);

              if (v93)
              {
                v317 = v50;
                v113 = objc_allocWithZone(TPPeerStableInfo);
                sub_100012558(v337, v72);
                v114 = v333;
                sub_100012558(v338, v333);
                v115 = sub_100216204().super.isa;
                v116 = sub_100216204().super.isa;
                v117 = [v113 initWithData:v115 sig:v116];

                sub_100002BF0(v338, v333, v118, v119, v120, v121, v122, v123);
                sub_100002BF0(v337, v72, v124, v125, v126, v127, v128, v129);
                if (v117)
                {
                  v312 = v117;
                  v137 = [v93 machineID];
                  v138 = sub_100216974();
                  v140 = v139;

                  LOBYTE(v137) = sub_1001E537C(v138, v140);
                  v140, v141, v142, v143, v144, v145, v146, v147, v291, v295, v299, v303, v307, v312, v317, v93, v326, v333;
                  if ((v137 & 1) == 0)
                  {
                    v40, v148, v149, v150, v151, v152, v153, v154, v292, v296, v300, v304, v308, v313, v318, v322, v327, v334;
                    if (qword_100297520 != -1)
                    {
                      swift_once();
                    }

                    v235 = sub_100216774();
                    sub_100002648(v235, qword_10029D160);
                    v236 = v93;
                    v237 = sub_100216754();
                    v238 = sub_100216C54();

                    if (os_log_type_enabled(v237, v238))
                    {
                      v239 = swift_slowAlloc();
                      v240 = swift_slowAlloc();
                      v347[0] = v240;
                      *v239 = 136446210;
                      v241 = [v236 machineID];
                      v242 = sub_100216974();
                      v244 = v243;

                      v245 = sub_100005FB0(v242, v244, v347);
                      v246 = v339;
                      v244, v247, v248, v249, v250, v251, v252, v253, v293, v297, v301, v305, v309, v314, v320, v324, v330, v336;
                      *(v239 + 4) = v245;
                      _os_log_impl(&_mh_execute_header, v237, v238, "preapprovedJoin: self machineID %{public}s (me) not on list", v239, 0xCu);
                      sub_100006128(v240, v254, v255, v256, v257, v258, v259, v260);
                    }

                    else
                    {

                      v246 = v52;
                    }

                    v261 = objc_allocWithZone(SecTapToRadar);
                    v262 = sub_100216964();
                    v263 = sub_100216964();
                    v264 = sub_100216964();
                    v265 = [v261 initTapToRadar:v262 description:v263 radar:v264];

                    [v265 trigger];
                    v266 = [v236 machineID];
                    v267 = sub_100216974();
                    v269 = v268;

                    sub_1000561D0();
                    v270 = swift_allocError();
                    *v271 = v267;
                    *(v271 + 8) = v269;
                    *(v271 + 16) = 2;
                    a12(0, 0, _swiftEmptyArrayStorage, 0, v270);

                    sub_100002BF0(v338, v336, v272, v273, v274, v275, v276, v277);
                    sub_100002BF0(v337, v72, v278, v279, v280, v281, v282, v283);
                    sub_100002BF0(v340, v341, v284, v285, v286, v287, v288, v289);
                    v219 = v320;
                    v220 = v246;
                    goto LABEL_40;
                  }

                  v155 = swift_allocObject();
                  *(v155 + 16) = a12;
                  *(v155 + 24) = a13;
                  *(v155 + 32) = a1;
                  *(v155 + 40) = v38;
                  *(v155 + 48) = v40;
                  *(v155 + 56) = v93;
                  *(v155 + 64) = v313;
                  *(v155 + 72) = v345;
                  v346 = v38;
                  *(v155 + 80) = v344;
                  *(v155 + 88) = v342;
                  *(v155 + 96) = v318;
                  *(v155 + 104) = v52;
                  *(v155 + 112) = v340;
                  *(v155 + 120) = v341;
                  *(v155 + 128) = v337;
                  *(v155 + 136) = v72;
                  *(v155 + 144) = v338;
                  *(v155 + 152) = v114;
                  strcpy(v347, "signing-key ");
                  BYTE5(v347[1]) = 0;
                  HIWORD(v347[1]) = -5120;

                  sub_100012558(v318, v52);
                  sub_100012558(v340, v341);
                  sub_100012558(v337, v72);
                  sub_100012558(v338, v114);

                  v156 = a1;
                  v157 = v322;
                  v158 = v313;
                  v348._countAndFlagsBits = v346;
                  v348._object = v40;
                  sub_100216A14(v348);
                  v159 = v347[0];
                  v160 = v347[1];

                  sub_100198E8C(v159, v160, sub_1001A9C54, v155, v346, v40);

                  v160, v161, v162, v163, v164, v165, v166, v167, v292, v296, v300, v304, v308, v313, v318, v322, v327, v334;

                  swift_bridgeObjectRelease_n();
                  sub_100002BF0(v338, v114, v168, v169, v170, v171, v172, v173);
                  v180 = v337;
                  v181 = v72;
                }

                else
                {
                  v40, v130, v131, v132, v133, v134, v135, v136, v291, v295, v299, v303, v307, v311, v317, v93, v326, v333;
                  sub_1000561D0();
                  v221 = swift_allocError();
                  *v222 = xmmword_10021DC20;
                  *(v222 + 16) = 13;
                  a12(0, 0, _swiftEmptyArrayStorage, 0, v221);

                  sub_100002BF0(v338, v114, v223, v224, v225, v226, v227, v228);
                  v180 = v337;
                  v181 = v72;
                }

                sub_100002BF0(v180, v181, v174, v175, v176, v177, v178, v179);
                sub_100002BF0(v340, v341, v229, v230, v231, v232, v233, v234);
                v219 = v319;
                v220 = v52;
              }

              else
              {
                v40, v106, v107, v108, v109, v110, v111, v112, v291, v295, v299, v303, v307, v311, v316, 0, v326, v333;
                sub_1000561D0();
                v193 = swift_allocError();
                *v194 = xmmword_10021DA80;
                *(v194 + 16) = 13;
                a12(0, 0, _swiftEmptyArrayStorage, 0, v193);

                sub_100002BF0(v338, v335, v195, v196, v197, v198, v199, v200);
                sub_100002BF0(v337, v72, v201, v202, v203, v204, v205, v206);
                sub_100002BF0(v340, v341, v207, v208, v209, v210, v211, v212);
                v219 = v50;
                v220 = v52;
              }

LABEL_40:
              sub_100002BF0(v219, v220, v213, v214, v215, v216, v217, v218);
              return;
            }

            sub_100002BF0(v70, v72, v74, v75, v76, v77, v78, v79);
          }

          sub_100002BF0(v340, v341, v63, v64, v65, v66, v67, v68);
        }

        sub_100002BF0(v50, v52, v54, v55, v56, v57, v58, v59);
      }

      v40, v42, v43, v44, v45, v46, v47, v48, v290, v294, v298, v302, v306, v310, v315, v321, v325, v331;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v187 = sub_100216774();
    sub_100002648(v187, qword_10029D160);
    v188 = sub_100216754();
    v189 = sub_100216C54();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "preapprovedJoin: no prepared identity", v190, 2u);
    }

    sub_1000561D0();
    v191 = swift_allocError();
    *v192 = xmmword_10021DA90;
    *(v192 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v191);
  }

  else
  {
    v343 = a3;
    v182 = a4;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v183 = sub_100216774();
    sub_100002648(v183, qword_10029D160);
    v184 = sub_100216754();
    v185 = sub_100216C54();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&_mh_execute_header, v184, v185, "preapprovedJoin but no existing peers, attempting establish", v186, 2u);
      v182 = a4;
    }

    sub_1001296AC(v344, v343, v182, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13);
  }
}

void sub_100166644(char *a1, void *a2, void (*a3)(void, void, void *, void, void *), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20)
{
  if (a1)
  {
    v22 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
    v24 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v122 = a1;
    v25 = [objc_msgSend(v22 "publicKey")];
    swift_unknownObjectRelease();
    v26 = sub_100216224();
    v28 = v27;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v26, v28, v30, v31, v32, v33, v34, v35);
    aBlock[0] = 0;
    v36 = [v24 hasPotentiallyTrustedPeerPreapprovingKey:isa error:aBlock];

    v37 = aBlock[0];
    if (aBlock[0])
    {
      swift_willThrow();
      v38 = qword_100297520;
      v39 = v37;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = sub_100216774();
      sub_100002648(v40, qword_10029D160);
      v41 = v39;
      v42 = sub_100216754();
      v43 = sub_100216C54();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543362;
        v46 = v41;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&_mh_execute_header, v42, v43, "preapprovedJoin: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v44, 0xCu);
        sub_1000114D4(v45, &qword_10029D580, &unk_10021CCC0);
      }

      v48 = v41;
      a3(0, 0, _swiftEmptyArrayStorage, 0, v37);
    }

    else
    {
      if (v36)
      {
        v114 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v73 = swift_allocObject();
        *(v73 + 16) = a5;
        *(v73 + 24) = a6;
        *(v73 + 32) = a7;
        *(v73 + 40) = a8;
        *(v73 + 48) = a9;
        *(v73 + 56) = a10;
        *(v73 + 64) = v122;
        *(v73 + 72) = a3;
        *(v73 + 80) = a4;
        *(v73 + 88) = a11;
        *(v73 + 96) = a12;
        *(v73 + 104) = a13;
        *(v73 + 112) = a14;
        *(v73 + 120) = a15;
        *(v73 + 128) = a16;
        *(v73 + 136) = a17;
        *(v73 + 144) = a18;
        *(v73 + 152) = a19;
        *(v73 + 160) = a20;
        v74 = swift_allocObject();
        *v74->endpoint = sub_1001A9CA0;
        *v74->containerMap = v73;
        aBlock[4] = sub_1001ACCC0;
        v126 = v74;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100109050;
        aBlock[3] = &unk_1002830D0;
        v75 = _Block_copy(aBlock);
        v76 = v126;

        v77 = v122;
        v78 = a5;

        v79 = a8;
        v80 = a9;
        sub_100012558(a13, a14);
        sub_100012558(a15, a16);
        sub_100012558(a17, a18);
        sub_100012558(a19, a20);

        v76, v81, v82, v83, v84, v85, v86, v87;
        [v114 performBlockAndWait:v75];

        _Block_release(v75);
        LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();
        v73, v88, v89, v90, v91, v92, v93, v94;
        v74, v95, v96, v97, v98, v99, v100, v101;
        if ((v77 & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v102 = sub_100216774();
      sub_100002648(v102, qword_10029D160);
      v103 = sub_100216754();
      v104 = sub_100216C54();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "preapprovedJoin: no peers preapprove our key", v105, 2u);
      }

      sub_1000561D0();
      v106 = swift_allocError();
      *v107 = xmmword_1002260D0;
      *(v107 + 16) = 13;
      a3(0, 0, _swiftEmptyArrayStorage, 0, v106);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v50 = sub_100216774();
    sub_100002648(v50, qword_10029D160);
    swift_errorRetain();
    v51 = sub_100216754();
    v52 = sub_100216C74();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136446210;
      v127 = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v55 = sub_100216994();
      v57 = v56;
      v58 = sub_100005FB0(v55, v56, aBlock);
      v57, v59, v60, v61, v62, v63, v64, v65, v108, v109, v110, v111, v112, v113, v115, v116, v117, v118;
      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "preapprovedJoin: Don't have my own keys: can't join: %{public}s", v53, 0xCu);
      sub_100006128(v54, v66, v67, v68, v69, v70, v71, v72);
    }

    a3(0, 0, _swiftEmptyArrayStorage, 0, a2);
  }
}

uint64_t sub_100166DB0(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, _TtC18TrustedPeersHelper6Client *a5, __CFString *a6, _TtC18TrustedPeersHelper6Client *a7, void (*a8)(void, void, void *, void, uint64_t), uint64_t a9, unint64_t a10, unint64_t a11, _TtC18TrustedPeersHelper6Client *a12, const char *a13, _TtC18TrustedPeersHelper6Client *a14, char *a15, _TtC18TrustedPeersHelper6Client *a16, void *a17, _TtC18TrustedPeersHelper6Client *a18, const char *a19)
{
  v619 = a5;
  v620 = a6;
  v622 = a3;
  v623 = a4;
  v621 = a1;
  v617 = a8;
  v618 = a9;
  v605 = type metadata accessor for JoinWithVoucherRequest(0);
  __chkstk_darwin(v605, v21);
  v606 = &v588 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SignedVoucher(0);
  v607 = *(v23 - 8);
  __chkstk_darwin(v23 - 8, v24);
  v616 = &v588 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v28 = __chkstk_darwin(v26 - 8, v27);
  v600 = &v588 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v599 = &v588 - v31;
  v602 = type metadata accessor for SignedPeerDynamicInfo(0);
  v601 = *(v602 - 8);
  v33 = __chkstk_darwin(v602, v32);
  v598 = (&v588 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33, v35);
  v597 = (&v588 - v36);
  v37 = type metadata accessor for Bottle(0);
  v39 = __chkstk_darwin(v37 - 8, v38);
  v609 = &v588 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  v610 = &v588 - v42;
  v43 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v43 - 8, v44);
  v614 = (&v588 - v45);
  v46 = type metadata accessor for SignedPeerStableInfo(0);
  v612 = *(v46 - 8);
  v613 = v46;
  __chkstk_darwin(v46, v47);
  v49 = (&v588 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v615 = type metadata accessor for Peer(0);
  v603 = *(v615 - 8);
  v50 = *(v603 + 64);
  v52 = __chkstk_darwin(v615, v51);
  v604 = &v588 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52, v53);
  v608 = &v588 - v55;
  v57 = __chkstk_darwin(v54, v56);
  v59 = &v588 - v58;
  v61 = __chkstk_darwin(v57, v60);
  v63 = &v588 - v62;
  v65 = __chkstk_darwin(v61, v64);
  v67 = &v588 - v66;
  v69 = __chkstk_darwin(v65, v68);
  v71 = &v588 - v70;
  __chkstk_darwin(v69, v72);
  v74 = &v588 - v73;
  v611 = a2;
  v75 = sub_100156564(v71, a2, v622, v623, v619, 0, 0, v620, _swiftEmptyArrayStorage, a7);
  v619 = a7;
  v594 = v67;
  v593 = v63;
  v595 = v59;
  v592 = v50;
  v620 = v75;
  sub_1001AC038(v71, v74, type metadata accessor for Peer);
  v76 = *(v615 + 32);
  v596 = v74;
  v77 = v614;
  sub_100019C6C(&v74[v76], v614, &qword_1002985A8, &unk_100226650);
  v78 = v613;
  v79 = *v612[1].endpoint;
  if (v79(v77, 1, v613) == 1)
  {
    *v49 = xmmword_10021D470;
    v49[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v80 = v79(v77, 1, v78);
    v81 = v619;
    if (v80 != 1)
    {
      sub_1000114D4(v77, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v77, v49, type metadata accessor for SignedPeerStableInfo);
    v81 = v619;
  }

  v82 = objc_allocWithZone(TPPeerStableInfo);
  isa = sub_100216204().super.isa;
  v84 = sub_100216204().super.isa;
  v85 = [v82 initWithData:isa sig:v84];

  sub_1001AC1E4(v49, type metadata accessor for SignedPeerStableInfo);
  if (v85)
  {
    v86 = [v623 epoch];
    if ((v86 & 0x8000000000000000) != 0)
    {
      __break(1u);
      swift_once();
      v89 = sub_100216774();
      sub_100002648(v89, qword_10029D160);
      swift_errorRetain();
      v90 = sub_100216754();
      v91 = sub_100216C74();

      v92 = os_log_type_enabled(v90, v91);
      v93 = v596;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v624 = 0;
        v625 = v95;
        *v94 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v96 = sub_100216994();
        v98 = v97;
        v99 = sub_100005FB0(v96, v97, &v625);
        v98, v100, v101, v102, v103, v104, v105, v106, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v94 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "Unable to process keys before joining: %{public}s", v94, 0xCu);
        sub_100006128(v95, v107, v108, v109, v110, v111, v112, v113);
      }

      swift_errorRetain();
      v617(0, 0, _swiftEmptyArrayStorage, 0, 0);

      return sub_1001AC1E4(v93, type metadata accessor for Peer);
    }

    else
    {
      sub_1001551F8(a10, a11, v81, v620, v86);
      v87 = v622;
      v88 = v611;
      v124 = v123;
      v126 = v125;
      v127 = v609;
      sub_10017B39C(v611, v622, v609);
      v591 = 0;
      sub_1001AC038(v127, v610, type metadata accessor for Bottle);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v609 = a15;
      v128 = sub_100216774();
      v129 = sub_100002648(v128, qword_10029D160);

      v619 = v129;
      v130 = sub_100216754();
      v131 = sub_100216C54();
      v87, v132, v133, v134, v135, v136, v137, v138, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
      v139 = os_log_type_enabled(v130, v131);
      v612 = v126;
      v613 = v85;
      v589 = a14;
      if (v139)
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v625 = v141;
        *v140 = 136446210;
        *(v140 + 4) = sub_100005FB0(v88, v87, &v625);
        _os_log_impl(&_mh_execute_header, v130, v131, "Beginning preapprovedJoin for peer %{public}s", v140, 0xCu);
        sub_100006128(v141, v142, v143, v144, v145, v146, v147, v148);
      }

      v590 = a17;
      sub_100012558(a12, a13);
      v149 = sub_100216754();
      v150 = sub_100216C54();
      sub_100002BF0(a12, a13, v151, v152, v153, v154, v155, v156);
      v157 = os_log_type_enabled(v149, v150);
      v614 = v124;
      v158 = v609;
      if (v157)
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v625 = v160;
        *v159 = 136446210;
        v161 = sub_100216214(0);
        v163 = v162;
        v164 = sub_100005FB0(v161, v162, &v625);
        v163, v165, v166, v167, v168, v169, v170, v171, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v159 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v149, v150, "preapprovedJoin permanentInfo: %{public}s", v159, 0xCu);
        sub_100006128(v160, v172, v173, v174, v175, v176, v177, v178);
      }

      v179 = v589;
      sub_100012558(v589, v158);
      v180 = sub_100216754();
      v181 = sub_100216C54();
      sub_100002BF0(v179, v158, v182, v183, v184, v185, v186, v187);
      if (os_log_type_enabled(v180, v181))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v625 = v189;
        *v188 = 136446210;
        v190 = sub_100216214(0);
        v192 = v191;
        v193 = sub_100005FB0(v190, v191, &v625);
        v192, v194, v195, v196, v197, v198, v199, v200, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v188 + 4) = v193;
        _os_log_impl(&_mh_execute_header, v180, v181, "preapprovedJoin permanentInfoSig: %{public}s", v188, 0xCu);
        sub_100006128(v189, v201, v202, v203, v204, v205, v206, v207);
      }

      v208 = v590;
      sub_100012558(a16, v590);
      v209 = sub_100216754();
      v210 = sub_100216C54();
      sub_100002BF0(a16, v208, v211, v212, v213, v214, v215, v216);
      if (os_log_type_enabled(v209, v210))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v625 = v218;
        *v217 = 136446210;
        v219 = sub_100216214(0);
        v221 = v220;
        v222 = sub_100005FB0(v219, v220, &v625);
        v221, v223, v224, v225, v226, v227, v228, v229, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v217 + 4) = v222;
        _os_log_impl(&_mh_execute_header, v209, v210, "preapprovedJoin stableInfo: %{public}s", v217, 0xCu);
        sub_100006128(v218, v230, v231, v232, v233, v234, v235, v236);
      }

      v237 = v595;
      sub_100012558(a18, a19);
      v238 = sub_100216754();
      v239 = sub_100216C54();
      sub_100002BF0(a18, a19, v240, v241, v242, v243, v244, v245);
      if (os_log_type_enabled(v238, v239))
      {
        v246 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v625 = v247;
        *v246 = 136446210;
        v248 = sub_100216214(0);
        v250 = v249;
        v251 = sub_100005FB0(v248, v249, &v625);
        v250, v252, v253, v254, v255, v256, v257, v258, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v246 + 4) = v251;
        _os_log_impl(&_mh_execute_header, v238, v239, "preapprovedJoin stableInfoSig: %{public}s", v246, 0xCu);
        sub_100006128(v247, v259, v260, v261, v262, v263, v264, v265);
      }

      v266 = v614;
      v267 = v607;
      v268 = v608;
      v269 = v594;
      v270 = v596;
      sub_1001AC0A0(v596, v594, type metadata accessor for Peer);
      v271 = sub_100216754();
      v272 = sub_100216C54();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        v625 = v274;
        *v273 = 136446210;
        v275 = v599;
        sub_100019C6C(v269 + *(v615 + 36), v599, &unk_10029D760, &qword_10021E810);
        v276 = v601[6];
        v277 = v602;
        if ((v276)(v275, 1, v602) == 1)
        {
          v278 = v597;
          *v597 = xmmword_10021D470;
          *(v278 + 16) = xmmword_10021D470;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if ((v276)(v275, 1, v277) != 1)
          {
            sub_1000114D4(v275, &unk_10029D760, &qword_10021E810);
          }
        }

        else
        {
          v278 = v597;
          sub_1001AC038(v275, v597, type metadata accessor for SignedPeerDynamicInfo);
        }

        v279 = *v278;
        v280 = *(v278 + 8);
        sub_100012558(*v278, v280);
        sub_1001AC1E4(v278, type metadata accessor for SignedPeerDynamicInfo);
        v281 = sub_100216214(0);
        v283 = v282;
        sub_100002BF0(v279, v280, v284, v285, v286, v287, v288, v289);
        sub_1001AC1E4(v594, type metadata accessor for Peer);
        v290 = sub_100005FB0(v281, v283, &v625);
        v283, v291, v292, v293, v294, v295, v296, v297, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v273 + 4) = v290;
        _os_log_impl(&_mh_execute_header, v271, v272, "preapprovedJoin dynamicInfo: %{public}s", v273, 0xCu);
        sub_100006128(v274, v298, v299, v300, v301, v302, v303, v304);

        v267 = v607;
        v268 = v608;
        v237 = v595;
        v270 = v596;
      }

      else
      {

        sub_1001AC1E4(v269, type metadata accessor for Peer);
      }

      v305 = v593;
      sub_1001AC0A0(v270, v593, type metadata accessor for Peer);
      v306 = sub_100216754();
      v307 = sub_100216C54();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v625 = v309;
        *v308 = 136446210;
        v310 = v600;
        sub_100019C6C(v305 + *(v615 + 36), v600, &unk_10029D760, &qword_10021E810);
        v311 = v601[6];
        v312 = v602;
        if ((v311)(v310, 1, v602) == 1)
        {
          v313 = v598;
          *v598 = xmmword_10021D470;
          v313[1] = xmmword_10021D470;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if ((v311)(v310, 1, v312) != 1)
          {
            sub_1000114D4(v310, &unk_10029D760, &qword_10021E810);
          }
        }

        else
        {
          v313 = v598;
          sub_1001AC038(v310, v598, type metadata accessor for SignedPeerDynamicInfo);
        }

        v314 = *(v313 + 2);
        v315 = *(v313 + 3);
        sub_100012558(v314, v315);
        sub_1001AC1E4(v313, type metadata accessor for SignedPeerDynamicInfo);
        v316 = sub_100216214(0);
        v318 = v317;
        sub_100002BF0(v314, v315, v319, v320, v321, v322, v323, v324);
        sub_1001AC1E4(v593, type metadata accessor for Peer);
        v325 = sub_100005FB0(v316, v318, &v625);
        v318, v326, v327, v328, v329, v330, v331, v332, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v308 + 4) = v325;
        _os_log_impl(&_mh_execute_header, v306, v307, "preapprovedJoin dynamicInfoSig: %{public}s", v308, 0xCu);
        sub_100006128(v309, v333, v334, v335, v336, v337, v338, v339);

        v267 = v607;
        v268 = v608;
        v237 = v595;
        v270 = v596;
      }

      else
      {

        sub_1001AC1E4(v305, type metadata accessor for Peer);
      }

      sub_1001AC0A0(v270, v237, type metadata accessor for Peer);
      v340 = sub_100216754();
      v341 = sub_100216C54();
      if (os_log_type_enabled(v340, v341))
      {
        LODWORD(v602) = v341;
        v342 = swift_slowAlloc();
        v601 = swift_slowAlloc();
        v625 = v601;
        v609 = v342;
        *v342 = 136446210;
        v348 = v237[2];
        v349 = *(v348 + 16);
        v350 = _swiftEmptyArrayStorage;
        v351 = v616;
        if (v349)
        {
          v624 = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v349, 0, v343, v344, v345, v346, v347);
          v350 = v624;
          v352 = v348 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
          v353 = v267[9];
          do
          {
            sub_1001AC0A0(v352, v351, type metadata accessor for SignedVoucher);
            v354 = sub_100216214(0);
            v356 = v355;
            sub_1001AC1E4(v351, type metadata accessor for SignedVoucher);
            v624 = v350;
            v363 = *v350->endpoint;
            v362 = *v350->containerMap;
            if (v363 >= v362 >> 1)
            {
              sub_1001877A4((v362 > 1), v363 + 1, 1, v357, v358, v359, v360, v361);
              v350 = v624;
            }

            *v350->endpoint = v363 + 1;
            v364 = v350 + 16 * v363;
            *(v364 + 4) = v354;
            *(v364 + 5) = v356;
            v352 += v353;
            --v349;
            v351 = v616;
          }

          while (v349);
          v266 = v614;
          v267 = v607;
          v268 = v608;
          v237 = v595;
        }

        v365 = sub_100216B34();
        v367 = v366;
        v350, v366, v368, v369, v370, v371, v372, v373, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        sub_1001AC1E4(v237, type metadata accessor for Peer);
        v374 = sub_100005FB0(v365, v367, &v625);
        v367, v375, v376, v377, v378, v379, v380, v381, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        v382 = v609;
        *(v609 + 4) = v374;
        _os_log_impl(&_mh_execute_header, v340, v602, "preapprovedJoin vouchers: %{public}s", v382, 0xCu);
        sub_100006128(v601, v383, v384, v385, v386, v387, v388, v389);

        v270 = v596;
      }

      else
      {

        sub_1001AC1E4(v237, type metadata accessor for Peer);
      }

      sub_1001AC0A0(v270, v268, type metadata accessor for Peer);
      v390 = sub_100216754();
      v391 = sub_100216C54();
      if (os_log_type_enabled(v390, v391))
      {
        LODWORD(v609) = v391;
        v392 = swift_slowAlloc();
        v607 = swift_slowAlloc();
        v625 = v607;
        *v392 = 136446210;
        v398 = *(v268 + 16);
        v399 = *(v398 + 16);
        v400 = _swiftEmptyArrayStorage;
        if (v399)
        {
          v602 = v392;
          v624 = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v399, 0, v393, v394, v395, v396, v397);
          v400 = v624;
          v401 = v398 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
          v402 = v267[9];
          do
          {
            v403 = v616;
            sub_1001AC0A0(v401, v616, type metadata accessor for SignedVoucher);
            v404 = sub_100216214(0);
            v406 = v405;
            sub_1001AC1E4(v403, type metadata accessor for SignedVoucher);
            v624 = v400;
            v413 = *v400->endpoint;
            v412 = *v400->containerMap;
            if (v413 >= v412 >> 1)
            {
              sub_1001877A4((v412 > 1), v413 + 1, 1, v407, v408, v409, v410, v411);
              v400 = v624;
            }

            *v400->endpoint = v413 + 1;
            v414 = v400 + 16 * v413;
            *(v414 + 4) = v404;
            *(v414 + 5) = v406;
            v401 += v402;
            --v399;
          }

          while (v399);
          v415 = v596;
          v266 = v614;
          v268 = v608;
          v392 = v602;
        }

        else
        {
          v415 = v270;
        }

        v416 = sub_100216B34();
        v418 = v417;
        v400, v417, v419, v420, v421, v422, v423, v424, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        sub_1001AC1E4(v268, type metadata accessor for Peer);
        v425 = sub_100005FB0(v416, v418, &v625);
        v418, v426, v427, v428, v429, v430, v431, v432, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        *(v392 + 4) = v425;
        _os_log_impl(&_mh_execute_header, v390, v609, "preapprovedJoin voucher signatures: %{public}s", v392, 0xCu);
        sub_100006128(v607, v433, v434, v435, v436, v437, v438, v439);

        v270 = v415;
      }

      else
      {

        sub_1001AC1E4(v268, type metadata accessor for Peer);
      }

      v440 = sub_100216754();
      v441 = sub_100216C54();
      if (os_log_type_enabled(v440, v441))
      {
        v442 = swift_slowAlloc();
        *v442 = 134217984;
        *(v442 + 4) = *v266->endpoint;
        v266, v443, v444, v445, v446, v447, v448, v449, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        _os_log_impl(&_mh_execute_header, v440, v441, "preapprovedJoin: uploading %ld tlk shares", v442, 0xCu);
      }

      else
      {

        v266, v450, v451, v452, v453, v454, v455, v456, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
      }

      sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
      v457 = v591;
      v458 = sub_100216624();
      if (v457)
      {
        swift_errorRetain();
        v460 = sub_100216754();
        v461 = sub_100216C54();

        v462 = v270;
        if (os_log_type_enabled(v460, v461))
        {
          v463 = swift_slowAlloc();
          v464 = swift_slowAlloc();
          v624 = v457;
          v625 = v464;
          *v463 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v465 = sub_100216994();
          v467 = v466;
          v468 = sub_100005FB0(v465, v466, &v625);
          v467, v469, v470, v471, v472, v473, v474, v475, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
          *(v463 + 4) = v468;
          _os_log_impl(&_mh_execute_header, v460, v461, "preapprovedJoin unable to encode peer: %{public}s", v463, 0xCu);
          sub_100006128(v464, v476, v477, v478, v479, v480, v481, v482);
        }

        else
        {
        }
      }

      else
      {
        v462 = v270;
        v483 = v458;
        v484 = v459;
        v485 = sub_100216214(0);
        v487 = v486;
        sub_100002BF0(v483, v484, v488, v489, v490, v491, v492, v493);

        v494 = sub_100216754();
        v495 = sub_100216C54();
        v487, v496, v497, v498, v499, v500, v501, v502, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        if (os_log_type_enabled(v494, v495))
        {
          v510 = swift_slowAlloc();
          v511 = swift_slowAlloc();
          v625 = v511;
          *v510 = 136446210;
          v512 = sub_100005FB0(v485, v487, &v625);
          v487, v513, v514, v515, v516, v517, v518, v519, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
          *(v510 + 4) = v512;
          _os_log_impl(&_mh_execute_header, v494, v495, "preapprovedJoin peer: %{public}s", v510, 0xCu);
          sub_100006128(v511, v520, v521, v522, v523, v524, v525, v526);
        }

        else
        {
          v487, v503, v504, v505, v506, v507, v508, v509, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
        }
      }

      v527 = v606;
      v528 = v621;
      v529 = v610;
      v530 = [*(v621 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
      if (v530)
      {
        v532 = v530;
        v533 = sub_100216974();
        v535 = v534;
      }

      else
      {
        v533 = 0;
        v535 = 0xE000000000000000;
      }

      __chkstk_darwin(v530, v531);
      *(&v588 - 8) = v533;
      *(&v588 - 7) = v535;
      *(&v588 - 6) = v462;
      *(&v588 - 5) = v529;
      *(&v588 - 4) = v266;
      v536 = v266;
      v537 = v612;
      *(&v588 - 3) = v612;
      v587 = v528;
      sub_1001A13C4(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);
      sub_100216654();
      v537, v538, v539, v540, v541, v542, v543, v544, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
      v536, v545, v546, v547, v548, v549, v550, v551, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
      v535, v552, v553, v554, v555, v556, v557, v558, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597;
      v559 = *(v528 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
      v621 = *(v528 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
      v619 = sub_100006484((v528 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v621);
      v560 = v604;
      sub_1001AC0A0(v462, v604, type metadata accessor for Peer);
      v561 = (*(v603 + 80) + 24) & ~*(v603 + 80);
      v562 = (v592 + v561 + 7) & 0xFFFFFFFFFFFFFFF8;
      v563 = v527;
      v564 = v528;
      v565 = (v562 + 15) & 0xFFFFFFFFFFFFFFF8;
      v566 = (v565 + 15) & 0xFFFFFFFFFFFFFFF8;
      v567 = (v566 + 23) & 0xFFFFFFFFFFFFFFF8;
      v568 = swift_allocObject();
      *v568->endpoint = v564;
      sub_1001AC038(v560, &v568->_TtCs12_SwiftObject_opaque[v561], type metadata accessor for Peer);
      v569 = v622;
      v570 = v623;
      *&v568->_TtCs12_SwiftObject_opaque[v562] = v623;
      v571 = v613;
      *&v568->_TtCs12_SwiftObject_opaque[v565] = v613;
      v572 = &v568->_TtCs12_SwiftObject_opaque[v566];
      v573 = v618;
      *v572 = v617;
      *(v572 + 1) = v573;
      v574 = &v568->_TtCs12_SwiftObject_opaque[v567];
      *v574 = v611;
      *(v574 + 1) = v569;
      v575 = *(v559 + 16);
      v576 = *(v575 + 24);

      v577 = v564;
      v578 = v570;
      v579 = v571;

      v576(v563, sub_1001A9D18, v568, v621, v575);

      v568, v580, v581, v582, v583, v584, v585, v586;
      sub_1001AC1E4(v563, type metadata accessor for JoinWithVoucherRequest);
      sub_1001AC1E4(v610, type metadata accessor for Bottle);
      return sub_1001AC1E4(v596, type metadata accessor for Peer);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v115 = sub_100216774();
    sub_100002648(v115, qword_10029D160);
    v116 = sub_100216754();
    v117 = sub_100216C54();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v596;
    if (v118)
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "Unable to create new peer stable info for joining", v120, 2u);
    }

    sub_1000561D0();
    v121 = swift_allocError();
    *v122 = xmmword_10021DC20;
    *(v122 + 16) = 13;
    v617(0, 0, _swiftEmptyArrayStorage, 0, v121);

    return sub_1001AC1E4(v119, type metadata accessor for Peer);
  }
}

uint64_t sub_100168E70(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v88 = a8;
  v86 = a6;
  v87 = a7;
  v85 = a5;
  v82 = a4;
  v81 = a3;
  v80 = a2;
  v9 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v9 - 8, v10);
  v93 = &v80 - v11;
  v12 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12, v13);
  v90 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v80 - v17;
  v84 = type metadata accessor for Bottle(0);
  v83 = *(v84 - 1);
  __chkstk_darwin(v84, v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v80 - v24;
  v26 = type metadata accessor for Peer(0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a1 + v31);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v33 = sub_1000C12E8(v33);
    *(a1 + v31) = v33;
  }

  swift_beginAccess();
  v34 = *v33->containerMap;
  v35 = v81;
  *v33->endpoint = v80;
  *v33->containerMap = v35;

  v34, v36, v37, v38, v39, v40, v41, v42, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89;
  sub_1001AC0A0(v82, v30, type metadata accessor for Peer);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a1 + v31);
  if ((v43 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v44 = sub_1000C12E8(v44);
    *(a1 + v31) = v44;
  }

  sub_1001AC038(v30, v25, type metadata accessor for Peer);
  (*(v27 + 56))(v25, 0, 1, v26);
  v45 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v25, &v44->_TtCs12_SwiftObject_opaque[v45], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v85, v21, type metadata accessor for Bottle);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a1 + v31);
  if ((v46 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v47 = sub_1000C12E8(v47);
    *(a1 + v31) = v47;
  }

  v48 = v92;
  sub_1001AC038(v21, v18, type metadata accessor for Bottle);
  (*(v83 + 7))(v18, 0, 1, v84);
  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v18, &v47->_TtCs12_SwiftObject_opaque[v49], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v31);
  if ((v50 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v51 = sub_1000C12E8(v51);
    *(a1 + v31) = v51;
  }

  v52 = v90;
  v53 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v54 = *&v51->_TtCs12_SwiftObject_opaque[v53];
  *&v51->_TtCs12_SwiftObject_opaque[v53] = v86;

  v54, v55, v56, v57, v58, v59, v60, v61, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a1 + v31);
  if ((v62 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v63 = sub_1000C12E8(v63);
    *(a1 + v31) = v63;
  }

  v64 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v65 = *&v63->_TtCs12_SwiftObject_opaque[v64];
  *&v63->_TtCs12_SwiftObject_opaque[v64] = v87;

  v65, v66, v67, v68, v69, v70, v71, v72, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89;
  __chkstk_darwin(v73, v74);
  *(&v80 - 2) = v88;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  sub_100216654();
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(a1 + v31);
  if ((v75 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v76 = sub_1000C12E8(v76);
    *(a1 + v31) = v76;
  }

  v77 = v93;
  sub_1001AC038(v52, v93, type metadata accessor for IdmsTrustedDevicesVersion);
  (*(v91 + 56))(v77, 0, 1, v48);
  v78 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v77, &v76->_TtCs12_SwiftObject_opaque[v78], &qword_10029D770, &qword_10021E860);
  return swift_endAccess();
}

void sub_1001695B0(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, void *a8, void *a9)
{
  v99 = a8;
  v100 = a2;
  v103 = a6;
  v104 = a7;
  v101 = a4;
  v102 = a5;
  v97 = a3;
  v10 = type metadata accessor for Peer(0);
  v98 = *(v10 - 8);
  v11 = v98[8];
  __chkstk_darwin(v10 - 8, v12);
  v13 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JoinWithVoucherResponse(0);
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v18 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v91 - v20;
  v22 = sub_10001148C(&qword_1002984F0, &unk_10021DF60);
  __chkstk_darwin(v22, v23);
  v25 = (&v91 - v24);
  sub_100019C6C(a1, &v91 - v24, &qword_1002984F0, &unk_10021DF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v103;
    v27 = *v25;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446210;
      v107 = v27;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = v34;
      v36 = sub_100005FB0(v33, v34, aBlock);
      v35, v37, v38, v39, v40, v41, v42, v43, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100;
      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "preapprovedJoin failed: %{public}s", v31, 0xCu);
      sub_100006128(v32, v44, v45, v46, v47, v48, v49, v50);
    }

    swift_errorRetain();
    v26(0, 0, _swiftEmptyArrayStorage, 0, v27);
  }

  else
  {
    v92 = type metadata accessor for JoinWithVoucherResponse;
    v93 = a9;
    v94 = v21;
    sub_1001AC038(v25, v21, type metadata accessor for JoinWithVoucherResponse);
    v51 = v100;
    v95 = *&v100[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v97, &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Peer);
    sub_1001AC0A0(v21, v18, type metadata accessor for JoinWithVoucherResponse);
    v52 = (*(v98 + 80) + 24) & ~*(v98 + 80);
    v53 = (v11 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v96 + 80) + v54 + 8) & ~*(v96 + 80);
    v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *v57->endpoint = v51;
    sub_1001AC038(v13, &v57->_TtCs12_SwiftObject_opaque[v52], type metadata accessor for Peer);
    v58 = v101;
    *&v57->_TtCs12_SwiftObject_opaque[v53] = v101;
    v59 = v102;
    *&v57->_TtCs12_SwiftObject_opaque[v54] = v102;
    sub_1001AC038(v18, &v57->_TtCs12_SwiftObject_opaque[v55], v92);
    v60 = &v57->_TtCs12_SwiftObject_opaque[v56];
    v61 = v104;
    *v60 = v103;
    *(v60 + 1) = v61;
    v62 = &v57->_TtCs12_SwiftObject_opaque[(v56 + 23) & 0xFFFFFFFFFFFFFFF8];
    v63 = v93;
    *v62 = v99;
    *(v62 + 1) = v63;
    v64 = swift_allocObject();
    *v64->endpoint = sub_1001A9DE4;
    *v64->containerMap = v57;
    aBlock[4] = sub_1001ACCC0;
    v106 = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283170;
    v65 = _Block_copy(aBlock);
    v66 = v106;
    v67 = v51;
    v68 = v58;
    v69 = v59;

    v66, v70, v71, v72, v73, v74, v75, v76;
    [v95 performBlockAndWait:v65];
    _Block_release(v65);
    sub_1001AC1E4(v94, type metadata accessor for JoinWithVoucherResponse);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();
    v57, v77, v78, v79, v80, v81, v82, v83;
    v64, v84, v85, v86, v87, v88, v89, v90;
    if (v65)
    {
      __break(1u);
    }
  }
}

void sub_100169B94(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, void (*a6)(uint64_t, id, _TtC18TrustedPeersHelper6Client *, id, void), uint64_t a7, void *a8, void *a9)
{
  v108 = a8;
  v118 = a7;
  v119 = a6;
  v112 = a5;
  v116 = a3;
  v117 = a4;
  v124 = sub_100216424();
  v107 = *(v124 - 8);
  v12 = __chkstk_darwin(v124, v11);
  v123 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v122 = &v107 - v15;
  v16 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v16 - 8, v17);
  v110 = &v107 - v18;
  v109 = type metadata accessor for Changes(0);
  v120 = *(v109 - 1);
  __chkstk_darwin(v109, v19);
  v111 = (&v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v23 = __chkstk_darwin(v21 - 8, v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v107 - v27;
  v29 = type metadata accessor for SignedPeerStableInfo(0);
  v30 = *(v29 - 8);
  v32 = __chkstk_darwin(v29, v31);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v107 - v36;
  v121 = a1;
  v114 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v38 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v39 = *(type metadata accessor for Peer(0) + 32);
  v115 = a2;
  v113 = v39;
  sub_100019C6C(v39 + a2, v28, &qword_1002985A8, &unk_100226650);
  v40 = *(v30 + 48);
  if (v40(v28, 1, v29) == 1)
  {
    *v37 = xmmword_10021D470;
    *(v37 + 1) = xmmword_10021D470;
    v41 = v38;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v40(v28, 1, v29) != 1)
    {
      sub_1000114D4(v28, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v28, v37, type metadata accessor for SignedPeerStableInfo);
    v42 = v38;
  }

  v43 = *v37;
  v44 = *(v37 + 1);
  sub_100012558(*v37, v44);
  sub_1001AC1E4(v37, type metadata accessor for SignedPeerStableInfo);
  isa = sub_100216204().super.isa;
  sub_100002BF0(v43, v44, v46, v47, v48, v49, v50, v51);
  [v38 setEgoPeerStableInfo:isa];

  v52 = *&v114[v121];
  sub_100019C6C(v113 + v115, v25, &qword_1002985A8, &unk_100226650);
  if (v40(v25, 1, v29) == 1)
  {
    *v34 = xmmword_10021D470;
    *(v34 + 1) = xmmword_10021D470;
    v53 = v52;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v54 = v40(v25, 1, v29);
    v55 = v120;
    if (v54 != 1)
    {
      sub_1000114D4(v25, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v25, v34, type metadata accessor for SignedPeerStableInfo);
    v56 = v52;
    v55 = v120;
  }

  v57 = *(v34 + 2);
  v58 = *(v34 + 3);
  sub_100012558(v57, v58);
  sub_1001AC1E4(v34, type metadata accessor for SignedPeerStableInfo);
  v59 = sub_100216204().super.isa;
  sub_100002BF0(v57, v58, v60, v61, v62, v63, v64, v65);
  [v52 setEgoPeerStableInfoSig:v59];

  v66 = [v116 modelID];
  v67 = sub_100216974();
  v69 = v68;

  v70 = sub_100151404(v67, v69, v117);
  v69, v71, v72, v73, v74, v75, v76, v77, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116;
  v78 = type metadata accessor for JoinWithVoucherResponse(0);
  v79 = v112;
  v80 = v110;
  sub_100019C6C(v112 + *(v78 + 24), v110, &unk_10029D750, &qword_10021E850);
  v81 = *v55[1].endpoint;
  v82 = v109;
  if (v81(v80, 1, v109) == 1)
  {
    v83 = v111;
    *v111 = 0;
    *(v83 + 1) = 0xE000000000000000;
    *(v83 + 2) = _swiftEmptyArrayStorage;
    *(v83 + 24) = xmmword_10021D470;
    *(v83 + 40) = xmmword_10021D470;
    v83[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v81(v80, 1, v82) != 1)
    {
      sub_1000114D4(v80, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    v83 = v111;
    sub_1001AC038(v80, v111, type metadata accessor for Changes);
  }

  sub_100174C2C(v83, 0);
  sub_1001AC1E4(v83, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v116 = a9;
  v84 = sub_100216774();
  sub_100002648(v84, qword_10029D160);
  v85 = sub_100216754();
  v86 = sub_100216C54();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "preapprovedJoin succeeded", v87, 2u);
  }

  v117 = v70;

  v88 = *v79;
  v125 = _swiftEmptyArrayStorage;
  v89 = *(v88 + 16);
  if (v89)
  {
    v121 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v90 = *(v107 + 2);
    v91 = v88 + ((v107[80] + 32) & ~v107[80]);
    v92 = *(v107 + 9);
    v93 = (v107 + 8);
    v120 = _swiftEmptyArrayStorage;
    do
    {
      v94 = v122;
      v95 = v124;
      v90(v122, v91, v124);
      v90(v123, v94, v95);
      v96 = sub_100216D94();
      (*v93)(v94, v95);
      if (v96)
      {
        sub_100216B04();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v120 = v125;
      }

      v91 += v92;
      --v89;
    }

    while (v89);
  }

  else
  {
    v120 = _swiftEmptyArrayStorage;
  }

  v97 = v117;
  v98 = v117;
  v99 = v120;
  v119(v108, v116, v120, v97, 0);
  v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116;
}

uint64_t sub_10016A61C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
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
    _os_log_impl(&_mh_execute_header, v14, v12, "update complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000A1, 0x800000010023C560, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

uint64_t sub_10016A864(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
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
    _os_log_impl(&_mh_execute_header, v10, v8, "setPreapprovedKeys complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001BLL, 0x800000010023C540, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

void sub_10016AAA4(_TtC18TrustedPeersHelper6Client *a1, char *a2, void (*a3)(void, void), _TtC18TrustedPeersHelper6Client *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v22 = sub_100216774();
  sub_100002648(v22, qword_10029D160);

  v23 = sub_100216754();
  v24 = sub_100216C54();
  a1, v25, v26, v27, v28, v29, v30, v31, v87, v89, v92[0], v92[1], v93, v94, v95, v96, v97, v98;
  if (os_log_type_enabled(v23, v24))
  {
    v91 = a4;
    v32 = a3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v92[0] = v34;
    *v33 = 136446210;
    v35 = sub_100216B34();
    v37 = v36;
    v38 = sub_100005FB0(v35, v36, v92);
    v37, v39, v40, v41, v42, v43, v44, v45, v88, v91, v92[0], v92[1], v93, v94, v95, v96, v97, v98;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v23, v24, "setPreapprovedKeys: %{public}s", v33, 0xCu);
    sub_100006128(v34, v46, v47, v48, v49, v50, v51, v52);

    a3 = v32;
    a4 = v90;
  }

  v53 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v53)
  {
    v54 = v53;
    v55 = sub_100216974();
    v57 = v56;

    strcpy(v92, "signing-key ");
    BYTE5(v92[1]) = 0;
    HIWORD(v92[1]) = -5120;
    v100._countAndFlagsBits = v55;
    v100._object = v57;
    sub_100216A14(v100);
    v58 = v92[0];
    v59 = v92[1];

    v60 = a2;

    sub_10019A9F0(v58, v59, a3, a4, v60, v55, v57, a1);
    v59, v61, v62, v63, v64, v65, v66, v67, v88, v90, v92[0], v92[1], v93, v94, v95, v96, v97, v98;
    a4, v68, v69, v70, v71, v72, v73, v74;

    swift_bridgeObjectRelease_n();

    a1, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
  }

  else
  {
    v82 = sub_100216754();
    v83 = sub_100216C54();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "setPreapprovedKeys: No identity.", v84, 2u);
    }

    sub_1000561D0();
    v85 = swift_allocError();
    *v86 = xmmword_10021DA90;
    *(v86 + 16) = 13;
    a3(0, v85);
  }
}

void sub_10016ADF8(char *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t), uint64_t a7)
{
  v158 = a6;
  v159 = a7;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v11);
  v160 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v14 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v161 = a2;
  v157 = a3;
  v15 = sub_100216964();
  v16.super.isa = sub_100216B14().super.isa;
  v17 = a1;
  v18 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v19 = &_swiftEmptySetSingleton;
  if (v18)
  {
    v20 = v18;
    *&v164[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (*&v164[0])
    {
      v19 = *&v164[0];
    }
  }

  sub_100108644(v19);
  v22 = v21;
  v19, v23, v24, v25, v26, v27, v28, v29, v154, v155, updated, v157, v158, v159, v160, v161, v162, v163;
  v30 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v22, v32, v33, v34, v35, v36, v37, v38, v154, v155, updated, v157, v158, v159, v160, v161, v162, v163;
  v39 = [v30 initWithEntries:isa];

  *&v164[0] = 0;
  v40 = [v14 calculateDynamicInfoForPeerWithID:v15 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:v16.super.isa signingKeyPair:a5 currentMachineIDs:v39 error:v164];

  v41 = *&v164[0];
  if (v40)
  {
    v42 = qword_100297520;
    v43 = v40;
    v44 = v41;
    if (v42 != -1)
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
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v43;
      *v49 = v40;
      v50 = v43;
      _os_log_impl(&_mh_execute_header, v46, v47, "setPreapprovedKeys: produced a dynamicInfo: %{public}@", v48, 0xCu);
      sub_1000114D4(v49, &qword_10029D580, &unk_10021CCC0);
    }

    v155 = v17;
    v51 = *&v17[v13];
    v52 = v157;
    v53 = sub_100216964();
    *&v164[0] = 0;
    v54 = [v51 peerWithID:v53 error:v164];

    if (*&v164[0])
    {
      v55 = *&v164[0];

      swift_willThrow();
      v56 = v55;
      v57 = sub_100216754();
      v58 = sub_100216C74();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138543362;
        v61 = v56;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&_mh_execute_header, v57, v58, "setPreapprovedKeys: error getting ego peer from model: %{public}@", v59, 0xCu);
        sub_1000114D4(v60, &qword_10029D580, &unk_10021CCC0);

        v56 = v57;
        v57 = v61;
      }

      v54 = 0;
      goto LABEL_25;
    }

    if (!v54 || (v88 = [v54 dynamicInfo]) == 0)
    {
      v57 = v43;
LABEL_25:

      goto LABEL_26;
    }

    v89 = v88;
    sub_10000200C(0, &qword_10029D858, TPPeerDynamicInfo_ptr);
    v90 = sub_100216DC4();

    if ((v90 & 1) == 0)
    {
LABEL_26:
      v154 = v54;
      v102 = v43;

      v103 = sub_100216754();
      v104 = sub_100216C54();

      v52, v105, v106, v107, v108, v109, v110, v111, v154, v155, updated, v157, v158, v159, v160, v161, v162, v163;
      if (os_log_type_enabled(v103, v104))
      {
        v112 = swift_slowAlloc();
        v113 = v102;
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *&v164[0] = v115;
        *v112 = 136446466;
        v116 = v161;
        *(v112 + 4) = sub_100005FB0(v161, v52, v164);
        *(v112 + 12) = 2114;
        *(v112 + 14) = v113;
        *v114 = v40;
        v117 = v113;
        _os_log_impl(&_mh_execute_header, v103, v104, "setPreapprovedKeys: attempting updateTrust for %{public}s with: %{public}@", v112, 0x16u);
        sub_1000114D4(v114, &qword_10029D580, &unk_10021CCC0);
        v102 = v113;

        sub_100006128(v115, v118, v119, v120, v121, v122, v123, v124);
      }

      else
      {

        v116 = v161;
      }

      __chkstk_darwin(v125, v126);
      v127 = v155;
      *(&v154 - 4) = v155;
      *(&v154 - 3) = v116;
      v152 = v52;
      v153 = v102;
      sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
      sub_100216654();
      v128 = swift_allocObject();
      v129 = v159;
      *v128->endpoint = v158;
      *v128->containerMap = v129;
      v130 = *&v127[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v131 = *&v127[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v127[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v130);
      v132 = swift_allocObject();
      *(v132 + 16) = v127;
      *(v132 + 24) = sub_1001A9BC0;
      *(v132 + 32) = v128;
      *(v132 + 40) = xmmword_1002260B0;
      *(v132 + 56) = 0u;
      *(v132 + 72) = 0u;
      *(v132 + 88) = 0u;
      *(v132 + 104) = 0u;
      *(v132 + 120) = 0u;
      *(v132 + 129) = 0u;
      v133 = *(v131 + 16);
      v134 = v102;
      v135 = *(v133 + 32);

      v136 = v127;

      v137 = v160;
      v135(v160, sub_1001A9BC8, v132, v130, v133);

      v128, v138, v139, v140, v141, v142, v143, v144;
      v132, v145, v146, v147, v148, v149, v150, v151;

      sub_1001AC1E4(v137, type metadata accessor for UpdateTrustRequest);
      return;
    }

    v91 = sub_100216754();
    v92 = sub_100216C54();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "setPreapprovedKeys: no change; nothing to do.", v93, 2u);
    }

    v164[0] = xmmword_1002260B0;
    memset(&v164[1], 0, 80);
    v165 = 0;
    v94 = swift_allocObject();
    *v94->endpoint = v158;
    *v94->containerMap = v159;

    sub_100170394(v164, 0, sub_1001A9BCC, v94);

    v94, v95, v96, v97, v98, v99, v100, v101;
  }

  else
  {
    v63 = *&v164[0];
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
      *&v164[0] = v69;
      *v68 = 136446210;
      v162 = v64;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v70 = sub_100216994();
      v72 = v71;
      v73 = sub_100005FB0(v70, v71, v164);
      v72, v74, v75, v76, v77, v78, v79, v80, v154, v155, updated, v157, v158, v159, v160, v161, v162, v163;
      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "setPreapprovedKeys: couldn't calculate dynamic info: %{public}s", v68, 0xCu);
      sub_100006128(v69, v81, v82, v83, v84, v85, v86, v87);
    }

    swift_errorRetain();
    (v158)(0, v64);
  }
}

uint64_t sub_10016B8F8(uint64_t *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v65 = a3;
  v66 = a5;
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v71 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SignedPeerDynamicInfo(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v16 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
  if (v16)
  {
    v24 = v16;
    v25 = sub_100216974();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  a1[1], v17, v18, v19, v20, v21, v22, v23, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73;
  *a1 = v25;
  a1[1] = v27;
  v28 = a1[3];

  v28, v29, v30, v31, v32, v33, v34, v35, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73;
  a1[2] = v65;
  a1[3] = a4;
  *v15 = xmmword_10021D470;
  *(v15 + 1) = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v36 = v66;
  v37 = [v66 data];
  v38 = sub_100216224();
  v40 = v39;

  sub_100002BF0(*v15, *(v15 + 1), v41, v42, v43, v44, v45, v46);
  *v15 = v38;
  *(v15 + 1) = v40;
  v47 = [v36 sig];
  v48 = sub_100216224();
  v50 = v49;

  sub_100002BF0(*(v15 + 2), *(v15 + 3), v51, v52, v53, v54, v55, v56);
  *(v15 + 2) = v48;
  *(v15 + 3) = v50;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v58 = *(updated + 40);
  sub_1000114D4(a1 + v58, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v15, a1 + v58, type metadata accessor for SignedPeerDynamicInfo);
  v59 = (*(v12 + 56))(a1 + v58, 0, 1, v11);
  __chkstk_darwin(v59, v60);
  *(&v64 - 2) = v67;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  v61 = v68;
  sub_100216654();
  v62 = *(updated + 44);
  sub_1000114D4(a1 + v62, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v61, a1 + v62, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v71 + 7))(a1 + v62, 0, 1, v8);
}

uint64_t sub_10016BCA0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029D160);
    swift_errorRetain();
    v8 = sub_100216754();
    v9 = sub_100216C74();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37[0] = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v12 = sub_100216994();
      v14 = v13;
      v15 = sub_100005FB0(v12, v13, v37);
      v14, v16, v17, v18, v19, v20, v21, v22, a3, v37[0], v37[1], v37[2], v37[3], v38, v39, v40, v41, v42;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "setPreapprovedKeys: failed: %{public}s", v10, 0xCu);
      sub_100006128(v11, v23, v24, v25, v26, v27, v28, v29);
    }

    v30 = a1;
    v31 = a3;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v32 = sub_100216774();
    sub_100002648(v32, qword_10029D160);
    v33 = sub_100216754();
    v34 = sub_100216C54();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "setPreapprovedKeys: updateTrust succeeded", v35, 2u);
    }

    v30 = a1;
    v31 = 0;
  }

  return a4(v30, v31);
}

void sub_10016BF00(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v9 = v4;
  v10 = sub_10019C8E0(v9, 0xD000000000000025, 0x800000010023CFC0);

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  v12 = qword_100297520;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029D160);

  v14 = sub_100216754();
  v15 = sub_100216C54();
  a1, v16, v17, v18, v19, v20, v21, v22, v89, v91, aBlock, v95, v96, v97, v98, v99, v100, v101;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock = v92;
    *v23 = 136446210;
    sub_10000200C(0, &qword_10029D938, off_100275018);
    v24 = sub_100216B34();
    v25 = v11;
    v26 = v9;
    v27 = a1;
    v28 = v10;
    v29 = a2;
    v31 = v30;
    v32 = sub_100005FB0(v24, v30, &aBlock);
    v33 = v31;
    a2 = v29;
    v10 = v28;
    a1 = v27;
    v9 = v26;
    v11 = v25;
    v33, v34, v35, v36, v37, v38, v39, v40, v90, v92, aBlock, v95, v96, v97, v98, v99, v100, v101;
    *(v23 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v14, v15, "Uploading some new TLKs: %{public}s", v23, 0xCu);
    sub_100006128(v93, v41, v42, v43, v44, v45, v46, v47);
  }

  v48 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v49 = swift_allocObject();
  *(v49 + 16) = v9;
  *(v49 + 24) = a1;
  *(v49 + 32) = a2;
  *(v49 + 40) = sub_1001AB9C4;
  *(v49 + 48) = v11;
  v50 = swift_allocObject();
  *v50->endpoint = sub_1001AB9D0;
  *v50->containerMap = v49;
  v98 = sub_1001ACCC0;
  v99 = v50;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100109050;
  v97 = &unk_100284EF8;
  v51 = _Block_copy(&aBlock);
  v52 = v99;
  v53 = v9;

  v52, v54, v55, v56, v57, v58, v59, v60;
  [v48 performBlockAndWait:v51];
  v11, v61, v62, v63, v64, v65, v66, v67;
  v10, v68, v69, v70, v71, v72, v73, v74;
  _Block_release(v51);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();
  v49, v75, v76, v77, v78, v79, v80, v81;
  v50, v82, v83, v84, v85, v86, v87, v88;
  if (v51)
  {
    __break(1u);
  }
}

uint64_t sub_10016C290(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
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
    _os_log_impl(&_mh_execute_header, v10, v8, "updateTLKs complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023CFC0, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

uint64_t sub_10016C4D0(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v16 = __chkstk_darwin(v14, v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch];
  v21 = a2 + v20;
  if (__OFADD__(a2, v20))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = a5;
  v69 = a4;
  v70 = a7;
  v72 = v19;
  v74 = v17;
  v75 = v16;
  v22 = *(a4 + 16);
  if (v22 >= v21)
  {
    a4 = a2 + v20;
  }

  else
  {
    a4 = *(a4 + 16);
  }

  v71 = a3;
  v23 = [*&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
  if (v23)
  {
    v31 = v23;
    v32 = sub_100216974();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  a1[1], v24, v25, v26, v27, v28, v29, v30, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77;
  *a1 = v32;
  a1[1] = v34;
  v35 = a1[3];

  v35, v36, v37, v38, v39, v40, v41, v42, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77;
  a1[2] = v77;
  a1[3] = a6;
  if (a4 < a2)
  {
    goto LABEL_16;
  }

  if (v22 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v21 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 != a4 - a2)
  {
LABEL_20:
    v66 = *(type metadata accessor for TLKShare(0) - 8);
    sub_100187584(v69, v69 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), a2, (2 * a4) | 1);
    v43 = v67;
    goto LABEL_14;
  }

  v43 = v69;

LABEL_14:
  v51 = v70;
  a1[4], v44, v45, v46, v47, v48, v49, v50, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77;
  a1[4] = v43;
  v52 = a1[5];

  v52, v53, v54, v55, v56, v57, v58, v59, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77;
  a1[5] = v51;
  __chkstk_darwin(v60, v61);
  *(&v68 - 2) = v71;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  v62 = v72;
  v63 = v75;
  sub_100216654();
  v64 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
  sub_1000114D4(a1 + v64, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v62, a1 + v64, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v74 + 7))(a1 + v64, 0, 1, v63);
}

void sub_10016C814(uint64_t a1, char *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a8;
  v74 = a7;
  v72 = a6;
  v76 = a5;
  v77 = a4;
  v75 = a3;
  updated = type metadata accessor for UpdateTrustResponse(0);
  v13 = *(updated - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(updated - 8, v15);
  __chkstk_darwin(v16, v17);
  v19 = &v65 - v18;
  v20 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  __chkstk_darwin(v20, v21);
  v23 = (&v65 - v22);
  sub_100019C6C(a1, &v65 - v22, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    swift_errorRetain();
    v75(v24, 1);
  }

  else
  {
    v68 = a10 + 16;
    v69 = a9;
    v66 = type metadata accessor for UpdateTrustResponse;
    sub_1001AC038(v23, v19, type metadata accessor for UpdateTrustResponse);
    v25 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v67 = a2;
    v71 = v25;
    sub_1001AC0A0(v19, &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateTrustResponse);
    v26 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
    v65 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v70 = v19;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = v73;
    v33 = swift_allocObject();
    *v33->endpoint = a2;
    sub_1001AC038(v65, &v33->_TtCs12_SwiftObject_opaque[v26], v66);
    v34 = &v33->_TtCs12_SwiftObject_opaque[v27];
    v35 = v77;
    *v34 = v75;
    v34[1] = v35;
    *&v33->_TtCs12_SwiftObject_opaque[v28] = v76;
    v36 = &v33->_TtCs12_SwiftObject_opaque[v29];
    v37 = v74;
    *v36 = v72;
    v36[1] = v37;
    *&v33->_TtCs12_SwiftObject_opaque[v30] = v32;
    v38 = v68;
    *&v33->_TtCs12_SwiftObject_opaque[v31] = v69;
    *&v33->_TtCs12_SwiftObject_opaque[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;
    v39 = swift_allocObject();
    *v39->endpoint = sub_1001AAAC0;
    *v39->containerMap = v33;
    aBlock[4] = sub_1001ACCC0;
    v79 = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283F80;
    v40 = _Block_copy(aBlock);
    v41 = v79;
    v42 = v67;

    v41, v43, v44, v45, v46, v47, v48, v49;
    [v71 performBlockAndWait:v40];
    _Block_release(v40);
    sub_1001AC1E4(v70, type metadata accessor for UpdateTrustResponse);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v33, v51, v52, v53, v54, v55, v56, v57;
    v39, v58, v59, v60, v61, v62, v63, v64;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_10016CC18(char *a1, uint64_t *a2, void (*a3)(_TtC18TrustedPeersHelper6Client *, void), void *a4, _TtC18TrustedPeersHelper6Client *a5, void *a6, void *a7, void *a8, _TtC18TrustedPeersHelper6Client *a9, void *a10)
{
  v97 = a7;
  v98 = a8;
  v96 = a6;
  v99 = a5;
  v101 = a3;
  v102 = a4;
  v103 = a1;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v11);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100216424();
  v104 = *(v13 - 8);
  v15 = __chkstk_darwin(v13, v14);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v93 - v18;
  v20 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v93 - v22;
  v24 = type metadata accessor for Changes(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UpdateTrustResponse(0);
  sub_100019C6C(a2 + *(v29 + 24), v23, &unk_10029D750, &qword_10021E850);
  v30 = *(v25 + 48);
  if (v30(v23, 1, v24) == 1)
  {
    *v28 = 0;
    *(v28 + 1) = 0xE000000000000000;
    *(v28 + 2) = _swiftEmptyArrayStorage;
    *(v28 + 24) = xmmword_10021D470;
    *(v28 + 40) = xmmword_10021D470;
    v28[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v23, 1, v24) != 1)
    {
      sub_1000114D4(v23, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v23, v28, type metadata accessor for Changes);
  }

  sub_100174C2C(v28, 0);
  v93 = 0;
  v94 = a10;
  sub_1001AC1E4(v28, type metadata accessor for Changes);
  v31 = *a2;
  v108[0] = _swiftEmptyArrayStorage;
  v32 = *(v31 + 16);
  if (v32)
  {
    v105 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v33 = *v104->endpoint;
    v34 = v31 + ((v104[2].endpoint[0] + 32) & ~v104[2].endpoint[0]);
    v35 = *&v104[2]._TtCs12_SwiftObject_opaque[8];
    v36 = &v104->_TtCs12_SwiftObject_opaque[8];
    v104 = _swiftEmptyArrayStorage;
    v33(v19, v34, v13);
    while (1)
    {
      v33(v106, v19, v13);
      v37 = sub_100216D94();
      (*v36)(v19, v13);
      if (v37)
      {
        sub_100216B04();
        if (*((v108[0]->_TtCs12_SwiftObject_opaque & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[0]->_TtCs12_SwiftObject_opaque & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v104 = *((v108[0]->_TtCs12_SwiftObject_opaque & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v104 = v108[0];
      }

      v34 += v35;
      if (!--v32)
      {
        break;
      }

      v33(v19, v34, v13);
    }
  }

  else
  {
    v104 = _swiftEmptyArrayStorage;
  }

  v108[0] = v99;

  sub_10011019C(v104);
  v38 = v108[0];
  v39 = v94;
  swift_beginAccess();
  sub_10007974C(v39, v108);
  v40 = swift_allocObject();
  sub_10007974C(v108, v40 + 16);
  sub_1000023C4(v40 + 16, *(v40 + 40));
  v41 = sub_100216E04();
  if (v107)
  {
    v101(v38, 0);
    v38, v43, v44, v45, v46, v47, v48, v49, v93, v94, updated, v96, v97, v98, v99, v100, v101, v102;
  }

  else
  {
    v104 = a9;
    __chkstk_darwin(v41, v42);
    v57 = v103;
    *(&v93 - 6) = v58;
    *(&v93 - 5) = v57;
    v59 = v98;
    v60 = v96;
    *(&v93 - 4) = v98;
    *(&v93 - 3) = v60;
    v99 = v38;
    v61 = v97;
    *(&v93 - 2) = v97;
    *(&v93 - 1) = v62;
    sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
    sub_100216654();
    v63 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    v106 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v105 = sub_100006484(&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v106);
    v64 = swift_allocObject();
    v65 = v101;
    v66 = v102;
    *(v64 + 16) = v57;
    *(v64 + 24) = v65;
    v67 = v99;
    *(v64 + 32) = v66;
    *(v64 + 40) = v67;
    *(v64 + 48) = v60;
    *(v64 + 56) = v61;
    v68 = v104;
    *(v64 + 64) = v59;
    *(v64 + 72) = v68;
    *(v64 + 80) = v40;
    v69 = *(v63 + 16);
    v101 = *(v69 + 32);
    v70 = v57;

    v71 = v100;
    (v101)(v100, sub_1001ACE30, v64, v106, v69);
    v67, v72, v73, v74, v75, v76, v77, v78, v93, v94, updated, v96, v97, v98, v99, v100, v101, v102;
    v64, v79, v80, v81, v82, v83, v84, v85;
    sub_1001AC1E4(v71, type metadata accessor for UpdateTrustRequest);
  }

  sub_100006128(v108, v50, v51, v52, v53, v54, v55, v56);
  v40, v86, v87, v88, v89, v90, v91, v92;
}

void sub_10016D488(void *a1, void *a2, void (*a3)(void, uint64_t), void *a4)
{
  v9 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v10 = [*&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100216974();
    v14 = v13;

    v15 = [*&v4[v9] egoPeerPermanentInfo];
    if (v15)
    {
      v178 = a2;
      v23 = v15;
      v24 = sub_100216224();
      v26 = v25;

      v27 = [*&v4[v9] egoPeerPermanentInfoSig];
      if (v27)
      {
        v165 = a1;
        v170 = a3;
        v34 = v27;
        v35 = v12;
        v36 = sub_100216224();
        v38 = v37;

        v39 = objc_allocWithZone(TPECPublicKeyFactory);

        sub_100012558(v24, v26);
        sub_100012558(v36, v38);
        v40 = [v39 init];
        v41 = sub_100216964();
        v14, v42, v43, v44, v45, v46, v47, v48, v139, v35, v41, v151, v155, v160, v165, v170, a4, v178;
        isa = sub_100216204().super.isa;
        v50 = sub_100216204().super.isa;
        v51 = [objc_opt_self() permanentInfoWithPeerID:v41 data:isa sig:v50 keyFactory:v40];

        v156 = v36;
        sub_100002BF0(v36, v38, v52, v53, v54, v55, v56, v57);

        sub_100002BF0(v24, v26, v58, v59, v60, v61, v62, v63);
        if (v51)
        {
          v71 = swift_allocObject();
          *(v71 + 16) = v171;
          *(v71 + 24) = v175;
          *(v71 + 32) = v4;
          *(v71 + 40) = v144;
          *(v71 + 48) = v14;
          *(v71 + 56) = v166;
          *(v71 + 64) = v179;
          *(v71 + 72) = v51;
          strcpy(v182, "signing-key ");
          BYTE5(v182[1]) = 0;
          HIWORD(v182[1]) = -5120;

          v72 = v4;

          v73 = v51;
          v184._countAndFlagsBits = v144;
          v184._object = v14;
          sub_100216A14(v184);

          sub_100198E8C(v182[0], v182[1], sub_1001AB970, v71, v144, v14);

          v182[1], v74, v75, v76, v77, v78, v79, v80, v140, v144, v148, v26, v156, v38, v166, v171, v175, v179;

          swift_bridgeObjectRelease_n();
          sub_100002BF0(v157, v161, v81, v82, v83, v84, v85, v86);
          v93 = v24;
          v94 = v152;
        }

        else
        {
          v14, v64, v65, v66, v67, v68, v69, v70, v140, v144, v148, v26, v36, v38, v166, v171, v175, v179;
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v101 = sub_100216774();
          sub_100002648(v101, qword_10029D160);

          v102 = sub_100216754();
          v103 = sub_100216C54();
          v167, v104, v105, v106, v107, v108, v109, v110, v141, v145, v149, v153, v158, v162, v167, v172, v176, v180;
          if (os_log_type_enabled(v102, v103))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v182[0] = v112;
            *v111 = 136446210;
            sub_10000200C(0, &qword_10029D938, off_100275018);
            v113 = sub_100216B34();
            v115 = v114;
            v116 = sub_100005FB0(v113, v114, v182);
            v115, v117, v118, v119, v120, v121, v122, v123, v142, v146, v150, v154, v159, v163, v168, v173, v177, v181;
            *(v111 + 4) = v116;
            _os_log_impl(&_mh_execute_header, v102, v103, "Couldn't parse self identity: %{public}s", v111, 0xCu);
            sub_100006128(v112, v124, v125, v126, v127, v128, v129, v130);
          }

          sub_1000561D0();
          v131 = swift_allocError();
          *v132 = xmmword_10021DA80;
          *(v132 + 16) = 13;
          (v173)(0, v131);

          sub_100002BF0(v159, v163, v133, v134, v135, v136, v137, v138);
          v93 = v24;
          v94 = v26;
        }

        sub_100002BF0(v93, v94, v87, v88, v89, v90, v91, v92);
        return;
      }

      sub_100002BF0(v24, v26, v28, v29, v30, v31, v32, v33);
    }

    v14, v16, v17, v18, v19, v20, v21, v22, v139, v143, v147, v151, v155, v160, v164, v169, v174, v178;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v95 = sub_100216774();
  sub_100002648(v95, qword_10029D160);
  v96 = sub_100216754();
  v97 = sub_100216C54();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "Have no self identity, can't make tlk shares", v98, 2u);
  }

  sub_1000561D0();
  v99 = swift_allocError();
  *v100 = xmmword_10021DA90;
  *(v100 + 16) = 13;
  a3(0, v99);
}

void sub_10016DA84(void *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a1)
  {
    v69 = a10;
    v70 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v16 = a5;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a6;
    *(v17 + 32) = a7;
    *(v17 + 40) = a3;
    *(v17 + 48) = a4;
    *(v17 + 56) = a8;
    *(v17 + 64) = a9;
    *(v17 + 72) = a1;
    *(v17 + 80) = a10;
    a3 = swift_allocObject();
    *a3->endpoint = sub_1001ACBC4;
    *a3->containerMap = v17;
    v75 = sub_1001ACCC0;
    v76 = a3;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100109050;
    v74 = &unk_100284020;
    v18 = _Block_copy(&aBlock);
    v19 = v76;
    v20 = a1;
    v21 = v16;

    v22 = a10;

    v19, v23, v24, v25, v26, v27, v28, v29;
    [v70 performBlockAndWait:v18];

    _Block_release(v18);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();
    v17, v30, v31, v32, v33, v34, v35, v36;
    a3, v37, v38, v39, v40, v41, v42, v43;
    if ((v16 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v44 = a2;
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
    aBlock = v49;
    *v48 = 136446210;
    v77 = v44;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v50 = sub_100216994();
    v52 = v51;
    v53 = sub_100005FB0(v50, v51, &aBlock);
    v52, v54, v55, v56, v57, v58, v59, v60, v68, v69, v70, aBlock, v72, v73, v74, v75, v76, v77;
    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v48, 0xCu);
    sub_100006128(v49, v61, v62, v63, v64, v65, v66, v67);
  }

  (a3)(0, v44);
}

void sub_10016DDC0(char *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t (*a4)(uint64_t, uint64_t), void *a5, unint64_t a6, unint64_t a7, _TtC18TrustedPeersHelper6Client *a8, void *a9)
{
  v154 = a8;
  v155 = a4;
  v156 = a5;
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v15);
  v17 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v19 = sub_100216964();
  v160[0] = 0;
  v20 = [v18 getDynamicInfoForPeerWithID:v19 error:v160];

  v21 = v160[0];
  if (v160[0])
  {
    v22 = v160[0];

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_10029D160);
    v24 = v22;
    v25 = sub_100216754();
    v26 = sub_100216C54();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v24;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to fetch dynamic info for self: %{public}@", v27, 0xCu);
      sub_1000114D4(v28, &qword_10029D580, &unk_10021CCC0);
    }

    v31 = v24;
    v155(0, v21);
  }

  else
  {
    v32 = v154;
    v152 = v17;
    v153 = a1;
    if (v20)
    {
      v33 = v20;
      v34 = [a9 epoch];
      v35 = v156;
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
        swift_once();
        v37 = sub_100216774();
        sub_100002648(v37, qword_10029D160);
        swift_errorRetain();
        v38 = sub_100216754();
        v39 = sub_100216C74();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v160[0] = v41;
          *v40 = 136446210;
          v158 = a6;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v42 = sub_100216994();
          v43 = v33;
          v45 = v44;
          v46 = sub_100005FB0(v42, v44, v160);
          v47 = v45;
          v33 = v43;
          v47, v48, v49, v50, v51, v52, v53, v54, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
          *(v40 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v38, v39, "Unable to process keys before uploading: %{public}s", v40, 0xCu);
          sub_100006128(v41, v55, v56, v57, v58, v59, v60, v61);
        }

        swift_errorRetain();
        v155(0, a6);
      }

      else
      {
        v36 = v153;
        sub_1001551F8(a6, a7, v32, v33, v34);
        v69 = v68;
        v149 = a3;
        v150 = v70;
        v154 = v33;
        v71 = swift_allocObject();
        *v71->endpoint = v155;
        *v71->containerMap = v35;
        v151 = v71;
        v72 = *&v36[OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch];
        if (!v72)
        {
          __break(1u);
        }

        v73 = *v69->endpoint;
        v160[3] = sub_10001148C(&qword_10029D940, qword_1002266B8);
        v160[4] = sub_1001AC36C(&qword_10029D948, &qword_10029D940, qword_1002266B8, &protocol conformance descriptor for StrideToIterator<A>);
        v74 = swift_allocObject();
        v160[0] = v74;
        *(v74 + 16) = 0;
        *(v74 + 24) = v73;
        *(v74 + 32) = v72;
        *(v74 + 40) = 0;
        *(v74 + 48) = 0;
        *(v74 + 56) = 0;
        v75 = swift_allocObject();
        sub_10007974C(v160, v75 + 16);
        sub_1000023C4(v75 + 16, *(v75 + 40));

        v76 = sub_100216E04();
        if (v159 == 1)
        {
          v69, v77, v78, v79, v80, v81, v82, v83, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
          v150, v84, v85, v86, v87, v88, v89, v90, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
          sub_10016E640(_swiftEmptyArrayStorage, 0, v155);
          v75, v91, v92, v93, v94, v95, v96, v97;
          v151, v98, v99, v100, v101, v102, v103, v104;
          v105 = v154;
        }

        else
        {
          __chkstk_darwin(v76, v77);
          v113 = v153;
          *(&v148 - 6) = v114;
          *(&v148 - 5) = v113;
          v148 = v69;
          *(&v148 - 4) = v69;
          *(&v148 - 3) = a2;
          v116 = v149;
          v115 = v150;
          *(&v148 - 2) = v149;
          *(&v148 - 1) = v115;
          sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
          sub_100216654();
          v117 = *&v113->containerMap[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          v118 = *&v113[1]._TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          sub_100006484(&v113->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v117);
          v119 = swift_allocObject();
          *(v119 + 16) = v113;
          *(v119 + 24) = sub_1001AAA98;
          v120 = v151;
          *(v119 + 32) = v151;
          *(v119 + 40) = _swiftEmptyArrayStorage;
          *(v119 + 48) = a2;
          v121 = v148;
          *(v119 + 56) = v116;
          *(v119 + 64) = v121;
          *(v119 + 72) = v115;
          *(v119 + 80) = v75;
          v122 = *(v118 + 16);
          v123 = *(v122 + 32);
          v124 = v113;

          v125 = v152;
          v123(v152, sub_1001AAABC, v119, v117, v122);
          v120, v126, v127, v128, v129, v130, v131, v132;
          v119, v133, v134, v135, v136, v137, v138, v139;
          v140 = v154;

          sub_1001AC1E4(v125, type metadata accessor for UpdateTrustRequest);
          v75, v141, v142, v143, v144, v145, v146, v147;
        }

        sub_100006128(v160, v106, v107, v108, v109, v110, v111, v112);
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
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Unable to fetch dynamic info for self", v65, 2u);
      }

      sub_1000561D0();
      v66 = swift_allocError();
      *v67 = xmmword_1002260F0;
      *(v67 + 16) = 13;
      v155(0, v66);
    }
  }
}

uint64_t sub_10016E7A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (!v5)
  {
    return sub_10016ECB4(0, a2, a3);
  }

  return a2(0);
}

void sub_10016E81C(char a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029D160);
    v8 = sub_100216754();
    v9 = sub_100216C54();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Forcing a full refetch: by request", v10, 2u);
LABEL_6:

LABEL_7:

LABEL_8:
    LOBYTE(v11) = 1;
LABEL_9:
    sub_10016ECB4(v11, a3, a4);
    return;
  }

  v12 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v35 = 0;
  v11 = [v12 currentStatePossiblyMissingDataWithError:&v35];
  v13 = v35;
  if (!v35)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v25 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    if ([*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] refetchLevel] > 0)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v26 = sub_100216774();
      sub_100002648(v26, qword_10029D160);
      v27 = a2;
      v28 = sub_100216754();
      v29 = sub_100216C54();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = [*&a2[v25] refetchLevel];

        _os_log_impl(&_mh_execute_header, v28, v29, "Model would like a full refetch, but we've done one at this refetch level: %lld", v30, 0xCu);
      }

      else
      {
      }

      LOBYTE(v11) = 0;
      goto LABEL_9;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v31 = sub_100216774();
    sub_100002648(v31, qword_10029D160);
    v32 = a2;
    v8 = sub_100216754();
    v33 = sub_100216C54();
    if (!os_log_type_enabled(v8, v33))
    {

      goto LABEL_8;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = [*&a2[v25] refetchLevel];

    _os_log_impl(&_mh_execute_header, v8, v33, "Forcing a full refetch due to model: last refetch level: %lld", v34, 0xCu);
    goto LABEL_6;
  }

  swift_willThrow();
  v14 = qword_100297520;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  v17 = v15;
  v18 = sub_100216754();
  v19 = sub_100216C74();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    v22 = v17;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "currentStatePossiblyMissingData error: %{public}@", v20, 0xCu);
    sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
  }

  v24 = v17;
  a3(v13);
}

uint64_t sub_10016ECB4(char a1, id a2, uint64_t a3)
{
  v4 = v3;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v10 = __chkstk_darwin(ChangesRequest, v9);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v13);
  v15 = &v53 - v14;
  LODWORD(v16) = a1 & 1;
  LOBYTE(v57) = a1;
  v58 = v4;
  sub_1001A13C4(&unk_10029DA40, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);
  sub_100216654();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  sub_100002648(v17, qword_10029D160);
  sub_1001AC0A0(v15, v12, type metadata accessor for FetchChangesRequest);
  v18 = sub_100216754();
  v19 = sub_100216C54();
  if (os_log_type_enabled(v18, v19))
  {
    HIDWORD(v53) = v16;
    v54 = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59[0] = v21;
    *v20 = 136446210;
    v22 = *v12;
    v16 = v12[1];
    v23 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v23 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
    }

    else
    {
      v16 = 0xE500000000000000;
      v22 = 0x7974706D65;
    }

    sub_1001AC1E4(v12, type metadata accessor for FetchChangesRequest);
    v24 = sub_100005FB0(v22, v16, v59);
    v16, v25, v26, v27, v28, v29, v30, v31, v53, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v59[3];
    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching with change token: %{public}s", v20, 0xCu);
    sub_100006128(v21, v32, v33, v34, v35, v36, v37, v38);

    a2 = v54;
    LOBYTE(v16) = BYTE4(v53);
  }

  else
  {

    sub_1001AC1E4(v12, type metadata accessor for FetchChangesRequest);
  }

  v39 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v40 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v39);
  v41 = swift_allocObject();
  *(v41 + 16) = v4;
  *(v41 + 24) = v16;
  *(v41 + 32) = a2;
  *(v41 + 40) = a3;
  v42 = *(v40 + 16);
  v43 = *(v42 + 56);
  v44 = v4;

  v43(v15, sub_1001AB954, v41, v39, v42);
  v41, v45, v46, v47, v48, v49, v50, v51;
  return sub_1001AC1E4(v15, type metadata accessor for FetchChangesRequest);
}

void sub_10016F0CC(char *a1, char *a2, int a3, void (*a4)(void), void *a5)
{
  v162 = a4;
  v163 = a5;
  HIDWORD(v159) = a3;
  v160 = a2;
  v161 = a1;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v158 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v156 - v10;
  v12 = type metadata accessor for Changes(0);
  v13 = *(v12 - 1);
  v15 = __chkstk_darwin(v12, v14);
  v157 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = (&v156 - v18);
  ChangesResponse = type metadata accessor for FetchChangesResponse(0);
  __chkstk_darwin(ChangesResponse, v21);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10001148C(&qword_1002984C0, &qword_10021DF30);
  __chkstk_darwin(v24, v25);
  v27 = (&v156 - v26);
  sub_100019C6C(v161, &v156 - v26, &qword_1002984C0, &qword_10021DF30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_9:
    sub_1001AC038(v27, v23, type metadata accessor for FetchChangesResponse);
    v62 = *(ChangesResponse + 20);
    sub_100019C6C(&v23[v62], v11, &unk_10029D750, &qword_10021E850);
    v63 = *(v13 + 48);
    v64 = v63(v11, 1, v12);
    v161 = v23;
    if (v64 == 1)
    {
      *v19->_TtCs12_SwiftObject_opaque = 0;
      *&v19->_TtCs12_SwiftObject_opaque[8] = 0xE000000000000000;
      *v19->endpoint = _swiftEmptyArrayStorage;
      *v19->containerMap = xmmword_10021D470;
      *&v19[1]._TtCs12_SwiftObject_opaque[8] = xmmword_10021D470;
      v19[1].containerMap[0] = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v65 = v12;
      v66 = v63(v11, 1, v12);
      v68 = v160;
      if (v66 != 1)
      {
        v66 = sub_1000114D4(v11, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v65 = v12;
      v66 = sub_1001AC038(v11, v19, type metadata accessor for Changes);
      v68 = v160;
    }

    v114 = *&v68[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v66, v67);
    *(&v156 - 4) = v19;
    *(&v156 - 3) = v68;
    *(&v156 - 16) = BYTE4(v159) & 1;
    sub_100216D34();
    sub_1001AC1E4(v19, type metadata accessor for Changes);
    v115 = &v161[v62];
    v116 = v161;
    v117 = v158;
    sub_100019C6C(v115, v158, &unk_10029D750, &qword_10021E850);
    if (v63(v117, 1, v65) == 1)
    {
      v118 = v157;
      *v157 = 0;
      *(v118 + 1) = 0xE000000000000000;
      *(v118 + 2) = _swiftEmptyArrayStorage;
      *(v118 + 24) = xmmword_10021D470;
      *(v118 + 40) = xmmword_10021D470;
      v118[56] = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v63(v117, 1, v65) != 1)
      {
        sub_1000114D4(v117, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v118 = v157;
      sub_1001AC038(v117, v157, type metadata accessor for Changes);
    }

    v119 = v118[56];
    sub_1001AC1E4(v118, type metadata accessor for Changes);
    if (v119)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v120 = sub_100216774();
      sub_100002648(v120, qword_10029D160);
      v121 = sub_100216754();
      v122 = sub_100216C54();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&_mh_execute_header, v121, v122, "persist: More changes indicated. Fetching...", v123, 2u);
      }

      v124 = swift_allocObject();
      *(v124 + 16) = 0;
      v125 = v162;
      v116 = v163;
      *(v124 + 24) = v68;
      *(v124 + 32) = v125;
      *(v124 + 40) = v116;
      v126 = swift_allocObject();
      *v126->endpoint = sub_1001ACE7C;
      *v126->containerMap = v124;
      v169 = sub_1001ACCC0;
      v170 = v126;
      aBlock = _NSConcreteStackBlock;
      v166 = 1107296256;
      v167 = sub_100109050;
      v168 = &unk_100284DB8;
      v127 = _Block_copy(&aBlock);
      v128 = v170;
      v129 = v68;

      v128, v130, v131, v132, v133, v134, v135, v136;
      [v114 performBlockAndWait:v127];
      _Block_release(v127);
      LOBYTE(v127) = swift_isEscapingClosureAtFileLocation();
      v124, v137, v138, v139, v140, v141, v142, v143;
      v126, v144, v145, v146, v147, v148, v149, v150;
      if ((v127 & 1) == 0)
      {
        v151 = v161;
LABEL_35:
        sub_1001AC1E4(v151, type metadata accessor for FetchChangesResponse);
        return;
      }

      __break(1u);
    }

    else if (qword_100297520 == -1)
    {
LABEL_32:
      v152 = sub_100216774();
      sub_100002648(v152, qword_10029D160);
      v153 = sub_100216754();
      v154 = sub_100216C54();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&_mh_execute_header, v153, v154, "persist: no more changes!", v155, 2u);
      }

      v162(0);
      v151 = v116;
      goto LABEL_35;
    }

    swift_once();
    goto LABEL_32;
  }

  v11 = *v27->_TtCs12_SwiftObject_opaque;
  swift_errorRetain();
  swift_errorRetain();
  v28 = sub_100216144();
  v29 = [v28 isCuttlefishError:1018];

  if (v29)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    v31 = sub_100216754();
    v32 = sub_100216C54();
    v33 = os_log_type_enabled(v31, v32);
    v12 = v160;
    if (v33)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "change token is expired; resetting local CK storage", v34, 2u);
    }

    v35 = *(v12 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v36 = swift_allocObject();
    v37 = v162;
    v38 = v163;
    *(v36 + 16) = v12;
    *(v36 + 24) = v37;
    *(v36 + 32) = v38;
    v19 = swift_allocObject();
    *v19->endpoint = sub_1001AB964;
    *v19->containerMap = v36;
    v169 = sub_1001ACCC0;
    v170 = v19;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100109050;
    v168 = &unk_100284D40;
    v39 = _Block_copy(&aBlock);
    v27 = v170;
    v40 = v12;

    v27, v41, v42, v43, v44, v45, v46, v47;
    [v35 performBlockAndWait:v39];

    _Block_release(v39);
    ChangesResponse = swift_isEscapingClosureAtFileLocation();
    v36, v48, v49, v50, v51, v52, v53, v54;
    v19, v55, v56, v57, v58, v59, v60, v61;
    if (ChangesResponse)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v69 = sub_100216774();
    sub_100002648(v69, qword_10029D160);
    swift_errorRetain();
    v70 = sub_100216754();
    v71 = sub_100216C54();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136446210;
      v171 = v11;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v74 = sub_100216994();
      v76 = v75;
      v77 = sub_100005FB0(v74, v75, &aBlock);
      v76, v78, v79, v80, v81, v82, v83, v84, v156, v157, v158, v159, v160, v161, v162, v163, v164, aBlock;
      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "Fetch error is an unknown error: %{public}s", v72, 0xCu);
      sub_100006128(v73, v85, v86, v87, v88, v89, v90, v91);
    }

    swift_errorRetain();
    v92 = sub_100216754();
    v93 = sub_100216C74();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = 136446210;
      v171 = v11;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v96 = sub_100216994();
      v98 = v97;
      v99 = sub_100005FB0(v96, v97, &aBlock);
      v98, v100, v101, v102, v103, v104, v105, v106, v156, v157, v158, v159, v160, v161, v162, v163, v164, aBlock;
      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v93, "Could not fetch changes: %{public}s", v94, 0xCu);
      sub_100006128(v95, v107, v108, v109, v110, v111, v112, v113);
    }

    v162(v11);
  }
}

void sub_10016FEB0(char *a1, uint64_t a2, uint64_t a3)
{
  sub_100175FF0();
  v6 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = swift_allocObject();
  *v8->endpoint = sub_1001ACE7C;
  *v8->containerMap = v7;
  v33[4] = sub_1001ACCC0;
  v34 = v8;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  v33[2] = sub_100109050;
  v33[3] = &unk_100284E30;
  v9 = _Block_copy(v33);
  v10 = v34;
  v11 = a1;

  v10, v12, v13, v14, v15, v16, v17, v18;
  [v6 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();
  v7, v19, v20, v21, v22, v23, v24, v25;
  v8, v26, v27, v28, v29, v30, v31, v32;
  if (a3)
  {
    __break(1u);
  }
}

void sub_1001701B4(void *a1, void (*a2)(void, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_10029D160);
    swift_errorRetain();
    v9 = sub_100216754();
    v10 = sub_100216C74();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v13 = sub_100216994();
      v15 = v14;
      v16 = sub_100005FB0(v13, v14, v31);
      v15, v17, v18, v19, v20, v21, v22, v23, a1, v31[0], v31[1], v31[2], v31[3], v32, v33, v34, v35, v36;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "fetchChangesAndUpdateTrustIfNeeded: fetching failed: %{public}s", v11, 0xCu);
      sub_100006128(v12, v24, v25, v26, v27, v28, v29, v30);
    }

    swift_errorRetain();
    a2(0, 0, a1);
  }

  else
  {
    sub_100170394(a5, a6 & 1, a2, a3);
  }
}

void sub_100170394(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a2;
  v11 = *(a1 + 80);
  *(v10 + 112) = *(a1 + 64);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v12;
  v13 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v13;
  v14 = swift_allocObject();
  *v14->endpoint = sub_1001AB680;
  *v14->containerMap = v10;
  aBlock[4] = sub_1001ACCC0;
  v42 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100284AC0;
  v15 = _Block_copy(aBlock);
  v16 = v42;
  v17 = v4;

  sub_100019C6C(a1, v40, &unk_10029D860, &qword_100226648);

  v16, v18, v19, v20, v21, v22, v23, v24;
  [v9 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v10, v26, v27, v28, v29, v30, v31, v32;
  v14, v33, v34, v35, v36, v37, v38, v39;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100170554(char *a1, void (*a2)(id, void, id), _TtC18TrustedPeersHelper6Client *a3, char a4, _OWORD *a5)
{
  v10 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100216974();
    v38 = a2;
    v14 = v13;

    strcpy(v40, "signing-key ");
    BYTE5(v40[1]) = 0;
    HIWORD(v40[1]) = -5120;
    v47._countAndFlagsBits = v12;
    v47._object = v14;
    sub_100216A14(v47);
    v15 = v40[0];
    v16 = v40[1];

    v17 = a1;

    sub_100019C6C(a5, v40, &unk_10029D860, &qword_100226648);
    sub_10019B6F8(v15, v16, v38, a3, a4 & 1, v17, v12, v14, a5);
    sub_1000114D4(a5, &unk_10029D860, &qword_100226648);
    v16, v18, v19, v20, v21, v22, v23, v24, v36, v37, v38, v40[0], v40[1], v41, v42, v43, v44, v45;
    a3, v25, v26, v27, v28, v29, v30, v31;

    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v32 = sub_100216774();
    sub_100002648(v32, qword_10029D160);
    v33 = sub_100216754();
    v34 = sub_100216C54();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "updateTrustIfNeeded: No identity.", v35, 2u);
    }

    v39 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a4 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    a2(v39, 0, 0);
  }
}

void sub_1001707E4(void *a1, uint64_t a2, void (*a3)(void, void, void), _TtC18TrustedPeersHelper6Client *a4, int a5, char *a6, char *a7, uint64_t a8, _OWORD *a9)
{
  LODWORD(v12) = a5;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v18);
  v20 = &v321 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    LODWORD(v334) = v12;
    v21 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v22 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v23 = a1;
    v24 = a7;
    v25 = v23;
    v335 = v24;
    v336 = a8;
    v26 = sub_100216964();
    aBlock[0] = 0;
    v27 = [v22 peerWithID:v26 error:aBlock];

    if (aBlock[0])
    {
      v28 = aBlock[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v29 = sub_100216774();
      sub_100002648(v29, qword_10029D160);
      v30 = v28;
      v31 = sub_100216754();
      v32 = sub_100216C74();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543362;
        v35 = v30;
        v333 = a3;
        v36 = v35;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v37;
        *v34 = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get (current self) ego peer from model: %{public}@", v33, 0xCu);
        sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);

        v30 = v31;
        v31 = v36;
        a3 = v333;
      }

      goto LABEL_8;
    }

    if (!v27)
    {
LABEL_8:
      v38 = *&a6[v21];
      v39 = [objc_msgSend(v25 "publicKey")];
      swift_unknownObjectRelease();
      v40 = sub_100216224();
      v42 = v41;

      isa = sub_100216204().super.isa;
      sub_100002BF0(v40, v42, v44, v45, v46, v47, v48, v49);
      aBlock[0] = 0;
      v50 = [v38 hasPotentiallyTrustedPeerPreapprovingKey:isa error:aBlock];

      v51 = aBlock[0];
      if (aBlock[0])
      {
        swift_willThrow();
        v52 = qword_100297520;
        v53 = v51;
        if (v52 != -1)
        {
          swift_once();
        }

        v54 = sub_100216774();
        sub_100002648(v54, qword_10029D160);
        v55 = v53;
        v56 = sub_100216754();
        v57 = sub_100216C74();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138543362;
          v60 = v55;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v58 + 4) = v61;
          *v59 = v61;
          _os_log_impl(&_mh_execute_header, v56, v57, "updateTrustIfNeeded: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v58, 0xCu);
          sub_1000114D4(v59, &qword_10029D580, &unk_10021CCC0);
        }

        v62 = v55;
        a3(0, 0, v51);
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v136 = sub_100216774();
        sub_100002648(v136, qword_10029D160);
        v137 = sub_100216754();
        v138 = sub_100216C54();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          aBlock[0] = v140;
          *v139 = 136446210;
          if (v50)
          {
            v141 = 0x6F72707061657270;
          }

          else
          {
            v141 = 0xD000000000000013;
          }

          if (v50)
          {
            v142 = 0xEB00000000646576;
          }

          else
          {
            v142 = 0x800000010023CF10;
          }

          v143 = sub_100005FB0(v141, v142, aBlock);
          v142, v144, v145, v146, v147, v148, v149, v150, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;
          *(v139 + 4) = v143;
          _os_log_impl(&_mh_execute_header, v137, v138, "updateTrustIfNeeded: ego peer is not in model, is %{public}s", v139, 0xCu);
          sub_100006128(v140, v151, v152, v153, v154, v155, v156, v157);
        }

        v158 = v334;
        v159 = objc_allocWithZone(TrustedPeersHelperPeerState);
        v160 = sub_100216964();
        v161 = [v159 initWithPeerID:v160 isPreapproved:v50 status:32 memberChanges:v158 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];

        a3(v161, 0, 0);
      }

      goto LABEL_42;
    }

    v86 = v27;
    v332 = [v86 dynamicInfo];
    v87 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v332, v88);
    *(&v321 - 4) = a6;
    *(&v321 - 3) = a3;
    v320 = a4;
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    v331 = v87;
    sub_100216D34();
    v89 = aBlock[0];
    if (!aBlock[0])
    {

      v25 = v86;
      goto LABEL_42;
    }

    v322 = 0;
    v90 = swift_allocObject();
    v91 = v25;
    v92 = v335;
    *(v90 + 16) = a6;
    *(v90 + 24) = v92;
    *(v90 + 32) = v336;
    *(v90 + 40) = v25;
    v93 = a9[5];
    *(v90 + 112) = a9[4];
    *(v90 + 128) = v93;
    v94 = *(a9 + 12);
    v95 = a9[1];
    *(v90 + 48) = *a9;
    *(v90 + 64) = v95;
    v96 = a9[3];
    *(v90 + 80) = a9[2];
    *(v90 + 96) = v96;
    *(v90 + 144) = v94;
    *(v90 + 152) = v86;
    v333 = a3;
    *(v90 + 160) = a3;
    *(v90 + 168) = a4;
    HIDWORD(v321) = v334 & 1;
    *(v90 + 176) = v334 & 1;
    v97 = v332;
    v324 = v90;
    *(v90 + 184) = v332;
    v98 = swift_allocObject();
    v326 = v98;
    *v98->endpoint = v89;
    endpoint = v98->endpoint;
    v334 = swift_allocObject();
    v330 = v91;
    v327 = v86;
    v100 = a6;

    sub_100019C6C(a9, aBlock, &unk_10029D860, &qword_100226648);

    v101 = v97;
    v330 = v330;
    v327 = v327;
    v102 = v100;

    v329 = a9;
    sub_100019C6C(a9, aBlock, &unk_10029D860, &qword_100226648);
    v328 = a4;
    v103 = endpoint;

    v325 = v101;
    v323 = v89;

    v104 = sub_100019440(_swiftEmptyArrayStorage);
    v105 = v334;
    *v334->endpoint = v104;
    v106 = swift_allocObject();
    *(v106 + 16) = endpoint;
    *(v106 + 24) = v102;
    *(v106 + 32) = v105->endpoint;
    v107 = swift_allocObject();
    *v107->endpoint = sub_1001ACE80;
    *v107->containerMap = v106;
    aBlock[4] = sub_1001ACCC0;
    v340 = v107;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284B60;
    v108 = _Block_copy(aBlock);
    v109 = v340;
    v110 = v102;

    v109, v111, v112, v113, v114, v115, v116, v117;
    [v331 performBlockAndWait:v108];
    _Block_release(v108);
    LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();
    v107, v118, v119, v120, v121, v122, v123, v124;
    if (v108)
    {
      __break(1u);
    }

    else
    {
      v127 = *v103;
      if ((*v103 & 0xC000000000000001) != 0)
      {

        v128 = sub_100216ED4();
        v127, v129, v130, v131, v132, v133, v134, v135, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;
      }

      else
      {
        v128 = *v127->endpoint;
      }

      v162 = v329;
      v163 = v332;
      v332 = v106;
      if (v128)
      {
        __chkstk_darwin(v125, v126);
        v320 = v164;
        sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
        sub_100216654();
        v166 = *&v110[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v165 = *&v110[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v110[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v166);
        v167 = swift_allocObject();
        *(v167 + 16) = v110;
        *(v167 + 24) = sub_1001AB6B4;
        v168 = v324;
        v169 = v110;
        v170 = v326;
        *(v167 + 32) = v324;
        *(v167 + 40) = v170;
        v171 = v334;
        *(v167 + 48) = v334;
        v172 = *(v165 + 16);
        v173 = *(v172 + 80);
        v335 = v169;

        v173(v20, sub_1001ACE2C, v167, v166, v172);
        v167, v174, v175, v176, v177, v178, v179, v180;
        sub_1001AC1E4(v20, type metadata accessor for FetchPolicyDocumentsRequest);
        v181 = v327;

        v182 = v325;
        v168, v183, v184, v185, v186, v187, v188, v189;
        v332, v190, v191, v192, v193, v194, v195, v196;
        v170, v197, v198, v199, v200, v201, v202, v203;
        v171, v204, v205, v206, v207, v208, v209, v210;
        sub_1000114D4(v329, &unk_10029D860, &qword_100226648);
        v323, v211, v212, v213, v214, v215, v216, v217, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;

        v328, v218, v219, v220, v221, v222, v223, v224;
        v232 = v336;
LABEL_41:
        v232, v225, v226, v227, v228, v229, v230, v231, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;
        v25 = v330;

        goto LABEL_42;
      }

      v233 = v110;
      v322 = *v334->endpoint;
      v234 = swift_allocObject();
      v235 = v335;
      *(v234 + 16) = v110;
      *(v234 + 24) = v235;
      v236 = v336;
      v237 = v330;
      *(v234 + 32) = v336;
      *(v234 + 40) = v237;
      v238 = v162[5];
      *(v234 + 112) = v162[4];
      *(v234 + 128) = v238;
      v239 = *(v162 + 12);
      v240 = v162[1];
      *(v234 + 48) = *v162;
      *(v234 + 64) = v240;
      v241 = v162[3];
      *(v234 + 80) = v162[2];
      *(v234 + 96) = v241;
      v242 = v327;
      *(v234 + 144) = v239;
      *(v234 + 152) = v242;
      v243 = v328;
      *(v234 + 160) = v333;
      *(v234 + 168) = v243;
      *(v234 + 176) = BYTE4(v321);
      *(v234 + 184) = v163;
      v244 = swift_allocObject();
      *v244->endpoint = sub_1001AB750;
      *v244->containerMap = v234;
      v337[4] = sub_1001ACCC0;
      v338 = v244;
      v337[0] = _NSConcreteStackBlock;
      v337[1] = 1107296256;
      v337[2] = sub_100109050;
      v337[3] = &unk_100284C00;
      v245 = _Block_copy(v337);
      v246 = v338;
      v330 = v237;
      v247 = v242;
      v335 = v233;

      sub_100019C6C(v162, aBlock, &unk_10029D860, &qword_100226648);

      v248 = v325;
      v249 = v322;

      v246, v250, v251, v252, v253, v254, v255, v256;
      [v331 performBlockAndWait:v245];
      _Block_release(v245);
      LOBYTE(v246) = swift_isEscapingClosureAtFileLocation();

      v324, v257, v258, v259, v260, v261, v262, v263;
      v332, v264, v265, v266, v267, v268, v269, v270;
      v326, v271, v272, v273, v274, v275, v276, v277;
      v334, v278, v279, v280, v281, v282, v283, v284;
      v249, v285, v286, v287, v288, v289, v290, v291, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;
      v234, v292, v293, v294, v295, v296, v297, v298;
      v244, v299, v300, v301, v302, v303, v304, v305;
      if ((v246 & 1) == 0)
      {
        sub_1000114D4(v162, &unk_10029D860, &qword_100226648);
        v323, v306, v307, v308, v309, v310, v311, v312, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;

        v328, v313, v314, v315, v316, v317, v318, v319;
        v232 = v236;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

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
    v337[0] = a2;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v68 = sub_100216994();
    v70 = v69;
    v71 = v12;
    v12 = sub_100005FB0(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330;
    *(v66 + 4) = v12;
    LOBYTE(v12) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "updateTrustIfNeeded: no signing key pair: %{public}s", v66, 0xCu);
    sub_100006128(v67, v79, v80, v81, v82, v83, v84, v85);
  }

  v25 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:v12 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
  a3(v25, 0, a2);
LABEL_42:
}

void sub_1001718E8(uint64_t a1@<X0>, void (*a2)(void, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
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
    a2(0, 0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100171B68(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, uint64_t *a5, void *a6, void (*a7)(id, void *, void), uint64_t a8, char a9, id a10)
{
  v512 = a7;
  v504 = type metadata accessor for SignedPeerStableInfo(0);
  v503 = *(v504 - 1);
  __chkstk_darwin(v504, v17);
  v502 = (&v496 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for UpdateTrustRequest(0);
  __chkstk_darwin(updated, v19);
  v508 = &v496 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v506 = type metadata accessor for SignedPeerDynamicInfo(0);
  __chkstk_darwin(v506, v21);
  v510 = (&v496 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v515 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v23 = *&a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v516 = a2;
  v517 = a3;
  v24 = sub_100216964();
  v518 = a1;
  v25 = [*&a1->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v26 = &_swiftEmptySetSingleton;
  v513 = a8;
  if (v25)
  {
    v27 = v25;
    v519[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v519[0])
    {
      v26 = v519[0];
    }
  }

  LODWORD(v514) = a9;
  sub_100108644(v26);
  v29 = v28;
  v26, v30, v31, v32, v33, v34, v35, v36, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
  v37 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v29, v39, v40, v41, v42, v43, v44, v45, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
  v46 = [v37 initWithEntries:isa];

  v519[0] = 0;
  v47 = [v23 calculateDynamicInfoForPeerWithID:v24 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:a4 currentMachineIDs:v46 error:v519];

  v511 = v47;
  if (v47)
  {
    v48 = v519[0];
    v49 = v47;
    v50 = [a6 permanentInfo];
    v51 = [a6 stableInfo];
    v52 = a5;
    v53 = sub_100179B48(a5, v50, v51, v49, a4, 0);
    v509 = 0;
    v505 = v53;

    v98 = v515;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v99 = sub_100216774();
    v501 = sub_100002648(v99, qword_10029D160);
    v100 = sub_100216754();
    v101 = sub_100216C54();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v519[0] = v103;
      *v102 = 136446210;
      v520 = v505;
      v104 = v505;
      sub_10001148C(&qword_10029DA38, &unk_100226760);
      v105 = sub_100216994();
      v107 = v106;
      v108 = sub_100005FB0(v105, v106, v519);
      v107, v109, v110, v111, v112, v113, v114, v115, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
      *(v102 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v100, v101, "updateTrustIfNeeded: produced a stableInfo: %{public}s", v102, 0xCu);
      sub_100006128(v103, v116, v117, v118, v119, v120, v121, v122);
    }

    v123 = v49;
    v124 = sub_100216754();
    v125 = sub_100216C54();

    v126 = os_log_type_enabled(v124, v125);
    v499 = v123;
    v497 = v52;
    if (v126)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v519[0] = v128;
      *v127 = 136446210;
      v129 = v123;
      v130 = [(__CFString *)v129 description];
      v131 = sub_100216974();
      v133 = v132;

      v134 = sub_100005FB0(v131, v133, v519);
      v133, v135, v136, v137, v138, v139, v140, v141, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
      *(v127 + 4) = v134;
      v123 = v499;
      _os_log_impl(&_mh_execute_header, v124, v125, "updateTrustIfNeeded: produced a dynamicInfo: %{public}s", v127, 0xCu);
      sub_100006128(v128, v142, v143, v144, v145, v146, v147, v148);
    }

    v149 = *&v518->_TtCs12_SwiftObject_opaque[v98];
    v150 = sub_100216964();
    v519[0] = 0;
    v151 = [v149 peerWithID:v150 error:v519];

    if (v519[0])
    {
      v152 = v519[0];

      swift_willThrow();
      v509 = 0;
      v153 = v152;
      v154 = sub_100216754();
      v155 = sub_100216C74();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *v156 = 138543362;
        v158 = v153;
        v159 = _swift_stdlib_bridgeErrorToNSError();
        *(v156 + 4) = v159;
        *v157 = v159;
        _os_log_impl(&_mh_execute_header, v154, v155, "Error getting ego peer from model: %{public}@", v156, 0xCu);
        sub_1000114D4(v157, &qword_10029D580, &unk_10021CCC0);
        v123 = v499;
      }

      else
      {
      }

      v151 = 0;
    }

    else
    {
      v160 = v151;
    }

    v500 = v151;
    if (v505)
    {
      v161 = v505;
      v162 = [v151 stableInfo];
      if (!v162)
      {
LABEL_39:

        goto LABEL_40;
      }

      v163 = v162;
      sub_10000200C(0, &qword_10029DA30, TPPeerStableInfo_ptr);
      v164 = sub_100216DC4();

      if ((v164 & 1) == 0)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    v161 = v123;
    v165 = [v151 dynamicInfo];
    if (v165)
    {
      v166 = v165;
      sub_10000200C(0, &qword_10029D858, TPPeerDynamicInfo_ptr);
      v167 = sub_100216DC4();

      if (v167)
      {
        v168 = sub_100216754();
        v169 = sub_100216C54();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&_mh_execute_header, v168, v169, "updateTrustIfNeeded: complete.", v170, 2u);
        }

        v171 = v518;
        sub_1001E5AA8(v161);
        v172 = *&v171->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v519[0] = 0;
        if ([v172 save:v519])
        {
          v173 = v519[0];
        }

        else
        {
          v210 = v519[0];
          v211 = sub_100216154();

          swift_willThrow();
          v509 = 0;
          swift_errorRetain();
          v212 = sub_100216754();
          v213 = sub_100216C74();

          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            v519[0] = v215;
            *v214 = 136446210;
            v520 = v211;
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v216 = sub_100216994();
            v218 = v217;
            v219 = sub_100005FB0(v216, v217, v519);
            v218, v220, v221, v222, v223, v224, v225, v226, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
            *(v214 + 4) = v219;
            v151 = v500;
            _os_log_impl(&_mh_execute_header, v212, v213, "updateTrustIfNeeded: unable to remove untrusted MachineIDs: %{public}s", v214, 0xCu);
            sub_100006128(v215, v227, v228, v229, v230, v231, v232, v233);
          }

          else
          {
          }
        }

        if (v151)
        {
          v234 = v151;
          v235 = [v234 stableInfo];
          if (v235)
          {
            v236 = v235;
            v237 = [v234 permanentInfo];
            v238 = [v237 modelID];

            v239 = sub_100216974();
            v241 = v240;

            v242 = v509;
            v243 = sub_100151404(v239, v241, v236);
            if (v242)
            {

              v241, v251, v252, v253, v254, v255, v256, v257, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
              swift_errorRetain();
              v258 = sub_100216754();
              v259 = sub_100216C74();

              if (os_log_type_enabled(v258, v259))
              {
                v260 = swift_slowAlloc();
                v261 = swift_slowAlloc();
                v519[0] = v261;
                *v260 = 136446210;
                v520 = v242;
                swift_errorRetain();
                sub_10001148C(&unk_10029D560, qword_10021D450);
                v262 = sub_100216994();
                v264 = v263;
                v265 = sub_100005FB0(v262, v263, v519);
                v264, v266, v267, v268, v269, v270, v271, v272, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
                *(v260 + 4) = v265;
                v151 = v500;
                _os_log_impl(&_mh_execute_header, v258, v259, "updateTrustIfNeeded: unable to compute a new syncing policy: %{public}s", v260, 0xCu);
                sub_100006128(v261, v273, v274, v275, v276, v277, v278, v279);
              }

              else
              {
              }

              v280 = 0;
            }

            else
            {
              v280 = v243;
              v241, v244, v245, v246, v247, v248, v249, v250, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;

              v281 = v280;
            }
          }

          else
          {

            v280 = 0;
          }
        }

        else
        {
          v280 = 0;
        }

        v282 = *&v518->_TtCs12_SwiftObject_opaque[v98];
        v283 = sub_100216964();
        v519[0] = 0;
        v284 = [v282 statusOfPeerWithID:v283 error:v519];

        v285 = v519[0];
        if (v519[0])
        {
          swift_willThrow();
          v286 = v285;
          v287 = sub_100216754();
          v288 = sub_100216C74();

          if (os_log_type_enabled(v287, v288))
          {
            v289 = swift_slowAlloc();
            v290 = swift_slowAlloc();
            *v289 = 138543362;
            v291 = v286;
            v292 = _swift_stdlib_bridgeErrorToNSError();
            *(v289 + 4) = v292;
            *v290 = v292;
            _os_log_impl(&_mh_execute_header, v287, v288, "updateTrustIfNeeded: ignoring additional error calling statusOfPeer: %{public}@", v289, 0xCu);
            sub_1000114D4(v290, &qword_10029D580, &unk_10021CCC0);

            v286 = v287;
            v287 = v291;
            v151 = v500;
          }

          v284 = 32;
        }

        v293 = sub_1001E4538();
        if (v151 && (v294 = [v151 stableInfo]) != 0)
        {
          v295 = v161;
          v296 = v294;
          v297 = [v294 osVersion];

          sub_100216974();
          v299 = v298;

          v151 = v500;
        }

        else
        {
          v295 = v161;
          v299 = 0;
        }

        v300 = v151;
        v301 = [v151 stableInfo];
        v302 = [v301 walrusSetting];

        v303 = [v300 stableInfo];
        v304 = [v303 webAccess];

        v305 = sub_100216964();
        if (v299)
        {
          v306 = sub_100216964();
          v299, v307, v308, v309, v310, v311, v312, v313, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
        }

        else
        {
          v306 = 0;
        }

        v314 = objc_allocWithZone(TrustedPeersHelperPeerState);
        v315 = [v314 initWithPeerID:v305 isPreapproved:0 status:v284 memberChanges:v514 & 1 unknownMachineIDs:v293 osVersion:v306 walrus:v302 webAccess:v304];

        v512(v315, v280, 0);
LABEL_99:
        v97 = v505;
LABEL_100:

        return;
      }

LABEL_41:
      if (a10)
      {
        v174 = [a10 excludedPeerIDs];
        v496 = sub_100216BB4();
      }

      else
      {
        v496 = &_swiftEmptySetSingleton;
      }

      v175 = [(__CFString *)v123 excludedPeerIDs];
      v498 = sub_100216BB4();

      v176 = [*&v518->_TtCs12_SwiftObject_opaque[v98] allCustodianRecoveryKeys];
      sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
      v177 = sub_100216B24();

      if (v177 >> 62)
      {
        v185 = sub_1002170F4();
        if (v185)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v185 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v185)
        {
LABEL_46:
          v519[0] = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v185 & ~(v185 >> 63), 0, v180, v181, v182, v183, v184);
          if (v185 < 0)
          {
            __break(1u);
          }

          v186 = 0;
          v187 = v519[0];
          do
          {
            if ((v177 & 0xC000000000000001) != 0)
            {
              v188 = sub_100217014();
            }

            else
            {
              v188 = *(v177 + 8 * v186 + 32);
            }

            v189 = v188;
            v190 = [v188 peerID];
            v191 = sub_100216974();
            v193 = v192;

            v519[0] = v187;
            v202 = *v187->endpoint;
            v201 = *v187->containerMap;
            if (v202 >= v201 >> 1)
            {
              sub_1001877A4((v201 > 1), v202 + 1, 1, v196, v197, v198, v199, v200);
              v187 = v519[0];
            }

            ++v186;
            *v187->endpoint = v202 + 1;
            v203 = v187 + 16 * v202;
            *(v203 + 4) = v191;
            *(v203 + 5) = v193;
          }

          while (v185 != v186);
          v177, v194, v195, v196, v197, v198, v199, v200, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
          v151 = v500;
LABEL_82:
          v316 = v496;
          v317 = v517;
          v318 = v499;
          if (*v496->endpoint <= *v498->endpoint >> 3)
          {
            v519[0] = v498;
            sub_10018E8F8(v496);
            v316, v327, v328, v329, v330, v331, v332, v333, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
            v319 = v519[0];
          }

          else
          {
            v319 = sub_10018EA24(v496, v498, v204, v205, v206, v207, v208, v209);
            v316, v320, v321, v322, v323, v324, v325, v326, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
          }

          v334 = sub_10018EF94(v187, v319);
          v187, v335, v336, v337, v338, v339, v340, v341, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
          if (*v334->endpoint)
          {

            v349 = sub_100216754();
            v350 = sub_100216C74();
            v334, v351, v352, v353, v354, v355, v356, v357;
            if (os_log_type_enabled(v349, v350))
            {
              v365 = swift_slowAlloc();
              v366 = swift_slowAlloc();
              v519[0] = v366;
              *v365 = 136315138;
              v367 = sub_100216BC4();
              v369 = v368;
              v334, v368, v370, v371, v372, v373, v374, v375;
              v376 = v367;
              v317 = v517;
              v377 = sub_100005FB0(v376, v369, v519);
              v378 = v369;
              v151 = v500;
              v378, v379, v380, v381, v382, v383, v384, v385, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
              *(v365 + 4) = v377;
              _os_log_impl(&_mh_execute_header, v349, v350, "Found CRKs that are being distrusted: %s", v365, 0xCu);
              sub_100006128(v366, v386, v387, v388, v389, v390, v391, v392);
              v318 = v499;
            }

            else
            {
              v334, v358, v359, v360, v361, v362, v363, v364;
            }

            v394 = objc_allocWithZone(SecTapToRadar);
            v395 = sub_100216964();
            v396 = sub_100216964();
            v397 = sub_100216964();
            v398 = [v394 initTapToRadar:v395 description:v396 radar:v397];

            [v398 trigger];
            if (v514)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v334, v342, v343, v344, v345, v346, v347, v348;
            if (v514)
            {
LABEL_92:
              LODWORD(v515) = 1;
              goto LABEL_93;
            }
          }

          v393 = [v151 dynamicInfo];
          LODWORD(v515) = sub_1001A81A4(v318, v393);

LABEL_93:
          v399 = v510;
          *v510 = xmmword_10021D470;
          v399[1] = xmmword_10021D470;
          v506 = xmmword_10021D470;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v400 = [(__CFString *)v318 data];
          v401 = sub_100216224();
          v403 = v402;

          sub_100002BF0(*v399, *(v399 + 1), v404, v405, v406, v407, v408, v409);
          *v399 = v401;
          *(v399 + 1) = v403;
          v410 = [(__CFString *)v318 sig];
          v411 = sub_100216224();
          v413 = v412;

          sub_100002BF0(*(v399 + 2), *(v399 + 3), v414, v415, v416, v417, v418, v419);
          *(v399 + 2) = v411;
          *(v399 + 3) = v413;
          v420 = v318;

          v421 = sub_100216754();
          v422 = sub_100216C54();

          v317, v423, v424, v425, v426, v427, v428, v429, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
          v430 = os_log_type_enabled(v421, v422);
          v514 = v420;
          if (v430)
          {
            v431 = swift_slowAlloc();
            v432 = swift_slowAlloc();
            v433 = swift_slowAlloc();
            v519[0] = v433;
            *v431 = 136446466;
            v434 = v516;
            *(v431 + 4) = sub_100005FB0(v516, v517, v519);
            *(v431 + 12) = 2114;
            *(v431 + 14) = v420;
            *v432 = v511;
            v435 = v420;
            _os_log_impl(&_mh_execute_header, v421, v422, "updateTrustIfNeeded: attempting updateTrust for %{public}s with: %{public}@", v431, 0x16u);
            sub_1000114D4(v432, &qword_10029D580, &unk_10021CCC0);

            sub_100006128(v433, v436, v437, v438, v439, v440, v441, v442);
            v317 = v517;
          }

          else
          {

            v434 = v516;
          }

          v445 = v508;
          v446 = updated;
          __chkstk_darwin(v443, v444);
          *(&v496 - 4) = v518;
          *(&v496 - 3) = v434;
          v494 = v317;
          v495 = v510;
          sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);
          sub_100216654();
          v447 = v505;
          if (v505)
          {
            v448 = v502;
            v449 = v506;
            *v502 = v506;
            *(v448 + 16) = v449;
            v450 = v504;
            v451 = v447;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v452 = [(__CFString *)v451 data];
            v453 = sub_100216224();
            v454 = v446;
            v456 = v455;

            sub_100002BF0(*v448, *(v448 + 8), v457, v458, v459, v460, v461, v462);
            *v448 = v453;
            *(v448 + 8) = v456;
            v463 = [(__CFString *)v451 sig];
            v464 = sub_100216224();
            v466 = v465;

            sub_100002BF0(*(v448 + 16), *(v448 + 24), v467, v468, v469, v470, v471, v472);
            *(v448 + 16) = v464;
            *(v448 + 24) = v466;
            v473 = *(v454 + 36);
            sub_1000114D4(&v445[v473], &qword_1002985A8, &unk_100226650);
            sub_1001AC038(v448, &v445[v473], type metadata accessor for SignedPeerStableInfo);
            (*(v503 + 7))(&v445[v473], 0, 1, v450);
          }

          v474 = v518;
          v475 = *&v518->containerMap[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          v476 = *&v518[1]._TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
          sub_100006484(&v518->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v475);
          v477 = swift_allocObject();
          v478 = v445;
          v479 = v497;
          v480 = *(v497 + 2);
          *(v477 + 88) = *(v497 + 3);
          v481 = *(v479 + 5);
          *(v477 + 104) = *(v479 + 4);
          *(v477 + 120) = v481;
          v482 = *(v479 + 1);
          *(v477 + 40) = *v479;
          *(v477 + 56) = v482;
          v483 = v512;
          *(v477 + 16) = v474;
          *(v477 + 24) = v483;
          *(v477 + 32) = v513;
          *(v477 + 136) = v479[12];
          *(v477 + 72) = v480;
          *(v477 + 144) = v515 & 1;
          v484 = *(v476 + 16);
          v485 = *(v484 + 32);
          v486 = v474;

          sub_100019C6C(v479, v519, &unk_10029D860, &qword_100226648);
          v485(v478, sub_1001ACE34, v477, v475, v484);
          v477, v487, v488, v489, v490, v491, v492, v493;

          sub_1001AC1E4(v478, type metadata accessor for UpdateTrustRequest);
          sub_1001AC1E4(v510, type metadata accessor for SignedPeerDynamicInfo);
          goto LABEL_99;
        }
      }

      v177, v178, v179, v180, v181, v182, v183, v184, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
      v187 = _swiftEmptyArrayStorage;
      goto LABEL_82;
    }

    goto LABEL_39;
  }

  v54 = v519[0];
  v55 = sub_100216154();

  swift_willThrow();
  v56 = v515;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v57 = sub_100216774();
  sub_100002648(v57, qword_10029D160);
  swift_errorRetain();
  v58 = sub_100216754();
  v59 = sub_100216C54();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v519[0] = v61;
    *v60 = 136446210;
    v520 = v55;
    v62 = v55;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v63 = sub_100216994();
    v65 = v64;
    v66 = sub_100005FB0(v63, v64, v519);
    v65, v67, v68, v69, v70, v71, v72, v73, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505;
    *(v60 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "updateTrustIfNeeded: couldn't calculate dynamic info: %{public}s", v60, 0xCu);
    sub_100006128(v61, v74, v75, v76, v77, v78, v79, v80);
  }

  else
  {
    v62 = v55;
  }

  v81 = v512;
  v82 = *&v518->_TtCs12_SwiftObject_opaque[v56];
  v83 = sub_100216964();
  v519[0] = 0;
  v84 = [v82 statusOfPeerWithID:v83 error:v519];

  v85 = v519[0];
  if (v519[0])
  {
    swift_willThrow();
    v86 = v85;
    v87 = sub_100216754();
    v88 = sub_100216C74();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543362;
      v91 = v86;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&_mh_execute_header, v87, v88, "updateTrustIfNeeded: ignoring additional error calling statusOfPeer: %{public}@", v89, 0xCu);
      sub_1000114D4(v90, &qword_10029D580, &unk_10021CCC0);

      v86 = v87;
      v87 = v91;
    }

    v93 = v514;

    v84 = 32;
  }

  else
  {
    v93 = v514;
  }

  v94 = objc_allocWithZone(TrustedPeersHelperPeerState);
  v95 = sub_100216964();
  v96 = [v94 initWithPeerID:v95 isPreapproved:0 status:v84 memberChanges:v93 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];

  swift_errorRetain();
  v81(v96, 0, v62);

  v97 = v511;
  if (v511)
  {
    goto LABEL_100;
  }
}

uint64_t sub_100173834(uint64_t *a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v49 = a6;
  v45 = a3;
  v46 = a5;
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v52 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignedPeerDynamicInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v17 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
  if (v17)
  {
    v25 = v17;
    v26 = sub_100216974();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  a1[1], v18, v19, v20, v21, v22, v23, v24, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54;
  *a1 = v26;
  a1[1] = v28;
  v29 = a1[3];

  v29, v30, v31, v32, v33, v34, v35, v36, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54;
  v37 = v46;
  a1[2] = v45;
  a1[3] = a4;
  sub_1001AC0A0(v37, v16, type metadata accessor for SignedPeerDynamicInfo);
  updated = type metadata accessor for UpdateTrustRequest(0);
  v39 = *(updated + 40);
  sub_1000114D4(a1 + v39, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v16, a1 + v39, type metadata accessor for SignedPeerDynamicInfo);
  v40 = (*(v13 + 56))(a1 + v39, 0, 1, v12);
  __chkstk_darwin(v40, v41);
  *(&v45 - 2) = v47;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  v42 = v48;
  sub_100216654();
  v43 = *(updated + 44);
  sub_1000114D4(a1 + v43, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v42, a1 + v43, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v52 + 7))(a1 + v43, 0, 1, v9);
}

uint64_t sub_100173B5C(void *a1, char *a2, void (*a3)(void, void, uint64_t), void *a4, _OWORD *a5, int a6)
{
  HIDWORD(v107) = a6;
  v108 = a5;
  v112 = a4;
  v111 = a3;
  v109 = a2;
  v110 = a1;
  v6 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v106 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v104 - v11;
  v13 = type metadata accessor for Changes(0);
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v104 - v19;
  updated = type metadata accessor for UpdateTrustResponse(0);
  __chkstk_darwin(updated, v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  __chkstk_darwin(v25, v26);
  v28 = (&v104 - v27);
  sub_100019C6C(v110, &v104 - v27, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001AC038(v28, v24, type metadata accessor for UpdateTrustResponse);
    v54 = *(updated + 24);
    sub_100019C6C(&v24[v54], v12, &unk_10029D750, &qword_10021E850);
    v55 = *(v14 + 48);
    if (v55(v12, 1, v13) == 1)
    {
      *v20 = 0;
      *(v20 + 1) = 0xE000000000000000;
      *(v20 + 2) = _swiftEmptyArrayStorage;
      *(v20 + 24) = xmmword_10021D470;
      *(v20 + 40) = xmmword_10021D470;
      v20[56] = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v56 = v13;
      v57 = v55(v12, 1, v13);
      v59 = v109;
      if (v57 != 1)
      {
        v57 = sub_1000114D4(v12, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v56 = v13;
      v57 = sub_1001AC038(v12, v20, type metadata accessor for Changes);
      v59 = v109;
    }

    v60 = *&v59[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v57, v58);
    *(&v104 - 4) = v20;
    *(&v104 - 3) = v59;
    *(&v104 - 16) = 0;
    sub_100216D34();
    sub_1001AC1E4(v20, type metadata accessor for Changes);
    v61 = v106;
    sub_100019C6C(&v24[v54], v106, &unk_10029D750, &qword_10021E850);
    if (v55(v61, 1, v56) == 1)
    {
      v62 = v105;
      *v105 = 0;
      *(v62 + 1) = 0xE000000000000000;
      *(v62 + 2) = _swiftEmptyArrayStorage;
      *(v62 + 24) = xmmword_10021D470;
      *(v62 + 40) = xmmword_10021D470;
      v62[56] = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v55(v61, 1, v56) != 1)
      {
        sub_1000114D4(v61, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v62 = v105;
      sub_1001AC038(v61, v105, type metadata accessor for Changes);
    }

    v63 = v62[56];
    sub_1001AC1E4(v62, type metadata accessor for Changes);
    if (v63)
    {
      v64 = swift_allocObject();
      v65 = v108;
      v66 = v108[2];
      *(v64 + 88) = v108[3];
      v67 = v65[5];
      *(v64 + 104) = v65[4];
      *(v64 + 120) = v67;
      v68 = v65[1];
      *(v64 + 40) = *v65;
      *(v64 + 56) = v68;
      v69 = v112;
      *(v64 + 16) = v111;
      *(v64 + 24) = v69;
      *(v64 + 32) = v59;
      *(v64 + 136) = *(v65 + 12);
      *(v64 + 72) = v66;
      *(v64 + 144) = BYTE4(v107) & 1;
      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *(v70 + 24) = v59;
      *(v70 + 32) = sub_1001A9BF8;
      *(v70 + 40) = v64;
      v71 = swift_allocObject();
      *v71->endpoint = sub_100056B20;
      *v71->containerMap = v70;
      aBlock[4] = sub_1001ACCC0;
      v115 = v71;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100109050;
      aBlock[3] = &unk_100282FB8;
      v72 = _Block_copy(aBlock);
      v73 = v115;
      v74 = v59;

      sub_100019C6C(v65, v113, &unk_10029D860, &qword_100226648);

      v73, v75, v76, v77, v78, v79, v80, v81;
      [v60 performBlockAndWait:v72];
      _Block_release(v72);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
      v64, v83, v84, v85, v86, v87, v88, v89;
      v70, v90, v91, v92, v93, v94, v95, v96;
      v71, v97, v98, v99, v100, v101, v102, v103;
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return sub_1001AC1E4(v24, type metadata accessor for UpdateTrustResponse);
      }

      __break(1u);
    }

    sub_100170394(v108, BYTE4(v107) & 1, v111, v112);
    return sub_1001AC1E4(v24, type metadata accessor for UpdateTrustResponse);
  }

  v29 = *v28;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v30 = sub_100216774();
  sub_100002648(v30, qword_10029D160);
  swift_errorRetain();
  v31 = sub_100216754();
  v32 = sub_100216C74();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v113[0] = v34;
    *v33 = 136446210;
    aBlock[0] = v29;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v35 = sub_100216994();
    v37 = v36;
    v38 = sub_100005FB0(v35, v36, v113);
    v37, v39, v40, v41, v42, v43, v44, v45, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0];
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "UpdateTrust failed: %{public}s", v33, 0xCu);
    sub_100006128(v34, v46, v47, v48, v49, v50, v51, v52);
  }

  swift_errorRetain();
  (v111)(0, 0, v29);
}

void sub_10017458C(id a1, void *a2, int a3)
{
  HIDWORD(v51) = a3;
  v5 = type metadata accessor for Changes(0);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v48 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v48 - v15;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  v18 = sub_100002648(v17, qword_10029D160);
  sub_1001AC0A0(a1, v16, type metadata accessor for Changes);
  sub_1001AC0A0(a1, v13, type metadata accessor for Changes);
  v50 = v18;
  v19 = sub_100216754();
  v20 = sub_100216C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = a1;
    v22 = v21;
    *v21 = 134218240;
    v23 = *(v16 + 2);
    v48 = a2;
    v24 = *(v23 + 16);
    sub_1001AC1E4(v16, type metadata accessor for Changes);
    *(v22 + 1) = v24;
    *(v22 + 6) = 1024;
    LODWORD(v24) = v13[56];
    sub_1001AC1E4(v13, type metadata accessor for Changes);
    *(v22 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "persist: Received %ld peer differences, more: %{BOOL}d", v22, 0x12u);
    a1 = v49;
  }

  else
  {
    sub_1001AC1E4(v13, type metadata accessor for Changes);
    sub_1001AC1E4(v16, type metadata accessor for Changes);
  }

  sub_1001AC0A0(a1, v9, type metadata accessor for Changes);
  v25 = sub_100216754();
  v26 = sub_100216C54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 136446210;
    v29 = a1;
    v30 = v9;
    v31 = *v9;
    v32 = v9[1];

    sub_1001AC1E4(v30, type metadata accessor for Changes);
    v33 = sub_100005FB0(v31, v32, v53);
    v32, v34, v35, v36, v37, v38, v39, v40, v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4];
    *(v27 + 4) = v33;
    a1 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "persist: New change token: %{public}s", v27, 0xCu);
    sub_100006128(v28, v41, v42, v43, v44, v45, v46, v47);
  }

  else
  {

    sub_1001AC1E4(v9, type metadata accessor for Changes);
  }

  sub_100174C2C(a1, BYTE4(v51) & 1);
}

void sub_100174944(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2)
{
  v4 = v3;
  v7 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_100216974();
  v11 = v10;

  if (v9 == a1 && v11 == a2)
  {
    v11, v12, v13, v14, v15, v16, v17, v18, v60, v63, v65, v67, v69, v71, v73, v75, v77, v79;
    goto LABEL_9;
  }

  v20 = sub_1002171A4();
  v11, v21, v22, v23, v24, v25, v26, v27, v60, v63, v65, v67, v69, v71, v73, v75, v77, v79;
  if (v20)
  {
LABEL_9:
    v28 = kSecurityRTCErrorDomain;
    sub_10001148C(&unk_10029DA20, &unk_100226750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = sub_100216974();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000025;
    *(inited + 56) = 0x800000010023CEE0;
    v31 = v28;
    v32 = sub_10001900C(inited);
    swift_setDeallocating();
    sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
    v33 = objc_allocWithZone(NSError);
    isa = sub_1002168C4().super.isa;
    v32, v35, v36, v37, v38, v39, v40, v41, v61, v64, v66, v68, v70, v72, v74, v76, v78, v80;
    v42 = [v33 initWithDomain:v31 code:11 userInfo:isa];

    v43 = kSecurityRTCEventNameOctagonTrustLost;
    sub_1001A9F94();
    LOBYTE(v62) = 1;
    v45 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:0 flowID:0 deviceSessionID:0 eventName:v43 testsAreEnabled:v44 canSendMetrics:v62 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v46 = v42;
    v47 = sub_100216144();

    [v45 sendMetricWithResult:1 error:v47];
  }

LABEL_10:
  v48 = *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v49 = *v48->endpoint;
  v50 = *v48->containerMap;

  v51 = sub_10019CE9C(v49, v50, a1, a2);
  v48, v52, v53, v54, v55, v56, v57, v58;
  if (v4)
  {
    v59 = 1;
  }

  else
  {
    v59 = v51 == 0;
  }

  if (!v59)
  {
    [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc) deleteObject:v51];
  }
}

void sub_100174C2C(uint64_t *a1, int a2)
{
  v4 = v2;
  LODWORD(v56) = a2;
  v6 = type metadata accessor for PeerDifference(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
  v13 = a1;
  v14 = sub_100216964();
  [v12 setChangeToken:v14];

  v15 = *(a1 + 56);
  [*&v4[v11] setMoreChanges:*(a1 + 56)];
  if (v56)
  {
    [*&v4[v11] setRefetchLevel:1];
  }

  v16 = a1[2];
  if (*(v16 + 16))
  {
    v56 = a1;
    if (qword_100297520 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v17 = sub_100216774();
      sub_100002648(v17, qword_10029D160);
      v18 = sub_100216754();
      v19 = sub_100216C54();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        HIDWORD(v55) = v15;
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "escrow cache and viable bottles are no longer valid", v20, 2u);
        v15 = HIDWORD(v55);
      }

      sub_10014C364();
      [*&v4[v11] setAccountSettings:0];
      [*&v4[v11] setAccountSettingsDate:0];
      [swift_getObjCClassFromMetadata() post:OTCliqueChanged];
      v21 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
      *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = 0;

      v22 = *(v16 + 16);
      v13 = v56;
      if (!v22)
      {
        break;
      }

      v11 = 0;
      while (v11 < *(v16 + 16))
      {
        sub_1001AC0A0(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v10, type metadata accessor for PeerDifference);
        sub_1001752A4(v10, v4);
        if (v3)
        {
          sub_1001AC1E4(v10, type metadata accessor for PeerDifference);
          return;
        }

        ++v11;
        sub_1001AC1E4(v10, type metadata accessor for PeerDifference);
        if (v22 == v11)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_46:
      swift_once();
    }
  }

LABEL_12:
  v23 = v13[3];
  v24 = v13[4];
  v25 = v13[5];
  v26 = v13[6];
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_30;
    }

    v28 = *(v23 + 16);
    v29 = *(v23 + 24);
LABEL_19:
    if (v28 == v29)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (v27)
  {
    v28 = v23;
    v29 = v23 >> 32;
    goto LABEL_19;
  }

  if ((v24 & 0xFF000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v30 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (v30)
    {
      if (v25 == v25 >> 32)
      {
        goto LABEL_30;
      }
    }

    else if ((v26 & 0xFF000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_100176BC0(v23, v24, v25, v26);
    goto LABEL_30;
  }

  if (v30 == 2 && *(v25 + 16) != *(v25 + 24))
  {
    goto LABEL_29;
  }

LABEL_30:
  v31 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v57 = 0;
  v32 = [v31 save:{&v57, v26}];
  v33 = v57;
  if (v32)
  {
    if (v15)
    {
      v34 = v57;
    }

    else
    {
      v36 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
      v57 = 0;
      v37 = v33;
      v38 = [v36 peerCountWithError:&v57];
      v39 = v57;
      if (v57)
      {
        swift_willThrow();
        v40 = qword_100297520;
        v41 = v39;
        if (v40 != -1)
        {
          swift_once();
        }

        v42 = sub_100216774();
        sub_100002648(v42, qword_10029D160);
        v43 = v41;
        v44 = sub_100216754();
        v45 = sub_100216C74();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138543362;
          v48 = v43;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&_mh_execute_header, v44, v45, "Error getting peerCount: %{public}@", v46, 0xCu);
          sub_1000114D4(v47, &qword_10029D580, &unk_10021CCC0);
        }

        else
        {
        }
      }

      else
      {
        v50 = v38;
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
          *v54 = 134217984;
          *(v54 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v52, v53, "Currently know about %lu peers", v54, 0xCu);
        }
      }
    }
  }

  else
  {
    v35 = v57;
    sub_100216154();

    swift_willThrow();
  }
}

uint64_t sub_1001752A4(uint64_t a1, char *a2)
{
  v125 = a2;
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v3 - 8, v4);
  v117 = &v114 - v5;
  v6 = type metadata accessor for SignedPeerDynamicInfo(0);
  v115 = *(v6 - 1);
  v116 = v6;
  __chkstk_darwin(v6, v7);
  v118 = (&v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v9 - 8, v10);
  v121 = &v114 - v11;
  v12 = type metadata accessor for SignedPeerStableInfo(0);
  v119 = *(v12 - 1);
  v120 = v12;
  __chkstk_darwin(v12, v13);
  v122 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = type metadata accessor for Peer(0);
  v16 = __chkstk_darwin(v123, v15);
  v18 = (&v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v19);
  v124 = &v114 - v20;
  v21 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v21 - 8, v22);
  v24 = &v114 - v23;
  v25 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v26 = *(v25 - 8);
  v28 = __chkstk_darwin(v25, v27);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v31);
  v33 = &v114 - v32;
  sub_100019C6C(a1, v24, &qword_100297E00, &qword_10021DA18);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_1000114D4(v24, &qword_100297E00, &qword_10021DA18);
  }

  sub_1001AC038(v24, v33, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1001AC0A0(v33, v30, type metadata accessor for PeerDifference.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AC038(v30, v18, type metadata accessor for Peer);
    sub_100174944(*v18, v18[1]);
    sub_1001AC1E4(v33, type metadata accessor for PeerDifference.OneOf_Operation);
    return sub_1001AC1E4(v18, type metadata accessor for Peer);
  }

  v35 = v124;
  sub_1001AC038(v30, v124, type metadata accessor for Peer);
  v36 = v125;
  v37 = v126;
  sub_100177364(v35);
  if (!v37)
  {
    v126 = v33;
    v39 = *v35;
    v40 = *(v35 + 8);
    v41 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v42 = [*&v36[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
    if (v42)
    {
      v43 = v42;
      v44 = sub_100216974();
      v46 = v45;

      if (v39 == v44 && v40 == v46)
      {
        v46, v47, v48, v49, v50, v51, v52, v53, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123;
        v35 = v124;
        goto LABEL_12;
      }

      v54 = sub_1002171A4();
      v46, v55, v56, v57, v58, v59, v60, v61, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123;
      v35 = v124;
      if (v54)
      {
LABEL_12:
        v62 = v121;
        sub_100019C6C(v35 + v123[8], v121, &qword_1002985A8, &unk_100226650);
        v63 = v120;
        v64 = *(v119 + 48);
        if (v64(v62, 1, v120) == 1)
        {
          v65 = v122;
          *v122 = xmmword_10021D470;
          v65[1] = xmmword_10021D470;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v64(v62, 1, v63) != 1)
          {
            sub_1000114D4(v62, &qword_1002985A8, &unk_100226650);
          }
        }

        else
        {
          v65 = v122;
          sub_1001AC038(v62, v122, type metadata accessor for SignedPeerStableInfo);
        }

        v66 = objc_allocWithZone(TPPeerStableInfo);
        isa = sub_100216204().super.isa;
        v68 = sub_100216204().super.isa;
        v69 = [v66 initWithData:isa sig:v68];

        sub_1001AC1E4(v65, type metadata accessor for SignedPeerStableInfo);
        if (v69)
        {
          v70 = v125;
          v71 = *&v125[v41];
          v72 = [v69 data];
          v73 = v69;
          v74 = sub_100216224();
          v76 = v75;

          v77 = sub_100216204().super.isa;
          sub_100002BF0(v74, v76, v78, v79, v80, v81, v82, v83);
          [v71 setEgoPeerStableInfo:v77];

          v84 = *&v70[v41];
          v85 = [v73 sig];
          v86 = sub_100216224();
          v88 = v87;

          v89 = sub_100216204().super.isa;
          sub_100002BF0(v86, v88, v90, v91, v92, v93, v94, v95);
          [v84 setEgoPeerStableInfoSig:v89];

          v96 = v117;
          sub_100019C6C(v35 + v123[9], v117, &unk_10029D760, &qword_10021E810);
          v97 = v116;
          v98 = v115[6];
          if (v98(v96, 1, v116) == 1)
          {
            v99 = v118;
            *v118 = xmmword_10021D470;
            v99[1] = xmmword_10021D470;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v98(v96, 1, v97) != 1)
            {
              sub_1000114D4(v96, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v99 = v118;
            sub_1001AC038(v96, v118, type metadata accessor for SignedPeerDynamicInfo);
          }

          v100 = sub_100216204().super.isa;
          v101 = sub_100216204().super.isa;
          v102 = [objc_opt_self() dynamicInfoWithData:v100 sig:v101];

          sub_1001AC1E4(v99, type metadata accessor for SignedPeerDynamicInfo);
          if (v102)
          {
            v103 = [v102 excludedPeerIDs];
            v104 = sub_100216BB4();

            __chkstk_darwin(v105, v106);
            *(&v114 - 2) = v125;
            *(&v114 - 1) = v35;
            sub_1001E3E28(sub_1001AB644, (&v114 - 4), v104);
            sub_1001AC1E4(v126, type metadata accessor for PeerDifference.OneOf_Operation);
            v104, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123;
          }

          else
          {
            sub_1001AC1E4(v126, type metadata accessor for PeerDifference.OneOf_Operation);
          }

          return sub_1001AC1E4(v35, type metadata accessor for Peer);
        }
      }
    }

    v38 = v126;
    goto LABEL_21;
  }

  v38 = v33;
LABEL_21:
  sub_1001AC1E4(v38, type metadata accessor for PeerDifference.OneOf_Operation);
  return sub_1001AC1E4(v35, type metadata accessor for Peer);
}

void sub_100175C78(void **a1, char *a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter];
  v9 = *v8->endpoint;
  v10 = *v8->containerMap;

  v11 = sub_10019CE9C(v9, v10, v6, v7);
  v8, v12, v13, v14, v15, v16, v17, v18;
  if (v3)
  {
    v19 = 1;
  }

  else
  {
    v19 = v11 == 0;
  }

  if (!v19)
  {
    v20 = [v11 vouchers];
    if (v20)
    {
      v28 = v20;
      v44 = 0;
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
      sub_100216BA4();
    }

    0, v21, v22, v23, v24, v25, v26, v27, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    __chkstk_darwin(v29, v30);
    v39 = a3;
    v40 = a2;
    v41 = v6;
    v42 = v7;
    sub_1001E3F60(sub_1001AB660, v38, &_swiftEmptySetSingleton);
    &_swiftEmptySetSingleton, v31, v32, v33, v34, v35, v36, v37, v38[0], v38[1], v39, v40, v41, v42, v43, v44, v45, v46;
  }
}

void sub_100175E00(id *a1, id *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5)
{
  v10 = *a1;
  v11 = [v10 voucherInfo];
  if (!v11)
  {
    v29 = v10;
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_100216224();
  v15 = v14;

  v16 = [v10 voucherInfoSig];
  if (!v16)
  {
    sub_100002BF0(v13, v15, v17, v18, v19, v20, v21, v22);
    v29 = v10;
    goto LABEL_12;
  }

  v63 = a4;
  v64 = a3;
  v65 = a5;
  v23 = v16;
  v24 = sub_100216224();
  v26 = v25;

  isa = sub_100216204().super.isa;
  v28 = sub_100216204().super.isa;
  v29 = [objc_opt_self() voucherInfoWithData:isa sig:v28];

  sub_100002BF0(v24, v26, v30, v31, v32, v33, v34, v35);
  sub_100002BF0(v13, v15, v36, v37, v38, v39, v40, v41);

  if (v29)
  {
    v42 = [v29 sponsorID];
    v43 = sub_100216974();
    v45 = v44;

    v51 = a2[1];
    v52 = v63;
    if (v43 == *a2 && v45 == v51)
    {
      v45, v46, *a2, v51, v47, v48, v49, v50, v62, v63, v64, v65, v68, v5, v69, v70, v71, v72;
      v53 = v66;
LABEL_11:
      sub_1001820F0(v52, v53);
      goto LABEL_12;
    }

    v54 = sub_1002171A4();
    v45, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v68, v5, v69, v70, v71, v72;
    v53 = v67;
    if (v54)
    {
      goto LABEL_11;
    }

LABEL_12:
  }
}

void sub_100175FF0()
{
  v1 = v0;
  v2 = sub_100216164();
  v208 = *(v2 - 8);
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297520 != -1)
  {
    v204 = v4;
    swift_once();
    v4 = v204;
  }

  v214 = v4;
  v7 = sub_100216774();
  v218 = sub_100002648(v7, qword_10029D160);
  v8 = sub_100216754();
  v9 = sub_100216C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Deleting all CloudKit data", v10, 2u);
  }

  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_100216964();
  v13 = [v11 initWithEntityName:v12];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  v213 = sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v14 = swift_allocObject();
  v211 = xmmword_10021D600;
  *(v14 + 16) = xmmword_10021D600;
  v15 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v16 = *&v1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
  v210 = type metadata accessor for ContainerMO();
  *(v14 + 56) = v210;
  v209 = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v14 + 64) = v209;
  *(v14 + 32) = v16;
  v17 = v16;
  v18 = sub_100216C34();
  [v13 setPredicate:v18];

  [v13 setResultType:1];
  v19 = *&v1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v20 = objc_allocWithZone(NSBatchDeleteRequest);
  v217 = v13;
  v21 = [v20 initWithFetchRequest:v13];
  *&v224[0] = 0;
  v215 = v19;
  v22 = [v19 executeRequest:v21 error:v224];

  if (!v22)
  {
    v122 = *&v224[0];
    v123 = sub_100216154();

    swift_willThrow();
    v57 = v217;
    goto LABEL_39;
  }

  v23 = *&v224[0];

  v24 = [*&v15[v1] egoPeerID];
  v25 = v214;
  if (v24)
  {
    v26 = v24;
    v216 = sub_100216974();
    v28 = v27;

    v206 = v1;
    v29 = [*&v15[v1] bottles];
    if (v29)
    {
      v213 = v15;
      v37 = v29;
      sub_100216D74();
      *&v211 = v37;

      sub_1001A13C4(&unk_10029DA10, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      sub_100216E04();
      v219 = v28;
      v38 = _swiftEmptyArrayStorage;
      if (!v223)
      {
LABEL_9:
        (v208)[1](v6, v25);
        v219, v39, v40, v41, v42, v43, v44, v45, v205, v206, v207, v208, v209, v210, v211, *(&v211 + 1), v212, v213;
        sub_1000114D4(&v222, &unk_100297770, &unk_10021DF90);
        v46 = objc_allocWithZone(NSSet);
        isa = sub_100216B14().super.isa;
        v38, v48, v49, v50, v51, v52, v53, v54;
        v55 = [v46 initWithArray:isa];

        v15 = v213;
        v56 = v206;
        [*&v213[v206] removeBottles:v55];

        v57 = v217;
        goto LABEL_33;
      }

      while (1)
      {
        sub_1000125AC(&v222, v224);
        sub_1000060A0(v224, &v222);
        type metadata accessor for BottleMO();
        if (swift_dynamicCast())
        {
          v73 = v220;
          v74 = [v220 peerID];
          if (!v74)
          {

            sub_100006128(&v222, v100, v101, v102, v103, v104, v105, v106);
LABEL_22:
            sub_1000125AC(v224, &v222);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v221 = v38;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100187764(0, *v38->endpoint + 1, 1, v108, v109, v110, v111, v112);
              v38 = v221;
            }

            v114 = *v38->endpoint;
            v113 = *v38->containerMap;
            if (v114 >= v113 >> 1)
            {
              sub_100187764((v113 > 1), v114 + 1, 1, v108, v109, v110, v111, v112);
              v38 = v221;
            }

            *v38->endpoint = v114 + 1;
            sub_1000125AC(&v222, v38[v114 + 1]._TtCs12_SwiftObject_opaque);
            goto LABEL_12;
          }

          v75 = v74;
          v76 = sub_100216974();
          v78 = v77;

          if (v76 == v216 && v78 == v219)
          {
            v78, v79, v216, v219, v80, v81, v82, v83, v205, v206, v207, v208, v209, v210, v211, *(&v211 + 1), v212, v213;

            sub_100006128(&v222, v115, v116, v117, v118, v119, v120, v121);
          }

          else
          {
            v85 = sub_1002171A4();
            v78, v86, v87, v88, v89, v90, v91, v92, v205, v206, v207, v208, v209, v210, v211, *(&v211 + 1), v212, v213;

            sub_100006128(&v222, v93, v94, v95, v96, v97, v98, v99);
            if ((v85 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v65 = v224;
        }

        else
        {
          sub_100006128(v224, v66, v67, v68, v69, v70, v71, v72);
          v65 = &v222;
        }

        sub_100006128(v65, v58, v59, v60, v61, v62, v63, v64);
LABEL_12:
        sub_100216E04();
        if (!v223)
        {
          goto LABEL_9;
        }
      }
    }

    v28, v30, v31, v32, v33, v34, v35, v36, v205, v206, v207, v208, v209, v210, v211, *(&v211 + 1), v212, v213;
    v1 = v206;
  }

  v124 = objc_allocWithZone(NSFetchRequest);
  v125 = sub_100216964();
  v55 = [v124 initWithEntityName:v125];

  v126 = swift_allocObject();
  *(v126 + 16) = v211;
  v127 = *&v15[v1];
  v128 = v209;
  *(v126 + 56) = v210;
  *(v126 + 64) = v128;
  *(v126 + 32) = v127;
  v129 = v127;
  v130 = sub_100216C34();
  [v55 setPredicate:v130];

  v57 = v217;
  [v217 setResultType:1];
  v131 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v55];
  *&v224[0] = 0;
  v132 = [v215 executeRequest:v131 error:v224];

  if (!v132)
  {
    v178 = *&v224[0];
    v123 = sub_100216154();

    swift_willThrow();
LABEL_39:

    swift_errorRetain();
    v172 = sub_100216754();
    v179 = sub_100216C74();

    if (os_log_type_enabled(v172, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *&v224[0] = v181;
      *v180 = 136446210;
      *&v222 = v123;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v182 = sub_100216994();
      v184 = v183;
      v185 = sub_100005FB0(v182, v183, v224);
      v184, v186, v187, v188, v189, v190, v191, v192, v205, v206, v207, v208, v209, v210, v211, *(&v211 + 1), v212, v213;
      *(v180 + 4) = v185;
      _os_log_impl(&_mh_execute_header, v172, v179, "Local delete failed: %{public}s", v180, 0xCu);
      sub_100006128(v181, v193, v194, v195, v196, v197, v198, v199);
      goto LABEL_41;
    }

LABEL_42:

    swift_willThrow();
    return;
  }

  v133 = *&v224[0];

  [*&v15[v1] setBottles:0];
  v56 = v1;
LABEL_33:

  [*&v15[v56] setPeers:0];
  [*&v15[v56] setChangeToken:0];
  [*&v15[v56] setMoreChanges:0];
  v134 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v135 = *&v56[OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter];
  v136 = *&v15[v56];

  v137 = sub_10010F154();
  v139 = v138;
  v135, v138, v140, v141, v142, v143, v144, v145;
  v146 = v215;
  v147 = sub_10019EC98(v215, v136, v137, v139);
  v148 = v56;
  v150 = v149;
  sub_10004CD18(v137, v139, v151, v152, v153, v154, v155, v156);

  v157 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v158 = *&v148[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  *&v148[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] = v147;

  v159 = *&v148[v134];
  *&v148[v134] = v150;
  v159, v160, v161, v162, v163, v164, v165, v166;
  *&v224[0] = 0;
  if (![v146 save:v224])
  {
    v177 = *&v224[0];
    v123 = sub_100216154();

    swift_willThrow();
    goto LABEL_39;
  }

  v167 = *&v224[0];

  v168 = *&v148[v157];
  *&v224[0] = 0;
  v169 = [v168 peerCountWithError:v224];
  v170 = *&v224[0];
  if (*&v224[0])
  {
    swift_willThrow();
    v171 = v170;
    v172 = sub_100216754();
    v173 = sub_100216C74();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *v174 = 138543362;
      v171;
      v176 = _swift_stdlib_bridgeErrorToNSError();
      *(v174 + 4) = v176;
      *v175 = v176;
      _os_log_impl(&_mh_execute_header, v172, v173, "error getting peerCount: %{public}@", v174, 0xCu);
      sub_1000114D4(v175, &qword_10029D580, &unk_10021CCC0);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v200 = v169;
  v201 = sub_100216754();
  v202 = sub_100216C54();
  if (os_log_type_enabled(v201, v202))
  {
    v203 = swift_slowAlloc();
    *v203 = 134217984;
    *(v203 + 4) = v200;
    _os_log_impl(&_mh_execute_header, v201, v202, "Saved model with %lu peers", v203, 0xCu);
  }
}

void sub_100176BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v6 = objc_allocWithZone(TPRecoveryKeyPair);
  v7 = v5;
  isa = sub_100216204().super.isa;
  v9 = sub_100216204().super.isa;
  v10 = [v6 initWithSigningKeyData:isa encryptionKeyData:v9];

  [v7 setRecoveryKeys:v10];
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v13 = sub_100216204().super.isa;
  [v12 setRecoveryKeySigningSPKI:v13];

  v14 = *(v4 + v11);
  v15 = sub_100216204().super.isa;
  [v14 setRecoveryKeyEncryptionSPKI:v15];
}

void sub_100176D20(void *a1)
{
  v2 = type metadata accessor for Peer(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2, v4);
  v89 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v88 - v8;
  v10 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 52);
  v88 = a1;
  sub_100019C6C(a1 + v15, v9, &unk_10029D7B0, &unk_10021E820);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    *v14 = xmmword_10021D470;
    *(v14 + 1) = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v16(v9, 1, v10) != 1)
    {
      sub_1000114D4(v9, &unk_10029D7B0, &unk_10021E820);
    }
  }

  else
  {
    sub_1001AC038(v9, v14, type metadata accessor for SignedCustodianRecoveryKey);
  }

  v17 = *v14;
  v18 = *(v14 + 1);
  v20 = *(v14 + 2);
  v19 = *(v14 + 3);
  v21 = objc_allocWithZone(TPECPublicKeyFactory);
  sub_100012558(v17, v18);
  sub_100012558(v20, v19);
  v22 = [v21 init];
  isa = sub_100216204().super.isa;
  v24 = sub_100216204().super.isa;
  v25 = [objc_opt_self() custodianRecoveryKeyWithData:isa sig:v24 keyFactory:v22];

  sub_100002BF0(v20, v19, v26, v27, v28, v29, v30, v31);
  sub_100002BF0(v17, v18, v32, v33, v34, v35, v36, v37);
  sub_1001AC1E4(v14, type metadata accessor for SignedCustodianRecoveryKey);
  if (v25)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_10029D160);
    v39 = v89;
    sub_1001AC0A0(v88, v89, type metadata accessor for Peer);
    v40 = sub_100216754();
    v41 = sub_100216C54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v42 = 136446210;
      v44 = *v39;
      v45 = v39[1];

      sub_1001AC1E4(v39, type metadata accessor for Peer);
      v46 = sub_100005FB0(v44, v45, v93);
      v45, v47, v48, v49, v50, v51, v52, v53, v88, v89, v90, v91, v92, v93[0], v93[1], v93[2], v93[3], v93[4];
      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Register CRK with peerID %{public}s", v42, 0xCu);
      sub_100006128(v43, v54, v55, v56, v57, v58, v59, v60);
    }

    else
    {

      sub_1001AC1E4(v39, type metadata accessor for Peer);
    }

    v65 = v90;
    [*&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] registerCustodianRecoveryKey:v25];
    type metadata accessor for CustodianRecoveryKeyMO();
    v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*&v65[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc]];
    v66 = [v25 data];
    v67 = sub_100216224();
    v69 = v68;

    v70 = sub_100216204().super.isa;
    sub_100002BF0(v67, v69, v71, v72, v73, v74, v75, v76);
    [v62 setCrkInfo:v70];

    v77 = [v25 sig];
    v78 = sub_100216224();
    v80 = v79;

    v81 = sub_100216204().super.isa;
    sub_100002BF0(v78, v80, v82, v83, v84, v85, v86, v87);
    [v62 setCrkInfoSig:v81];

    [*&v65[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] addCustodianRecoveryKeysObject:v62];
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v61 = sub_100216774();
    sub_100002648(v61, qword_10029D160);
    v62 = sub_100216754();
    v63 = sub_100216C54();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "failed to parse custodian recovery key", v64, 2u);
    }
  }
}

void sub_100177364(char *a1)
{
  v2 = v1;
  v643 = type metadata accessor for Peer(0);
  v5 = __chkstk_darwin(v643, v4);
  v624 = &v621 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v625 = &v621 - v8;
  v9 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  __chkstk_darwin(v9 - 8, v10);
  v630 = &v621 - v11;
  v12 = type metadata accessor for SignedVoucher(0);
  v647 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v645 = (&v621 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v16);
  v639 = &v621 - v17;
  v18 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v626 = &v621 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v633 = &v621 - v23;
  v24 = type metadata accessor for SignedPeerDynamicInfo(0);
  v635 = *(v24 - 8);
  v636 = v24;
  v26 = __chkstk_darwin(v24, v25);
  v629 = &v621 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v634 = (&v621 - v29);
  v30 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v32 = __chkstk_darwin(v30 - 8, v31);
  v642 = (&v621 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32, v34);
  v631 = &v621 - v35;
  v36 = type metadata accessor for SignedPeerStableInfo(0);
  v637 = *(v36 - 8);
  v638 = v36;
  v38 = __chkstk_darwin(v36, v37);
  v628 = (&v621 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38, v40);
  v632 = (&v621 - v41);
  v42 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  __chkstk_darwin(v42 - 8, v43);
  v45 = &v621 - v44;
  v46 = type metadata accessor for SignedPeerPermanentInfo(0);
  v641 = *(v46 - 8);
  __chkstk_darwin(v46, v47);
  v49 = (&v621 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v646 = a1;
  v50 = *a1;
  v51 = *(a1 + 1);
  v52 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v644 = v2;
  v53 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];

  v54 = v53;
  v55 = sub_100216964();
  v648 = 0;
  v56 = [v54 hasPeerWithID:v55 error:&v648];

  if (v648)
  {
    v648;
    v51, v57, v58, v59, v60, v61, v62, v63, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
LABEL_3:
    swift_willThrow();
    return;
  }

  v64 = v46;
  v66 = v641;
  v65 = v642;
  v622 = v52;
  v623 = v50;
  v627 = v51;
  if ((v56 & 1) == 0)
  {
    v93 = v45;
    sub_100019C6C(v646 + *&v643->containerMap[4], v45, &qword_10029DA00, &unk_10021E800);
    v94 = v66[6];
    v95 = v64;
    v96 = v94(v45, 1, v64);
    v97 = v627;
    if (v96 == 1)
    {
      *v49 = xmmword_10021D470;
      *(v49 + 1) = xmmword_10021D470;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v98 = v94(v45, 1, v95);
      v99 = v639;
      if (v98 != 1)
      {
        sub_1000114D4(v93, &qword_10029DA00, &unk_10021E800);
      }
    }

    else
    {
      sub_1001AC038(v45, v49, type metadata accessor for SignedPeerPermanentInfo);
      v99 = v639;
    }

    v621 = v49;
    v101 = *v49;
    v100 = v49[1];
    v103 = v49[2];
    v102 = v49[3];
    v104 = objc_allocWithZone(TPECPublicKeyFactory);

    v645 = v101;
    sub_100012558(v101, v100);
    sub_100012558(v103, v102);
    v105 = [v104 init];
    v106 = sub_100216964();
    v97, v107, v108, v109, v110, v111, v112, v113, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    isa = sub_100216204().super.isa;
    v115 = sub_100216204().super.isa;
    v116 = [objc_opt_self() permanentInfoWithPeerID:v106 data:isa sig:v115 keyFactory:v105];

    sub_100002BF0(v103, v102, v117, v118, v119, v120, v121, v122);
    sub_100002BF0(v645, v100, v123, v124, v125, v126, v127, v128);

    sub_1001AC1E4(v621, type metadata accessor for SignedPeerPermanentInfo);
    if (!v116)
    {
      v627, v129, v130, v131, v132, v133, v134, v135, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
      v68 = v646;
      v149 = v630;
      sub_100019C6C(v646 + *&v643[1]._TtCs12_SwiftObject_opaque[12], v630, &unk_10029D7B0, &unk_10021E820);
      v150 = type metadata accessor for SignedCustodianRecoveryKey(0);
      v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
      sub_1000114D4(v149, &unk_10029D7B0, &unk_10021E820);
      if (v151 == 1)
      {
        return;
      }

      if (*(v644 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testIgnoreCustodianUpdates) != 1)
      {
        sub_100176D20(v68);
        return;
      }

      if (qword_100297520 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_110;
    }

    v645 = v116;
    v136 = v643;
    v137 = v631;
    sub_100019C6C(v646 + *v643[1]._TtCs12_SwiftObject_opaque, v631, &qword_1002985A8, &unk_100226650);
    v138 = v638;
    v139 = *(v637 + 48);
    if (v139(v137, 1, v638) == 1)
    {
      v140 = v632;
      *v632 = xmmword_10021D470;
      v140[1] = xmmword_10021D470;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v141 = v139(v137, 1, v138);
      v142 = v633;
      if (v141 != 1)
      {
        sub_1000114D4(v137, &qword_1002985A8, &unk_100226650);
      }
    }

    else
    {
      v140 = v632;
      sub_1001AC038(v137, v632, type metadata accessor for SignedPeerStableInfo);
      v142 = v633;
    }

    v178 = objc_allocWithZone(TPPeerStableInfo);
    v179 = sub_100216204().super.isa;
    v180 = sub_100216204().super.isa;
    v181 = [v178 initWithData:v179 sig:v180];

    sub_1001AC1E4(v140, type metadata accessor for SignedPeerStableInfo);
    v182 = v646;
    sub_100019C6C(v646 + *&v136[1]._TtCs12_SwiftObject_opaque[4], v142, &unk_10029D760, &qword_10021E810);
    v183 = v636;
    v184 = *(v635 + 48);
    v185 = v184(v142, 1, v636);
    v642 = v181;
    if (v185 == 1)
    {
      v186 = v634;
      *v634 = xmmword_10021D470;
      v186[1] = xmmword_10021D470;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v187 = v184(v142, 1, v183);
      v188 = v647;
      if (v187 != 1)
      {
        sub_1000114D4(v142, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      v186 = v634;
      sub_1001AC038(v142, v634, type metadata accessor for SignedPeerDynamicInfo);
      v188 = v647;
    }

    v189 = sub_100216204().super.isa;
    v190 = sub_100216204().super.isa;
    v643 = [objc_opt_self() dynamicInfoWithData:v189 sig:v190];

    sub_1001AC1E4(v186, type metadata accessor for SignedPeerDynamicInfo);
    v191 = v182[2];
    v648 = _swiftEmptyArrayStorage;
    v192 = *(v191 + 16);
    if (v192)
    {
      v193 = objc_opt_self();
      v194 = v191 + ((v188[2].endpoint[0] + 32) & ~v188[2].endpoint[0]);
      v195 = *&v188[2]._TtCs12_SwiftObject_opaque[8];
      v647 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001AC0A0(v194, v99, type metadata accessor for SignedVoucher);
        v196 = sub_100216204().super.isa;
        v197 = sub_100216204().super.isa;
        v198 = [v193 voucherInfoWithData:v196 sig:v197];

        sub_1001AC1E4(v99, type metadata accessor for SignedVoucher);
        if (v198)
        {
          sub_100216B04();
          if (*((v648 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v648 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100216B44();
          }

          sub_100216B64();
          v647 = v648;
        }

        v194 += v195;
        --v192;
      }

      while (v192);
    }

    else
    {
      v647 = _swiftEmptyArrayStorage;
    }

    v199 = [*(v644 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
    if (v199)
    {
      v207 = v199;
      v208 = sub_100216974();
      v210 = v209;

      v218 = v627;
      v219 = v623 == v208 && v627 == v210;
      v220 = v645;
      if (v219)
      {
        v221 = 1;
      }

      else
      {
        v221 = sub_1002171A4();
      }

      v218, v211, v212, v213, v214, v215, v216, v217, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    }

    else
    {
      v221 = 0;
      v210 = v627;
      v220 = v645;
    }

    v210, v200, v201, v202, v203, v204, v205, v206, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    v222 = objc_allocWithZone(TPPeer);
    v648 = 0;
    v223 = v220;
    v224 = v642;
    v225 = v643;
    v226 = [v222 initWithPermanentInfo:v223 stableInfo:v224 dynamicInfo:v225 error:&v648];
    if (v226)
    {
      v227 = v226;
      v228 = v648;

      v229 = v647;
      sub_100154700(v227, v647, v221 & 1);

      v229, v230, v231, v232, v233, v234, v235, v236, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    }

    else
    {
      v237 = v648;
      sub_100216154();

      swift_willThrow();
      v647, v238, v239, v240, v241, v242, v243, v244, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    }

    return;
  }

  v67 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v68 = v644;
  v69 = *(v644 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v71 = *v69->endpoint;
  v70 = *v69->containerMap;

  v72 = v71;
  v73 = v70;
  v74 = v623;
  v75 = v627;
  v76 = v640;
  v77 = sub_10019CE9C(v72, v73, v623, v627);
  v85 = v76;
  if (v76)
  {
    v75, v78, v79, v80, v81, v82, v83, v84, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    v69, v86, v87, v88, v89, v90, v91, v92;
    return;
  }

  v143 = v77;
  v69, v78, v79, v80, v81, v82, v83, v84;
  if (!v143)
  {
    sub_1000561D0();
    swift_allocError();
    *v245 = v74;
    *(v245 + 8) = v75;
    *(v245 + 16) = 8;
    goto LABEL_3;
  }

  v144 = v65;
  sub_100019C6C(v646 + *v643[1]._TtCs12_SwiftObject_opaque, v65, &qword_1002985A8, &unk_100226650);
  v145 = v638;
  v146 = *(v637 + 48);
  v147 = v146(v144, 1, v638);
  v641 = v143;
  v639 = v67;
  if (v147 == 1)
  {
    v148 = v628;
    *v628 = xmmword_10021D470;
    v148[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v146(v144, 1, v145) != 1)
    {
      sub_1000114D4(v144, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    v148 = v628;
    sub_1001AC038(v144, v628, type metadata accessor for SignedPeerStableInfo);
  }

  v246 = objc_allocWithZone(TPPeerStableInfo);
  v247 = sub_100216204().super.isa;
  v248 = sub_100216204().super.isa;
  v249 = [v246 initWithData:v247 sig:v248];

  sub_1001AC1E4(v148, type metadata accessor for SignedPeerStableInfo);
  v250 = v641;
  v642 = v249;
  v251 = v629;
  v252 = v627;
  if (v249)
  {
    v253 = *&v622[v68];
    v254 = v642;
    v255 = sub_100216964();
    v648 = 0;
    v256 = [v253 copyPeerWithNewStableInfo:v254 forPeerWithID:v255 error:&v648];

    if (!v256)
    {
      v272 = v648;
      v252, v273, v274, v275, v276, v277, v278, v279, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;

      sub_100216154();
      swift_willThrow();

      return;
    }

    v257 = v648;
    v258 = [v256 stableInfo];
    if (v258)
    {
      v259 = v258;
      v260 = [v258 data];

      v261 = sub_100216224();
      v263 = v262;

      v264.super.isa = sub_100216204().super.isa;
      v265 = v263;
      v250 = v641;
      sub_100002BF0(v261, v265, v266, v267, v268, v269, v270, v271);
    }

    else
    {
      v264.super.isa = 0;
    }

    [v250 setStableInfo:v264.super.isa];

    v280 = [v256 stableInfo];
    if (v280)
    {
      v281 = v280;
      v282 = [v280 sig];

      v283 = sub_100216224();
      v285 = v284;

      v286.super.isa = sub_100216204().super.isa;
      v287 = v285;
      v250 = v641;
      sub_100002BF0(v283, v287, v288, v289, v290, v291, v292, v293);
    }

    else
    {
      v286.super.isa = 0;
    }

    v85 = 0;
    v68 = v644;
    v251 = v629;
    [v250 setStableInfoSig:v286.super.isa];

    v252 = v627;
  }

  v294 = v626;
  sub_100019C6C(v646 + *&v643[1]._TtCs12_SwiftObject_opaque[4], v626, &unk_10029D760, &qword_10021E810);
  v295 = v636;
  v296 = *(v635 + 48);
  if (v296(v294, 1, v636) == 1)
  {
    *v251 = xmmword_10021D470;
    v251[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v296(v294, 1, v295) != 1)
    {
      sub_1000114D4(v294, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1001AC038(v294, v251, type metadata accessor for SignedPeerDynamicInfo);
  }

  v297 = sub_100216204().super.isa;
  v298 = sub_100216204().super.isa;
  v299 = [objc_opt_self() dynamicInfoWithData:v297 sig:v298];

  sub_1001AC1E4(v251, type metadata accessor for SignedPeerDynamicInfo);
  v643 = v299;
  if (v299)
  {
    v300 = *&v622[v68];
    v301 = v643;
    v302 = sub_100216964();
    v648 = 0;
    v303 = [v300 copyPeerWithNewDynamicInfo:v301 forPeerWithID:v302 error:&v648];

    if (!v303)
    {
      v320 = v648;
      v252, v321, v322, v323, v324, v325, v326, v327, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;

      sub_100216154();
      swift_willThrow();

LABEL_95:
      return;
    }

    v304 = v85;
    v305 = v648;
    v306 = [v303 dynamicInfo];
    if (v306)
    {
      v307 = v306;
      v308 = [v306 data];

      v309 = sub_100216224();
      v311 = v310;

      v312.super.isa = sub_100216204().super.isa;
      v313 = v309;
      v250 = v641;
      sub_100002BF0(v313, v311, v314, v315, v316, v317, v318, v319);
    }

    else
    {
      v312.super.isa = 0;
    }

    [v250 setDynamicInfo:v312.super.isa];

    v328 = [v303 dynamicInfo];
    if (v328)
    {
      v329 = v328;
      v330 = [v328 sig];

      v331 = sub_100216224();
      v333 = v332;

      v334.super.isa = sub_100216204().super.isa;
      v335 = v331;
      v250 = v641;
      sub_100002BF0(v335, v333, v336, v337, v338, v339, v340, v341);
    }

    else
    {
      v334.super.isa = 0;
    }

    v85 = v304;
    v252 = v627;
    v68 = v644;
    [v250 setDynamicInfoSig:v334.super.isa];
  }

  v342 = v646[2];
  v343 = *(v342 + 16);
  if (v343)
  {
    v344 = 0;
    while (v344 < *(v342 + 16))
    {
      v345 = v645;
      sub_1001AC0A0(v342 + ((v647[2].endpoint[0] + 32) & ~v647[2].endpoint[0]) + *&v647[2]._TtCs12_SwiftObject_opaque[8] * v344, v645, type metadata accessor for SignedVoucher);
      sub_100179334(v345, v250, v68);
      ++v344;
      sub_1001AC1E4(v345, type metadata accessor for SignedVoucher);
      if (v343 == v344)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_110:
    swift_once();
LABEL_23:
    v152 = sub_100216774();
    sub_100002648(v152, qword_10029D160);
    v153 = v625;
    sub_1001AC0A0(v68, v625, type metadata accessor for Peer);
    v154 = sub_100216754();
    v155 = sub_100216C54();
    v156 = os_log_type_enabled(v154, v155);
    v157 = v624;
    if (v156)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v648 = v159;
      *v158 = 136446210;
      sub_1001AC0A0(v153, v157, type metadata accessor for Peer);
      v160 = sub_100216994();
      v162 = v161;
      sub_1001AC1E4(v153, type metadata accessor for Peer);
      v163 = sub_100005FB0(v160, v162, &v648);
      v162, v164, v165, v166, v167, v168, v169, v170, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
      *(v158 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v154, v155, "Ignoring Custodian update due to test request: %{public}s", v158, 0xCu);
      sub_100006128(v159, v171, v172, v173, v174, v175, v176, v177);
    }

    else
    {

      sub_1001AC1E4(v153, type metadata accessor for Peer);
    }

    return;
  }

LABEL_82:
  v346 = [v250 permanentInfo];
  if (!v346)
  {
LABEL_89:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v425 = sub_100216774();
    sub_100002648(v425, qword_10029D160);

    v426 = sub_100216754();
    v427 = sub_100216C74();
    v252, v428, v429, v430, v431, v432, v433, v434, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    if (os_log_type_enabled(v426, v427))
    {
      v442 = swift_slowAlloc();
      v443 = swift_slowAlloc();
      v648 = v443;
      *v442 = 136446210;
      v444 = v250;
      v445 = sub_100005FB0(v623, v252, &v648);
      v252, v446, v447, v448, v449, v450, v451, v452, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
      *(v442 + 4) = v445;
      _os_log_impl(&_mh_execute_header, v426, v427, "addOrUpdate peer %{public}s has no/incomplete permanent info/sig", v442, 0xCu);
      sub_100006128(v443, v453, v454, v455, v456, v457, v458, v459);
    }

    else
    {
      v252, v435, v436, v437, v438, v439, v440, v441, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    }

    goto LABEL_95;
  }

  v640 = v85;
  v347 = v346;
  v348 = sub_100216224();
  v350 = v349;

  v351 = [v250 permanentInfoSig];
  if (!v351)
  {
    sub_100002BF0(v348, v350, v352, v353, v354, v355, v356, v357);
    v252 = v627;
    goto LABEL_89;
  }

  v358 = v351;
  v359 = sub_100216224();
  v361 = v360;

  v362 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v363 = v627;

  sub_100012558(v348, v350);
  sub_100012558(v359, v361);
  v364 = sub_100216964();
  v363, v365, v366, v367, v368, v369, v370, v371, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
  v372 = sub_100216204().super.isa;
  v373 = sub_100216204().super.isa;
  v374 = objc_opt_self();
  v646 = v362;
  v375 = [v374 permanentInfoWithPeerID:v364 data:v372 sig:v373 keyFactory:v362];

  v647 = v361;
  sub_100002BF0(v359, v361, v376, v377, v378, v379, v380, v381);

  sub_100002BF0(v348, v350, v382, v383, v384, v385, v386, v387);
  if (!v375)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v460 = sub_100216774();
    sub_100002648(v460, qword_10029D160);
    v461 = v627;

    v462 = sub_100216754();
    v463 = sub_100216C74();
    v461, v464, v465, v466, v467, v468, v469, v470, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    if (os_log_type_enabled(v462, v463))
    {
      v471 = swift_slowAlloc();
      v472 = swift_slowAlloc();
      v648 = v472;
      *v471 = 136446210;
      v473 = sub_100005FB0(v623, v461, &v648);
      v461, v474, v475, v476, v477, v478, v479, v480, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
      *(v471 + 4) = v473;
      _os_log_impl(&_mh_execute_header, v462, v463, "Couldn't parse peer identity: %{public}s", v471, 0xCu);
      sub_100006128(v472, v481, v482, v483, v484, v485, v486, v487);

      sub_100002BF0(v348, v350, v488, v489, v490, v491, v492, v493);
      sub_100002BF0(v359, v647, v494, v495, v496, v497, v498, v499);
    }

    else
    {

      sub_100002BF0(v348, v350, v583, v584, v585, v586, v587, v588);
      sub_100002BF0(v359, v647, v589, v590, v591, v592, v593, v594);
      v461, v595, v596, v597, v598, v599, v600, v601, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    }

LABEL_107:
    return;
  }

  v388 = objc_allocWithZone(TPPeer);
  v648 = 0;
  v389 = v642;
  v390 = v643;
  v391 = v375;
  v645 = v389;
  v392 = [v388 initWithPermanentInfo:v391 stableInfo:v389 dynamicInfo:v390 error:&v648];
  if (v392)
  {
    v393 = v392;
    v394 = v648;
    v627, v395, v396, v397, v398, v399, v400, v401, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;

    v402 = *&v639[v644];

    v403 = sub_10010F154();
    v405 = v404;
    v402, v404, v406, v407, v408, v409, v410, v411;
    if (v405 >> 60 != 15)
    {
      v643 = v403;
      v549 = sub_100216204().super.isa;
      v550 = [v393 calculateHmacWithHmacKey:v549];
      v644 = v391;
      v551 = v550;

      v552 = sub_100216224();
      v553 = v359;
      v554 = v390;
      v556 = v555;

      v557 = sub_100216204().super.isa;
      sub_100002BF0(v552, v556, v558, v559, v560, v561, v562, v563);
      v564 = v641;
      [v641 setHmacSig:v557];

      sub_100002BF0(v348, v350, v565, v566, v567, v568, v569, v570);
      sub_100002BF0(v553, v647, v571, v572, v573, v574, v575, v576);

      sub_10004CD18(v643, v405, v577, v578, v579, v580, v581, v582);
      return;
    }

    v412 = v641;
    [v641 setHmacSig:0];

    sub_100002BF0(v348, v350, v413, v414, v415, v416, v417, v418);
    sub_100002BF0(v359, v647, v419, v420, v421, v422, v423, v424);

    goto LABEL_107;
  }

  v500 = v648;
  v501 = sub_100216154();

  swift_willThrow();
  v643 = v390;

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v502 = sub_100216774();
  sub_100002648(v502, qword_10029D160);
  v503 = v627;

  swift_errorRetain();
  v504 = sub_100216754();
  v505 = sub_100216C74();
  v503, v506, v507, v508, v509, v510, v511, v512, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;

  if (os_log_type_enabled(v504, v505))
  {
    v513 = swift_slowAlloc();
    v640 = v501;
    v514 = v513;
    v515 = swift_slowAlloc();
    v642 = v504;
    v516 = v515;
    v517 = swift_slowAlloc();
    v648 = v517;
    *v514 = 136446466;
    v518 = sub_100005FB0(v623, v503, &v648);
    v644 = v391;
    v519 = v518;
    v503, v520, v521, v522, v523, v524, v525, v526, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
    *(v514 + 4) = v519;
    *(v514 + 12) = 2112;
    swift_errorRetain();
    v527 = _swift_stdlib_bridgeErrorToNSError();
    *(v514 + 14) = v527;
    *v516 = v527;
    v528 = v505;
    v529 = v642;
    _os_log_impl(&_mh_execute_header, v642, v528, "failed to construct peer for %{public}s: %@", v514, 0x16u);
    sub_1000114D4(v516, &qword_10029D580, &unk_10021CCC0);

    sub_100006128(v517, v530, v531, v532, v533, v534, v535, v536);

    sub_100002BF0(v348, v350, v537, v538, v539, v540, v541, v542);
    sub_100002BF0(v359, v647, v543, v544, v545, v546, v547, v548);
  }

  else
  {

    sub_100002BF0(v348, v350, v602, v603, v604, v605, v606, v607);
    sub_100002BF0(v359, v647, v608, v609, v610, v611, v612, v613);
    v503, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630;
  }
}

void sub_100179334(void *a1, void *a2, void *a3)
{
  isa = sub_100216204().super.isa;
  v6 = sub_100216204().super.isa;
  v7 = [objc_opt_self() voucherInfoWithData:isa sig:v6];

  if (v7)
  {
    v8 = [a2 vouchers];
    if (v8)
    {
      v16 = v8;
      v89 = 0;
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
      sub_100216BA4();
    }

    0, v9, v10, v11, v12, v13, v14, v15, v76, v78, v81, v82, v83, v7, v87, v89, v91, v93;
    v17 = &_swiftEmptySetSingleton;
    v79 = a2;
    if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_100216E84();
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
      sub_100216C04();
      v17 = v90;
      v21 = v92;
      v22 = v94;
      v23 = v95;
      v24 = v96;
    }

    else
    {
      v25 = -1 << *(&_swiftEmptySetSingleton + 32);
      v21 = &_swiftEmptySetSingleton + 56;
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = (v27 & *(&_swiftEmptySetSingleton + 7));

      v23 = 0;
    }

    if (v17 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v28 = v23;
    v29 = v24;
    v30 = v23;
    if (v24)
    {
LABEL_15:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v17 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (v32)
      {
        while (1)
        {
          v84 = v24;
          v34 = v23;
          v97 = v32;
          v35 = sub_100179798(&v97, v85);

          if (v35)
          {
            break;
          }

          v23 = v30;
          v24 = v31;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_17:
          v33 = sub_100216F14();
          if (v33)
          {
            v88 = v33;
            type metadata accessor for VoucherMO();
            swift_dynamicCast();
            v32 = v97;
            v30 = v23;
            v31 = v24;
            if (v97)
            {
              continue;
            }
          }

          goto LABEL_23;
        }

        sub_10000D778(v17, v21, v22, v34, v84, v66, v67, v68);
        &_swiftEmptySetSingleton, v69, v70, v71, v72, v73, v74, v75, a3, v79, v22, &_swiftEmptySetSingleton, v84, v85, v88, v90, v92, v94;
      }

      else
      {
LABEL_23:
        sub_10000D778(v17, v21, v22, v23, v24, v18, v19, v20);
        &_swiftEmptySetSingleton, v36, v37, v38, v39, v40, v41, v42, a3, v79, v22, &_swiftEmptySetSingleton, v84, v85, v88, v90, v92, v94;
        type metadata accessor for VoucherMO();
        v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v77 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
        v44 = [v86 data];
        v45 = sub_100216224();
        v47 = v46;

        v48 = sub_100216204().super.isa;
        sub_100002BF0(v45, v47, v49, v50, v51, v52, v53, v54);
        [v43 setVoucherInfo:v48];

        v55 = [v86 sig];
        v56 = sub_100216224();
        v58 = v57;

        v59 = sub_100216204().super.isa;
        sub_100002BF0(v56, v58, v60, v61, v62, v63, v64, v65);
        [v43 setVoucherInfoSig:v59];

        [v80 addVouchersObject:v43];
      }
    }

    else
    {
      while (1)
      {
        v30 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= ((v22 + 64) >> 6))
        {
          v24 = 0;
          goto LABEL_23;
        }

        v29 = *&v21[8 * v30];
        ++v28;
        if (v29)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

BOOL sub_100179798(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 voucherInfo];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100216224();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = [a2 data];
  v10 = sub_100216224();
  v12 = v11;

  if (v8 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      sub_10004CD18(v6, v8, v13, v14, v15, v16, v17, v18);
      goto LABEL_10;
    }

LABEL_8:
    sub_10004CD18(v6, v8, v13, v14, v15, v16, v17, v18);
    v25 = v10;
    v26 = v12;
LABEL_18:
    sub_10004CD18(v25, v26, v19, v20, v21, v22, v23, v24);
    return 0;
  }

  if (v12 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_1000602D0(v6, v8);
  sub_100012558(v10, v12);
  v27 = sub_100052F18(v6, v8, v10, v12);
  sub_10004CD18(v10, v12, v28, v29, v30, v31, v32, v33);
  sub_100002BF0(v10, v12, v34, v35, v36, v37, v38, v39);
  sub_10004CD18(v6, v8, v40, v41, v42, v43, v44, v45);
  sub_10004CD18(v6, v8, v46, v47, v48, v49, v50, v51);
  if (!v27)
  {
    return 0;
  }

LABEL_10:
  v52 = [v3 voucherInfoSig];
  if (v52)
  {
    v53 = v52;
    v54 = sub_100216224();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xF000000000000000;
  }

  v57 = [a2 sig];
  v58 = sub_100216224();
  v60 = v59;

  if (v56 >> 60 == 15)
  {
    if (v60 >> 60 == 15)
    {
      sub_10004CD18(v54, v56, v61, v62, v63, v64, v65, v66);
      return 1;
    }

    goto LABEL_17;
  }

  if (v60 >> 60 == 15)
  {
LABEL_17:
    sub_10004CD18(v54, v56, v61, v62, v63, v64, v65, v66);
    v25 = v58;
    v26 = v60;
    goto LABEL_18;
  }

  sub_1000602D0(v54, v56);
  sub_100012558(v58, v60);
  v68 = sub_100052F18(v54, v56, v58, v60);
  sub_10004CD18(v58, v60, v69, v70, v71, v72, v73, v74);
  sub_100002BF0(v58, v60, v75, v76, v77, v78, v79, v80);
  sub_10004CD18(v54, v56, v81, v82, v83, v84, v85, v86);
  sub_10004CD18(v54, v56, v87, v88, v89, v90, v91, v92);
  return v68;
}

void *sub_100179A18(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v8 = 0;
  v4 = [v3 policyWithVersion:a1 error:&v8];
  v5 = v4;
  if (v8)
  {
    v8;

LABEL_3:
    swift_willThrow();
    return v5;
  }

  if (!v4)
  {
    sub_1000561D0();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    goto LABEL_3;
  }

  if (qword_100297228 != -1)
  {
    swift_once();
  }

  [qword_1002B0318 versionNumber];
  return v5;
}

__CFString *sub_100179B48(uint64_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v498 = a6;
  v485 = a5;
  v10 = *a1;
  v494 = a1[1];
  v492 = a1;
  v486 = a1[10];
  v487 = v10;
  v11 = type metadata accessor for SignedVoucher(0);
  v497 = *(v11 - 8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v482 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v495 = v6;
  v491 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v15 = *(v6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v16 = [a4 includedPeerIDs];
  v17 = sub_100216BB4();

  v18.super.isa = sub_100216B94().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  v499 = a2;
  v26 = [a2 peerID];
  if (!v26)
  {
    sub_100216974();
    v28 = v27;
    v26 = sub_100216964();
    v28, v29, v30, v31, v32, v33, v34, v35, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  }

  v500 = 0;
  v493 = a3;
  v36 = [v15 policyForPeerIDs:v18.super.isa candidatePeerID:v26 candidateStableInfo:a3 error:&v500];

  v37 = v500;
  v490 = v36;
  if (v36)
  {
    v45 = v36;
  }

  else
  {
    v46 = v37;
    sub_100216154();

    swift_willThrow();

    v45 = 0;
    v489 = 0;
  }

  v47 = v498;
  if (v494 != 1 && (v492[7] & 1) == 0)
  {
    v488 = v492[6];
    if (!v498)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v48 = *(v495 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride);
  if (!v48)
  {
    if (v493)
    {
      v26 = [v493 bestPolicyVersion];
      v50 = [(Client *)v26 versionNumber];

      if (v45)
      {
LABEL_13:
        v26 = [v45 version];
        v51 = [(Client *)v26 versionNumber];

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_100297228 != -1)
      {
        swift_once();
      }

      v50 = [qword_1002B0318 versionNumber];
      if (v45)
      {
        goto LABEL_13;
      }
    }

    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v51 = [qword_1002B0318 versionNumber];
LABEL_22:
    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v52 = [qword_1002B0318 versionNumber];
    if (v51 <= v50)
    {
      v53 = v50;
    }

    else
    {
      v53 = v51;
    }

    if (v52 > v53)
    {
      v53 = v52;
    }

    v488 = v53;
    if (!v47)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v488 = [v48 versionNumber];
  if (!v47)
  {
LABEL_10:
    v49 = *&v491[v495];
    goto LABEL_59;
  }

LABEL_30:
  v54 = _swiftEmptyArrayStorage;
  v500 = _swiftEmptyArrayStorage;
  v55 = v47[2];
  if (v55)
  {
    v56 = objc_opt_self();
    v57 = v47 + ((*(v497 + 80) + 32) & ~*(v497 + 80));
    v58 = v497[9];
    do
    {
      sub_1001AC0A0(v57, v14, type metadata accessor for SignedVoucher);
      isa = sub_100216204().super.isa;
      v60 = sub_100216204().super.isa;
      v26 = [v56 voucherInfoWithData:isa sig:v60];

      sub_1001AC1E4(v14, type metadata accessor for SignedVoucher);
      if (v26)
      {
        sub_100216B04();
        if (*((v500 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v500 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v54 = v500;
      }

      v57 += v58;
      --v55;
    }

    while (v55);
  }

  v500 = _swiftEmptyArrayStorage;
  if (v54 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v62 = 0;
    v497 = (v54 & 0xFFFFFFFFFFFFFF8);
    v498 = (v54 & 0xC000000000000001);
    v496 = v54;
    while (1)
    {
      if (v498)
      {
        v70 = sub_100217014();
      }

      else
      {
        if (v62 >= v497[2])
        {
          goto LABEL_55;
        }

        v70 = *(v54 + 8 * v62 + 32);
      }

      v71 = v70;
      v72 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v73 = i;
      v74 = [v70 beneficiaryID];
      v75 = sub_100216974();
      v77 = v76;

      v78 = [v499 peerID];
      v79 = sub_100216974();
      v26 = v80;

      v88 = v75 == v79 && v77 == v26;
      if (v88)
      {
        v77, v81, v82, v83, v84, v85, v86, v87, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        v26, v63, v64, v65, v66, v67, v68, v69, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
      }

      else
      {
        v89 = sub_1002171A4();
        v77, v90, v91, v92, v93, v94, v95, v96, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        v26, v97, v98, v99, v100, v101, v102, v103, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        if ((v89 & 1) == 0)
        {

          goto LABEL_42;
        }
      }

      sub_100217044();
      sub_100217074();
      sub_100217084();
      sub_100217054();
LABEL_42:
      i = v73;
      ++v62;
      v88 = v72 == v73;
      v54 = v496;
      if (v88)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
  v54, v38, v39, v40, v41, v42, v43, v44, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  v104 = v500;
  v49 = *&v491[v495];
  if (v500)
  {
    sub_10000200C(0, &qword_10029D640, TPVoucher_ptr);
    v105 = v49;
    v106.super.isa = sub_100216B14().super.isa;
    v104, v107, v108, v109, v110, v111, v112, v113, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    v114 = v493;
    goto LABEL_60;
  }

LABEL_59:
  v114 = v493;
  v105 = v49;
  v106.super.isa = 0;
LABEL_60:
  v500 = 0;
  v115 = [v105 bestRecoveryKeyForStableInfo:v114 vouchers:v106.super.isa error:&v500];

  if (v500)
  {
    v500;

    swift_willThrow();
LABEL_62:
    v116 = v490;
LABEL_170:

    return v26;
  }

  v117 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting;
  v118 = *(v495 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting);
  if (v118 == 2)
  {
    v116 = 0;
    goto LABEL_76;
  }

  if (v118)
  {
    v116 = 0;
  }

  else
  {
    v121 = *&v491[v495];
    if (v494 == 1)
    {
      v122 = 0;
    }

    else
    {
      v122 = v492[11];
    }

    v500 = 0;
    v116 = [v121 bestWalrusForStableInfo:v114 walrusStableChanges:v122 error:&v500];
    if (v500)
    {
      v500;

      swift_willThrow();
      goto LABEL_62;
    }

    v118 = *(v495 + v117);
    if (v118 == 2)
    {
      goto LABEL_76;
    }
  }

  if (v118)
  {
LABEL_76:
    v123 = 0;
    goto LABEL_77;
  }

  v119 = *&v491[v495];
  if (v494 == 1)
  {
    v120 = 0;
  }

  else
  {
    v120 = v492[12];
  }

  v500 = 0;
  v123 = [v119 bestWebAccessForStableInfo:v114 webAccessStableChanges:v120 error:&v500];
  if (v500)
  {
    v500;

    swift_willThrow();
    goto LABEL_170;
  }

LABEL_77:
  v497 = v123;
  v498 = v116;
  if (v494 == 1)
  {
    v124 = 0;
    v125 = 0;
    v496 = 0;
    LODWORD(v126) = 1;
LABEL_92:
    v147 = [v114 secureElementIdentity];
    goto LABEL_93;
  }

  v127 = *(v492 + 18);
  LODWORD(v126) = *(v492 + 76);
  if ((v126 & 1) != 0 || !v127)
  {
    v138 = v486;
    goto LABEL_89;
  }

  v128 = [v499 modelID];
  sub_100216974();
  v130 = v129;

  v501._countAndFlagsBits = 0x5654656C707041;
  v501._object = 0xE700000000000000;
  if (sub_100216A94(v501))
  {
    v130, v131, v132, v133, v134, v135, v136, v137, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    v138 = v486;
  }

  else
  {
    v502._countAndFlagsBits = 0x6363416F69647541;
    v502._object = 0xEE0079726F737365;
    v139 = sub_100216A94(v502);
    v130, v140, v141, v142, v143, v144, v145, v146, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    v138 = v486;
    if (!v139)
    {
      goto LABEL_89;
    }
  }

  v127 = 3;
LABEL_89:
  v496 = v127;
  if (!v138)
  {
    v124 = v494;
    v125 = v487;
    goto LABEL_92;
  }

  v147 = [(Client *)v138 secureElementIdentity];
  v125 = v487;
  v124 = v494;
LABEL_93:
  v499 = v147;
  if (v114 && (v155 = [v114 deviceName]) != 0)
  {
    v26 = v155;
    v156 = sub_100216974();
    v158 = v157;

    if (!v124)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v156 = 0;
    v158 = 0;
    if (!v124)
    {
LABEL_101:
      v158, v148, v149, v150, v151, v152, v153, v154, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
      goto LABEL_102;
    }
  }

  if (!v158)
  {
    goto LABEL_167;
  }

  if (v125 == v156 && v124 == v158)
  {
    goto LABEL_101;
  }

  v187 = sub_1002171A4();
  v158, v188, v189, v190, v191, v192, v193, v194, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  if ((v187 & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_102:
  if (v494 == 1)
  {
    v166 = 0;
    v167 = 0;
    if (!v114)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v166 = v492[2];
    v167 = v492[3];
    if (!v114)
    {
      goto LABEL_109;
    }
  }

  v168 = [v114 serialNumber];
  if (v168)
  {
    v26 = v168;
    v169 = sub_100216974();
    v171 = v170;

    if (v167)
    {
      goto LABEL_110;
    }

LABEL_113:
    v171, v159, v160, v161, v162, v163, v164, v165, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    goto LABEL_114;
  }

LABEL_109:
  v169 = 0;
  v171 = 0;
  if (!v167)
  {
    goto LABEL_113;
  }

LABEL_110:
  if (!v171)
  {
    goto LABEL_167;
  }

  if (v166 == v169 && v167 == v171)
  {
    goto LABEL_113;
  }

  v195 = sub_1002171A4();
  v171, v196, v197, v198, v199, v200, v201, v202, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  if ((v195 & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_114:
  if (v494 != 1)
  {
    v172 = v492[5];
    if (v114)
    {
      v173 = v492[4];
      goto LABEL_119;
    }

    if (v172)
    {
      goto LABEL_167;
    }

LABEL_132:
    v203 = v499;

    0, v204, v205, v206, v207, v208, v209, v210, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    goto LABEL_168;
  }

  if (!v114)
  {
    goto LABEL_132;
  }

  v172 = 0;
  v173 = 0;
LABEL_119:
  v26 = [v114 osVersion];
  v174 = sub_100216974();
  v176 = v175;

  if (!v172)
  {
    goto LABEL_123;
  }

  if (!v176)
  {
    goto LABEL_167;
  }

  if (v173 == v174 && v172 == v176)
  {
LABEL_123:
    v176, v177, v178, v179, v180, v181, v182, v183, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  }

  else
  {
    v211 = sub_1002171A4();
    v176, v212, v213, v214, v215, v216, v217, v218, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    if ((v211 & 1) == 0)
    {
      goto LABEL_167;
    }
  }

  v184 = [v114 bestPolicyVersion];
  v185 = [v184 versionNumber];

  if (v488 != v185)
  {
    goto LABEL_167;
  }

  if (v494 == 1)
  {
    v186 = 0;
  }

  else
  {
    v186 = v492[8];
  }

  v219 = [v114 policySecrets];
  if (!v219)
  {
    if (!v186)
    {
      v228 = 0;
      goto LABEL_143;
    }

LABEL_167:
    v203 = v499;

    goto LABEL_168;
  }

  v227 = v219;
  v228 = sub_1002168D4();

  if (!v186)
  {
LABEL_143:
    v228, v220, v221, v222, v223, v224, v225, v226, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    goto LABEL_144;
  }

  if (!v228)
  {
    goto LABEL_167;
  }

  v229 = sub_100190100(v186, v228);
  v228, v230, v231, v232, v233, v234, v235, v236, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
  if (!v229)
  {
    goto LABEL_167;
  }

LABEL_144:
  if (v115)
  {
    v237 = [v115 signingKeyData];
    v238 = sub_100216224();
    v240 = v239;
  }

  else
  {
    v238 = 0;
    v240 = 0xF000000000000000;
  }

  v241 = [v114 recoverySigningPublicKey];
  if (v241)
  {
    v242 = v241;
    v243 = sub_100216224();
    v245 = v244;
  }

  else
  {
    v243 = 0;
    v245 = 0xF000000000000000;
  }

  v26 = sub_10017B28C(v238, v240, v243, v245);
  sub_10004CD18(v238, v240, v246, v247, v248, v249, v250, v251);
  sub_10004CD18(v243, v245, v252, v253, v254, v255, v256, v257);
  if ((v26 & 1) == 0)
  {
    goto LABEL_167;
  }

  if (v115)
  {
    v258 = [v115 encryptionKeyData];
    v259 = sub_100216224();
    v261 = v260;
  }

  else
  {
    v259 = 0;
    v261 = 0xF000000000000000;
  }

  v262 = [v114 recoveryEncryptionPublicKey];
  if (v262)
  {
    v263 = v262;
    v264 = sub_100216224();
    v266 = v265;
  }

  else
  {
    v264 = 0;
    v266 = 0xF000000000000000;
  }

  v26 = sub_10017B28C(v259, v261, v264, v266);
  sub_10004CD18(v259, v261, v267, v268, v269, v270, v271, v272);
  sub_10004CD18(v264, v266, v273, v274, v275, v276, v277, v278);
  if ((v26 & 1) == 0)
  {
    goto LABEL_167;
  }

  v279 = [v114 syncUserControllableViews];
  if (!(v126 & 1 | (v496 == v279)))
  {
    goto LABEL_167;
  }

  v280 = [v114 walrusSetting];
  v281 = v280;
  if (v498)
  {
    if (!v280)
    {
      goto LABEL_167;
    }

    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v282 = v498;
    v283 = v281;
    v284 = sub_100216DC4();

    if ((v284 & 1) == 0)
    {
      goto LABEL_167;
    }
  }

  else
  {
  }

  v285 = [v114 webAccess];
  v286 = v285;
  if (v497)
  {
    if (!v285)
    {
      goto LABEL_167;
    }

    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v287 = v497;
    v288 = v286;
    v289 = sub_100216DC4();

    if ((v289 & 1) == 0)
    {
      goto LABEL_167;
    }
  }

  else
  {
  }

  v473 = v499;
  v474 = [v114 secureElementIdentity];
  v475 = v474;
  if (!v473)
  {
    if (!v474)
    {

      goto LABEL_249;
    }

    goto LABEL_247;
  }

  if (!v474)
  {

LABEL_247:
    v203 = v499;
    goto LABEL_168;
  }

  sub_10000200C(0, &qword_10029D9F8, TPPBSecureElementIdentity_ptr);
  v476 = sub_100216DC4();

  v203 = v499;
  if (v476)
  {

LABEL_249:
    v26 = 0;
    v471 = v498;
    goto LABEL_236;
  }

LABEL_168:
  v290 = v489;
  v291 = sub_100179A18(v488);
  if (v290)
  {

    v116 = v498;
    goto LABEL_170;
  }

  v488 = v115;
  v293 = v291;
  v294 = [v291 version];

  v295 = [(Client *)v294 versionNumber];
  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v489 = 0;
  v296 = qword_1002B0320;
  v297 = [qword_1002B0320 versionNumber];
  if (v126)
  {
LABEL_192:
    v325 = *&v491[v495];
    if (v295 >= v297)
    {
      v491 = v296;
      v486 = v294;
    }

    else
    {
      v486 = 0;
      v491 = v294;
    }

    v326 = v493;
    v327 = v494;
    if (v494 == 1 || (v328 = v492[8]) == 0)
    {
      v331 = v325;
      v332 = v294;
      if (!v326)
      {
        0, v333, v334, v335, v336, v337, v338, v339, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        v495 = 0;
        v382 = v496;
        if (v126)
        {
          v382 = 0;
        }

        LODWORD(v496) = v382;
        if (v327 < 2)
        {
LABEL_214:
          0, v364, v365, v366, v367, v368, v369, v370, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
          v375 = 0xE000000000000000;
          goto LABEL_216;
        }

LABEL_215:

        v375 = v327;
LABEL_216:
        v383 = sub_100216964();
        v375, v384, v385, v386, v387, v388, v389, v390, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        if (v327 == 1 || (v398 = v492[3]) == 0)
        {
          if (v493 && (v399 = [v493 serialNumber]) != 0)
          {
            v400 = v383;
            v401 = v399;
            sub_100216974();
            v398 = v402;
            0, v402, v403, v404, v405, v406, v407, v408, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;

            v383 = v400;
          }

          else
          {
            0, v391, v392, v393, v394, v395, v396, v397, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
            v398 = 0xE000000000000000;
          }
        }

        else
        {
        }

        v409 = sub_100216964();
        v398, v410, v411, v412, v413, v414, v415, v416, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        if (v494 == 1 || (v424 = v492[5]) == 0)
        {
          if (v493)
          {
            v425 = [v493 osVersion];
            sub_100216974();
            v424 = v426;
            0, v426, v427, v428, v429, v430, v431, v432, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
          }

          else
          {
            0, v417, v418, v419, v420, v421, v422, v423, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
            v424 = 0xE000000000000000;
          }
        }

        else
        {
        }

        v494 = v294;
        v433 = sub_100216964();
        v424, v434, v435, v436, v437, v438, v439, v440, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        v441 = v488;
        if (v488)
        {
          v442 = [v488 signingKeyData];
          v443 = sub_100216224();
          v445 = v444;

          v446.super.isa = sub_100216204().super.isa;
          sub_100002BF0(v443, v445, v447, v448, v449, v450, v451, v452);
          v453 = [(objc_class *)v441 encryptionKeyData];
          v454 = sub_100216224();
          v456 = v455;

          v441 = sub_100216204().super.isa;
          sub_100002BF0(v454, v456, v457, v458, v459, v460, v461, v462);
        }

        else
        {
          v446.super.isa = 0;
        }

        v463 = v497;
        v464 = v493;
        if (v493)
        {
          v464 = [v493 isInheritedAccount];
        }

        v500 = 0;
        LOBYTE(v481) = v464;
        v479 = v446.super.isa;
        v480 = v441;
        v478 = v433;
        v477 = v463;
        v465 = v433;
        v466 = v491;
        v467 = v495;
        v496 = v441;
        v468 = v446.super.isa;
        v469 = v486;
        v26 = [v325 createStableInfoWithFrozenPolicyVersion:v491 flexiblePolicyVersion:v477 policySecrets:v383 syncUserControllableViews:v409 secureElementIdentity:v478 walrusSetting:v485 webAccess:v479 deviceName:v480 serialNumber:v481 osVersion:&v500 signingKeyPair:? recoverySigningPubKey:? recoveryEncryptionPubKey:? isInheritedAccount:? error:?];

        v470 = v500;
        if (!v26)
        {
          v472 = v470;
          sub_100216154();

          swift_willThrow();
          v116 = v497;
          goto LABEL_170;
        }

        v471 = v497;
LABEL_236:

        return v26;
      }

      v340 = [v326 policySecrets];
      if (!v340)
      {
        v356 = 0;
        v495 = 0;
LABEL_202:
        v356, v341, v342, v343, v344, v345, v346, v347, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
        if (v126)
        {
          v371 = 0;
        }

        else
        {
          v371 = v496;
        }

        if (v326 != 0 && (v126 & 1) != 0)
        {
          v371 = [v326 syncUserControllableViews];
        }

        LODWORD(v496) = v371;
        if (v327 < 2)
        {
          if (v326)
          {
            v372 = [v326 deviceName];
            if (v372)
            {
              v373 = v372;
              sub_100216974();
              v375 = v374;
              0, v374, v376, v377, v378, v379, v380, v381, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;

              goto LABEL_216;
            }
          }

          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v348 = v340;
      v328 = sub_1002168D4();
      0, v349, v350, v351, v352, v353, v354, v355, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    }

    else
    {

      v329 = v325;
      v330 = v294;
    }

    v356 = sub_1001AD500(v328);
    v328, v357, v358, v359, v360, v361, v362, v363, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    v495 = sub_1002168C4().super.isa;
    goto LABEL_202;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v298 = sub_100216774();
  sub_100002648(v298, qword_10029D160);
  v299 = sub_100216754();
  v300 = sub_100216C54();
  if (!os_log_type_enabled(v299, v300))
  {

    goto LABEL_192;
  }

  v301 = swift_slowAlloc();
  v302 = swift_slowAlloc();
  v500 = v302;
  *v301 = 136446210;
  HIDWORD(v484) = v126;
  v486 = v301;
  v483 = v302;
  if (v496 > 1)
  {
    if (v496 == 2)
    {
      v303 = @"ENABLED";
      goto LABEL_189;
    }

    if (v496 == 3)
    {
      v303 = @"FOLLOWING";
      goto LABEL_189;
    }

LABEL_186:
    v303 = [NSString stringWithFormat:@"(unknown: %i)", v496];
    goto LABEL_190;
  }

  if (!v496)
  {
    v303 = @"UNKNOWN";
    goto LABEL_189;
  }

  if (v496 != 1)
  {
    goto LABEL_186;
  }

  v303 = @"DISABLED";
LABEL_189:
  v304 = v303;
LABEL_190:
  v126 = v294;
  result = v303;
  if (result)
  {
    v305 = result;
    v306 = sub_100216974();
    v308 = v307;

    v309 = sub_100005FB0(v306, v308, &v500);
    v308, v310, v311, v312, v313, v314, v315, v316, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491;
    v317 = v486;
    *&v486->_TtCs12_SwiftObject_opaque[4] = v309;
    _os_log_impl(&_mh_execute_header, v299, v300, "Intending to set user-controllable views to %{public}s", v317, 0xCu);
    sub_100006128(v483, v318, v319, v320, v321, v322, v323, v324);

    v294 = v126;
    LOBYTE(v126) = BYTE4(v484);
    goto LABEL_192;
  }

  __break(1u);
  return result;
}

BOOL sub_10017B28C(_TtC18TrustedPeersHelper6Client *a1, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      sub_1000602D0(a1, a2);
      sub_1000602D0(a3, a4);
      sub_10004CD18(a1, a2, v8, v9, v10, v11, v12, v13);
      return 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 == 15)
  {
LABEL_5:
    sub_1000602D0(a1, a2);
    sub_1000602D0(a3, a4);
    sub_10004CD18(a1, a2, v15, v16, v17, v18, v19, v20);
    sub_10004CD18(a3, a4, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  sub_1000602D0(a1, a2);
  sub_1000602D0(a3, a4);
  v27 = sub_100052F18(a1, a2, a3, a4);
  sub_10004CD18(a3, a4, v28, v29, v30, v31, v32, v33);
  sub_10004CD18(a1, a2, v34, v35, v36, v37, v38, v39);
  return v27;
}

void sub_10017B39C(void *a1@<X0>, _TtC18TrustedPeersHelper6Client *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for Bottle(0);
  __chkstk_darwin(v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) bottles];
  if (!v13 || (v14 = v13, v39 = 0, type metadata accessor for BottleMO(), sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO, &protocol conformance descriptor for NSObject), sub_100216BA4(), v14, (v15 = v39) == 0))
  {
    v39 = 0;
    sub_1000561D0();
    swift_allocError();
    v26 = xmmword_100226110;
    goto LABEL_7;
  }

  v16 = sub_1001A5A5C(v15, a1, a2);
  a2, v17, v18, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47;
  v39 = v16;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v24 = sub_100216ED4();
    if (v24 >= 2)
    {
LABEL_5:
      sub_1000561D0();
      swift_allocError();
      v26 = xmmword_100226100;
LABEL_7:
      *v25 = v26;
      *(v25 + 16) = 13;
      swift_willThrow();
      goto LABEL_8;
    }
  }

  else
  {
    v24 = *(v16 + 16);
    if (v24 >= 2)
    {
      goto LABEL_5;
    }
  }

  if (!v24)
  {
    sub_1000561D0();
    swift_allocError();
    v26 = xmmword_100226080;
    goto LABEL_7;
  }

  sub_10017B690();
  v35 = v34;
  v37 = __chkstk_darwin(v34, v36);
  *(&v38 - 4) = a1;
  *(&v38 - 3) = a2;
  *(&v38 - 2) = v37;
  sub_1001A13C4(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_100216654();

  if (!v5)
  {
    sub_1001AC038(v12, a3, type metadata accessor for Bottle);
  }

LABEL_8:
  v39, v27, v28, v29, v30, v31, v32, v33, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47;
}

uint64_t sub_10017B910(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a1;
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
    _os_log_impl(&_mh_execute_header, v10, v8, "isRecoveryKeySet complete %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000018, 0x800000010023C160, v23, v24, v25, v26, v27, v28);
  return a4(v6 & 1, a2);
}

void sub_10017BB50(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4);
  }

  else
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v9 = swift_allocObject();
    *v9->endpoint = sub_1001A92B8;
    *v9->containerMap = v8;
    v34[4] = sub_1001ACCC0;
    v35 = v9;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_100109050;
    v34[3] = &unk_100282630;
    v10 = _Block_copy(v34);
    v11 = v35;
    v12 = a4;

    v11, v13, v14, v15, v16, v17, v18, v19;
    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    if (v6)
    {
      __break(1u);
    }
  }
}

void sub_10017BCE8(uint64_t a1, void (*a2)(id, void *), int8x8_t a3, uint64_t a4, SEL *a5, const char *a6, const char *a7)
{
  v11 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v31 = 0;
  v12 = [v11 *a5];
  v13 = v31;
  if (v31)
  {
    swift_willThrow();
    v14 = qword_100297520;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    v17 = v15;
    v18 = sub_100216754();
    v19 = sub_100216C74();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v17;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, a7, v20, 0xCu);
      sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
    }

    v24 = v17;
    a2(0, v13);
  }

  else
  {
    v25 = v12;
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
      *v29 = vuzp1_s8(a3, v30).u32[0];
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, a6, v29, 8u);
    }

    a2(v25, 0);
  }
}

void sub_10017BFB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD000000000000019, 0x800000010023CEC0);

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
    _os_log_impl(&_mh_execute_header, v10, v11, "beginning a removeRecoveryKey", v12, 2u);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001AB54C;
  *(v13 + 24) = v7;
  *(v13 + 32) = v5;
  v14 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = v5;
  *(v15 + 32) = sub_1001AB558;
  *(v15 + 40) = v13;
  v16 = swift_allocObject();
  *v16->endpoint = sub_1001ACE7C;
  *v16->containerMap = v15;
  v63[4] = sub_1001ACCC0;
  v64 = v16;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 1107296256;
  v63[2] = sub_100109050;
  v63[3] = &unk_1002848B8;
  v17 = _Block_copy(v63);
  v18 = v64;
  v19 = v5;

  v18, v20, v21, v22, v23, v24, v25, v26;
  [v14 performBlockAndWait:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v6, v28, v29, v30, v31, v32, v33, v34;
  v7, v35, v36, v37, v38, v39, v40, v41;
  v13, v42, v43, v44, v45, v46, v47, v48;
  v15, v49, v50, v51, v52, v53, v54, v55;
  v16, v56, v57, v58, v59, v60, v61, v62;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10017C2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a1;
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
    _os_log_impl(&_mh_execute_header, v10, v8, "removeRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023CEC0, v23, v24, v25, v26, v27, v28);
  return a4(v6 & 1, a2);
}

void sub_10017C500(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4);
  }

  else
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v9 = swift_allocObject();
    *v9->endpoint = sub_1001AB564;
    *v9->containerMap = v8;
    v34[4] = sub_1001ACCC0;
    v35 = v9;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_100109050;
    v34[3] = &unk_100284930;
    v10 = _Block_copy(v34);
    v11 = v35;
    v12 = a4;

    v11, v13, v14, v15, v16, v17, v18, v19;
    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    if (v6)
    {
      __break(1u);
    }
  }
}

void sub_10017C698(char *a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v7 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v7)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v176 = sub_100216774();
    sub_100002648(v176, qword_10029D160);
    v177 = sub_100216754();
    v178 = sub_100216C54();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "no prepared identity, cannot remove recovery key", v179, 2u);
    }

    sub_1000561D0();
    v181 = swift_allocError();
    v182 = xmmword_10021DA90;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = sub_100216974();
  v11 = v10;

  v12 = [*&a1[v6] egoPeerStableInfo];
  if (!v12)
  {
    v11, v13, v14, v15, v16, v17, v18, v19, v390, v397, v405, v412, v424, v435, v446, v457, v467, v478;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v183 = sub_100216774();
    sub_100002648(v183, qword_10029D160);
    v184 = sub_100216754();
    v185 = sub_100216C54();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&_mh_execute_header, v184, v185, "stableInfo does not exist", v186, 2u);
    }

    sub_1000561D0();
    v181 = swift_allocError();
    v182 = xmmword_100225FD0;
LABEL_25:
    *v180 = v182;
    *(v180 + 16) = 13;
    a2(0, v181);

    return;
  }

  v20 = v12;
  v21 = sub_100216224();
  v23 = v22;

  v24 = [*&a1[v6] egoPeerStableInfoSig];
  if (!v24)
  {
    v11, v25, v26, v27, v28, v29, v30, v31, v390, v397, v405, v412, v424, v435, v446, v457, v467, v478;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v187 = sub_100216774();
    sub_100002648(v187, qword_10029D160);
    v188 = sub_100216754();
    v189 = sub_100216C54();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "stableInfoSig does not exist", v190, 2u);
    }

    sub_1000561D0();
    v191 = swift_allocError();
    *v192 = xmmword_100225FD0;
    *(v192 + 16) = 13;
    a2(0, v191);

    goto LABEL_50;
  }

  v479 = v9;
  v489 = a2;
  v32 = a3;
  v33 = v24;
  v34 = sub_100216224();
  v35 = v21;
  v37 = v36;

  v38 = objc_allocWithZone(TPPeerStableInfo);
  sub_100012558(v35, v23);
  sub_100012558(v34, v37);
  isa = sub_100216204().super.isa;
  v490 = v23;
  v40 = sub_100216204().super.isa;
  v41 = [v38 initWithData:isa sig:v40];

  v23 = v490;
  v487 = v34;
  v488 = v37;
  v42 = v37;
  v21 = v35;
  sub_100002BF0(v34, v42, v43, v44, v45, v46, v47, v48);

  sub_100002BF0(v35, v490, v49, v50, v51, v52, v53, v54);
  if (!v41)
  {
    v11, v55, v56, v57, v58, v59, v60, v61, v390, v397, v405, v412, v424, v435, v446, v457, v467, v479;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v199 = sub_100216774();
    sub_100002648(v199, qword_10029D160);
    v200 = sub_100216754();
    v201 = sub_100216C54();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "cannot create TPPeerStableInfo", v202, 2u);
    }

    sub_1000561D0();
    v203 = swift_allocError();
    *v204 = xmmword_10021DC20;
    *(v204 + 16) = 13;
    v489(0, v203);

    goto LABEL_49;
  }

  v62 = [*&a1[v6] egoPeerPermanentInfo];
  v70 = v32;
  v486 = v41;
  if (!v62)
  {
    v11, v63, v64, v65, v66, v67, v68, v69, v390, v397, v405, v412, v424, v435, v446, v457, v467, v479;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v211 = sub_100216774();
    sub_100002648(v211, qword_10029D160);
    v212 = sub_100216754();
    v213 = sub_100216C54();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 0;
      _os_log_impl(&_mh_execute_header, v212, v213, "permanentInfo does not exist", v214, 2u);
    }

    sub_1000561D0();
    v215 = swift_allocError();
    *v216 = xmmword_100225FD0;
    *(v216 + 16) = 13;
    v489(0, v215);

    goto LABEL_48;
  }

  v71 = v62;
  v72 = sub_100216224();
  v74 = v73;

  v75 = [*&a1[v6] egoPeerPermanentInfoSig];
  if (!v75)
  {
    v11, v76, v77, v78, v79, v80, v81, v82, v390, v397, v405, v412, v424, v435, v446, v457, v74, v479;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v217 = sub_100216774();
    sub_100002648(v217, qword_10029D160);
    v218 = sub_100216754();
    v219 = sub_100216C54();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&_mh_execute_header, v218, v219, "permInfoSig does not exist", v220, 2u);
    }

    sub_1000561D0();
    v221 = swift_allocError();
    *v222 = xmmword_100225FD0;
    *(v222 + 16) = 13;
    v489(0, v221);

    sub_100002BF0(v72, v471, v223, v224, v225, v226, v227, v228);
LABEL_48:

LABEL_49:
    sub_100002BF0(v487, v488, v205, v206, v207, v208, v209, v210);
LABEL_50:
    v229 = v21;
    v230 = v23;
LABEL_51:

    sub_100002BF0(v229, v230, v193, v194, v195, v196, v197, v198);
    return;
  }

  v458 = v35;
  v83 = v75;
  v84 = sub_100216224();
  v86 = v85;

  v87 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v72, v74);
  sub_100012558(v84, v86);
  v88 = sub_100216964();
  v11, v89, v90, v91, v92, v93, v94, v95, v390, v397, v405, v412, v424, v435, v446, v458, v74, v479;
  v96 = sub_100216204().super.isa;
  v97 = sub_100216204().super.isa;
  v413 = v87;
  v98 = [objc_opt_self() permanentInfoWithPeerID:v88 data:v96 sig:v97 keyFactory:v87];

  v425 = v84;
  v436 = v86;
  v99 = v84;
  v100 = v98;
  sub_100002BF0(v99, v86, v101, v102, v103, v104, v105, v106);

  v447 = v72;
  sub_100002BF0(v72, v468, v107, v108, v109, v110, v111, v112);

  if (!v98)
  {
    v11, v113, v114, v115, v116, v117, v118, v119, v391, v398, v406, v413, v425, v86, v72, v459, v468, v480;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v231 = sub_100216774();
    sub_100002648(v231, qword_10029D160);
    v232 = sub_100216754();
    v233 = sub_100216C54();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&_mh_execute_header, v232, v233, "cannot create TPPeerPermanentInfo", v234, 2u);
    }

    sub_1000561D0();
    v235 = swift_allocError();
    *v236 = xmmword_10021DC20;
    *(v236 + 16) = 13;
    v489(0, v235);

    sub_100002BF0(v428, v439, v237, v238, v239, v240, v241, v242);
    sub_100002BF0(v450, v472, v243, v244, v245, v246, v247, v248);

    sub_100002BF0(v487, v488, v249, v250, v251, v252, v253, v254);
    v229 = v462;
    v230 = v490;
    goto LABEL_51;
  }

  v120 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v121 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v491[0] = 0;
  v122 = [v121 getViewsForPeer:v98 stableInfo:v486 error:v491];
  v124 = v490;
  v123 = v491[0];
  v125 = v459;
  if (v122)
  {
    v126 = v122;
    v127 = sub_100216BB4();
    v128 = v123;

    v129 = *&a1[v120];
    v491[0] = 0;
    v130 = [v129 isRecoveryKeyEnrolledWithError:v491];
    v138 = v491[0];
    if (v491[0])
    {
      v139 = v491[0];
      v127, v140, v141, v142, v143, v144, v145, v146, v391, v398, v406, v413, v425, v436, v447, v459, v468, v480;
      v11, v147, v148, v149, v150, v151, v152, v153, v392, v399, v407, v414, v426, v437, v448, v460, v469, v481;
      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v154 = sub_100216774();
      sub_100002648(v154, qword_10029D160);
      v155 = v139;
      v156 = sub_100216754();
      v157 = sub_100216C74();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v158 = 138543362;
        v160 = v155;
        v161 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v161;
        *v159 = v161;
        _os_log_impl(&_mh_execute_header, v156, v157, "error determining whether Recovery Key is enrolled: %{public}@", v158, 0xCu);
        sub_1000114D4(v159, &qword_10029D580, &unk_10021CCC0);

        v124 = v490;
      }

      v162 = v155;
      v489(0, v138);

      sub_100002BF0(v427, v438, v163, v164, v165, v166, v167, v168);
      v175 = v449;
    }

    else
    {
      if (v130)
      {
        v297 = [objc_allocWithZone(TPRecoveryKeyPair) initWithStableInfo:v486];
        sub_100013E34(v297, v127);
        v323 = v322;

        v127, v324, v325, v326, v327, v328, v329, v330, v391, v398, v70, v413, v425, v436, v447, v459, v468, v480;
        strcpy(v491, "signing-key ");
        BYTE5(v491[1]) = 0;
        HIWORD(v491[1]) = -5120;
        v331 = v323;
        v493._countAndFlagsBits = v483;
        v493._object = v11;
        sub_100216A14(v493);
        v333 = v491[0];
        v332 = v491[1];

        v334 = v331;
        v401 = v100;
        v335 = v409;

        v336 = a1;
        v337 = v486;
        sub_10019BE14(v333, v332, v489, v409, v336, v337, v334, v483, v11);

        v11, v338, v339, v340, v341, v342, v343, v344, v394, v401, v409, v420, v432, v443, v454, v464, v475, v483;
        sub_100002BF0(v465, v490, v345, v346, v347, v348, v349, v350);
        sub_100002BF0(v487, v488, v351, v352, v353, v354, v355, v356);
        sub_100002BF0(v455, v476, v357, v358, v359, v360, v361, v362);
        sub_100002BF0(v433, v444, v363, v364, v365, v366, v367, v368);
        v332, v369, v370, v371, v372, v373, v374, v375, v395, v402, v410, v421, v433, v444, v455, v465, v476, v484;
        v11, v376, v377, v378, v379, v380, v381, v382, v396, v403, v411, v422, v434, v445, v456, v466, v477, v485;

        v335, v383, v384, v385, v386, v387, v388, v389;
        return;
      }

      v127, v131, v132, v133, v134, v135, v136, v137, v391, v398, v406, v413, v425, v436, v447, v459, v468, v480;
      v11, v298, v299, v300, v301, v302, v303, v304, v393, v400, v408, v418, v430, v441, v452, v463, v474, v482;
      v305 = v489;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v306 = sub_100216774();
      sub_100002648(v306, qword_10029D160);
      v307 = sub_100216754();
      v308 = sub_100216C54();
      if (os_log_type_enabled(v307, v308))
      {
        v309 = swift_slowAlloc();
        *v309 = 0;
        _os_log_impl(&_mh_execute_header, v307, v308, "recovery key is not registered, nothing to remove.", v309, 2u);
        v305 = v489;
      }

      v305(1, 0);
      sub_100002BF0(v431, v442, v310, v311, v312, v313, v314, v315);
      v175 = v453;
    }

    sub_100002BF0(v175, v470, v169, v170, v171, v172, v173, v174);

    sub_100002BF0(v487, v488, v316, v317, v318, v319, v320, v321);
    v296 = v461;
  }

  else
  {
    v255 = v491[0];
    v11, v256, v257, v258, v259, v260, v261, v262, v391, v398, v406, v413, v425, v436, v447, v459, v468, v480;
    v263 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v264 = sub_100216774();
    sub_100002648(v264, qword_10029D160);
    swift_errorRetain();
    v265 = sub_100216754();
    v266 = sub_100216C74();

    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      *v267 = 138412290;
      swift_errorRetain();
      v269 = _swift_stdlib_bridgeErrorToNSError();
      *(v267 + 4) = v269;
      *v268 = v269;
      _os_log_impl(&_mh_execute_header, v265, v266, "cannot create peerViews: %@)", v267, 0xCu);
      sub_1000114D4(v268, &qword_10029D580, &unk_10021CCC0);

      v124 = v490;
    }

    sub_1000561D0();
    v270 = swift_allocError();
    *v271 = v263;
    *(v271 + 8) = 0;
    *(v271 + 16) = 10;
    swift_errorRetain();
    v489(0, v270);

    sub_100002BF0(v429, v440, v272, v273, v274, v275, v276, v277);
    sub_100002BF0(v451, v473, v278, v279, v280, v281, v282, v283);

    sub_100002BF0(v487, v488, v284, v285, v286, v287, v288, v289);
    v296 = v125;
  }

  sub_100002BF0(v296, v124, v290, v291, v292, v293, v294, v295);
}