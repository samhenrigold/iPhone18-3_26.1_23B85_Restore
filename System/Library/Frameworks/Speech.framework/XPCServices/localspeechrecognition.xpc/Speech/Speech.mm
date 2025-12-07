int main(int argc, const char **argv, const char **envp)
{
  v3 = mach_continuous_time();
  v4 = os_log_create("com.apple.speech.localspeechrecognition", "xpcservice");
  v5 = qword_100071410;
  qword_100071410 = v4;

  unsetenv("TMPDIR");
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v13 = qword_100071410;
    if (os_log_type_enabled(qword_100071410, OS_LOG_TYPE_FAULT))
    {
      v14 = v13;
      v15 = *__error();
      v16 = 67109120;
      LODWORD(v17) = v15;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed™: %{darwin.errno}d", &v16, 8u);
    }

    exit(1);
  }

  v6 = NSTemporaryDirectory();
  +[LSRConnection captureProcessStartTime];
  AFLogInitIfNeeded();
  SFLogInitIfNeeded();
  v7 = objc_opt_new();
  v8 = +[NSXPCListener serviceListener];
  [v8 setDelegate:v7];
  [SFUtilities continuousTimeToNanoseconds:mach_continuous_time() - v3];
  v10 = v9;
  v11 = qword_100071410;
  if (os_log_type_enabled(qword_100071410, OS_LOG_TYPE_ERROR))
  {
    v16 = 134217984;
    v17 = v10 / 1000000.0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Process start to XPC connection ready in %f ms", &v16, 0xCu);
  }

  [v8 resume];

  return 0;
}

id sub_100001FE4()
{
  v1 = &v0[OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners];
  sub_10000212C();
  sub_10000206C();
  v2 = sub_100046D8C();
  *v1 = 0;
  *(v1 + 1) = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EARInterface();
  return objc_msgSendSuper2(&v4, "init");
}

unint64_t sub_10000206C()
{
  result = qword_10006EE10;
  if (!qword_10006EE10)
  {
    sub_1000029E4(255, &qword_10006FAF0, NSXPCListener_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EE10);
  }

  return result;
}

void sub_1000020D4(uint64_t a1)
{
  if (!qword_10006FB68)
  {
    sub_100046B0C();
    v1 = sub_10004710C();
    if (!v2)
    {
      atomic_store(v1, &qword_10006FB68);
    }
  }
}

unint64_t sub_10000212C()
{
  result = qword_10006FAF0;
  if (!qword_10006FAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FAF0);
  }

  return result;
}

char *sub_100002188()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetManager;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v2 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString];
  v3 = SFEntitledAssetTypeToString();
  v4 = sub_100046E5C();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_modelInfoForLanguageMutex];
  type metadata accessor for LSRModelInfo(0);
  v8 = sub_100046D8C();
  *v7 = 0;
  *(v7 + 1) = v8;
  v9 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_statusForLanguageMutex];
  v10 = sub_100046D8C();
  *v9 = 0;
  *(v9 + 1) = v10;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for AssistantAssetDelegateInterface();
  v11 = objc_msgSendSuper2(&v31, "init");
  v12 = *&v11[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetManager];
  v13 = v11;
  [v12 registerAssetDelegate:v13 assetType:3];
  if (qword_10006DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_100046D1C();
  sub_100004D64(v14, qword_1000714A0);
  v15 = sub_100046D0C();
  v16 = sub_10004701C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = *&v13[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString];
    v20 = *&v13[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString + 8];

    v21 = sub_100004EB4(v19, v20, &v30);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Now observing %s asset updates.", v17, 0xCu);
    sub_1000050D4(v18);
  }

  return v13;
}

char *sub_10000241C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_100070318, &qword_10004D530);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000244C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_100070320, &qword_10004D538);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t type metadata accessor for LSRModelInfo(uint64_t a1)
{
  result = qword_100070398;
  if (!qword_100070398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000024C8(uint64_t a1)
{
  sub_100046B0C();
  if (v1 <= 0x3F)
  {
    sub_1000020D4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000025BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_100046D7C();
  v7 = a1;
  a4(v6);

  v6, v8, v9, v10, v11, v12, v13, v14;
}

id sub_100002634(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_100046E4C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v3 initWithConfig:v4];

  return v12;
}

void sub_1000026A8()
{
  v1 = v0;
  v2 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v82 - v6;
  v8 = [objc_opt_self() jsonFilenameForAssetType:*(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_assetType)];
  sub_100046E5C();
  v10 = v9;

  sub_100046AAC();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_100046B0C();
  sub_1000045DC(v7, 0, 1, v18);
  v19 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile;
  swift_beginAccess();
  sub_10000486C(v7, v1 + v19);
  swift_endAccess();
  sub_1000048DC(v1 + v19, v5);
  if (sub_100004844(v5, 1, v18) == 1)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);
    v20 = sub_100046ADC();
    v22 = v21;
    (*(*(v18 - 8) + 8))(v5, v18);
    v23 = sub_100002634(v20, v22);
    v24 = [v23 tasks];
    v25 = sub_100046FBC();

    sub_10003372C(v25);
    v27 = v26;
    v25, v28, v29, v30, v31, v32, v33, v34;
    v83 = v27;

    sub_100003E24(&v83);
    v27, v35, v36, v37, v38, v39, v40, v41;
    v42 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);
    *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames) = v83;
    v42, v43, v44, v45, v46, v47, v48, v49;
    v50 = [v23 version];
    v51 = sub_100046E5C();
    v53 = v52;

    v54 = (v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
    v55 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);
    *v54 = v51;
    v54[1] = v53;
    v55, v56, v57, v58, v59, v60, v61, v62;
    v63 = [v23 samplingRates];
    v64 = sub_100046FBC();

    sub_10003399C(v64);
    v66 = v65;
    v64, v67, v68, v69, v70, v71, v72, v73;

    v74 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);
    *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates) = v66;
    v74, v75, v76, v77, v78, v79, v80, v81;
  }
}

uint64_t sub_1000029E4(uint64_t a1, unint64_t *a2, void *a3)
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

char *sub_100002A48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006FA70, &qword_10004CF98);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

id sub_100002AC0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_100002B44(uint64_t a1)
{
}

uint64_t sub_100002B5C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002B8C()
{

  return sub_100046E6C();
}

uint64_t sub_100002BE8()
{
  v9 = *(type metadata accessor for ClientInfo(0) + 32);
  v10 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = sub_1000045DC(v8 + v9, 1, 1, v10);
  *v8 = v7;
  v8[1] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v8[2] = v3;
  v8[3] = v2;
  v8[6] = v1;
  v8[7] = v0;
  return result;
}

id sub_100002C48(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  result = [objc_allocWithZone(a2(a1)) init];
  *a3 = result;
  return result;
}

void sub_100002CA8(uint64_t a1, void (*a2)(uint64_t), void *a3, void *a4, uint64_t a5)
{
  v8 = v5;

  a2(v10);
  v11 = sub_1000035D4(a1);
  v12 = sub_100003B5C(v11);

  v166 = *v12->transaction;
  if (!v166)
  {
LABEL_23:
    if (qword_10006DD38 != -1)
    {
LABEL_35:
      sub_100004E14(&qword_10006DD38);
    }

    v123 = sub_100046D1C();
    sub_100004D64(v123, qword_1000714A0);
    v124 = v8;

    v169 = sub_100046D0C();
    v125 = sub_10004701C();
    v12, v126, v127, v128, v129, v130, v131, v132;

    if (os_log_type_enabled(v169, v125))
    {
      v140 = swift_slowAlloc();
      v170[0] = swift_slowAlloc();
      *v140 = 136315394;
      *(v140 + 4) = sub_100004EB4(*&v124[*a3], *&v124[*a3 + 8], v170);
      *(v140 + 12) = 2080;
      v141 = sub_100046F0C();
      v143 = v142;
      v12, v142, v144, v145, v146, v147, v148, v149;
      v150 = sub_100004EB4(v141, v143, v170);
      v143, v151, v152, v153, v154, v155, v156, v157;
      *(v140 + 14) = v150;
      _os_log_impl(&_mh_execute_header, v169, v125, "Received update for %s assets, available languages: %s", v140, 0x16u);
      swift_arrayDestroy();
      sub_100002BBC();

      sub_100002BBC();
    }

    else
    {
      v12, v133, v134, v135, v136, v137, v138, v139;
    }

    return;
  }

  v13 = 0;
  v162 = &v5[*a3];
  lock = &v5[*a4];
  v14 = &v12->audioBufferListeners[8];
  v163 = a1;
  v159 = v12;
  v161 = v5;
  while (1)
  {
    if (v13 >= *v12->transaction)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }

    v16 = *(v14 - 1);
    v15 = *v14;

    v17 = sub_100005C58();
    v19 = sub_1000041D0(v17, v18);
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }

    v168 = v14;
    v21 = (*(a1 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    type metadata accessor for LSRModelInfo(0);
    v24 = swift_allocObject();

    sub_100004388(v22, v23, a5);
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v25 = sub_100046D1C();
    sub_100004D64(v25, qword_1000714A0);
    swift_retain_n();

    v26 = v8;
    v27 = sub_100046D0C();
    v28 = sub_100046FFC();

    v15, v29, v30, v31, v32, v33, v34, v35;

    v164 = v13;
    if (os_log_type_enabled(v27, v28))
    {
      break;
    }

LABEL_13:
    os_unfair_lock_lock(lock);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170[0] = *&lock[2]._os_unfair_lock_opaque;
    v98 = v170[0];
    *&lock[2]._os_unfair_lock_opaque = 0x8000000000000000;
    v99 = sub_100005C58();
    v101 = sub_1000041D0(v99, v100);
    v103 = *(v98 + 16);
    v104 = (v102 & 1) == 0;
    v8 = (v103 + v104);
    if (__OFADD__(v103, v104))
    {
      goto LABEL_33;
    }

    v105 = v101;
    v106 = v102;
    sub_10000ECEC(&qword_1000704F8, &qword_10004D5D0);
    if (sub_1000472EC(isUniquelyReferenced_nonNull_native, v8))
    {
      v107 = sub_100005C58();
      v109 = sub_1000041D0(v107, v108);
      v8 = v161;
      a1 = v163;
      if ((v106 & 1) != (v110 & 1))
      {
        goto LABEL_38;
      }

      v105 = v109;
    }

    else
    {
      v8 = v161;
      a1 = v163;
    }

    v111 = v170[0];
    if (v106)
    {
      *(*(v170[0] + 56) + 8 * v105) = v24;
    }

    else
    {
      *(v170[0] + 8 * (v105 >> 6) + 64) |= 1 << v105;
      v119 = (v111[6] + 16 * v105);
      *v119 = v16;
      v119[1] = v15;
      *(v111[7] + 8 * v105) = v24;
      v120 = v111[2];
      v121 = __OFADD__(v120, 1);
      v122 = v120 + 1;
      if (v121)
      {
        goto LABEL_34;
      }

      v111[2] = v122;
    }

    *&lock[2]._os_unfair_lock_opaque = v111;
    v15, v112, v113, v114, v115, v116, v117, v118;
    os_unfair_lock_unlock(lock);

    v13 = v164 + 1;
    v14 = v168 + 2;
    if (v166 == v164 + 1)
    {
      goto LABEL_23;
    }
  }

  log = v27;
  v36 = swift_slowAlloc();
  v170[0] = swift_slowAlloc();
  *v36 = 136316418;
  *(v36 + 4) = sub_100004EB4(*v162, v162[1], v170);
  *(v36 + 12) = 2080;
  v37 = sub_100005C58();
  *(v36 + 14) = sub_100004EB4(v37, v38, v39);
  *(v36 + 22) = 2080;
  v40 = sub_100046ADC();
  v42 = v41;
  v43 = sub_100004EB4(v40, v41, v170);
  v42, v44, v45, v46, v47, v48, v49, v50;
  *(v36 + 24) = v43;
  *(v36 + 32) = 2080;
  v51 = *(v24 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
  v52 = *(v24 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType + 8);

  v53 = sub_100004EB4(v51, v52, v170);
  v52, v54, v55, v56, v57, v58, v59, v60;
  *(v36 + 34) = v53;
  *(v36 + 42) = 2080;
  v61 = *(v24 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);
  if (!v61)
  {
    goto LABEL_37;
  }

  v62 = sub_100046F0C();
  v64 = v63;
  v61, v63, v65, v66, v67, v68, v69, v70;
  v71 = sub_100004EB4(v62, v64, v170);
  v64, v72, v73, v74, v75, v76, v77, v78;
  *(v36 + 44) = v71;
  *(v36 + 52) = 2080;
  v79 = *(v24 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);
  if (v79)
  {

    v80 = sub_100046F0C();
    v82 = v81;
    v79, v81, v83, v84, v85, v86, v87, v88;
    v89 = sub_100004EB4(v80, v82, v170);
    v82, v90, v91, v92, v93, v94, v95, v96;
    *(v36 + 54) = v89;
    _os_log_impl(&_mh_execute_header, log, v28, "Received update for %s assets, assets for %s have the following modelInfo - modelRoot: %s modelQualityType: %s modelTaskNames: %s modelSamplingRates: %s", v36, 0x3Eu);
    swift_arrayDestroy();
    sub_100002BBC();

    sub_100002BBC();

    v12 = v159;
    goto LABEL_13;
  }

  __break(1u);
LABEL_37:

  __break(1u);
LABEL_38:
  sub_10004740C();
  __break(1u);
}

void sub_100003578(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  os_unfair_lock_lock(v4);
  *(v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v4 + 8) = a1;

  os_unfair_lock_unlock(v4);
}

void *sub_1000035D4(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_100034E70(v9, v4, v2);
      sub_100002BBC();

      return v2;
    }
  }

  __chkstk_darwin(a1);
  sub_10000373C(0, v4, &v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  v5 = sub_10000BFBC();
  sub_1000037A0(v5, v6, v2);
  if (!v1)
  {
    return v7;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_10000373C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10004D500;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1000037A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v14 = *(*(a3 + 56) + 16 * v12 + 8);

    v15 = sub_100046E4C();
    IsInstalled = SFEntitledAssetStatusIsInstalled();
    v13, v17, v18, v19, v20, v21, v22, v23;
    v14, v24, v25, v26, v27, v28, v29, v30;

    if (IsInstalled)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100003914(a1, a2, v34, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100003914(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000ECEC(&qword_10006FF38, &qword_10004D2E8);
  result = sub_1000473AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    sub_10004745C();

    sub_100046EAC();
    result = sub_10004748C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

char *sub_100003B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_100003C48(*(a1 + 16), 0);
  v4 = sub_100003CC8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_100003C40(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_100003E24(&v7);
  return v7;
}

void *sub_100003C48(uint64_t a1, uint64_t a2)
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

  sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_100003CC8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100003E24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100004BA8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_100003E90(v4);
  *a1 = v2;
}

void sub_100003E90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000473BC(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_100046F2C();
        *v6->transaction = v5;
      }

      v14[0] = v6->audioBufferListeners;
      v14[1] = v5;
      sub_100034664(v14, v15, a1, v4);
      *v6->transaction = 0;
      v6, v7, v8, v9, v10, v11, v12, v13;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100003F84(0, v2, 1, a1);
  }
}

uint64_t sub_100003F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1000473EC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000040F0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_100046E6C();
}

uint64_t sub_100004140(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000418C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1000041D0(uint64_t a1, uint64_t a2)
{
  sub_10004745C();
  sub_100046EAC();
  v4 = sub_10004748C();

  return sub_1000042D4(a1, a2, v4);
}

uint64_t sub_10000427C(uint64_t a1)
{

  return swift_dynamicCast();
}

unint64_t sub_1000042D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000473EC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004388(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3)
{
  v53 = a3;
  v6 = sub_100046B0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000045DC(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile, 1, 1, v6);
  v10 = (v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames) = 0;
  *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates) = 0;
  type metadata accessor for LSRModelInfo(0);
  sub_10000BFBC();
  sub_100004604(v11);
  if (v4)
  {
    a2, v12, v13, v14, v15, v16, v17, v18;
    sub_100006524(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile, &qword_10006FED0, &qword_10004CF38);
    *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8), v19, v20, v21, v22, v23, v24, v25;
    *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames), v26, v27, v28, v29, v30, v31, v32;
    *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates), v33, v34, v35, v36, v37, v38, v39;
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot, v9, v6);
    *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_assetType) = v53;
    sub_10000BFBC();
    v40 = sub_100046E4C();
    a2, v41, v42, v43, v44, v45, v46, v47;
    SFEntitledAssetStatusIsHighQuality();

    v48 = sub_100046E5C();
    v49 = (v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
    *v49 = v48;
    v49[1] = v50;
    sub_1000026A8();
  }

  return v3;
}

uint64_t sub_100004604@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = objc_opt_self();
  v8 = sub_100046E4C();
  v9 = [v7 assetPathFromStatus:v8];

  if (!v9)
  {
    goto LABEL_4;
  }

  sub_100046E5C();
  v11 = v10;

  sub_100046AEC();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_100046B0C();
  if (sub_100004844(v6, 1, v19) == 1)
  {
    sub_100006524(v6, &qword_10006FED0, &qword_10004CF38);
LABEL_4:
    type metadata accessor for LSRError(0);
    v24 = 100;
    sub_10000ECEC(&qword_10006FC40, &qword_10004D290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004CCE0;
    *(inited + 32) = sub_100046E5C();
    *(inited + 40) = v21;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000021;
    *(inited + 56) = 0x800000010004FBB0;
    sub_100046D8C();
    sub_100035040();
    sub_100046A5C();
    return swift_willThrow();
  }

  return (*(*(v19 - 8) + 32))(a3, v6, v19);
}

uint64_t sub_10000486C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000048DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000494C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100004A54(char *a1, int64_t a2, char a3)
{
  result = sub_10000494C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100004A74()
{

  return swift_slowAlloc();
}

uint64_t sub_100004A8C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004ACC()
{
}

void sub_100004B04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100004B58(uint64_t a1)
{

  return swift_dynamicCastClass();
}

id sub_100004B70()
{
  v7 = *(v5 - 136);

  return sub_10002566C(v0, v2, v1, v3, v7, v4);
}

void sub_100004B9C(_TtC22localspeechrecognition19EARSpeechRecognizer *result, SEL a2, id a3, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

char *sub_100004BBC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000ECEC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[8 * v10] <= v14)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }

  return v12;
}

char *sub_100004CB4(char *a1, int64_t a2, char a3)
{
  result = sub_100004BBC(a1, a2, a3, *v3, &qword_1000704D8, &qword_10004D5C0);
  *v3 = result;
  return result;
}

uint64_t sub_100004CF8(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_100046D1C();
  sub_100004D9C(v5, a2);
  sub_100004D64(v5, a2);
  result = SFLogInitIfNeeded();
  if (*a3)
  {
    v7 = *a3;
    return sub_100046D2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004D64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004D9C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004E14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004E34(uint64_t a1)
{

  return swift_once();
}

void sub_100004E68(uint64_t a1@<X8>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  v10 = *(v8 + a1 + 8);

  v10, a2, a3, a4, a5, a6, a7, a8;
}

unint64_t sub_100004EB4(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t *a3)
{

  v6 = sub_100004F78(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (v6)
  {
    v15 = v6;
    a2, v7, v8, v9, v10, v11, v12, v13;
    ObjectType = swift_getObjectType();
    v18[0] = v15;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
  }

  v16 = *a3;
  if (*a3)
  {
    sub_100005078(v18, *a3);
    *a3 = v16 + 32;
  }

  sub_1000050D4(v18);
  return v14;
}

unint64_t sub_100004F78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005120(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10004727C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100005078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000050D4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_100005120(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000051DC(a1, a2);
  sub_1000052F4(&off_100065678);
  return v3;
}

void *sub_10000516C(uint64_t a1, uint64_t a2)
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

  sub_10000ECEC(&unk_100070500, &qword_10004D5D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1000051DC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100046ECC())
  {
    result = sub_10000516C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10004722C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10004727C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000052F4(_TtC22localspeechrecognition19EARSpeechRecognizer *result)
{
  v2 = *result->transaction;
  v3 = *v1;
  v4 = *(*v1)->transaction;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *v3->resultStream >> 1)
  {
    if (v4 <= v5)
    {
      v15 = v4 + v2;
    }

    else
    {
      v15 = v4;
    }

    v3 = sub_10000BDF8(isUniquelyReferenced_nonNull_native, v15, 1, v3, v11, v12, v13, v14);
  }

  if (!*result->transaction)
  {
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = *v3->transaction;
  if ((*v3->resultStream >> 1) - v16 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->audioBufferListeners[v16], result->audioBufferListeners, v2);
  result, v17, v18, v19, v20, v21, v22, v23;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v24 = *v3->transaction;
  v25 = __OFADD__(v24, v2);
  v26 = v24 + v2;
  if (!v25)
  {
    *v3->transaction = v26;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100005408()
{
}

char *sub_100005524()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetManager;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v2 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString];
  v3 = SFEntitledAssetTypeToString();
  v4 = sub_100046E5C();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_modelInfoForLanguageMutex];
  type metadata accessor for LSRModelInfo(0);
  v8 = sub_100046D8C();
  *v7 = 0;
  *(v7 + 1) = v8;
  v9 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_statusForLanguageMutex];
  v10 = sub_100046D8C();
  *v9 = 0;
  *(v9 + 1) = v10;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for GeneralASRAssetDelegateInterface();
  v11 = objc_msgSendSuper2(&v31, "init");
  v12 = *&v11[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetManager];
  v13 = v11;
  [v12 registerAssetDelegate:v13 assetType:7];
  if (qword_10006DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_100046D1C();
  sub_100004D64(v14, qword_1000714A0);
  v15 = sub_100046D0C();
  v16 = sub_10004701C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = *&v13[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString];
    v20 = *&v13[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString + 8];

    v21 = sub_100004EB4(v19, v20, &v30);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Now observing %s asset updates.", v17, 0xCu);
    sub_1000050D4(v18);
  }

  return v13;
}

uint64_t sub_100005808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ECEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Class sub_100005868(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  v6.super.isa = sub_100046D6C().super.isa;
  v5, v7, v8, v9, v10, v11, v12, v13;

  return v6.super.isa;
}

uint64_t sub_1000058F4(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t sub_100005B78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BA8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100005BC4(uint64_t a1)
{

  return sub_100046AAC();
}

uint64_t sub_100005CEC()
{
  _Block_release(*(v0 + 24));

  sub_10003121C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100005D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100046F9C();
  sub_1000045DC(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10004D208;
  v9[5] = v8;
  sub_10002CB2C(0, 0, v6, &unk_10004D218, v9);
}

void sub_100005E60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_100046E5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  v8, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_100005ECC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  v15 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  swift_beginAccess();
  sub_10000612C(v4 + v15, v14);
  v16 = sub_100046BBC();
  v17 = sub_100004844(v14, 1, v16);
  sub_10000619C(v14);
  if (v17 == 1)
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C(&qword_10006DD30);
    }

    v18 = mach_continuous_time();
    result = a4(v18, a1, a2);
    if (result)
    {
      v20 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_pendingANECompilationContextEvents;
      swift_beginAccess();
      sub_100046EDC();
      sub_1000063E0(*((*(v4 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_100046F3C();
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C(&qword_10006DD30);
    }

    sub_10000612C(v4 + v15, v12);
    v21 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName);
    v22 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName + 8);

    v23 = mach_continuous_time();
    a3(v12, v21, v22, v23, a1, a2);
    v22, v24, v25, v26, v27, v28, v29, v30;
    return sub_10000619C(v12);
  }

  return result;
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000619C(uint64_t a1)
{
  v2 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100006204(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, Class *a4, SEL *a5)
{
  v8 = [objc_allocWithZone(*a4) init];
  v9 = v8;
  if (v8)
  {
    [v8 setExists:1];
  }

  v10 = [objc_allocWithZone(ASRSchemaASRAppleNeuralEngineModelInitializationContext) init];
  v11 = v10;
  if (v10)
  {
    v12 = v10;

    sub_100006300(a2, a3);

    v13 = v12;
    sub_100006370();
  }

  v14 = v11;
  [v14 *a5];

  return v11;
}

void sub_100006300(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  v4 = sub_100046E4C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  sub_100005BA8(v12, v13);
  objc_setAssociatedObject(v2, &unk_10006EE50, v4, 1);
  swift_endAccess();
}

void sub_100006370()
{
  isa = sub_10004749C().super.super.isa;
  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_10006EE40, isa, 1);
  swift_endAccess();
}

uint64_t sub_1000063E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_100046F1C();
  }

  return result;
}

uint64_t sub_10000640C()
{
  v1 = *(v0 + 16);
  v2 = sub_100046E4C();
  v3 = sub_100046E4C();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 BOOLeanValue];

  return v5 ^ 1;
}

uint64_t sub_1000064CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000ECEC(a2, a3);
  sub_10000417C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100006524(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000ECEC(a2, a3);
  sub_100004110();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100006578()
{
  sub_10000BF04();
  v0 = swift_task_alloc();
  v1 = sub_100008FCC(v0);
  *v1 = v2;
  v1[1] = sub_10000C1AC;
  v3 = sub_100031138();

  return v4(v3);
}

uint64_t sub_100006620()
{
  sub_10000BF04();
  v0 = swift_task_alloc();
  v1 = sub_100008FCC(v0);
  *v1 = v2;
  v3 = sub_100030FFC(v1);

  return v4(v3);
}

uint64_t sub_1000066C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000C290;

  return v6(a1);
}

uint64_t sub_1000067BC()
{
  sub_10001FD20();
  v0 = swift_task_alloc();
  v1 = sub_100008FCC(v0);
  *v1 = v2;
  v1[1] = sub_10000C28C;
  v3 = sub_100031138();

  return v4(v3);
}

uint64_t sub_100006870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000C1AC;

  return v7();
}

uint64_t sub_100006958()
{
  sub_10001FD20();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100008FCC(v6);
  *v7 = v8;
  v7[1] = sub_10000C28C;

  return sub_100006870(v2, v3, v4, v5);
}

uint64_t sub_100006A1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000C28C;

  return v6();
}

uint64_t sub_100006B20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = a1;
    v7 = a3;
    a1 = sub_100046B3C();
    v9 = v8;
  }

  else
  {
    v10 = a3;
    v9 = 0xF000000000000000;
  }

  v3[4] = a1;
  v3[5] = v9;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_10000BFC8;

  return sub_100006DD8(a1, v9);
}

uint64_t sub_100006C08()
{
  sub_10001FD20();
  v15 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v1 = sub_100046D1C();
  v2 = sub_100008FA4(v1, qword_1000714B8);
  v3 = sub_100046FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100004A8C();
    v5 = sub_100004A74();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E210, &v14);
    sub_100031308(&_mh_execute_header, v6, v7, "EARSpeechRecognitionAudioBuffer.%s");
    sub_1000050D4(v5);
    sub_100005408();
    sub_100004ACC();
  }

  else
  {
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = swift_task_alloc();
  v0[5] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_10002BEBC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000016, 0x800000010004E210, sub_10002CE08, v11, &type metadata for Bool);
}

uint64_t sub_100006DD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100002BDC(sub_100006C08);
}

uint64_t sub_100006DF4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100006E0C()
{
  v1 = *(v0 + 1128);
  v2 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_transaction;
  *(v0 + 1320) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_transaction;
  *(v1 + v2) = 0;
  v3 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream;
  *(v0 + 1328) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream;
  *(v1 + v3) = 0;
  v4 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners;
  *(v0 + 1336) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners;
  v5 = v1 + v4;
  sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
  v6 = sub_100046D8C();
  *v5 = 0;
  *(v5 + 8) = v6;
  v7 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles;
  *(v0 + 1344) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles;
  *(v1 + v7) = [objc_allocWithZone(NSMutableDictionary) init];
  v8 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
  *(v0 + 1352) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
  v9 = sub_100046B7C();
  *(v0 + 1360) = v9;
  sub_1000045DC(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest) = 0;
  v10 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext;
  *(v0 + 1368) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext;
  v11 = v1 + v10;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v1 + v2) = os_transaction_create();
  swift_unknownObjectRelease();
  if (qword_10006DD40 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_100002B5C(&qword_10006DD40);
LABEL_2:
    v12 = sub_100046D1C();
    *(v0 + 1376) = sub_100004D64(v12, qword_1000714B8);
    v13 = sub_100046D0C();
    v14 = sub_100046FFC();
    if (sub_100030FB0(v14))
    {
      v15 = sub_1000090C8();
      *v15 = 0;
      sub_100006B04();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      sub_100002B44(v15);
    }

    v20 = *(v0 + 1128);
    v21 = *(v0 + 1104);
    v22 = *(v0 + 1096);
    v23 = *(v0 + 1088);

    v24 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_supportedFeatures;
    *(v0 + 1384) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_supportedFeatures;
    *(v20 + v24) = v23;
    v25 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    *(v0 + 1392) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    *(v20 + v25) = v22;
    v26 = v23;
    v27 = v22;
    v28 = sub_100030478(v21, &selRef_leftContext);
    if (v28)
    {
      v36 = v28;
      v37 = sub_1000264B8(v28);
      v39 = v38;
      v36, v38, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v46 = *(v0 + 1096);
    v47 = *(v0 + 1088);
    v48 = *(v11 + 8);
    *v11 = v37;
    *(v11 + 8) = v39;
    v48, v29, v30, v31, v32, v33, v34, v35;
    v49 = objc_opt_self();
    *(v0 + 1400) = v49;
    v50 = [v49 processInfo];
    [v50 systemUptime];
    *(v0 + 1408) = v51;

    v581 = [v47 modelOptions];
    *(v0 + 1416) = v581;
    v52 = [v46 clientID];
    v53 = v52;
    v54 = v52;
    if (!v52)
    {
      sub_100046E5C();
      v56 = v55;
      v54 = sub_100046E4C();
      v56, v57, v58, v59, v60, v61, v62, v63;
      sub_100046E5C();
      v65 = v64;
      v53 = sub_100046E4C();
      v65, v66, v67, v68, v69, v70, v71, v72;
    }

    v73 = *(v0 + 1088);
    v570 = sub_100046E5C();
    v572 = v74;
    *(v0 + 1424) = v74;
    v75 = v52;
    v76 = [v73 taskNames];
    v77 = sub_100046FBC();
    v78 = sub_1000264B8(&off_100065840);
    if (!v79)
    {
      break;
    }

    v80 = v78;
    v81 = v79;
    v82 = *(v0 + 1088);

    v83 = sub_100027290(v80, v81, v77);
    v77, v84, v85, v86, v87, v88, v89, v90;
    v81, v91, v92, v93, v94, v95, v96, v97;
    v98 = [v82 taskNames];
    v99 = sub_100046FBC();
    v100 = sub_100026518(v99);
    v102 = v101;
    v99, v101, v103, v104, v105, v106, v107, v108;
    *(v0 + 1432) = v102;
    if (!v102)
    {
      goto LABEL_151;
    }

    v109 = *(v0 + 1096);

    v110 = [v109 asrID];
    if (v110)
    {
      v111 = v110;
      sub_100046BAC();

      v112 = 0;
    }

    else
    {
      v112 = 1;
    }

    v566 = v54;
    v113 = *(v0 + 1312);
    v114 = *(v0 + 1304);
    v115 = sub_100046BBC();
    sub_1000045DC(v114, v112, 1, v115);
    sub_100030EC0(v114, v113, &unk_10006FB00, &qword_10004C590);
    v580 = v100;
    v564 = v83;
    v568 = v53;
    if (v581)
    {
      v578 = sub_100008FD8(v581, &selRef_geoLMRegionID);
      v117 = v116;
    }

    else
    {
      v578 = 0;
      v117 = 0;
    }

    *(v0 + 1440) = v117;
    v118 = *(v0 + 1264);
    v119 = *(v0 + 1128);
    v120 = *(v0 + 1088);
    v573 = [objc_opt_self() sharedInstance];
    *(v0 + 1448) = v573;
    v121 = sub_100046E4C();
    v122 = SFEntitledAssetTypeForTaskName();

    v561 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic;
    v562 = v119;
    *(v119 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic) = v122 == 7;
    v123 = sub_100046E4C();
    v124 = SFEntitledAssetTypeForTaskName();

    v125 = [v120 locale];
    sub_100046BFC();

    objc_allocWithZone(SFEntitledAssetConfig);

    v576 = v117;
    v126 = sub_10002C9F8(v124, v118, v578, v117);
    if (v581)
    {
      v127 = [v581 modelOverrideURL];
      if (v127)
      {
        v128 = v127;
        sub_100046ABC();

        v129 = 0;
      }

      else
      {
        v129 = 1;
      }

      v130 = v572;
      v131 = *(v0 + 1256);
      v132 = *(v0 + 1248);
      sub_1000045DC(v132, v129, 1, *(v0 + 1192));
      sub_100030EC0(v132, v131, &qword_10006FED0, &qword_10004CF38);
    }

    else
    {
      sub_1000045DC(*(v0 + 1256), 1, 1, *(v0 + 1192));
      v130 = v572;
    }

    v133 = sub_100046E5C();
    v141 = v134;
    v142 = v100 == v133 && v102 == v134;
    if (v142)
    {
      v143 = 1;
    }

    else
    {
      v143 = sub_1000473EC();
    }

    v144 = *(v0 + 1256);
    v141, v134, v135, v136, v137, v138, v139, v140;
    v145 = objc_allocWithZone(type metadata accessor for LSRAssets(0));

    v146 = sub_10001FD2C(v126, 1, v570, v130, v144, v143 & 1);
    *(v0 + 1456) = v146;
    *(v0 + 1464) = 0;
    v165 = v146;
    v565 = v102;
    v166 = *(v0 + 1240);
    v167 = *(v0 + 1200);
    v168 = *(v0 + 1192);
    v169 = *(v0 + 1128);
    v170 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_configurationFile;
    v171 = *(v167 + 16);
    *(v0 + 1472) = v171;
    *(v0 + 1480) = (v167 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v171(v166, &v146[v170], v168);
    v172 = v165;
    v559 = sub_100046ADC();
    v571 = v173;
    *(v0 + 1488) = v173;
    v174 = *(v167 + 8);
    *(v0 + 1496) = v174;
    *(v0 + 1504) = (v167 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v174(v166, v168);
    v175 = sub_100031204();
    (v171)(v175);
    v176 = v172;
    v177 = sub_100046ADC();
    v560 = v178;
    *(v0 + 1512) = v178;
    *(v169 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_assets) = v176;
    v179 = *&v176[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language];
    v180 = *&v176[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8];
    v181 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr;
    *(v0 + 1520) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr;
    v558 = (v169 + v181);
    *v558 = v179;
    v558[1] = v180;
    v182 = *&v176[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType] == 20808 && *&v176[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType + 8] == 0xE200000000000000;
    v556 = v177;
    if (v182)
    {
      v183 = 1;
    }

    else
    {
      v183 = sub_1000473EC();
    }

    v224 = *(v0 + 1312);
    v225 = *(v0 + 1296);
    v226 = *(v0 + 1280);
    v227 = *(v0 + 1272);
    v228 = *(v0 + 1136);
    v229 = *(v0 + 1104);
    *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isHighQualityAsset) = v183 & 1;
    sub_100030CE0(v224, v225, &unk_10006FB00, &qword_10004C590);
    v230 = (*(v227 + 80) + 32) & ~*(v227 + 80);
    v231 = (v226 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
    v232 = swift_allocObject();
    *(v0 + 1528) = v232;
    *(v232 + 16) = v229;
    *(v232 + 24) = v176;
    sub_100030EC0(v225, v232 + v230, &unk_10006FB00, &qword_10004C590);
    v233 = (v232 + v231);
    *v233 = v580;
    v233[1] = v565;
    *(v232 + ((v231 + 23) & 0xFFFFFFFFFFFFFFF8)) = v228;
    v234 = v176;

    v235 = v229;

    sub_10000ECEC(&qword_10006FED8, &qword_10004D2A8);
    swift_asyncLet_begin();
    if (qword_10006DD30 != -1)
    {
      sub_10000418C(&qword_10006DD30);
    }

    v236 = *(v0 + 1120);
    v237 = *(v0 + 1088);
    *(v0 + 1536) = qword_100071498;
    mach_continuous_time();
    sub_1000042C4();
    sub_10000B2C4(v238, v239, v240, v241, v242, v243);
    v244 = [objc_opt_self() activeConfigurationForEverything];
    *(v0 + 1544) = v244;
    v245 = [v237 taskNames];
    v246 = sub_100046FBC();

    v555 = v244;
    sub_100030404(v246, v244);
    v247 = *(v236 + 16);
    if (v247)
    {
      v248 = *(v0 + 1120);
      sub_100034518(0, v247, 0);
      v249 = (v248 + 40);
      do
      {
        v250 = *v249;
        sub_100046E9C();

        v251 = sandbox_extension_consume();

        v250, v252, v253, v254, v255, v256, v257, v258;
        v260 = *_swiftEmptyArrayStorage.transaction;
        v259 = *_swiftEmptyArrayStorage.resultStream;
        if (v260 >= v259 >> 1)
        {
          v261 = sub_100031108(v259);
          sub_100034518(v261, v260 + 1, 1);
        }

        *_swiftEmptyArrayStorage.transaction = v260 + 1;
        *&_swiftEmptyArrayStorage.audioBufferListeners[8 * v260] = v251;
        v249 += 2;
        --v247;
      }

      while (v247);
    }

    *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles) = &_swiftEmptyArrayStorage;
    v262 = v558;
    v263 = *v558;

    sub_100005BE0();
    sub_100046E4C();
    v264 = sub_100030F98();
    v264, v265, v266, v267, v268, v269, v270, v271;
    v272 = *&v234[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType];

    v273 = [v573 installedHammerConfigFileForLanguage:v263 assetType:v272 clientID:v566];
    v274 = v581;
    if (v273)
    {
      v275 = sub_100046E5C();
      v277 = v276;

      v282 = sub_100008E88(0, 1, 1, &_swiftEmptyArrayStorage, v278, v279, v280, v281);
      v284 = *v282->transaction;
      v283 = *v282->resultStream;
      if (v284 >= v283 >> 1)
      {
        sub_100031108(v283);
        sub_100031228();
        v282 = sub_100008E88(v526, v527, v528, v529, v530, v531, v532, v533);
      }

      *v282->transaction = v284 + 1;
      v285 = v282 + 16 * v284;
      *(v285 + 4) = v275;
      *(v285 + 5) = v277;
      sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);
      v286 = sub_100005BE0();
      v288 = sub_100002634(v286, v287);
      v289 = [v288 version];
      v290 = sub_100046E5C();
      v292 = v291;
    }

    else
    {
      v290 = 0;
      v282 = &_swiftEmptyArrayStorage;
      v292 = 0xE000000000000000;
    }

    *(v0 + 1552) = v292;
    v293 = (*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
    *v293 = v290;
    v293[1] = v292;
    v294 = v576;
    if (v576)
    {
      v295 = *v558;

      sub_100005BE0();
      sub_100046E4C();
      v296 = sub_100030F98();
      v296, v297, v298, v299, v300, v301, v302, v303;
      v304 = sub_100046E4C();
      v576, v305, v306, v307, v308, v309, v310, v311;
      v312 = sub_100046E4C();
      v313 = [v573 installedGeoLMRegionSpecificAssetForLanguage:v295 clientID:v568 regionId:v304 mainAssetConfig:v312];

      if (v313)
      {
        v314 = sub_100046E5C();
        v316 = v315;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_57;
      }

      v321 = 0;
      v294 = v576;
      v317 = v578;
    }

    else
    {

      v321 = 0;
      v317 = v578;
    }

    while (1)
    {
      v322 = (v0 + 1080);
      *(v0 + 1560) = v282;
      v323 = *(v0 + 1128);
      v324 = (v323 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
      *v324 = v317;
      v324[1] = v294;
      *(v323 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLanguageModelLoaded) = v321;
      *(v0 + 1080) = &_swiftEmptyDictionarySingleton;

      if (v274 && [v274 enableParallelLoading])
      {
        v325 = sub_100046D0C();
        v326 = sub_100046FEC();
        if (sub_100030F60(v326))
        {
          v327 = sub_1000090C8();
          *v327 = 0;
          sub_10003103C();
          _os_log_impl(v328, v329, v330, v331, v327, 2u);
          v332 = v327;
          v262 = v558;
          sub_100002B44(v332);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10003117C(isUniquelyReferenced_nonNull_native, v334, 0xD000000000000015, v335, isUniquelyReferenced_nonNull_native);
        *v322 = &_swiftEmptyDictionarySingleton;
      }

      v567 = v282;
      v578 = *(v0 + 1112);
      if (v578 && [v578 keepANEModelLoaded])
      {
        v336 = swift_isUniquelyReferenced_nonNull_native();
        sub_10003117C(v336, v337, 0xD000000000000012, v338, v336);
        *v322 = &_swiftEmptyDictionarySingleton;
      }

      v339 = [*(v0 + 1096) source];
      v340 = sub_100046E5C();
      v342 = v341;

      v342, v343, v344, v345, v346, v347, v348, v349;
      v350 = (v342 >> 56) & 0xF;
      if ((v342 & 0x2000000000000000) == 0)
      {
        v350 = v340 & 0xFFFFFFFFFFFFLL;
      }

      if (v350)
      {
        v351 = [*(v0 + 1096) source];
        sub_100046E5C();

        v352 = *(v0 + 1080);
        swift_isUniquelyReferenced_nonNull_native();
        v353 = sub_100031138();
        sub_100025B6C(v353, v354, v355, v356, v357);
        *(v0 + 1080) = v352;
      }

      if (v274)
      {
        v358 = v274;
        v359 = sub_100008FD8(v358, &selRef_taskForMemoryLock);
        v366 = v564;
        if (v360)
        {
          v365 = sub_100026580(v359, v360, 0xD000000000000011, 0x800000010004F770, v361, v362, v363, v364, v552, v554);
        }

        v367 = [v358 atypicalSpeech];
      }

      else
      {
        v367 = 0;
        v366 = v564;
      }

      v368 = *(v0 + 1088);
      *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_atypicalSpeechEnabled) = v367;
      v316 = swift_allocObject();
      *(v0 + 1568) = v316;
      v316[2] = 1;
      v369 = ([v368 flags] & 0x80) != 0 ? sub_10002752C(v316, v556, v560) : 0;
      *(v0 + 1576) = v369;
      v563 = v316;
      if (v366)
      {
        v316 = sub_100046E4C();
        v370 = VoicemailConfidenceSubtractionForLanguage(v316);

        if (v370)
        {
          break;
        }

        if (sub_10002752C(v563, v556, v560))
        {
          sub_100046D6C();
          v371 = sub_100026494();
          v371, v372, v373, v374, v375, v376, v377, v378;
        }

        else
        {
          v316 = 0;
        }

        v370 = EtiquetteConfidenceSubtraction(v316);

        if (v370)
        {
          break;
        }
      }

      v379 = 0;
LABEL_100:
      *(v0 + 1584) = v379;
      v564 = v379;
      if (!v578)
      {
        v557 = 0;
        goto LABEL_105;
      }

      v314 = *(v0 + 1112);
      v407 = [v314 priority];
      if ((v407 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v407 <= 0xFF)
      {
        v408 = *(v0 + 1184);
        v409 = *(v0 + 1168);
        v410 = *(v0 + 1160);
        sub_100046F7C();
        sub_100046F7C();
        sub_100031138();
        v557 = sub_100046F6C();

        v411 = *(v409 + 8);
        v412 = sub_1000310AC();
        v411(v412);
        (v411)(v408, v410);
LABEL_105:
        v413 = *(v0 + 1312);
        v414 = *(v0 + 1288);
        v415 = *(v0 + 1128);
        v416 = *(v0 + 1088);
        v417 = sub_1000041C4();
        sub_100030CE0(v417, v418, v419, v420);
        v421 = objc_allocWithZone(type metadata accessor for EARModelContextDelegateInterface(0));

        v422 = sub_10000912C(v414, v580, v565);
        v423 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface;
        *(v415 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface) = v422;
        v424 = mach_continuous_time();
        sub_10000C420(v413, v580, v565, v424);
        v425 = *v262;
        v426 = v262[1];
        v575 = v425;
        v427 = *(v0 + 1080);
        *(v0 + 1592) = v427;

        v555;

        v428 = [v416 flags];
        v429 = [v416 voiceCommandActiveSet];
        v430 = *(v415 + v423);
        v431 = v430;
        LODWORD(v416) = ([v416 flags] >> 5) & 1;
        v432 = objc_allocWithZone(_EARSpeechRecognizer);
        HIBYTE(v553) = v428 & 1;
        LOBYTE(v553) = 0;
        v433 = sub_10000C6C4(v559, v571, 0, v567, v575, v426, v555, v427, v553, v429, v430, v416);
        *(v0 + 1600) = 0;
        v434 = *(v0 + 1312);
        v435 = *(v0 + 1128);
        v436 = *(v0 + 1088);
        v437 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer;
        *(v0 + 1608) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer;
        *(v435 + v437) = v433;
        v438 = mach_continuous_time();
        sub_10000D8AC(v434, v580, v565, v438);
        if (([v436 flags] & 0x40) != 0)
        {
          v440 = 1;
          v439 = v581;
        }

        else
        {
          v439 = v581;
          if (([*(v0 + 1088) flags] & 0x400) != 0 && (*(v562 + v561) & 1) == 0)
          {
            v440 = [*(v0 + 1088) concatenateUtterances] ^ 1;
          }

          else
          {
            v440 = 0;
          }
        }

        v441 = *(v435 + v437);
        [0 setAllowUtteranceDelay:(sub_1000311A0() >> 6) & 1];

        v442 = *(v435 + v437);
        if (v578)
        {
          v443 = *(v0 + 1112);
          v444 = v442;
          v445 = sub_100008FD8(v443, &selRef_aneContext);
          sub_100006DF4(v445, v446);
          if (v142)
          {
            v448 = 0xE000000000000000;
          }

          else
          {
            v448 = v447;
          }
        }

        else
        {
          v449 = v442;
          v448 = 0xE000000000000000;
        }

        v450 = sub_100046E4C();
        v448, v451, v452, v453, v454, v455, v456, v457;
        [v442 setAneContext:v450];

        v458 = *(v435 + v437);
        if (v439)
        {
          v459 = [v439 atypicalSpeech];
        }

        else
        {
          v459 = 0;
        }

        v460 = *(v0 + 1088);
        [v458 setAtypicalSpeech:v459];

        v461 = *(v435 + v437);
        [v461 setConcatenateUtterances:{objc_msgSend(v460, "concatenateUtterances")}];

        v462 = *(v435 + v437);
        if (v578)
        {
          v463 = *(v0 + 1112);
          v464 = v462;
          v465 = sub_100008FD8(v463, &selRef_cpuContext);
          sub_100006DF4(v465, v466);
          if (v142)
          {
            v468 = 0xE000000000000000;
          }

          else
          {
            v468 = v467;
          }
        }

        else
        {
          v469 = v462;
          v468 = 0xE000000000000000;
        }

        v470 = *(v0 + 1088);
        v471 = sub_100046E4C();
        v468, v472, v473, v474, v475, v476, v477, v478;
        [v462 setCpuContext:v471];

        v479 = *(v435 + v437);
        [v479 setDetectUtterances:{objc_msgSend(v470, "isSingleUtteranceTask") ^ 1}];

        v480 = *(v435 + v437);
        [v479 setDisableAutoPunctuation:(sub_1000311A0() & 2) == 0];

        v481 = *(v435 + v437);
        [v479 setDisablePartialResults:(sub_1000311A0() & 4) == 0];

        v482 = *(v435 + v437);
        if (v439)
        {
          v483 = [v439 enableFullPayloadCorrection];
        }

        else
        {
          v483 = 0;
        }

        v484 = *(v0 + 1088);
        [v482 setEnableFullPayloadCorrection:v483];

        v485 = *(v435 + v437);
        [v485 setEnableVoiceCommands:{(objc_msgSend(v484, "flags") >> 9) & 1}];

        v486 = *(v435 + v437);
        v487 = [v484 endpointDetectionOptions];
        if (v487)
        {
          v488 = v487;
          [v487 detectAfterTime];
          v490 = v489;
        }

        else
        {
          v490 = 0.0;
        }

        [v486 setEndpointStart:v490];

        v491 = *(v435 + v437);
        if (v439)
        {
          v492 = [v439 farField];
        }

        else
        {
          v492 = 0;
        }

        [(EARSpeechRecognizer *)v491 setFarField:v492];

        [*(v435 + v437) setFormatAcrossUtterances:v440];
        v493 = *(v435 + v437);
        if (v578)
        {
          v494 = *(v0 + 1112);
          v495 = v493;
          v496 = sub_100008FD8(v494, &selRef_gpuContext);
          sub_100006DF4(v496, v497);
          if (v142)
          {
            v491 = 0xE000000000000000;
          }

          else
          {
            v491 = v498;
          }
        }

        else
        {
          v499 = v493;
          sub_1000311E0();
        }

        v500 = *(v0 + 1096);
        v501 = sub_100046E4C();
        v491, v502, v503, v504, v505, v506, v507, v508;
        [v493 setGpuContext:v501];

        [*(v435 + v437) setHighPriority:v557 & 1];
        v509 = *(v435 + v437);
        v510 = sub_1000306D8(v500, &selRef_inputOrigin);
        sub_100006DF4(v510, v511);
        if (v142)
        {
          v513 = 0xE000000000000000;
        }

        else
        {
          v513 = v512;
        }

        v514 = sub_100046E4C();
        v513, v515, v516, v517, v518, v519, v520, v521;
        [v509 setInputOrigin:v514];

        v522 = *(v435 + v437);
        *(v0 + 1616) = v522;
        v523 = v522;
        sub_100031144();

        return _swift_asyncLet_get(v524);
      }

      __break(1u);
LABEL_149:
      sub_100031228();
      v282 = sub_100008E88(v534, v535, v536, v537, v538, v539, v540, v541);
LABEL_57:
      v317 = v578;
      v319 = *v282->transaction;
      v318 = *v282->resultStream;
      if (v319 >= v318 >> 1)
      {
        sub_100031108(v318);
        sub_100031228();
        v282 = sub_100008E88(v542, v543, v544, v545, v546, v547, v548, v549);
      }

      *v282->transaction = v319 + 1;
      v320 = v282 + 16 * v319;
      *(v320 + 4) = v314;
      *(v320 + 5) = v316;
      v321 = 1;
      v294 = v576;
    }

    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    v316 = sub_100046D7C();

    sub_10000ECEC(&unk_10006FF00, &unk_10004D2C8);
    sub_100030F98();
    v379 = sub_10004737C();
    v380 = 0;
    v381 = v316 + 8;
    v574 = v316;
    sub_100031090();
    v11 = v390 & v389;
    v392 = (v391 + 63) >> 6;
    v569 = v393 + 64;
    if ((v390 & v389) != 0)
    {
      do
      {
        v316 = v379;
        v394 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_95:
        v398 = v394 | (v380 << 6);
        v399 = *v574->assets + 16 * v398;
        v274 = *v399;
        v400 = *(v399 + 8);
        v401 = *(*v574->languageStr + 8 * v398);

        v402 = [v401 integerValue];
        *(v569 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v398;
        v403 = (v316[6] + 16 * v398);
        *v403 = v274;
        v403[1] = v400;
        *(v316[7] + 8 * v398) = v402;
        v404 = v316[2];
        v405 = __OFADD__(v404, 1);
        v406 = v404 + 1;
        if (v405)
        {
          __break(1u);
          swift_once();
          v577 = *(v0 + 1112);
          v579 = *(v0 + 1312);
          v147 = *(v0 + 1104);
          v148 = *(v0 + 1096);
          v149 = *(v0 + 1088);
          v150 = off_100071650;
          sub_100046C2C();
          v151 = sub_100046E6C();
          v401[9] = &type metadata for String;
          v401[6] = v151;
          v401[7] = v152;
          v401[10] = sub_100046E5C();
          v401[11] = v153;
          swift_getErrorValue();
          v154 = *(v0 + 824);
          v155 = *(v0 + 832);
          v401[15] = v155;
          v156 = sub_100030C38(v401 + 12);
          (*(*(v155 - 8) + 16))(v156, v154, v155);
          sub_100046D8C();
          sub_100030C98(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);
          sub_100046A5C();
          v157 = *(v0 + 1056);
          swift_willThrow();

          sub_1000064CC(v579, &unk_10006FB00, &qword_10004C590);
          sub_10000AD94();

          sub_1000064CC(v157 + 8, &qword_10006FEB8, &qword_10004D268);
          sub_10003101C();
          if (v155)
          {

            sub_1000064CC(v148 + v400, &qword_10006FB80, &unk_10004D060);
            v147[1], v158, v159, v160, v161, v162, v163, v164;
          }

          else
          {

            v184 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr);
            v184, v185, v186, v187, v188, v189, v190, v191;
            *(v400 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles), v192, v193, v194, v195, v196, v197, v198;

            sub_1000064CC(v148 + v400, &qword_10006FB80, &unk_10004D060);
            v147[1], v199, v200, v201, v202, v203, v204, v205;

            v206 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
            v206, v207, v208, v209, v210, v211, v212, v213;
            v214 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
            v214, v215, v216, v217, v218, v219, v220, v221;
          }

          type metadata accessor for EARSpeechRecognizer(0);
          swift_deallocPartialClassInstance();
          sub_10000BD34(0, 0);

          sub_100004170();
          sub_100031144();

          __asm { BRAA            X1, X16 }
        }

        v379 = v316;
        v316[2] = v406;
      }

      while (v11);
    }

    v395 = v380;
    while (1)
    {
      v380 = v395 + 1;
      if (__OFADD__(v395, 1))
      {
        break;
      }

      if (v380 >= v392)
      {
        v574, v382, v383, v384, v385, v386, v387, v388;
        v262 = v558;
        goto LABEL_100;
      }

      ++v395;
      if (v381[v380])
      {
        v316 = v379;
        sub_100030F34();
        v11 = v397 & v396;
        goto LABEL_95;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_151:

  __break(1u);
  return _swift_asyncLet_finish(v550);
}

char *sub_100008CFC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006FDB8, &qword_10004D1A8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100008D2C()
{
  v1 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_10000BDE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_100046BBC();
  if (!sub_100004844(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = sub_100030FF0((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7, v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0);
}

uint64_t sub_100008E48(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  if (v9 != 1)
  {
    v9, a2, a3, a4, a5, a6, a7, a8;
  }

  return _swift_deallocObject(v8);
}

_TtC22localspeechrecognition19EARSpeechRecognizer *sub_100008E88(_TtC22localspeechrecognition19EARSpeechRecognizer *result, int64_t a2, void *a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->resultStream;
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

  v12 = *a4->transaction;
  if (v11 <= v12)
  {
    v13 = *a4->transaction;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->transaction = v12;
    *v14->resultStream = 2 * ((v15 - 32) / 16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  audioBufferListeners = v14->audioBufferListeners;
  v17 = a4->audioBufferListeners;
  if (v9)
  {
    if (v14 != a4 || &v17[16 * v12] <= audioBufferListeners)
    {
      memmove(audioBufferListeners, v17, 16 * v12);
    }

    *a4->transaction = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100008FA4(uint64_t a1, uint64_t a2)
{
  sub_100004D64(a1, a2);

  return sub_100046D0C();
}

uint64_t sub_100008FD8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_100046E5C();

  return v4;
}

uint64_t sub_10000905C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000ECEC(a3, a4);
  sub_10000417C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000090C8()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for EARModelContextDelegateInterface(uint64_t a1)
{
  result = qword_10006FC18;
  if (!qword_10006FC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  v8 = sub_100046BBC();
  sub_1000045DC(&v3[v7], 1, 1, v8);
  swift_beginAccess();
  sub_10000C3B0(a1, &v3[v7]);
  swift_endAccess();
  v9 = &v3[OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName];
  *v9 = a2;
  *(v9 + 1) = a3;
  *&v3[OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_pendingANECompilationContextEvents] = _swiftEmptyArrayStorage;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for EARModelContextDelegateInterface(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_10000619C(a1);
  return v10;
}

uint64_t sub_100009208()
{
  v649 = v0;
  if (*(v0 + 123) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v2 = sub_100030FA4();
    sub_100030A00(v2, v3);
    sub_100030FA4();
    isa = sub_100046B2C().super.isa;
    v4 = sub_100030FA4();
    sub_10000C198(v4, v5);
  }

  v6 = *(v0 + 202);
  v7 = *(v0 + 201);
  v8 = *(v0 + 198);
  v9 = *(v0 + 141);
  v10 = sub_100003730();
  [v10 v11];

  v12 = *(v9 + v7);
  v647 = v0;
  if (!v8)
  {
    v45 = v12;
    v6 = 0;
LABEL_17:
    v46 = *(v0 + 201);
    v47 = *(v0 + 197);
    v48 = *(v0 + 141);
    [v12 setRecognitionConfidenceSubtraction:v6];

    v49 = *(v48 + v46);
    if (v47)
    {
      v50 = *(v0 + 197);
      v51 = v49;
      v52.super.isa = sub_100046D6C().super.isa;
      v50, v53, v54, v55, v56, v57, v58, v59;
    }

    else
    {
      v60 = v49;
      v52.super.isa = 0;
    }

    v61 = *(v0 + 201);
    v62 = *(v0 + 141);
    v63 = *(v0 + 138);
    v64 = *(v0 + 136);
    [v49 setRecognitionReplacements:v52.super.isa];

    v65 = *(v62 + v61);
    [v65 setRecognizeEagerCandidates:{(objc_msgSend(v64, "flags") >> 2) & 1}];

    v66 = *(v62 + v61);
    [v66 setRecognizeEmoji:{objc_msgSend(v64, "flags") & 1}];

    v67 = *(v62 + v61);
    v68 = sub_100030478(v63, &selRef_rightContext);
    v69 = 0xE000000000000000;
    if (v68)
    {
      v70 = v68;
      sub_1000264B8(v68);
      v72 = v71;
      v70, v71, v73, v74, v75, v76, v77, v78;
      if (v72)
      {
        v69 = v72;
      }
    }

    v79 = *(v0 + 201);
    v80 = *(v0 + 141);
    v81 = *(v0 + 138);
    v82 = sub_100046E4C();
    v69, v83, v84, v85, v86, v87, v88, v89;
    [v67 setRightContext:v82];

    v90 = *(v80 + v79);
    v91 = sub_100030478(v81, &selRef_selectedText);
    if (v91)
    {
      v92 = v91;
      sub_1000264B8(v91);
      v94 = v93;
      v92, v93, v95, v96, v97, v98, v99, v100;
      if (v94)
      {
        v101 = v94;
      }

      else
      {
        v101 = 0xE000000000000000;
      }
    }

    else
    {
      v101 = 0xE000000000000000;
    }

    v102 = *(v0 + 201);
    v103 = *(v0 + 141);
    v104 = *(v0 + 136);
    v105 = (v103 + *(v0 + 171));
    v106 = sub_100046E4C();
    v101, v107, v108, v109, v110, v111, v112, v113;
    [v90 setSelectedText:v106];

    v114 = *(v103 + v102);
    v115 = v105[1];
    if (v115)
    {
      v116 = *v105;
    }

    else
    {
      v116 = 0;
    }

    if (v115)
    {
      v117 = v105[1];
    }

    else
    {
      v117 = 0xE000000000000000;
    }

    sub_1000304CC(v116, v117, v114, &selRef_setLeftContextText_);
    v118 = *(v103 + v102);
    [v118 setShouldGenerateVoiceCommandCandidates:{(objc_msgSend(v104, "flags") >> 8) & 1}];

    v119 = *(v103 + v102);
    v120 = sub_100026494();
    sub_10000B260(v120);
    v121 = 0;
    if (v122 >> 60 != 15)
    {
      v121 = sub_100046B2C().super.isa;
      v123 = sub_1000310AC();
      sub_10000C198(v123, v124);
    }

    v20 = v647;
    v125 = *(v647 + 201);
    v126 = *(v647 + 141);
    v127 = *(v647 + 136);
    v128 = sub_100003730();
    [v128 v129];

    v130 = *(v126 + v125);
    v131 = [v127 speechDetectionOptions];
    if (v131)
    {
      v132 = v131;
      sub_100025310();
    }

    v133 = *(v647 + 201);
    v134 = *(v647 + 141);
    v135 = *(v647 + 137);
    v136 = *(v647 + 136);
    v137 = sub_100003730();
    [v137 v138];

    v139 = *(v134 + v133);
    v140 = [v135 clientID];
    v141 = sub_100046E5C();
    v143 = v142;

    sub_1000304CC(v141, v143, v139, &selRef_setClientId_);
    p_type = &stru_10006AFF0.type;
    v145 = [v136 modelOptions];
    if (!v145 || (v146 = v145, v147 = [v145 customLm], v146, !v147))
    {
LABEL_84:
      type metadata accessor for TrialExperimentationAssetManager();
      swift_initStackObject();
      sub_1000325A8();
      v376 = sub_10000640C();
      if (v376 != 2)
      {
        v377 = v376 & 1;
        [*(*(v20 + 1128) + *(v20 + 1608)) setDisableContextualBiasing:v377];
        v378 = sub_100046D0C();
        v379 = sub_100046FFC();
        if (sub_100030F60(v379))
        {
          v380 = sub_100031348();
          *v380 = 67109120;
          *(v380 + 4) = v377;
          sub_10003103C();
          _os_log_impl(v381, v382, v383, v384, v380, 8u);
          sub_100004ACC();
        }
      }

      v385 = *(v20 + 1128);
      v386 = *(v20 + 1088);
      type metadata accessor for Instrumentation();
      *(v385 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart) = sub_10000ABC4();
      v387 = [v386 p_type[204]];
      v388 = _swiftEmptyArrayStorage;
      if (v387)
      {
        v389 = sub_10000AC34(v387);
        if (v389)
        {
          v388 = v389;
        }
      }

      v390 = [*(v20 + 1088) p_type[204]];
      if (!v390 || (v646 = sub_10000ACAC(v390)) == 0)
      {
        v646 = sub_100046D8C();
        0, v391, v392, v393, v394, v395, v396, v397;
      }

      v398 = [*(v20 + 1088) p_type[204]];
      if (v398)
      {
        v399 = v398;
        v400 = [v398 speechProfileURLs];

        sub_100030FA4();
        v401 = sub_100046EFC();
      }

      else
      {
        v401 = _swiftEmptyArrayStorage;
      }

      v402 = sub_100046D0C();
      v403 = sub_100046FFC();
      v404 = sub_100030FB0(v403);
      v638 = *(v20 + 1592);
      v642 = *(v20 + 1560);
      v412 = *(v20 + 1552);
      v413 = v20;
      v414 = *(v20 + 1512);
      v415 = v413[186];
      v633 = v413[179];
      v636 = v413[180];
      v416 = v413[178];
      v417 = v413[140];
      if (v404)
      {
        v418 = sub_100004A8C();
        *v418 = 134217984;
        *(v418 + 4) = sub_10000AD1C(v388);
        v414, v419, v420, v421, v422, v423, v424, v425;
        v417, v426, v427, v428, v429, v430, v431, v432;
        v415, v433, v434, v435, v436, v437, v438, v439;
        v412, v440, v441, v442, v443, v444, v445, v446;
        v633, v447, v448, v449, v450, v451, v452, v453;
        v416, v454, v455, v456, v457, v458, v459, v460;
        v636, v461, v462, v463, v464, v465, v466, v467;
        v638, v468, v469, v470, v471, v472, v473, v474;
        v642, v475, v476, v477, v478, v479, v480, v481;
        v388, v482, v483, v484, v485, v486, v487, v488;
        sub_100006B04();
        _os_log_impl(v489, v490, v491, v492, v418, 0xCu);
        sub_100002B44(v418);
      }

      else
      {
        v414, v405, v406, v407, v408, v409, v410, v411;
        v417, v493, v494, v495, v496, v497, v498, v499;

        v388, v500, v501, v502, v503, v504, v505, v506;
        v415, v507, v508, v509, v510, v511, v512, v513;
        v412, v514, v515, v516, v517, v518, v519, v520;
        v416, v521, v522, v523, v524, v525, v526, v527;
        v638, v528, v529, v530, v531, v532, v533, v534;
        v642, v535, v536, v537, v538, v539, v540, v541;
        v636, v542, v543, v544, v545, v546, v547, v548;
        v633, v549, v550, v551, v552, v553, v554, v555;
      }

      if (sub_10000AD40(v388))
      {
        v401, v556, v557, v558, v559, v560, v561, v562;
      }

      else
      {
        v563 = *v401->transaction;
        v401, v556, v557, v558, v559, v560, v561, v562;
        if (!v563)
        {
LABEL_104:
          v589 = *(v647 + 190);
          v590 = *(v647 + 141);
          v388, v564, v565, v566, v567, v568, v569, v570;
          v646, v591, v592, v593, v594, v595, v596, v597;
          v598 = (v590 + v589);
          objc_opt_self();
          v599 = *(v598 + 1);
          v647[124] = *v598;
          *(v647 + 125) = v599;
          *(v647 + 126) = 45;
          v647[127] = -1.7573882e159;
          *(v647 + 128) = 95;
          v647[129] = -1.7573882e159;
          v600 = 1;
          v630 = sub_1000169D0();
          sub_10004711C();
          v602 = v601;
          v603 = sub_100046E4C();
          v602, v604, v605, v606, v607, v608, v609, v610;
          v611 = sub_100031204();
          v613 = [v611 v612];

          if (v613)
          {
            sub_100046B6C();

            v600 = 0;
          }

          v614 = *(v647 + 193);
          v615 = v647[176];
          v616 = *(v647 + 175);
          v617 = *(v647 + 169);
          v618 = *(v647 + 144);
          v619 = *(v647 + 141);
          sub_1000045DC(v618, v600, 1, *(v647 + 170));
          swift_beginAccess();
          sub_100030E74(v618, v619 + v617, &qword_10006FB80, &unk_10004D060);
          swift_endAccess();
          mach_continuous_time();
          sub_1000042C4();
          sub_10000F774(v620, v621, v622, v623, v624, v625);
          v626 = [v616 processInfo];
          [v626 systemUptime];
          v628 = v627;

          *(v619 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelLoadTime) = v628 - v615;

          v40 = v647 + 2;

          return _swift_asyncLet_finish(v40);
        }
      }

      v571 = *(v647 + 201);
      v572 = *(v647 + 168);
      v573 = *(v647 + 141);
      v574 = *(v647 + 138);
      v575 = (v573 + *(v647 + 190));
      type metadata accessor for EARSpeechRecognizer(0);
      v576 = *(v573 + v572);
      v577 = *v575;
      v578 = v575[1];
      v579 = *(v573 + v571);
      v580 = v576;

      v581 = v579;
      sub_10000ADE0(v580, v388, v646, v574, v577, v578, v581);

      v578, v582, v583, v584, v585, v586, v587, v588;
      goto LABEL_104;
    }

    v18 = v147;
    v148 = sub_100046D0C();
    v149 = sub_100046FFC();
    v150 = &stru_10006AFF0.type;
    v645 = v18;
    if (os_log_type_enabled(v148, v149))
    {
      sub_1000310B8();
      v151 = sub_100004A8C();
      v152 = sub_100004A74();
      v648[0] = v152;
      *v151 = 136315138;
      v153 = [v18 languageModel];
      sub_100046ABC();

      sub_10000B850();
      sub_100030C98(v154, v155, &protocol conformance descriptor for URL);
      v18 = sub_1000473CC();
      v20 = v156;
      v157 = sub_100005BE0();
      (v136)(v157);
      v158 = sub_100031084();
      v160 = sub_100004EB4(v158, v20, v159);
      v161 = sub_1000066B8();
      v161, v162, v163, v164, v165, v166, v167, v168;
      *(v151 + 4) = v160;

      _os_log_impl(&_mh_execute_header, v148, v149, "Loading dynamic language model from %s", v151, 0xCu);
      sub_1000050D4(v152);
      v169 = v152;
      v150 = (&stru_10006AFF0 + 16);
      sub_100002B44(v169);
      sub_100030F44();
    }

    else
    {
    }

    sub_1000310B8();
    v170 = objc_opt_self();
    v171 = [v18 v150[254]];
    sub_100046ABC();

    v172 = sub_100046ADC();
    v174 = v173;
    v175 = sub_100005BE0();
    (v136)(v175);
    if (sub_100030538(v172, v174, v170))
    {
      sub_1000310B8();
      v176 = [v18 v150[254]];
      sub_100046ABC();

      v177 = sub_100046ADC();
      v179 = v178;
      v180 = sub_100005BE0();
      (v136)(v180);
      v181 = objc_allocWithZone(_EARAppLmArtifact);
      v182 = sub_10002CAC8(v177, v179);
      if (!v182)
      {
        goto LABEL_71;
      }

      v183 = *(v20 + 1608);
      v644 = v182;
      v184 = *(v20 + 1128);
      v185 = [*(v184 + v183) modelInfo];
      v186 = [v185 version];

      v187 = sub_100046E5C();
      v189 = v188;

      v190 = *(v184 + v183);
      v30 = v644;
      v191 = [v190 modelInfo];
      v192 = [v191 language];

      v193 = sub_100046E5C();
      v195 = v194;

      if ((sub_1000305EC(v187, v189, v193, v195, v644) & 1) == 0)
      {
        v246 = v18;
        v223 = sub_100046D0C();
        v247 = sub_100046FFC();
        if (!os_log_type_enabled(v223, v247))
        {

          goto LABEL_71;
        }

        v248 = *(v20 + 1496);
        v249 = *(v20 + 1240);
        v18 = sub_100004A8C();
        v20 = sub_100004A74();
        v648[0] = v20;
        *v18 = 136315138;
        v250 = [v246 languageModel];
        sub_100046ABC();

        sub_10000B850();
        sub_100030C98(v251, v252, &protocol conformance descriptor for URL);
        sub_1000473CC();
        v253 = sub_10000C134();
        v248(v253);
        v254 = sub_100030FA4();
        sub_100004EB4(v254, v255, v256);
        v257 = sub_100030F98();
        v257, v258, v259, v260, v261, v262, v263, v264;
        *(v18 + 4) = v249;

        _os_log_impl(&_mh_execute_header, v223, v247, "Dynamic LM at %s was out of sync with the current asset", v18, 0xCu);
        sub_1000050D4(v20);
        v265 = sub_1000066B8();
        sub_100002B44(v265);
        v266 = sub_100031084();
        sub_100002B44(v266);

        goto LABEL_70;
      }

      v196 = [v18 weight];
      v197 = &qword_10004D000;
      if (!v196)
      {
        v267 = [v644 loadLmHandle];
        if (!v267)
        {
LABEL_65:
          v288 = sub_100046D0C();
          v309 = sub_10004700C();
          if (sub_100030FB0(v309))
          {
            v310 = sub_1000090C8();
            *v310 = 0;
            sub_100006B04();
            _os_log_impl(v311, v312, v313, v314, v310, 2u);
            sub_100005408();
          }

          goto LABEL_67;
        }

        v268 = v267;
        v269 = v18;
        v270 = sub_100046D0C();
        v271 = sub_100046FFC();
        if (os_log_type_enabled(v270, v271))
        {
          v635 = *(v20 + 1496);
          v641 = v271;
          v20 = sub_100004A8C();
          v272 = sub_100004A74();
          v648[0] = v272;
          *v20 = 136315138;
          v273 = [v269 languageModel];
          sub_100046ABC();

          sub_10000B850();
          sub_100030C98(v274, v275, &protocol conformance descriptor for URL);
          sub_1000473CC();
          v276 = sub_100008F90();
          v635(v276);
          v30 = v644;
          v277 = v273;
          v197 = &qword_10004D000;
          v278 = sub_100004EB4(v277, v18, v648);
          v279 = sub_100031084();
          v279, v280, v281, v282, v283, v284, v285, v286;
          *(v20 + 4) = v278;

          _os_log_impl(&_mh_execute_header, v270, v641, "Loaded Dynamic LM: %s", v20, 0xCu);
          sub_1000050D4(v272);
          sub_100030F7C();
          v287 = sub_1000066B8();
          sub_100002B44(v287);
        }

        else
        {
        }

        v315 = *(*(v20 + 1128) + *(v20 + 1608));
        sub_10000ECEC(&qword_10006FEF8, &qword_10004D2C0);
        sub_10003121C();
        v316 = swift_allocObject();
        *(v316 + 16) = *(v197 + 14);
        *(v316 + 32) = v268;
        v317 = sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
        v318 = v315;
        v223 = v268;
        sub_100005BE0();
        sub_100046EEC();
        v319 = sub_100026494();
        v319, v320, v321, v322, v323, v324, v325, v326;
        [v318 setExtraLmList:v317];

        goto LABEL_70;
      }

      v198 = v196;
      v199 = [v644 loadLmHandleWithWeight:v196];
      if (v199)
      {
        v200 = v199;
        v201 = v18;
        v202 = v198;
        v203 = v201;
        v204 = v202;
        v205 = sub_100046D0C();
        v206 = sub_100046FFC();
        if (sub_100030FB0(v206))
        {
          v207 = v647;
          v632 = *(v647 + 187);
          v640 = v205;
          v208 = swift_slowAlloc();
          v634 = sub_100031348();
          v637 = sub_100004A74();
          v648[0] = v637;
          *v208 = 136315394;
          v631 = v201;
          v209 = [v203 languageModel];
          sub_100046ABC();

          sub_10000B850();
          sub_100030C98(v210, v211, &protocol conformance descriptor for URL);
          sub_1000473CC();
          v212 = sub_100008F90();
          v632(v212);
          v30 = v644;
          v213 = sub_100004EB4(v209, v18, v648);
          v214 = sub_100031084();
          v214, v215, v216, v217, v218, v219, v220, v221;
          *(v208 + 4) = v213;

          *(v208 + 12) = 2112;
          v222 = v204;
          *(v208 + 14) = v204;
          *v634 = v198;

          _os_log_impl(&_mh_execute_header, v640, v631, "Loaded Dynamic LM: %s with custom weight: %@", v208, 0x16u);
          sub_1000064CC(v634, &qword_1000704F0, &qword_10004CF40);
          sub_100030F7C();
          sub_1000050D4(v637);
          sub_100030F7C();
          sub_100030F44();
        }

        else
        {

          v222 = v204;
          v207 = v647;
        }

        v296 = *(*(v207 + 1128) + *(v207 + 1608));
        sub_10000ECEC(&qword_10006FEF8, &qword_10004D2C0);
        sub_10003121C();
        v297 = swift_allocObject();
        *(v297 + 16) = xmmword_10004D0E0;
        *(v297 + 32) = v200;
        v298 = sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
        v299 = v296;
        v300 = v200;
        sub_100005BE0();
        sub_100046EEC();
        v301 = sub_100026494();
        v301, v302, v303, v304, v305, v306, v307, v308;
        [v299 setExtraLmList:v298];

        v20 = v207;
LABEL_71:
        v327 = [v18 vocabulary];
        if (v327)
        {
          v328 = v327;
          v329 = *(v20 + 1472);
          v330 = *(v20 + 1224);
          v331 = *(v20 + 1208);
          v332 = *(v20 + 1192);
          sub_100046ABC();

          v333 = sub_1000310AC();
          v334(v333);
          v329(v331, v330, v332);
          v335 = sub_100046D0C();
          v336 = sub_100046FFC();
          v337 = os_log_type_enabled(v335, v336);
          v338 = v20;
          v339 = *(v20 + 1496);
          v340 = *(v338 + 1208);
          v341 = *(v338 + 1192);
          if (v337)
          {
            sub_100004A8C();
            v342 = sub_10000C394();
            v648[0] = v342;
            *v331 = 136315138;
            v343 = sub_100046ADC();
            v345 = v344;
            v346 = sub_100004EB4(v343, v344, v648);
            v345, v347, v348, v349, v350, v351, v352, v353;
            *(v331 + 4) = v346;
            v339(v340, v341);
            _os_log_impl(&_mh_execute_header, v335, v336, "Loading Dynamic Vocab from %s", v331, 0xCu);
            sub_1000050D4(v342);
            sub_100004ACC();
            sub_100005408();
          }

          else
          {

            v339(v340, v341);
          }

          v20 = v647;
          v354 = *(v647 + 200);
          v355 = sub_100046B1C();
          p_type = &stru_10006AFF0.type;
          v357 = v645;
          if (v354)
          {
            swift_errorRetain();
            swift_errorRetain();
            v358 = sub_100046D0C();
            v359 = sub_10004700C();
            if (sub_10000BD64(v359))
            {
              v360 = sub_100004A8C();
              v361 = sub_100031348();
              *v360 = 138412290;
              swift_errorRetain();
              v362 = _swift_stdlib_bridgeErrorToNSError();
              *(v360 + 4) = v362;
              *v361 = v362;

              _os_log_impl(&_mh_execute_header, v358, v359, "Failed to load Dynamic Vocab from file: %@", v360, 0xCu);
              sub_1000064CC(v361, &qword_1000704F0, &qword_10004CF40);
              sub_100004ACC();
              sub_100002B44(v360);
            }

            else
            {

              v357 = v358;
            }
          }

          else
          {
            v363 = v355;
            v364 = v356;
            v365 = sub_100046D0C();
            v366 = sub_100046FFC();
            if (sub_100030F60(v366))
            {
              v367 = sub_1000090C8();
              *v367 = 0;
              sub_10003103C();
              _os_log_impl(v368, v369, v370, v371, v367, 2u);
              sub_100004ACC();
            }

            v372 = *(v647 + 201);
            v373 = *(v647 + 141);

            v374 = *(v373 + v372);
            v375 = sub_100030F98();
            sub_100030594(v375, v364, v365);
            sub_10000C140(v363, v364);
          }

          (*(v647 + 187))(*(v647 + 153), *(v647 + 149));
        }

        else
        {

          p_type = (&stru_10006AFF0 + 16);
        }

        goto LABEL_84;
      }

      v223 = v198;
      v288 = sub_100046D0C();
      v289 = sub_10004700C();
      if (sub_100030FB0(v289))
      {
        v290 = sub_100004A8C();
        v18 = sub_100031348();
        *v290 = 138412290;
        *(v290 + 4) = v223;
        *v18 = v198;
        sub_100006B04();
        _os_log_impl(v291, v292, v293, v294, v290, 0xCu);
        sub_1000064CC(v18, &qword_1000704F0, &qword_10004CF40);
        v295 = sub_100031084();
        sub_100002B44(v295);
        sub_100030F44();

LABEL_67:
        goto LABEL_71;
      }
    }

    else
    {
      v223 = v18;
      v224 = sub_100046D0C();
      v225 = sub_10004700C();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = *(v20 + 1496);
        v227 = v150;
        v228 = sub_100004A8C();
        v18 = sub_100004A74();
        v648[0] = v18;
        *v228 = 136315138;
        v229 = [v223 v227[254]];
        sub_100046ABC();

        sub_10000B850();
        sub_100030C98(v230, v231, &protocol conformance descriptor for URL);
        v20 = sub_1000473CC();
        v233 = v232;
        v234 = sub_100005BE0();
        v226(v234);
        v235 = sub_1000066B8();
        v237 = sub_100004EB4(v235, v233, v236);
        v233, v238, v239, v240, v241, v242, v243, v244;
        *(v228 + 4) = v237;

        _os_log_impl(&_mh_execute_header, v224, v225, "Dynamic LM at %s was not valid", v228, 0xCu);
        sub_1000050D4(v18);
        v245 = sub_100031084();
        sub_100002B44(v245);
        sub_100002B44(v228);

        goto LABEL_71;
      }
    }

LABEL_70:
    goto LABEL_71;
  }

  v13 = *(v0 + 198);
  sub_10000ECEC(&unk_10006FEE0, &unk_10004D2B0);
  v14 = sub_10004737C();
  v15 = v13 + 64;
  sub_100031090();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v643 = v21 + 64;
  v645 = v13;
  v639 = v12;
  v22 = v12;
  v30 = 0;
  if (!v18)
  {
LABEL_7:
    v32 = v30;
    while (1)
    {
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v30 >= v20)
      {
        v645, v23, v24, v25, v26, v27, v28, v29;
        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        sub_100046D6C();
        sub_100026494();

        v0 = v647;
        v12 = v639;
        goto LABEL_17;
      }

      ++v32;
      if (*(v15 + 8 * v30))
      {
        sub_100030F34();
        v18 = v34 & v33;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  while (1)
  {
    v31 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v35 = v31 | (v30 << 6);
    v36 = (*(v645 + 48) + 16 * v35);
    v37 = *v36;
    v6 = v36[1];
    v38 = *(*(v645 + 56) + 8 * v35);
    v39 = objc_allocWithZone(NSNumber);

    v40 = [v39 initWithInteger:v38];
    *(v643 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v41 = (v14[6] + 16 * v35);
    *v41 = v37;
    v41[1] = v6;
    *(v14[7] + 8 * v35) = v40;
    v42 = v14[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    v14[2] = v44;
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return _swift_asyncLet_finish(v40);
}

rusage_info_t sub_10000ABC4()
{
  bzero(v2, 0x128uLL);
  v0 = getpid();
  proc_pid_rusage(v0, 4, v2);
  return v2[31];
}

uint64_t sub_10000AC34(void *a1)
{
  v2 = [a1 speechProfileContainers];

  if (!v2)
  {
    return 0;
  }

  sub_1000029E4(0, &qword_10006FE88, SFSpeechProfileContainer_ptr);
  v3 = sub_100046EFC();

  return v3;
}

uint64_t sub_10000ACAC(void *a1)
{
  v2 = [a1 userIdMask];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100046D7C();

  return v3;
}

uint64_t sub_10000AD1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10004736C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t type metadata accessor for EARSpeechRecognizer(uint64_t a1)
{
  result = qword_10006FDA0;
  if (!qword_10006FDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AD94()
{

  return swift_unknownObjectRelease();
}

BOOL sub_10000ADC0(uint64_t a1)
{

  return sub_1000472EC(v2 & 1, v1);
}

void sub_10000ADE0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10000B260(a4);
  if (v10 >> 60 == 15)
  {
    if (qword_10006DD30 != -1)
    {
      swift_once();
    }

    v11 = mach_continuous_time();
    sub_10000B2C4("ES: AOT Profile Load", 20, 2, 0, 0xE000000000000000, v11);
    v12 = objc_opt_self();
    v13 = sub_100046E4C();
    [v12 loadSpeechProfiles:a1 language:v13];

    v14 = [a1 allKeys];
    v15 = sub_100046EFC();

    sub_1000264F8(v15, &v52);
    v15, v16, v17, v18, v19, v20, v21, v22;
    if (!*(&v53 + 1))
    {
      goto LABEL_21;
    }

    sub_100026414(&v52, v54);
    swift_dynamicCast();
    if (qword_10006DD40 != -1)
    {
      swift_once();
    }

    v23 = sub_100046D1C();
    sub_100004D64(v23, qword_1000714B8);

    v24 = sub_100046D0C();
    v25 = sub_100046FFC();
    *(&v50 + 1), v26, v27, v28, v29, v30, v31, v32;
    if (os_log_type_enabled(v24, v25))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v54[0] = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_100004EB4(v50, *(&v50 + 1), v54);
      _os_log_impl(&_mh_execute_header, v24, v25, "Configuring recognizer with speech profile at path: %{private}s", v33, 0xCu);
      sub_1000050D4(v34);
    }

    v35 = sub_100046E4C();
    *(&v50 + 1), v36, v37, v38, v39, v40, v41, v42;
    v43 = [a1 objectForKey:v35];

    if (v43)
    {
      sub_10004712C();
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    v52 = v50;
    v53 = v51;
    if (*(&v51 + 1))
    {
      sub_100026414(&v52, v54);
      sub_1000029E4(0, &unk_10006FE98, _EARUserProfileContainer_ptr);
      swift_dynamicCast();
      [a7 setUserProfile:v49];
    }

    else
    {
LABEL_21:
      sub_1000064CC(&v52, &qword_10006FE90, &unk_10004CCD0);
    }

    v47 = mach_continuous_time();
    sub_10000F774("ES: AOT Profile Load", 20, 2, 0, 0xE000000000000000, v47);
  }

  else
  {
    sub_10000C198(v9, v10);
    if (qword_10006DD40 != -1)
    {
      swift_once();
    }

    v44 = sub_100046D1C();
    sub_100004D64(v44, qword_1000714B8);
    oslog = sub_100046D0C();
    v45 = sub_100046FFC();
    if (os_log_type_enabled(oslog, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v45, "Configuring recognizer with provided userProfileData rather than loading speech profiles", v46, 2u);
    }
  }
}

uint64_t sub_10000B260(void *a1)
{
  v1 = [a1 profileData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046B3C();

  return v3;
}

uint64_t sub_10000B2C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  v100 = a4;
  v103 = a5;
  v6 = a3;
  v8 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  v11 = sub_100046C6C();
  sub_100004E00();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000425C();
  v101 = v15 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14(&qword_10006DD38);
  }

  v20 = sub_100046D1C();
  sub_100004D64(v20, qword_1000714A0);
  v21 = sub_100046D0C();
  v22 = sub_100046FFC();
  v23 = os_log_type_enabled(v21, v22);
  v104 = a1;
  v102 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v98 = v19;
    v25 = v24;
    v26 = sub_100004A74();
    v105[0] = v26;
    *v25 = 136315138;
    v27 = sub_10004724C();
    v28 = v13;
    v29 = v11;
    v31 = v30;
    v32 = sub_100004EB4(v27, v30, v105);
    v33 = v31;
    v11 = v29;
    v13 = v28;
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Logging signpost begin event: %s", v25, 0xCu);
    sub_1000050D4(v26);
    sub_100002B44(v26);
    v19 = v98;
    sub_100002B44(v25);
  }

  v41 = sub_10004724C();
  v43 = v42;
  sub_100046C8C();
  v44 = sub_100046C4C();
  if (qword_10006DD50 != -1)
  {
    v44 = sub_1000040F0(&qword_10006DD50);
  }

  __chkstk_darwin(v44);
  *(&v98 - 4) = v19;
  *(&v98 - 3) = v41;
  *(&v98 - 2) = v43;
  sub_10000B9BC(sub_10000BA28);
  sub_10000BC08(v10);
  sub_10000BC70();
  sub_10000BCC4();
  sub_10000BD34(v45, v46);
  v47 = v103;

  v48 = sub_100046C8C();
  v49 = sub_10004709C();
  if ((sub_1000470FC() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v102)
  {
    v72 = v104;
    v73 = HIDWORD(v104);
    if (HIDWORD(v104))
    {
      __break(1u);
    }

    else
    {
      sub_100004AF4();
      if (v74)
      {
        __break(1u);
        goto LABEL_25;
      }

      v73 = v72 >> 16;
      if (v72 >> 16 <= 0x10)
      {
        if (v72 <= 0x7F)
        {
          v75 = v72 + 1;
LABEL_17:
          sub_1000053D8(v75);
          v43, v76, v77, v78, v79, v80, v81, v82;
          v47, v83, v84, v85, v86, v87, v88, v89;
          v64 = v105;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    if (v72 < 0x800)
    {
      v75 = (v72 >> 6) + ((v72 & 0x3F) << 8) + 33217;
      goto LABEL_17;
    }

LABEL_25:
    if (v73)
    {
      sub_10000BF1C();
      v75 = v96 + v97;
    }

    else
    {
      sub_100010618();
    }

    v47 = v103;
    goto LABEL_17;
  }

  v43, v50, v51, v52, v53, v54, v55, v56;
  v47, v57, v58, v59, v60, v61, v62, v63;
  v64 = v104;
  if (v104)
  {
LABEL_18:
    v90 = swift_slowAlloc();
    v91 = sub_100004A74();
    v105[0] = v91;
    *v90 = 134349314;
    sub_10000BD50(v99);
    *(v90 + 14) = sub_100004EB4(v92, v47, v93);
    v94 = sub_100046C5C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, v49, v94, v64, "%{signpost.description:begin_time,public}llu %s", v90, 0x16u);
    sub_1000050D4(v91);
    sub_100002B44(v91);
    sub_100002B44(v90);

    goto LABEL_19;
  }

  __break(1u);
LABEL_11:
  v47, v50, v51, v52, v53, v54, v55, v56;

  v43, v65, v66, v67, v68, v69, v70, v71;
LABEL_19:
  (*(v13 + 16))(v101, v19, v11);
  sub_100046CEC();
  swift_allocObject();
  sub_100046CDC();

  return (*(v13 + 8))(v19, v11);
}

uint64_t sub_10000B7E8(uint64_t a1, uint64_t a2)
{

  return sub_1000473EC();
}

void sub_10000B828()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_100046EBC(v3);
}

uint64_t sub_10000B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100046C6C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006DD48 != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(v11, a1, v8);
  swift_beginAccess();
  sub_10000BA48(v11, a2, a3, a4);
  return swift_endAccess();
}

void sub_10000B9BC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t sub_10000BA48@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v4;
  v10 = sub_1000041D0(a2, a3);
  v12 = v26[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_10000ECEC(&qword_10006EB10, &qword_10004CB70);
  if (sub_1000472EC(isUniquelyReferenced_nonNull_native, v14))
  {
    v17 = sub_1000041D0(a2, a3);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_10004740C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v16)
  {
    v19 = v26[7];
    v20 = sub_100046C6C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 32);
    v23 = *(v21 + 72) * v15;
    v22(a4, v19 + v23, v20);
    v22(v26[7] + v23, a1, v20);
    result = sub_1000045DC(a4, 0, 1, v20);
  }

  else
  {
    sub_10002608C(v15, a2, a3, a1, v26);
    v25 = sub_100046C6C();
    sub_1000045DC(a4, 1, 1, v25);
  }

  *v4 = v26;
  return result;
}

uint64_t sub_10000BC08(uint64_t a1)
{
  v2 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000BC70()
{
  result = qword_10006EB00;
  if (!qword_10006EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EB00);
  }

  return result;
}

uint64_t sub_10000BD34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_10000BD64(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_10000BDC0(uint64_t a1, uint64_t a2)
{

  return sub_100034548(a2);
}

_TtC22localspeechrecognition19EARSpeechRecognizer *sub_10000BDF8(_TtC22localspeechrecognition19EARSpeechRecognizer *result, int64_t a2, void *a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->resultStream;
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

  v12 = *a4->transaction;
  if (v11 <= v12)
  {
    v13 = *a4->transaction;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000ECEC(&unk_100070500, &qword_10004D5D8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->transaction = v12;
    *v14->resultStream = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  audioBufferListeners = v14->audioBufferListeners;
  v17 = a4->audioBufferListeners;
  if (v9)
  {
    if (v14 != a4 || &v17[v12] <= audioBufferListeners)
    {
      memmove(audioBufferListeners, v17, v12);
    }

    *a4->transaction = 0;
  }

  else
  {
    memcpy(audioBufferListeners, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_10000BF50@<X0>(uint64_t a1@<X8>)
{

  return sub_100004EB4(0xD000000000000048, ((a1 - 32) | 0x8000000000000000), (v1 - 120));
}

uint64_t sub_10000BF74(uint64_t a1, uint64_t a2)
{

  return sub_100046D5C();
}

uint64_t sub_10000BFA8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_10000BFC8()
{
  sub_10001FD20();
  v2 = v1;
  sub_100005C1C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100004B48();
  *v7 = v6;

  v8 = sub_100030FA4();
  sub_10000C198(v8, v9);

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  sub_100004170();

  return v10();
}

uint64_t sub_10000C140(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000C198(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C140(result, a2);
  }

  return result;
}

uint64_t sub_10000C1AC()
{
  sub_10000BDA0();
  sub_100005C1C();
  v1 = *v0;
  sub_100004B48();
  *v2 = v1;

  sub_100004170();

  return v3();
}

uint64_t sub_10000C290()
{
  sub_10000BDA0();
  sub_100005C1C();
  v1 = *v0;
  sub_100004B48();
  *v2 = v1;

  sub_100004170();

  return v3();
}

uint64_t sub_10000C374(uint64_t a1)
{

  return sub_1000473EC();
}

uint64_t sub_10000C394()
{

  return swift_slowAlloc();
}

uint64_t sub_10000C3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10000C450()
{
  sub_10000C654();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v23 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v14);
  sub_100004AE8();
  __chkstk_darwin(v15);
  v16 = sub_10000F33C();
  sub_100004E00();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100002B2C();
  v22 = v21 - v20;
  sub_10000612C(v13, v0);
  if (sub_100004844(v0, 1, v16) == 1)
  {
    sub_10000619C(v0);
  }

  else
  {
    (*(v18 + 32))(v22, v0, v16);
    v24(v22, v11, v23, v8);
    (*(v18 + 8))(v22, v16);
  }

  v25(v6, v4, 2, 0, 0xE000000000000000, v8);
  sub_100005B90();
}

uint64_t sub_10000C5F4()
{

  return sub_100046F1C();
}

void sub_10000C618(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_10000C638()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_100046EBC(v1);
}

uint64_t sub_10000C66C()
{

  return sub_100046F1C();
}

uint64_t sub_10000C690()
{

  return sub_100046AAC();
}

id sub_10000C6C4(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, _TtC22localspeechrecognition19EARSpeechRecognizer *a6, void *a7, _TtC22localspeechrecognition19EARSpeechRecognizer *a8, __int16 a9, void *a10, uint64_t a11, char a12)
{
  v62 = sub_100046E4C();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if (a3)
  {
    v60.super.isa = sub_100046D6C().super.isa;
    a3, v23, v24, v25, v26, v27, v28, v29;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30.super.isa = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v60.super.isa = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30.super.isa = sub_100046EEC().super.isa;
  a4, v31, v32, v33, v34, v35, v36, v37;
  if (a6)
  {
LABEL_4:
    v38 = sub_100046E4C();
    a6, v39, v40, v41, v42, v43, v44, v45;
    goto LABEL_8;
  }

LABEL_7:
  v38 = 0;
LABEL_8:
  if (a8)
  {
    v46.super.isa = sub_100046D6C().super.isa;
    a8, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
    v46.super.isa = 0;
  }

  v65 = 0;
  LOBYTE(v59) = a12 & 1;
  LOWORD(v58) = a9 & 0x101;
  v54 = [v63 initWithConfig:v62 overrides:v60.super.isa overrideConfigFiles:v30.super.isa language:v38 activeConfiguration:a7 modelLoadingOptions:v46.super.isa enableSpeakerCodeTraining:v58 supportEmojiRecognition:a10 voiceCommandActiveSet:a11 modelContextDelegate:v59 enableItn:&v65 error:?];

  if (v54)
  {
    v55 = v65;
  }

  else
  {
    v56 = v65;
    sub_100046A7C();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v54;
}

void sub_10000C964(uint64_t a2@<X8>)
{
  sub_10000C998();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_10000CA4C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CA84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

char *sub_10000CABC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006ECD0, &qword_10004CBB8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000CAEC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CB54()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CB8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CBE4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CC1C()
{
  swift_unknownObjectRelease();

  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CC8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

void sub_10000CCCC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10000CCDC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000CCEC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8);
}

uint64_t sub_10000CD30()
{
  sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  sub_10000417C();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CDBC()
{
  _Block_release(*(v0 + 24));

  sub_10003121C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10000CDF8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CE30()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000CE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000BFA8(*(a1 + 8));
  }

  v7 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  v8 = a1 + *(a3 + 32);

  return sub_100004844(v8, a2, v7);
}

uint64_t sub_10000CEFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
    v8 = v5 + *(a4 + 32);

    return sub_1000045DC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046BBC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000BFA8(*(a1 + *(a3 + 24) + 8));
  }

  return sub_100004844(a1, a2, v6);
}

uint64_t sub_10000D02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100046BBC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000045DC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void *sub_10000D0DC()
{
  type metadata accessor for Instrumentation();
  v0 = swift_allocObject();
  result = sub_10000E0C0();
  qword_100071498 = v0;
  return result;
}

uint64_t variable initialization expression of Instrumentation.selfLogger()
{
  v0 = type metadata accessor for SelfLoggingHelper();
  v1 = sub_10000F35C(v0);
  *(v1 + 16) = [objc_opt_self() sharedStream];
  return v1;
}

uint64_t variable initialization expression of Instrumentation.signpostLogger()
{
  type metadata accessor for SignpostHelper(0);
  swift_allocObject();
  return sub_10000F5F4();
}

uint64_t variable initialization expression of Instrumentation.powerLogger()
{
  type metadata accessor for PowerlogHelper();
  sub_10000C5E8();

  return swift_allocObject();
}

uint64_t variable initialization expression of Instrumentation.coreAnalyticsLogger()
{
  type metadata accessor for CoreAnalyticsLoggingHelper();
  sub_10000C5E8();

  return swift_allocObject();
}

uint64_t variable initialization expression of Instrumentation.ondeviceRecordLogger()
{
  v0 = type metadata accessor for OndeviceRecordHelper();
  result = sub_10000F35C(v0);
  *(result + 16) = 0;
  return result;
}

void sub_10000D238()
{
  sub_10000C654();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v8);
  sub_100004AE8();
  __chkstk_darwin(v9);
  v11 = &v87 - v10;
  v12 = sub_100046BBC();
  sub_100004E00();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002B2C();
  v18 = v17 - v16;
  sub_10000612C(v7, v11);
  if (sub_100004844(v11, 1, v12) == 1)
  {
    sub_10000619C(v11);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    sub_100013AA0(v18, v5, v3, v1);
    (*(v14 + 8))(v18, v12);
  }

  if (v1 >> 62)
  {
    v19 = sub_10004736C();
  }

  else
  {
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 == 2)
  {
    sub_100026424();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v20 = sub_10004725C();
    }

    else
    {
      v20 = *(v1 + 32);
    }

    v21 = v20;
    sub_100026424();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v22 = sub_10004725C();
    }

    else
    {
      v22 = *(v1 + 40);
    }

    v34 = v22;
    v35 = [v21 startedOrChanged];
    if (v35)
    {
      v36 = v35;
      if (([v35 exists] & 1) != 0 && (sub_10000F328(), v87 = v37, v88 = 0xE90000000000003DLL, v89._countAndFlagsBits = sub_100013084(v38), v39 = v89._object, sub_100046EBC(v89), v39, v40, v41, v42, v43, v44, v45, v46, v47 = v87, v48 = v88, v50 = sub_10001315C(v49), sub_10000B2C4("ES: ANE Model Init", 18, 2, v47, v48, v50), v48, v51, v52, v53, v54, v55, v56, v57, (v58 = objc_msgSend(v34, "ended")) != 0))
      {
        v59 = v58;
        v60 = [v58 exists];
        if (v60)
        {
          v87 = 0x656D616E656C6946;
          v88 = 0xE90000000000003DLL;
          v90._countAndFlagsBits = sub_100013084(v60);
          object = v90._object;
          sub_100046EBC(v90);
          object, v62, v63, v64, v65, v66, v67, v68;
          v69 = v87;
          v70 = v88;
          v72 = sub_10001315C(v71);
          sub_10000F774("ES: ANE Model Init", 18, 2, v69, v70, v72);
          v70, v73, v74, v75, v76, v77, v78, v79;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else if (v19 >= 1)
  {
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v23 = sub_100046D1C();
    sub_100004D64(v23, qword_1000714A0);

    v24 = sub_100046D0C();
    v25 = sub_10004700C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = sub_10000AD40(v1);
      v1, v27, v28, v29, v30, v31, v32, v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected pending ane model initialization event count %ld", v26, 0xCu);
    }

    else
    {

      v1, v80, v81, v82, v83, v84, v85, v86;
    }
  }

  sub_100005B90();
}

void sub_10000D6E0()
{
  sub_10000C654();
  v32 = v1;
  v33 = v2;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v14);
  sub_100004AE8();
  __chkstk_darwin(v15);
  v16 = sub_10000F33C();
  sub_100004E00();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100002B2C();
  v22 = v21 - v20;
  sub_10000612C(v13, v0);
  if (sub_100004844(v0, 1, v16) == 1)
  {
    sub_10000619C(v0);
  }

  else
  {
    (*(v18 + 32))(v22, v0, v16);
    v31(v22, v11, v9, v7);
    (*(v18 + 8))(v22, v16);
  }

  sub_10000F328();
  v34 = v23;
  v35._countAndFlagsBits = v5;
  v35._object = v32;
  sub_100046EBC(v35);
  v33("ES: ANE Model Init", 18, 2, v34, 0xE90000000000003DLL, v7);
  0xE90000000000003DLL, v24, v25, v26, v27, v28, v29, v30;
  sub_100005B90();
}

void sub_10000D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C654();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v26);
  sub_100004AE8();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = sub_100046BBC();
  sub_100004E00();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100002B2C();
  v36 = v35 - v34;
  sub_10000612C(v25, v29);
  if (sub_100004844(v29, 1, v30) == 1)
  {
    sub_10000619C(v29);
  }

  else
  {
    (*(v32 + 32))(v36, v29, v30);
    sub_100013E6C();
    (*(v32 + 8))(v36, v30);
  }

  sub_10000F774("ES: JIT Profile Build Load", 26, 2, 0, 0xE000000000000000, v23);
  sub_100005B90();
}

void sub_10000DAAC(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, void *a10, unsigned __int8 a11, void *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, uint64_t a17, _TtC22localspeechrecognition19EARSpeechRecognizer *a18, void *a19, void *a20, char a21, unint64_t a22, char a23)
{
  v63 = a2;
  v64 = a3;
  v65 = a10;
  v66 = a4;
  v29 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v29);
  sub_100004AE8();
  __chkstk_darwin(v30);
  v32 = &v50 - v31;
  v33 = sub_100046BBC();
  sub_100004E00();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_100002B2C();
  v39 = v38 - v37;
  sub_10000612C(a1, v32);
  if (sub_100004844(v32, 1, v33) == 1)
  {
    sub_10000619C(v32);
    v40 = v65;
  }

  else
  {
    v61 = a7;
    v62 = a6;
    v54 = a19;
    v55 = a20;
    v52 = a17;
    v53 = a18;
    v51 = a16;
    v59 = a14;
    v60 = a15;
    v57 = a12;
    v58 = a13;
    v56 = a11;
    (*(v35 + 32))(v39, v32, v33);
    a7 = v61;
    a6 = v62;
    v40 = v65;
    sub_100013F24(v39, v63, v64, v62, v61, a8, v65, v56 & 1, a9, v57, v58, v59, v60, v51 & 1, v52, v53, v54, v55, a21 & 1, a22, a23);
    (*(v35 + 8))(v39, v33);
  }

  v41 = HIBYTE(a5) & 0xF;
  v42 = v66;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v41 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
  }

  else
  {
    a5 = 0x800000010004DC00;
    v42 = 0xD000000000000018;
  }

  sub_100016CD0(v42, a5, a6, a7, a8, v40);
  a5, v43, v44, v45, v46, v47, v48, v49;
}

uint64_t sub_10000DD78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v6);
  sub_100004AE8();
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_100046BBC();
  sub_100004E00();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002B2C();
  v16 = v15 - v14;
  sub_10000612C(a1, v9);
  if (sub_100004844(v9, 1, v10) == 1)
  {
    return sub_10000619C(v9);
  }

  (*(v12 + 32))(v16, v9, v10);
  sub_10001597C(v16, a2, a3);
  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_10000DEE0(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

Swift::Int sub_10000DF24(unsigned __int8 a1)
{
  sub_10004745C();
  sub_10004746C(a1 + 1);
  return sub_10004748C();
}

Swift::Int sub_10000DFAC(uint64_t a1, unsigned __int8 a2)
{
  sub_10004745C();
  sub_10004746C(a2 + 1);
  return sub_10004748C();
}

uint64_t sub_10000DFF4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000E020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DF04(*v1);
  *a1 = result;
  return result;
}

void *Instrumentation.deinit()
{

  return v0;
}

uint64_t Instrumentation.__deallocating_deinit()
{
  Instrumentation.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_10000E0C0()
{
  v1 = v0;
  v2 = type metadata accessor for SelfLoggingHelper();
  v3 = sub_10000F35C(v2);
  *(v3 + 16) = [objc_opt_self() sharedStream];
  v1[2] = v3;
  type metadata accessor for SignpostHelper(0);
  swift_allocObject();
  v1[3] = sub_10000F5F4();
  type metadata accessor for PowerlogHelper();
  sub_10000C5E8();
  v1[4] = swift_allocObject();
  type metadata accessor for CoreAnalyticsLoggingHelper();
  sub_10000C5E8();
  v1[5] = swift_allocObject();
  v4 = type metadata accessor for OndeviceRecordHelper();
  v5 = sub_10000F35C(v4);
  *(v5 + 16) = 0;
  v1[6] = v5;
  return v1;
}

_TtC22localspeechrecognition19EARSpeechRecognizer **RequestEndMetrics.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[13], v16, v17, v18, v19, v20, v21, v22;
  v8[14], v23, v24, v25, v26, v27, v28, v29;
  v8[15], v30, v31, v32, v33, v34, v35, v36;
  v8[21], v37, v38, v39, v40, v41, v42, v43;
  v8[24], v44, v45, v46, v47, v48, v49, v50;
  v8[26], v51, v52, v53, v54, v55, v56, v57;
  v8[29], v58, v59, v60, v61, v62, v63, v64;
  v8[39], v65, v66, v67, v68, v69, v70, v71;
  v8[41], v72, v73, v74, v75, v76, v77, v78;
  v8[43], v79, v80, v81, v82, v83, v84, v85;
  return v8;
}

uint64_t RequestEndMetrics.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  RequestEndMetrics.deinit(a1, a2, a3, a4, a5, a6, a7, a8);

  return _swift_deallocClassInstance(v8, 365, 7);
}

uint64_t getEnumTagSinglePayload for Instrumentation.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Instrumentation.CompletionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10000E42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000E44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_10000E48C()
{
  result = qword_10006E770;
  if (!qword_10006E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E770);
  }

  return result;
}

uint64_t sub_10000E4E0(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7B0, type metadata accessor for SFSpeechError, &unk_10004C824);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E54C(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7B0, type metadata accessor for SFSpeechError, &unk_10004C824);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E5B8(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E650(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7F0, type metadata accessor for LSRError, &unk_10004C6F4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E6BC(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7F0, type metadata accessor for LSRError, &unk_10004C6F4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E728(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E7A8(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000E814(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000E880(void *a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000E910(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000E9A0(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000EA0C(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000EA78(void *a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000EB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004745C();
  sub_100046DAC();
  return sub_10004748C();
}

uint64_t sub_10000EBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError, &unk_10004C868);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError, &unk_10004C978);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000ECEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000EDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000EFB0()
{
  result = qword_10006E7D8;
  if (!qword_10006E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E7D8);
  }

  return result;
}

void sub_10000F1C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000F33C()
{

  return sub_100046BBC();
}

uint64_t sub_10000F35C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t initializeBufferWithCopyOfBuffer for VoiceCommandDebugInfoAggregated(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000F560()
{
  sub_100046C6C();
  result = sub_100046D8C();
  off_10006E980 = result;
  return result;
}

_DWORD *sub_10000F5A4()
{
  type metadata accessor for _Lock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_10006E988 = v0;
  return result;
}

uint64_t sub_10000F5F4()
{
  v1 = sub_100046D1C();
  sub_100004E00();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B2C();
  v7 = v6 - v5;
  v8 = sub_100046C9C();
  sub_100004E00();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002B2C();
  v14 = v13 - v12;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14(&qword_10006DD38);
  }

  v15 = sub_100004D64(v1, qword_1000714A0);
  (*(v3 + 16))(v7, v15, v1);
  sub_100046C7C();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter, v14, v8);
  return v0;
}

uint64_t sub_10000F774(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC22localspeechrecognition19EARSpeechRecognizer *a5, uint64_t a6)
{
  v137 = a6;
  v138 = a4;
  v7 = a3;
  sub_100046CAC();
  sub_100004E00();
  v135 = v10;
  v136 = v9;
  __chkstk_darwin(v9);
  sub_100002B2C();
  v134 = v12 - v11;
  v13 = sub_100046C6C();
  sub_100004E00();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000425C();
  v142 = v17 - v18;
  v20 = __chkstk_darwin(v19);
  v140 = &v133 - v21;
  __chkstk_darwin(v20);
  v23 = &v133 - v22;
  v24 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  __chkstk_darwin(v24 - 8);
  sub_10000425C();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v145 = &v133 - v29;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14(&qword_10006DD38);
  }

  v30 = sub_100046D1C();
  sub_100004D64(v30, qword_1000714A0);
  v31 = sub_100046D0C();
  v32 = sub_100046FFC();
  v33 = os_log_type_enabled(v31, v32);
  v141 = a5;
  v143 = a1;
  v144 = v7;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = sub_100004A74();
    v139 = v23;
    v36 = v13;
    v37 = v35;
    v146[0] = v35;
    *v34 = 136315138;
    v38 = sub_10004724C();
    v39 = v15;
    v41 = v40;
    v42 = sub_100004EB4(v38, v40, v146);
    v43 = v41;
    v15 = v39;
    v43, v44, v45, v46, v47, v48, v49, v50;
    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Logging signpost end event: %s", v34, 0xCu);
    sub_1000050D4(v37);
    v51 = v37;
    v13 = v36;
    v23 = v139;
    sub_100002B44(v51);
    sub_100002B44(v34);
  }

  v52 = sub_10004724C();
  v54 = v53;
  v55 = v145;
  sub_1000045DC(v145, 1, 1, v13);
  if (qword_10006DD50 != -1)
  {
    sub_1000040F0(&qword_10006DD50);
  }

  v56 = *(off_10006E988 + 2);

  os_unfair_lock_lock(v56);
  sub_10000FE64(v55, v52, v54);
  os_unfair_lock_unlock(v56);
  v54, v57, v58, v59, v60, v61, v62, v63;
  sub_100010538(v55, v27);
  if (sub_100004844(v27, 1, v13) != 1)
  {
    (*(v15 + 32))(v23, v27, v13);
    (*(v15 + 16))(v140, v23, v13);
    sub_100046CEC();
    swift_allocObject();
    sub_100046CDC();
    sub_10000BC70();
    sub_10000BCC4();
    sub_10000BD34(v71, v72);
    v73 = v141;

    v74 = v23;
    v75 = sub_100046C8C();
    sub_100046CCC();
    v76 = sub_10004708C();
    if ((sub_1000470FC() & 1) == 0)
    {
LABEL_13:
      v73, v77, v78, v79, v80, v81, v82, v83;

      v54, v91, v92, v93, v94, v95, v96, v97;
      v98 = *(v15 + 8);
      v98(v142, v13);
      v98(v74, v13);
LABEL_24:
      v55 = v145;
      return sub_10000BC08(v55);
    }

    v139 = v74;
    if ((v144 & 1) == 0)
    {
      v54, v77, v78, v79, v80, v81, v82, v83;
      v141, v84, v85, v86, v87, v88, v89, v90;
      if (!v143)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_20:
      v117 = v15;

      v118 = v134;
      sub_100046CFC();

      v120 = v135;
      v119 = v136;
      if ((*(v135 + 88))(v118, v136) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v121 = 0;
        v122 = "[Error] Interval already ended";
      }

      else
      {
        (*(v120 + 8))(v118, v119);
        v122 = "%{signpost.description:end_time,public}llu %s";
        v121 = 2;
      }

      v123 = swift_slowAlloc();
      v124 = sub_100004A74();
      v146[0] = v124;
      *v123 = v121;
      *(v123 + 1) = v121;
      *(v123 + 2) = 2050;
      sub_10000BD50(v137);
      *(v123 + 14) = sub_100004EB4(v125, v141, v126);
      v127 = v142;
      v128 = sub_100046C5C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, v76, v128, v143, v122, v123, 0x16u);
      sub_1000050D4(v124);
      sub_100002B44(v124);
      sub_100002B44(v123);

      v129 = *(v117 + 8);
      v129(v127, v13);
      v129(v139, v13);
      goto LABEL_24;
    }

    v99 = v143;
    v100 = HIDWORD(v143);
    if (HIDWORD(v143))
    {
      __break(1u);
    }

    else
    {
      sub_100004AF4();
      if (v101)
      {
        __break(1u);
        goto LABEL_32;
      }

      v100 = v99 >> 16;
      if (v99 >> 16 <= 0x10)
      {
        if (v99 <= 0x7F)
        {
          v102 = v99 + 1;
LABEL_19:
          sub_1000053D8(v102);
          v54, v103, v104, v105, v106, v107, v108, v109;
          v141, v110, v111, v112, v113, v114, v115, v116;
          v143 = v146;
          goto LABEL_20;
        }

LABEL_28:
        if (v99 < 0x800)
        {
          v131 = (v99 >> 6) + ((v99 & 0x3F) << 8);
          v132 = 33217;
LABEL_30:
          v102 = v131 + v132;
          goto LABEL_19;
        }

LABEL_32:
        if (!v100)
        {
          sub_100010618();
          goto LABEL_19;
        }

        sub_10000BF1C();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v54, v64, v65, v66, v67, v68, v69, v70;
  sub_10000BC08(v27);
  return sub_10000BC08(v55);
}

uint64_t sub_10000FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_10006DD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_10006E980;
  if (*(off_10006E980 + 2) && (v10 = sub_1000041D0(a2, a3), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = v9[7];
    v14 = sub_100046C6C();
    (*(*(v14 - 8) + 16))(v8, v13 + *(*(v14 - 8) + 72) * v12, v14);
    v15 = v8;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_100046C6C();
    v15 = v8;
    v16 = 1;
  }

  sub_1000045DC(v15, v16, 1, v17);
  swift_endAccess();
  return sub_1000105A8(v8, a1);
}

void sub_10000FFF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC22localspeechrecognition19EARSpeechRecognizer *a5, uint64_t a6)
{
  v7 = a3;
  v8 = sub_100046C6C();
  sub_100004E00();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002B2C();
  v14 = v13 - v12;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14(&qword_10006DD38);
  }

  v15 = sub_100046D1C();
  sub_100004D64(v15, qword_1000714A0);
  v16 = sub_100046D0C();
  v17 = sub_100046FFC();
  v68 = v7;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = sub_100004A74();
    v70 = v19;
    *v18 = 136315138;
    v20 = sub_10004724C();
    v22 = v21;
    v23 = v14;
    v24 = v10;
    v25 = a5;
    v26 = v8;
    v27 = sub_100004EB4(v20, v21, &v70);
    v22, v28, v29, v30, v31, v32, v33, v34;
    *(v18 + 4) = v27;
    v8 = v26;
    a5 = v25;
    v10 = v24;
    v14 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Logging signpost event: %s", v18, 0xCu);
    sub_1000050D4(v19);
    sub_100002B44(v19);
    sub_100002B44(v18);
  }

  sub_100046C8C();
  sub_100046C4C();
  sub_10000BC70();
  sub_10000BCC4();
  sub_10000BD34(v35, v36);

  v37 = sub_100046C8C();
  v38 = sub_1000470AC();
  if ((sub_1000470FC() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v68 & 1) == 0)
  {
    a5, v39, v40, v41, v42, v43, v44, v45;
    v46 = a1;
    if (!a1)
    {
      __break(1u);
LABEL_9:

      a5, v47, v48, v49, v50, v51, v52, v53;
LABEL_15:
      (*(v10 + 8))(v14, v8);
      return;
    }

LABEL_14:
    v63 = swift_slowAlloc();
    v64 = sub_100004A74();
    v70 = v64;
    *v63 = 134349314;
    *(v63 + 4) = a6;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_100004EB4(a4, a5, &v70);
    v65 = sub_100046C5C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v65, v46, "%{signpost.description:event_time,public}llu %s", v63, 0x16u);
    sub_1000050D4(v64);
    sub_100002B44(v64);
    sub_100002B44(v63);

    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004AF4();
  if (!v62)
  {
    if (v61 >> 16 <= 0x10)
    {
      a5, v54, v55, v56, v57, v58, v59, v60;
      v46 = &v70;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t SignpostHelper.deinit()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter;
  sub_100046C9C();
  sub_100004110();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SignpostHelper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter;
  sub_100046C9C();
  sub_100004110();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SignpostHelper(uint64_t a1)
{
  result = qword_10006E9B8;
  if (!qword_10006E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010474(uint64_t a1)
{
  result = sub_100046C9C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100010538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000105A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10001062C(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3)
{
  v4 = v3;
  v7 = sub_100046C3C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_100046E3C();
  __chkstk_darwin(v9 - 8);
  a3, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_100046C1C();
  v19 = v18;
  sub_100010FAC();
  v20 = sub_10001089C(v17, v19);
  if (v20)
  {
    *&v4[OBJC_IVAR____TtC22localspeechrecognition23EARFullPayloadCorrector_fullPayloadCorrectorInstance] = v20;
    v24.receiver = v4;
    v24.super_class = type metadata accessor for EARFullPayloadCorrector();
    v21 = objc_msgSendSuper2(&v24, "init");
    (*(v8 + 8))(a1, v7);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v21 = off_100071650;
    v22 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_100046D5C();
    swift_willThrow();
    (*(v8 + 8))(a1, v7);
    type metadata accessor for EARFullPayloadCorrector();
    swift_deallocPartialClassInstance();
  }

  return v21;
}

id sub_10001089C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_100046E4C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v3 initWithLanguage:v4];

  return v12;
}

void sub_100010914(uint64_t a1, uint64_t a2, Class a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000002ALL, 0x800000010004DE60, v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "EARFullPayloadCorrector.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = *(v6 + OBJC_IVAR____TtC22localspeechrecognition23EARFullPayloadCorrector_fullPayloadCorrectorInstance);
  v16 = sub_100046E4C();
  if (a3)
  {
    a3 = sub_100046D6C().super.isa;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v19[4] = sub_100010FF0;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100010D40;
  v19[3] = &unk_100065C48;
  v18 = _Block_copy(v19);

  [v15 rewritePostITNOutput:v16 withOptions:a3 completionHandler:v18];
  _Block_release(v18);
}

void sub_100010B78(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, void (*a5)(void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000002ALL, 0x800000010004DE60, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "EARFullPayloadCorrector.%s replying", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = objc_allocWithZone(EARFullPayloadCorrectionResult);

  swift_errorRetain();
  v16 = sub_100011010(a1, a2, a3, a4);
  a5();
}

void sub_100010D40(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_100046E5C();
    v9 = v8;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_100046D7C();
  }

LABEL_4:

  v10 = a4;
  v6(v7, v9, v5, a4);

  v5, v11, v12, v13, v14, v15, v16, v17;

  v9, v18, v19, v20, v21, v22, v23, v24;
}

id sub_100010F44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EARFullPayloadCorrector();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100010FAC()
{
  result = qword_10006EBA8;
  if (!qword_10006EBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EBA8);
  }

  return result;
}

uint64_t sub_100010FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100011010(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = sub_100046E4C();
    a2, v9, v10, v11, v12, v13, v14, v15;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16.super.isa = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16.super.isa = sub_100046D6C().super.isa;
  a3, v17, v18, v19, v20, v21, v22, v23;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v24 = sub_100046A6C();

LABEL_8:
  v25 = [v4 initWithResult:v8 loggingInfo:v16.super.isa error:v24];

  return v25;
}

uint64_t sub_1000110FC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100046C3C();
  sub_100004250(v4);
  v3[7] = swift_task_alloc();
  v5 = sub_100046E3C();
  sub_100004250(v5);
  v3[8] = swift_task_alloc();
  sub_100005BF8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000111B0()
{
  super_class = v0[2].super_class;
  receiver = v0[3].receiver;
  v3 = v0[2].receiver;
  v4 = &receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners];
  sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_10000206C();
  v5 = sub_100046D8C();
  *v4 = 0;
  *(v4 + 1) = v5;
  v6 = (v4 + 8);
  v103 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream] = 0;
  v106 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector] = 0;
  v7 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales] = _swiftEmptyArrayStorage;
  v104 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo] = super_class;
  v105 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions] = v3;
  v8 = objc_opt_self();
  v9 = super_class;
  v10 = v3;
  v11 = [v8 sharedInstance];
  v102 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager] = v11;
  v12 = v11;
  v13 = [(objc_class *)v9 clientID];
  if (!v13)
  {
    sub_100046E5C();
    v15 = v14;
    v13 = sub_100046E4C();
    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  v23 = [v12 installedLanguageDetectorAssetWithClientID:v13];

  if (!v23)
  {
    v101 = v7;
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v49 = v0[3].super_class;
    v50 = off_100071650;
    v51 = off_100071650;
    sub_100046C2C();
    sub_100005BF8();
    sub_100004124(v52, v53, v54, v50, v49);
    sub_10004707C();
    sub_100046D5C();
    goto LABEL_22;
  }

  v25 = v0[2].receiver;
  v24 = v0[2].super_class;
  v26 = sub_100046E5C();
  v28 = v27;

  v29 = [v25 useVAD];
  v30 = [(objc_class *)v24 clientID];
  v31 = sub_100046E5C();
  v33 = v32;

  if (v31 == 0xD000000000000015 && 0x800000010004E0F0 == v33)
  {
    v33, v34, v35, 0x800000010004E0F0, v36, v37, v38, v39;
  }

  else
  {
    v41 = sub_1000473EC();
    v33, v42, v43, v44, v45, v46, v47, v48;
    if ((v41 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v29 = 1;
LABEL_15:
  sub_1000029E4(0, &unk_10006EE20, _EARLanguageDetectorV2_ptr);

  v108._countAndFlagsBits = 0x6F7463657465642FLL;
  v108._object = 0xEE006E6F736A2E72;
  sub_100046EBC(v108);
  v28, v55, v56, v57, v58, v59, v60, v61;
  v62 = sub_100011758(v26, v28, v29);
  v63 = *&receiver[v106];
  *&receiver[v106] = v62;

  v64 = *&receiver[v106];
  if (v64)
  {
    v66 = v0[2].super_class;
    v65 = v0[3].receiver;
    v67 = v0[2].receiver;
    v68 = [v64 supportedLocales];
    v69 = sub_100046EFC();

    v70 = *&receiver[v7];
    *&receiver[v7] = v69;
    v70, v71, v72, v73, v74, v75, v76, v77;
    v78 = type metadata accessor for EARLanguageDetector();
    v0[1].receiver = v65;
    v0[1].super_class = v78;
    v79 = objc_msgSendSuper2(v0 + 1, "init");

    v80 = v0->super_class;

    return v80(v79);
  }

  v101 = v7;
  v82 = objc_opt_self();
  sub_100046DCC();
  if (qword_10006DD78 != -1)
  {
    sub_100004E34(&qword_10006DD78);
  }

  v83 = v0[3].super_class;
  v84 = off_100071650;
  v85 = off_100071650;
  sub_100046C2C();
  sub_100005BF8();
  v89 = sub_100004124(v86, v87, v88, v84, v83);
  sub_100012FF0(500, v89, v90, v82);
LABEL_22:
  v91 = v0[2].super_class;
  v92 = v0[2].receiver;
  swift_willThrow();

  sub_100005808(v6, &qword_10006EE18, &unk_10004CC10);
  *&receiver[v101], v93, v94, v95, v96, v97, v98, v99;
  type metadata accessor for EARLanguageDetector();
  swift_deallocPartialClassInstance();

  v100 = v0->super_class;

  return v100();
}

id sub_100011758(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, char a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_100046E4C();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v14 = [v5 initWithConfigFile:v6 useNNVad:a3 & 1];

  return v14;
}

uint64_t sub_1000117D4()
{
  v1 = [objc_allocWithZone(_EARLanguageDetectorV2RequestOptions) init];
  v2 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions);
  v3 = v1;
  result = [v2 resultReportingFrequency];
  if (result < -128)
  {
    __break(1u);
  }

  else if (result <= 127)
  {
    [v3 setReportingFrequency:result];

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100011864(uint64_t a1, void (**a2)(void, void))
{
  v3 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales);

  isa = sub_100046EEC().super.isa;
  (a2)[2](a2, isa);
  v3, v5, v6, v7, v8, v9, v10, v11;

  _Block_release(a2);
}

void sub_1000118FC(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100046C3C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100046E3C();
  __chkstk_darwin(v5 - 8);
  v6 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager);
  v7 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo) clientID];
  if (!v7)
  {
    sub_100046E5C();
    v9 = v8;
    v7 = sub_100046E4C();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = [v6 installedLanguageDetectorAssetWithClientID:v7];

  if (v17)
  {
    v18 = sub_100046E5C();
    v20 = v19;

    sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);

    v32._countAndFlagsBits = 0x6F7463657465642FLL;
    v32._object = 0xEE006E6F736A2E72;
    sub_100046EBC(v32);
    v20, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_100002634(v18, v20);
    v29 = [objc_allocWithZone(EARSpeechModelInfo) initWithModelInfo:v28];

    (a2)[2](a2, v29);

    _Block_release(a2);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v30 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_10004707C();

    a2[2](a2, 0);
    _Block_release(a2);
  }
}

void sub_100011BF0(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_100011C64(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector);
  if (v5)
  {
    v9 = objc_allocWithZone(type metadata accessor for EARLanguageDetectorResultStream());
    v10 = v5;
    v11 = sub_10001281C(a1);
    v12 = *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream);
    *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream) = v11;
    v13 = v11;

    if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = sub_1000117D4();
      v15 = [v10 startRequestWithSamplingRate:a2 requestOptions:v14 delegate:v13];

      v16 = [objc_opt_self() anonymousListener];
      [v16 setDelegate:a3];
      [v16 activate];
      v17 = (a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners);
      os_unfair_lock_lock((a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners));
      objc_allocWithZone(type metadata accessor for EARLanguageDetectorAudioBuffer());
      v18 = v15;
      sub_1000122C0(v18);
      sub_10002D5A0();
      os_unfair_lock_unlock(v17);
      v19 = [v16 endpoint];
      (a4)[2](a4, v19, 0);

      goto LABEL_7;
    }

    __break(1u);
  }

  else if (qword_10006DD40 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v20 = sub_100046D1C();
  sub_100004D64(v20, qword_1000714B8);
  v19 = sub_100046D0C();
  v21 = sub_10004700C();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v19, v21, "LanguageDetector is not initialized", v22, 2u);
  }

LABEL_7:

  _Block_release(a4);
}

BOOL sub_100011F58(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners));
  sub_10002CF98(a1, v6, v7, v8, v9, v10, v11, v12, v21, v22);
  v14 = v13;
  os_unfair_lock_unlock(v5);
  if (v14)
  {
    v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARLanguageDetectorAudioBuffer];
    [a2 setExportedInterface:v15];

    [a2 setExportedObject:v14];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    v25 = sub_100013064;
    v26 = v16;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10002673C;
    v24 = &unk_100065CC0;
    v17 = _Block_copy(&v21);
    v18 = v14;
    v19 = a1;

    [a2 setInvalidationHandler:v17];
    _Block_release(v17);
    [a2 activate];
  }

  return v14 != 0;
}

id sub_1000120EC(uint64_t a1, void *a2)
{
  sub_1000125E0();

  return [a2 invalidate];
}

id sub_1000122C0(uint64_t a1)
{
  v2 = v1;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (sub_10000BD64(v6))
  {
    v7 = sub_100004A8C();
    v8 = sub_100004A74();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0x293A5F2874696E69, 0xE800000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARLanguageDetectorAudioBuffer.%s", v7, 0xCu);
    sub_1000050D4(v8);
    sub_100005408();
    sub_100002B44(v7);
  }

  *&v2[OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer] = a1;
  v9 = type metadata accessor for EARLanguageDetectorAudioBuffer();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000123F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v5 = sub_100046D1C();
  sub_100004D64(v5, qword_1000714B8);
  v6 = sub_100046D0C();
  v7 = sub_100046FFC();
  if (sub_10000BD64(v7))
  {
    v8 = sub_100004A8C();
    v9 = sub_100004A74();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E210, &v14);
    sub_100004B04(&_mh_execute_header, v10, v11, "EARLanguageDetectorAudioBuffer.%s");
    sub_1000050D4(v9);
    sub_100002B44(v9);
    sub_100005408();
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer);
    isa = sub_100046B2C().super.isa;
    [v12 addAudioSampleData:isa];
  }
}

id sub_1000125E0()
{
  v1 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v2 = sub_100046D1C();
  sub_100004D64(v2, qword_1000714B8);
  v3 = sub_100046D0C();
  v4 = sub_100046FFC();
  if (sub_10000BD64(v4))
  {
    v5 = sub_100004A8C();
    v6 = sub_100004A74();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004EB4(0x6F69647541646E65, 0xEA00000000002928, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "EARLanguageDetectorAudioBuffer.%s", v5, 0xCu);
    sub_1000050D4(v6);
    sub_100002B44(v6);
    sub_100002B44(v5);
  }

  v7 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer);

  return [v7 endAudio];
}

id sub_1000127B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001281C(void *a1)
{
  v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults] = 0;
  v3 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a1];
  v4 = OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection;
  *&v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection] = v3;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARLanguageDetectorResultStream];
  [v6 setRemoteObjectInterface:v7];

  [*&v1[v4] activate];
  v8 = [*&v1[v4] remoteObjectProxy];
  sub_10004712C();
  swift_unknownObjectRelease();
  sub_10000ECEC(&unk_10006EE30, &qword_10004CC20);
  swift_dynamicCast();
  *&v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy] = v12;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for EARLanguageDetectorResultStream();
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

id sub_10001298C()
{
  [*&v0[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARLanguageDetectorResultStream();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012A4C()
{
  v1 = v0;
  v2 = sub_100046C3C();
  v3 = sub_100004250(v2);
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100046E3C();
  v7 = sub_100004250(v6);
  __chkstk_darwin(v7);
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v8 = sub_100046D1C();
  sub_100004D64(v8, qword_1000714B8);
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();
  if (sub_10000BD64(v10))
  {
    v11 = sub_100004A8C();
    v12 = sub_100004A74();
    v23[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004E1A0, v23);
    sub_100004B04(&_mh_execute_header, v13, v14, "EARLanguageDetectorResultStream.%s");
    sub_1000050D4(v12);
    sub_100002B44(v12);
    sub_100005408();
  }

  if (*(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults))
  {
    v15 = 0;
    v16 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v17 = off_100071650;
    v18 = off_100071650;
    sub_100046C2C();
    sub_100005BF8();
    sub_100004124(v19, v20, v21, v17, v5);
    sub_10004702C();
    sub_100046D5C();
    v16 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy);
    v15 = sub_100046A6C();
  }

  [v16 languageDetectorDidFinishWithError:v15];
}

void sub_100012D20(double a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = a3;
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = sub_100004A74();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100004EB4(0xD000000000000036, 0x800000010004E140, &v16);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "EARLanguageDetectorResultStream.%s %@", v11, 0x16u);
    sub_100005808(v12, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44(v12);
    sub_1000050D4(v13);
    sub_100005408();
    sub_100002B44(v11);
  }

  *(v4 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults) = 1;
  v15 = [objc_allocWithZone(EARLanguageDetectorV2Result) initWithLanguageDetectorV2Result:v8];
  [*(v4 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy) languageDetectorDidRecognizeResult:v15 processedAudioDuration:a1];
}

id sub_100012FF0(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, void *a4)
{
  v7 = sub_100046E4C();
  a3, v8, v9, v10, v11, v12, v13, v14;
  v15 = [a4 lsr_errorWithCode:a1 description:v7];

  return v15;
}

uint64_t sub_10001306C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013084(uint64_t a1)
{
  sub_100005BA8(a1, &v5);
  v2 = objc_getAssociatedObject(v1, &unk_10006EE50);
  swift_endAccess();
  if (v2)
  {
    sub_10004712C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100005808(v7, &qword_10006FE90, &unk_10004CCD0);
  }

  return 0;
}

uint64_t sub_10001315C(uint64_t a1)
{
  sub_100005BA8(a1, v7);
  v2 = objc_getAssociatedObject(v1, &unk_10006EE40);
  swift_endAccess();
  if (v2)
  {
    sub_10004712C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100005808(v7, &qword_10006FE90, &unk_10004CCD0);
  }

  return 0;
}

id sub_100013280()
{
  result = [objc_opt_self() _staticWrappedInitWithCurrentProcess];
  qword_1000714E8 = result;
  return result;
}

uint64_t sub_1000132BC(uint64_t a1, uint64_t a2)
{
  if (qword_10006DD58 != -1)
  {
LABEL_41:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1000714D8;
  v6 = 1 << *(qword_1000714D8 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = qword_1000714D8 + 56;
  v9 = v7 & *(qword_1000714D8 + 56);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          v14 = 0;
          goto LABEL_17;
        }

        v9 = *(v8 + 8 * v11);
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    v12 = (*(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v9)))));
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_1000473EC() & 1) == 0);
  v14 = 1;
LABEL_17:
  if (qword_10006DD60 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v16 = qword_1000714E0;
  v17 = 1 << *(qword_1000714E0 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = qword_1000714E0 + 56;
  v20 = v18 & *(qword_1000714E0 + 56);
  v21 = (v17 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          v25 = 0;
          goto LABEL_34;
        }

        v20 = *(v19 + 8 * v22);
        ++v15;
        if (v20)
        {
          v15 = v22;
          break;
        }
      }
    }

    v23 = (*(v16 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v20)))));
    if (*v23 == a1 && v23[1] == a2)
    {
      break;
    }

    v20 &= v20 - 1;
  }

  while ((sub_1000473EC() & 1) == 0);
  v25 = 1;
LABEL_34:
  v26 = objc_opt_self();
  v27 = [v26 sharedPreferences];
  v28 = [v27 isDictationHIPAACompliant];

  v29 = [v26 sharedPreferences];
  v30 = [v29 siriDataSharingOptInStatus];

  if (v14)
  {
    return 1;
  }

  if (v30 == 1)
  {
    return v25 & ~v28;
  }

  return 0;
}

unint64_t sub_100013540(double a1)
{
  v1 = a1 * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_100013590(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t sub_100013840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for SelfLoggingHelper();
    LOBYTE(a1) = sub_100013590(a1);
    v6 = (a1 | sub_1000132BC(a2, a3)) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

id sub_1000138A8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_100046B8C().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = sub_100046BBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_100013944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010004D680 == a2;
  if (v3 || (sub_10000B7E8(0xD000000000000011, 0x800000010004D680) & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6F69746174636944 && a2 == 0xE90000000000006ELL;
  if (v7 || (sub_10000B7E8(0x6F69746174636944, 0xE90000000000006ELL) & 1) != 0)
  {
    return 2;
  }

  v8 = a1 == 0x6372616553626557 && a2 == 0xE900000000000068;
  if (v8 || (sub_10000B7E8(0x6372616553626557, 0xE900000000000068) & 1) != 0)
  {
    return 3;
  }

  v9 = a1 == 0x746F687354 && a2 == 0xE500000000000000;
  if (v9 || (sub_10000B7E8(0x746F687354, 0xE500000000000000) & 1) != 0)
  {
    return 4;
  }

  v5 = 5;
  if (a1 != 0x7463694469726953 || a2 != 0xED00006E6F697461)
  {
    if (sub_10000B7E8(0x7463694469726953, 0xED00006E6F697461))
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_100013AA0(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    v8 = sub_10004736C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v10 = sub_10004725C();
      }

      else
      {
        v10 = *(a4 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = sub_10001315C(v10);
      sub_100015B28(a1, a2, a3, v11, v12);
    }

    while (v8 != v9);
  }
}

void sub_100013BFC(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, unint64_t a4, Class *a5, SEL *a6, void *a7)
{
  v19 = [objc_allocWithZone(*a5) init];
  if (v19)
  {
    [v19 setExists:1];
  }

  v12 = [objc_allocWithZone(ASRSchemaASRActiveConfigUpdateContext) init];
  [v12 *a6];
  v13 = v12;
  sub_100015B28(a1, a2, a3, v12, a4);

  if (qword_10006DD68 != -1)
  {
    sub_100004140(&qword_10006DD68);
  }

  v14 = [qword_1000714E8 captureSnapshot];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() context];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    isa = sub_100046B8C().super.isa;
    [v15 logWithEventContext:v17 asrIdentifier:isa];
  }
}

void sub_100013D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, SEL *a7)
{
  sub_100016B0C();
  v11 = [objc_allocWithZone(*v10) init];
  v12 = v11;
  if (v11)
  {
    [v11 setExists:1];
  }

  v13 = [objc_allocWithZone(*a6) init];
  [v13 *a7];
  v14 = v13;
  v15 = sub_100016ACC();
  sub_100015B28(v15, v16, v17, v13, v7);
}

void sub_100013E6C()
{
  sub_100016B0C();
  v1 = [objc_allocWithZone(ASRSchemaASRJitLanguageModelEnrollmentEnded) init];
  v2 = [objc_allocWithZone(ASRSchemaASRJitLanguageModelEnrollmentContext) init];
  [v2 setEnded:v1];
  v3 = v2;
  v4 = sub_100016ACC();
  sub_100015B28(v4, v5, v6, v2, v0);
}

void sub_100013F24(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, unsigned __int8 a14, uint64_t a15, _TtC22localspeechrecognition19EARSpeechRecognizer *a16, void *a17, void *a18, char a19, unint64_t a20, char a21)
{
  v76 = a7;
  v74[1] = a6;
  v81 = a1;
  v27 = a21;
  v28 = a20;
  v29 = a19;
  v74[4] = a17;
  v75 = a15;
  v80 = a14;
  v78 = a13;
  v79 = a18;
  v77 = a11;
  v74[2] = a10;
  v74[3] = a12;
  v30 = sub_100046BBC();
  __chkstk_darwin(v30 - 8);
  v32 = v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_allocWithZone(ASRSchemaASRStarted) init];
  v82 = a3;
  if (!a3)
  {

    return;
  }

  v83 = v33;
  if (v33)
  {
    v34 = sub_100013944(a2, v82);
    [v83 setTask:v34];
    if (a5)
    {
      v74[0] = objc_opt_self();
      v88 = a4;
      v89 = a5;
      v86 = 95;
      v87 = 0xE100000000000000;
      v84 = 45;
      v85 = 0xE100000000000000;
      sub_1000169D0();
      v35 = v83;
      sub_10004711C();
      v37 = v36;
      v38 = a2;
      v39 = sub_100046E4C();
      v37, v40, v41, v42, v43, v44, v45, v46;
      v47 = [v74[0] convertLanguageCodeToSchemaLocale:v39];

      a2 = v38;
      v28 = a20;
      v27 = a21;
      v29 = a19;
      [v35 setModelLocale:v47];
    }
  }

  v48 = v83;
  [v48 setIsHighQualityAsset:a8 & 1];
  if (a16 && (sub_1000029E4(0, &qword_10006F158, NSUUID_ptr), , (v49 = sub_1000144EC(v75, a16)) != 0))
  {
    v50 = v49;
    sub_1000029E4(0, &unk_10006F120, SISchemaUUID_ptr);
    sub_100046BAC();
    v51 = sub_1000138A8(v32);
    if (v83)
    {
      v52 = a2;
      v53 = v48;
      v54 = v51;
      [v53 setDictationUiInteractionId:v54];

      a2 = v52;
      if (a9 <= 0.0)
      {
        goto LABEL_17;
      }

LABEL_12:
      type metadata accessor for SelfLoggingHelper();
      v55 = sub_100013540(a9);
LABEL_18:
      v56 = v76;
      [v48 setSpeechProfileAgeInNs:v55];
      v57 = v48;
      if (v56)
      {
        v57 = sub_100046E4C();
        v56 = v57;
      }

      sub_100016B40(v57, "setDatapackVersion:");

      v58 = v77;
      if (v77)
      {
        v59 = v48;
        v60 = sub_100046E4C();
        v58 = v60;
      }

      else
      {
        v60 = v48;
      }

      sub_100016B40(v60, "setHammerVersion:");

      v61 = v78;
      if (v78)
      {
        v62 = v48;
        v63 = sub_100046E4C();
        v61 = v63;
      }

      else
      {
        v63 = v48;
      }

      sub_100016B40(v63, "setGeoLanguageModelRegion:");

      [v48 setGeoLanguageModelLoaded:v80 & 1];
      v64 = v79;
      if (v79)
      {
        v65 = v48;
        v66 = sub_100046E4C();
        v64 = v66;
      }

      else
      {
        v66 = v48;
      }

      sub_100016B40(v66, "setPortraitExperimentVariantName:");

      goto LABEL_32;
    }
  }

  else if (a9 <= 0.0)
  {
    if (v83)
    {
LABEL_17:
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }
  }

  else if (v83)
  {
    goto LABEL_12;
  }

  [v48 setGeoLanguageModelLoaded:v80 & 1];
LABEL_32:
  [v48 setAtypicalSpeechEnabled:v29 & 1];
  if (v27 != 2)
  {
    [v48 setIsEmptyTextField:v27 & 1];
  }

  v67 = [objc_allocWithZone(ASRSchemaASRRequestContext) init];
  [v67 setStartedOrChanged:v48];
  v68 = v67;
  sub_100015B28(v81, a2, v82, v67, v28);

  if (qword_10006DD68 != -1)
  {
    sub_100004140(&qword_10006DD68);
  }

  v69 = [qword_1000714E8 captureSnapshot];
  if (!v69)
  {
    goto LABEL_39;
  }

  v70 = v69;
  v71 = [objc_opt_self() context];
  if (v71)
  {
    v72 = v71;
    isa = sub_100046B8C().super.isa;
    [v70 logWithEventContext:v72 asrIdentifier:isa];

LABEL_39:
    return;
  }

  __break(1u);
}

id sub_1000144EC(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_100046E4C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v3 initWithUUIDString:v4];

  return v12;
}

uint64_t sub_100014560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6F632D544ELL && a2 == 0xEA00000000007463;
  if (v4 || (sub_10000B7E8(0x61746E6F632D544ELL, 0xEA00000000007463) & 1) != 0)
  {
    return 1;
  }

  v6 = a1 == 0x616E7070612D544ELL && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_10000B7E8(0x616E7070612D544ELL, 0xEA0000000000656DLL) & 1) != 0)
  {
    return 2;
  }

  v7 = a1 == 0x6D6F6F722D544ELL && a2 == 0xE700000000000000;
  if (v7 || (sub_10000B7E8(0x6D6F6F722D544ELL, 0xE700000000000000) & 1) != 0)
  {
    return 3;
  }

  v8 = a1 == 0x6573756F682D544ELL && a2 == 0xE800000000000000;
  if (v8 || (sub_10000B7E8(0x6573756F682D544ELL, 0xE800000000000000) & 1) != 0)
  {
    return 4;
  }

  v9 = a1 == 0x656E6F7A2D544ELL && a2 == 0xE700000000000000;
  if (v9 || (sub_10000B7E8(0x656E6F7A2D544ELL, 0xE700000000000000) & 1) != 0)
  {
    return 5;
  }

  v10 = a1 == 0x70756F72672D544ELL && a2 == 0xE800000000000000;
  if (v10 || (sub_10000B7E8(0x70756F72672D544ELL, 0xE800000000000000) & 1) != 0)
  {
    return 6;
  }

  v11 = a1 == 0x63697665642D544ELL && a2 == 0xE900000000000065;
  if (v11 || (sub_10000B7E8(0x63697665642D544ELL, 0xE900000000000065) & 1) != 0)
  {
    return 7;
  }

  v12 = a1 == 0x656E6563732D544ELL && a2 == 0xE800000000000000;
  if (v12 || (sub_10000B7E8(0x656E6563732D544ELL, 0xE800000000000000) & 1) != 0)
  {
    return 8;
  }

  v13 = sub_100004AA4() & 0xFFFFFFFFFFFFLL | 0x6F63000000000000;
  v15 = a1 == v13 && a2 == v14;
  if (v15 || (sub_10000B7E8(v13, v14) & 1) != 0)
  {
    return 9;
  }

  v16 = a1 == 0x6F746F68702D544ELL && a2 == 0xED00006D75626C61;
  if (v16 || (sub_10000B7E8(0x6F746F68702D544ELL, 0xED00006D75626C61) & 1) != 0)
  {
    return 10;
  }

  v17 = a1 == 0x6F746F68702D544ELL && a2 == 0xEB00000000676174;
  if (v17 || (sub_10000B7E8(0x6F746F68702D544ELL, 0xEB00000000676174) & 1) != 0)
  {
    return 11;
  }

  v18 = sub_100016A8C();
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (sub_10000B7E8(v18, v19) & 1) != 0)
  {
    return 12;
  }

  v21 = sub_100016A24();
  v23 = a1 == v21 && a2 == v22;
  if (v23 || (sub_10000B7E8(v21, v22) & 1) != 0)
  {
    return 13;
  }

  v24 = a1 == 0xD000000000000010 && 0x800000010004E3E0 == a2;
  if (v24 || (sub_10000B7E8(0xD000000000000010, 0x800000010004E3E0) & 1) != 0)
  {
    return 14;
  }

  v25 = a1 == 0x6C79616C702D544ELL && a2 == 0xEB00000000747369;
  if (v25 || (sub_10000B7E8(0x6C79616C702D544ELL, 0xEB00000000747369) & 1) != 0)
  {
    return 15;
  }

  v26 = sub_100004B24();
  v28 = a1 == v26 && a2 == v27;
  if (v28 || (sub_10000B7E8(v26, v27) & 1) != 0)
  {
    return 16;
  }

  v29 = a1 == 0x76656C61632D544ELL && a2 == 0xEB00000000746E65;
  if (v29 || (sub_10000B7E8(0x76656C61632D544ELL, 0xEB00000000746E65) & 1) != 0)
  {
    return 17;
  }

  v30 = a1 == 0x7469746E652D544ELL && a2 == 0xE900000000000079;
  if (v30 || (sub_10000B7E8(0x7469746E652D544ELL, 0xE900000000000079) & 1) != 0)
  {
    return 18;
  }

  v31 = sub_100016AAC();
  v33 = a1 == v31 && a2 == v32;
  if (v33 || (sub_10000B7E8(v31, v32) & 1) != 0)
  {
    return 19;
  }

  v34 = sub_100016A48();
  v36 = a1 == v34 && a2 == v35;
  if (v36 || (sub_10000B7E8(v34, v35) & 1) != 0)
  {
    return 20;
  }

  v37 = a1 == 0x73697472612D544ELL && a2 == 0xE900000000000074;
  if (v37 || (sub_10000B7E8(0x73697472612D544ELL, 0xE900000000000074) & 1) != 0)
  {
    return 21;
  }

  v38 = a1 == 0x6F697463612D544ELL && a2 == 0xE90000000000006ELL;
  if (v38 || (sub_10000B7E8(0x6F697463612D544ELL, 0xE90000000000006ELL) & 1) != 0)
  {
    return 22;
  }

  v39 = a1 == 0x65676469772D544ELL && a2 == 0xE900000000000074;
  if (v39 || (sub_10000B7E8(0x65676469772D544ELL, 0xE900000000000074) & 1) != 0)
  {
    return 23;
  }

  v40 = sub_100004AA4() & 0xFFFFFFFFFFFFLL | 0x6E75000000000000;
  v42 = a1 == v40 && a2 == v41;
  if (v42 || (sub_10000B7E8(v40, v41) & 1) != 0)
  {
    return 24;
  }

  v43 = sub_100016A6C();
  v45 = a1 == v43 && a2 == v44;
  if (v45 || (sub_10000B7E8(v43, v44) & 1) != 0)
  {
    return 25;
  }

  v46 = sub_10000BD7C();
  v48 = a1 == v46 && a2 == v47;
  if (v48 || (sub_10000B7E8(v46, v47) & 1) != 0)
  {
    return 26;
  }

  v49 = a1 == 0x63656666652D544ELL && a2 == 0xE900000000000074;
  if (v49 || (sub_10000B7E8(0x63656666652D544ELL, 0xE900000000000074) & 1) != 0)
  {
    return 27;
  }

  result = 28;
  if (a1 != 0x6F6E6B6E752D544ELL || a2 != 0xEA00000000006E77)
  {
    if (sub_10000B7E8(0x6F6E6B6E752D544ELL, 0xEA00000000006E77))
    {
      return 28;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100014AF0(uint64_t a1)
{
  v4 = [objc_allocWithZone(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics) init];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = sub_10000AD40(a1);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (HIDWORD(v5))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_100004E54();
    swift_once();
LABEL_121:
    v287 = sub_100046D1C();
    sub_100005C04(v287, qword_1000714A0);
    v288 = sub_100046D0C();
    v289 = sub_100046FEC();
    if (os_log_type_enabled(v288, v289))
    {
      v290 = sub_1000090C8();
      *v290 = 0;
      _os_log_impl(&_mh_execute_header, v288, v289, "Failed to create ASRSchemaASRNamedEntityUserEdit", v290, 2u);
      v291 = v290;
      v4 = v296;
      sub_100002B44(v291);
    }

    return 0;
  }

  [v4 setNumTotalEdit:v5];
  if (sub_10000AD40(a1))
  {
    sub_1000029E4(0, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
    v6 = v4;
    v7.super.isa = sub_100046EEC().super.isa;
  }

  else
  {
    v8 = v4;
    v7.super.isa = 0;
  }

  [v4 setNamedEntityUserEdits:v7.super.isa];

LABEL_8:
  v298 = sub_10000AD40(a1);
  if (v298)
  {
    v9 = 0;
    sub_100002B7C();
    v297 = a1 & 0xC000000000000001;
    v293 = a1 + 32;
    v294 = a1 & 0xFFFFFFFFFFFFFF8;
    v295 = a1;
    v296 = v4;
    while (1)
    {
      if (v297)
      {
        v10 = sub_10004725C();
      }

      else
      {
        if (v9 >= *(v294 + 16))
        {
          goto LABEL_126;
        }

        v10 = *(v293 + 8 * v9);
      }

      v2 = v10;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v12 = [v10 entityTaggerCategory];
      v13 = sub_100046E5C();
      v15 = v14;

      v15, v16, v17, v18, v19, v20, v21, v22;
      v23 = (v15 >> 56) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v23 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        if (v4)
        {
          v47 = v4;
          v48 = [v2 speechProfileCategories];
          v49 = sub_100046EFC();

          isa = *v49->transaction;
          v49, v51, v52, v53, v54, v55, v56, v57;
          if (isa)
          {
            sub_1000029E4(0, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr);
            isa = sub_100046EEC().super.isa;
          }

          [v47 setLmeOverActivationEdits:{isa, v293}];
        }

        v58 = [v2 speechProfileCategories];
        v59 = sub_100046EFC();

        v60 = *v59->transaction;
        v59, v61, v62, v63, v64, v65, v66, v67;
        if (v60)
        {
          v68 = [objc_allocWithZone(ASRSchemaASRLMEOverActivationEdit) init];
          if (v68)
          {
            v69 = v68;
            v70 = [v2 speechProfileCategories];
            v71 = sub_100046EFC();

            if (*(v71 + 16))
            {
              v80 = *(v71 + 32);
              v79 = *(v71 + 40);
            }

            else
            {
              v80 = 0;
              v79 = 0xE000000000000000;
            }

            v71, v72, v73, v74, v75, v76, v77, v78;
            v241 = sub_100014560(v80, v79);
            v79, v242, v243, v244, v245, v246, v247, v248;
            [v69 setSpeechProfileCategory:v241];
            if (v4)
            {
              v249 = v4;
              v307 = sub_100016960(v249, &selRef_lmeOverActivationEdits, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr);
              if (v307)
              {
                v250 = v69;
                sub_100046EDC();
                sub_100016AE0();
                if (*(v251 + 16) >= *(v251 + 24) >> 1)
                {
                  sub_10000C5F4();
                }

                sub_100046F3C();
                sub_1000029E4(0, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr);
                v252 = sub_100046EEC().super.isa;
                v307, v253, v254, v255, v256, v257, v258, v259;
                [v249 setLmeOverActivationEdits:v252];
              }

              else
              {
                [v249 setLmeOverActivationEdits:0];
              }
            }

            else
            {
            }
          }
        }

        goto LABEL_97;
      }

      v299 = v9;
      v24 = [objc_allocWithZone(ASRSchemaASRNamedEntityUserEdit) init];
      if (!v24)
      {
        if (qword_10006DD38 != -1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

      v25 = v24;
      v26 = [v2 entityTaggerCategory];
      v27 = sub_100046E5C();
      v29 = v28;

      if (v27 == 0x6E6F73726550 && v29 == 0xE600000000000000)
      {
        v29, v30, v31, v32, v33, v34, v35, v36;
        sub_10000426C();
        p_type = &stru_10006AFF0.type;
        goto LABEL_34;
      }

      sub_10000B7E8(0x6E6F73726550, 0xE600000000000000);
      sub_10000426C();
      p_type = (&stru_10006AFF0 + 16);
      if (v46)
      {
        v29, v38, v39, v40, v41, v42, v43, v44;
LABEL_34:
        [v25 setEntityTaggerCategory:{1, v293}];
        goto LABEL_35;
      }

      v239 = 0xEC0000006E6F6974;
      v240 = v27 == 0x617A696E6167724FLL && v29 == 0xEC0000006E6F6974;
      if (v240 || (sub_10000B7E8(0x617A696E6167724FLL, 0xEC0000006E6F6974) & 1) != 0)
      {
        v29, v239, v39, v40, v41, v42, v43, v44;
        [v25 setEntityTaggerCategory:{3, v293}];
        goto LABEL_35;
      }

      if (v27 == 0x6563616C50 && v29 == 0xE500000000000000)
      {
        break;
      }

      v261 = sub_10000B7E8(0x6563616C50, 0xE500000000000000);
      v29, v262, v263, v264, v265, v266, v267, v268;
      if (v261)
      {
        goto LABEL_119;
      }

      if (qword_10006DD38 != -1)
      {
        sub_100004E54();
        swift_once();
      }

      v269 = sub_100046D1C();
      sub_100005C04(v269, qword_1000714A0);
      v270 = v2;
      v271 = sub_100046D0C();
      v272 = sub_100046FEC();

      if (os_log_type_enabled(v271, v272))
      {
        v273 = sub_100004A8C();
        v308 = sub_100004A74();
        *v273 = 136315138;
        v274 = [v270 entityTaggerCategory];
        v1 = sub_100046E5C();
        v302 = v272;
        v276 = v275;

        sub_100002B7C();
        v279 = sub_100004EB4(v277, v276, v278);
        v276, v280, v281, v282, v283, v284, v285, v286;
        *(v273 + 4) = v279;
        _os_log_impl(&_mh_execute_header, v271, v302, "Unsupported entity tagger category: %s", v273, 0xCu);
        sub_1000050D4(v308);
        sub_100002B44(v308);
        sub_100002B44(v273);
      }

LABEL_35:
      v81 = [v2 p_type[107]];
      v82 = sub_100046EFC();

      v83 = *v82->transaction;
      v82, v84, v85, v86, v87, v88, v89, v90;
      if (v83)
      {
        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        v83 = sub_100046EEC().super.isa;
      }

      [v25 setVisualContextCategories:v83];

      v303 = v2;
      v91 = [v2 p_type[107]];
      v92 = sub_100046EFC();

      v300 = v92;
      v100 = *(v92 + 16);
      if (v100)
      {
        v101 = (v92 + 40);
        do
        {
          v102 = *(v101 - 1);
          v103 = *v101;
          v104 = v102 == a1 && v103 == 0xE600000000000000;
          if (v104 || (sub_10000C374(a1) & 1) != 0)
          {
            v304 = sub_100016960(v25, &selRef_visualContextCategories, &qword_10006F140, NSNumber_ptr);
            if (v304)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v114 = v102 == v1 && v103 == 0xE600000000000000;
            if (!v114 && (sub_10000C374(v1) & 1) == 0)
            {

              [v25 setIsNamedEntityPresentInVisualContext:0];
              if (qword_10006DD38 != -1)
              {
                sub_100004E54();
                swift_once();
              }

              v115 = sub_100046D1C();
              sub_100005C04(v115, qword_1000714A0);

              v116 = sub_100046D0C();
              v117 = sub_100046FEC();
              v103, v118, v119, v120, v121, v122, v123, v124;
              if (os_log_type_enabled(v116, v117))
              {
                a1 = sub_100004A8C();
                v1 = sub_100004A74();
                sub_100016AEC(v1, v132, v133, v134, v135, v136, v137, v138, v139, v293, v294, v295, v296, v297, v298, v299, v300, v140);
                v142 = sub_100004EB4(v102, v103, v141);
                v103, v143, v144, v145, v146, v147, v148, v149;
                *(a1 + 4) = v142;
                _os_log_impl(&_mh_execute_header, v116, v117, "Unsupported visual context category: %s", a1, 0xCu);
                sub_1000050D4(v1);
                sub_100002B7C();
                sub_100002B44(v150);
                sub_10000426C();
                sub_100002B44(v151);
              }

              else
              {
                v103, v125, v126, v127, v128, v129, v130, v131;
              }

              goto LABEL_56;
            }

            v304 = sub_100016960(v25, &selRef_visualContextCategories, &qword_10006F140, NSNumber_ptr);
            if (v304)
            {
LABEL_45:
              sub_10004744C();
              sub_100046EDC();
              sub_100016AE0();
              if (*(v105 + 16) >= *(v105 + 24) >> 1)
              {
                sub_10000C66C();
              }

              sub_100016B00();
              sub_100046F3C();
              sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
              v106 = sub_100046EEC().super.isa;
              v304, v107, v108, v109, v110, v111, v112, v113;
              [v25 setVisualContextCategories:v106];

              goto LABEL_55;
            }
          }

          [v25 setVisualContextCategories:0];
LABEL_55:
          [v25 setIsNamedEntityPresentInVisualContext:1];
LABEL_56:
          v101 += 2;
          --v100;
        }

        while (v100);
      }

      v300, v93, v94, v95, v96, v97, v98, v99;
      v2 = v303;
      v152 = [v303 speechProfileCategories];
      v153 = sub_100046EFC();

      v154 = *v153->transaction;
      v153, v155, v156, v157, v158, v159, v160, v161;
      if (v154)
      {
        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        v154 = sub_100046EEC().super.isa;
      }

      v162 = &stru_10006AFF0.type;
      [v25 setSpeechProfileCategories:v154];

      v163 = [v303 speechProfileCategories];
      v164 = sub_100046EFC();

      v301 = v164;
      v172 = *(v164 + 16);
      if (v172)
      {
        v1 = (v164 + 40);
        do
        {
          v173 = *v1;
          v174 = sub_100016B00();
          if (sub_100014560(v174, v175))
          {
            [v25 setIsNamedEntityPresentInSpeechProfile:1];
            v305 = sub_100016960(v25, &selRef_speechProfileCategories, &qword_10006F140, NSNumber_ptr);
            if (v305)
            {
              sub_10004744C();
              sub_100046EDC();
              sub_100016AE0();
              if (*(v176 + 16) >= *(v176 + 24) >> 1)
              {
                sub_10000C66C();
              }

              sub_100016B00();
              sub_100046F3C();
              sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
              v177 = sub_100046EEC().super.isa;
              v305, v178, v179, v180, v181, v182, v183, v184;
              [v25 v162[111]];
            }

            else
            {
              [v25 v162[111]];
            }
          }

          else
          {
            v185 = qword_10006DD38;

            if (v185 != -1)
            {
              sub_100004E54();
              swift_once();
            }

            v186 = sub_100046D1C();
            sub_100005C04(v186, qword_1000714A0);

            v187 = sub_100046D0C();
            v188 = sub_100046FEC();
            v173, v189, v190, v191, v192, v193, v194, v195;
            if (os_log_type_enabled(v187, v188))
            {
              v203 = sub_100004A8C();
              v204 = sub_100004A74();
              sub_100016AEC(v204, v205, v206, v207, v208, v209, v210, v211, v212, v293, v294, v295, v296, v297, v298, v299, v301, v213);
              v214 = sub_100016B00();
              v217 = sub_100004EB4(v214, v215, v216);
              v173, v218, v219, v220, v221, v222, v223, v224;
              *(v203 + 4) = v217;
              _os_log_impl(&_mh_execute_header, v187, v188, "Unsupported speech profile category: %s", v203, 0xCu);
              sub_1000050D4(v204);
              v225 = v204;
              v2 = v303;
              sub_100002B44(v225);
              v226 = v203;
              v162 = (&stru_10006AFF0 + 16);
              sub_100002B44(v226);
            }

            else
            {
              v173, v196, v197, v198, v199, v200, v201, v202;
            }

            [v25 setIsNamedEntityPresentInSpeechProfile:0];
          }

          v1 += 2;
          --v172;
        }

        while (v172);
      }

      v301, v165, v166, v167, v168, v169, v170, v171;
      v4 = v296;
      if (v296)
      {
        v227 = v296;
        v306 = sub_100016960(v227, &selRef_namedEntityUserEdits, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
        sub_100002B7C();
        if (v228)
        {
          v229 = v25;
          sub_100046EDC();
          sub_100016AE0();
          if (*(v230 + 16) >= *(v230 + 24) >> 1)
          {
            sub_10000C5F4();
          }

          sub_100046F3C();
          a1 = v295;
          v9 = v299;
          if (v306)
          {
            sub_1000029E4(0, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
            v231.super.isa = sub_100046EEC().super.isa;
            v306, v232, v233, v234, v235, v236, v237, v238;
          }

          else
          {
            v231.super.isa = 0;
          }

          [v227 setNamedEntityUserEdits:v231.super.isa];

LABEL_97:
          goto LABEL_98;
        }

        [v227 setNamedEntityUserEdits:0];

        a1 = v295;
        v9 = v299;
      }

      else
      {

        a1 = v295;
        v9 = v299;
        sub_100002B7C();
      }

LABEL_98:
      if (v9 == v298)
      {
        return v4;
      }
    }

    v29, v239, v39, v40, v41, v42, v43, v44;
LABEL_119:
    [v25 setEntityTaggerCategory:{2, v293}];
    goto LABEL_35;
  }

  return v4;
}

void sub_10001597C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_100014AF0(a2);
  if (qword_10006DD38 != -1)
  {
    sub_100004E54();
    swift_once();
  }

  v6 = sub_100046D1C();
  sub_100005C04(v6, qword_1000714A0);
  v7 = v5;
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100004A8C();
    v11 = sub_100004A74();
    v25 = v11;
    *v10 = 136315138;
    v12 = v7;
    sub_10000ECEC(&qword_10006F138, &qword_10004CCC8);
    v13 = sub_100046E7C();
    v15 = v14;
    v16 = sub_100004EB4(v13, v14, &v25);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "SELF: visual context metrics: %s", v10, 0xCu);
    sub_1000050D4(v11);
    sub_100002B44(v11);
    sub_100002B44(v10);
  }

  v24 = v7;
  sub_100015B28(a1, 0x6F69746174636944, 0xE90000000000006ELL, v5, a3);
}

void sub_100015B28(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, void *a4, unint64_t a5)
{
  v11 = sub_100046BBC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v30 = sub_100046D1C();
    sub_100005C04(v30, qword_1000714A0);
    v91 = sub_100046D0C();
    v31 = sub_10004700C();
    if (os_log_type_enabled(v91, v31))
    {
      v32 = sub_1000090C8();
      *v32 = 0;
      sub_100016B20(&_mh_execute_header, v33, v34, "topLevelEvent is nil");
      sub_100002B44(v32);
    }

    goto LABEL_21;
  }

  v91 = v5;
  type metadata accessor for SelfLoggingHelper();
  v15 = a4;
  if (sub_100013840(v15, a2, a3))
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v16 = sub_100046D1C();
    sub_100005C04(v16, qword_1000714A0);
    v17 = v15;

    v91 = sub_100046D0C();
    v18 = sub_10004700C();
    a3, v19, v20, v21, v22, v23, v24, v25;

    if (os_log_type_enabled(v91, v18))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = sub_100004A74();
      v92 = v28;
      *v26 = 138412546;
      *(v26 + 4) = v17;
      *v27 = a4;
      *(v26 + 12) = 2080;
      v29 = v17;
      *(v26 + 14) = sub_100004EB4(a2, a3, &v92);
      _os_log_impl(&_mh_execute_header, v91, v18, "Logging prohibited for event:%@ task:%s", v26, 0x16u);
      sub_100005808(v27, &qword_1000704F0, &qword_10004CF40);
      sub_100002B44(v27);
      sub_1000050D4(v28);
      sub_100002B44(v28);
      sub_100002B44(v26);

      return;
    }

    goto LABEL_21;
  }

  v35 = [objc_allocWithZone(ASRSchemaASRClientEventMetadata) init];
  if (!v35)
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v41 = sub_100046D1C();
    sub_100005C04(v41, qword_1000714A0);
    v91 = sub_100046D0C();
    v42 = sub_10004700C();
    if (os_log_type_enabled(v91, v42))
    {
      v43 = sub_1000090C8();
      *v43 = 0;
      sub_100016B20(&_mh_execute_header, v44, v45, "Failed to create SELF event metadata");
      sub_100002B44(v43);
    }

LABEL_21:
    v46 = v91;

    return;
  }

  v36 = v35;
  sub_1000029E4(0, &unk_10006F120, SISchemaUUID_ptr);
  (*(v12 + 16))(v14, a1, v11);
  v37 = sub_1000138A8(v14);
  [v36 setAsrId:v37];

  v38 = [objc_allocWithZone(ASRSchemaASRClientEvent) init];
  if (v38)
  {
    v39 = v38;
    [v38 setEventMetadata:v36];
    objc_opt_self();
    sub_100005424();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      [v39 setPreheatContext:v40];
    }

    else
    {
      objc_opt_self();
      sub_100005424();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        [v39 setRequestContext:v51];
      }

      else
      {
        objc_opt_self();
        sub_100005424();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          [v39 setPartialResultGenerated:v52];
        }

        else
        {
          objc_opt_self();
          sub_100005424();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            [v39 setPackageGenerated:v53];
          }

          else
          {
            objc_opt_self();
            sub_100005424();
            v54 = swift_dynamicCastObjCClass();
            if (v54)
            {
              [v39 setRecognitionResultTier1:v54];
            }

            else
            {
              objc_opt_self();
              sub_100005424();
              v55 = swift_dynamicCastObjCClass();
              if (v55)
              {
                [v39 setRescoringDeliberationResultTier1:v55];
              }

              else
              {
                objc_opt_self();
                sub_100005424();
                v56 = swift_dynamicCastObjCClass();
                if (v56)
                {
                  [v39 setFinalResultGenerated:v56];
                }

                else
                {
                  objc_opt_self();
                  sub_100005424();
                  v57 = swift_dynamicCastObjCClass();
                  if (v57)
                  {
                    [v39 setIntermediateUtteranceInfoTier1:v57];
                  }

                  else
                  {
                    objc_opt_self();
                    sub_100005424();
                    v58 = swift_dynamicCastObjCClass();
                    if (v58)
                    {
                      [v39 setInitializationContext:v58];
                    }

                    else
                    {
                      objc_opt_self();
                      sub_100005424();
                      v59 = swift_dynamicCastObjCClass();
                      if (v59)
                      {
                        [v39 setActiveConfigUpdateContext:v59];
                      }

                      else
                      {
                        objc_opt_self();
                        sub_100005424();
                        v60 = swift_dynamicCastObjCClass();
                        if (v60)
                        {
                          [v39 setLanguageModelEnrollmentContext:v60];
                        }

                        else
                        {
                          objc_opt_self();
                          sub_100005424();
                          v61 = swift_dynamicCastObjCClass();
                          if (v61)
                          {
                            [v39 setJitLanguageModelEnrollmentEndedTier1:v61];
                          }

                          else
                          {
                            objc_opt_self();
                            sub_100005424();
                            v62 = swift_dynamicCastObjCClass();
                            if (v62)
                            {
                              [v39 setAudioPacketArrivalContext:v62];
                            }

                            else
                            {
                              objc_opt_self();
                              sub_100005424();
                              v63 = swift_dynamicCastObjCClass();
                              if (v63)
                              {
                                [v39 setFirstAudioPacketProcessed:v63];
                              }

                              else
                              {
                                objc_opt_self();
                                sub_100005424();
                                v64 = swift_dynamicCastObjCClass();
                                if (v64)
                                {
                                  [v39 setFinalAudioPacketContainingSpeechReceived:v64];
                                }

                                else
                                {
                                  objc_opt_self();
                                  sub_100005424();
                                  v65 = swift_dynamicCastObjCClass();
                                  if (v65)
                                  {
                                    [v39 setEmbeddedSpeechProcessContext:v65];
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    sub_100005424();
                                    v66 = swift_dynamicCastObjCClass();
                                    if (v66)
                                    {
                                      [v39 setAppleNeuralEngineModelInitializationContext:v66];
                                    }

                                    else
                                    {
                                      objc_opt_self();
                                      sub_100005424();
                                      v67 = swift_dynamicCastObjCClass();
                                      if (v67)
                                      {
                                        [v39 setFrameProcessingReady:v67];
                                      }

                                      else
                                      {
                                        objc_opt_self();
                                        sub_100005424();
                                        v68 = swift_dynamicCastObjCClass();
                                        if (v68)
                                        {
                                          [v39 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:v68];
                                        }

                                        else
                                        {
                                          objc_opt_self();
                                          sub_100005424();
                                          v69 = swift_dynamicCastObjCClass();
                                          if (v69)
                                          {
                                            [v39 setAudioSpeechPacketArrivalContext:v69];
                                          }

                                          else
                                          {
                                            objc_opt_self();
                                            sub_100005424();
                                            v70 = swift_dynamicCastObjCClass();
                                            if (v70)
                                            {
                                              [v39 setLeadingSilenceProcessed:v70];
                                            }

                                            else
                                            {
                                              objc_opt_self();
                                              sub_100005424();
                                              v71 = swift_dynamicCastObjCClass();
                                              if (v71)
                                              {
                                                [v39 setFirstSecondAfterLeadingSilenceProcessed:v71];
                                              }

                                              else
                                              {
                                                objc_opt_self();
                                                sub_100005424();
                                                v72 = swift_dynamicCastObjCClass();
                                                if (v72)
                                                {
                                                  [v39 setFirstAudioPacketRecorded:v72];
                                                }

                                                else
                                                {
                                                  objc_opt_self();
                                                  sub_100005424();
                                                  v73 = swift_dynamicCastObjCClass();
                                                  if (v73)
                                                  {
                                                    [v39 setAudioPacketContainingEndOfFirstWordReadyUpstream:v73];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_self();
                                                    sub_100005424();
                                                    v74 = swift_dynamicCastObjCClass();
                                                    if (v74)
                                                    {
                                                      [v39 setFirstAudioPacketReadyUpstream:v74];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_self();
                                                      sub_100005424();
                                                      v75 = swift_dynamicCastObjCClass();
                                                      if (v75)
                                                      {
                                                        [v39 setFinalAudioPacketContainingSpeechReadyUpstream:v75];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_self();
                                                        sub_100005424();
                                                        v76 = swift_dynamicCastObjCClass();
                                                        if (v76)
                                                        {
                                                          [v39 setDictationVoiceCommandMetricsReported:v76];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_self();
                                                          sub_100005424();
                                                          v77 = swift_dynamicCastObjCClass();
                                                          if (v77)
                                                          {
                                                            [v39 setDictationVoiceCommandInfoTier1:v77];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_self();
                                                            sub_100005424();
                                                            v78 = swift_dynamicCastObjCClass();
                                                            if (v78)
                                                            {
                                                              [v39 setPersonalizationUserEditNamedEntityMetrics:v78];
                                                            }

                                                            else
                                                            {
                                                              if (qword_10006DD38 != -1)
                                                              {
                                                                sub_100004E54();
                                                                swift_once();
                                                              }

                                                              v87 = sub_100046D1C();
                                                              sub_100005C04(v87, qword_1000714A0);
                                                              v88 = sub_100046D0C();
                                                              v89 = sub_10004700C();
                                                              if (os_log_type_enabled(v88, v89))
                                                              {
                                                                v90 = sub_1000090C8();
                                                                *v90 = 0;
                                                                _os_log_impl(&_mh_execute_header, v88, v89, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v90, 2u);
                                                                sub_100002B44(v90);
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

    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v79 = sub_100046D1C();
    sub_100005C04(v79, qword_1000714A0);
    v80 = v15;
    v81 = sub_100046D0C();
    v82 = sub_100046FFC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = sub_100004A8C();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      *(v83 + 4) = v80;
      *v84 = a4;
      v85 = v80;
      _os_log_impl(&_mh_execute_header, v81, v82, "SELF: Wrapping and logging an event of type %@", v83, 0xCu);
      sub_100005808(v84, &qword_1000704F0, &qword_10004CF40);
      sub_100002B44(v84);
      sub_100002B44(v83);
    }

    isa = v91[2].isa;
    if (a5)
    {
      [(objc_class *)isa emitMessage:v39 timestamp:sub_10001664C(a5)];
    }

    else
    {
      [(objc_class *)isa emitMessage:v39];
    }
  }

  else
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v47 = sub_100046D1C();
    sub_100005C04(v47, qword_1000714A0);
    v48 = sub_100046D0C();
    v49 = sub_10004700C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = sub_1000090C8();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to create SELF event", v50, 2u);
      sub_100002B44(v50);
    }
  }
}