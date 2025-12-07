void sub_120490()
{
  v1 = sub_3D68(&qword_287E08, &qword_1FD0D8);
  v259 = *(v1 - 8);
  v260 = v1;
  __chkstk_darwin(v1);
  v258 = &v235 - v2;
  v3 = sub_3D68(&qword_287E10, &qword_1FD0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v235 - v5;
  v7 = sub_3D68(&qword_287E18, &qword_1FD0E8);
  v236 = *(v7 - 8);
  v237 = v7;
  __chkstk_darwin(v7);
  v235 = &v235 - v8;
  v9 = sub_3D68(&qword_287E20, &qword_1FD0F0);
  v256 = *(v9 - 8);
  v257 = v9;
  __chkstk_darwin(v9);
  v255 = &v235 - v10;
  v11 = sub_3D68(&qword_287E28, &qword_1FD0F8);
  v253 = *(v11 - 8);
  v254 = v11;
  __chkstk_darwin(v11);
  v252 = &v235 - v12;
  v13 = sub_3D68(&qword_287E30, &qword_1FD100);
  v250 = *(v13 - 8);
  v251 = v13;
  __chkstk_darwin(v13);
  v249 = &v235 - v14;
  v15 = sub_3D68(&qword_287E38, &qword_1FD108);
  v240 = *(v15 - 8);
  v241 = v15;
  __chkstk_darwin(v15);
  v239 = &v235 - v16;
  v17 = sub_3D68(&qword_287E40, &qword_1FD110);
  v246 = *(v17 - 8);
  v247 = v17;
  __chkstk_darwin(v17);
  v245 = &v235 - v18;
  v19 = sub_1E1640();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = sub_1E1660();
  (*(v20 + 8))(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v242 = v6;
  v243 = v4;
  v244 = v3;
  v262 = v0;
  v26 = *(v0 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v27 = v26 + *(*v26 + class metadata base offset for ManagedBuffer + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v26 + v28));
  v29 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  v30 = (v27 + v29[8]);
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  sub_178BC(v31, v32, v33, v34);
  *&v248 = v31;
  *(&v248 + 1) = v32;
  sub_185EC(v31, v32, v33, v34, v35, v36, v37, v38);
  v39 = (v27 + v29[9]);
  v40 = v39[1];
  v41 = v39[2];
  v42 = v39[4];
  v286[3] = v39[3];
  v286[4] = v42;
  v286[1] = v40;
  v286[2] = v41;
  v286[0] = *v39;
  v284 = v39[2];
  v285[0] = v39[3];
  v285[1] = v39[4];
  v283 = v39[1];
  v282 = *v39;
  v43 = *(v27 + v29[10]);
  sub_17AA4(v286, &v287, &qword_287E48, &qword_1FD118);
  v261 = v43;

  os_unfair_lock_unlock((v26 + v28));
  v289 = v284;
  v290 = v285[0];
  v291 = v285[1];
  v287 = v282;
  v288 = v283;
  if (v34)
  {
    v238 = v33;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v44 = sub_1E0CB0();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1E7EA0;
    v49 = *(v45 + 104);
    v49(v48 + v47, enum case for DataEventTrait.onlyOnce(_:), v44);
    v49(v48 + v47 + v46, enum case for DataEventTrait.unique(_:), v44);
    v50 = OBJC_IVAR___BAAnalyticsController_sessionManager;
    v51 = v262;
    swift_beginAccess();
    v59 = *(v51 + v50);
    if (v59)
    {
      v282 = v248;
      *&v283 = v238;
      *(&v283 + 1) = v34;
      sub_127730();

      v60 = v245;
      sub_1E0B80();
      sub_1E0D10();
      v48, v61, v62, v63, v64, v65, v66, v67;
      v59, v68, v69, v70, v71, v72, v73, v74;
      (*(v246 + 8))(v60, v247);
    }

    else
    {
      v48, v52, v53, v54, v55, v56, v57, v58;
      sub_185EC(v248, *(&v248 + 1), v238, v34, v75, v76, v77, v78);
    }
  }

  v79 = v287;
  v278 = v288;
  v279 = v289;
  v280 = v290;
  v281 = v291;
  v80 = v262;
  if (*(&v287 + 1) != 1)
  {
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v81 = sub_1E0CB0();
    v82 = *(v81 - 8);
    v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1E9970;
    (*(v82 + 104))(v84 + v83, enum case for DataEventTrait.onlyOnce(_:), v81);
    v85 = OBJC_IVAR___BAAnalyticsController_sessionManager;
    swift_beginAccess();
    v93 = *(v80 + v85);
    if (v93)
    {
      v282 = v79;
      v283 = v278;
      v284 = v279;
      v285[0] = v280;
      v285[1] = v281;
      sub_1276DC();

      v94 = v239;
      sub_1E0B80();
      sub_1E0D10();
      v84, v95, v96, v97, v98, v99, v100, v101;
      v93, v102, v103, v104, v105, v106, v107, v108;
      (*(v240 + 8))(v94, v241);
    }

    else
    {
      v84, v86, v87, v88, v89, v90, v91, v92;
      sub_18E48(&v287, &qword_287E48, &qword_1FD118);
    }
  }

  sub_121F58(&v282);
  v109 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v110 = *(v80 + v109);
  if (v110)
  {
    v276 = v284;
    v277[0] = v285[0];
    *(v277 + 10) = *(v285 + 10);
    v274 = v282;
    v275 = v283;
    sub_12743C();

    v111 = v249;
    sub_1E0B80();
    sub_1E0D10();
    v110, v112, v113, v114, v115, v116, v117, v118;
    (*(v250 + 8))(v111, v251);
  }

  else
  {
    sub_127688(&v282);
  }

  sub_1230B0(v271);
  v126 = *(&v271[0] + 1);
  v127 = v272;
  v128 = *(v80 + v109);
  if (v128)
  {
    v274 = v271[0];
    v275 = v271[1];
    v276 = v272;
    *&v277[0] = v273;
    sub_127490();

    v129 = v252;
    sub_1E0B80();
    sub_1E0D10();
    v128, v130, v131, v132, v133, v134, v135, v136;
    (*(v253 + 8))(v129, v254);
  }

  else
  {
    v273, v119, v120, v121, v122, v123, v124, v125;
    v127, v137, v138, v139, v140, v141, v142, v143;
    v126, v144, v145, v146, v147, v148, v149, v150;
  }

  sub_1236C0(&v274);
  v151 = *(v80 + v109);
  if (v151)
  {
    v269 = v277[0];
    v270 = *&v277[1];
    v267 = v275;
    v268 = v276;
    v266 = v274;
    sub_1274E4();

    v152 = v255;
    sub_1E0B80();
    sub_1E0D10();
    v151, v153, v154, v155, v156, v157, v158, v159;
    (*(v256 + 8))(v152, v257);
    v160 = sub_125EE4();
    if (!v161)
    {
      goto LABEL_25;
    }

LABEL_20:
    v168 = v161;
    v169 = v160;
    *&v266 = v160;
    *(&v266 + 1) = v161;
    sub_12758C();
    if (sub_1E1930())
    {
      *&v266 = 0x6C6975625F707061;
      *(&v266 + 1) = 0xEA00000000003D64;
      v292._countAndFlagsBits = v169;
      v292._object = v168;
      sub_1E17E0(v292);
      v168, v177, v178, v179, v180, v181, v182, v183;
      v184 = *(&v266 + 1);
      v185 = *(v80 + v109);
      if (v185)
      {
        sub_1275E0();

        v186 = v235;
        sub_1E0B80();
        sub_1E0D10();
        v185, v187, v188, v189, v190, v191, v192, v193;
        (*(v236 + 8))(v186, v237);
        goto LABEL_25;
      }
    }

    else
    {
      v184 = v168;
    }

    v184, v170, v171, v172, v173, v174, v175, v176;
    goto LABEL_25;
  }

  sub_127634(&v274);
  v160 = sub_125EE4();
  if (v161)
  {
    goto LABEL_20;
  }

LABEL_25:
  if (v261)
  {
    v194 = *(v80 + v109);
    if (v194)
    {
      *&v266 = v261;
      sub_125B3C();

      v195 = v242;
      sub_1E0B80();
      sub_1E0D10();
      v194, v196, v197, v198, v199, v200, v201, v202;
      (*(v243 + 8))(v195, v244);
    }

    else
    {
      v261, v161, v162, v163, v164, v165, v166, v167;
    }
  }

  sub_123854(&v266);
  v210 = *(&v266 + 1);
  v211 = v268;
  v212 = *(v80 + v109);
  if (v212)
  {
    v263 = v266;
    v264 = v267;
    v265 = v268;
    sub_127538();

    v213 = v258;
    sub_1E0B80();
    sub_1E0D10();
    v212, v214, v215, v216, v217, v218, v219, v220;
    (*(v259 + 8))(v213, v260);
  }

  else
  {
    *(&v267 + 1), v203, v204, v205, v206, v207, v208, v209;
    v210, v221, v222, v223, v224, v225, v226, v227;
    v211, v228, v229, v230, v231, v232, v233, v234;
  }
}

void sub_121448(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E15E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1610();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR___BAAnalyticsController_workQueue);
    v35 = v4;
    v36 = v7;
    v13 = Strong;
    v34 = v12;

    v14 = swift_allocObject();
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    aBlock[4] = sub_12780C;
    v39 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_26E358;
    v17 = _Block_copy(aBlock);

    sub_1E1600();
    v37 = _swiftEmptyArrayStorage;
    sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_3D68(&unk_287C10, &qword_1FC390);
    sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
    sub_1E1A70();
    v18 = v34;
    sub_1E19F0();
    _Block_release(v17);

    (*(v35 + 8))(v6, v3);
    (*(v8 + 8))(v10, v36);
    v19 = v39;
    v14, v20, v21, v22, v23, v24, v25, v26;
    v19, v27, v28, v29, v30, v31, v32, v33;
  }
}

void sub_1217A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    __chkstk_darwin(Strong);
    *(&v17 - 2) = a2;
    v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_127B70(v9 + v10, v18);
    os_unfair_lock_unlock((v9 + v11));
    sub_124C5C(v8);
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = [v12 analyticsSessionDataIsPriceDropNotificationEnabled];
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    v8[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = v13;
    sub_120490();
    v8[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 1;
    v14 = *&v8[OBJC_IVAR___BAAnalyticsController_workQueue];
    *v6 = v14;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v15 = v14;
    LOBYTE(v14) = sub_1E1660();
    (*(v4 + 8))(v6, v3);
    if (v14)
    {
      v16 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
      if ((v8[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] & 1) == 0)
      {
        dispatch_resume(*&v8[OBJC_IVAR___BAAnalyticsController_privateDataQueue]);
        v8[v16] = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_121A38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = sub_1E1730();

  v3(v4);
  v2, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

void sub_121AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a2;
  v55 = a1;
  v4 = sub_1E09E0();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v11 = *(v3 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v9 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  v13(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v11;
  LOBYTE(v11) = sub_1E1660();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v62 = v10;
  v16 = *(v3 + v10);
  *v9 = v16;
  v13(v9, v12, v6);
  v17 = v16;
  LOBYTE(v16) = sub_1E1660();
  v15(v9, v6);
  if ((v16 & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v58 = v7 + 104;
  v18 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
  if (*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueueActive) == 1)
  {
    dispatch_suspend(*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v3 + v18) = 0;
  }

  v57 = v18;
  v59 = v15;
  v60 = v13;
  v61 = v12;
  v19 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v20 = *(v3 + v19);
  v21 = v63;
  v22 = v64;
  if (v20)
  {

    v23 = v54;
    sub_1E09D0();
    sub_1E0D00();
    v20, v24, v25, v26, v27, v28, v29, v30;
    (*(v21 + 8))(v23, v22);
  }

  v31 = *(v3 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v32 = v31 + *(*v31 + class metadata base offset for ManagedBuffer + 16);
  v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v31 + v33));
  sub_18E48(v32, &qword_287B10, &qword_1FCF80);
  (*(v21 + 56))(v32, 1, 1, v22);
  v34 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  v35 = (v32 + v34[9]);
  v37 = v35[3];
  v36 = v35[4];
  v38 = v35[1];
  v65[2] = v35[2];
  v65[3] = v37;
  v65[4] = v36;
  v65[0] = *v35;
  v65[1] = v38;
  v35[3] = 0u;
  v35[4] = 0u;
  v35[1] = 0u;
  v35[2] = 0u;
  *v35 = xmmword_1FCF50;
  sub_18E48(v65, &qword_287E48, &qword_1FD118);
  v39 = (v32 + v34[7]);
  v40 = v39[1];
  *v39 = 0;
  v39[1] = 0;
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = v34[6];
  sub_18E48(v32 + v48, &qword_2876E8, &qword_1FC308);
  v49 = sub_1E0930();
  (*(*(v49 - 8) + 56))(v32 + v48, 1, 1, v49);
  os_unfair_lock_unlock((v31 + v33));
  v50 = *(v3 + v62);
  *v9 = v50;
  v60(v9, v61, v6);
  v51 = v50;
  LOBYTE(v50) = sub_1E1660();
  v59(v9, v6);
  if ((v50 & 1) == 0)
  {
    goto LABEL_13;
  }

  v52 = v57;
  if ((*(v3 + v57) & 1) == 0)
  {
    dispatch_resume(*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v3 + v52) = 1;
  }
}

uint64_t sub_121F58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287EA0, &qword_1FD130);
  __chkstk_darwin(v4 - 8);
  v122 = &v111[-v5];
  v130 = sub_1E0A90();
  v121 = *(v130 - 8);
  v6 = __chkstk_darwin(v130);
  v120 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v119 = &v111[-v8];
  v9 = sub_3D68(&qword_287EA8, &qword_1FD138);
  __chkstk_darwin(v9 - 8);
  v128 = &v111[-v10];
  v126 = sub_3D68(&qword_287EB0, &unk_1FD140);
  __chkstk_darwin(v126);
  v127 = &v111[-v11];
  v12 = sub_3D68(&qword_2876E8, &qword_1FC308);
  __chkstk_darwin(v12 - 8);
  v136 = &v111[-v13];
  v124 = sub_1E0AB0();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v135 = &v111[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_1E09E0();
  v15 = *(v125 - 8);
  __chkstk_darwin(v125);
  v17 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1E0AE0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v111[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v139 = 0u;
    v140 = 0u;
LABEL_10:
    sub_18E48(&v139, &unk_281B50, &unk_1EDD70);
    v134 = 0;
    goto LABEL_11;
  }

  v23 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyiCloudLoggedIn"];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    goto LABEL_10;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v24 = swift_dynamicCast();
  v25 = v137;
  if (!v24)
  {
    v25 = 0;
  }

  v134 = v25;
LABEL_11:
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
    v139 = 0u;
    v140 = 0u;
LABEL_20:
    sub_18E48(&v139, &unk_281B50, &unk_1EDD70);
    v133 = 0;
    goto LABEL_21;
  }

  v27 = [v26 analyticsSessionDataForKey:@"BASessionDataKeyiTunesLoggedIn"];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    goto LABEL_20;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v28 = swift_dynamicCast();
  v29 = v137;
  if (!v28)
  {
    v29 = 0;
  }

  v133 = v29;
LABEL_21:
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    v139 = 0u;
    v140 = 0u;
LABEL_30:
    sub_18E48(&v139, &unk_281B50, &unk_1EDD70);
    v32 = 0;
    goto LABEL_31;
  }

  v31 = [v30 analyticsSessionDataForKey:@"BASessionDataKeyiCloudDriveOptIn"];
  swift_unknownObjectRelease();
  if (v31)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    goto LABEL_30;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v32 = v137;
  }

  else
  {
    v32 = 0;
  }

LABEL_31:
  v33 = swift_unknownObjectWeakLoadStrong();
  v129 = v32;
  if (!v33)
  {
    v139 = 0u;
    v140 = 0u;
LABEL_40:
    sub_18E48(&v139, &unk_281B50, &unk_1EDD70);
    v132 = 0;
    goto LABEL_41;
  }

  v34 = [v33 analyticsSessionDataForKey:@"BASessionDataKeyHasWidgets"];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  v32 = v129;
  if (!*(&v138 + 1))
  {
    goto LABEL_40;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v35 = swift_dynamicCast();
  v36 = v137;
  if (!v35)
  {
    v36 = 0;
  }

  v132 = v36;
LABEL_41:
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v118 = [v37 analyticsSessionDataIsMainWindow];
    swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0;
  }

  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v117 = [v38 analyticsSessionDataIsParallel];
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0;
  }

  if (v134)
  {
    v116 = [v134 BOOLValue];
    v39 = v133;
    if (v133)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v116 = 0;
    v39 = v133;
    if (v133)
    {
LABEL_49:
      v115 = [v39 BOOLValue];
      v40 = v132;
      if (v132)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

  v115 = 0;
  v40 = v132;
  if (v132)
  {
LABEL_50:
    v114 = [v40 BOOLValue];
    if (!v32)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

LABEL_54:
  v114 = 0;
  if (!v32)
  {
LABEL_57:
    v41 = 2;
    goto LABEL_58;
  }

LABEL_55:
  if (([v32 BOOLValue] & 1) == 0)
  {
    goto LABEL_57;
  }

  v41 = 1;
LABEL_58:
  v113 = v41;
  sub_1E0AD0();
  sub_1E09D0();
  v131 = sub_1E0AC0();
  (*(v15 + 8))(v17, v125);
  (*(v19 + 8))(v21, v18);
  sub_1E0A60();
  v42 = [objc_opt_self() currentNotificationCenter];
  v43 = [v42 notificationSettings];

  v125 = [v43 authorizationStatus];
  v44 = [objc_opt_self() books];
  v45 = [v44 userDefaults];

  v112 = [v45 BOOLForKey:@"BKReadingGoalsUserDefaultsKey"];
  v46 = *(v2 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v47 = v46 + *(*v46 + class metadata base offset for ManagedBuffer + 16);
  v48 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v46 + v48));
  v49 = *(v126 + 48);
  v50 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  v51 = (v47 + *(v50 + 28));
  v53 = *v51;
  v52 = v51[1];
  v54 = v47 + *(v50 + 24);
  v55 = v127;
  sub_17AA4(v54, &v127[v49], &qword_2876E8, &qword_1FC308);

  os_unfair_lock_unlock((v46 + v48));
  sub_125A54(&v55[v49], v136);
  if (*(v2 + OBJC_IVAR___BAAnalyticsController_launchedFromShortcutItem) == 1)
  {
    v52, v56, v57, v58, v59, v60, v61, v62;
    v63 = 3;
    v64 = v128;
    goto LABEL_82;
  }

  v64 = v128;
  if (!v52)
  {
    goto LABEL_77;
  }

  v65 = 0x80000000002169C0;
  v66 = 0xD000000000000032;
  if (v53 == 0xD000000000000032 && v52 == 0x80000000002169C0 || (sub_1E1D30() & 1) != 0 || (v53 == 0xD000000000000014 && v52 == 0x80000000002169A0 || (sub_1E1D30() & 1) != 0) && (v67 = sub_1E0930(), (*(*(v67 - 8) + 48))(v136, 1, v67) != 1))
  {
    v52, v56, v66, v65, v59, v60, v61, v62;
    v63 = 6;
    goto LABEL_82;
  }

  v68 = 0x8000000000216970;
  v69 = 0xD00000000000002BLL;
  if (v53 == 0xD00000000000002BLL && v52 == 0x8000000000216970 || (sub_1E1D30() & 1) != 0)
  {
    v52, v56, v69, v68, v59, v60, v61, v62;
    v63 = 5;
    goto LABEL_82;
  }

  if (v70 = 0x8000000000216950, v71 = 0xD00000000000001CLL, v53 == 0xD00000000000001CLL) && v52 == 0x8000000000216950 || (sub_1E1D30())
  {
    v52, v56, v71, v70, v59, v60, v61, v62;
    v63 = 7;
  }

  else
  {
LABEL_77:
    v72 = sub_1E0930();
    if ((*(*(v72 - 8) + 48))(v136, 1, v72) == 1)
    {
      if (v52)
      {
        v52, v73, v74, v75, v76, v77, v78, v79;
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }
    }

    else
    {
      v52, v73, v74, v75, v76, v77, v78, v79;
      v63 = 1;
    }
  }

LABEL_82:
  type metadata accessor for Utilities();
  sub_DC688(&v139);
  v80 = v139;
  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v81)
  {
    v139 = 0u;
    v140 = 0u;
LABEL_91:
    result = sub_18E48(&v139, &unk_281B50, &unk_1EDD70);
    goto LABEL_92;
  }

  v82 = [v81 analyticsSessionDataForKey:@"BASessionDataKeyLaunchType"];
  swift_unknownObjectRelease();
  if (v82)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    goto LABEL_91;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v84 = v137;
    if (v137 < 3)
    {
      goto LABEL_93;
    }

    *&v139 = v137;
    sub_1E1D50();
    __break(1u);
    goto LABEL_91;
  }

LABEL_92:
  v84 = 0;
LABEL_93:
  if (v131 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_112;
  }

  if (v131 > 0x7FFFFFFF)
  {
LABEL_112:
    __break(1u);
    return result;
  }

  v126 = v84;
  LODWORD(v127) = v80;
  LODWORD(v128) = v63;
  v85 = v119;
  sub_1E0AA0();
  sub_1E0A80();
  v86 = *(v121 + 8);
  v86(v85, v130);
  v87 = sub_1E0A50();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v64, 1, v87) == 1)
  {
    sub_18E48(v64, &qword_287EA8, &qword_1FD138);
    v121 = 0;
    v119 = 0xE000000000000000;
  }

  else
  {
    v121 = sub_1E0A40();
    v119 = v89;
    (*(v88 + 8))(v64, v87);
  }

  v90 = v120;
  sub_1E0AA0();
  v91 = v122;
  sub_1E0A70();
  v86(v90, v130);
  v92 = sub_1E0A30();
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v91, 1, v92) == 1)
  {
    sub_18E48(v91, &qword_287EA0, &qword_1FD130);
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v94 = sub_1E0A20();
    v95 = v96;
    (*(v93 + 8))(v91, v92);
  }

  v97 = v2;
  v98 = [objc_opt_self() mainBundle];
  v99 = [v98 bundleIdentifier];

  if (v99)
  {
    v100 = sub_1E1780();
    v102 = v101;

    v104 = v133;
    v103 = v134;
    v105 = v132;
    v106 = v129;
  }

  else
  {
    v100 = 0;
    v102 = 0xE000000000000000;
    v103 = v129;
    v104 = v132;
    v105 = v133;
    v106 = v134;
  }

  if (v125 >= 4)
  {
    v107 = 0;
  }

  else
  {
    v107 = 0x1010200u >> (8 * v125);
  }

  if (v112)
  {
    v108 = 1;
  }

  else
  {
    v108 = 2;
  }

  (*(v123 + 8))(v135, v124);
  v109 = *(v97 + OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled);
  *a1 = v131;
  v110 = v119;
  *(a1 + 8) = v121;
  *(a1 + 16) = v110;
  *(a1 + 24) = v94;
  *(a1 + 32) = v95;
  *(a1 + 40) = v116;
  *(a1 + 41) = v115;
  *(a1 + 42) = v128;
  *(a1 + 48) = v100;
  *(a1 + 56) = v102;
  *(a1 + 64) = v127;
  *(a1 + 65) = v113;
  *(a1 + 66) = v107;
  *(a1 + 67) = v108;
  *(a1 + 68) = 0;
  *(a1 + 69) = v126;
  *(a1 + 70) = v117;
  *(a1 + 71) = v118;
  *(a1 + 72) = v114;
  *(a1 + 73) = v109;
  return sub_18E48(v136, &qword_2876E8, &qword_1FC308);
}

uint64_t sub_1230B0@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_1E1730();

    if (v5[1].super.isa)
    {
      v13 = sub_A2F4(0xD00000000000001ALL, 0x8000000000216930);
      if (v6)
      {
        sub_326BC(*v5[3].dataProviders + 32 * v13, &v95);
        v5, v14, v15, v16, v17, v18, v19, v20;
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = v93;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = *(&v93 + 1);
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_12;
      }
    }

    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  v22 = 0;
  v23 = 0;
LABEL_12:
  v24 = [v2 mainBundle];
  v25 = [v24 infoDictionary];

  if (!v25)
  {
    goto LABEL_36;
  }

  v26 = sub_1E1730();

  if (!v26[1].super.isa || (v34 = sub_A2F4(0x656C646E75424643, 0xEF6E6F6973726556), (v27 & 1) == 0))
  {
    v26, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_36;
  }

  sub_326BC(*v26[3].dataProviders + 32 * v34, &v95);
  v26, v35, v36, v37, v38, v39, v40, v41;
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_36:
    v55 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_37;
  }

  v44 = *(&v93 + 1);
  v43 = v93;
  v45 = HIBYTE(*(&v93 + 1)) & 0xFLL;
  v46 = v93 & 0xFFFFFFFFFFFFLL;
  if ((*(&v93 + 1) & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(*(&v93 + 1)) & 0xFLL;
  }

  else
  {
    v47 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    v55 = 0;
    goto LABEL_37;
  }

  if ((*(&v93 + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v93 + 1) & 0x2000000000000000) != 0)
    {
      *&v95 = v93;
      *(&v95 + 1) = *(&v93 + 1) & 0xFFFFFFFFFFFFFFLL;
      if (v93 == 43)
      {
        if (v45)
        {
          if (--v45)
          {
            v49 = 0;
            v72 = &v95 + 1;
            while (1)
            {
              v73 = *v72 - 48;
              if (v73 > 9)
              {
                break;
              }

              v74 = (v49 * 10) >> 64;
              v75 = 10 * v49;
              if (v74 != v75 >> 63)
              {
                break;
              }

              v54 = __OFADD__(v75, v73);
              v49 = v75 + v73;
              if (v54)
              {
                break;
              }

              ++v72;
              if (!--v45)
              {
                goto LABEL_103;
              }
            }
          }

          goto LABEL_102;
        }

LABEL_113:
        __break(1u);
        return result;
      }

      if (v93 != 45)
      {
        if (v45)
        {
          v49 = 0;
          v79 = &v95;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = (v49 * 10) >> 64;
            v82 = 10 * v49;
            if (v81 != v82 >> 63)
            {
              break;
            }

            v54 = __OFADD__(v82, v80);
            v49 = v82 + v80;
            if (v54)
            {
              break;
            }

            ++v79;
            if (!--v45)
            {
              goto LABEL_103;
            }
          }
        }

        goto LABEL_102;
      }

      if (v45)
      {
        if (--v45)
        {
          v49 = 0;
          v64 = &v95 + 1;
          while (1)
          {
            v65 = *v64 - 48;
            if (v65 > 9)
            {
              break;
            }

            v66 = (v49 * 10) >> 64;
            v67 = 10 * v49;
            if (v66 != v67 >> 63)
            {
              break;
            }

            v54 = __OFSUB__(v67, v65);
            v49 = v67 - v65;
            if (v54)
            {
              break;
            }

            ++v64;
            if (!--v45)
            {
              goto LABEL_103;
            }
          }
        }

        goto LABEL_102;
      }
    }

    else
    {
      if ((v93 & 0x1000000000000000) != 0)
      {
        result = (*(&v93 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1E1AF0();
      }

      v48 = *result;
      if (v48 == 43)
      {
        if (v46 >= 1)
        {
          v45 = v46 - 1;
          if (v46 != 1)
          {
            v49 = 0;
            if (result)
            {
              v68 = (result + 1);
              while (1)
              {
                v69 = *v68 - 48;
                if (v69 > 9)
                {
                  goto LABEL_102;
                }

                v70 = (v49 * 10) >> 64;
                v71 = 10 * v49;
                if (v70 != v71 >> 63)
                {
                  goto LABEL_102;
                }

                v54 = __OFADD__(v71, v69);
                v49 = v71 + v69;
                if (v54)
                {
                  goto LABEL_102;
                }

                ++v68;
                if (!--v45)
                {
                  goto LABEL_103;
                }
              }
            }

            goto LABEL_94;
          }

          goto LABEL_102;
        }

        goto LABEL_112;
      }

      if (v48 != 45)
      {
        if (v46)
        {
          v49 = 0;
          if (result)
          {
            while (1)
            {
              v76 = *result - 48;
              if (v76 > 9)
              {
                goto LABEL_102;
              }

              v77 = (v49 * 10) >> 64;
              v78 = 10 * v49;
              if (v77 != v78 >> 63)
              {
                goto LABEL_102;
              }

              v54 = __OFADD__(v78, v76);
              v49 = v78 + v76;
              if (v54)
              {
                goto LABEL_102;
              }

              ++result;
              if (!--v46)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_94;
        }

LABEL_102:
        v49 = 0;
        LOBYTE(v45) = 1;
        goto LABEL_103;
      }

      if (v46 >= 1)
      {
        v45 = v46 - 1;
        if (v46 != 1)
        {
          v49 = 0;
          if (result)
          {
            v50 = (result + 1);
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                goto LABEL_102;
              }

              v52 = (v49 * 10) >> 64;
              v53 = 10 * v49;
              if (v52 != v53 >> 63)
              {
                goto LABEL_102;
              }

              v54 = __OFSUB__(v53, v51);
              v49 = v53 - v51;
              if (v54)
              {
                goto LABEL_102;
              }

              ++v50;
              if (!--v45)
              {
                goto LABEL_103;
              }
            }
          }

LABEL_94:
          LOBYTE(v45) = 0;
LABEL_103:
          LOBYTE(v93) = v45;
          v83 = v45;
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      __break(1u);
    }

    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  sub_E8DBC(v93, *(&v93 + 1), 10);
  v85 = v84;
  v83 = v86;
  *(&v93 + 1), v86, v87, v88, v89, v90, v91, v92;
  v49 = v85;
LABEL_104:
  if (v83)
  {
    v55 = 0;
  }

  else
  {
    v55 = v49;
  }

LABEL_37:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyJSVersion"];
    swift_unknownObjectRelease();
    if (v57)
    {
      sub_1E1A60();
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
    }

    v95 = v93;
    v96 = v94;
    if (*(&v94 + 1))
    {
      result = swift_dynamicCast();
      v59 = *(&v93 + 1);
      v58 = v93;
      if (!result)
      {
        v58 = 0;
        v59 = 0;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
  }

  result = sub_18E48(&v95, &unk_281B50, &unk_1EDD70);
  v58 = 0;
  v59 = 0;
LABEL_46:
  if (v23)
  {
    v60 = v22;
  }

  else
  {
    v60 = 0;
  }

  if (v23)
  {
    v61 = v23;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  if (!v59)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  *a1 = v60;
  a1[1] = v61;
  if (v44)
  {
    v62 = v43;
  }

  else
  {
    v62 = 0;
  }

  a1[2] = v55;
  a1[3] = v58;
  if (v44)
  {
    v63 = v44;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  a1[4] = v59;
  a1[5] = v62;
  a1[6] = v63;
  return result;
}

uint64_t sub_1236C0@<X0>(uint64_t a1@<X8>)
{
  bzero(&v22, 0x500uLL);
  uname(&v22);
  v2 = sub_1E17F0();
  v4 = v3;
  v5 = [objc_opt_self() bu_osBundleVersionString];
  v6 = sub_1E1780();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 systemName];

  v12 = sub_1E1780();
  v14 = v13;

  v15 = [v9 currentDevice];
  v16 = [v15 systemVersion];

  v17 = sub_1E1780();
  v19 = v18;

  result = sub_1E1270();
  if (result)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v21;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  return result;
}

void sub_123854(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v40 = 0u;
    v41 = 0u;
LABEL_9:
    sub_18E48(&v40, &unk_281B50, &unk_1EDD70);
    goto LABEL_10;
  }

  v4 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyStoreFrontID"];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v6 = *(&v38 + 1);
    v5 = v38;
    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
  v6 = 0xE000000000000000;
LABEL_11:
  v7 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = sub_1E1780();
  v12 = v11;
  v20 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  v21 = *(v8 + *(v20 + 20));
  if (*(v21 + 16))
  {
    v37 = v6;
    v22 = v5;
    v23 = sub_A2F4(v10, v12);
    v25 = v24;
    v12, v24, v26, v27, v28, v29, v30, v31;
    if (v25)
    {
      v32 = (*(v21 + 56) + 16 * v23);
      v34 = *v32;
      v33 = v32[1];
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v5 = v22;
    v6 = v37;
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    v34 = 0;
    v33 = 0;
  }

  os_unfair_lock_unlock((v7 + v9));
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  os_unfair_lock_lock((v7 + v9));
  v36 = *(v8 + *(v20 + 44));

  os_unfair_lock_unlock((v7 + v9));
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v34;
  a1[3] = v35;
  a1[4] = v36;
}

Swift::String_optional __swiftcall AnalyticsController.contentPrivateID(for:)(Swift::String a1)
{
  v1 = sub_123AEC(a1._countAndFlagsBits, a1._object, &kBAPrivateContentSeed);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall AnalyticsController.contentUserID(for:)(Swift::String a1)
{
  v1 = sub_123AEC(a1._countAndFlagsBits, a1._object, &kBAPrivateUserSeed);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_123AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v5 = v4 + *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  v7 = sub_1E1780();
  v9 = v8;
  v17 = *(v5 + *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 20));
  if (!*(v17 + 16))
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_7;
  }

  v18 = sub_A2F4(v7, v9);
  v20 = v19;
  v9, v19, v21, v22, v23, v24, v25, v26;
  if ((v20 & 1) == 0)
  {
LABEL_7:
    os_unfair_lock_unlock((v4 + v6));
    return 0;
  }

  v27 = (*(v17 + 56) + 16 * v18);
  v28 = *v27;
  v29 = v27[1];

  os_unfair_lock_unlock((v4 + v6));
  if (v29)
  {
    v30 = sub_1E1770();
    v31 = sub_1E1770();
    v29, v32, v33, v34, v35, v36, v37, v38;
    v39 = BAObfuscateID(v30, v31);

    if (v39)
    {
      v28 = sub_1E1780();

      return v28;
    }

    return 0;
  }

  return v28;
}

id sub_123C94(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, BAEventReporter *))
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  v8, v12, v13, v14, v15, v16, v17, v18;
  if (v11)
  {
    v19 = sub_1E1770();
    v11, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void AnalyticsController.performAfterPrivateDataFetched(completionHandler:)(objc_class *a1, uint64_t a2)
{
  v5 = sub_1E15E0();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1610();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR___BAAnalyticsController_privateDataQueue);
  v12 = swift_allocObject();
  v12[1].super.isa = a1;
  *v12[1].dataProviders = a2;
  aBlock[4] = sub_125EB0;
  v27 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E0E8;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1E1600();
  v25 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v13);

  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
  v27, v15, v16, v17, v18, v19, v20, v21;
}

id sub_1240C4(SEL *a1)
{
  if (*(v1 + OBJC_IVAR___BAAnalyticsController_assertionProvider))
  {
    return [*(v1 + OBJC_IVAR___BAAnalyticsController_assertionProvider) *a1];
  }

  else
  {
    return 0;
  }
}

id sub_12410C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(a1 + OBJC_IVAR___BAAnalyticsController_assertionProvider);
  if (result)
  {
    return [result *a3];
  }

  return result;
}

Swift::Void __swiftcall AnalyticsController.privateDataChanged(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1E15E0();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1610();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2]._rawValue = v11;
  v12[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_125EDC;
  v35 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E138;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  sub_1E1600();
  v33 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v13);

  (*(v32 + 8))(v6, v4);
  (*(v30 + 8))(v9, v31);
  v15 = v35;
  v11, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
}

void sub_124430(uint64_t a1, uint64_t a2)
{
  v3 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR___BAAnalyticsController_lockProtectedData;
    v9 = *(Strong + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    __chkstk_darwin(Strong);
    *&v27[-16] = a2;
    v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_127910(v9 + v10, &v28);
    os_unfair_lock_unlock((v9 + v11));
    if (v28 == 1)
    {
      if (*(v7 + OBJC_IVAR___BAAnalyticsController_sessionState) == 1)
      {
        *(v7 + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) = 0;
        v13 = sub_1E1900();
        (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
        v14 = swift_allocObject();
        v14[1].super.isa = 0;
        *v14[1].dataProviders = 0;
        v14[2].super.isa = v7;
        v15 = v7;
        v16 = sub_170FDC(0, 0, v5, &unk_1FD168, v14);

        v16, v17, v18, v19, v20, v21, v22, v23;
        return;
      }

      v24 = *(v7 + v8);
      __chkstk_darwin(v12);
      *&v27[-16] = a2;
      v25 = *(*v24 + class metadata base offset for ManagedBuffer + 16);
      v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v24 + v26));
      sub_127B70(v24 + v25, &v28);
      os_unfair_lock_unlock((v24 + v26));
      sub_124C5C(v7);
      *(v7 + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) = 1;
    }
  }
}

uint64_t sub_1246FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a4;
  return _swift_task_switch(sub_12471C, 0, 0);
}

uint64_t sub_12471C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1248B0;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_3D68(&qword_287EC8, &unk_1FD170);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_124A04;
    *(v0 + 104) = &unk_26E420;
    *(v0 + 112) = v4;
    [v2 analyticsController:v3 resetSessionWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    **(v0 + 168) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1248B0()
{

  return _swift_task_switch(sub_124990, 0, 0);
}

uint64_t sub_124990()
{
  swift_unknownObjectRelease();
  **(v0 + 168) = *(v0 + 184) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_124A04(uint64_t a1)
{
  v1 = *sub_48B8((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void sub_124AA8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v55 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v15 = 0;
  v56 = v3;
  while (v6)
  {
LABEL_10:
    v17 = __clz(__rbit64(v6)) | (v15 << 6);
    v18 = (*v3[3].dataProviders + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(a1 + *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 20));
    if (!*(v21 + 16))
    {
      goto LABEL_17;
    }

    v22 = (v3[3].super.isa + 16 * v17);
    v23 = *v22;
    v24 = v22[1];

    v25 = sub_A2F4(v23, v24);
    v27 = v26;
    v24, v26, v28, v29, v30, v31, v32, v33;
    if ((v27 & 1) == 0)
    {
      v19, v34, v35, v36, v37, v38, v39, v40;
      v52 = v56;
LABEL_20:
      v52, v8, v9, v10, v11, v12, v13, v14;
      v53 = 1;
LABEL_21:
      *a3 = v53;
      return;
    }

    v6 &= v6 - 1;
    v41 = (*(v21 + 56) + 16 * v25);
    v42 = v41[1];
    if (*v41 == v20 && v42 == v19)
    {
      v19, v42, v35, v36, v37, v38, v39, v40;
      v3 = v56;
    }

    else
    {
      v44 = sub_1E1D30();
      v19, v45, v46, v47, v48, v49, v50, v51;
      v3 = v56;
      if ((v44 & 1) == 0)
      {
LABEL_17:
        v52 = v3;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v7)
    {
      v3, v8, v9, v10, v11, v12, v13, v14;
      v53 = 0;
      goto LABEL_21;
    }

    v6 = *(v55 + 8 * v16);
    ++v15;
    if (v6)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_124C5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    v5 = v4 + *(*v4 + class metadata base offset for ManagedBuffer + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    v7 = sub_1E1780();
    v9 = v8;
    v17 = *(v5 + *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 20));
    if (*(v17 + 16))
    {
      v18 = sub_A2F4(v7, v9);
      v20 = v19;
      v9, v19, v21, v22, v23, v24, v25, v26;
      if (v20)
      {
        v27 = *(*(v17 + 56) + 16 * v18 + 8);

        os_unfair_lock_unlock((v4 + v6));
        if (v27)
        {
          v28 = sub_1E1770();
          v27, v29, v30, v31, v32, v33, v34, v35;
LABEL_9:
          [v3 setUserID:v28];
          swift_unknownObjectRelease();

          return;
        }

LABEL_8:
        v28 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v9, v10, v11, v12, v13, v14, v15, v16;
    }

    os_unfair_lock_unlock((v4 + v6));
    goto LABEL_8;
  }
}

void sub_124DE4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v75 = 0;
  v15 = 0;
  v77 = v7;
  v78 = v3;
  while (v6)
  {
LABEL_10:
    while (1)
    {
      v24 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v25 = (v15 << 10) | (16 * v24);
      v26 = (*(a2 + 48) + v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(a2 + 56) + v25);
      v30 = *v29;
      v31 = v29[1];
      v32 = *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 20);
      v33 = *(a1 + v32);
      v34 = *(v33 + 16);

      if (v34)
      {
        break;
      }

      v35 = v27;
      v76 = (a1 + v32);
      v43 = v30;
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *v76;
      v81 = *v76;
      v50 = v35;
      v51 = sub_A2F4(v35, v28);
      v52 = v49[2];
      v53 = (v8 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_34;
      }

      if (v49[3] < v54)
      {
        v55 = isUniquelyReferenced_nonNull_native;
        v56 = v8;
        sub_172F90(v54, v55);
        v57 = sub_A2F4(v50, v28);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_36;
        }

        v51 = v57;
        goto LABEL_23;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v8;
        sub_173FF4();
LABEL_23:
        v8 = v56;
      }

      if (v8)
      {
        v28, v8, v9, v10, v11, v12, v13, v14;
        v59 = v81;
        v60 = (v81[7] + 16 * v51);
        v61 = v60[1];
        *v60 = v43;
        v60[1] = v31;
        v61, v62, v63, v64, v65, v66, v67, v68;
      }

      else
      {
        v59 = v81;
        v81[(v51 >> 6) + 8] |= 1 << v51;
        v69 = (v81[6] + 16 * v51);
        *v69 = v50;
        v69[1] = v28;
        v70 = (v81[7] + 16 * v51);
        *v70 = v43;
        v70[1] = v31;
        v71 = v81[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_35;
        }

        v81[2] = v73;
      }

      v7 = v77;
      v3 = v78;
      *v76 = v59;
      v75 = 1;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v35 = v27;
    v36 = sub_A2F4(v27, v28);
    v43 = v30;
    if ((v44 & 1) == 0 || ((v45 = (*(v33 + 56) + 16 * v36), v46 = v45[1], *v45 == v30) ? (v47 = v46 == v31) : (v47 = 0), !v47 && (sub_1E1D30() & 1) == 0))
    {
      v76 = (a1 + v32);
      goto LABEL_19;
    }

    v28, v46, v37, v38, v39, v40, v41, v42;
    v31, v16, v17, v18, v19, v20, v21, v22;
    v7 = v77;
    v3 = v78;
  }

LABEL_6:
  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v7)
    {
      a2, v8, v9, v10, v11, v12, v13, v14;
      *a3 = v75 & 1;
      return;
    }

    v6 = *(v3 + 8 * v23);
    ++v15;
    if (v6)
    {
      v15 = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1E1D60();
  __break(1u);
}

void *sub_1250E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_11FC8C(2u);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_121AB0(sub_12781C, v3);
  }

  return result;
}

void sub_125190(uint64_t a1)
{
  v1 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_1E15E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1610();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR___BAAnalyticsController_workQueue);
    v49 = v3;
    v14 = Strong;
    v47 = v13;

    v15 = swift_allocObject();
    v46 = v5;
    v48 = v8;
    v16 = v15;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_127824;
    v52 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_26E3A8;
    v18 = _Block_copy(aBlock);

    sub_1E1600();
    v50 = _swiftEmptyArrayStorage;
    sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_3D68(&unk_287C10, &qword_1FC390);
    v3 = v49;
    sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
    sub_1E1A70();
    v19 = v47;
    sub_1E19F0();
    _Block_release(v18);

    (*(v46 + 8))(v7, v4);
    (*(v9 + 8))(v11, v48);
    v20 = v52;
    v16, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
  }

  v35 = sub_1E1900();
  (*(*(v35 - 8) + 56))(v3, 1, 1, v35);
  v36 = swift_allocObject();
  v36[1].super.isa = 0;
  *v36[1].dataProviders = 0;
  v37 = sub_170D1C(0, 0, v3, &unk_1FD158, v36);
  v37, v38, v39, v40, v41, v42, v43, v44;
}

void sub_1255A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_11FC8C(0);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 analyticsControllerDidEndSession:v2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_125664()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_125728;

  return sub_1110B8();
}

uint64_t sub_125728()
{

  return _swift_task_switch(sub_125824, 0, 0);
}

uint64_t sub_125824()
{
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1360();
  sub_3B2C(v1, qword_280278);
  v2 = sub_1E1340();
  v3 = sub_1E1960();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Session flushed", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_12599C()
{
  sub_11FDF0();
  sub_11FC8C(1u);
  sub_11EF60();
}

uint64_t sub_125A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_125AE4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 40);
  v5 = *(a1 + v4);

  v5, v6, v7, v8, v9, v10, v11, v12;
  *(a1 + v4) = v3;
}

unint64_t sub_125B3C()
{
  result = qword_287BF8;
  if (!qword_287BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksTreatmentData, &type metadata for BooksTreatmentData, v0, v1);
    atomic_store(result, &qword_287BF8);
  }

  return result;
}

unint64_t sub_125B90()
{
  result = qword_287C00;
  if (!qword_287C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksTreatmentData, &type metadata for BooksTreatmentData, v0, v1);
    atomic_store(result, &qword_287C00);
  }

  return result;
}

__n128 sub_125BE4(BAEventReporter **a1, objc_class **a2, objc_class *a3)
{
  v5 = *a2;
  v6 = sub_125B3C();
  v7 = sub_125B90();
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_103008(0, v8[1].super.isa + 1, 1, v8, v9, v10, v11, v12);
  }

  isa = v8[1].super.isa;
  v13 = *v8[1].dataProviders;
  if (isa >= v13 >> 1)
  {
    v8 = sub_103008((v13 > 1), isa + 1, 1, v8, v9, v10, v11, v12);
  }

  v8[1].super.isa = (isa + 1);
  v15 = &v8[4 * isa];
  v15[2].super.isa = v5;
  result = v17;
  *(v15 + 40) = v17;
  *v15[3].dataProviders = &type metadata for BooksTreatmentData;
  v15[4].super.isa = v6;
  *v15[4].dataProviders = v7;
  v15[5].super.isa = a3;
  v15[5].dataProviders[0] = 0;
  *a1 = v8;
  return result;
}

uint64_t sub_125D44(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_125D84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_125DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_125DCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_125DDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_125E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_5DE50(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_125E78(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_125EE4()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v0 = qword_2876B8 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier;
  swift_beginAccess();
  v1 = *(&dword_8 + v0);
  if (!v1 || (v2 = objc_allocWithZone(NSUserDefaults), , v3 = sub_1E1770(), v1, v4, v5, v6, v7, v8, v9, v10, v11 = [v2 initWithSuiteName:v3], v3, !v11))
  {
    v11 = [objc_opt_self() standardUserDefaults];
  }

  v12 = [v11 stringForKey:@"BACustomAppBuild"];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1E1780();
  }

  else
  {

    return 0;
  }

  return v14;
}

void _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  v2 = sub_1E15E0();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1610();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1360();
  sub_3B2C(v8, qword_280278);
  v9 = sub_1E1340();
  v10 = sub_1E1960();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Session End", v11, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong analyticsControllerWillEndSession:v1];
    swift_unknownObjectRelease();
  }

  v13 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_127814;
  v38 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E380;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  sub_1E1600();
  v36 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v15);

  (*(v35 + 8))(v4, v2);
  (*(v33 + 8))(v7, v34);
  v17 = v38;
  v14, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
}

void _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1360();
  sub_3B2C(v2, qword_280278);
  v3 = sub_1E1340();
  v4 = sub_1E1960();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Session Start", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v7 = swift_allocObject();
  v7[1].super.isa = v1;
  v8 = swift_allocObject();
  v8[1].super.isa = sub_1273AC;
  *v8[1].dataProviders = v7;
  v35[4] = sub_125EB0;
  v36 = v8;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_1259CC;
  v35[3] = &unk_26E2E0;
  v9 = _Block_copy(v35);
  v10 = v36;
  v11 = v6;
  v12 = v1;

  v10, v13, v14, v15, v16, v17, v18, v19;
  dispatch_sync(v11, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v7, v21, v22, v23, v24, v25, v26, v27;
  v8, v28, v29, v30, v31, v32, v33, v34;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_126634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1266A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_12673C@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_126D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_3D68(&qword_2876E8, &qword_1FC308);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_126EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3D68(&qword_287B10, &qword_1FCF80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_3D68(&qword_2876E8, &qword_1FC308);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_127004(uint64_t a1)
{
  sub_1271EC(319, &qword_287D70, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_127190();
    if (v2 <= 0x3F)
    {
      sub_1271EC(319, &qword_287D80, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_287D88, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_287D90, &type metadata for ReferralData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_287D98, &type metadata for CampaignData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &qword_287DA0, &type metadata for BooksTreatmentData);
              if (v7 <= 0x3F)
              {
                sub_127240(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_127190()
{
  if (!qword_287D78)
  {
    v0 = sub_1E1740();
    if (!v1)
    {
      atomic_store(v0, &qword_287D78);
    }
  }
}

void sub_1271EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_127240(uint64_t a1)
{
  if (!qword_287DA8)
  {
    sub_5DE50(&qword_281BC0, &unk_1EDD80);
    v1 = sub_1E1A20();
    if (!v2)
    {
      atomic_store(v1, &qword_287DA8);
    }
  }
}

unint64_t sub_1272A8()
{
  result = qword_287DF8;
  if (!qword_287DF8)
  {
    result = swift_getWitnessTable(byte_1FD0B0, &type metadata for SessionState, v0, v1);
    atomic_store(result, &qword_287DF8);
  }

  return result;
}

uint64_t sub_1272FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_12733C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_127374()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1273C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_12743C()
{
  result = qword_287E50;
  if (!qword_287E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionData, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_287E50);
  }

  return result;
}

unint64_t sub_127490()
{
  result = qword_287E58;
  if (!qword_287E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_287E58);
  }

  return result;
}

unint64_t sub_1274E4()
{
  result = qword_287E60;
  if (!qword_287E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_287E60);
  }

  return result;
}

unint64_t sub_127538()
{
  result = qword_287E68;
  if (!qword_287E68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserData, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_287E68);
  }

  return result;
}

unint64_t sub_12758C()
{
  result = qword_287E70;
  if (!qword_287E70)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_287E70);
  }

  return result;
}

unint64_t sub_1275E0()
{
  result = qword_287E78;
  if (!qword_287E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_287E78);
  }

  return result;
}

unint64_t sub_1276DC()
{
  result = qword_287E88;
  if (!qword_287E88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CampaignData, &type metadata for CampaignData, v0, v1);
    atomic_store(result, &qword_287E88);
  }

  return result;
}

unint64_t sub_127730()
{
  result = qword_287E90;
  if (!qword_287E90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferralData, &type metadata for ReferralData, v0, v1);
    atomic_store(result, &qword_287E90);
  }

  return result;
}

uint64_t sub_127784(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1277CC(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_12782C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_127864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_92C90;

  return sub_125648();
}

uint64_t sub_12792C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_12796C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7E674;

  return sub_1246FC(a1, v4, v5, v6);
}

unint64_t sub_127A38()
{
  result = qword_287ED0;
  if (!qword_287ED0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_287ED0);
  }

  return result;
}

uint64_t sub_127A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_127AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t PreorderSuccessEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderSuccessEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t PreorderSuccessEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for PreorderSuccessEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1283BC(uint64_t a1)
{
  v2 = sub_1288B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1283F8(uint64_t a1)
{
  v2 = sub_1288B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderSuccessEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287F90, &qword_1FD190);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  sub_48B8(a1, a1[3]);
  sub_1288B4();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v61 = *(v2 + 32);
  v62 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v63 = *(v2 + 64);
  v64 = v11;
  v12 = *(v2 + 16);
  v60[0] = *v2;
  v60[1] = v12;
  v56 = v61;
  v57 = v10;
  v13 = *(v2 + 80);
  v58 = v63;
  v59 = v13;
  v54 = v60[0];
  v55 = v9;
  v53 = 0;
  sub_13A5C(v60, &v37);
  sub_143D0();
  v14 = v65;
  sub_1E1CF0();
  if (v14)
  {
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v37 = v54;
    v38 = v55;
    sub_14424(&v37);
  }

  else
  {
    v49[2] = v56;
    v49[3] = v57;
    v49[4] = v58;
    v49[5] = v59;
    v49[0] = v54;
    v49[1] = v55;
    sub_14424(v49);
    v16 = *(v2 + 112);
    v17 = *(v2 + 144);
    v51 = *(v2 + 128);
    *v52 = v17;
    v18 = *(v2 + 112);
    v50[0] = *(v2 + 96);
    v50[1] = v18;
    v46 = v16;
    v47 = v51;
    v48[0] = *(v2 + 144);
    *&v52[13] = *(v2 + 157);
    *(v48 + 13) = *(v2 + 157);
    v45 = v50[0];
    v44 = 1;
    sub_17AA4(v50, &v37, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v35[2] = v47;
    v36[0] = v48[0];
    *(v36 + 13) = *(v48 + 13);
    v35[0] = v45;
    v35[1] = v46;
    sub_18E48(v35, &qword_27FFF0, &unk_1E9C00);
    v19 = *(v2 + 216);
    v20 = *(v2 + 248);
    v41 = *(v2 + 232);
    v42 = v20;
    v43 = *(v2 + 264);
    v21 = *(v2 + 184);
    v37 = *(v2 + 168);
    v38 = v21;
    v39 = *(v2 + 200);
    v40 = v19;
    v22 = *(v2 + 216);
    v23 = *(v2 + 248);
    v32 = *(v2 + 232);
    v33 = v23;
    v34 = *(v2 + 264);
    v24 = *(v2 + 184);
    v28 = *(v2 + 168);
    v29 = v24;
    v30 = *(v2 + 200);
    v31 = v22;
    v27 = 2;
    sub_17AA4(&v37, v26, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v26[4] = v32;
    v26[5] = v33;
    v26[6] = v34;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_18E48(v26, &qword_27E490, &qword_205F90);
    type metadata accessor for PreorderSuccessEvent.Model(0);
    v25[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1288B4()
{
  result = qword_287F98;
  if (!qword_287F98)
  {
    result = swift_getWitnessTable(byte_1FD360, &type metadata for PreorderSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287F98);
  }

  return result;
}

void PreorderSuccessEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_1E1150();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_287FA0, &qword_1FD198);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = type metadata accessor for PreorderSuccessEvent.Model(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v60 = a1;
  sub_48B8(a1, v8);
  sub_1288B4();
  v9 = v43;
  sub_1E1DF0();
  if (v9)
  {
    sub_4E48(v60, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v37 = v5;
    v17 = v7;
    v43 = v4;
    v18 = v40;
    v19 = v41;
    v58 = 0;
    sub_14CB8();
    sub_1E1C20();
    v20 = v59[3];
    v21 = v17;
    *(v17 + 2) = v59[2];
    *(v17 + 3) = v20;
    v22 = v59[5];
    *(v17 + 4) = v59[4];
    *(v17 + 5) = v22;
    v23 = v59[1];
    *v17 = v59[0];
    *(v17 + 1) = v23;
    v57 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v24 = v54;
    v25 = v56[0];
    *(v17 + 8) = v55;
    *(v17 + 9) = v25;
    *(v17 + 157) = *(v56 + 13);
    *(v17 + 6) = v53;
    *(v17 + 7) = v24;
    v45 = 2;
    sub_18EFC();
    sub_1E1BB0();
    v26 = v48;
    *(v17 + 216) = v49;
    v27 = v51;
    *(v17 + 232) = v50;
    *(v17 + 248) = v27;
    v28 = v47;
    *(v17 + 168) = v46;
    *(v17 + 184) = v28;
    *(v17 + 200) = v26;
    *(v17 + 264) = v52;
    v44 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v43;
    sub_1E1C20();
    (*(v18 + 8))(0, v42);
    (*(v38 + 32))(v21 + *(v37 + 28), v29, v19);
    sub_128DF4(v21, v39);
    sub_4E48(v60, v30, v31, v32, v33, v34, v35, v36);
    sub_128E58(v21);
  }
}

uint64_t sub_128DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderSuccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_128E58(uint64_t a1)
{
  v2 = type metadata accessor for PreorderSuccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_128F68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_129134(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_12930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1293CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_129484()
{
  result = qword_2880D8;
  if (!qword_2880D8)
  {
    result = swift_getWitnessTable(a1_7, &type metadata for PreorderSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2880D8);
  }

  return result;
}

unint64_t sub_1294DC()
{
  result = qword_2880E0;
  if (!qword_2880E0)
  {
    result = swift_getWitnessTable(aY_15, &type metadata for PreorderSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2880E0);
  }

  return result;
}

unint64_t sub_129534()
{
  result = qword_2880E8;
  if (!qword_2880E8)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for PreorderSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2880E8);
  }

  return result;
}

void __swiftcall ReadingSettingsData.init(scrollViewStatus:autoNightThemeStatus:backgroundColor:font:fontSize:brightnessLevel:)(BookAnalytics::ReadingSettingsData *__return_ptr retstr, BookAnalytics::ScrollViewStatus scrollViewStatus, BookAnalytics::AutoNightThemeStatus autoNightThemeStatus, BookAnalytics::BackgroundColor backgroundColor, Swift::String font, Swift::Float fontSize, Swift::Float brightnessLevel)
{
  v7 = *autoNightThemeStatus;
  v8 = *backgroundColor;
  retstr->scrollViewStatus = *scrollViewStatus;
  retstr->autoNightThemeStatus = v7;
  retstr->backgroundColor = v8;
  retstr->font = font;
  retstr->fontSize = fontSize;
  retstr->brightnessLevel = brightnessLevel;
}

unint64_t sub_1295D0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 1953394534;
  v4 = 0x657A6953746E6F66;
  if (v1 != 4)
  {
    v4 = 0x656E746867697262;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1296A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_12A140(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1296C8(uint64_t a1)
{
  v2 = sub_129E8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_129704(uint64_t a1)
{
  v2 = sub_129E8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSettingsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2880F0, &qword_1FD3B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  sub_48B8(a1, a1[3]);
  sub_129E8C();
  sub_1E1E00();
  v24 = v8;
  v23 = 0;
  sub_C01B0();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = v14;
    v22 = v15;
    v21 = 1;
    sub_109418();
    sub_1E1CF0();
    v20 = v11;
    v19 = 2;
    sub_129EE0();
    sub_1E1CF0();
    v18 = 3;
    sub_1E1CB0();
    v17 = 4;
    sub_1E1CE0();
    v16 = 5;
    sub_1E1CE0();
  }

  return (*(v5 + 8))(v7, v4);
}

void ReadingSettingsData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288108, &qword_1FD3B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  sub_48B8(a1, a1[3]);
  sub_129E8C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v51 = 0;
    sub_C0204();
    sub_1E1C20();
    v16 = v52;
    v49 = 1;
    sub_1095D8();
    sub_1E1C20();
    v17 = v50;
    v47 = 2;
    sub_129F34();
    sub_1E1C20();
    v43 = v17;
    v18 = v48;
    v46 = 3;
    v19 = sub_1E1BE0();
    HIDWORD(v40) = v18;
    v41 = v19;
    v42 = v20;
    v45 = 4;
    sub_1E1C10();
    v22 = v21;
    v44 = 5;
    sub_1E1C10();
    v31 = v30;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 1) = v43;
    *(a2 + 2) = BYTE4(v40);
    v32 = v42;
    *(a2 + 8) = v41;
    *(a2 + 16) = v32;
    *(a2 + 24) = v22;
    *(a2 + 28) = v31;

    sub_4E48(a1, v33, v34, v35, v36, v37, v38, v39);
    v32, v23, v24, v25, v26, v27, v28, v29;
  }
}

BOOL _s13BookAnalytics19ReadingSettingsDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 2);
  v64 = *(a1 + 1);
  v13 = *(a1 + 6);
  v12 = *(a1 + 7);
  v14 = *(a2 + 1);
  v15 = *(a2 + 2);
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 28);
  v20 = 0xE200000000000000;
  v21 = 28271;
  if (v8 != 1)
  {
    v21 = 6710895;
    v20 = 0xE300000000000000;
  }

  if (*a1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  v24 = 0xE200000000000000;
  v25 = 28271;
  if (*a2 != 1)
  {
    v25 = 6710895;
    v24 = 0xE300000000000000;
  }

  if (*a2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  if (v22 == v26 && v23 == v27)
  {
    v23, a2, v26, a4, a5, a6, a7, a8;
    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v41 = sub_1E1D30();
    v23, v42, v43, v44, v45, v46, v47, v48;
    v27, v49, v50, v51, v52, v53, v54, v55;
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_22710(v9, v14, v35, v36, v37, v38, v39, v40) & 1) == 0 || (sub_22D0C(v10, v15, v56, v57, v58, v59, v60, v61) & 1) == 0)
  {
    return 0;
  }

  if (v64 == v16 && v11 == v17)
  {
    if (v13 != v19)
    {
      return 0;
    }

    return v12 == v18;
  }

  v63 = sub_1E1D30();
  result = 0;
  if ((v63 & 1) != 0 && v13 == v19)
  {
    return v12 == v18;
  }

  return result;
}

unint64_t sub_129E8C()
{
  result = qword_2880F8;
  if (!qword_2880F8)
  {
    result = swift_getWitnessTable(byte_1FD5A8, &type metadata for ReadingSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2880F8);
  }

  return result;
}

unint64_t sub_129EE0()
{
  result = qword_288100;
  if (!qword_288100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColor, &type metadata for BackgroundColor, v0, v1);
    atomic_store(result, &qword_288100);
  }

  return result;
}

unint64_t sub_129F34()
{
  result = qword_288110;
  if (!qword_288110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColor, &type metadata for BackgroundColor, v0, v1);
    atomic_store(result, &qword_288110);
  }

  return result;
}

uint64_t sub_129F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_129FD8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_12A03C()
{
  result = qword_288118;
  if (!qword_288118)
  {
    result = swift_getWitnessTable(byte_1FD580, &type metadata for ReadingSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288118);
  }

  return result;
}

unint64_t sub_12A094()
{
  result = qword_288120;
  if (!qword_288120)
  {
    result = swift_getWitnessTable(a1_8, &type metadata for ReadingSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288120);
  }

  return result;
}

unint64_t sub_12A0EC()
{
  result = qword_288128;
  if (!qword_288128)
  {
    result = swift_getWitnessTable(byte_1FD518, &type metadata for ReadingSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288128);
  }

  return result;
}

uint64_t sub_12A140(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002156D0;
  if (a1 == 0xD000000000000010 && 0x80000000002156D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000000002156F0;
    if (a1 == 0xD000000000000014 && 0x80000000002156F0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEF726F6C6F43646ELL;
      if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x656E746867697262 && a2 == 0xEF6C6576654C7373)
      {
        0xEF6C6576654C7373, 0xEF6C6576654C7373, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }
    }
  }
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

uint64_t SearchResultsReturnedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.Model.init(searchData:searchResultsData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  v8 = *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

unint64_t sub_12A95C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144686372616573;
  }
}

uint64_t sub_12A9C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_12BA94(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_12A9EC(uint64_t a1)
{
  v2 = sub_12AC8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12AA28(uint64_t a1)
{
  v2 = sub_12AC8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288160, &qword_1FD5F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_48B8(a1, a1[3]);
  sub_12AC8C();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v26 = *v3;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v25 = 0;
  sub_2EB50(v26, v9, v10, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v26, v27, v28, v29, v12, v13, v14, v15);
  if (!v2)
  {
    v26 = *(v3 + 32);
    v25 = 1;
    sub_81EEC();

    sub_1E1CF0();
    v26, v16, v17, v18, v19, v20, v21, v22;
    type metadata accessor for SearchResultsReturnedEvent.Model(0);
    LOBYTE(v26) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_12AC8C()
{
  result = qword_288168;
  if (!qword_288168)
  {
    result = swift_getWitnessTable(byte_1FD7C4, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288168);
  }

  return result;
}

void SearchResultsReturnedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1E1150();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_288170, &qword_1FD600);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v37 = a1;
  sub_48B8(a1, v13);
  sub_12AC8C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v37, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v35;
    v22 = v12;
    v32 = v6;
    v40 = 0;
    sub_826DC();
    v23 = v36;
    sub_1E1BB0();
    v24 = v39;
    *v22 = v38;
    *(v22 + 16) = v24;
    v40 = 1;
    sub_82784();
    sub_1E1C20();
    *(v22 + 32) = v38;
    LOBYTE(v38) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v23);
    (*(v33 + 32))(v22 + *(v10 + 24), v32, v4);
    sub_12B064(v22, v34);
    sub_4E48(v37, v25, v26, v27, v28, v29, v30, v31);
    sub_12B0C8(v22);
  }
}

uint64_t sub_12B064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12B0C8(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12B1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_12B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_281D68, &unk_1EE350);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_12B480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_281D68, &unk_1EE350);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_12B5F0(uint64_t a1)
{
  sub_12B6FC(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_12B6FC(319, &qword_281E48, sub_82784, sub_81EEC, &type metadata for SearchResultsData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_12B6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_12B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_12B84C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_12B8F0(uint64_t a1)
{
  sub_878A8();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_12B990()
{
  result = qword_2882A8;
  if (!qword_2882A8)
  {
    result = swift_getWitnessTable(byte_1FD79C, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882A8);
  }

  return result;
}

unint64_t sub_12B9E8()
{
  result = qword_2882B0;
  if (!qword_2882B0)
  {
    result = swift_getWitnessTable(byte_1FD70C, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882B0);
  }

  return result;
}

unint64_t sub_12BA40()
{
  result = qword_2882B8;
  if (!qword_2882B8)
  {
    result = swift_getWitnessTable(byte_1FD734, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882B8);
  }

  return result;
}

uint64_t sub_12BA94(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000214680;
    if (a1 == 0xD000000000000011 && 0x8000000000214680 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_12BBE4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216B40 == a2)
  {
    a2, 0x8000000000216B40, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_12BC78(uint64_t a1)
{
  v2 = sub_12C0CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12BCB4(uint64_t a1)
{
  v2 = sub_12C0CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2882C0, &qword_1FD820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_12C0CC();
  sub_1E1E00();
  v10 = v7;
  sub_12C120();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void WelcomeActionData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2882D8, &qword_1FD828);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_12C0CC();
  sub_1E1DF0();
  if (!v2)
  {
    sub_12C174();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics17WelcomeActionDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1885956979;
  if (v8 != 1)
  {
    v10 = 0x65756E69746E6F63;
    v9 = 0xE800000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1885956979;
  if (*a2 != 1)
  {
    v14 = 0x65756E69746E6F63;
    v13 = 0xE800000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_12C0CC()
{
  result = qword_2882C8;
  if (!qword_2882C8)
  {
    result = swift_getWitnessTable(byte_1FD9F8, &type metadata for WelcomeActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882C8);
  }

  return result;
}

unint64_t sub_12C120()
{
  result = qword_2882D0;
  if (!qword_2882D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionType, &type metadata for WelcomeActionType, v0, v1);
    atomic_store(result, &qword_2882D0);
  }

  return result;
}

unint64_t sub_12C174()
{
  result = qword_2882E0;
  if (!qword_2882E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionType, &type metadata for WelcomeActionType, v0, v1);
    atomic_store(result, &qword_2882E0);
  }

  return result;
}

unint64_t sub_12C1F4()
{
  result = qword_2882E8;
  if (!qword_2882E8)
  {
    result = swift_getWitnessTable(byte_1FD9D0, &type metadata for WelcomeActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882E8);
  }

  return result;
}

unint64_t sub_12C24C()
{
  result = qword_2882F0;
  if (!qword_2882F0)
  {
    result = swift_getWitnessTable(byte_1FD940, &type metadata for WelcomeActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882F0);
  }

  return result;
}

unint64_t sub_12C2A4()
{
  result = qword_2882F8;
  if (!qword_2882F8)
  {
    result = swift_getWitnessTable(byte_1FD968, &type metadata for WelcomeActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2882F8);
  }

  return result;
}

uint64_t UnifiedMessageActionEvent.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnifiedMessageActionEvent.messageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnifiedMessageActionEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 20);
  v4 = sub_3D68(&qword_288338, &unk_1FDA58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 20);
  v4 = sub_3D68(&qword_288338, &unk_1FDA58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnifiedMessageActionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_288338, &unk_1FDA58);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t UnifiedMessageExposureEvent.Model.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
}

uint64_t UnifiedMessageActionEvent.Model.actionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t UnifiedMessageActionEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v10 = *(v1 + 104);
  v11 = v2;
  v4 = *(v1 + 152);
  v12 = *(v1 + 136);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t UnifiedMessageActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.Model.init(messageData:actionData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = a2[1];
  *a5 = *a1;
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 24) = v7;
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  v11 = a3[1];
  *(a5 + 72) = *a3;
  *(a5 + 88) = v11;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  *(a5 + 152) = a3[5];
  *(a5 + 136) = v14;
  *(a5 + 120) = v13;
  *(a5 + 104) = v12;
  v15 = *(type metadata accessor for UnifiedMessageActionEvent.Model(0) + 28);
  v16 = sub_1E1150();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

uint64_t sub_12CC98()
{
  v1 = 0x446567617373656DLL;
  v2 = 0x44746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x61446E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_12CD20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_12E330(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_12CD48(uint64_t a1)
{
  v2 = sub_12D170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12CD84(uint64_t a1)
{
  v2 = sub_12D170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnifiedMessageActionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_288340, &qword_1FDA68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65[-v6];
  sub_48B8(a1, a1[3]);
  sub_12D170();
  sub_1E1E00();
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 48);
  LOBYTE(v74) = *v2;
  *(&v74 + 1) = v8;
  *&v75 = v9;
  BYTE8(v75) = v10;
  v76 = *(v2 + 32);
  *&v77 = v11;
  LOBYTE(v68) = 0;
  sub_12D1C4();

  v12 = v83;
  sub_1E1CF0();
  v20 = v75;
  if (v12)
  {
    v21 = v76;
    v77, v13, v14, v15, v16, v17, v18, v19;
    v20, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v37 = v76;
    v77, v13, v14, v15, v16, v17, v18, v19;
    v20, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    v52 = *(v2 + 64);
    v81 = *(v2 + 56);
    v82 = v52;
    v80 = 1;
    sub_12D218();

    sub_1E1CF0();
    v82, v53, v54, v55, v56, v57, v58, v59;
    v60 = *(v2 + 104);
    v61 = *(v2 + 136);
    v77 = *(v2 + 120);
    v78 = v61;
    v79 = *(v2 + 152);
    v62 = *(v2 + 72);
    v75 = *(v2 + 88);
    v76 = v60;
    v63 = *(v2 + 104);
    v64 = *(v2 + 136);
    v71 = *(v2 + 120);
    v72 = v64;
    v73 = *(v2 + 152);
    v74 = v62;
    v68 = *(v2 + 72);
    v69 = *(v2 + 88);
    v70 = v63;
    v67 = 2;
    sub_437B4(&v74, v66);
    sub_143D0();
    sub_1E1C80();
    v66[2] = v70;
    v66[3] = v71;
    v66[4] = v72;
    v66[5] = v73;
    v66[0] = v68;
    v66[1] = v69;
    sub_440C0(v66);
    type metadata accessor for UnifiedMessageActionEvent.Model(0);
    v65[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_12D170()
{
  result = qword_288348;
  if (!qword_288348)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for UnifiedMessageActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288348);
  }

  return result;
}

unint64_t sub_12D1C4()
{
  result = qword_288350;
  if (!qword_288350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageData, &type metadata for MessageData, v0, v1);
    atomic_store(result, &qword_288350);
  }

  return result;
}

unint64_t sub_12D218()
{
  result = qword_288358;
  if (!qword_288358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionData, &type metadata for ActionData, v0, v1);
    atomic_store(result, &qword_288358);
  }

  return result;
}

void UnifiedMessageActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E1150();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_288360, &qword_1FDA70);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v41 = a1;
  sub_48B8(a1, v12);
  sub_12D170();
  v13 = v40;
  sub_1E1DF0();
  if (v13)
  {
    sub_4E48(v41, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v40 = v5;
    v21 = v38;
    v48 = 0;
    sub_12D6FC();
    sub_1E1C20();
    v22 = v42[24];
    v23 = v44;
    *v11 = v42[0];
    *(v11 + 8) = *&v42[8];
    v11[24] = v22;
    *(v11 + 2) = v43;
    *(v11 + 6) = v23;
    v48 = 1;
    sub_12D750();
    sub_1E1C20();
    v24 = *&v42[8];
    *(v11 + 7) = *v42;
    *(v11 + 8) = v24;
    v48 = 2;
    sub_14CB8();
    sub_1E1BB0();
    v25 = v44;
    *(v11 + 104) = v43;
    *(v11 + 120) = v25;
    v26 = v46;
    *(v11 + 136) = v45;
    *(v11 + 152) = v26;
    v27 = *&v42[16];
    *(v11 + 72) = *v42;
    *(v11 + 88) = v27;
    v47 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v28 = v40;
    sub_1E1C20();
    (*(v21 + 8))(v8, v39);
    (*(v36 + 32))(&v11[*(v9 + 28)], v28, v3);
    sub_12D7A4(v11, v37);
    sub_4E48(v41, v29, v30, v31, v32, v33, v34, v35);
    sub_12D808(v11);
  }
}

unint64_t sub_12D6FC()
{
  result = qword_288368;
  if (!qword_288368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageData, &type metadata for MessageData, v0, v1);
    atomic_store(result, &qword_288368);
  }

  return result;
}

unint64_t sub_12D750()
{
  result = qword_288370;
  if (!qword_288370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionData, &type metadata for ActionData, v0, v1);
    atomic_store(result, &qword_288370);
  }

  return result;
}

uint64_t sub_12D7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12D808(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12D904@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_288338, &unk_1FDA58);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_12DA9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288330, &qword_1FDA50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288338, &unk_1FDA58);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_12DC68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288330, &qword_1FDA50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288338, &unk_1FDA58);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_12DE2C(uint64_t a1)
{
  sub_12DF88(319, &qword_2883E0, sub_12D6FC, sub_12D1C4, &type metadata for MessageData);
  if (v1 <= 0x3F)
  {
    sub_12DF88(319, &unk_2883E8, sub_12D750, sub_12D218, &type metadata for ActionData);
    if (v2 <= 0x3F)
    {
      sub_12DF88(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_12DF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_12E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_12E0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_12E17C(uint64_t a1)
{
  sub_45610();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_12E22C()
{
  result = qword_2884B8;
  if (!qword_2884B8)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for UnifiedMessageActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2884B8);
  }

  return result;
}

unint64_t sub_12E284()
{
  result = qword_2884C0;
  if (!qword_2884C0)
  {
    result = swift_getWitnessTable(byte_1FDB8C, &type metadata for UnifiedMessageActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2884C0);
  }

  return result;
}

unint64_t sub_12E2DC()
{
  result = qword_2884C8;
  if (!qword_2884C8)
  {
    result = swift_getWitnessTable(asc_1FDBB4, &type metadata for UnifiedMessageActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2884C8);
  }

  return result;
}

uint64_t sub_12E330(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_12E4D0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216B60 == a2)
  {
    a2, 0x8000000000216B60, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_12E564(uint64_t a1)
{
  v2 = sub_12E8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12E5A0(uint64_t a1)
{
  v2 = sub_12E8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftFailData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2884D0, &qword_1FDC98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_12E8C4();
  sub_1E1E00();
  v10 = v7;
  sub_12E918();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void GiftFailData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2884E8, &qword_1FDCA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_12E8C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_12E96C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_12E8C4()
{
  result = qword_2884D8;
  if (!qword_2884D8)
  {
    result = swift_getWitnessTable(asc_1FDE70, &type metadata for GiftFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2884D8);
  }

  return result;
}

unint64_t sub_12E918()
{
  result = qword_2884E0;
  if (!qword_2884E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailureReason, &type metadata for GiftFailureReason, v0, v1);
    atomic_store(result, &qword_2884E0);
  }

  return result;
}

unint64_t sub_12E96C()
{
  result = qword_2884F0;
  if (!qword_2884F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailureReason, &type metadata for GiftFailureReason, v0, v1);
    atomic_store(result, &qword_2884F0);
  }

  return result;
}

unint64_t sub_12E9EC()
{
  result = qword_2884F8;
  if (!qword_2884F8)
  {
    result = swift_getWitnessTable(asc_1FDE48, &type metadata for GiftFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2884F8);
  }

  return result;
}

unint64_t sub_12EA44()
{
  result = qword_288500;
  if (!qword_288500)
  {
    result = swift_getWitnessTable(aI_10, &type metadata for GiftFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288500);
  }

  return result;
}

unint64_t sub_12EA9C()
{
  result = qword_288508;
  if (!qword_288508)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for GiftFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288508);
  }

  return result;
}

BookAnalytics::SkipDirection_optional __swiftcall SkipDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2610A0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SkipDirection.rawValue.getter()
{
  v1 = 0x64726177726F66;
  if (*v0 != 1)
  {
    v1 = 1801675106;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_12EBA0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE700000000000000;
  v10 = 0xE700000000000000;
  v11 = 0x64726177726F66;
  if (v8 != 1)
  {
    v11 = 1801675106;
    v10 = 0xE400000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v14 = 1801675106;
    v9 = 0xE400000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_12EC94()
{
  result = qword_288510;
  if (!qword_288510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipDirection, &type metadata for SkipDirection, v0, v1);
    atomic_store(result, &qword_288510);
  }

  return result;
}

Swift::Int sub_12ECE8()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  if (v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_12ED84(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_12EE0C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  if (v2 != 1)
  {
    v3 = 0xE400000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_12EEB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1801675106;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_12EFC8()
{
  result = qword_288518;
  if (!qword_288518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipDirection, &type metadata for SkipDirection, v0, v1);
    atomic_store(result, &qword_288518);
  }

  return result;
}

uint64_t AppSessionEndEvent.sessionReadingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionEndEvent.sessionReadingData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.sessionListeningData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_3D68(&qword_288558, &qword_1FDFD8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionListeningData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_3D68(&qword_288558, &qword_1FDFD8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.sessionEndReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_3D68(&qword_288560, &qword_1FDFE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionEndReasonData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_3D68(&qword_288560, &qword_1FDFE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.ampTreatmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_3D68(&qword_288568, &qword_1FDFE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.ampTreatmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_3D68(&qword_288568, &qword_1FDFE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.booksTreatmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_3D68(&qword_288570, &unk_1FDFF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.booksTreatmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_3D68(&qword_288570, &unk_1FDFF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  v4 = sub_3D68(&qword_288578, &qword_1FE000);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  v4 = sub_3D68(&qword_288578, &qword_1FE000);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_288558, &qword_1FDFD8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_288560, &qword_1FDFE0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_288568, &qword_1FDFE8);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_288570, &unk_1FDFF0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = sub_3D68(&qword_288578, &qword_1FE000);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  v18 = enum case for EventProperty.required<A>(_:);
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v18, v21);
}

void AppSessionEndEvent.Model.sessionReadingData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

void AppSessionEndEvent.Model.sessionListeningData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  v4 = *(v1 + 29);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
  *(a1 + 13) = v4;
}

__n128 AppSessionEndEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u32[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t AppSessionEndEvent.Model.userEventStorageData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x149uLL);
  memcpy(a1, (v1 + 72), 0x149uLL);
  return sub_130064(__dst, v4);
}

uint64_t sub_130064(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_288580, &qword_1FE008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSessionEndEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 48);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.init(sessionReadingData:sessionListeningData:sessionEndReasonData:ampTreatmentData:booksTreatmentData:orientationData:userEventStorageData:eventData:timedData:)@<X0>(void *__src@<X6>, uint64_t *a2@<X0>, uint64_t *a3@<X1>, char *a4@<X2>, uint64_t *a5@<X3>, uint64_t *a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 12);
  v15 = *a3;
  v16 = *(a3 + 2);
  v17 = *(a3 + 12);
  v18 = *(a3 + 13);
  v19 = *a4;
  v20 = *a5;
  v21 = *a6;
  v22 = *(a7 + 16);
  *a9 = v12;
  *(a9 + 8) = v13;
  *(a9 + 12) = v14;
  *(a9 + 16) = v15;
  *(a9 + 28) = v17;
  *(a9 + 24) = v16;
  *(a9 + 29) = v18;
  *(a9 + 30) = v19;
  *(a9 + 32) = v20;
  *(a9 + 40) = v21;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v22;
  memcpy((a9 + 72), __src, 0x149uLL);
  v23 = type metadata accessor for AppSessionEndEvent.Model(0);
  v24 = *(v23 + 44);
  v25 = sub_1E1150();
  (*(*(v25 - 8) + 32))(a9 + v24, a8, v25);
  v26 = *(v23 + 48);
  v27 = sub_1E11A0();
  v28 = *(*(v27 - 8) + 32);

  return v28(a9 + v26, a10, v27);
}

unint64_t sub_130328(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000010;
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000012;
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7461746E6569726FLL;
    v2 = 0x746144746E657665;
    if (a1 != 7)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_13046C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_13265C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_130494(uint64_t a1)
{
  v2 = sub_130994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1304D0(uint64_t a1)
{
  v2 = sub_130994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288588, &qword_1FE010);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_48B8(a1, a1[3]);
  sub_130994();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = *(v3 + 12);
  *v34 = *v3;
  *&v34[8] = v9;
  v34[12] = v10;
  v33[0] = 0;
  sub_84590();
  sub_1E1C80();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v12 = *(v3 + 28);
    v13 = *(v3 + 29);
    *v34 = *(v3 + 16);
    v34[12] = v12;
    *&v34[8] = v11;
    v34[13] = v13;
    v33[0] = 1;
    sub_B93EC();
    sub_1E1C80();
    v34[0] = *(v3 + 30);
    v33[0] = 2;
    sub_1309E8();
    sub_1E1C80();
    *v34 = *(v3 + 32);
    v33[0] = 3;
    sub_130A3C();

    sub_1E1C80();
    *v34, v14, v15, v16, v17, v18, v19, v20;
    *v34 = *(v3 + 40);
    v33[0] = 4;
    sub_11923C();

    sub_1E1C80();
    *v34, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v3 + 64);
    v36 = *(v3 + 48);
    v37 = v29;
    v35 = 5;
    sub_67CE4();
    sub_1E1C80();
    memcpy(v34, (v3 + 72), sizeof(v34));
    memcpy(v33, (v3 + 72), sizeof(v33));
    v32[335] = 6;
    sub_130064(v34, v32);
    sub_612A0();
    sub_1E1C80();
    memcpy(v32, v33, 0x149uLL);
    sub_130A90(v32);
    type metadata accessor for AppSessionEndEvent.Model(0);
    v31 = 7;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v31 = 8;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_130994()
{
  result = qword_288590;
  if (!qword_288590)
  {
    result = swift_getWitnessTable(asc_1FE21C, &type metadata for AppSessionEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288590);
  }

  return result;
}

unint64_t sub_1309E8()
{
  result = qword_288598;
  if (!qword_288598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionEndReasonData, &type metadata for SessionEndReasonData, v0, v1);
    atomic_store(result, &qword_288598);
  }

  return result;
}

unint64_t sub_130A3C()
{
  result = qword_2885A0;
  if (!qword_2885A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmpTreatmentData, &type metadata for AmpTreatmentData, v0, v1);
    atomic_store(result, &qword_2885A0);
  }

  return result;
}

uint64_t sub_130A90(uint64_t a1)
{
  v2 = sub_3D68(&qword_288580, &qword_1FE008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AppSessionEndEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = sub_1E11A0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_2885A8, &qword_1FE018);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = v40 - v8;
  v10 = type metadata accessor for AppSessionEndEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v50 = a1;
  sub_48B8(a1, v13);
  sub_130994();
  v48 = v9;
  v14 = v49;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v50, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v49 = v6;
    v22 = v46;
    v53 = 0;
    sub_84538();
    sub_1E1BB0();
    v23 = DWORD2(v51[0]);
    v24 = BYTE12(v51[0]);
    *v12 = *&v51[0];
    *(v12 + 2) = v23;
    v12[12] = v24;
    v53 = 1;
    sub_B9394();
    sub_1E1BB0();
    v25 = v22;
    v26 = DWORD2(v51[0]);
    v27 = BYTE12(v51[0]);
    v28 = BYTE13(v51[0]);
    *(v12 + 2) = *&v51[0];
    v12[28] = v27;
    *(v12 + 6) = v26;
    v12[29] = v28;
    v53 = 2;
    sub_131210();
    sub_1E1BB0();
    v12[30] = v51[0];
    v53 = 3;
    sub_131264();
    sub_1E1BB0();
    *(v12 + 4) = *&v51[0];
    v53 = 4;
    sub_1191E4();
    sub_1E1BB0();
    *(v12 + 5) = *&v51[0];
    v53 = 5;
    sub_687E4();
    sub_1E1BB0();
    v29 = v51[1];
    *(v12 + 3) = v51[0];
    *(v12 + 16) = v29;
    v53 = 6;
    sub_61248();
    sub_1E1BB0();
    v40[1] = 0;
    memcpy(v12 + 72, v51, 0x149uLL);
    v52 = 7;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v30 = v49;
    sub_1E1C20();
    (*(v45 + 32))(&v12[*(v10 + 44)], v30, v4);
    v52 = 8;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v31 = v43;
    v32 = v44;
    sub_1E1C20();
    (*(v25 + 8))(v48, v47);
    (*(v41 + 32))(&v12[*(v10 + 48)], v32, v31);
    sub_1312B8(v12, v42);
    sub_4E48(v50, v33, v34, v35, v36, v37, v38, v39);
    sub_13131C(v12);
  }
}

unint64_t sub_131210()
{
  result = qword_2885B0;
  if (!qword_2885B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionEndReasonData, &type metadata for SessionEndReasonData, v0, v1);
    atomic_store(result, &qword_2885B0);
  }

  return result;
}

unint64_t sub_131264()
{
  result = qword_2885B8;
  if (!qword_2885B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmpTreatmentData, &type metadata for AmpTreatmentData, v0, v1);
    atomic_store(result, &qword_2885B8);
  }

  return result;
}

uint64_t sub_1312B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13131C(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_131418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288550, &qword_1FDFD0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_288558, &qword_1FDFD8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_288560, &qword_1FDFE0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_288568, &qword_1FDFE8);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_288570, &unk_1FDFF0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = sub_3D68(&qword_288578, &qword_1FE000);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  v19 = enum case for EventProperty.required<A>(_:);
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v20 - 8) + 104))(a2 + v18, v19, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v19, v22);
}

uint64_t sub_131724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288558, &qword_1FDFD8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  v14 = sub_3D68(&qword_288560, &qword_1FDFE0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  v15 = sub_3D68(&qword_288568, &qword_1FDFE8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  v16 = sub_3D68(&qword_288570, &unk_1FDFF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_288578, &qword_1FE000);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[12];

  return v22(v23, a2, v21);
}

uint64_t sub_131A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288558, &qword_1FDFD8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  v16 = sub_3D68(&qword_288560, &qword_1FDFE0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_288568, &qword_1FDFE8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_288570, &unk_1FDFF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  v20 = sub_3D68(&qword_288578, &qword_1FE000);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[12];

  return v24(v25, a2, a2, v23);
}

void sub_131DFC(uint64_t a1)
{
  sub_1320B0(319, &qword_288628, sub_84538, sub_84590, &type metadata for SessionReadingData);
  if (v1 <= 0x3F)
  {
    sub_1320B0(319, &qword_288630, sub_B9394, sub_B93EC, &type metadata for SessionListeningData);
    if (v2 <= 0x3F)
    {
      sub_1320B0(319, &qword_288638, sub_131210, sub_1309E8, &type metadata for SessionEndReasonData);
      if (v3 <= 0x3F)
      {
        sub_1320B0(319, &qword_288640, sub_131264, sub_130A3C, &type metadata for AmpTreatmentData);
        if (v4 <= 0x3F)
        {
          sub_1320B0(319, &qword_288648, sub_1191E4, sub_11923C, &type metadata for BooksTreatmentData);
          if (v5 <= 0x3F)
          {
            sub_1320B0(319, &qword_280E58, sub_687E4, sub_67CE4, &type metadata for OrientationData);
            if (v6 <= 0x3F)
            {
              sub_1320B0(319, &unk_288650, sub_61248, sub_612A0, &type metadata for UserEventStorageData);
              if (v7 <= 0x3F)
              {
                sub_5684(319);
                if (v8 <= 0x3F)
                {
                  sub_5750(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1320B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_132140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_132284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1323A8(uint64_t a1)
{
  sub_19FE0(319, &qword_288708, &type metadata for SessionReadingData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_288710, &type metadata for SessionListeningData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_288718, &type metadata for SessionEndReasonData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_288720, &type metadata for AmpTreatmentData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_287DA0, &type metadata for BooksTreatmentData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_280F20, &type metadata for OrientationData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &unk_288728, &type metadata for UserEventStorageData);
              if (v7 <= 0x3F)
              {
                sub_1E1150();
                if (v8 <= 0x3F)
                {
                  sub_1E11A0();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_132558()
{
  result = qword_288778;
  if (!qword_288778)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for AppSessionEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288778);
  }

  return result;
}

unint64_t sub_1325B0()
{
  result = qword_288780;
  if (!qword_288780)
  {
    result = swift_getWitnessTable(byte_1FE164, &type metadata for AppSessionEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288780);
  }

  return result;
}

unint64_t sub_132608()
{
  result = qword_288788;
  if (!qword_288788)
  {
    result = swift_getWitnessTable(byte_1FE18C, &type metadata for AppSessionEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288788);
  }

  return result;
}

uint64_t sub_13265C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = 0x8000000000216B80;
  v10 = a1 == 0xD000000000000012 && 0x8000000000216B80 == a2;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000216BA0;
    if (a1 == 0xD000000000000014 && 0x8000000000216BA0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000216BC0;
      if (a1 == 0xD000000000000014 && 0x8000000000216BC0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x8000000000216BE0;
        if (a1 == 0xD000000000000010 && 0x8000000000216BE0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x8000000000216910;
          if (a1 == 0xD000000000000012 && 0x8000000000216910 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0xEF617461446E6F69;
            if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v18 = 0x8000000000216C00;
              if (a1 == 0xD000000000000014 && 0x8000000000216C00 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
              {
                0xE900000000000061, v18, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else
              {
                v19 = sub_1E1D30();
                a2, v20, v21, v22, v23, v24, v25, v26;
                if (v19)
                {
                  return 8;
                }

                else
                {
                  return 9;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ReadingAutoNightSettingChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.autoNightThemeSettingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_2887C0, &unk_1FE270);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.autoNightThemeSettingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_2887C0, &unk_1FE270);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingAutoNightSettingChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_2887C0, &unk_1FE270);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.init(readingSessionData:contentData:autoNightThemeSettingData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_13312C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1331C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_134524(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1331E8(uint64_t a1)
{
  v2 = sub_133560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_133224(uint64_t a1)
{
  v2 = sub_133560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2887C8, &qword_1FE280);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_48B8(a1, a1[3]);
  sub_133560();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v38 = *v2;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v37 = 0;
  sub_67BE8();
  v13 = v44;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = v15;
    v16 = *(v2 + 5);
    v36 = *(v2 + 6);
    v17 = *(v2 + 1);
    v18 = *(v2 + 3);
    v32 = *(v2 + 2);
    v33 = v18;
    v19 = *(v2 + 1);
    v28 = v34;
    v29 = v16;
    v30 = *(v2 + 6);
    v31 = v19;
    v25 = v17;
    v26 = v32;
    v27 = v14;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v22 = *(v2 + 112);
    v21[14] = 2;
    sub_109688();
    sub_1E1CF0();
    type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
    v22 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_133560()
{
  result = qword_2887D0;
  if (!qword_2887D0)
  {
    result = swift_getWitnessTable(byte_1FE45C, &type metadata for ReadingAutoNightSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2887D0);
  }

  return result;
}

void ReadingAutoNightSettingChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_2887D8, &qword_1FE288);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  sub_48B8(a1, v13);
  sub_133560();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v43, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v38 = v10;
    v21 = v41;
    v52 = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v44);
    v23 = DWORD2(v44);
    v24 = BYTE12(v44);
    v25 = BYTE13(v44);
    v26 = BYTE14(v44);
    *v12 = v44;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v52 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v47;
    *(v12 + 3) = v46;
    *(v12 + 4) = v27;
    v28 = v49;
    *(v12 + 5) = v48;
    *(v12 + 6) = v28;
    v29 = v45;
    *(v12 + 1) = v44;
    *(v12 + 2) = v29;
    v50 = 2;
    sub_109630();
    sub_1E1C20();
    v12[112] = v51;
    v51 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v42;
    sub_1E1C20();
    (*(v21 + 8))(v9, v30);
    (*(v39 + 32))(&v12[*(v38 + 28)], v6, v4);
    sub_1339B4(v12, v40);
    sub_4E48(v43, v31, v32, v33, v34, v35, v36, v37);
    sub_133A18(v12);
  }
}

uint64_t sub_1339B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133A18(uint64_t a1)
{
  v2 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_133B14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_2887C0, &unk_1FE270);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_133C98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_2887C0, &unk_1FE270);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_133E64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_2887C0, &unk_1FE270);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_134028(uint64_t a1)
{
  sub_134184(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_134184(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_134184(319, &unk_288848, sub_109630, sub_109688, &type metadata for AutoNightThemeSettingData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_134184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_134214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1342D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_134378(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_134420()
{
  result = qword_288918;
  if (!qword_288918)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for ReadingAutoNightSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288918);
  }

  return result;
}

unint64_t sub_134478()
{
  result = qword_288920;
  if (!qword_288920)
  {
    result = swift_getWitnessTable(asc_1FE3A4, &type metadata for ReadingAutoNightSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288920);
  }

  return result;
}

unint64_t sub_1344D0()
{
  result = qword_288928;
  if (!qword_288928)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for ReadingAutoNightSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288928);
  }

  return result;
}

uint64_t sub_134524(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214400;
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000216C20;
      if (a1 == 0xD000000000000019 && 0x8000000000216C20 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t RemoteConfigChangeEvent.remoteConfigNamespaceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteConfigChangeEvent.remoteConfigNamespaceData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteConfigChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteConfigChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteConfigChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t RemoteConfigChangeEvent.Model.remoteConfigNamespaceData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_134AEC(v7, &v6);
}

uint64_t sub_134AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_288968, &qword_1FE4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteConfigChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteConfigChangeEvent.Model.init(remoteConfigNamespaceData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v6;
  v7 = *(type metadata accessor for RemoteConfigChangeEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

uint64_t sub_134C88()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void sub_134CCC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000214F30;
  if (a1 == 0xD000000000000019 && 0x8000000000214F30 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_134DBC(uint64_t a1)
{
  v2 = sub_135090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_134DF8(uint64_t a1)
{
  v2 = sub_135090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoteConfigChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288970, &qword_1FE4C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_48B8(a1, a1[3]);
  sub_135090();
  sub_1E1E00();
  v9 = *v3;
  v10 = v3[2];
  v22 = v3[1];
  v23 = v10;
  v11 = v3[2];
  v24 = v3[3];
  v17 = v9;
  v18 = v22;
  v12 = *v3;
  v19 = v11;
  v20 = v3[3];
  v21 = v12;
  v16 = 0;
  sub_134AEC(&v21, v15);
  sub_EF154();
  sub_1E1C80();
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  sub_1350E4(v15);
  if (!v2)
  {
    type metadata accessor for RemoteConfigChangeEvent.Model(0);
    v14[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_135090()
{
  result = qword_288978;
  if (!qword_288978)
  {
    result = swift_getWitnessTable(byte_1FE684, &type metadata for RemoteConfigChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288978);
  }

  return result;
}

uint64_t sub_1350E4(uint64_t a1)
{
  v2 = sub_3D68(&qword_288968, &qword_1FE4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RemoteConfigChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_288980, &qword_1FE4D0);
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  sub_48B8(a1, v13);
  sub_135090();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v36, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v34;
    v42 = 0;
    sub_EF0FC();
    sub_1E1BB0();
    v22 = v38;
    *v12 = v37;
    *(v12 + 1) = v22;
    v23 = v40;
    *(v12 + 2) = v39;
    *(v12 + 3) = v23;
    v41 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v35);
    (*(v32 + 32))(&v12[*(v10 + 20)], v6, v4);
    sub_135490(v12, v33);
    sub_4E48(v36, v24, v25, v26, v27, v28, v29, v30);
    sub_1354F4(v12);
  }
}

uint64_t sub_135490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1354F4(uint64_t a1)
{
  v2 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1355F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288960, &unk_1FE4B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_1356E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_135804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_135944(uint64_t a1)
{
  if (!qword_2889F0)
  {
    sub_EF0FC();
    sub_EF154();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_2889F0);
    }
  }
}

uint64_t sub_1359C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_135A90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_135B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_135BF4()
{
  if (!qword_288A88)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_288A88);
    }
  }
}

unint64_t sub_135C58()
{
  result = qword_288AB8;
  if (!qword_288AB8)
  {
    result = swift_getWitnessTable(asc_1FE65C, &type metadata for RemoteConfigChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AB8);
  }

  return result;
}

unint64_t sub_135CB0()
{
  result = qword_288AC0;
  if (!qword_288AC0)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for RemoteConfigChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AC0);
  }

  return result;
}

unint64_t sub_135D08()
{
  result = qword_288AC8;
  if (!qword_288AC8)
  {
    result = swift_getWitnessTable(asc_1FE5F4, &type metadata for RemoteConfigChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AC8);
  }

  return result;
}

uint64_t PurchaseFailData.errorCode.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t LayoutOptionData.characterSpacing.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t OnDevicePersonalizationPropertyData.lockedInCount.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

void __swiftcall LayoutOptionData.init(isCustomized:lineSpacing:characterSpacing:wordSpacing:isFullJustificationEanabled:)(BookAnalytics::LayoutOptionData *__return_ptr retstr, Swift::Bool_optional isCustomized, Swift::Float_optional *lineSpacing, Swift::Float_optional *characterSpacing, Swift::Float_optional *wordSpacing, Swift::Bool_optional isFullJustificationEanabled)
{
  retstr->isCustomized = isCustomized;
  *(&retstr->lineSpacing.value + 3) = lineSpacing;
  BYTE2(retstr->characterSpacing.value) = BYTE4(lineSpacing) & 1;
  *(&retstr->wordSpacing.value + 1) = characterSpacing;
  retstr->isFullJustificationEanabled.value = BYTE4(characterSpacing) & 1;
  *(&retstr[1].lineSpacing.value + 2) = wordSpacing;
  BYTE1(retstr[1].characterSpacing.value) = BYTE4(wordSpacing) & 1;
  BYTE2(retstr[1].characterSpacing.value) = isFullJustificationEanabled;
}

unint64_t sub_135E80()
{
  v1 = *v0;
  v2 = 0x6D6F747375437369;
  v3 = 0xD000000000000010;
  v4 = 0x6361705364726F77;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x63617053656E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_135F3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1367DC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_135F64(uint64_t a1)
{
  v2 = sub_13659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_135FA0(uint64_t a1)
{
  v2 = sub_13659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LayoutOptionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288AD0, &qword_1FE6E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v16 = *(v1 + 4);
  v15 = *(v1 + 8);
  v14 = *(v1 + 12);
  v13 = *(v1 + 16);
  v12 = *(v1 + 20);
  HIDWORD(v11) = *(v1 + 24);
  sub_48B8(a1, a1[3]);
  sub_13659C();
  sub_1E1E00();
  v25 = 0;
  v7 = v17;
  sub_1E1C60();
  if (v7)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8 = v13;
  v9 = BYTE4(v11);
  v24 = 1;
  v22 = v15;
  sub_1E1C70();
  v23 = 2;
  v19 = v8;
  sub_1E1C70();
  v21 = 3;
  v18 = v9;
  sub_1E1C70();
  v20 = 4;
  sub_1E1C60();
  return (*(v4 + 8))(v6, v3);
}

void LayoutOptionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288AE0, &qword_1FE6E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_48B8(a1, a1[3]);
  sub_13659C();
  sub_1E1DF0();
  if (!v2)
  {
    v34 = 0;
    v16 = sub_1E1B90();
    v33 = 1;
    v17 = sub_1E1BA0();
    v18 = v17;
    v31 = BYTE4(v17) & 1;
    v32 = 2;
    v26 = sub_1E1BA0();
    v28 = BYTE4(v26) & 1;
    v30 = 3;
    v25 = sub_1E1BA0();
    v27 = BYTE4(v25) & 1;
    v29 = 4;
    v19 = sub_1E1B90();
    (*(v6 + 8))(v8, v5);
    v20 = v31;
    v21 = v28;
    v22 = v27;
    *a2 = v16;
    *(a2 + 4) = v18;
    *(a2 + 8) = v20;
    v23 = v25;
    *(a2 + 12) = v26;
    *(a2 + 16) = v21;
    *(a2 + 20) = v23;
    *(a2 + 24) = v22;
    *(a2 + 25) = v19;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics16LayoutOptionDataV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = a1[3];
  v6 = *(a1 + 16);
  v7 = a1[5];
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = *a2;
  v11 = *(a2 + 25);
  if (v2 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v10 == 2 || ((v10 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (v3 == a2[1])
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == a2[3])
    {
      v14 = *(a2 + 16);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v7 == a2[5])
    {
      v15 = *(a2 + 24);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v9) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_13659C()
{
  result = qword_288AD8;
  if (!qword_288AD8)
  {
    result = swift_getWitnessTable(byte_1FE8C4, &type metadata for LayoutOptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AD8);
  }

  return result;
}

__n128 sub_1365F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_13660C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[26])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_13666C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1366D8()
{
  result = qword_288AE8;
  if (!qword_288AE8)
  {
    result = swift_getWitnessTable(byte_1FE89C, &type metadata for LayoutOptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AE8);
  }

  return result;
}

unint64_t sub_136730()
{
  result = qword_288AF0;
  if (!qword_288AF0)
  {
    result = swift_getWitnessTable(byte_1FE80C, &type metadata for LayoutOptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AF0);
  }

  return result;
}

unint64_t sub_136788()
{
  result = qword_288AF8;
  if (!qword_288AF8)
  {
    result = swift_getWitnessTable(byte_1FE834, &type metadata for LayoutOptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288AF8);
  }

  return result;
}

uint64_t sub_1367DC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEC00000064657A69;
  v11 = a1 == 0x6D6F747375437369 && a2 == 0xEC00000064657A69;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x63617053656E696CLL && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0x8000000000216C40;
    if (a1 == 0xD000000000000010 && 0x8000000000216C40 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6361705364726F77 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0xD00000000000001BLL && 0x8000000000216C60 == a2)
    {
      a2, 0x8000000000216C60, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

BookAnalytics::SearchSuggestionSelectionData __swiftcall SearchSuggestionSelectionData.init(selectedSuggestionString:selectedSuggestionPosition:selectedSuggestionType:)(BookAnalytics::SearchSuggestionSelectionData selectedSuggestionString, Swift::Int32 selectedSuggestionPosition, BookAnalytics::SelectedSuggestionType selectedSuggestionType)
{
  v4 = *selectedSuggestionType;
  *v3 = selectedSuggestionString.selectedSuggestionString;
  *(v3 + 16) = selectedSuggestionPosition;
  *(v3 + 20) = v4;
  selectedSuggestionString.selectedSuggestionPosition = selectedSuggestionPosition;
  return selectedSuggestionString;
}

uint64_t static SearchSuggestionItemTypeData.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 20);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *a1 == *a2 && a1[1] == v11;
  if (!v14 && (sub_1E1D30() & 1) == 0 || v8 != v12)
  {
    return 0;
  }

  return sub_21D7C(v9, v13, v10, v11, a5, a6, a7, a8);
}

unint64_t sub_136A60()
{
  v1 = 0x6974736567677573;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_136ACC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_137330(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_136AF4(uint64_t a1)
{
  v2 = sub_136D68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_136B30(uint64_t a1)
{
  v2 = sub_136D68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288B00, &qword_1FE920);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v12 = *(v1 + 16);
  HIDWORD(v10) = *(v1 + 20);
  sub_48B8(a1, a1[3]);
  sub_136D68();
  sub_1E1E00();
  v16 = 0;
  v7 = v11;
  sub_1E1CB0();
  if (!v7)
  {
    v9 = BYTE4(v10);
    v15 = 1;
    sub_1E1D00();
    v14 = v9;
    v13 = 2;
    sub_136DBC();
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_136D68()
{
  result = qword_288B08;
  if (!qword_288B08)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for SearchSuggestionItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B08);
  }

  return result;
}

unint64_t sub_136DBC()
{
  result = qword_288B10;
  if (!qword_288B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestionType, &type metadata for SuggestionType, v0, v1);
    atomic_store(result, &qword_288B10);
  }

  return result;
}

void SearchSuggestionItemTypeData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288B18, &qword_1FE928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_136D68();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v40 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v39 = 1;
    v36 = sub_1E1C30();
    v37 = 2;
    sub_137034();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v34 = v38;
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v36;
    *(a2 + 20) = v34;

    sub_4E48(a1, v20, v21, v22, v23, v24, v25, v26);
    v18, v27, v28, v29, v30, v31, v32, v33;
  }
}

unint64_t sub_137034()
{
  result = qword_288B20;
  if (!qword_288B20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestionType, &type metadata for SuggestionType, v0, v1);
    atomic_store(result, &qword_288B20);
  }

  return result;
}

unint64_t sub_13708C()
{
  result = qword_288B28;
  if (!qword_288B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionItemTypeData, &type metadata for SearchSuggestionItemTypeData, v0, v1);
    atomic_store(result, &qword_288B28);
  }

  return result;
}

unint64_t sub_1370E4()
{
  result = qword_288B30;
  if (!qword_288B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionItemTypeData, &type metadata for SearchSuggestionItemTypeData, v0, v1);
    atomic_store(result, &qword_288B30);
  }

  return result;
}

__n128 sub_137168(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_13717C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1371C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13722C()
{
  result = qword_288B38;
  if (!qword_288B38)
  {
    result = swift_getWitnessTable(byte_1FEAE8, &type metadata for SearchSuggestionItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B38);
  }

  return result;
}

unint64_t sub_137284()
{
  result = qword_288B40;
  if (!qword_288B40)
  {
    result = swift_getWitnessTable(byte_1FEA58, &type metadata for SearchSuggestionItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B40);
  }

  return result;
}

unint64_t sub_1372DC()
{
  result = qword_288B48;
  if (!qword_288B48)
  {
    result = swift_getWitnessTable(byte_1FEA80, &type metadata for SearchSuggestionItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B48);
  }

  return result;
}

uint64_t sub_137330(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000216C80;
  if (a1 == 0xD000000000000010 && 0x8000000000216C80 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000216CA0;
    if (a1 == 0xD000000000000012 && 0x8000000000216CA0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x6974736567677573 && a2 == 0xEE00657079546E6FLL)
    {
      0xEE00657079546E6FLL, 0xEE00657079546E6FLL, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t static MarkedData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

void sub_1374C4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000215380 == a2)
  {
    a2, 0x8000000000215380, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_137558(uint64_t a1)
{
  v2 = sub_137708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137594(uint64_t a1)
{
  v2 = sub_137708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MarkedData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_288B50, &qword_1FEB60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_137708();
  sub_1E1E00();
  sub_1E1C60();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_137708()
{
  result = qword_288B58;
  if (!qword_288B58)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for MarkedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B58);
  }

  return result;
}

void MarkedData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_288B60, &qword_1FEB68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_48B8(a1, a1[3]);
  sub_137708();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1B90();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

BOOL sub_1378B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t getEnumTagSinglePayload for MarkedData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1379DC()
{
  result = qword_288B68;
  if (!qword_288B68)
  {
    result = swift_getWitnessTable(asc_1FED0C, &type metadata for MarkedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B68);
  }

  return result;
}

unint64_t sub_137A34()
{
  result = qword_288B70;
  if (!qword_288B70)
  {
    result = swift_getWitnessTable(byte_1FEC7C, &type metadata for MarkedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B70);
  }

  return result;
}

unint64_t sub_137A8C()
{
  result = qword_288B78;
  if (!qword_288B78)
  {
    result = swift_getWitnessTable(byte_1FECA4, &type metadata for MarkedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288B78);
  }

  return result;
}

uint64_t AccountScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AccountScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent.Model(0) + 20);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountScreenViewEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for AccountScreenViewEvent.Model(0) + 20);
  v8 = sub_1E11A0();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_137F50(uint64_t a1)
{
  v2 = sub_1381C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137F8C(uint64_t a1)
{
  v2 = sub_1381C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288BB0, &qword_1FED90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_48B8(a1, a1[3]);
  sub_1381C8();
  sub_1E1E00();
  v8[15] = 0;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  if (!v1)
  {
    type metadata accessor for AccountScreenViewEvent.Model(0);
    v8[14] = 1;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1381C8()
{
  result = qword_288BB8;
  if (!qword_288BB8)
  {
    result = swift_getWitnessTable(asc_1FEF50, &type metadata for AccountScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288BB8);
  }

  return result;
}

void AccountScreenViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = sub_1E11A0();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E1150();
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3D68(&qword_288BC0, &qword_1FED98);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v32 - v7;
  v9 = type metadata accessor for AccountScreenViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1381C8();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v33 = v9;
    v19 = v11;
    v21 = v36;
    v20 = v37;
    v43 = 0;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v22 = v38;
    sub_1E1C20();
    v23 = *(v21 + 32);
    v32 = v19;
    v23(v19, v22, v40);
    v42 = 1;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v39 + 8))(v8, v41);
    v24 = v32;
    (*(v34 + 32))(v32 + *(v33 + 20), v5, v20);
    sub_13863C(v24, v35);
    sub_4E48(a1, v25, v26, v27, v28, v29, v30, v31);
    sub_1386A0(v24);
  }
}

uint64_t sub_13863C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1386A0(uint64_t a1)
{
  v2 = type metadata accessor for AccountScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1387B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1388CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1389F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E11A0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_138AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_138C08()
{
  result = qword_288CE8;
  if (!qword_288CE8)
  {
    result = swift_getWitnessTable(aA_16, &type metadata for AccountScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288CE8);
  }

  return result;
}

unint64_t sub_138C60()
{
  result = qword_288CF0;
  if (!qword_288CF0)
  {
    result = swift_getWitnessTable(byte_1FEE98, &type metadata for AccountScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288CF0);
  }

  return result;
}

unint64_t sub_138CB8()
{
  result = qword_288CF8;
  if (!qword_288CF8)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for AccountScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288CF8);
  }

  return result;
}

uint64_t ReadingGoalChangedEvent.readingGoalsDurationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingGoalChangedEvent.readingGoalsDurationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReadingGoalChangedEvent.readingGoalYearlyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 20);
  v4 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.readingGoalYearlyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 20);
  v4 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalChangedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalChangedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingGoalChangedEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

__n128 ReadingGoalChangedEvent.Model.readingGoalsDurationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingGoalChangedEvent.Model.readingGoalYearlyData.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t ReadingGoalChangedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.Model.init(readingGoalsDurationData:readingGoalYearlyData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = *a2;
  v7 = *(type metadata accessor for ReadingGoalChangedEvent.Model(0) + 24);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

unint64_t sub_139410()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_13947C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_13A5CC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1394A4(uint64_t a1)
{
  v2 = sub_139720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1394E0(uint64_t a1)
{
  v2 = sub_139720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalChangedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288D40, &qword_1FEFB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_48B8(a1, a1[3]);
  sub_139720();
  sub_1E1E00();
  v9 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_139774();
  sub_1E1C80();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v12 = 1;
    sub_1397C8();
    sub_1E1CF0();
    type metadata accessor for ReadingGoalChangedEvent.Model(0);
    LOBYTE(v13) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_139720()
{
  result = qword_288D48;
  if (!qword_288D48)
  {
    result = swift_getWitnessTable(byte_1FF184, &type metadata for ReadingGoalChangedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288D48);
  }

  return result;
}

unint64_t sub_139774()
{
  result = qword_288D50;
  if (!qword_288D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsDurationData, &type metadata for ReadingGoalsDurationData, v0, v1);
    atomic_store(result, &qword_288D50);
  }

  return result;
}

unint64_t sub_1397C8()
{
  result = qword_288D58;
  if (!qword_288D58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalYearlyData, &type metadata for ReadingGoalYearlyData, v0, v1);
    atomic_store(result, &qword_288D58);
  }

  return result;
}