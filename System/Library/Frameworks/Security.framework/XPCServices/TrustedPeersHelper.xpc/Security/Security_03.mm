void sub_100063060(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, _TtC18TrustedPeersHelper6Client *a8, double a9, _TtC18TrustedPeersHelper6Client *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t (*a16)(void), uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21)
{
  v166 = a6;
  v167 = a2;
  v168 = a5;
  v169 = a3;
  v170 = a4;
  v25 = sub_100216384();
  v171 = *(v25 - 8);
  v27 = __chkstk_darwin(v25, v26);
  v162 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27, v29);
  v161 = &v154 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v164 = &v154 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v163 = &v154 - v37;
  __chkstk_darwin(v36, v38);
  v40 = &v154 - v39;
  v159 = sub_100011534(&unk_10029D560, qword_10021D450);
  v160 = a19;
  v41 = sub_100217294();
  v42 = *(v41 - 8);
  v44 = __chkstk_darwin(v41, v43);
  v46 = (&v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44, v47);
  v49 = (&v154 - v48);
  v50 = *(v42 + 16);
  v165 = a1;
  v50(&v154 - v48, a1, v41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001148C(&qword_1002983D8, &unk_10021DE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    v173 = sub_100216974();
    v174 = v84;
    sub_100216F74();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = v169;
    v173 = sub_100216974();
    v174 = v85;
    sub_100216F74();
    sub_100216374();
    sub_100216244();
    v87 = v86;
    v171[1](v40, v25);
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v87;
    v88 = sub_100019254(inited);
    swift_setDeallocating();
    sub_10001148C(&unk_1002983E0, &qword_10021D708);
    swift_arrayDestroy();
    isa = sub_1002168C4().super.isa;
    v88, v90, v91, v92, v93, v94, v95, v96, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;
    v97 = v167;
    [v167 addMetrics:isa];

    [v97 sendMetricWithResult:1 error:0];
    v168(v165);
    (*(v42 + 8))(v49, v41);
    return;
  }

  v157 = v42;
  v158 = a7;
  v155 = a8;
  v51 = v25;
  v52 = *v49;
  sub_10001148C(&qword_1002983D8, &unk_10021DE60);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_10021D420;
  v173 = sub_100216974();
  v174 = v54;
  sub_100216F74();
  *(v53 + 96) = &type metadata for Int;
  *(v53 + 72) = v169;
  v173 = sub_100216974();
  v174 = v55;
  sub_100216F74();
  sub_100216374();
  sub_100216244();
  v57 = v56;
  v58 = v171[1];
  v165 = v51;
  v156 = v171 + 1;
  v58(v40, v51);
  *(v53 + 168) = &type metadata for Double;
  *(v53 + 144) = v57;
  v59 = sub_100019254(v53);
  swift_setDeallocating();
  sub_10001148C(&unk_1002983E0, &qword_10021D708);
  swift_arrayDestroy();
  v60 = sub_1002168C4().super.isa;
  v59, v61, v62, v63, v64, v65, v66, v67, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;
  v68 = v167;
  [v167 addMetrics:v60];

  v69 = sub_100216144();
  [v68 sendMetricWithResult:0 error:v69];

  swift_errorRetain();
  if ((_s18TrustedPeersHelper21RetryingCKCodeServiceC14retryableError5errorSbs0H0_pSg_tFZ_0(v52) & 1) == 0)
  {

    goto LABEL_13;
  }

  v167 = v58;
  v70 = v163;
  sub_100216374();
  swift_errorRetain();
  v71 = sub_100216144();
  [v71 cuttlefishRetryAfter];
  v73 = v72;

  v74 = sub_100216144();
  CKRetryAfterSecondsForError();
  v76 = v75;

  if (v73 < a9)
  {
    v77 = a9;
  }

  else
  {
    v77 = v73;
  }

  if (v77 > v76)
  {
    v78 = v77;
  }

  else
  {
    v78 = v76;
  }

  v79 = v171[2];
  v80 = v165;
  (v79)(v40, v70, v165);
  v81 = v164;
  sub_100216234();
  if (sub_100216354() == 1)
  {
    v82 = v167;
    v167(v81, v80);
    v82(v70, v80);
LABEL_13:
    *v46 = v52;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v168(v46);

    (*(v157 + 1))(v46, v41);
    return;
  }

  [objc_opt_self() sleepForTimeInterval:v78];
  if (qword_100297250 != -1)
  {
    swift_once();
  }

  v98 = sub_100216774();
  sub_100002648(v98, qword_100297FB0);
  v99 = v161;
  v100 = v70;
  v101 = v165;
  (v79)(v161, v100, v165);
  v102 = v162;
  (v79)(v162, v158, v101);
  swift_errorRetain();

  v103 = sub_100216754();
  v104 = sub_100216C54();
  a10, v105, v106, v107, v108, v109, v110, v111, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;

  v112 = os_log_type_enabled(v103, v104);
  v171 = a10;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v173 = v157;
    *v113 = 136446978;
    *(v113 + 4) = sub_100005FB0(v155, a10, &v173);
    *(v113 + 12) = 2082;
    v172 = v52;
    swift_errorRetain();
    v114 = sub_100216994();
    LODWORD(v159) = v104;
    v116 = v115;
    v117 = sub_100005FB0(v114, v115, &v173);
    v116, v118, v119, v120, v121, v122, v123, v124, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;
    *(v113 + 14) = v117;
    *(v113 + 22) = 2082;
    sub_10007B900(&qword_1002983F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v125 = sub_100217174();
    v127 = v126;
    v128 = v99;
    v129 = v167;
    v167(v128, v101);
    v130 = sub_100005FB0(v125, v127, &v173);
    v131 = v127;
    v132 = v129;
    v131, v133, v134, v135, v136, v137, v138, v139, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;
    *(v113 + 24) = v130;
    *(v113 + 32) = 2082;
    v140 = v162;
    v141 = sub_100217174();
    v143 = v142;
    v132(v140, v101);
    v144 = sub_100005FB0(v141, v143, &v173);
    v143, v145, v146, v147, v148, v149, v150, v151, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163;
    *(v113 + 34) = v144;
    _os_log_impl(&_mh_execute_header, v103, v159, "%{public}s error: %{public}s (retrying, now=%{public}s, deadline=%{public}s", v113, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v132 = v167;
    v167(v102, v101);
    v132(v99, v101);
  }

  v152 = v164;
  if (__OFADD__(v169, 1))
  {
    __break(1u);
  }

  else
  {
    RetryingCKCodeService.invokeRetry<A, B>(deadline:minimumDelay:functionName:deviceSessionID:flowID:attemptNumber:startTime:operationCreator:completion:)(v158, v155, v171, a12, a13, a14, a15, v169 + 1, a9, v170, a16, a17, v168, v166, a18, v160, a20, a21);

    v153 = v165;
    v132(v152, v165);
    v132(v163, v153);
  }
}

uint64_t sub_100063B20(void *a1, uint64_t a2)
{
  [a1 setQualityOfService:25];
  sub_100006484((a2 + 16), *(a2 + 40));
  return sub_100216C44();
}

void sub_100063B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

void sub_100063BBC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280B78;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280BF0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_1000645CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280D08;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280D80;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_100064FDC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100281668;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007B6BC;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_1002816E0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_1000659EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_1002814D8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100281550;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_1000663FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100281348;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_1002813C0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_100066E0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_1002811B8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100281230;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006781C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100281028;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_1002810A0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006822C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280E98;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280F10;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_100068C3C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_1002809E8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280A60;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006964C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280858;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_1002808D0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006A05C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_1002806C8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280740;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006AA6C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280538;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_1002805B0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006B47C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_1002803A8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280420;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006BE8C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280218;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280290;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006C89C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_100280088;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_100280100;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006D2AC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_10027FEF8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_10027FF70;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006DCBC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_10027FD68;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_10027FDE0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006E6CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_10027FBD8;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_10027FC50;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

void sub_10006F0DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, void *a9, void *a10)
{
  v159 = a6;
  v164 = a5;
  v165 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v12 = sub_1002167E4();
  v155 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v153 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100216824();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154, v15);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100216384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v158 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v139 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v139 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v139 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v139 - v35;
  sub_100216374();
  v163 = v18;
  v37 = *(v18 + 16);
  v150 = v36;
  v146 = (v18 + 16);
  v145 = v37;
  (v37)(v29, v36, v17);
  v160 = v33;
  v147 = v29;
  sub_100216234();
  v162 = v25;
  v38 = sub_100216374();
  v149 = a8;
  v148 = a7;
  v39 = a7(v38);
  v40 = [v39 configuration];
  if (!v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  [v40 setIsCloudKitSupportOperation:1];

  v42 = [v39 configuration];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_100216964();
  [v43 setApplicationBundleIdentifierOverride:v44];

  v45 = swift_allocObject();
  v46 = v168;
  *v45->endpoint = v167;
  *v45->containerMap = v46;
  v174 = sub_10007BDF8;
  v175 = v45;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100061E54;
  v173 = &unk_10027FA48;
  v47 = _Block_copy(&aBlock);
  v48 = v175;

  v142 = v45;

  v48, v49, v50, v51, v52, v53, v54, v55;
  [v39 setRequestCompletedBlock:v47];
  _Block_release(v47);

  v56 = v159;
  if (v159)
  {
    v57 = 0;
    v58 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v58 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (v58 && v166)
    {
      v59 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v59 = v165 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v59 != 0;
    }
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v156) = v57;
  v143 = v39;
  v144 = v12;
  v60 = [*(*sub_100006484((v161 + 16) *(v161 + 40)) + 32)];
  if (!v60)
  {
    sub_100216974();
    v62 = v61;
    v60 = sub_100216964();
    v62, v63, v64, v65, v66, v67, v68, v69, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v167, v168);
  v71 = v70;
  sub_100078700();
  v73 = v72;
  if (v56)
  {
    v74 = sub_100216964();
  }

  else
  {
    v74 = 0;
  }

  v75 = v17;
  v141 = a10;
  v140 = a9;
  v76 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v166)
  {
    v77 = sub_100216964();
  }

  else
  {
    v77 = 0;
  }

  v78 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v79 = sub_100216964();
  v71, v80, v81, v82, v83, v84, v85, v86, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148;
  LOBYTE(v138) = v156;
  v156 = [v78 initWithKeychainCircleMetrics:0 altDSID:v60 flowID:v74 deviceSessionID:v77 eventName:v79 testsAreEnabled:v73 canSendMetrics:v138 category:v76];

  v87 = v147;
  v88 = v75;
  v157 = v75;
  v89 = v75;
  v90 = v145;
  (v145)(v147, v162, v89);
  v90(v158, v160, v88);
  v91 = v163;
  v92 = *(v163 + 80);
  v93 = (v92 + 32) & ~v92;
  v94 = (v19 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v92 + v95 + 8) & ~v92;
  v97 = (v19 + 7 + v96) & 0xFFFFFFFFFFFFFFF8;
  v146 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
  v139 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  *(v99 + 24) = 1;
  v100 = *(v91 + 32);
  v101 = v99 + v93;
  v102 = v157;
  v100(v101, v87, v157);
  v103 = (v99 + v94);
  v104 = v141;
  *v103 = v140;
  v103[1] = v104;
  *(v99 + v95) = 0x4014000000000000;
  v100(v99 + v96, v158, v102);
  v105 = (v99 + v97);
  v106 = v168;
  *v105 = v167;
  v105[1] = v106;
  v107 = v161;
  *&v146[v99] = v161;
  v108 = (v99 + v98);
  v109 = v166;
  *v108 = v165;
  v108[1] = v109;
  v110 = &v145[v99];
  v111 = v159;
  *v110 = v164;
  v110[1] = v111;
  v112 = &v139[v99];
  v113 = v149;
  *v112 = v148;
  *(v112 + 1) = v113;

  v114 = v156;

  v115 = v143;
  sub_1002163E4();
  v116 = swift_allocObject();
  *v116->endpoint = v115;
  *v116->containerMap = v107;
  v174 = sub_10007BCC0;
  v175 = v116;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100063B78;
  v173 = &unk_10027FAC0;
  v117 = _Block_copy(&aBlock);
  v118 = v115;

  v119 = v151;
  sub_100216804();
  v169 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v120 = v153;
  v121 = v144;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v117);

  v142, v122, v123, v124, v125, v126, v127, v128;
  (*(v155 + 8))(v120, v121);
  (*(v152 + 8))(v119, v154);
  v129 = *(v163 + 8);
  v130 = v157;
  v129(v162, v157);
  v129(v160, v130);
  v129(v150, v130);
  v175, v131, v132, v133, v134, v135, v136, v137;
}

uint64_t RetryingCKCodeService.retry<A, B>(functionName:deviceSessionID:flowID:operationCreator:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, __int128 a9, __int128 a10, void *a11, void *a12)
{
  v36 = a6;
  v32 = a7;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v30 = a10;
  v31 = a9;
  v15 = sub_100216384();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v30 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v30 - v26;
  sub_100216374();
  (*(v16 + 16))(v20, v27, v15);
  sub_100216234();
  sub_100216374();
  RetryingCKCodeService.invokeRetry<A, B>(deadline:minimumDelay:functionName:deviceSessionID:flowID:attemptNumber:startTime:operationCreator:completion:)(v24, a1, a2, v33, v34, v35, v36, 1, 5.0, v20, v32, a8, v31, *(&v31 + 1), v30, *(&v30 + 1), a11, a12);
  v28 = *(v16 + 8);
  v28(v20, v15);
  v28(v24, v15);
  return (v28)(v27, v15);
}

void RetryingCKCodeService.reset(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for ResetRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 52);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for ResetRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for ResetRequest);
  sub_100064FDC(0xD000000000000014, 0x8000000100238D10, v28, v29, v31, v30, sub_1000789C4, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100070124(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for ResetRequest);
  v10 = type metadata accessor for ResetRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v9, v6, &qword_100298518, &unk_100226B60);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298518, &unk_100226B60);
  return v11;
}

void RetryingCKCodeService.establish(_:completion:)(char *a1, void *a2, void *a3)
{
  v62 = a2;
  v61 = a3;
  v4 = type metadata accessor for EstablishRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 28);
  v59 = a1;
  v26 = *&a1[v25];
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v26 + v27, v15, &qword_100297FE0, &unk_10021E7F0);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v30 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v27, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v28(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v32 = *v21;
  v31 = v21[1];

  sub_100078968(v21);
  v33 = v60;
  sub_100079420(v59, v60, type metadata accessor for EstablishRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for EstablishRequest);
  sub_1000659EC(0xD000000000000018, 0x8000000100238D30, v30, v29, v32, v31, sub_1000789F0, v35, v62, v61);
  v31, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
}

uint64_t sub_1000706F4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for EstablishRequest);
  v10 = type metadata accessor for EstablishRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v9, v6, &qword_100298508, &qword_10021DF78);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298508, &qword_10021DF78);
  return v11;
}

void RetryingCKCodeService.joinWithVoucher(_:completion:)(char *a1, void *a2, void *a3)
{
  v62 = a2;
  v61 = a3;
  v4 = type metadata accessor for JoinWithVoucherRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 28);
  v59 = a1;
  v26 = *&a1[v25];
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v26 + v27, v15, &qword_100297FE0, &unk_10021E7F0);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v30 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v27, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v28(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v32 = *v21;
  v31 = v21[1];

  sub_100078968(v21);
  v33 = v60;
  sub_100079420(v59, v60, type metadata accessor for JoinWithVoucherRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for JoinWithVoucherRequest);
  sub_1000663FC(0xD00000000000001ELL, 0x8000000100238D50, v30, v29, v32, v31, sub_100078A98, v35, v62, v61);
  v31, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
}

uint64_t sub_100070CCC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for JoinWithVoucherRequest);
  v10 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984F8, &unk_100226B70);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984F8, &unk_100226B70);
  return v11;
}

void RetryingCKCodeService.updateTrust(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v5 = updated - 8;
  v57 = *(updated - 8);
  __chkstk_darwin(updated, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 56);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for UpdateTrustRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for UpdateTrustRequest);
  sub_100066E0C(0xD00000000000001ALL, 0x8000000100238D70, v28, v29, v31, v30, sub_100078AC4, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_10007128C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v9, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984E8, &qword_10021DF58);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984E8, &qword_10021DF58);
  return v11;
}

void RetryingCKCodeService.setRecoveryKey(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for SetRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 56);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for SetRecoveryKeyRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for SetRecoveryKeyRequest);
  sub_10006781C(0xD00000000000001DLL, 0x8000000100238D90, v28, v29, v31, v30, sub_100078AF0, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100071848(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for SetRecoveryKeyRequest);
  v10 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984D8, &unk_100226B80);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984D8, &unk_100226B80);
  return v11;
}

void RetryingCKCodeService.fetchChanges(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v5 = ChangesRequest - 8;
  v57 = *(ChangesRequest - 8);
  __chkstk_darwin(ChangesRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for FetchChangesRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for FetchChangesRequest);
  sub_10006822C(0xD00000000000001BLL, 0x8000000100238DB0, v28, v29, v31, v30, sub_100078B1C, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100071E08(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v9, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984C8, &qword_10021DF38);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984C8, &qword_10021DF38);
  return v11;
}

void RetryingCKCodeService.fetchViableBottles(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v5 = ViableBottlesRequest - 8;
  v57 = *(ViableBottlesRequest - 8);
  __chkstk_darwin(ViableBottlesRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for FetchViableBottlesRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for FetchViableBottlesRequest);
  sub_1000645CC(0xD000000000000021, 0x8000000100238DD0, v28, v29, v31, v30, sub_100078B48, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_1000723C4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v9, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984B8, &unk_100226B90);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984B8, &unk_100226B90);
  return v11;
}

void RetryingCKCodeService.fetchPolicyDocuments(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v5 = PolicyDocumentsRequest - 8;
  v57 = *(PolicyDocumentsRequest - 8);
  __chkstk_darwin(PolicyDocumentsRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for FetchPolicyDocumentsRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for FetchPolicyDocumentsRequest);
  sub_100063BBC(0xD000000000000023, 0x8000000100238E00, v28, v29, v31, v30, sub_100078B74, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_10007297C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v9, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v9, v6, &qword_1002984A8, &qword_10021DF18);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002984A8, &qword_10021DF18);
  return v11;
}

void RetryingCKCodeService.getRepairAction(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v5 = RepairActionRequest - 8;
  v57 = *(RepairActionRequest - 8);
  __chkstk_darwin(RepairActionRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 56);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for GetRepairActionRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for GetRepairActionRequest);
  sub_100068C3C(0xD00000000000001ELL, 0x8000000100238E30, v28, v29, v31, v30, sub_100078BA0, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100072F34(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v9, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v9, v6, &qword_100298498, &unk_100226BA0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298498, &unk_100226BA0);
  return v11;
}

void RetryingCKCodeService.getEscrowCheck(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for GetEscrowCheckRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 56);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for GetEscrowCheckRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for GetEscrowCheckRequest);
  sub_10006964C(0xD00000000000001DLL, 0x8000000100238E50, v28, v29, v31, v30, sub_100078BCC, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_1000734F4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for GetEscrowCheckRequest);
  v10 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v9, v6, &qword_100298488, &qword_10021DEF8);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298488, &qword_10021DEF8);
  return v11;
}

void RetryingCKCodeService.getSupportAppInfo(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v5 = SupportAppInfoRequest - 8;
  v57 = *(SupportAppInfoRequest - 8);
  __chkstk_darwin(SupportAppInfoRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for GetSupportAppInfoRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for GetSupportAppInfoRequest);
  sub_10006A05C(0xD000000000000020, 0x8000000100238E70, v28, v29, v31, v30, sub_100078BF8, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100073AB4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v9, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v9, v6, &qword_100298478, &unk_100226BB0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298478, &unk_100226BB0);
  return v11;
}

void RetryingCKCodeService.resetAccountCdpcontents(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 52);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for ResetAccountCDPContentsRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for ResetAccountCDPContentsRequest);
  sub_10006AA6C(0xD000000000000026, 0x8000000100238EA0, v28, v29, v31, v30, sub_100078E1C, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_10007406C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for ResetAccountCDPContentsRequest);
  v10 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v9, v6, &qword_100298468, &qword_10021DED8);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298468, &qword_10021DED8);
  return v11;
}

void RetryingCKCodeService.addCustodianRecoveryKey(_:completion:)(char *a1, void *a2, void *a3)
{
  v62 = a2;
  v61 = a3;
  v4 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 28);
  v59 = a1;
  v26 = *&a1[v25];
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v26 + v27, v15, &qword_100297FE0, &unk_10021E7F0);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v30 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v27, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v28(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v28(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v32 = *v21;
  v31 = v21[1];

  sub_100078968(v21);
  v33 = v60;
  sub_100079420(v59, v60, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_10006B47C(0xD000000000000026, 0x8000000100238ED0, v30, v29, v32, v31, sub_100078F38, v35, v62, v61);
  v31, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2];
}

uint64_t sub_100074644(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v10 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v9, v6, &qword_100298458, &unk_100226BC0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298458, &unk_100226BC0);
  return v11;
}

void RetryingCKCodeService.fetchRecoverableTlkshares(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v5 = RecoverableTLKSharesRequest - 8;
  v57 = *(RecoverableTLKSharesRequest - 8);
  __chkstk_darwin(RecoverableTLKSharesRequest, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for FetchRecoverableTLKSharesRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for FetchRecoverableTLKSharesRequest);
  sub_10006BE8C(0xD000000000000028, 0x8000000100238F00, v28, v29, v31, v30, sub_100079154, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100074BFC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v9, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v9, v6, &qword_100298448, &qword_10021DEB8);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298448, &qword_10021DEB8);
  return v11;
}

void RetryingCKCodeService.removeRecoveryKey(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 44);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for RemoveRecoveryKeyRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for RemoveRecoveryKeyRequest);
  sub_10006C89C(0xD000000000000020, 0x8000000100238F30, v28, v29, v31, v30, sub_100079180, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_1000751B4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for RemoveRecoveryKeyRequest);
  v10 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v9, v6, &qword_100298438, &unk_100226BD0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298438, &unk_100226BD0);
  return v11;
}

void RetryingCKCodeService.performAtoprvactions(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 28);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for PerformATOPRVActionsRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for PerformATOPRVActionsRequest);
  sub_10006D2AC(0xD000000000000023, 0x8000000100238F60, v28, v29, v31, v30, sub_1000791AC, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_10007576C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for PerformATOPRVActionsRequest);
  v10 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v9, v6, &qword_100298428, &qword_10021DE98);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298428, &qword_10021DE98);
  return v11;
}

void RetryingCKCodeService.fetchCurrentItem(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  v5 = Request - 8;
  v57 = *(Request - 8);
  __chkstk_darwin(Request, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for CurrentItemFetchRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for CurrentItemFetchRequest);
  sub_10006DCBC(0xD00000000000001FLL, 0x8000000100238F90, v28, v29, v31, v30, sub_1000791D8, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100075D24(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v9, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v9, v6, &qword_100298418, &unk_100226BE0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298418, &unk_100226BE0);
  return v11;
}

void RetryingCKCodeService.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  v5 = Request - 8;
  v57 = *(Request - 8);
  __chkstk_darwin(Request, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for DirectPCSIdentityFetchRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for DirectPCSIdentityFetchRequest);
  sub_10006E6CC(0xD00000000000002ALL, 0x8000000100238FB0, v28, v29, v31, v30, sub_1000793F4, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_1000762DC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v9, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v9, v6, &qword_100298408, &qword_10021DE78);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_100298408, &qword_10021DE78);
  return v11;
}

void RetryingCKCodeService.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v5 = v4 - 8;
  v57 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Metrics(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - v23);
  v25 = *(v5 + 32);
  v26 = a1;
  sub_100019C6C(a1 + v25, v15, &qword_100297FE0, &unk_10021E7F0);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v15, 1, v16) != 1)
    {
      sub_1000114D4(v15, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v15, v24, type metadata accessor for Metrics);
  }

  v28 = v24[2];
  v29 = v24[3];

  sub_100078968(v24);
  sub_100019C6C(v26 + v25, v12, &qword_100297FE0, &unk_10021E7F0);
  if (v27(v12, 1, v16) == 1)
  {
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v12, v21, type metadata accessor for Metrics);
  }

  v31 = *v21;
  v30 = v21[1];

  sub_100078968(v21);
  v32 = v26;
  v33 = v59;
  sub_100079420(v32, v59, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v34 = (v57[80] + 16) & ~v57[80];
  v35 = swift_allocObject();
  sub_100079670(v33, &v35->_TtCs12_SwiftObject_opaque[v34], type metadata accessor for RemoveUnreadableCKServerDataRequest);
  sub_10006F0DC(0xD000000000000033, 0x8000000100238FE0, v28, v29, v31, v30, sub_1000796D8, v35, v61, v60);
  v30, v36, v37, v38, v39, v40, v41, v42, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v29, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66;
}

uint64_t sub_100076894(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  sub_100079420(a1, &v13 - v8, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v10 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v9, v6, &qword_1002983F8, &qword_100226BF0);
  v11 = sub_100216404();
  sub_1000114D4(v9, &qword_1002983F8, &qword_100226BF0);
  return v11;
}

uint64_t RetryingCKCodeService.deinit(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100006128((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return v8;
}

uint64_t RetryingCKCodeService.__deallocating_deinit(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100006128((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_100076D54(void *a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  v4 = a1;
  v5 = [v4 options];
  v6 = sub_100216964();
  [v5 setApplicationBundleIdentifierOverride:v6];

  v7 = [*(v2 + 24) privateCloudDatabase];
  v8 = *(v2 + 24);
  v9 = sub_100216964();
  v10 = [v8 codeServiceWithName:v9 databaseScope:{objc_msgSend(v7, "databaseScope")}];

  *(v2 + 16) = v10;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_100076EA8(void *a1)
{
  v3 = [*(v1 + 24) options];
  v4 = [v3 accountOverrideInfo];

  if (v4 && (v5 = [v4 accountID], v4, v5))
  {
    v6 = sub_100216974();
    v8 = v7;

    v9 = [a1 appleAccountID];
    v10 = sub_100216974();
    v12 = v11;

    if (v10 == v6 && v12 == v8)
    {
      v8, v13, v14, v15, v16, v17, v18, v19, v95, v100, v101, v102, v103, v104, v105, v106, v107, v108;
      v36 = v12;
      goto LABEL_16;
    }

    v21 = sub_1002171A4();
    v12, v22, v23, v24, v25, v26, v27, v28, v95, v100, v101, v102, v103, v104, v105, v106, v107, v108;
    if (v21)
    {
      v36 = v8;
LABEL_16:
      v36, v29, v30, v31, v32, v33, v34, v35, v96, v100, v101, v102, v103, v104, v105, v106, v107, v108;
      return 1;
    }

    if (qword_100297250 != -1)
    {
      swift_once();
    }

    v45 = sub_100216774();
    sub_100002648(v45, qword_100297FB0);
    v46 = a1;

    v40 = sub_100216754();
    v47 = sub_100216C54();

    v8, v48, v49, v50, v51, v52, v53, v54, v96, v100, v101, v102, v103, v104, v105, v106, v107, v108;
    if (!os_log_type_enabled(v40, v47))
    {
      v8, v55, v56, v57, v58, v59, v60, v61, v97, v100, v101, v102, v103, v104, v105, v106, v107, v108;
      goto LABEL_22;
    }

    v62 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v62 = 136446722;
    v63 = sub_100005FB0(v6, v8, &v100);
    v8, v64, v65, v66, v67, v68, v69, v70, v97, v100, v101, v102, v103, v104, v105, v106, v107, v108;
    *(v62 + 4) = v63;
    *(v62 + 12) = 2082;
    v71 = [v46 appleAccountID];
    v72 = sub_100216974();
    v74 = v73;

    v75 = sub_100005FB0(v72, v74, &v100);
    v74, v76, v77, v78, v79, v80, v81, v82, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108;
    *(v62 + 14) = v75;
    *(v62 + 22) = 2082;
    v83 = [v46 altDSID];
    v84 = sub_100216974();
    v86 = v85;

    v87 = sub_100005FB0(v84, v86, &v100);
    v86, v88, v89, v90, v91, v92, v93, v94, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108;
    *(v62 + 24) = v87;
    _os_log_impl(&_mh_execute_header, v40, v47, "Mismatch between configured CKContainer (accountID %{public}s and requested user (appleAccountID:%{public}s, altDSID:%{public}s", v62, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    if ([a1 isPrimaryAccount])
    {
      return 1;
    }

    if (qword_100297250 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_100297FB0);
    v39 = a1;
    v40 = sub_100216754();
    v41 = sub_100216C54();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_22;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "Mismatch between primary CKContainer and requested user %{public}@", v42, 0xCu);
    sub_1000114D4(v43, &qword_10029D580, &unk_10021CCC0);
  }

LABEL_22:

  return 0;
}

uint64_t sub_1000772E4()
{

  return swift_deallocClassInstance();
}

void sub_10007733C(uint64_t *a1@<X0>, id a2@<X1>, _TtC18TrustedPeersHelper6Client *a3@<X2>, id a4@<X3>, _TtC18TrustedPeersHelper6Client *a5@<X4>, _TtC18TrustedPeersHelper6Client *a6@<X5>, void *a7@<X8>)
{
  v143 = a6;
  v140 = a7;
  v13 = sub_100216194();
  v14 = *(v13 - 1);
  __chkstk_darwin(v13, v15);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v141 = a1;
  v142 = a2;
  v18 = a1[11];
  v19 = *v18->endpoint;
  v144 = a3;
  if (v19)
  {

    v137 = a4;
    v20 = sub_1000158D4(a2, a3, a4, a5);
    if (v21)
    {
      v138 = v14;
      v139 = v13;
      v28 = *(*v18[1].containerMap + 8 * v20);
      v18, v29, v30, v31, v32, v33, v34, v35, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142;
      v36 = *&v28[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v37 = *&v28[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v28[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v36);
      v38 = v143;
      if ((*(*(v37 + 8) + 8))(v143, v36))
      {
        v39 = v141[9];
        v40 = [(Client *)v38 personaUniqueString];
        [v39 prepareThreadForKeychainAPIUseForPersonaIdentifier:v40];

        *v140 = v28;
        return;
      }

      if (qword_100297250 != -1)
      {
        swift_once();
      }

      v41 = sub_100216774();
      sub_100002648(v41, qword_100297FB0);
      v42 = v38;
      v43 = sub_100216754();
      v44 = sub_100216C54();

      v136 = v43;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138543362;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        v48 = v136;
        _os_log_impl(&_mh_execute_header, v136, v44, "Mismatch between existing container and account, remaking container for %{public}@", v45, 0xCu);
        sub_1000114D4(v46, &qword_10029D580, &unk_10021CCC0);
      }

      else
      {
      }

      v14 = v138;
      v13 = v139;
    }

    else
    {
      v18, v21, v22, v23, v24, v25, v26, v27, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142;
    }

    a4 = v137;
    a3 = v144;
    a2 = v142;
  }

  type metadata accessor for ContainerMap();
  v49 = v17;
  sub_1000779C8(a2, a3, a4, a5, v17);
  if (!v7)
  {
    v50 = a2;
    v138 = v14;
    v139 = v13;
    v51 = objc_allocWithZone(NSPersistentStoreDescription);
    v137 = v49;
    sub_100216174(v52);
    v54 = v53;
    v135 = [v51 initWithURL:v53];

    v55 = v143;
    v56 = [(Client *)v143 makeCKContainer];
    v136 = 0;
    v57 = v56;
    v58 = type metadata accessor for CuttlefishCKCodeOperationRunner();
    v59 = swift_allocObject();
    v134 = v55;
    sub_100076D54(v57, v134);
    v146 = v58;
    v147 = &off_10027FA00;
    v145[0] = v59;
    v60 = type metadata accessor for RetryingCKCodeService();
    v61 = swift_allocObject();
    v62 = sub_1000023C4(v145, v58);
    v63 = v50;
    __chkstk_darwin(v62, v62);
    v65 = (&v133 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = *v65;
    v143 = v59;

    v68 = sub_100077D60(v67, v61);
    sub_100006128(v145, v69, v70, v71, v72, v73, v74, v75);
    v76 = a4;
    v77 = v141;
    v78 = v141[8];
    v79 = v141[10];
    v146 = v60;
    v147 = &off_10027F928;
    v145[0] = v68;
    v80 = objc_allocWithZone(type metadata accessor for Container());
    v81 = v144;

    v82 = v135;
    swift_unknownObjectRetain();

    v135 = v82;
    v83 = v82;
    v84 = v136;
    sub_100113964(v63, v81, v76, a5, v83, v78, v79, v145);
    if (v84)
    {
      (*(v138 + 8))(v137, v139);
      v143, v86, v87, v88, v89, v90, v91, v92;

      v68, v93, v94, v95, v96, v97, v98, v99;
    }

    else
    {
      v100 = v85;
      swift_beginAccess();

      v101 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v77[11];
      v77[11] = 0x8000000000000000;
      sub_100185C1C(v101, v142, v81, v76, a5, isUniquelyReferenced_nonNull_native);
      a5, v103, v104, v105, v106, v107, v108, v109, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142;
      v81, v110, v111, v112, v113, v114, v115, v116, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142;
      v77[11] = v148;
      swift_endAccess();
      v117 = v77[9];
      v118 = [(Client *)v134 personaUniqueString];
      [v117 prepareThreadForKeychainAPIUseForPersonaIdentifier:v118];
      v143, v119, v120, v121, v122, v123, v124, v125;

      v68, v126, v127, v128, v129, v130, v131, v132;
      (*(v138 + 8))(v137, v139);
      *v140 = v101;
    }
  }
}

uint64_t sub_1000779C8@<X0>(void *a1@<X0>, _TtC18TrustedPeersHelper6Client *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10001148C(&unk_1002983C0, &unk_10021DE50);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v52 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v52 - v20;
  v52 = a1;
  v53 = a2;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_100216A14(v62);
  v22 = v53;

  v63._countAndFlagsBits = a3;
  v63._object = a4;
  sub_100216A14(v63);
  v22, v23, v24, v25, v26, v27, v28, v29, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
  v30 = v53;

  v64._object = 0x80000001002391D0;
  v64._countAndFlagsBits = 0xD000000000000016;
  sub_100216A14(v64);
  v30, v31, v32, v33, v34, v35, v36, v37, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
  v38 = v53;
  v39 = sub_100216964();
  v38, v40, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61;
  v47 = SecCopyURLForFileInUserScopedKeychainDirectory(v39);

  if (v47)
  {
    sub_100216184();

    v48 = sub_100216194();
    (*(*(v48 - 8) + 56))(v18, 0, 1, v48);
  }

  else
  {
    v48 = sub_100216194();
    (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
  }

  sub_100079804(v18, v21);
  sub_100019C6C(v21, v14, &unk_1002983C0, &unk_10021DE50);
  sub_100216194();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v14, 1, v48) == 1)
  {
    sub_1000114D4(v14, &unk_1002983C0, &unk_10021DE50);
    sub_1000561D0();
    swift_allocError();
    *v50 = xmmword_10021DC70;
    *(v50 + 16) = 13;
    swift_willThrow();
    return sub_1000114D4(v21, &unk_1002983C0, &unk_10021DE50);
  }

  else
  {
    sub_1000114D4(v21, &unk_1002983C0, &unk_10021DE50);
    return (*(v49 + 32))(a5, v14, v48);
  }
}

uint64_t sub_100077D60(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2)
{
  v22 = a2;
  v23 = sub_100216CC4();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100216CA4();
  __chkstk_darwin(v8, v9);
  v10 = sub_100216824();
  __chkstk_darwin(v10 - 8, v11);
  v25[3] = type metadata accessor for CuttlefishCKCodeOperationRunner();
  v25[4] = &off_10027FA00;
  v25[0] = a1;
  sub_10007974C(v25, a2 + 16);
  v21[1] = sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216814();
  v24 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_1000797B0(&qword_10029D680, &unk_1002977F0, &unk_100226580);
  sub_100216E34();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v12 = sub_100216CF4();
  sub_100006128(v25, v13, v14, v15, v16, v17, v18, v19);
  result = v22;
  *(v22 + 56) = v12;
  return result;
}

unint64_t _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(uint64_t a1, void *a2)
{
  sub_10006120C(40, 0xE100000000000000, a1, a2);
  if (v4)
  {
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    sub_100216A14(v27);
    return 0xD000000000000013;
  }

  else
  {
    v6 = sub_100216AC4();
    v8 = v7;
    v18 = v6;
    v19 = v9;
    v20 = v10;
    v21 = v7;
    sub_10007B8AC();
    sub_100216A04();
    v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, 0xD000000000000013, 0x239360, v23, v24, v25, v26;
    return v22;
  }
}

uint64_t _s18TrustedPeersHelper21RetryingCKCodeServiceC14retryableError5errorSbs0H0_pSg_tFZ_0(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_37;
  }

  swift_errorRetain();
  swift_errorRetain();
  sub_10001148C(&unk_10029D560, qword_10021D450);
  sub_10000200C(0, &qword_100297CE8, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_10;
  }

  v2 = v93;
  v3 = [v93 domain];
  v4 = sub_100216974();
  v6 = v5;

  v7 = sub_100216974();
  v15 = v8;
  if (v4 == v7 && v6 == v8)
  {
    v6, v8, v9, v10, v11, v12, v13, v14, v83, v88, v93, a1, v103, v108, v113, v118, v123, v128;
    v15, v32, v33, v34, v35, v36, v37, v38, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130;
  }

  else
  {
    v17 = sub_1002171A4();
    v6, v18, v19, v20, v21, v22, v23, v24, v83, v88, v93, a1, v103, v108, v113, v118, v123, v128;
    v15, v25, v26, v27, v28, v29, v30, v31, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129;
    if ((v17 & 1) == 0)
    {

LABEL_10:

      goto LABEL_13;
    }
  }

  v39 = [v2 code];

  if (v39 == -1001)
  {
    return 1;
  }

LABEL_13:
  swift_errorRetain();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v40 = v93;
    v41 = [v93 domain];
    v42 = sub_100216974();
    v44 = v43;

    v46 = sub_100216974();
    v52 = v45;
    if (v42 == v46 && v44 == v45)
    {
      v44, v45, v46, v47, v48, v49, v50, v51, v83, v88, v93, v1, v103, v108, v113, v118, v123, v128;
      v52, v53, v54, v55, v56, v57, v58, v59, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131;
      goto LABEL_20;
    }

    v60 = sub_1002171A4();
    v44, v61, v62, v63, v64, v65, v66, v67, v83, v88, v93, v1, v103, v108, v113, v118, v123, v128;
    v52, v68, v69, v70, v71, v72, v73, v74, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132;
    if (v60)
    {
LABEL_20:
      v75 = [v40 code];

      if (v75 == -1009)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_21:
  swift_errorRetain();
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);
    sub_100216104();

    if (v83 == 4)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);
    sub_100216104();

    if (v83 == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);
    sub_100216104();

    if (v83 == 7)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError, &unk_10021D258);
    sub_100216104();

    if (v83 == 23)
    {
      return 1;
    }
  }

  else
  {
  }

LABEL_37:
  if (sub_100060DD4(3, 0xFFFFFFFFFFFFFC13, v1) || (sub_100060B2C(0xF, 0x7D0, 0, v1) & 1) != 0)
  {
    return 1;
  }

  v77 = sub_100060B2C(0xF, 0x1770, 1, v1);
  result = 1;
  if ((v77 & 1) == 0)
  {
    if (!v1)
    {
LABEL_46:
      v82 = CKCanRetryForError();

      return v82;
    }

    swift_errorRetain();
    v78 = sub_100216144();
    v79 = [v78 isCuttlefishError:1021];

    if ((v79 & 1) == 0)
    {
      swift_errorRetain();
      v80 = sub_100216144();
      v81 = [v80 isCuttlefishError:1019];

      if ((v81 & 1) == 0)
      {
        v1 = sub_100216144();
        goto LABEL_46;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000786E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100078700()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10029FEE0;
  v7 = off_10029FEE0;
  if (!off_10029FEE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10007B948;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_10007B948(v3);
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

void sub_100078818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078830(uint64_t a1)
{
  v16 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(sub_100216384() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 64) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v6 + v10 + 8) & ~v6;
  v12 = (v8 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100063060(a1, *(v1 + 48), *(v1 + 56), v1 + v7, *(v1 + v9), *(v1 + v9 + 8), (v1 + v11), *(v1 + v12), *(v1 + v10), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v14), *(v1 + v14 + 8), *(v1 + v15), *(v1 + v15 + 8), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v16, *(&v16 + 1), v3, v4);
}

uint64_t sub_100078968(uint64_t a1)
{
  v2 = type metadata accessor for Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100078A1C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100078C24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  *(v1 + v4 + 24), v5, v6, v7, v8, v9, v10, v11, v41, *(*(v2 - 1) + 64), v48, v52, v56, v60, v64, v68, v72, v76;
  *(v1 + v4 + 40), v12, v13, v14, v15, v16, v17, v18, v42, v45, v49, v53, v57, v61, v65, v69, v73, v77;
  v19 = v2[9];
  v20 = sub_1002164D4();
  v21 = *(*(v20 - 8) + 8);
  v21(v1 + v4 + v19, v20);
  v22 = v1 + v4 + v2[10];
  v23 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v21(v22 + *(v23 + 20), v20);
  }

  v24 = v1 + v4 + v2[11];
  v25 = type metadata accessor for Metrics(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    *(v24 + 8), v26, v27, v28, v29, v30, v31, v32, v43, v46, v50, v54, v58, v62, v66, v70, v74, v78;
    *(v24 + 24), v33, v34, v35, v36, v37, v38, v39, v44, v47, v51, v55, v59, v63, v67, v71, v75, v79;
    v21(v24 + *(v25 + 24), v20);
  }

  return _swift_deallocObject(v1, &v46[v4], v3 | 7);
}

uint64_t sub_100078E48(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_1002164D4();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  *(v1 + v4 + v2[7]), v7, v8, v9, v10, v11, v12, v13;

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_100078F64(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  *(v1 + v4 + 8), v5, v6, v7, v8, v9, v10, v11, v34, *(*(v2 - 1) + 64), v39, v42, v45, v48, v51, v54, v57, v60;
  v12 = v2[5];
  v13 = sub_1002164D4();
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v4 + v12, v13);
  v15 = v1 + v4 + v2[6];
  v16 = type metadata accessor for Metrics(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    *(v15 + 8), v17, v18, v19, v20, v21, v22, v23, v35, v37, v40, v43, v46, v49, v52, v55, v58, v61;
    *(v15 + 24), v24, v25, v26, v27, v28, v29, v30, v36, v38, v41, v44, v47, v50, v53, v56, v59, v62;
    v14(v15 + *(v16 + 24), v13);
  }

  v31 = v1 + v4 + v2[7];
  v32 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v14(v31 + *(v32 + 20), v13);
  }

  return _swift_deallocObject(v1, &v37[v4], v3 | 7);
}

uint64_t sub_100079204(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  *(v1 + v4), v5, v6, v7, v8, v9, v10, v11, v34, *(*(v2 - 1) + 64), v39, v42, v45, v48, v51, v54, v57, v60;
  v12 = v2[5];
  v13 = sub_1002164D4();
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v4 + v12, v13);
  v15 = v1 + v4 + v2[6];
  v16 = type metadata accessor for Metrics(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    *(v15 + 8), v17, v18, v19, v20, v21, v22, v23, v35, v37, v40, v43, v46, v49, v52, v55, v58, v61;
    *(v15 + 24), v24, v25, v26, v27, v28, v29, v30, v36, v38, v41, v44, v47, v50, v53, v56, v59, v62;
    v14(v15 + *(v16 + 24), v13);
  }

  v31 = v1 + v4 + v2[7];
  v32 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v14(v31 + *(v32 + 20), v13);
  }

  return _swift_deallocObject(v1, &v37[v4], v3 | 7);
}

uint64_t sub_100079420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079488(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v29 = *(*(v2 - 1) + 64);
  v5 = v2[5];
  v6 = sub_1002164D4();
  v7 = *(*(v6 - 8) + 8);
  v7(v1 + v4 + v5, v6);
  v8 = v1 + v4 + v2[6];
  v9 = type metadata accessor for Metrics(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    *(v8 + 8), v10, v11, v12, v13, v14, v15, v16, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45;
    *(v8 + 24), v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46;
    v7(v8 + *(v9 + 24), v6);
  }

  v24 = v1 + v4 + v2[7];
  v25 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v7(v24 + *(v25 + 20), v6);
  }

  return _swift_deallocObject(v1, &v29[v4], v3 | 7);
}

uint64_t sub_100079670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007974C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000797B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100079804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&unk_1002983C0, &unk_10021DE50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100079874(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002983D0, &unk_100226710, &unk_10027FAF8, sub_10007BDF8, &unk_10027FB10, &unk_10027FB48, sub_10007BC74, &unk_10027FB70, sub_10007BCC0, &unk_10027FB88);
}

void sub_100079A0C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298400, &qword_10021DE70, &unk_10027FC88, sub_10007BDF8, &unk_10027FCA0, &unk_10027FCD8, sub_10007BC78, &unk_10027FD00, sub_10007BCC0, &unk_10027FD18);
}

void sub_100079BA4(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298410, &unk_10021DE80, &unk_10027FE18, sub_10007BDF8, &unk_10027FE30, &unk_10027FE68, sub_10007BC7C, &unk_10027FE90, sub_10007BCC0, &unk_10027FEA8);
}

void sub_100079D3C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298420, &qword_10021DE90, &unk_10027FFA8, sub_10007BDF8, &unk_10027FFC0, &unk_10027FFF8, sub_10007BC80, &unk_100280020, sub_10007BCC0, &unk_100280038);
}

void sub_100079ED4(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298430, &unk_10021DEA0, &unk_100280138, sub_10007BDF8, &unk_100280150, &unk_100280188, sub_10007BC84, &unk_1002801B0, sub_10007BCC0, &unk_1002801C8);
}

void sub_10007A06C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298440, &qword_10021DEB0, &unk_1002802C8, sub_10007BDF8, &unk_1002802E0, &unk_100280318, sub_10007BC88, &unk_100280340, sub_10007BCC0, &unk_100280358);
}

void sub_10007A204(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298450, &unk_10021DEC0, &unk_100280458, sub_10007BDF8, &unk_100280470, &unk_1002804A8, sub_10007BC8C, &unk_1002804D0, sub_10007BCC0, &unk_1002804E8);
}

void sub_10007A39C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298460, &qword_10021DED0, &unk_1002805E8, sub_10007BDF8, &unk_100280600, &unk_100280638, sub_10007BC90, &unk_100280660, sub_10007BCC0, &unk_100280678);
}

void sub_10007A534(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298470, &unk_10021DEE0, &unk_100280778, sub_10007BDF8, &unk_100280790, &unk_1002807C8, sub_10007BC94, &unk_1002807F0, sub_10007BCC0, &unk_100280808);
}

void sub_10007A6CC(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298480, &qword_10021DEF0, &unk_100280908, sub_10007BDF8, &unk_100280920, &unk_100280958, sub_10007BC98, &unk_100280980, sub_10007BCC0, &unk_100280998);
}

void sub_10007A864(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298490, &unk_10021DF00, &unk_100280A98, sub_10007BDF8, &unk_100280AB0, &unk_100280AE8, sub_10007BC9C, &unk_100280B10, sub_10007BCC0, &unk_100280B28);
}

void sub_10007A9FC(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984A0, &qword_10021DF10, &unk_100280C28, sub_10007BDF8, &unk_100280C40, &unk_100280C78, sub_10007BCA0, &unk_100280CA0, sub_10007BCC0, &unk_100280CB8);
}

void sub_10007AB94(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984B0, &unk_10021DF20, &unk_100280DB8, sub_10007BDF8, &unk_100280DD0, &unk_100280E08, sub_10007BCA4, &unk_100280E30, sub_10007BCC0, &unk_100280E48);
}

void sub_10007AD2C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984C0, &qword_10021DF30, &unk_100280F48, sub_10007BDF8, &unk_100280F60, &unk_100280F98, sub_10007BCA8, &unk_100280FC0, sub_10007BCC0, &unk_100280FD8);
}

void sub_10007AEC4(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984D0, &unk_10021DF40, &unk_1002810D8, sub_10007BDF8, &unk_1002810F0, &unk_100281128, sub_10007BCAC, &unk_100281150, sub_10007BCC0, &unk_100281168);
}

void sub_10007B05C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984E0, &qword_10021DF50, &unk_100281268, sub_10007BDF8, &unk_100281280, &unk_1002812B8, sub_10007BCB0, &unk_1002812E0, sub_10007BCC0, &unk_1002812F8);
}

void sub_10007B1F4(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984F0, &unk_10021DF60, &unk_1002813F8, sub_10007BDF8, &unk_100281410, &unk_100281448, sub_10007BCB4, &unk_100281470, sub_10007BCC0, &unk_100281488);
}

void sub_10007B38C(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298500, &qword_10021DF70, &unk_100281588, sub_10007BDF8, &unk_1002815A0, &unk_1002815D8, sub_10007BCB8, &unk_100281600, sub_10007BCC0, &unk_100281618);
}

void sub_10007B524(unint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298510, &unk_10021DF80, &unk_100281718, sub_10007BDF8, &unk_100281730, &unk_100281768, sub_10007BCBC, &unk_100281790, sub_10007BCC0, &unk_1002817A8);
}

uint64_t sub_10007B6D8()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  *(v0 + v6 + 8), v11, v12, v13, v14, v15, v16, v17;
  v10(v0 + v7, v1);
  *(v0 + v8 + 8), v18, v19, v20, v21, v22, v23, v24, v54, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), v64, v67, v70, v73, v76, v79;
  *(v0 + v9), v25, v26, v27, v28, v29, v30, v31;
  *&v57[v0 + 8], v32, v33, v34, v35, v36, v37, v38, v55, v57, v59, v61, v65, v68, v71, v74, v77, v80;
  *&v60[v0 + 8], v39, v40, v41, v42, v43, v44, v45, v56, v58, v60, v62, v66, v69, v72, v75, v78, v81;
  *(v0 + v63 + 8), v46, v47, v48, v49, v50, v51, v52;

  return _swift_deallocObject(v0, v63 + 16, v3 | 7);
}

uint64_t sub_10007B86C()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10007B8AC()
{
  result = qword_100298520;
  if (!qword_100298520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298520);
  }

  return result;
}

uint64_t sub_10007B900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10007B948(void *a1)
{
  v5[0] = 0;
  if (!qword_10029FEE8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10007BACC;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_1002817D0;
    v7 = 0;
    qword_10029FEE8 = _sl_dlopen();
  }

  v2 = qword_10029FEE8;
  if (!qword_10029FEE8)
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
  off_10029FEE0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10007BACC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10029FEE8 = result;
  return result;
}

uint64_t ViewKeys.newTlk.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B551C(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for ViewKey);
  v11 = type metadata accessor for ViewKey(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t ViewKeys.newClassA.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B551C(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for ViewKey);
  v11 = type metadata accessor for ViewKey(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t ViewKeys.newClassC.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B551C(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for ViewKey);
  v11 = type metadata accessor for ViewKey(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t FetchRecoverableTLKSharesResponse.View.keys.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  sub_100019C6C(v1 + *(RecoverableTLKShares + 28), v6, &qword_100297E40, &unk_10021E7D0);
  v8 = type metadata accessor for ViewKeysRecords(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for ViewKeysRecords);
  }

  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v10 = v8[5];
  v11 = sub_100216424();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + v8[6], 1, 1, v11);
  v12(a1 + v8[7], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297E40, &unk_10021E7D0);
  }

  return result;
}

uint64_t ViewKeysRecords.classA.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &qword_10029D9C0, &qword_100226740);
  v8 = sub_100216424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100216414();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t ViewKeysRecords.classC.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(v1 + *(v7 + 28), v6, &qword_10029D9C0, &qword_100226740);
  v8 = sub_100216424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100216414();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t CurrentCKKSItem.itemSpecifier.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CurrentCKKSItem(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &qword_100298588, &unk_10021E7E0);
  v8 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100298588, &unk_10021E7E0);
  }

  return result;
}

uint64_t sub_10007CC24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 20), v8, &qword_10029D9C0, &qword_100226740);
  v10 = sub_100216424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_100216414();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t DirectPCSIdentity.pcsService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for DirectPCSIdentity(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &qword_100297E18, &qword_10021DA28);
  v8 = type metadata accessor for PCSService(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for PCSService);
  }

  *a1 = 0;
  *(a1 + 8) = xmmword_10021D470;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297E18, &qword_10021DA28);
  }

  return result;
}

uint64_t FetchChangesRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(v1 + *(ChangesRequest + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t FetchViableBottlesRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(v1 + *(ViableBottlesRequest + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t FetchPolicyDocumentsRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(v1 + *(PolicyDocumentsRequest + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t sub_10007D3FC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 48), v8, &qword_100297FE0, &unk_10021E7F0);
  v10 = type metadata accessor for Metrics(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for Metrics);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t GetSupportAppInfoRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  sub_100019C6C(v1 + *(SupportAppInfoRequest + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t sub_10007D6E4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 44), v8, &qword_100297FE0, &unk_10021E7F0);
  v10 = type metadata accessor for Metrics(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for Metrics);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t sub_10007D870@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_100019C6C(v11 + v12, v10, &qword_100297FE0, &unk_10021E7F0);
  v13 = type metadata accessor for Metrics(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_1000F89AC(v10, a3, type metadata accessor for Metrics);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1000114D4(v10, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t FetchRecoverableTLKSharesRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  sub_100019C6C(v1 + *(RecoverableTLKSharesRequest + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t RemoveRecoveryKeyRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(v1 + *(v7 + 36), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t PerformATOPRVActionsRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(v1 + *(v7 + 20), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t CurrentItemFetchRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  sub_100019C6C(v1 + *(Request + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t DirectPCSIdentityFetchRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  sub_100019C6C(v1 + *(Request + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t RemoveUnreadableCKServerDataRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t sub_10007E288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F70();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9FC4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t AccountFlags.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_100225DC0[result];
  }

  return result;
}

uint64_t sub_10007E3EC()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_100225DC0[result];
  }

  return result;
}

void sub_10007E434(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_100225DC0[v2];
  }

  *a1 = v2;
}

uint64_t sub_10007E458(uint64_t a1, uint64_t a2)
{
  v4 = sub_100105F40();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_10007E4A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100225DC0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_100225DC0[v3];
  }

  return v2 == v3;
}

uint64_t sub_10007E504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA038();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100105EEC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA08C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA0E0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E77C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_10007E7C4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_10007E800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA134();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007E874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA188();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL RecordStatus.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10007E910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA1FC();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10007E998(uint64_t a1, uint64_t a2)
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_10007EA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA250();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10007EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_10007EBA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10007EC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10007ED1C@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_10021D470;
  a2[1] = xmmword_10021D470;
  a1(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t SignedVoucher.voucher.getter()
{
  v1 = *v0;
  sub_100012558(*v0, *(v0 + 8));
  return v1;
}

void SignedVoucher.voucher.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*v8, *(v8 + 8), a3, a4, a5, a6, a7, a8);
  *v8 = a1;
  *(v8 + 8) = a2;
}

uint64_t SignedVoucher.sig.getter()
{
  v1 = *(v0 + 16);
  sub_100012558(v1, *(v0 + 24));
  return v1;
}

void SignedVoucher.sig.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t IdmsTrustedDevicesVersion.idmsTrustedDevicesVersionString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdmsTrustedDevicesVersion.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &qword_10029D780, &qword_1002265D0);
  v8 = sub_1002164A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100216494();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

void (*IdmsTrustedDevicesVersion.timestamp.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for IdmsTrustedDevicesVersion(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_10007F490;
}

uint64_t IdmsTrustedDevicesVersion.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1002164A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Peer.permanentInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Peer(0);
  sub_100019C6C(v1 + *(v7 + 28), v6, &qword_10029DA00, &unk_10021E800);
  v8 = type metadata accessor for SignedPeerPermanentInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerPermanentInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029DA00, &unk_10021E800);
  }

  return result;
}

uint64_t Peer.permanentInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) + 28);
  sub_1000114D4(v1 + v3, &qword_10029DA00, &unk_10021E800);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerPermanentInfo);
  v4 = type metadata accessor for SignedPeerPermanentInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Peer.permanentInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029DA00, &unk_10021E800) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SignedPeerPermanentInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Peer(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029DA00, &unk_10021E800);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029DA00, &unk_10021E800);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerPermanentInfo);
  }

  return sub_10007FA5C;
}

void sub_10007FA5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for SignedPeerPermanentInfo);
    sub_1000114D4(v9 + v3, &qword_10029DA00, &unk_10021E800);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for SignedPeerPermanentInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for SignedPeerPermanentInfo);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_10029DA00, &unk_10021E800);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for SignedPeerPermanentInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Peer.stableInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Peer(0);
  sub_100019C6C(v1 + *(v7 + 32), v6, &qword_1002985A8, &unk_100226650);
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerStableInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985A8, &unk_100226650);
  }

  return result;
}

uint64_t Peer.stableInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) + 32);
  sub_1000114D4(v1 + v3, &qword_1002985A8, &unk_100226650);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerStableInfo);
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Peer.stableInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_1002985A8, &unk_100226650) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Peer(0) + 32);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_1002985A8, &unk_100226650);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerStableInfo);
  }

  return sub_10010618C;
}

uint64_t Peer.dynamicInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Peer(0);
  sub_100019C6C(v1 + *(v7 + 36), v6, &unk_10029D760, &qword_10021E810);
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerDynamicInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D760, &qword_10021E810);
  }

  return result;
}

uint64_t Peer.dynamicInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) + 36);
  sub_1000114D4(v1 + v3, &unk_10029D760, &qword_10021E810);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerDynamicInfo);
  v4 = type metadata accessor for SignedPeerDynamicInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Peer.dynamicInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D760, &qword_10021E810) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Peer(0) + 36);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D760, &qword_10021E810);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerDynamicInfo);
  }

  return sub_100106190;
}

uint64_t Peer.recoveryVoucher.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Peer(0);
  sub_100019C6C(v1 + *(v7 + 40), v6, &qword_1002985B0, &qword_10021E818);
  v8 = type metadata accessor for SignedRecoveryVoucher(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedRecoveryVoucher);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985B0, &qword_10021E818);
  }

  return result;
}

uint64_t Peer.recoveryVoucher.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) + 40);
  sub_1000114D4(v1 + v3, &qword_1002985B0, &qword_10021E818);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedRecoveryVoucher);
  v4 = type metadata accessor for SignedRecoveryVoucher(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Peer.recoveryVoucher.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_1002985B0, &qword_10021E818) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SignedRecoveryVoucher(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Peer(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_1002985B0, &qword_10021E818);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985B0, &qword_10021E818);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedRecoveryVoucher);
  }

  return sub_1000809D4;
}

void sub_1000809D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for SignedRecoveryVoucher);
    sub_1000114D4(v9 + v3, &qword_1002985B0, &qword_10021E818);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for SignedRecoveryVoucher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for SignedRecoveryVoucher);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_1002985B0, &qword_10021E818);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for SignedRecoveryVoucher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Peer.custodianRecoveryKeyAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Peer(0);
  sub_100019C6C(v1 + *(v7 + 44), v6, &unk_10029D7B0, &unk_10021E820);
  v8 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedCustodianRecoveryKey);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D7B0, &unk_10021E820);
  }

  return result;
}

uint64_t Peer.custodianRecoveryKeyAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) + 44);
  sub_1000114D4(v1 + v3, &unk_10029D7B0, &unk_10021E820);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedCustodianRecoveryKey);
  v4 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Peer.custodianRecoveryKeyAndSig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D7B0, &unk_10021E820) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Peer(0) + 44);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D7B0, &unk_10021E820);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D7B0, &unk_10021E820);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedCustodianRecoveryKey);
  }

  return sub_100080FEC;
}

void sub_100080FEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for SignedCustodianRecoveryKey);
    sub_1000114D4(v9 + v3, &unk_10029D7B0, &unk_10021E820);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for SignedCustodianRecoveryKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for SignedCustodianRecoveryKey);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D7B0, &unk_10021E820);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for SignedCustodianRecoveryKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Peer.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for Peer(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = v2[7];
  v4 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[10];
  v10 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[11];
  v12 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(&a1[v11], 1, 1, v12);
}

uint64_t PeerDifference.add.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v21 - v6;
  sub_100019C6C(v2, &v21 - v6, &qword_100297E00, &qword_10021DA18);
  v8 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000114D4(v7, &qword_100297E00, &qword_10021DA18);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000F89AC(v7, a1, type metadata accessor for Peer);
    }

    sub_1000F9228(v7, type metadata accessor for PeerDifference.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Peer(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v10 = v9[7];
  v11 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v9[8];
  v13 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v9[9];
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v16 = v9[10];
  v17 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v17 - 8) + 56))(&a1[v16], 1, 1, v17);
  v18 = v9[11];
  v19 = type metadata accessor for SignedCustodianRecoveryKey(0);
  return (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
}

void (*PeerDifference.add.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_10001148C(&qword_100297E00, &qword_10021DA18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_100019C6C(v2, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000F89AC(v8, v12, type metadata accessor for Peer);
      return sub_100081AB4;
    }

    sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
  }

  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *(v12 + 2) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v15 = v9[7];
  v16 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  v17 = v9[8];
  v18 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
  v19 = v9[9];
  v20 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  v21 = v9[10];
  v22 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v22 - 8) + 56))(&v12[v21], 1, 1, v22);
  v23 = v9[11];
  v24 = type metadata accessor for SignedCustodianRecoveryKey(0);
  (*(*(v24 - 8) + 56))(&v12[v23], 1, 1, v24);
  return sub_100081AB4;
}