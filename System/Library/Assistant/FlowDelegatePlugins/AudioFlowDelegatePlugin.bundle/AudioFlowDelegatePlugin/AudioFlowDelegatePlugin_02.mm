uint64_t sub_3EB5C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v40 = a6;
  v41 = a5;
  v46 = a3;
  v43 = a2;
  v45 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v37 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_3F08(v46, a4, v48);
    _os_log_impl(&dword_0, v17, v18, "SearchForMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v19, 0xCu);
    sub_306C(v20);
  }

  (*(v13 + 8))(v15, v12);
  v21 = v46;
  v22 = v47;
  v23 = v43;
  v24 = v41;
  sub_1C785C(v43, v46, a4, v47);
  v25 = v42;
  v37 = *(v42 + 16);
  v26 = v39;
  sub_F3F4(v22, v39, &unk_353020, &unk_2D0970);
  v27 = (*(v38 + 80) + 80) & ~*(v38 + 80);
  v28 = swift_allocObject();
  v28[2] = v21;
  v28[3] = a4;
  v28[4] = v24;
  v28[5] = v25;
  v29 = v45;
  v28[6] = v45;
  v28[7] = v23;
  v30 = v44;
  v28[8] = v40;
  v28[9] = v30;
  sub_14A58(v26, v28 + v27, &unk_353020, &unk_2D0970);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = v21;
  *(inited + 56) = a4;
  swift_bridgeObjectRetain_n();
  v32 = v24;

  v33 = v23;

  v34 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v48[3] = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  v48[4] = &off_3344D0;
  v48[0] = v33;
  v35 = v33;
  sub_1E6C98(v34, v29, v48, sub_420BC, v28);

  sub_30B8(v47, &unk_353020, &unk_2D0970);
  return sub_30B8(v48, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v92 = a7;
  v93 = a8;
  v91 = a6;
  v95 = a5;
  v84 = a4;
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v94 = a9;
  v80 = sub_2CE000();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v90 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2CCB20();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v86);
  v89 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v75 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v15 - 8);
  v88 = &v75 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v17 - 8);
  v87 = &v75 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v19 - 8);
  v85 = &v75 - v20;
  v21 = sub_2CCB30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v75 - v30);
  sub_F3F4(v81, &v75 - v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.sfmnvs(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v21);
    swift_getErrorValue();
    sub_2CEEF0();
    v90 = sub_2CCAF0();

    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    v95 = sub_35E0(v95 + 3, v95[6]);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    v36 = v85;
    (*(v35 + 104))(v85, v33, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v37 = sub_2CA130();
    v38 = v87;
    (*(*(v37 - 8) + 56))(v87, 1, 1, v37);
    v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v40 = sub_2C98F0();
    v41 = *(v40 - 8);
    v42 = v88;
    (*(v41 + 104))(v88, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v36, &qword_34CB88, &unk_2D0D90);
    v96[0] = v32;
    v97 = 1;
    swift_errorRetain();
    v93(v96);

    return sub_30B8(v96, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v81 = a10;
    v44 = v31;
    v45 = v78;
    sub_14A58(v44, v78, &qword_34C6E8, &unk_2D0FF0);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.sfmnvs(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v21);
    v46 = v76;
    v47 = v75;
    v48 = v77;
    (*(v76 + 104))(v75, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v77);
    v83 = sub_2CCB00();
    v82 = v49;
    (*(v46 + 8))(v47, v48);
    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    v77 = sub_35E0(v95 + 3, v95[6]);
    v50 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    v53 = v85;
    (*(v52 + 104))(v85, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = v45;
    v55 = v89;
    sub_F3F4(v45, v89, &qword_34C6E8, &unk_2D0FF0);

    v56 = sub_2CA130();
    v57 = *(v56 - 8);
    v58 = v87;
    (*(v57 + 32))(v87, v55, v56);
    v59 = *(v57 + 56);
    v84 = v56;
    v59(v58, 0, 1, v56);
    v60 = enum case for SiriKitReliabilityCodes.success(_:);
    v61 = sub_2C98F0();
    v62 = *(v61 - 8);
    v63 = v88;
    (*(v62 + 104))(v88, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v63, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v58, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v53, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v64 = v80;
    v65 = sub_3ED0(v80, static Logger.default);
    swift_beginAccess();
    v66 = v79;
    (*(v79 + 16))(v90, v65, v64);
    v67 = sub_2CDFE0();
    v68 = sub_2CE680();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v93;
    v71 = v94;
    if (v69)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v67, v68, "SearchForMediaNeedsValueStrategy#makePromptForValue return confirmation view output", v72, 2u);
    }

    (*(v66 + 8))(v90, v64);
    sub_35E0(v95 + 8, v95[11]);
    v73 = v89;
    sub_F3F4(v54, v89, &qword_34C6E8, &unk_2D0FF0);
    v74 = *(v73 + *(v86 + 48));
    sub_1C1A94(v73, v74, v81, v70, v71);

    sub_30B8(v54, &qword_34C6E8, &unk_2D0FF0);
    return (*(v57 + 8))(v73, v84);
  }
}

uint64_t Determine.UnsupportedValueStrategy.__deallocating_deinit()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_3FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_3FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_3FF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s11descr32D959O18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_3FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_40074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s11descr32D959O18NeedsValueStrategyCMa();
  *v14 = v7;
  v14[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_40158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = _s11descr32D959O18NeedsValueStrategyCMa();
  *v16 = v8;
  v16[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

void sub_40294(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v204 = a6;
  v205 = a5;
  v211 = a4;
  v201 = a2;
  v202 = a1;
  v203 = sub_20410(&qword_34CF90, &qword_2D0FA8);
  __chkstk_darwin(v203);
  v206 = (&v188 - v7);
  v212 = sub_2CA870();
  v8 = *(v212 - 1);
  v9 = __chkstk_darwin(v212);
  v11 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v193 = &v188 - v13;
  __chkstk_darwin(v12);
  v15 = (&v188 - v14);
  v16 = sub_2CE000();
  v17 = *(v16 - 1);
  v18 = __chkstk_darwin(v16);
  v192 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v198 = &v188 - v21;
  v22 = __chkstk_darwin(v20);
  v199 = &v188 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v188 - v25;
  v27 = __chkstk_darwin(v24);
  v195 = &v188 - v28;
  v29 = __chkstk_darwin(v27);
  v190 = &v188 - v30;
  v31 = __chkstk_darwin(v29);
  v189 = &v188 - v32;
  v33 = __chkstk_darwin(v31);
  v196 = &v188 - v34;
  v35 = __chkstk_darwin(v33);
  v191 = &v188 - v36;
  v37 = __chkstk_darwin(v35);
  v194 = &v188 - v38;
  __chkstk_darwin(v37);
  v40 = &v188 - v39;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v42 = *(v17 + 16);
  v207 = v41;
  v209 = v17 + 16;
  v208 = v42;
  v42(v40, v41, v16);

  v43 = sub_2CDFE0();
  v44 = sub_2CE690();

  v45 = os_log_type_enabled(v43, v44);
  v213 = v17;
  v200 = a3;
  v197 = v26;
  if (v45)
  {
    v46 = a3;
    v47 = swift_slowAlloc();
    v48 = v16;
    v49 = swift_slowAlloc();
    *&v218 = v49;
    *v47 = 136446210;
    *(v47 + 4) = sub_3F08(v201, v46, &v218);
    _os_log_impl(&dword_0, v43, v44, "SearchForMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v47, 0xCu);
    sub_306C(v49);
    v16 = v48;
    v17 = v213;
  }

  v210 = *(v17 + 8);
  v210(v40, v16);
  [v202 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v50 = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v222 = 0;
  }

  sub_2CA790();
  v51 = *(v8 + 88);
  v52 = v212;
  v53 = v51(v15, v212);
  v54 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v53 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v202 = v50;
    v67 = v16;
    v68 = enum case for Parse.pommesResponse(_:);
    if (v53 == enum case for Parse.pommesResponse(_:))
    {
      (*(v8 + 96))(v15, v52);
      v69 = *v15;
      v70 = sub_1B7F14();
      if (!v70)
      {
        v119 = v190;
        v208(v190, v207, v67);
        v120 = sub_2CDFE0();
        v121 = sub_2CE680();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_0, v120, v121, "SearchForMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v122, 2u);
        }

        v210(v119, v67);
        v123 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v124 = swift_allocError();
        (*(*(v123 - 8) + 104))(v125, enum case for PlaybackCode.ceGE77(_:), v123);
        v126 = v206;
        *v206 = v124;
        swift_storeEnumTagMultiPayload();
        v205(v126);

        goto LABEL_69;
      }

      v71 = v70;
      v72 = v193;
      sub_2CA790();
      v73 = sub_D2F98(v72, &v216);
      (*(v8 + 8))(v72, v52, v73);
      v16 = v67;
      if (!v217)
      {
        sub_30B8(&v216, &qword_34CF98, &unk_2D1A40);
        v153 = v189;
        v208(v189, v207, v67);
        v154 = sub_2CDFE0();
        v155 = sub_2CE690();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_0, v154, v155, "SearchForMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v156, 2u);
        }

        v210(v153, v67);
        v157 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v158 = swift_allocError();
        (*(*(v157 - 8) + 104))(v159, enum case for PlaybackCode.ceGE78(_:), v157);
        v126 = v206;
        *v206 = v158;
        swift_storeEnumTagMultiPayload();
        v205(v126);

        goto LABEL_69;
      }

      sub_420A4(&v216, &v218);
      v74 = v220;
      v75 = v221;
      v76 = sub_35E0(&v218, v220);
      v77 = sub_17FF0C(v76, 0, 0, v74, v75);
      sub_2CDBC0();
      sub_2CDBB0();
      v212 = v69;
      sub_2CDAE0();
      v78 = sub_2CDBA0();

      v211 = v71;
      v197 = v78;
      v79 = sub_22F9F8(v71);
      v80 = v191;
      v208(v191, v207, v67);
      v81 = v79;
      v82 = sub_2CDFE0();
      v83 = sub_2CE670();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        *(v84 + 4) = v81;
        *v85 = v81;
        v86 = v81;
        _os_log_impl(&dword_0, v82, v83, "SearchForMediaNeedsValueStrategy#parseResponseValue Updating privateSearchForMediaIntentData with: %@", v84, 0xCu);
        sub_30B8(v85, &unk_34FC00, &unk_2D0150);
        v16 = v67;
      }

      v210(v80, v16);
      if (v222)
      {
        v87 = v222;
        v88 = [v87 backingStore];
        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        if (v89)
        {
          v90 = v89;
          v91 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData();
          [v90 setPrivateSearchForMediaIntentData:v91];
        }

        else
        {
          v91 = v87;
          v87 = v88;
        }

        v16 = v67;
      }

      v208(v196, v207, v16);
      v160 = v77;
      v161 = sub_2CDFE0();
      v162 = sub_2CE670();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v163 = 138412290;
        *(v163 + 4) = v160;
        *v164 = v160;
        v165 = v160;
        _os_log_impl(&dword_0, v161, v162, "SearchForMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v163, 0xCu);
        sub_30B8(v164, &unk_34FC00, &unk_2D0150);
        v16 = v67;
      }

      v210(v196, v16);
      v166 = v222;
      if (!v222)
      {

        v60 = v200;
        goto LABEL_65;
      }

      objc_opt_self();
      v167 = swift_dynamicCastObjCClass();
      v60 = v200;
      if (v167)
      {
        v168 = v160;
        v169 = v166;
        v170 = [v169 backingStore];
        objc_opt_self();
        v171 = swift_dynamicCastObjCClass();
        if (v171)
        {
          goto LABEL_61;
        }

LABEL_63:

LABEL_64:

LABEL_65:
        sub_306C(&v218);
        v61 = v199;
        v62 = v222;
        if (v222)
        {
LABEL_10:
          if (v201 == 0x657449616964656DLL && v60 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
          {
            v63 = v62;
            v64 = [v63 mediaItems];
            if (v64)
            {
              v65 = v64;
              sub_334A0(0, &qword_356F50, INMediaItem_ptr);
              v66 = sub_2CE410();

              v64 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
            }

            else
            {
              v66 = 0;
            }

            v218 = v66;
            v219 = 0;
            v220 = v64;
            v127 = v198;
            v208(v198, v207, v16);
            sub_F3F4(&v218, &v216, &qword_34CEA0, &qword_2D0FC0);
            v128 = sub_2CDFE0();
            v129 = sub_2CE690();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v215 = v131;
              *v130 = 136446210;
              v212 = v16;
              sub_F3F4(&v216, v214, &qword_34CEA0, &qword_2D0FC0);
              sub_20410(&qword_34CEA0, &qword_2D0FC0);
              v132 = sub_2CE2A0();
              v134 = v133;
              sub_30B8(&v216, &qword_34CEA0, &qword_2D0FC0);
              v135 = sub_3F08(v132, v134, &v215);

              *(v130 + 4) = v135;
              _os_log_impl(&dword_0, v128, v129, "SearchForMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v130, 0xCu);
              sub_306C(v131);

              v136 = v198;
              v137 = v212;
            }

            else
            {

              sub_30B8(&v216, &qword_34CEA0, &qword_2D0FC0);
              v136 = v127;
              v137 = v16;
            }

            v210(v136, v137);
            sub_F3F4(&v218, &v216, &qword_34CEA0, &qword_2D0FC0);
            v138 = v63;
            v139 = v206;
            sub_2CA220();
            v140 = sub_20410(&qword_34CFA0, &qword_2D0FC8);
            (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
            swift_storeEnumTagMultiPayload();
            v205(v139);

            sub_30B8(v139, &qword_34CF90, &qword_2D0FA8);
            v141 = &v218;
            v142 = &qword_34CEA0;
            v143 = &qword_2D0FC0;
          }

          else
          {
            v208(v61, v207, v16);

            v144 = v62;
            v145 = sub_2CDFE0();
            v146 = sub_2CE680();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              *&v216 = v148;
              *v147 = 136315138;
              *(v147 + 4) = sub_3F08(v201, v60, &v216);
              _os_log_impl(&dword_0, v145, v146, "SearchForMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v147, 0xCu);
              sub_306C(v148);
            }

            v210(v61, v16);
            v149 = sub_2CB850();
            sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
            v150 = swift_allocError();
            (*(*(v149 - 8) + 104))(v151, enum case for PlaybackCode.ceGE81(_:), v149);
            v152 = v206;
            *v206 = v150;
            swift_storeEnumTagMultiPayload();
            v205(v152);

            v142 = &qword_34CF90;
            v143 = &qword_2D0FA8;
            v141 = v152;
          }

          goto LABEL_70;
        }

        goto LABEL_66;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v168 = v160;
        v169 = v166;
        v170 = [v169 backingStore];
        objc_opt_self();
        v171 = swift_dynamicCastObjCClass();
        if (v171)
        {
LABEL_61:
          v172 = v171;
          v173 = INIntentSlotValueTransformToMediaSearch();
          [v172 setMediaSearch:v173];

          v16 = v67;
LABEL_62:

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      objc_opt_self();
      v181 = swift_dynamicCastObjCClass();
      v182 = v160;
      v183 = v166;
      v170 = [v183 backingStore];
      if (v181)
      {
        objc_opt_self();
        v184 = swift_dynamicCastObjCClass();
        v185 = v211;
        if (v184)
        {
          goto LABEL_76;
        }
      }

      else
      {
        objc_opt_self();
        v184 = swift_dynamicCastObjCClass();
        v185 = v211;
        if (v184)
        {
LABEL_76:
          v186 = v184;
          v187 = INIntentSlotValueTransformToMediaSearch();
          [v186 setMediaSearch:v187];

          v16 = v67;
          goto LABEL_62;
        }
      }

      goto LABEL_64;
    }

    sub_2CA790();
    v92 = v212;
    v93 = v51(v11, v212);
    if (v93 == v54)
    {
      (*(v8 + 96))(v11, v92);
      sub_20410(&qword_353070, &unk_2D0FB0);

      v94 = sub_2CAFE0();
      (*(*(v94 - 8) + 8))(v11, v94);
      v95 = v67;
      v96 = v197;
    }

    else
    {
      v106 = v93;
      (*(v8 + 8))(v11, v92);
      v107 = v106 == v68;
      v95 = v67;
      v96 = v197;
      if (!v107)
      {
LABEL_33:
        v208(v96, v207, v95);
        v112 = sub_2CDFE0();
        v113 = sub_2CE690();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_0, v112, v113, "SearchForMediaNeedsValueStrategy#parseResponseValue intent not of right type", v114, 2u);
        }

        v210(v96, v95);
        v115 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v116 = swift_allocError();
        (*(*(v115 - 8) + 104))(v117, enum case for PlaybackCode.ceGE79(_:), v115);
        v118 = v206;
        *v206 = v116;
        swift_storeEnumTagMultiPayload();
        v205(v118);
        sub_30B8(v118, &qword_34CF90, &qword_2D0FA8);
        (*(v8 + 8))(v15, v212);
        goto LABEL_71;
      }
    }

    v108 = v195;
    v208(v195, v207, v95);
    v109 = sub_2CDFE0();
    v110 = sub_2CE680();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_0, v109, v110, "SearchForMediaNeedsValueStrategy#parseResponseValue and SearchForMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v111, 2u);
    }

    v210(v108, v95);
    goto LABEL_33;
  }

  (*(v8 + 96))(v15, v52);
  sub_20410(&qword_353070, &unk_2D0FB0);
  v55 = sub_2CA830();
  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (v56)
  {
    v57 = v56;

    v58 = v222;
    v222 = v57;

    v59 = sub_2CAFE0();
    (*(*(v59 - 8) + 8))(v15, v59);
    v60 = v200;
    v61 = v199;
    v62 = v222;
    if (v222)
    {
      goto LABEL_10;
    }

LABEL_66:
    v174 = v192;
    v208(v192, v207, v16);
    v175 = sub_2CDFE0();
    v176 = sub_2CE690();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_0, v175, v176, "SearchForMediaNeedsValueStrategy#parseResponseValue updatedIntent nil", v177, 2u);
    }

    v210(v174, v16);
    v178 = sub_2CB850();
    sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v179 = swift_allocError();
    (*(*(v178 - 8) + 104))(v180, enum case for PlaybackCode.ceGE80(_:), v178);
    v126 = v206;
    *v206 = v179;
    swift_storeEnumTagMultiPayload();
    v205(v126);
LABEL_69:
    v142 = &qword_34CF90;
    v143 = &qword_2D0FA8;
    v141 = v126;
LABEL_70:
    sub_30B8(v141, v142, v143);
    goto LABEL_71;
  }

  v97 = v194;
  v208(v194, v207, v16);
  v98 = sub_2CDFE0();
  v99 = sub_2CE670();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_0, v98, v99, "SearchForMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v100, 2u);
  }

  v210(v97, v16);
  v101 = sub_2CB850();
  sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v102 = swift_allocError();
  (*(*(v101 - 8) + 104))(v103, enum case for PlaybackCode.ceGE76(_:), v101);
  v104 = v206;
  *v206 = v102;
  swift_storeEnumTagMultiPayload();
  v205(v104);

  sub_30B8(v104, &qword_34CF90, &qword_2D0FA8);
  v105 = sub_2CAFE0();
  (*(*(v105 - 8) + 8))(v15, v105);
LABEL_71:
}

_OWORD *sub_420A4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_42148(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

BOOL sub_42190()
{
  sub_2CAD10();
  sub_F3F4(v7, v5, &qword_34CEA0, &qword_2D0FC0);
  if (v6)
  {
    sub_2CAD60();
    if (swift_dynamicCast())
    {

      sub_2CAF40();

      if (v5[0])
      {

        v0 = 0;
      }

      else
      {
        v2 = sub_2CAF30();
        if (v2)
        {
          if (v2 >> 62)
          {
            v3 = sub_2CEDA0();
          }

          else
          {
            v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
          }

          v0 = v3 == 0;
        }

        else
        {

          v0 = 1;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(v7, v5, &qword_34CEA0, &qword_2D0FC0);
  if (!v6)
  {
    sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);
    v1 = v5;
LABEL_12:
    sub_30B8(v1, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v1 = v7;
    goto LABEL_12;
  }

  if (sub_2CAE30())
  {
    v0 = sub_2CAD80();

LABEL_20:
    sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);
    return v0;
  }

  sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);

  return 0;
}

BOOL sub_423CC()
{
  sub_2CAD10();
  sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
  if (!v3)
  {
    sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
LABEL_5:
    sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
    if (v3)
    {
      sub_2CAEC0();
      if (swift_dynamicCast())
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
    }

    sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
    if (v3)
    {
      sub_2CAE70();
      if (swift_dynamicCast())
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
    }

    sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_11:

  sub_2CAF40();

  sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
  v0 = v2[0] != 0;
  if (v2[0])
  {
  }

  return v0;
}

uint64_t sub_4259C()
{
  sub_2CAD10();
  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAE20();
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAE90();
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAD40();
    if (swift_dynamicCast())
    {
LABEL_11:

      sub_30B8(&v3, &qword_34CEA0, &qword_2D0FC0);
      return 1;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    sub_2CAE10();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  return 0;
}

BOOL sub_42784()
{
  v0 = sub_20410(&qword_34CFC0, &qword_2D1020);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_2CAE60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CAD10();
  sub_F3F4(&v26, &v24, &qword_34CEA0, &qword_2D0FC0);
  if (!*(&v25 + 1))
  {
    sub_30B8(&v24, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_11;
  }

  sub_2CAEB0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2CAED0();

  if (!v24)
  {
    goto LABEL_10;
  }

  sub_2CAAF0();

  v7 = sub_2CAFF0();

  if (!*(v7 + 16))
  {

LABEL_10:

    goto LABEL_11;
  }

  sub_4F538(0x73636972796CLL, 0xE600000000000000);
  v9 = v8;

  if (v9)
  {
    goto LABEL_30;
  }

LABEL_11:
  sub_F3F4(&v26, &v24, &qword_34CEA0, &qword_2D0FC0);
  if (!*(&v25 + 1))
  {
    sub_30B8(&v24, &qword_34CEA0, &qword_2D0FC0);
LABEL_18:
    sub_F3F4(&v26, &v24, &qword_34CEA0, &qword_2D0FC0);
    if (*(&v25 + 1))
    {
      sub_2CAF90();
      if (swift_dynamicCast())
      {
        sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);
        goto LABEL_24;
      }
    }

    else
    {
      sub_30B8(&v24, &qword_34CEA0, &qword_2D0FC0);
    }

    v24 = v26;
    v25 = v27;
    if (!*(&v27 + 1))
    {
      v13 = &v24;
LABEL_31:
      sub_30B8(v13, &qword_34CEA0, &qword_2D0FC0);
      return 0;
    }

    sub_2CAEB0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

LABEL_24:

    return 1;
  }

  sub_2CAF50();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2CAF40();
  if (v24)
  {

    sub_2CAAF0();

    v10 = sub_2CAFF0();

    if (*(v10 + 16))
    {
      sub_4F538(0x73636972796CLL, 0xE600000000000000);
      v12 = v11;

      if (v12)
      {

LABEL_30:
        v13 = &v26;
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  sub_2CAF40();
  if (v24)
  {
    v14 = sub_2CAC20();

    if (v14)
    {

      goto LABEL_30;
    }
  }

  sub_20410(&qword_34CFC8, &qword_2D1028);
  v16 = *(v4 + 72);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2D1010;
  v23 = v18;
  v19 = v18 + v17;
  v20 = *(v4 + 104);
  v20(v19, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_TvShow(_:), v3);
  v20(v19 + v16, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Movie(_:), v3);
  v20(v19 + 2 * v16, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Video(_:), v3);
  v20(v19 + 3 * v16, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Episode(_:), v3);
  sub_2CAF40();

  if (!v24 || (v21 = sub_2CAD70(), , !v21))
  {
    sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);

    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_37;
  }

  sub_2CAE50();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);

LABEL_37:
    sub_30B8(v2, &qword_34CFC0, &qword_2D1020);
    return 1;
  }

  (*(v4 + 32))(v6, v2, v3);
  v22 = sub_1953B4(v6, v23);

  (*(v4 + 8))(v6, v3);
  sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);
  return !v22;
}

uint64_t sub_42E44()
{
  v52 = sub_2CAB40();
  v0 = *(v52 - 8);
  v1 = __chkstk_darwin(v52);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v48 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  sub_2CAD10();
  sub_F3F4(v56, v54, &qword_34CEA0, &qword_2D0FC0);
  if (!v55)
  {
    sub_30B8(v54, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_16;
  }

  sub_2CAD50();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_F3F4(v56, v54, &qword_34CEA0, &qword_2D0FC0);
    if (!v55)
    {
      sub_30B8(v56, &qword_34CEA0, &qword_2D0FC0);
      v38 = v54;
LABEL_38:
      sub_30B8(v38, &qword_34CEA0, &qword_2D0FC0);
      goto LABEL_39;
    }

    sub_2CAF50();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_37:
      v38 = v56;
      goto LABEL_38;
    }

    v29 = v53;

    sub_2CAF40();

    if (v54[0])
    {
      v30 = sub_2CAC20();

      if (!v30)
      {
        sub_30B8(v56, &qword_34CEA0, &qword_2D0FC0);

        return v30 & 1;
      }

      v31 = sub_2CAC30();

      if (v31)
      {
        v49 = v9;
        v50 = v29;
        v51 = *(v31 + 16);
        if (v51)
        {
          v32 = 0;
          v33 = v31 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
          v34 = (v0 + 8);
          do
          {
            if (v32 >= *(v31 + 16))
            {
LABEL_53:
              __break(1u);
              return result;
            }

            (*(v0 + 16))(v3, v33 + *(v0 + 72) * v32, v52);
            v36 = sub_2CAB30();
            if (v37)
            {
              if (v36 == 0x656D614E707061 && v37 == 0xE700000000000000)
              {

LABEL_46:

                v44 = *(v0 + 32);
                v45 = v52;
                v44(v6, v3, v52);
                v46 = v49;
                v44(v49, v6, v45);
                if (sub_2CAB20() == 0xD000000000000011 && 0x80000000002DADE0 == v47)
                {
                  LOBYTE(v30) = 1;
                }

                else
                {
                  LOBYTE(v30) = sub_2CEEA0();
                }

                (*v34)(v46, v52);
                goto LABEL_51;
              }

              v35 = sub_2CEEA0();

              if (v35)
              {
                goto LABEL_46;
              }
            }

            ++v32;
            result = (*v34)(v3, v52);
          }

          while (v51 != v32);
        }

        goto LABEL_36;
      }
    }

    sub_30B8(v56, &qword_34CEA0, &qword_2D0FC0);

LABEL_39:
    LOBYTE(v30) = 0;
    return v30 & 1;
  }

  v18 = v53;

  sub_2CAA90();

  v19 = v54[0];
  if (!v54[0])
  {

    goto LABEL_16;
  }

  v49 = v15;
  result = sub_2CAC30();
  if (!result)
  {
    sub_30B8(v56, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_39;
  }

  v21 = result;
  v50 = v19;
  v51 = v18;
  v48 = v17;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_32:

LABEL_36:

    goto LABEL_37;
  }

  v23 = 0;
  v24 = result + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v25 = (v0 + 8);
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_53;
    }

    (*(v0 + 16))(v12, v24 + *(v0 + 72) * v23, v52);
    v27 = sub_2CAB30();
    if (!v28)
    {
      goto LABEL_8;
    }

    if (v27 == 0x656D614E707061 && v28 == 0xE700000000000000)
    {
      break;
    }

    v26 = sub_2CEEA0();

    if (v26)
    {
      goto LABEL_41;
    }

LABEL_8:
    ++v23;
    result = (*v25)(v12, v52);
    if (v22 == v23)
    {
      goto LABEL_32;
    }
  }

LABEL_41:

  v39 = *(v0 + 32);
  v40 = v49;
  v41 = v52;
  v39(v49, v12, v52);
  v42 = v48;
  v39(v48, v40, v41);
  if (sub_2CAB20() == 0xD000000000000011 && 0x80000000002DADE0 == v43)
  {
    LOBYTE(v30) = 1;
  }

  else
  {
    LOBYTE(v30) = sub_2CEEA0();
  }

  (*v25)(v42, v52);
LABEL_51:
  sub_30B8(v56, &qword_34CEA0, &qword_2D0FC0);
  return v30 & 1;
}

BOOL sub_435A0()
{
  sub_2CAD10();
  if (!v5)
  {
    sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_5;
  }

  sub_2CAEC0();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t sub_43638()
{
  v0 = sub_2CD9E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CAB40();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v32 - v10;
  __chkstk_darwin(v9);
  v13 = v32 - v12;
  sub_2CAD10();
  sub_F3F4(v41, v40, &qword_34CEA0, &qword_2D0FC0);
  if (!v40[3])
  {
    sub_30B8(v41, &qword_34CEA0, &qword_2D0FC0);
    v15 = v40;
    goto LABEL_7;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v15 = v41;
LABEL_7:
    sub_30B8(v15, &qword_34CEA0, &qword_2D0FC0);
LABEL_8:
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v14 = v39;
  if (sub_2CAE30())
  {

    goto LABEL_5;
  }

  v16 = sub_2CAF30();

  if (!v16)
  {
LABEL_20:
    sub_30B8(v41, &qword_34CEA0, &qword_2D0FC0);

    return v16 & 1;
  }

  v38 = v5;
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (!(v16 >> 62))
  {
    result = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_13;
    }

LABEL_39:
    sub_30B8(v41, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_40;
  }

LABEL_38:
  result = sub_2CEDA0();
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_13:
  v33 = v1;
  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
  }

  else
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      return result;
    }
  }

  sub_2CAC10();

  v16 = v40[0];
  if (!v40[0])
  {
    goto LABEL_20;
  }

  sub_2CD9A0();
  v1 = sub_2CAC30();

  if (!v1)
  {
    sub_30B8(v41, &qword_34CEA0, &qword_2D0FC0);

LABEL_40:

    goto LABEL_8;
  }

  v32[0] = v0;
  v32[1] = v16;
  v32[2] = v14;
  v37 = *(v1 + 16);
  if (!v37)
  {
LABEL_29:

    goto LABEL_5;
  }

  v18 = 0;
  v35 = v1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v34 = v38 + 16;
  v36 = (v38 + 8);
  while (1)
  {
    if (v18 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v0 = v1;
    (*(v38 + 16))(v8, v35 + *(v38 + 72) * v18, v4);
    v14 = sub_2CAB30();
    v20 = v19;
    v21 = sub_2CD9D0();
    v16 = v22;
    if (!v20)
    {

      goto LABEL_22;
    }

    if (v14 == v21 && v20 == v22)
    {
      break;
    }

    v14 = sub_2CEEA0();

    if (v14)
    {
      goto LABEL_32;
    }

LABEL_22:
    ++v18;
    (*v36)(v8, v4);
    v1 = v0;
    if (v37 == v18)
    {
      goto LABEL_29;
    }
  }

LABEL_32:

  v23 = *(v38 + 32);
  v23(v11, v8, v4);
  v23(v13, v11, v4);
  v24 = sub_2CAB20();
  v26 = v25;
  v27 = v33;
  v28 = v32[0];
  (*(v33 + 104))(v3, enum case for UsoMediaPlayerAttributes.shuffled(_:), v32[0]);
  v29 = sub_2CD9C0();
  v31 = v30;
  (*(v27 + 8))(v3, v28);
  if (v24 == v29 && v26 == v31)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    LOBYTE(v16) = sub_2CEEA0();
  }

  (*v36)(v13, v4);
  sub_30B8(v41, &qword_34CEA0, &qword_2D0FC0);
  return v16 & 1;
}

uint64_t sub_43C3C()
{
  v84 = sub_2CD9E0();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = v79 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2CAB40();
  v87 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v92 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v80 = v79 - v5;
  __chkstk_darwin(v4);
  v83 = v79 - v6;
  v91 = sub_2CAE60();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_20410(&qword_34CFD0, &qword_2D1030);
  __chkstk_darwin(v88);
  v90 = v79 - v8;
  v9 = sub_20410(&qword_34CFC0, &qword_2D1020);
  v10 = __chkstk_darwin(v9 - 8);
  v86 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v93 = v79 - v13;
  __chkstk_darwin(v12);
  v94 = v79 - v14;
  v15 = sub_2CAD00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34CFD8, &qword_2D1038);
  __chkstk_darwin(v19);
  v21 = v79 - v20;
  v22 = sub_20410(&qword_34CFE0, &unk_2D1040);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = v79 - v27;
  __chkstk_darwin(v26);
  v30 = v79 - v29;
  sub_2CAD10();
  sub_F3F4(v97, v96, &qword_34CEA0, &qword_2D0FC0);
  if (!v96[3])
  {
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);
    v34 = v96;
LABEL_52:
    sub_30B8(v34, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_53;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v34 = v97;
    goto LABEL_52;
  }

  v31 = v95;
  v32 = sub_2CAE30();
  if (!v32)
  {
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);

LABEL_53:
    v65 = 0;
    return v65 & 1;
  }

  v79[1] = v31;
  v79[2] = v32;
  v33 = sub_2CADB0();
  v79[0] = v1;
  if (v33)
  {
    sub_2CACF0();
  }

  else
  {
    (*(v16 + 56))(v30, 1, 1, v15);
  }

  (*(v16 + 104))(v28, enum case for UsoEntity_common_Person.DefinedValues.common_Person_User(_:), v15);
  (*(v16 + 56))(v28, 0, 1, v15);
  v35 = *(v19 + 48);
  sub_F3F4(v30, v21, &qword_34CFE0, &unk_2D1040);
  sub_F3F4(v28, &v21[v35], &qword_34CFE0, &unk_2D1040);
  v36 = *(v16 + 48);
  if (v36(v21, 1, v15) == 1)
  {
    sub_30B8(v28, &qword_34CFE0, &unk_2D1040);
    sub_30B8(v30, &qword_34CFE0, &unk_2D1040);
    if (v36(&v21[v35], 1, v15) == 1)
    {
      sub_30B8(v21, &qword_34CFE0, &unk_2D1040);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  sub_F3F4(v21, v25, &qword_34CFE0, &unk_2D1040);
  if (v36(&v21[v35], 1, v15) == 1)
  {
    sub_30B8(v28, &qword_34CFE0, &unk_2D1040);
    sub_30B8(v30, &qword_34CFE0, &unk_2D1040);
    (*(v16 + 8))(v25, v15);
LABEL_14:
    sub_30B8(v21, &qword_34CFD8, &qword_2D1038);
LABEL_15:
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_53;
  }

  (*(v16 + 32))(v18, &v21[v35], v15);
  sub_44DD4(&qword_34CFF0, &type metadata accessor for UsoEntity_common_Person.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Person.DefinedValues);
  v37 = sub_2CE250();
  v38 = *(v16 + 8);
  v38(v18, v15);
  sub_30B8(v28, &qword_34CFE0, &unk_2D1040);
  sub_30B8(v30, &qword_34CFE0, &unk_2D1040);
  v38(v25, v15);
  sub_30B8(v21, &qword_34CFE0, &unk_2D1040);
  if ((v37 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_2CAD70())
  {
    v39 = v94;
    sub_2CAE50();

    v41 = v90;
    v40 = v91;
    v42 = v89;
  }

  else
  {
    v42 = v89;
    v39 = v94;
    v40 = v91;
    (*(v89 + 56))(v94, 1, 1, v91);
    v41 = v90;
  }

  v43 = v93;
  (*(v42 + 104))(v93, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Music(_:), v40);
  (*(v42 + 56))(v43, 0, 1, v40);
  v44 = *(v88 + 48);
  sub_F3F4(v39, v41, &qword_34CFC0, &qword_2D1020);
  sub_F3F4(v43, v41 + v44, &qword_34CFC0, &qword_2D1020);
  v45 = *(v42 + 48);
  if (v45(v41, 1, v40) == 1)
  {
    sub_30B8(v43, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v39, &qword_34CFC0, &qword_2D1020);
    if (v45(v41 + v44, 1, v40) == 1)
    {
      sub_30B8(v41, &qword_34CFC0, &qword_2D1020);
      goto LABEL_29;
    }

LABEL_25:
    sub_30B8(v41, &qword_34CFD0, &qword_2D1030);
    goto LABEL_26;
  }

  v46 = v86;
  sub_F3F4(v41, v86, &qword_34CFC0, &qword_2D1020);
  if (v45(v41 + v44, 1, v40) == 1)
  {
    sub_30B8(v93, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v94, &qword_34CFC0, &qword_2D1020);
    (*(v42 + 8))(v46, v40);
    goto LABEL_25;
  }

  v47 = v85;
  (*(v42 + 32))(v85, v41 + v44, v40);
  sub_44DD4(&qword_34CFE8, &type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_MediaItemType.DefinedValues);
  v48 = sub_2CE250();
  v49 = *(v42 + 8);
  v49(v47, v40);
  sub_30B8(v93, &qword_34CFC0, &qword_2D1020);
  sub_30B8(v94, &qword_34CFC0, &qword_2D1020);
  v49(v46, v40);
  sub_30B8(v41, &qword_34CFC0, &qword_2D1020);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:

  v50 = sub_2CAF30();

  if (!v50)
  {
    goto LABEL_26;
  }

  v51 = v50 & 0xFFFFFFFFFFFFFF8;
  if (v50 >> 62)
  {
LABEL_63:
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
  }

  v53 = v79[0];
  if (!result)
  {
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_27;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
  }

  else
  {
    if (!*(v51 + 16))
    {
      __break(1u);
      return result;
    }
  }

  sub_2CAC10();

  v50 = v96[0];
  if (!v96[0])
  {
LABEL_26:
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);
LABEL_27:

    goto LABEL_53;
  }

  sub_2CD9A0();
  v51 = v50;
  v54 = sub_2CAC30();

  if (!v54)
  {
    sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_27;
  }

  v55 = *(v54 + 16);
  if (!v55)
  {
LABEL_50:

    goto LABEL_51;
  }

  v56 = 0;
  v57 = v54 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v58 = (v87 + 8);
  while (1)
  {
    if (v56 >= *(v54 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }

    (*(v87 + 16))(v92, v57 + *(v87 + 72) * v56, v53);
    v59 = sub_2CAB30();
    v61 = v60;
    v62 = sub_2CD9D0();
    v51 = v63;
    if (!v61)
    {

      goto LABEL_42;
    }

    if (v59 == v62 && v61 == v63)
    {
      break;
    }

    v64 = sub_2CEEA0();

    if (v64)
    {
      goto LABEL_57;
    }

LABEL_42:
    ++v56;
    v53 = v79[0];
    (*v58)(v92, v79[0]);
    if (v55 == v56)
    {
      goto LABEL_50;
    }
  }

LABEL_57:

  v66 = *(v87 + 32);
  v67 = v80;
  v68 = v79[0];
  v66(v80, v92, v79[0]);
  v69 = v83;
  v66(v83, v67, v68);
  v70 = sub_2CAB20();
  v72 = v71;
  v73 = v82;
  v74 = v81;
  v75 = v84;
  (*(v82 + 104))(v81, enum case for UsoMediaPlayerAttributes.shuffled(_:), v84);
  v76 = sub_2CD9C0();
  v78 = v77;
  (*(v73 + 8))(v74, v75);
  if (v70 == v76 && v72 == v78)
  {
    v65 = 1;
  }

  else
  {
    v65 = sub_2CEEA0();
  }

  (*v58)(v69, v79[0]);
  sub_30B8(v97, &qword_34CEA0, &qword_2D0FC0);
  return v65 & 1;
}

uint64_t sub_44BB4()
{
  sub_2CAD10();
  sub_F3F4(v5, v3, &qword_34CEA0, &qword_2D0FC0);
  if (v4)
  {
    sub_2CAE00();
    if (swift_dynamicCast())
    {

      sub_2CAF40();

      if (v3[0])
      {
        v0 = sub_2CAC20();

        if (v0)
        {

          sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_30B8(v3, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(v5, v3, &qword_34CEA0, &qword_2D0FC0);
  if (!v4)
  {
    sub_30B8(v3, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_15;
  }

  sub_2CAE80();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAF40();

  if (v3[0])
  {
    v1 = sub_2CAC20();

    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
    if (v1)
    {

      return 1;
    }
  }

  else
  {
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
  }

  return 0;
}

uint64_t sub_44DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_44E1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v14, v15, v8);
    v16 = sub_2CDFE0();
    v17 = sub_2CE670();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "DetermineDialogProvider#respondWithCannotPreviousOrNextDialog Cannot answer question about previous", v18, 2u);
    }

    (*(v9 + 8))(v14, v8);
    v19 = sub_112C0(_swiftEmptyArrayStorage);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_94AFC(v19, a1, &v26, a3, a4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v12, v20, v8);
    v21 = sub_2CDFE0();
    v22 = sub_2CE670();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "DetermineDialogProvider#respondWithCannotPreviousOrNextDialog Cannot answer question about next", v23, 2u);
    }

    (*(v9 + 8))(v12, v8);
    v24 = sub_112C0(_swiftEmptyArrayStorage);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_94478(v24, a1, &v26, a3, a4);
  }

  return sub_48E38(&v26);
}

uint64_t sub_45174(uint64_t a1, int a2, uint64_t a3, id a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_2C6C9C([a4 unsupportedReason]);
  if ((v12 & 1) != 0 || v11 != 4)
  {
    sub_2CC230();
    v15 = sub_2CC1A0();
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_95180(v15, a1, &v16, a8, a9);

    sub_48E38(&v16);
    return sub_2CC1C0();
  }

  else
  {
    v13 = sub_112C0(_swiftEmptyArrayStorage);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_94478(v13, a1, &v16, a8, a9);

    return sub_48E38(&v16);
  }
}

uint64_t sub_45284()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetermineDialogProvider(uint64_t a1)
{
  result = qword_34D020;
  if (!qword_34D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45370(uint64_t a1, NSObject *a2, char *a3, char *a4)
{
  v410 = a1;
  v411 = a3;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v415 = v6;
  v416 = v7;
  v8 = __chkstk_darwin(v6);
  v408 = &v380 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v407 = &v380 - v11;
  v12 = __chkstk_darwin(v10);
  v403 = &v380 - v13;
  v14 = __chkstk_darwin(v12);
  v395 = &v380 - v15;
  v16 = __chkstk_darwin(v14);
  v401 = &v380 - v17;
  v18 = __chkstk_darwin(v16);
  v394 = &v380 - v19;
  v20 = __chkstk_darwin(v18);
  v400 = &v380 - v21;
  v22 = __chkstk_darwin(v20);
  v393 = &v380 - v23;
  v24 = __chkstk_darwin(v22);
  v399 = &v380 - v25;
  v26 = __chkstk_darwin(v24);
  v392 = &v380 - v27;
  v28 = __chkstk_darwin(v26);
  v398 = &v380 - v29;
  v30 = __chkstk_darwin(v28);
  v391 = &v380 - v31;
  v32 = __chkstk_darwin(v30);
  v397 = &v380 - v33;
  v34 = __chkstk_darwin(v32);
  v390 = &v380 - v35;
  v36 = __chkstk_darwin(v34);
  v396 = &v380 - v37;
  v38 = __chkstk_darwin(v36);
  v406 = &v380 - v39;
  v40 = __chkstk_darwin(v38);
  v402 = &v380 - v41;
  __chkstk_darwin(v40);
  v412 = &v380 - v42;
  v405 = sub_20410(&unk_353120, &unk_2D0B50);
  v43 = swift_allocObject();
  *(v43 + 32) = 0xD000000000000010;
  *(v43 + 16) = xmmword_2D1050;
  *(v43 + 40) = 0x80000000002DAE40;
  v417 = a2;
  v44 = [a2 whaDialogMetadata];
  if (!v44 || (v45 = v44, v46 = [v44 firstSpeakerName], v45, !v46))
  {
    v50 = (v43 + 48);
    *(v43 + 72) = &type metadata for String;
LABEL_6:
    *v50 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_7;
  }

  v47 = sub_2CE270();
  v49 = v48;

  v50 = (v43 + 48);
  *(v43 + 72) = &type metadata for String;
  if (!v49)
  {
    goto LABEL_6;
  }

  *v50 = v47;
LABEL_7:
  *(v43 + 56) = v49;
  *(v43 + 80) = 0xD000000000000011;
  *(v43 + 88) = 0x80000000002DAE60;
  v51 = [v417 whaDialogMetadata];
  if (!v51 || (v52 = v51, v53 = [v51 secondSpeakerName], v52, !v53))
  {
    v57 = (v43 + 96);
    *(v43 + 120) = &type metadata for String;
LABEL_12:
    *v57 = 0;
    v56 = 0xE000000000000000;
    goto LABEL_13;
  }

  v54 = sub_2CE270();
  v56 = v55;

  v57 = (v43 + 96);
  *(v43 + 120) = &type metadata for String;
  if (!v56)
  {
    goto LABEL_12;
  }

  *v57 = v54;
LABEL_13:
  *(v43 + 104) = v56;
  *(v43 + 128) = 0xD000000000000010;
  *(v43 + 136) = 0x80000000002DAE80;
  v58 = [v417 whaDialogMetadata];
  if (!v58 || (v59 = v58, v60 = [v58 firstSpeakerRoom], v59, !v60))
  {
    v64 = (v43 + 144);
    *(v43 + 168) = &type metadata for String;
    v65 = v415;
LABEL_18:
    *v64 = 0;
    v63 = 0xE000000000000000;
    goto LABEL_19;
  }

  v61 = sub_2CE270();
  v63 = v62;

  v64 = (v43 + 144);
  *(v43 + 168) = &type metadata for String;
  v65 = v415;
  if (!v63)
  {
    goto LABEL_18;
  }

  *v64 = v61;
LABEL_19:
  *(v43 + 152) = v63;
  *(v43 + 176) = 0xD000000000000011;
  *(v43 + 184) = 0x80000000002DAEA0;
  v66 = [v417 whaDialogMetadata];
  if (!v66 || (v67 = v66, v68 = [v66 secondSpeakerRoom], v67, !v68))
  {
    v72 = (v43 + 192);
    *(v43 + 216) = &type metadata for String;
LABEL_24:
    *v72 = 0;
    v71 = 0xE000000000000000;
    goto LABEL_25;
  }

  v69 = sub_2CE270();
  v71 = v70;

  v72 = (v43 + 192);
  *(v43 + 216) = &type metadata for String;
  if (!v71)
  {
    goto LABEL_24;
  }

  *v72 = v69;
LABEL_25:
  *(v43 + 200) = v71;
  *(v43 + 224) = 0xD000000000000024;
  *(v43 + 232) = 0x80000000002DAEC0;
  v73 = [v417 whaDialogMetadata];
  if (!v73 || (v74 = v73, v75 = [v73 firstPermanentNameFromSpokenEntities], v74, !v75))
  {
    v79 = (v43 + 240);
    *(v43 + 264) = &type metadata for String;
LABEL_30:
    *v79 = 0;
    v78 = 0xE000000000000000;
    goto LABEL_31;
  }

  v76 = sub_2CE270();
  v78 = v77;

  v79 = (v43 + 240);
  *(v43 + 264) = &type metadata for String;
  if (!v78)
  {
    goto LABEL_30;
  }

  *v79 = v76;
LABEL_31:
  *(v43 + 248) = v78;
  *(v43 + 272) = 0xD000000000000025;
  *(v43 + 280) = 0x80000000002DAEF0;
  v80 = [v417 whaDialogMetadata];
  if (!v80 || (v81 = v80, v82 = [v80 secondPermanentNameFromSpokenEntities], v81, !v82))
  {
    v86 = (v43 + 288);
    *(v43 + 312) = &type metadata for String;
LABEL_36:
    *v86 = 0;
    v85 = 0xE000000000000000;
    goto LABEL_37;
  }

  v83 = sub_2CE270();
  v85 = v84;

  v86 = (v43 + 288);
  *(v43 + 312) = &type metadata for String;
  if (!v85)
  {
    goto LABEL_36;
  }

  *v86 = v83;
LABEL_37:
  *(v43 + 296) = v85;
  *(v43 + 320) = 0xD00000000000001FLL;
  *(v43 + 328) = 0x80000000002DAF20;
  v87 = [v417 whaDialogMetadata];
  if (!v87 || (v88 = v87, v89 = [v87 firstRoomNameFromSpokenEntities], v88, !v89))
  {
    v93 = (v43 + 336);
    *(v43 + 360) = &type metadata for String;
LABEL_42:
    v94 = v417;
    *v93 = 0;
    v92 = 0xE000000000000000;
    goto LABEL_43;
  }

  v90 = sub_2CE270();
  v92 = v91;

  v93 = (v43 + 336);
  *(v43 + 360) = &type metadata for String;
  if (!v92)
  {
    goto LABEL_42;
  }

  *v93 = v90;
  v94 = v417;
LABEL_43:
  *(v43 + 344) = v92;
  *(v43 + 368) = 0xD00000000000001BLL;
  *(v43 + 376) = 0x80000000002DAF40;
  v95 = [v94 whaDialogMetadata];
  if (v95 && (v96 = v95, v97 = [v95 numberOfHomeAutomationWords], v96, v97))
  {
    *(&v420 + 1) = sub_48EA0();
    *&v419 = v97;
    sub_E2DC(&v419, (v43 + 384));
  }

  else
  {
    *(v43 + 408) = &type metadata for String;
    *(v43 + 384) = 0;
    *(v43 + 392) = 0xE000000000000000;
  }

  strcpy((v43 + 416), "isAllSpeakers");
  *(v43 + 430) = -4864;
  v98 = v417;
  v99 = [v417 whaDialogMetadata];
  isa = [v99 isAllSpeakers];

  v101 = sub_48EA0();
  *(v43 + 456) = v101;
  if (!isa)
  {
    isa = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 432) = isa;
  strcpy((v43 + 464), "isPauseOrStop");
  *(v43 + 478) = -4864;
  v102 = [v98 whaDialogMetadata];
  v103 = [v102 isPauseOrStop];

  *(v43 + 504) = v101;
  if (!v103)
  {
    v103 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 480) = v103;
  *(v43 + 512) = 0xD000000000000018;
  *(v43 + 520) = 0x80000000002DAF60;
  v104 = [v98 whaDialogMetadata];
  v105 = [v104 isWholeHouseAudioCommand];

  *(v43 + 552) = v101;
  if (!v105)
  {
    v105 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 528) = v105;
  *(v43 + 560) = 0x657265486E497369;
  *(v43 + 568) = 0xE800000000000000;
  v106 = [v98 whaDialogMetadata];
  v107 = [v106 isInHere];

  *(v43 + 600) = v101;
  if (!v107)
  {
    v107 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 576) = v107;
  *(v43 + 608) = 0x7065637845736168;
  *(v43 + 616) = 0xE900000000000074;
  v108 = [v98 whaDialogMetadata];
  v109 = [v108 hasExcept];

  *(v43 + 648) = v101;
  if (!v109)
  {
    v109 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 624) = v109;
  *(v43 + 656) = 0xD000000000000013;
  *(v43 + 664) = 0x80000000002DAF80;
  v110 = [v98 whaDialogMetadata];
  v111 = [v110 hasThreeOrMoreRooms];

  *(v43 + 696) = v101;
  if (!v111)
  {
    v111 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 672) = v111;
  *(v43 + 704) = 0xD000000000000015;
  *(v43 + 712) = 0x80000000002DAFA0;
  v112 = [v98 whaDialogMetadata];
  v113 = [v112 hasThreeOrMoreDevices];

  *(v43 + 744) = v101;
  if (!v113)
  {
    v113 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 720) = v113;
  *(v43 + 752) = 0xD000000000000011;
  *(v43 + 760) = 0x80000000002DAFC0;
  v114 = [v98 whaDialogMetadata];
  v115 = [v114 hasTwoOrMoreRooms];

  *(v43 + 792) = v101;
  if (!v115)
  {
    v115 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 768) = v115;
  *(v43 + 800) = 0x70756F7247736168;
  *(v43 + 808) = 0xE900000000000073;
  v116 = [v98 whaDialogMetadata];
  v117 = [v116 hasGroups];

  *(v43 + 840) = v101;
  v118 = v412;
  if (!v117)
  {
    v117 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 816) = v117;
  *(v43 + 848) = 0xD000000000000016;
  *(v43 + 856) = 0x80000000002DAFE0;
  v119 = [v98 whaDialogMetadata];
  v120 = [v119 isParticipatingSpeaker];

  *(v43 + 888) = v101;
  if (!v120)
  {
    v120 = sub_2CEB00(0).super.super.isa;
  }

  *(v43 + 864) = v120;
  v121 = sub_112C0(v43);
  swift_setDeallocating();
  v404 = sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v122 = v416;
  v123 = a4;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v124 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  v126 = v122 + 16;
  v125 = *(v122 + 16);
  v413 = v124;
  v414 = v125;
  v125(v118, v124, v65);

  v127 = sub_2CDFE0();
  v128 = sub_2CE670();

  v129 = os_log_type_enabled(v127, v128);
  v409 = v121;
  if (v129)
  {
    v130 = swift_slowAlloc();
    v131 = v118;
    v132 = v123;
    v133 = swift_slowAlloc();
    *&v419 = v133;
    *v130 = 136315138;
    v134 = sub_2CE210();
    v135 = v122 + 16;
    v137 = sub_3F08(v134, v136, &v419);
    v126 = v135;

    *(v130 + 4) = v137;
    _os_log_impl(&dword_0, v127, v128, "DetermineDialogProvider#makeIntentHandledDialogForAllCases WHA Params:%s", v130, 0xCu);
    sub_306C(v133);
    v123 = v132;
    v138 = v416;

    v65 = v415;

    v139 = v131;
    v140 = *(v138 + 8);
    v140(v139, v65);
  }

  else
  {

    v140 = *(v122 + 8);
    v140(v118, v65);
  }

  v141 = v417;
  v412 = [v417 queueLocation];
  v142 = [v141 queueLocation];
  v143 = [v141 nowPlayingIntentInfo];
  if (!v143)
  {
    goto LABEL_283;
  }

  v144 = v143;
  v388 = v142;
  type metadata accessor for NowPlayingIntentInfo();
  v145 = sub_2CE410();

  if (!(v145 >> 62))
  {
    if (*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_75;
    }

    goto LABEL_282;
  }

  if (!sub_2CEDA0())
  {
LABEL_282:

LABEL_283:

    v375 = v408;
    v414(v408, v413, v65);
    v376 = sub_2CDFE0();
    v377 = sub_2CE670();
    if (os_log_type_enabled(v376, v377))
    {
      v378 = swift_slowAlloc();
      *v378 = 0;
      _os_log_impl(&dword_0, v376, v377, "DetermineDialogProvider#makeIntentHandledDialogForAllCases No nowPlayingIntentInfo found returning that we don't know title", v378, 2u);
    }

    v140(v375, v65);
    v379 = sub_112C0(_swiftEmptyArrayStorage);
    v421 = 0;
    v419 = 0u;
    v420 = 0u;
    sub_95804(v379, v410, &v419, v411, v123);

    goto LABEL_286;
  }

LABEL_75:
  v389 = v126;
  if ((v145 & 0xC000000000000001) != 0)
  {
    v146 = sub_2CECD0();
LABEL_78:
    v147 = v146;

    v408 = v147;
    v148 = [v147 noAppProvidedData];
    v149.super.super.isa = sub_2CEB00(0).super.super.isa;
    v150 = v149.super.super.isa;
    if (v148)
    {
      v151 = sub_2CEB30();

      if (v151)
      {
        v152 = v408;
        v153 = [v408 isLoading];
        if (!v153)
        {
          goto LABEL_83;
        }

        v154 = [v152 isLoading];
        v155.super.super.isa = sub_2CEB00(0).super.super.isa;
        v156 = v155.super.super.isa;
        if (v154)
        {
          v157 = sub_2CEB30();

          v152 = v408;
          if (v157)
          {
LABEL_83:
            v158 = [v152 albumArtist];
            if (v158)
            {
              v159 = v158;
              v160 = sub_2CE270();
              v383 = v161;
            }

            else
            {
              v160 = 0;
              v383 = 0;
            }

            v403 = v160;
            v174 = [v152 album];
            if (v174)
            {
              v175 = v174;
              v176 = sub_2CE270();
              v178 = v177;
            }

            else
            {
              v176 = 0;
              v178 = 0;
            }

            v386 = v176;
            v179 = [v152 trackArtist];
            if (v179)
            {
              v180 = v179;
              v407 = sub_2CE270();
              v384 = v181;
            }

            else
            {
              v407 = 0;
              v384 = 0;
            }

            v182 = [v152 title];
            if (v182)
            {
              v183 = v182;
              v184 = sub_2CE270();
              v186 = v185;
            }

            else
            {
              v184 = 0;
              v186 = 0;
            }

            v187 = v417;
            v188 = [v417 requestType];
            v382 = v123;
            if (v188 == &dword_4 + 1)
            {

              v189 = [v152 playlistTitle];
              if (v189)
              {
LABEL_113:
                v190 = v189;
                v184 = sub_2CE270();
                v186 = v191;

                goto LABEL_117;
              }
            }

            else
            {
              if ([v187 requestType]!= &dword_4)
              {
                goto LABEL_117;
              }

              v189 = [v152 stationTitle];
              if (v189)
              {
                goto LABEL_113;
              }
            }

            v184 = 0;
            v186 = 0;
LABEL_117:
            v385 = v184;
            v192 = [v152 appBundleId];
            v387 = v140;
            if (v192)
            {
              v193 = v192;
              v194 = sub_2CE270();
              v196 = v195;

              v197 = sub_2CBD90();
              if (v196)
              {
                v199 = v178;
                if (v194 == v197 && v196 == v198)
                {

LABEL_169:
                  v258 = v388 == &dword_0 + 2;
                  v259 = v412 == &dword_0 + 3;
                  v260 = v417;
                  v395 = [v417 requestType];
                  LODWORD(v406) = v395 == &dword_0 + 2;
                  v396 = [v260 requestType];
                  LODWORD(v405) = v396 == &dword_0 + 1;
                  v397 = [v260 requestType];
                  LODWORD(v401) = v397 == 0;
                  v398 = [v260 requestType];
                  LODWORD(v400) = v398 == &dword_4;
                  v399 = [v260 requestType];
                  v261 = v384;
                  LODWORD(v417) = v399 == &dword_4 + 1;
                  v262 = swift_allocObject();
                  v263 = v262;
                  *(v262 + 16) = xmmword_2D1060;
                  *(v262 + 32) = 0xD000000000000013;
                  *(v262 + 40) = 0x80000000002DB000;
                  *(v262 + 48) = v259;
                  *(v262 + 72) = &type metadata for Bool;
                  *(v262 + 80) = 0x65527478654E7369;
                  *(v262 + 88) = 0xEF65636E65726566;
                  *(v262 + 96) = v258;
                  *(v262 + 120) = &type metadata for Bool;
                  *(v262 + 128) = 0x7472416D75626C61;
                  v264 = v383;
                  v265 = v403;
                  if (!v383)
                  {
                    v265 = 0;
                  }

                  v266 = 0xE000000000000000;
                  if (v383)
                  {
                    v267 = v383;
                  }

                  else
                  {
                    v267 = 0xE000000000000000;
                  }

                  *(v262 + 136) = 0xEB00000000747369;
                  *(v262 + 144) = v265;
                  *(v262 + 152) = v267;
                  *(v262 + 168) = &type metadata for String;
                  *(v262 + 176) = 0x6D75626C61;
                  v268 = v199;
                  v269 = v386;
                  if (v199)
                  {
                    v270 = v199;
                  }

                  else
                  {
                    v269 = 0;
                    v270 = 0xE000000000000000;
                  }

                  *(v262 + 184) = 0xE500000000000000;
                  *(v262 + 192) = v269;
                  *(v262 + 200) = v270;
                  *(v262 + 216) = &type metadata for String;
                  *(v262 + 224) = 0x747241656C746974;
                  v271 = v407;
                  if (v261)
                  {
                    v272 = v261;
                  }

                  else
                  {
                    v271 = 0;
                    v272 = 0xE000000000000000;
                  }

                  *(v262 + 232) = 0xEB00000000747369;
                  *(v262 + 240) = v271;
                  *(v262 + 248) = v272;
                  *(v262 + 264) = &type metadata for String;
                  *(v262 + 272) = 0x656C746974;
                  v273 = v385;
                  if (v186)
                  {
                    v266 = v186;
                  }

                  else
                  {
                    v273 = 0;
                  }

                  *(v262 + 280) = 0xE500000000000000;
                  *(v262 + 288) = v273;
                  *(v262 + 296) = v266;
                  *(v262 + 312) = &type metadata for String;
                  *(v262 + 320) = 0x6D75626C417369;
                  v274 = v264;
                  *(v262 + 328) = 0xE700000000000000;
                  *(v262 + 336) = v406;
                  *(v262 + 360) = &type metadata for Bool;
                  *(v262 + 368) = 0x7473697472417369;
                  *(v262 + 376) = 0xE800000000000000;
                  *(v262 + 384) = v405;
                  *(v262 + 408) = &type metadata for Bool;
                  *(v262 + 416) = 0x656C7469547369;
                  *(v262 + 424) = 0xE700000000000000;
                  *(v262 + 432) = v401;
                  *(v262 + 456) = &type metadata for Bool;
                  *(v262 + 464) = 0x6F696461527369;
                  *(v262 + 472) = 0xE700000000000000;
                  *(v262 + 480) = v400;
                  *(v262 + 504) = &type metadata for Bool;
                  *(v262 + 512) = 0x696C79616C507369;
                  *(v262 + 520) = 0xEA00000000007473;
                  *(v262 + 552) = &type metadata for Bool;
                  *(v262 + 528) = v417;
                  v275 = v261;
                  *(v262 + 560) = 0x6D61726150616877;
                  *(v262 + 568) = 0xE900000000000073;
                  *(v262 + 600) = sub_20410(&qword_34CCD8, &unk_2D10D0);
                  *(v263 + 576) = v409;

                  v276 = sub_112C0(v263);
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v277 = v402;
                  v278 = v415;
                  v414(v402, v413, v415);

                  v279 = sub_2CDFE0();
                  v280 = sub_2CE670();

                  LODWORD(v414) = v280;
                  v417 = v279;
                  if (os_log_type_enabled(v279, v280))
                  {
                    v281 = swift_slowAlloc();
                    v413 = v276;
                    v282 = v281;
                    v409 = swift_slowAlloc();
                    v418 = v409;
                    *v282 = 136317698;
                    v384 = v275;
                    if (v412 == &dword_0 + 3)
                    {
                      v283 = 1702195828;
                    }

                    else
                    {
                      v283 = 0x65736C6166;
                    }

                    if (v412 == &dword_0 + 3)
                    {
                      v284 = 0xE400000000000000;
                    }

                    else
                    {
                      v284 = 0xE500000000000000;
                    }

                    v285 = sub_3F08(v283, v284, &v418);

                    *(v282 + 4) = v285;
                    *(v282 + 12) = 2080;
                    if (v388 == &dword_0 + 2)
                    {
                      v286 = 1702195828;
                    }

                    else
                    {
                      v286 = 0x65736C6166;
                    }

                    if (v388 == &dword_0 + 2)
                    {
                      v287 = 0xE400000000000000;
                    }

                    else
                    {
                      v287 = 0xE500000000000000;
                    }

                    v288 = sub_3F08(v286, v287, &v418);

                    *(v282 + 14) = v288;
                    *(v282 + 22) = 2080;
                    *&v419 = v403;
                    *(&v419 + 1) = v274;
                    sub_20410(&qword_34CCC0, &unk_2D0DE0);
                    v289 = sub_2CE2A0();
                    v291 = sub_3F08(v289, v290, &v418);

                    *(v282 + 24) = v291;
                    *(v282 + 32) = 2080;
                    *&v419 = v386;
                    *(&v419 + 1) = v268;
                    v292 = sub_2CE2A0();
                    v294 = sub_3F08(v292, v293, &v418);

                    *(v282 + 34) = v294;
                    *(v282 + 42) = 2080;
                    *&v419 = v407;
                    *(&v419 + 1) = v384;
                    v295 = sub_2CE2A0();
                    v297 = sub_3F08(v295, v296, &v418);

                    *(v282 + 44) = v297;
                    *(v282 + 52) = 2080;
                    *&v419 = v385;
                    *(&v419 + 1) = v186;
                    v298 = sub_2CE2A0();
                    v300 = sub_3F08(v298, v299, &v418);

                    *(v282 + 54) = v300;
                    *(v282 + 62) = 2080;
                    if (v395 == &dword_0 + 2)
                    {
                      v301 = 1702195828;
                    }

                    else
                    {
                      v301 = 0x65736C6166;
                    }

                    if (v395 == &dword_0 + 2)
                    {
                      v302 = 0xE400000000000000;
                    }

                    else
                    {
                      v302 = 0xE500000000000000;
                    }

                    v303 = sub_3F08(v301, v302, &v418);

                    *(v282 + 64) = v303;
                    *(v282 + 72) = 2080;
                    if (v396 == &dword_0 + 1)
                    {
                      v304 = 1702195828;
                    }

                    else
                    {
                      v304 = 0x65736C6166;
                    }

                    if (v396 == &dword_0 + 1)
                    {
                      v305 = 0xE400000000000000;
                    }

                    else
                    {
                      v305 = 0xE500000000000000;
                    }

                    v306 = sub_3F08(v304, v305, &v418);

                    *(v282 + 74) = v306;
                    *(v282 + 82) = 2080;
                    if (v397)
                    {
                      v307 = 0x65736C6166;
                    }

                    else
                    {
                      v307 = 1702195828;
                    }

                    if (v397)
                    {
                      v308 = 0xE500000000000000;
                    }

                    else
                    {
                      v308 = 0xE400000000000000;
                    }

                    v309 = sub_3F08(v307, v308, &v418);

                    *(v282 + 84) = v309;
                    *(v282 + 92) = 2080;
                    if (v398 == &dword_4)
                    {
                      v310 = 1702195828;
                    }

                    else
                    {
                      v310 = 0x65736C6166;
                    }

                    if (v398 == &dword_4)
                    {
                      v311 = 0xE400000000000000;
                    }

                    else
                    {
                      v311 = 0xE500000000000000;
                    }

                    v312 = sub_3F08(v310, v311, &v418);

                    *(v282 + 94) = v312;
                    *(v282 + 102) = 2080;
                    if (v399 == &dword_4 + 1)
                    {
                      v313 = 1702195828;
                    }

                    else
                    {
                      v313 = 0x65736C6166;
                    }

                    if (v399 == &dword_4 + 1)
                    {
                      v314 = 0xE400000000000000;
                    }

                    else
                    {
                      v314 = 0xE500000000000000;
                    }

                    v315 = sub_3F08(v313, v314, &v418);

                    *(v282 + 104) = v315;
                    v316 = v417;
                    _os_log_impl(&dword_0, v417, v414, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Soundscapes Params isPreviousReference:%s isNextReference:%s albumArtist:%s album:%s titleArtist:%s title:%s isAlbum:%s isArtist:%s isTitle:%s isRadio:%s isPlaylist:%s", v282, 0x70u);
                    swift_arrayDestroy();

                    v276 = v413;

                    (*(v416 + 8))(v402, v415);
                  }

                  else
                  {

                    v387(v277, v278);
                  }

                  v317 = v408;
                  v421 = 0;
                  v419 = 0u;
                  v420 = 0u;
                  sub_93DF4(v276, v410, &v419, v411, v382);

                  goto LABEL_286;
                }

                v257 = sub_2CEEA0();

                if (v257)
                {
                  goto LABEL_169;
                }

LABEL_125:
                v200 = v388 == &dword_0 + 2;
                v201 = v412 == &dword_0 + 3;
                v202 = swift_allocObject();
                v203 = v202;
                *(v202 + 16) = xmmword_2D0050;
                *(v202 + 32) = 0xD000000000000013;
                *(v202 + 40) = 0x80000000002DB000;
                *(v202 + 48) = v201;
                *(v202 + 72) = &type metadata for Bool;
                *(v202 + 80) = 0x65527478654E7369;
                *(v202 + 88) = 0xEF65636E65726566;
                *(v202 + 96) = v200;
                *(v202 + 120) = &type metadata for Bool;
                *(v202 + 128) = 0x7472416D75626C61;
                v204 = v383;
                v205 = v403;
                if (!v383)
                {
                  v205 = 0;
                }

                v206 = 0xE000000000000000;
                if (v383)
                {
                  v207 = v383;
                }

                else
                {
                  v207 = 0xE000000000000000;
                }

                *(v202 + 136) = 0xEB00000000747369;
                *(v202 + 144) = v205;
                *(v202 + 152) = v207;
                *(v202 + 168) = &type metadata for String;
                *(v202 + 176) = 0x6D75626C61;
                v208 = v386;
                if (v199)
                {
                  v209 = v199;
                }

                else
                {
                  v208 = 0;
                  v209 = 0xE000000000000000;
                }

                *(v202 + 184) = 0xE500000000000000;
                *(v202 + 192) = v208;
                *(v202 + 200) = v209;
                *(v202 + 216) = &type metadata for String;
                *(v202 + 224) = 0x747241656C746974;
                v210 = v384;
                v211 = v407;
                if (v384)
                {
                  v212 = v384;
                }

                else
                {
                  v211 = 0;
                  v212 = 0xE000000000000000;
                }

                *(v202 + 232) = 0xEB00000000747369;
                *(v202 + 240) = v211;
                *(v202 + 248) = v212;
                *(v202 + 264) = &type metadata for String;
                *(v202 + 272) = 0x656C746974;
                v213 = v385;
                if (v186)
                {
                  v206 = v186;
                }

                else
                {
                  v213 = 0;
                }

                *(v202 + 280) = 0xE500000000000000;
                *(v202 + 288) = v213;
                *(v202 + 296) = v206;
                *(v202 + 312) = &type metadata for String;
                *(v202 + 320) = 0x6D61726150616877;
                *(v202 + 328) = 0xE900000000000073;
                *(v202 + 360) = sub_20410(&qword_34CCD8, &unk_2D10D0);
                *(v203 + 336) = v409;

                v214 = sub_112C0(v203);
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v215 = v406;
                v216 = v415;
                v414(v406, v413, v415);

                v217 = sub_2CDFE0();
                v218 = sub_2CE670();
                v409 = v186;

                if (os_log_type_enabled(v217, v218))
                {
                  v219 = swift_slowAlloc();
                  v381 = v199;
                  v220 = v219;
                  v404 = swift_slowAlloc();
                  v418 = v404;
                  *v220 = 136316418;
                  v405 = v214;
                  if (v412 == &dword_0 + 3)
                  {
                    v221 = 1702195828;
                  }

                  else
                  {
                    v221 = 0x65736C6166;
                  }

                  LODWORD(v402) = v218;
                  if (v412 == &dword_0 + 3)
                  {
                    v222 = 0xE400000000000000;
                  }

                  else
                  {
                    v222 = 0xE500000000000000;
                  }

                  v223 = sub_3F08(v221, v222, &v418);

                  *(v220 + 4) = v223;
                  *(v220 + 12) = 2080;
                  if (v388 == &dword_0 + 2)
                  {
                    v224 = 1702195828;
                  }

                  else
                  {
                    v224 = 0x65736C6166;
                  }

                  if (v388 == &dword_0 + 2)
                  {
                    v225 = 0xE400000000000000;
                  }

                  else
                  {
                    v225 = 0xE500000000000000;
                  }

                  v226 = sub_3F08(v224, v225, &v418);

                  *(v220 + 14) = v226;
                  *(v220 + 22) = 2080;
                  *&v419 = v403;
                  *(&v419 + 1) = v204;
                  sub_20410(&qword_34CCC0, &unk_2D0DE0);
                  v227 = sub_2CE2A0();
                  v229 = sub_3F08(v227, v228, &v418);

                  *(v220 + 24) = v229;
                  *(v220 + 32) = 2080;
                  *&v419 = v386;
                  *(&v419 + 1) = v381;
                  v230 = v381;

                  v231 = sub_2CE2A0();
                  v233 = sub_3F08(v231, v232, &v418);

                  *(v220 + 34) = v233;
                  *(v220 + 42) = 2080;
                  *&v419 = v407;
                  *(&v419 + 1) = v210;

                  v234 = sub_2CE2A0();
                  v236 = sub_3F08(v234, v235, &v418);

                  *(v220 + 44) = v236;
                  *(v220 + 52) = 2080;
                  v237 = v409;
                  *&v419 = v385;
                  *(&v419 + 1) = v409;

                  v214 = v405;
                  v238 = sub_2CE2A0();
                  v240 = sub_3F08(v238, v239, &v418);
                  v216 = v415;

                  *(v220 + 54) = v240;
                  _os_log_impl(&dword_0, v217, v402, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Generic Params isPreviousReference:%s isNextReference:%s albumArtist:%s album:%s titleArtist:%s title:%s", v220, 0x3Eu);
                  swift_arrayDestroy();

                  v387 = *(v416 + 8);
                  v387(v406, v216);
                  v241 = v382;
                  v242 = v417;
                }

                else
                {

                  v387(v215, v216);
                  v241 = v382;
                  v242 = v417;
                  v230 = v199;
                  v237 = v409;
                }

                v243 = [v242 requestType];
                if (v243 <= 1)
                {
                  v244 = v388;
                  if (!v243)
                  {

                    if (v237)
                    {

                      v328 = v396;
                      v414(v396, v413, v216);
                      v329 = sub_2CDFE0();
                      v330 = sub_2CE670();
                      v331 = os_log_type_enabled(v329, v330);
                      v332 = v387;
                      if (v331)
                      {
                        v333 = swift_slowAlloc();
                        *v333 = 0;
                        _os_log_impl(&dword_0, v329, v330, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about title", v333, 2u);
                      }

                      v332(v328, v216);
                      goto LABEL_245;
                    }

                    v339 = v412;
                    v351 = v387;
                    if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                    {
                      v352 = v390;
                      v414(v390, v413, v216);
                      v353 = sub_2CDFE0();
                      v354 = sub_2CE670();
                      if (os_log_type_enabled(v353, v354))
                      {
                        v355 = swift_slowAlloc();
                        *v355 = 0;
                        _os_log_impl(&dword_0, v353, v354, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about title", v355, 2u);
                      }

                      v351(v352, v216);
                      goto LABEL_277;
                    }

LABEL_278:
                    v372 = v339 == &dword_0 + 3;
                    v373 = v410;
                    goto LABEL_279;
                  }

                  if (v243 == (&dword_0 + 1))
                  {

                    if (v210)
                    {

                      v251 = v398;
                      v414(v398, v413, v216);
                      v252 = sub_2CDFE0();
                      v253 = sub_2CE670();
                      v254 = os_log_type_enabled(v252, v253);
                      v255 = v387;
                      if (v254)
                      {
                        v256 = swift_slowAlloc();
                        *v256 = 0;
                        _os_log_impl(&dword_0, v252, v253, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about artist", v256, 2u);
                      }

                      v255(v251, v216);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_92A68(v214, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    v362 = v387;
                    if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                    {
                      v363 = v392;
                      v414(v392, v413, v216);
                      v364 = sub_2CDFE0();
                      v365 = sub_2CE670();
                      if (os_log_type_enabled(v364, v365))
                      {
                        v366 = swift_slowAlloc();
                        *v366 = 0;
                        _os_log_impl(&dword_0, v364, v365, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about artist", v366, 2u);
                      }

                      v362(v363, v216);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_9652C(v214, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    v374 = v412 == &dword_0 + 3;

                    v373 = v410;
                    v372 = v374;
LABEL_279:
                    sub_44E1C(v373, v372, v411, v241);

                    return;
                  }
                }

                else
                {
                  v244 = v388;
                  if (v243 == (&dword_0 + 2))
                  {

                    if (v230)
                    {

                      v318 = v397;
                      v414(v397, v413, v216);
                      v319 = sub_2CDFE0();
                      v320 = sub_2CE670();
                      if (os_log_type_enabled(v319, v320))
                      {
                        v321 = swift_slowAlloc();
                        *v321 = 0;
                        _os_log_impl(&dword_0, v319, v320, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about album", v321, 2u);
                      }

                      v387(v318, v216);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_923E4(v214, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    v339 = v412;
                    if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                    {
                      v340 = v391;
                      v414(v391, v413, v216);
                      v341 = sub_2CDFE0();
                      v342 = sub_2CE670();
                      if (os_log_type_enabled(v341, v342))
                      {
                        v343 = swift_slowAlloc();
                        *v343 = 0;
                        _os_log_impl(&dword_0, v341, v342, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about album", v343, 2u);
                      }

                      v387(v340, v216);
                      v344 = sub_112C0(_swiftEmptyArrayStorage);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_95E98(v344, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }

                  if (v243 == &dword_4)
                  {

                    if (v237)
                    {

                      v322 = v399;
                      v414(v399, v413, v216);
                      v323 = sub_2CDFE0();
                      v324 = sub_2CE670();
                      v325 = os_log_type_enabled(v323, v324);
                      v326 = v387;
                      if (v325)
                      {
                        v327 = swift_slowAlloc();
                        *v327 = 0;
                        _os_log_impl(&dword_0, v323, v324, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about radio station", v327, 2u);
                      }

                      v326(v322, v216);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_930EC(v214, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    v339 = v412;
                    v345 = v387;
                    if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                    {
                      v346 = v393;
                      v414(v393, v413, v216);
                      v347 = sub_2CDFE0();
                      v348 = sub_2CE670();
                      if (os_log_type_enabled(v347, v348))
                      {
                        v349 = swift_slowAlloc();
                        *v349 = 0;
                        _os_log_impl(&dword_0, v347, v348, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about radio station", v349, 2u);
                      }

                      v345(v346, v216);
                      v350 = sub_112C0(_swiftEmptyArrayStorage);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_96BC0(v350, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }

                  if (v243 == (&dword_4 + 1))
                  {

                    if (v237)
                    {

                      v245 = v400;
                      v414(v400, v413, v216);
                      v246 = sub_2CDFE0();
                      v247 = sub_2CE670();
                      v248 = os_log_type_enabled(v246, v247);
                      v249 = v387;
                      if (v248)
                      {
                        v250 = swift_slowAlloc();
                        *v250 = 0;
                        _os_log_impl(&dword_0, v246, v247, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about playlist", v250, 2u);
                      }

                      v249(v245, v216);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_93770(v214, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    v339 = v412;
                    v356 = v387;
                    if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                    {
                      v357 = v394;
                      v414(v394, v413, v216);
                      v358 = sub_2CDFE0();
                      v359 = sub_2CE670();
                      if (os_log_type_enabled(v358, v359))
                      {
                        v360 = swift_slowAlloc();
                        *v360 = 0;
                        _os_log_impl(&dword_0, v358, v359, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about playlist", v360, 2u);
                      }

                      v356(v357, v216);
                      v361 = sub_112C0(_swiftEmptyArrayStorage);
                      v421 = 0;
                      v419 = 0u;
                      v420 = 0u;
                      sub_97254(v361, v410, &v419, v411, v241);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }
                }

                if (v237)
                {

                  v414(v401, v413, v216);
                  v334 = sub_2CDFE0();
                  v335 = sub_2CE670();
                  v336 = os_log_type_enabled(v334, v335);
                  v337 = v387;
                  if (v336)
                  {
                    v338 = swift_slowAlloc();
                    *v338 = 0;
                    _os_log_impl(&dword_0, v334, v335, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Default, answer about title", v338, 2u);
                  }

                  v337(v401, v216);
LABEL_245:
                  v421 = 0;
                  v419 = 0u;
                  v420 = 0u;
                  sub_91D60(v214, v410, &v419, v411, v241);
LABEL_246:

LABEL_286:
                  sub_48E38(&v419);
                  return;
                }

                v339 = v412;
                v367 = v387;
                if (v412 != &dword_0 + 3 && v244 != &dword_0 + 2)
                {
                  v414(v395, v413, v216);
                  v368 = sub_2CDFE0();
                  v369 = sub_2CE670();
                  if (os_log_type_enabled(v368, v369))
                  {
                    v370 = swift_slowAlloc();
                    *v370 = 0;
                    _os_log_impl(&dword_0, v368, v369, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Default, answer don't know about title", v370, 2u);
                  }

                  v367(v395, v216);
LABEL_277:
                  v371 = sub_112C0(_swiftEmptyArrayStorage);
                  v421 = 0;
                  v419 = 0u;
                  v420 = 0u;
                  sub_95804(v371, v410, &v419, v411, v241);
                  goto LABEL_246;
                }

                goto LABEL_278;
              }

              v199 = v178;
            }

            else
            {
              v199 = v178;
              sub_2CBD90();
            }

            goto LABEL_125;
          }
        }

        else
        {

          v152 = v408;
        }

        v169 = v403;
        v414(v403, v413, v65);
        v170 = sub_2CDFE0();
        v171 = sub_2CE670();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 0;
          _os_log_impl(&dword_0, v170, v171, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Content retrieved is in a loading state and we don't have final info, returning that we don't know title", v172, 2u);
        }

        v140(v169, v65);
        v173 = sub_112C0(_swiftEmptyArrayStorage);
        v421 = 0;
        v419 = 0u;
        v420 = 0u;
        sub_95804(v173, v410, &v419, v411, v123);

        goto LABEL_286;
      }
    }

    else
    {
    }

    v162 = v407;
    v414(v407, v413, v65);
    v163 = sub_2CDFE0();
    v164 = sub_2CE670();
    v165 = os_log_type_enabled(v163, v164);
    v166 = v408;
    if (v165)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_0, v163, v164, "DetermineDialogProvider#makeIntentHandledDialogForAllCases API Call did not provide any data for the playing app, returning that we don't know title", v167, 2u);
    }

    v140(v162, v65);
    v168 = sub_112C0(_swiftEmptyArrayStorage);
    v421 = 0;
    v419 = 0u;
    v420 = 0u;
    sub_95804(v168, v410, &v419, v411, v123);

    goto LABEL_286;
  }

  if (*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
  {
    v146 = *(v145 + 32);
    goto LABEL_78;
  }

  __break(1u);
}

uint64_t sub_4843C(uint64_t a1, NSObject *a2, char *a3, char *a4)
{
  v88 = a3;
  v91 = a2;
  v87 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v81 - v11;
  v13 = __chkstk_darwin(v10);
  v86 = &v81 - v14;
  __chkstk_darwin(v13);
  v16 = &v81 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v19 = v6 + 16;
  v18 = *(v6 + 16);
  v90 = v17;
  v92 = v5;
  v89 = v18;
  v18(v16, v17, v5);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "DetermineDialogProvider#handleWHARelatedChecks Reached logic", v22, 2u);
  }

  v25 = *(v6 + 8);
  v24 = v6 + 8;
  v23 = v25;
  v25(v16, v92);
  v26 = v91;
  if ([v91 whaError]!= &dword_0 + 1)
  {
    v27 = [v26 nowPlayingIntentInfo];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for NowPlayingIntentInfo();
      v29 = sub_2CE410();

      v30 = v29;
      v94 = v29;
      if (v29 >> 62)
      {
        if (sub_2CEDA0() >= 1)
        {
          v85 = v19;
          v81 = v23;
          v83 = v12;
          v82 = v24;
          v84 = a4;
          v99 = &_swiftEmptySetSingleton;
          v95 = sub_2CEDA0();
          if (!v95)
          {
            goto LABEL_34;
          }

          if (v95 < 1)
          {
            __break(1u);
            goto LABEL_34;
          }

          v24 = v82;
          v12 = v83;
          v23 = v81;
          v19 = v85;
          v30 = v94;
LABEL_10:
          v85 = v19;
          v81 = v23;
          v83 = v12;
          v82 = v24;
          v31 = 0;
          v93 = v30 & 0xC000000000000001;
          do
          {
            if (v93)
            {
              v36 = sub_2CECD0();
            }

            else
            {
              v36 = *(v30 + 8 * v31 + 32);
            }

            v37 = v36;
            v38 = [v36 title];
            if (v38)
            {
              v39 = v38;
              v98 = sub_2CE270();
              v41 = v40;
            }

            else
            {
              v98 = 0;
              v41 = 0xE000000000000000;
            }

            v42 = [v37 albumArtist];
            if (v42)
            {
              v43 = v42;
              v97 = sub_2CE270();
              v45 = v44;
            }

            else
            {
              v97 = 0;
              v45 = 0xE000000000000000;
            }

            v46 = [v37 album];
            if (v46)
            {
              v47 = v46;
              v96 = sub_2CE270();
              v49 = v48;
            }

            else
            {
              v96 = 0;
              v49 = 0xE000000000000000;
            }

            v50 = [v37 contentId];
            if (v50)
            {
              v51 = v50;
              v52 = sub_2CE270();
              v54 = v53;
            }

            else
            {
              v52 = 0;
              v54 = 0xE000000000000000;
            }

            v55 = [v37 trackArtist];
            if (v55)
            {
              v32 = v55;
              v33 = sub_2CE270();
              v35 = v34;
            }

            else
            {
              v33 = 0;
              v35 = 0xE000000000000000;
            }

            ++v31;
            *&v100 = v98;
            *(&v100 + 1) = v41;

            v103._countAndFlagsBits = v97;
            v103._object = v45;
            sub_2CE350(v103);

            v104._countAndFlagsBits = v96;
            v104._object = v49;
            sub_2CE350(v104);

            v105._countAndFlagsBits = v52;
            v105._object = v54;
            sub_2CE350(v105);

            v106._countAndFlagsBits = v33;
            v106._object = v35;
            sub_2CE350(v106);

            sub_2BCA00(&v100, v100, *(&v100 + 1));

            v30 = v94;
          }

          while (v95 != v31);
LABEL_34:

          v56 = v86;
          v57 = v92;
          v89(v86, v90, v92);
          v58 = sub_2CDFE0();
          v59 = sub_2CE670();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *&v100 = v61;
            *v60 = 136315138;
            swift_beginAccess();

            v62 = sub_2CE530();
            v64 = v63;

            v65 = sub_3F08(v62, v64, &v100);

            *(v60 + 4) = v65;
            _os_log_impl(&dword_0, v58, v59, "DetermineDialogProvider#handleWHARelatedChecks uniqueListOfNowPlayingMetadata: %s", v60, 0xCu);
            sub_306C(v61);
          }

          v66 = v57;
          v67 = v81;
          v81(v56, v66);
          v68 = v91;
          swift_beginAccess();
          v69 = v84;
          v70 = v83;
          if (v99[2] == 1)
          {
            sub_45370(v87, v68, v88, v84);
          }

          else
          {
            v89(v83, v90, v92);
            v76 = sub_2CDFE0();
            v77 = sub_2CE670();
            if (os_log_type_enabled(v76, v77))
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&dword_0, v76, v77, "DetermineDialogProvider#handleWHARelatedChecks Multiple nowPlayingIntentInfo's found returning that multiple streams playing in home", v79, 2u);
            }

            v67(v70, v92);
            v80 = sub_112C0(_swiftEmptyArrayStorage);
            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            sub_97F5C(v80, v87, &v100, v88, v69);

            sub_48E38(&v100);
          }
        }
      }

      else
      {
        v95 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
        if (v95)
        {
          v84 = a4;
          v99 = &_swiftEmptySetSingleton;
          goto LABEL_10;
        }
      }
    }
  }

  v89(v9, v90, v92);
  v71 = sub_2CDFE0();
  v72 = sub_2CE670();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "DetermineDialogProvider#handleWHARelatedChecks No nowPlayingIntentInfo found returning that we don't know what is playing in that room", v73, 2u);
  }

  v23(v9, v92);
  v74 = sub_112C0(_swiftEmptyArrayStorage);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  sub_978D8(v74, v87, &v100, v88, a4);

  return sub_48E38(&v100);
}

uint64_t sub_48E38(uint64_t a1)
{
  v2 = sub_20410(&qword_34C6C0, &qword_2D0710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_48EA0()
{
  result = qword_353110;
  if (!qword_353110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_353110);
  }

  return result;
}

uint64_t sub_48EEC@<X0>(uint64_t (*a1)(char *, uint64_t)@<X5>, uint64_t a2@<X8>)
{
  v76 = a1;
  v77 = a2;
  v67 = sub_2CD490();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20410(&qword_34CFB0, &unk_2D1000);
  __chkstk_darwin(v66);
  v70 = &v62 - v3;
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = __chkstk_darwin(v4 - 8);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v62 - v8;
  __chkstk_darwin(v7);
  v68 = &v62 - v10;
  v11 = sub_2CA870();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v64 = &v62 - v22;
  v23 = __chkstk_darwin(v21);
  v63 = &v62 - v24;
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v28 = v18;
  v29 = *(v18 + 16);
  v74 = v18 + 16;
  v75 = v27;
  v30 = v27;
  v31 = v17;
  v73 = v29;
  v29(v26, v30, v17);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "UpdateMediaAffinityNeedsValueStrategy#actionForInput...", v34, 2u);
  }

  v35 = *(v28 + 8);
  v35(v26, v17);
  sub_2CA790();
  if ((*(v12 + 88))(v16, v11) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v12 + 8))(v16, v11);
    v46 = v71;
    v73(v71, v75, v17);
    v47 = sub_2CDFE0();
    v48 = sub_2CE690();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "UpdateMediaAffinityNeedsValueStrategy#actionForInput parse not of right type", v49, 2u);
LABEL_14:
    }

LABEL_15:

    v35(v46, v31);
    return sub_2C9CF0();
  }

  (*(v12 + 96))(v16, v11);
  sub_20410(&qword_353070, &unk_2D0FB0);

  v36 = sub_2CAFE0();
  (*(*(v36 - 8) + 8))(v16, v36);
  v37 = v72;
  sub_2CA790();
  v38 = sub_D2F98(v37, &v78);
  (*(v12 + 8))(v37, v11, v38);
  if (!v79)
  {
    sub_30B8(&v78, &qword_34CF98, &unk_2D1A40);
    v46 = v64;
    v73(v64, v75, v31);
    v47 = sub_2CDFE0();
    v50 = sub_2CE690();
    if (os_log_type_enabled(v47, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v47, v50, "UpdateMediaAffinityNeedsValueStrategy#actionForInput received invalid NL intent", v51, 2u);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v76 = v35;
  sub_420A4(&v78, &v80);
  sub_35E0(&v80, v81);
  v39 = v68;
  sub_2CD480();
  v40 = v69;
  v41 = v67;
  (*(v69 + 104))(v9, enum case for CommonAudio.Confirmation.cancel(_:), v67);
  (*(v40 + 56))(v9, 0, 1, v41);
  v42 = *(v66 + 48);
  v43 = v70;
  sub_F3F4(v39, v70, &qword_34CCE8, &unk_2D0E20);
  v44 = v43;
  sub_F3F4(v9, v43 + v42, &qword_34CCE8, &unk_2D0E20);
  v45 = *(v40 + 48);
  if (v45(v43, 1, v41) == 1)
  {
    sub_30B8(v9, &qword_34CCE8, &unk_2D0E20);
    v44 = v70;
    sub_30B8(v39, &qword_34CCE8, &unk_2D0E20);
    if (v45(v44 + v42, 1, v41) == 1)
    {
      sub_30B8(v44, &qword_34CCE8, &unk_2D0E20);
LABEL_21:
      v58 = v63;
      v73(v63, v75, v31);
      v59 = sub_2CDFE0();
      v60 = sub_2CE690();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v59, v60, "UpdateMediaAffinityNeedsValueStrategy#actionForInput User asked to cancel", v61, 2u);
      }

      v76(v58, v31);
      sub_2C9CD0();
      return sub_306C(&v80);
    }

    goto LABEL_18;
  }

  v53 = v65;
  sub_F3F4(v43, v65, &qword_34CCE8, &unk_2D0E20);
  if (v45(v43 + v42, 1, v41) == 1)
  {
    sub_30B8(v9, &qword_34CCE8, &unk_2D0E20);
    sub_30B8(v68, &qword_34CCE8, &unk_2D0E20);
    (*(v69 + 8))(v53, v41);
LABEL_18:
    sub_30B8(v44, &qword_34CFB0, &unk_2D1000);
    goto LABEL_19;
  }

  v54 = v69;
  v55 = v62;
  (*(v69 + 32))(v62, v44 + v42, v41);
  sub_4C3B4(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
  v56 = sub_2CE250();
  v57 = *(v54 + 8);
  v57(v55, v41);
  sub_30B8(v9, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v68, &qword_34CCE8, &unk_2D0E20);
  v57(v65, v41);
  sub_30B8(v44, &qword_34CCE8, &unk_2D0E20);
  if (v56)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_2C9CE0();
  return sub_306C(&v80);
}

uint64_t sub_499AC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v44 = a6;
  v45 = a5;
  v48 = a1;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v41 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v12;
  __chkstk_darwin(v11);
  v49 = &v39 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);

  v19 = sub_2CDFE0();
  v20 = sub_2CE690();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v50[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_3F08(a3, a4, v50);
    _os_log_impl(&dword_0, v19, v20, "UpdateMediaAffinityNeedsValueStrategy#makePromptForValue parameter: %{public}s", v22, 0xCu);
    sub_306C(v23);

    a2 = v40;
  }

  (*(v15 + 8))(v17, v14);
  v24 = v49;
  v25 = v45;
  sub_1C856C(a2, a3, a4, v49);
  v26 = v46;
  v40 = *(v46 + 16);
  v27 = v43;
  sub_F3F4(v24, v43, &unk_353020, &unk_2D0970);
  v28 = (*(v41 + 80) + 80) & ~*(v41 + 80);
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = v25;
  v29[5] = v26;
  v30 = v48;
  v29[6] = v48;
  v29[7] = a2;
  v31 = v47;
  v29[8] = v44;
  v29[9] = v31;
  sub_14A58(v27, v29 + v28, &unk_353020, &unk_2D0970);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;

  v33 = v25;

  v34 = a2;

  *(inited + 48) = [v34 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [v34 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6574656D61726170;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v35 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v36 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v50[4] = &off_33CC40;
  v50[3] = v36;
  v50[0] = v34;
  v37 = v34;
  sub_C1C20(v35, v30, v50, sub_4C328, v29);

  sub_30B8(v49, &unk_353020, &unk_2D0970);
  return sub_30B8(v50, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_49F94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v79 = a8;
  v76 = a6;
  v77 = a7;
  v72 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a2;
  v67 = a1;
  v78 = a9;
  v65 = sub_2CCB20();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v71);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v62 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v75 = &v62 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v74 = &v62 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v73 = &v62 - v19;
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v28);
  v30 = (&v62 - v29);
  sub_F3F4(v67, &v62 - v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.umanvs(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v20);
    swift_getErrorValue();
    sub_2CEEF0();
    v80 = sub_2CCAF0();

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v72 = sub_35E0(v72 + 3, v72[6]);
    v32 = enum case for ActivityType.failed(_:);
    v33 = sub_2C9C20();
    v34 = *(v33 - 8);
    v35 = v73;
    (*(v34 + 104))(v73, v32, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    v36 = sub_2CA130();
    v37 = v74;
    (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
    v38 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v39 = sub_2C98F0();
    v40 = *(v39 - 8);
    v41 = v75;
    (*(v40 + 104))(v75, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v35, &qword_34CB88, &unk_2D0D90);
    v81[0] = v31;
    v82 = 1;
    swift_errorRetain();
    v79(v81);

    return sub_30B8(v81, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v67 = a10;
    sub_14A58(v30, v80, &qword_34C6E8, &unk_2D0FF0);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.umanvs(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v20);
    v43 = v64;
    v44 = v63;
    v45 = v65;
    (*(v64 + 104))(v63, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v65);
    v70 = sub_2CCB00();
    v69 = v46;
    (*(v43 + 8))(v44, v45);
    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v47 = v72;
    v64 = v72[6];
    v65 = v72[7];
    v68 = sub_35E0(v72 + 3, v64);
    v48 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v73;
    (*(v50 + 104))(v73, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v66;
    sub_F3F4(v80, v66, &qword_34C6E8, &unk_2D0FF0);

    v53 = sub_2CA130();
    v54 = *(v53 - 8);
    v55 = v74;
    (*(v54 + 32))(v74, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = enum case for SiriKitReliabilityCodes.success(_:);
    v57 = sub_2C98F0();
    v58 = *(v57 - 8);
    v59 = v75;
    (*(v58 + 104))(v75, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v55, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v47 + 8, v47[11]);
    v60 = v80;
    sub_F3F4(v80, v52, &qword_34C6E8, &unk_2D0FF0);
    v61 = *(v52 + *(v71 + 48));
    sub_1C1A94(v52, v61, v67, v79, v78);

    sub_30B8(v60, &qword_34C6E8, &unk_2D0FF0);
    return (*(v54 + 8))(v52, v53);
  }
}

uint64_t sub_4AB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_4AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa();
  *v14 = v7;
  v14[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_4AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = _s18NeedsValueStrategyCMa();
  *v16 = v8;
  v16[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

void sub_4AFD0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v139 = a6;
  v140 = a5;
  v135 = a4;
  v133 = a2;
  v134 = a1;
  v138 = sub_20410(&qword_34D358, &qword_2D11D8);
  __chkstk_darwin(v138);
  v141 = (&v126 - v7);
  v8 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v8 - 8);
  v132 = &v126 - v9;
  v147 = sub_2CA870();
  v10 = *(v147 - 8);
  v11 = __chkstk_darwin(v147);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v126 - v15;
  __chkstk_darwin(v14);
  v146 = &v126 - v17;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v127 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v128 = &v126 - v23;
  v24 = __chkstk_darwin(v22);
  v126 = &v126 - v25;
  v26 = __chkstk_darwin(v24);
  v136 = &v126 - v27;
  v28 = __chkstk_darwin(v26);
  v131 = &v126 - v29;
  v30 = __chkstk_darwin(v28);
  v129 = &v126 - v31;
  __chkstk_darwin(v30);
  v33 = &v126 - v32;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v35 = *(v19 + 16);
  v137 = v34;
  v143 = v35;
  v35(v33, v34, v18);

  v36 = sub_2CDFE0();
  v37 = sub_2CE690();

  v38 = os_log_type_enabled(v36, v37);
  v144 = v19;
  v145 = v18;
  v130 = a3;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v151[0] = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_3F08(v133, a3, v151);
    _os_log_impl(&dword_0, v36, v37, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue parameter: %{public}s", v39, 0xCu);
    sub_306C(v40);

    v142 = *(v144 + 8);
    v142(v33, v145);
  }

  else
  {

    v142 = *(v19 + 8);
    v142(v33, v18);
  }

  [v134 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v134 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v41 = swift_dynamicCast();
  v42 = v146;
  if ((v41 & 1) == 0)
  {
    v152 = 0;
  }

  sub_2CA790();
  v43 = *(v10 + 88);
  v44 = v147;
  v45 = v43(v42, v147);
  v46 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v45 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v10 + 96))(v42, v44);
    sub_20410(&qword_353070, &unk_2D0FB0);
    sub_2CA790();
    v47 = v132;
    sub_2B6170(v16, v132);
    v48 = sub_2CA830();
    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();
    if (v49)
    {
      v50 = v49;
      sub_30B8(v47, &qword_34D360, &qword_2D11E0);

      v51 = v152;
      v152 = v50;

      v52 = sub_2CAFE0();
      (*(*(v52 - 8) + 8))(v42, v52);
      v53 = v152;
      v54 = v145;
      v55 = v142;
      if (v152)
      {
        v56 = v130;
        v57 = v137;
        if (v133 == 0x657449616964656DLL && v130 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
        {
          v58 = v53;
          v59 = [v58 mediaItems];
          if (v59)
          {
            v60 = v59;
            sub_334A0(0, &qword_356F50, INMediaItem_ptr);
            v61 = sub_2CE410();

            v59 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
          }

          else
          {
            v61 = 0;
          }

          v104 = v128;
          v151[0] = v61;
          v151[1] = 0;
          v151[2] = 0;
          v151[3] = v59;
          v143(v128, v57, v54);
          sub_F3F4(v151, v150, &qword_34CEA0, &qword_2D0FC0);
          v105 = sub_2CDFE0();
          v106 = sub_2CE690();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v149 = v108;
            *v107 = 136446210;
            sub_F3F4(v150, v148, &qword_34CEA0, &qword_2D0FC0);
            sub_20410(&qword_34CEA0, &qword_2D0FC0);
            v109 = sub_2CE2A0();
            v142 = v55;
            v111 = v110;
            sub_30B8(v150, &qword_34CEA0, &qword_2D0FC0);
            v112 = sub_3F08(v109, v111, &v149);

            *(v107 + 4) = v112;
            _os_log_impl(&dword_0, v105, v106, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue returning with: %{public}s", v107, 0xCu);
            sub_306C(v108);

            v142(v104, v145);
          }

          else
          {

            sub_30B8(v150, &qword_34CEA0, &qword_2D0FC0);
            v55(v104, v54);
          }

          sub_F3F4(v151, v150, &qword_34CEA0, &qword_2D0FC0);
          v113 = v58;
          v114 = v141;
          sub_2CA220();
          v115 = sub_20410(&qword_34D370, &qword_2D11E8);
          (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
          swift_storeEnumTagMultiPayload();
          v140(v114);

          sub_30B8(v114, &qword_34D358, &qword_2D11D8);
          v103 = v151;
          v101 = &qword_34CEA0;
          v102 = &qword_2D0FC0;
        }

        else
        {
          v116 = v126;
          v143(v126, v57, v54);

          v117 = v53;
          v118 = sub_2CDFE0();
          v119 = sub_2CE680();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v150[0] = v121;
            *v120 = 136315138;
            *(v120 + 4) = sub_3F08(v133, v56, v150);
            _os_log_impl(&dword_0, v118, v119, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v120, 0xCu);
            sub_306C(v121);
          }

          v55(v116, v54);
          v122 = sub_2CB850();
          sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
          v123 = swift_allocError();
          (*(*(v122 - 8) + 104))(v124, enum case for PlaybackCode.ceGE86(_:), v122);
          v125 = v141;
          *v141 = v123;
          swift_storeEnumTagMultiPayload();
          v140(v125);

          v101 = &qword_34D358;
          v102 = &qword_2D11D8;
          v103 = v125;
        }
      }

      else
      {
        v93 = v127;
        v143(v127, v137, v145);
        v94 = sub_2CDFE0();
        v95 = sub_2CE690();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_0, v94, v95, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue updatedIntent nil", v96, 2u);
        }

        v55(v93, v54);
        v97 = sub_2CB850();
        sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v98 = swift_allocError();
        (*(*(v97 - 8) + 104))(v99, enum case for PlaybackCode.ceGE85(_:), v97);
        v100 = v141;
        *v141 = v98;
        swift_storeEnumTagMultiPayload();
        v140(v100);
        v101 = &qword_34D358;
        v102 = &qword_2D11D8;
        v103 = v100;
      }

      sub_30B8(v103, v101, v102);
    }

    else
    {

      v74 = v129;
      v75 = v145;
      v143(v129, v137, v145);
      v76 = sub_2CDFE0();
      v77 = sub_2CE670();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v142;
      if (v78)
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_0, v76, v77, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v80, 2u);
      }

      v79(v74, v75);
      v81 = sub_2CB850();
      sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v82 = swift_allocError();
      (*(*(v81 - 8) + 104))(v83, enum case for PlaybackCode.ceGE83(_:), v81);
      v84 = v141;
      *v141 = v82;
      swift_storeEnumTagMultiPayload();
      v140(v84);

      sub_30B8(v84, &qword_34D358, &qword_2D11D8);
      sub_30B8(v47, &qword_34D360, &qword_2D11E0);
      v85 = sub_2CAFE0();
      (*(*(v85 - 8) + 8))(v42, v85);
    }
  }

  else
  {
    sub_2CA790();
    v62 = v147;
    if (v43(v13, v147) == v46)
    {
      (*(v10 + 96))(v13, v62);
      sub_20410(&qword_353070, &unk_2D0FB0);

      v63 = sub_2CAFE0();
      (*(*(v63 - 8) + 8))(v13, v63);
      v64 = v131;
      v65 = v137;
      v66 = v145;
      v143(v131, v137, v145);
      v67 = sub_2CDFE0();
      v68 = sub_2CE680();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v146;
      v71 = v142;
      if (v69)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v67, v68, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue and UpdateMediaAffinityNeedsValueStrategy#actionForInput parse handling need to be the same!", v72, 2u);

        v73 = v64;
        v70 = v146;
      }

      else
      {

        v73 = v64;
      }

      v71(v73, v66);
    }

    else
    {
      (*(v10 + 8))(v13, v62);
      v66 = v145;
      v70 = v146;
      v65 = v137;
      v71 = v142;
    }

    v143(v136, v65, v66);
    v86 = sub_2CDFE0();
    v87 = sub_2CE690();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue intent not of right type", v88, 2u);
    }

    v71(v136, v66);
    v89 = sub_2CB850();
    sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v90 = swift_allocError();
    (*(*(v89 - 8) + 104))(v91, enum case for PlaybackCode.ceGE84(_:), v89);
    v92 = v141;
    *v141 = v90;
    swift_storeEnumTagMultiPayload();
    v140(v92);
    sub_30B8(v92, &qword_34D358, &qword_2D11D8);
    (*(v10 + 8))(v70, v147);
  }
}

uint64_t sub_4C3B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t static ShimUtilities.getShimExperience(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v240 = a2;
  v219 = sub_2CE0C0();
  v224 = *(v219 - 8);
  v3 = __chkstk_darwin(v219);
  v210 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v217 = &v201 - v6;
  __chkstk_darwin(v5);
  v229 = &v201 - v7;
  v228 = sub_2CE110();
  v227 = *(v228 - 8);
  v8 = __chkstk_darwin(v228);
  v206 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v220 = &v201 - v10;
  v214 = sub_2CE100();
  v213 = *(v214 - 8);
  v11 = __chkstk_darwin(v214);
  v205 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v211 = &v201 - v13;
  v14 = sub_2CB3B0();
  v233 = *(v14 - 8);
  v234 = v14;
  __chkstk_darwin(v14);
  v232 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE120();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v209 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v208 = &v201 - v21;
  v22 = __chkstk_darwin(v20);
  v215 = &v201 - v23;
  v24 = __chkstk_darwin(v22);
  v222 = &v201 - v25;
  v26 = __chkstk_darwin(v24);
  v226 = (&v201 - v27);
  v28 = __chkstk_darwin(v26);
  v221 = &v201 - v29;
  v30 = __chkstk_darwin(v28);
  v225 = &v201 - v31;
  __chkstk_darwin(v30);
  v235 = &v201 - v32;
  v33 = sub_2CB3E0();
  v245 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2CE000();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v238 = &v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v231 = &v201 - v41;
  v42 = __chkstk_darwin(v40);
  v216 = &v201 - v43;
  v44 = __chkstk_darwin(v42);
  v212 = &v201 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v201 - v47;
  v49 = __chkstk_darwin(v46);
  v218 = &v201 - v50;
  v51 = __chkstk_darwin(v49);
  v223 = &v201 - v52;
  v53 = __chkstk_darwin(v51);
  v230 = &v201 - v54;
  v55 = __chkstk_darwin(v53);
  v241 = &v201 - v56;
  __chkstk_darwin(v55);
  v58 = &v201 - v57;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v59 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v60 = v37[2];
  v242 = v59;
  v243 = v60;
  v244 = v37 + 2;
  v60(v58, v59, v36);
  v61 = v245[2];
  v239 = a1;
  v61(v35, a1, v33);
  v62 = sub_2CDFE0();
  v63 = v33;
  v64 = sub_2CE670();
  v65 = os_log_type_enabled(v62, v64);
  v236 = v17;
  v237 = v16;
  v207 = v48;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v246 = v204;
    *v66 = 136315138;
    v67 = v35;
    v203 = v63;
    sub_2CB3C0();
    sub_20410(&qword_34D378, qword_2D11F0);
    v68 = v37;
    v69 = v36;
    v70 = sub_2CE210();
    v72 = v71;

    (v245[1])(v67, v203);
    v73 = v70;
    v36 = v69;
    v37 = v68;
    v74 = sub_3F08(v73, v72, &v246);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_0, v62, v64, "ShimUtilities#getShimExperience shim parameters: %s", v66, 0xCu);
    sub_306C(v204);
    v75 = v240;

    v76 = v68[1];
    v76(v58, v36);
  }

  else
  {

    (v245[1])(v35, v63);
    v76 = v37[1];
    v76(v58, v36);
    v75 = v240;
  }

  v77 = v238;
  v78 = sub_2CB3C0();
  v79 = v241;
  v80 = v242;
  if (!*(v78 + 16) || (v81 = sub_4F538(0x6E45686372616573, 0xEC00000079746974), (v82 & 1) == 0))
  {

    v243(v77, v80, v36);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "ShimUtilities#getShimExperience searchEntity shimParameter not found";
LABEL_21:
      _os_log_impl(&dword_0, v93, v94, v96, v95, 2u);
    }

LABEL_22:

    v76(v77, v36);
    v116 = type metadata accessor for ShimExperience(0);
    return (*(*(v116 - 8) + 56))(v75, 1, 1, v116);
  }

  v83 = *(*(v78 + 56) + 8 * v81);

  v243(v79, v80, v36);

  v84 = sub_2CDFE0();
  v85 = sub_2CE670();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v246 = v239;
    *v86 = 136315138;
    v87 = sub_2CE420();
    v245 = v37;
    v89 = v75;
    v90 = v76;
    v91 = sub_3F08(v87, v88, &v246);
    v37 = v245;
    v80 = v242;

    *(v86 + 4) = v91;
    v76 = v90;
    v75 = v89;
    _os_log_impl(&dword_0, v84, v85, "ShimUtilities#getShimExperience searchEntityParameter: %s", v86, 0xCu);
    sub_306C(v239);

    v92 = v241;
  }

  else
  {

    v92 = v79;
  }

  v76(v92, v36);
  v97 = v236;
  v99 = v232;
  v98 = v233;
  if (!*(v83 + 16))
  {

    goto LABEL_19;
  }

  v100 = v234;
  (*(v233 + 16))(v232, v83 + ((*(v233 + 80) + 32) & ~*(v233 + 80)), v234);

  if ((*(v98 + 88))(v99, v100) != enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    (*(v98 + 8))(v99, v100);
LABEL_19:
    v77 = v231;
    v243(v231, v80, v36);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "ShimUtilities#getShimExperience unable to extract searchEntityTypedValue";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  (*(v98 + 96))(v99, v100);
  v101 = v235;
  v102 = v80;
  v103 = v237;
  (*(v97 + 32))(v235, v99, v237);
  v243(v230, v102, v36);
  v104 = v97 + 16;
  v105 = v225;
  v239 = *(v97 + 16);
  (v239)(v225, v101, v103);
  v106 = sub_2CDFE0();
  v107 = sub_2CE670();
  v108 = os_log_type_enabled(v106, v107);
  v238 = v76;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v246 = v245;
    *v109 = 136315138;
    v110 = v97;
    (v239)(v221, v105, v237);
    v111 = sub_2CE2A0();
    v112 = v36;
    v114 = v113;
    v241 = *(v110 + 8);
    (v241)(v105, v237);
    v115 = sub_3F08(v111, v114, &v246);
    v36 = v112;

    *(v109 + 4) = v115;
    v97 = v110;
    _os_log_impl(&dword_0, v106, v107, "ShimUtilities#getShimExperience searchEntityTypedValue: %s", v109, 0xCu);
    sub_306C(v245);
    v103 = v237;

    (v238)(v230, v112);
  }

  else
  {

    v241 = *(v97 + 8);
    (v241)(v105, v103);
    v76(v230, v36);
  }

  v118 = v228;
  v119 = v227;
  v120 = v226;
  v234 = v104;
  v121 = v239;
  (v239)(v226, v235, v103);
  v233 = *(v97 + 88);
  v122 = (v233)(v120, v103);
  LODWORD(v232) = enum case for TypedValue.primitive(_:);
  v123 = v121;
  if (v122 == enum case for TypedValue.primitive(_:))
  {
    (*(v97 + 96))(v120, v103);
    v124 = swift_projectBox();
    v125 = v220;
    (*(v119 + 16))(v220, v124, v118);
    if ((*(v119 + 88))(v125, v118) == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      (*(v119 + 96))(v125, v118);
      v126 = v213;
      v127 = v211;
      v128 = v214;
      (*(v213 + 32))(v211, v125, v214);

      sub_4DF08(v240);
      (*(v126 + 8))(v127, v128);
      return (v241)(v235, v103);
    }

    (*(v119 + 8))(v125, v118);
  }

  else
  {
    (v241)(v120, v103);
  }

  v129 = v223;
  v130 = v222;
  v123(v222, v235, v103);
  if ((v233)(v130, v103) != enum case for TypedValue.entity(_:))
  {
    (v241)(v130, v103);
    v146 = v216;
    v243(v216, v242, v36);
    v147 = sub_2CDFE0();
    v148 = sub_2CE680();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_0, v147, v148, "ShimUtilities#getShimExperience unable to extract mediaEntityValue", v149, 2u);
    }

    (v238)(v146, v36);
    (v241)(v235, v237);
    goto LABEL_43;
  }

  v245 = v37;
  v230 = *(v97 + 96);
  v231 = (v97 + 96);
  (v230)(v130, v103);
  v131 = swift_projectBox();
  v132 = v224;
  v133 = v36;
  v134 = *(v224 + 16);
  v135 = v229;
  v136 = v219;
  v134(v229, v131, v219);

  v202 = v133;
  v243(v129, v242, v133);
  v137 = v217;
  v134(v217, v135, v136);
  v138 = sub_2CDFE0();
  v139 = sub_2CE670();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v246 = v226;
    *v140 = 136315138;
    LODWORD(v225) = v139;
    v134(v210, v137, v136);
    v141 = sub_2CE2A0();
    v143 = v142;
    v144 = *(v132 + 8);
    v144(v137, v136);
    v145 = sub_3F08(v141, v143, &v246);

    *(v140 + 4) = v145;
    _os_log_impl(&dword_0, v138, v225, "ShimUtilities#getShimExperience mediaEntityValue: %s", v140, 0xCu);
    sub_306C(v226);
    v103 = v237;
  }

  else
  {

    v144 = *(v132 + 8);
    v144(v137, v136);
  }

  v150 = v202;
  (v238)(v129, v202);
  v151 = v136;
  v152 = sub_2CE0B0();
  v153 = v218;
  if (!*(v152 + 16) || (v154 = sub_4F538(0x6E65697265707865, 0xEE00656C69466563), (v155 & 1) == 0))
  {
    v172 = v241;

    v173 = v212;
    v243(v212, v242, v150);
    v174 = sub_2CDFE0();
    v175 = sub_2CE680();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&dword_0, v174, v175, "ShimUtilities#getShimExperience experienceFile property not found", v176, 2u);
    }

    (v238)(v173, v150);
    v144(v229, v151);
    v172(v235, v103);
LABEL_43:
    v177 = type metadata accessor for ShimExperience(0);
    return (*(*(v177 - 8) + 56))(v240, 1, 1, v177);
  }

  v226 = v144;
  v156 = v215;
  v157 = v239;
  (v239)(v215, *(v152 + 56) + *(v236 + 72) * v154, v103);

  v243(v153, v242, v150);
  v158 = v208;
  v157(v208, v156, v103);
  v159 = v153;
  v160 = sub_2CDFE0();
  v161 = sub_2CE670();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v246 = v163;
    *v162 = 136315138;
    v157(v221, v158, v237);
    v164 = sub_2CE2A0();
    v166 = v165;
    v167 = v158;
    v168 = v241;
    (v241)(v167, v237);
    v169 = sub_3F08(v164, v166, &v246);
    v150 = v202;

    *(v162 + 4) = v169;
    v170 = v219;
    _os_log_impl(&dword_0, v160, v161, "ShimUtilities#getShimExperience experienceFile: %s", v162, 0xCu);
    sub_306C(v163);
    v103 = v237;

    (v238)(v218, v150);
    v171 = v228;
  }

  else
  {

    v178 = v158;
    v168 = v241;
    (v241)(v178, v103);
    (v238)(v159, v150);
    v171 = v228;
    v170 = v219;
  }

  v179 = v209;
  v157(v209, v215, v103);
  v180 = (v233)(v179, v103);
  if (v180 == v232)
  {
    v241 = v168;
    (v230)(v179, v103);
    v181 = swift_projectBox();
    v182 = v227;
    v183 = v206;
    (*(v227 + 16))(v206, v181, v171);
    v184 = (*(v182 + 88))(v183, v171);
    v185 = v240;
    if (v184 == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      v186 = v103;
      (*(v182 + 96))(v183, v171);
      v187 = v213;
      v188 = v205;
      v189 = v214;
      (*(v213 + 32))(v205, v183, v214);

      sub_4DF08(v185);
      (*(v187 + 8))(v188, v189);
      v190 = v103;
      v191 = v241;
      (v241)(v215, v190);
      (v226)(v229, v170);
      return v191(v235, v186);
    }

    (*(v182 + 8))(v183, v171);
  }

  else
  {
    (v168)(v179, v103);
    v185 = v240;
  }

  v192 = v207;
  v243(v207, v242, v150);
  v193 = sub_2CDFE0();
  v194 = sub_2CE680();
  v195 = os_log_type_enabled(v193, v194);
  v196 = v238;
  if (v195)
  {
    v197 = swift_slowAlloc();
    *v197 = 0;
    _os_log_impl(&dword_0, v193, v194, "ShimUtilities#getShimExperience unable to extract fileValue", v197, 2u);
  }

  v196(v192, v150);
  v198 = v237;
  v199 = v241;
  (v241)(v215, v237);
  (v226)(v229, v170);
  v199(v235, v198);
  v200 = type metadata accessor for ShimExperience(0);
  return (*(*(v200 - 8) + 56))(v185, 1, 1, v200);
}

uint64_t sub_4DF08@<X0>(void *a1@<X8>)
{
  v141 = a1;
  v129 = sub_20410(&unk_3519B0, &qword_2D1230);
  v1 = __chkstk_darwin(v129);
  v3 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v128 = &v124 - v5;
  v6 = __chkstk_darwin(v4);
  v133 = &v124 - v7;
  v8 = __chkstk_darwin(v6);
  v136 = &v124 - v9;
  __chkstk_darwin(v8);
  v132 = &v124 - v10;
  v137 = sub_2C8D90();
  v11 = *(v137 - 8);
  v12 = __chkstk_darwin(v137);
  v130 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v127 = &v124 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v142 = (&v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v21 = &v124 - v20;
  v22 = __chkstk_darwin(v19);
  v135 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v139 = &v124 - v25;
  v26 = __chkstk_darwin(v24);
  v138 = &v124 - v27;
  __chkstk_darwin(v26);
  v29 = &v124 - v28;
  v30 = sub_2CE0F0();
  v31 = [v30 data];

  v32 = sub_2C8DC0();
  v34 = v33;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v36 = *(v16 + 16);
  v144 = v16 + 16;
  v145 = v35;
  v143 = v36;
  v36(v29, v35, v15);
  sub_525D4(v32, v34);
  v37 = sub_2CDFE0();
  v38 = v29;
  v39 = sub_2CE670();
  sub_52628(v32, v34);
  v40 = os_log_type_enabled(v37, v39);
  v140 = v11;
  v134 = v3;
  v131 = v21;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v126 = v38;
    v42 = v41;
    v43 = swift_slowAlloc();
    v151 = v43;
    *v42 = 136315138;
    sub_525D4(v32, v34);
    v44 = sub_2C8DA0();
    v45 = v15;
    v46 = v16;
    v48 = v47;
    sub_52628(v32, v34);
    v49 = sub_3F08(v44, v48, &v151);
    v50 = v46;
    v15 = v45;

    *(v42 + 4) = v49;
    _os_log_impl(&dword_0, v37, v39, "ShimUtilities#getShimExperience fileData: %s", v42, 0xCu);
    sub_306C(v43);

    v51 = *(v50 + 8);
    v51(v126, v45);
  }

  else
  {

    v51 = *(v16 + 8);
    v51(v38, v15);
  }

  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_20410(&qword_34D3E8, &qword_2D1238);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2D0E40;
  *(v52 + 32) = sub_334A0(0, &qword_34D3F0, NSDictionary_ptr);
  *(v52 + 40) = sub_334A0(0, &qword_34D3F8, NSURL_ptr);
  sub_2CE940();
  v126 = v32;

  v53 = v138;
  v143(v138, v145, v15);
  sub_F3F4(&v151, v149, &qword_34CEA0, &qword_2D0FC0);
  v54 = sub_2CDFE0();
  v55 = sub_2CE670();
  v56 = os_log_type_enabled(v54, v55);
  v142 = v51;
  v125 = v34;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v148 = v58;
    *v57 = 136315138;
    sub_F3F4(v149, &v146, &qword_34CEA0, &qword_2D0FC0);
    sub_20410(&qword_34CEA0, &qword_2D0FC0);
    v59 = sub_2CE2A0();
    v61 = v60;
    sub_30B8(v149, &qword_34CEA0, &qword_2D0FC0);
    v62 = sub_3F08(v59, v61, &v148);
    v51 = v142;

    *(v57 + 4) = v62;
    _os_log_impl(&dword_0, v54, v55, "ShimUtilities#getShimExperience deserializedShimExperienceDictionary: %s", v57, 0xCu);
    sub_306C(v58);

    v63 = v138;
  }

  else
  {

    sub_30B8(v149, &qword_34CEA0, &qword_2D0FC0);
    v63 = v53;
  }

  v51(v63, v15);
  v66 = v139;
  sub_F3F4(&v151, v149, &qword_34CEA0, &qword_2D0FC0);
  if (v150)
  {
    sub_20410(&qword_34CCD8, &unk_2D10D0);
    if (swift_dynamicCast())
    {
      v67 = v146;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    sub_30B8(v149, &qword_34CEA0, &qword_2D0FC0);
    v67 = 0;
  }

  v143(v66, v145, v15);

  v68 = sub_2CDFE0();
  v69 = sub_2CE670();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v149[0] = v71;
    *v70 = 136315138;
    v146 = v67;

    sub_20410(&qword_34D400, &unk_2D1240);
    v72 = sub_2CE2A0();
    v74 = sub_3F08(v72, v73, v149);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_0, v68, v69, "ShimUtilities#getShimExperience shimExperienceDictionary: %s", v70, 0xCu);
    sub_306C(v71);

    v51(v139, v15);
  }

  else
  {

    v51(v66, v15);
  }

  v75 = v126;
  v76 = v137;
  v77 = v140;
  if (v67)
  {
    if (*(v67 + 16))
    {
      v78 = sub_4F538(0x6E65697265707865, 0xEE00617461446563);
      v79 = 0xF000000000000000;
      if (v80)
      {
        sub_E2FC(*(v67 + 56) + 32 * v78, v149);
        v81 = swift_dynamicCast();
        if (v81)
        {
          v82 = v146;
        }

        else
        {
          v82 = 0;
        }

        if (v81)
        {
          v79 = v147;
        }
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      v82 = 0;
      v79 = 0xF000000000000000;
    }

    v83 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(v82, v79);
    sub_5267C(v82, v79);
    if (v83)
    {
      if (*(v67 + 16))
      {
        v84 = sub_4F538(0x7365526F69647561, 0xEC00000073746C75);
        v85 = 0xF000000000000000;
        if (v86)
        {
          sub_E2FC(*(v67 + 56) + 32 * v84, v149);
          v87 = swift_dynamicCast();
          if (v87)
          {
            v88 = v146;
          }

          else
          {
            v88 = 0;
          }

          if (v87)
          {
            v85 = v147;
          }
        }

        else
        {
          v88 = 0;
        }
      }

      else
      {
        v88 = 0;
        v85 = 0xF000000000000000;
      }

      v89 = sub_507D4(v88, v85);
      sub_5267C(v88, v85);
      if (v89)
      {
        sub_30B8(&v151, &qword_34CEA0, &qword_2D0FC0);
        sub_52628(v75, v125);

        v90 = v141;
        *v141 = v83;
        v90[1] = v89;
        v91 = type metadata accessor for ShimExperience(0);
        swift_storeEnumTagMultiPayload();
        v92 = *(*(v91 - 8) + 56);
        v93 = v90;
        return v92(v93, 0, 1, v91);
      }
    }

    if (*(v67 + 16) && (v94 = sub_4F538(7107189, 0xE300000000000000), (v95 & 1) != 0))
    {
      sub_E2FC(*(v67 + 56) + 32 * v94, v149);

      v96 = v132;
      v97 = swift_dynamicCast();
      v77 = v140;
      (*(v140 + 56))(v96, v97 ^ 1u, 1, v76);
      if ((*(v77 + 48))(v96, 1, v76) != 1)
      {
        sub_30B8(&v151, &qword_34CEA0, &qword_2D0FC0);
        sub_52628(v75, v125);
        v98 = *(v77 + 32);
        v99 = v127;
        v98(v127, v96, v76);
        v100 = v141;
        v98(v141, v99, v76);
        v91 = type metadata accessor for ShimExperience(0);
        swift_storeEnumTagMultiPayload();
        v92 = *(*(v91 - 8) + 56);
        v93 = v100;
        return v92(v93, 0, 1, v91);
      }
    }

    else
    {

      v77 = v140;
      v96 = v132;
      (*(v140 + 56))(v132, 1, 1, v76);
    }

    sub_30B8(v96, &unk_3519B0, &qword_2D1230);
  }

  sub_F3F4(&v151, v149, &qword_34CEA0, &qword_2D0FC0);
  if (v150)
  {
    v101 = v136;
    v102 = swift_dynamicCast();
    (*(v77 + 56))(v101, v102 ^ 1u, 1, v76);
  }

  else
  {
    sub_30B8(v149, &qword_34CEA0, &qword_2D0FC0);
    v101 = v136;
    (*(v77 + 56))(v136, 1, 1, v76);
  }

  v103 = v133;
  v104 = v135;
  v143(v135, v145, v15);
  sub_F3F4(v101, v103, &unk_3519B0, &qword_2D1230);
  v105 = sub_2CDFE0();
  v106 = sub_2CE670();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v149[0] = v108;
    *v107 = 136315138;
    sub_F3F4(v103, v128, &unk_3519B0, &qword_2D1230);
    v109 = sub_2CE2A0();
    v111 = v110;
    sub_30B8(v103, &unk_3519B0, &qword_2D1230);
    v101 = v136;
    v112 = sub_3F08(v109, v111, v149);
    v76 = v137;
    v75 = v126;

    *(v107 + 4) = v112;
    _os_log_impl(&dword_0, v105, v106, "ShimUtilities#getShimExperience shimExperienceURL: %s", v107, 0xCu);
    sub_306C(v108);

    v77 = v140;

    v113 = v135;
  }

  else
  {

    sub_30B8(v103, &unk_3519B0, &qword_2D1230);
    v113 = v104;
  }

  v142(v113, v15);
  sub_30B8(&v151, &qword_34CEA0, &qword_2D0FC0);
  v114 = v125;
  v115 = v134;
  sub_F3F4(v101, v134, &unk_3519B0, &qword_2D1230);
  if ((*(v77 + 48))(v115, 1, v76) == 1)
  {
    sub_30B8(v115, &unk_3519B0, &qword_2D1230);
    sub_30B8(v101, &unk_3519B0, &qword_2D1230);
    v116 = v131;
    v143(v131, v145, v15);
    v117 = sub_2CDFE0();
    v118 = sub_2CE680();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_0, v117, v118, "ShimUtilities#getShimExperience unable to extract ShimExperience", v119, 2u);

      sub_52628(v75, v114);
    }

    else
    {
      sub_52628(v75, v114);
    }

    v142(v116, v15);
    v64 = type metadata accessor for ShimExperience(0);
    return (*(*(v64 - 8) + 56))(v141, 1, 1, v64);
  }

  else
  {
    sub_52628(v75, v114);
    v120 = *(v77 + 32);
    v121 = v130;
    v120(v130, v115, v76);
    v122 = v141;
    v120(v141, v121, v76);
    v123 = type metadata accessor for ShimExperience(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    return sub_30B8(v101, &unk_3519B0, &qword_2D1230);
  }
}

uint64_t sub_4F290(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_4F304(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_3F08(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_4F360(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34D3D8, &qword_2D26C0);
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

_BYTE **sub_4F454(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_4F464(uint64_t a1)
{
  sub_2CDD90();
  sub_5258C(&qword_34D3C0, &type metadata accessor for DeviceCategory, &protocol conformance descriptor for DeviceCategory);
  v2 = sub_2CE220();
  return sub_4FC74(a1, v2, &type metadata accessor for DeviceCategory, &qword_34D3C8, &type metadata accessor for DeviceCategory, &protocol conformance descriptor for DeviceCategory);
}

unint64_t sub_4F538(uint64_t a1, uint64_t a2)
{
  sub_2CEF50();
  sub_2CE310();
  v4 = sub_2CEF80();

  return sub_4FA88(a1, a2, v4);
}

unint64_t sub_4F5B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CEC40(*(v2 + 40));

  return sub_4FB40(a1, v4);
}

unint64_t sub_4F5F4(Swift::UInt a1)
{
  sub_2CEF50();
  sub_2CEF60(a1);
  v2 = sub_2CEF80();

  return sub_4FC08(a1, v2);
}

unint64_t sub_4F660(uint64_t a1)
{
  sub_2CD540();
  sub_5258C(&qword_34D380, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v2 = sub_2CE220();
  return sub_4FC74(a1, v2, &type metadata accessor for CommonAudio.MediaType, &qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
}

unint64_t sub_4F734(uint64_t a1)
{
  sub_2CD4B0();
  sub_5258C(&qword_34D390, &type metadata accessor for CommonAudio.Sort, &protocol conformance descriptor for CommonAudio.Sort);
  v2 = sub_2CE220();
  return sub_4FC74(a1, v2, &type metadata accessor for CommonAudio.Sort, &qword_34D398, &type metadata accessor for CommonAudio.Sort, &protocol conformance descriptor for CommonAudio.Sort);
}

unint64_t sub_4F808(uint64_t a1)
{
  sub_2CD4D0();
  sub_5258C(&qword_34D3A0, &type metadata accessor for CommonAudio.Decade, &protocol conformance descriptor for CommonAudio.Decade);
  v2 = sub_2CE220();
  return sub_4FC74(a1, v2, &type metadata accessor for CommonAudio.Decade, &qword_34D3A8, &type metadata accessor for CommonAudio.Decade, &protocol conformance descriptor for CommonAudio.Decade);
}

unint64_t sub_4F8DC(uint64_t a1, uint64_t a2)
{
  sub_2CEF50();
  if (a2)
  {
    sub_2CEF70(1u);
    sub_2CE310();
  }

  else
  {
    sub_2CEF70(0);
  }

  v4 = sub_2CEF80();

  return sub_4FE14(a1, a2, v4);
}

unint64_t sub_4F970(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CEB20(*(v2 + 40));

  return sub_4FEE0(a1, v4);
}

unint64_t sub_4F9B4(uint64_t a1)
{
  sub_2CB0A0();
  sub_5258C(&qword_34D3B0, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  v2 = sub_2CE220();
  return sub_4FC74(a1, v2, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &qword_34D3B8, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
}

unint64_t sub_4FA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2CEEA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4FB40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_524DC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2CEC50();
      sub_52538(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_4FC08(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_4FC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_5258C(v23, v24, v25);
      v19 = sub_2CE250();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_4FE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2CEEA0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_4FEE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2CEB30();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = v38 - v8;
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  result = 0;
  if (a2 >> 60 == 15)
  {
    return result;
  }

  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_20410(&qword_34D3E8, &qword_2D1238);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2D0E40;
  *(v13 + 32) = sub_334A0(0, &qword_34D408, NSArray_ptr);
  *(v13 + 40) = sub_2CDB90();
  sub_525D4(a1, a2);
  sub_2CE940();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v15 = *(v5 + 16);
  v42 = v14;
  v39 = v15;
  v15(v11, v14, v4);
  sub_F3F4(v46, v45, &qword_34CEA0, &qword_2D0FC0);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  v18 = os_log_type_enabled(v16, v17);
  v40 = a1;
  v41 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v38[1] = v5 + 16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v21;
    *v20 = 136315138;
    sub_F3F4(v45, v43, &qword_34CEA0, &qword_2D0FC0);
    sub_20410(&qword_34CEA0, &qword_2D0FC0);
    v22 = sub_2CE2A0();
    v24 = v23;
    sub_30B8(v45, &qword_34CEA0, &qword_2D0FC0);
    v25 = sub_3F08(v22, v24, &v44);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, "ShimUtilities audioExperience uncast %s", v20, 0xCu);
    sub_306C(v21);
    v5 = v41;
  }

  else
  {

    sub_30B8(v45, &qword_34CEA0, &qword_2D0FC0);
  }

  v26 = *(v5 + 8);
  v26(v11, v4);
  sub_F3F4(v46, v45, &qword_34CEA0, &qword_2D0FC0);
  if (v45[3])
  {
    sub_20410(&qword_34D428, &qword_2D1268);
    if (swift_dynamicCast())
    {
      v27 = v43[0];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_30B8(v45, &qword_34CEA0, &qword_2D0FC0);
    v27 = 0;
  }

  v39(v9, v42, v4);

  v28 = sub_2CDFE0();
  v29 = sub_2CE670();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45[0] = v31;
    *v30 = 136315138;
    v43[0] = v27;

    sub_20410(&qword_34D420, &qword_2D1260);
    v32 = sub_2CE2A0();
    v42 = v26;
    v34 = sub_3F08(v32, v33, v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v28, v29, "ShimUtilities audioExperience %s", v30, 0xCu);
    sub_306C(v31);

    v42(v9, v4);
    v35 = v40;
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_23:
    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
    sub_5267C(v35, a2);
    return 0;
  }

  v26(v9, v4);
  v35 = v40;
  if (!v27)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v27 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_25:
    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
    sub_5267C(v35, a2);

    return 0;
  }

LABEL_18:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v36 = sub_2CECD0();
    goto LABEL_21;
  }

  if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
    v36 = *(v27 + 32);
LABEL_21:
    v37 = v36;
    sub_5267C(v35, a2);

    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_507D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v33[-v8];
  __chkstk_darwin(v7);
  v11 = &v33[-v10];
  v12 = 0;
  if (a2 >> 60 != 15)
  {
    sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
    sub_20410(&qword_34D3E8, &qword_2D1238);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2D0E40;
    *(v13 + 32) = sub_334A0(0, &qword_34D408, NSArray_ptr);
    *(v13 + 40) = sub_2CDA90();
    sub_525D4(a1, a2);
    sub_2CE940();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    v15 = *(v5 + 16);
    v39 = v14;
    v36 = v15;
    v37 = (v5 + 16);
    v15(v11, v14, v4);
    sub_F3F4(v43, v42, &qword_34CEA0, &qword_2D0FC0);
    v16 = sub_2CDFE0();
    v17 = sub_2CE670();
    v18 = os_log_type_enabled(v16, v17);
    v38 = v5;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v19 = 136315138;
      v34 = v17;
      sub_F3F4(v42, v40, &qword_34CEA0, &qword_2D0FC0);
      sub_20410(&qword_34CEA0, &qword_2D0FC0);
      v20 = sub_2CE2A0();
      v22 = v21;
      sub_30B8(v42, &qword_34CEA0, &qword_2D0FC0);
      v23 = sub_3F08(v20, v22, &v41);
      v5 = v38;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v16, v34, "ShimUtilities AudioResult uncast %s", v19, 0xCu);
      sub_306C(v35);
    }

    else
    {

      sub_30B8(v42, &qword_34CEA0, &qword_2D0FC0);
    }

    v24 = *(v5 + 8);
    v24(v11, v4);
    sub_F3F4(v43, v42, &qword_34CEA0, &qword_2D0FC0);
    if (v42[3])
    {
      sub_20410(&qword_34D418, &qword_2D1258);
      if (swift_dynamicCast())
      {
        v12 = v40[0];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      sub_30B8(v42, &qword_34CEA0, &qword_2D0FC0);
      v12 = 0;
    }

    v36(v9, v39, v4);

    v25 = sub_2CDFE0();
    v26 = sub_2CE670();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40[0] = v12;
      v42[0] = v39;
      *v27 = 136315138;

      sub_20410(&qword_34D410, &qword_2D1250);
      v28 = sub_2CE2A0();
      v30 = sub_3F08(v28, v29, v42);
      v37 = v24;
      v31 = v30;

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v25, v26, "ShimUtilities AudioResult %s", v27, 0xCu);
      sub_306C(v39);

      sub_5267C(a1, a2);

      v37(v9, v4);
    }

    else
    {
      sub_5267C(a1, a2);

      v24(v9, v4);
    }

    sub_30B8(v43, &qword_34CEA0, &qword_2D0FC0);
  }

  return v12;
}

uint64_t _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(uint64_t a1)
{
  v166 = sub_2CE110();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v154[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = sub_2CE0E0();
  v160 = *(v161 - 8);
  v3 = __chkstk_darwin(v161);
  v158 = &v154[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v159 = &v154[-v6];
  __chkstk_darwin(v5);
  v167 = &v154[-v7];
  v178 = sub_2CB3B0();
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = &v154[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_2CE120();
  v171 = *(v177 - 8);
  v9 = __chkstk_darwin(v177);
  v170 = &v154[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v163 = &v154[-v12];
  v13 = __chkstk_darwin(v11);
  v169 = &v154[-v14];
  __chkstk_darwin(v13);
  v174 = &v154[-v15];
  v188 = sub_2CB3E0();
  v186 = *(v188 - 8);
  v16 = __chkstk_darwin(v188);
  v185 = &v154[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v182 = &v154[-v18];
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v189 = v19;
  v190 = v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v154[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21);
  v184 = &v154[-v25];
  v26 = __chkstk_darwin(v24);
  v173 = &v154[-v27];
  v28 = __chkstk_darwin(v26);
  v168 = &v154[-v29];
  v30 = __chkstk_darwin(v28);
  v162 = &v154[-v31];
  v32 = __chkstk_darwin(v30);
  v172 = &v154[-v33];
  v34 = __chkstk_darwin(v32);
  v187 = &v154[-v35];
  __chkstk_darwin(v34);
  v37 = &v154[-v36];
  v38 = sub_2CA870();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v154[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_2CA340();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v154[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v44);
  v48 = &v154[-v47];
  (*(v39 + 16))(v41, a1, v38);
  if ((*(v39 + 88))(v41, v38) != enum case for Parse.ifClientAction(_:))
  {
    (*(v39 + 8))(v41, v38);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v71 = v189;
    v72 = sub_3ED0(v189, static Logger.default);
    swift_beginAccess();
    v73 = v190;
    (*(v190 + 16))(v23, v72, v71);
    v74 = sub_2CDFE0();
    v75 = sub_2CE680();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "ShimUtilities#getAppBundleId Not ifClientAction parse", v76, 2u);
    }

    (*(v73 + 8))(v23, v71);
    return 0;
  }

  (*(v39 + 96))(v41, v38);
  (*(v43 + 32))(v48, v41, v42);
  v49 = v42;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = v189;
  v51 = sub_3ED0(v189, static Logger.default);
  swift_beginAccess();
  v52 = v190;
  v53 = *(v190 + 16);
  v180 = v190 + 16;
  v181 = v51;
  v179 = v53;
  v53(v37, v51, v50);
  (*(v43 + 16))(v46, v48, v49);
  v54 = sub_2CDFE0();
  v55 = sub_2CE670();
  v56 = os_log_type_enabled(v54, v55);
  v157 = v43;
  v183 = v48;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v191 = v156;
    *v57 = 136315138;
    v58 = v182;
    sub_2CA330();
    sub_2CB3C0();
    v155 = v55;
    v59 = v186;
    (*(v186 + 1))(v58, v188);
    sub_20410(&qword_34D378, qword_2D11F0);
    v60 = sub_2CE210();
    v61 = v49;
    v63 = v62;

    v64 = *(v43 + 8);
    (v64)(v46, v61);
    v65 = sub_3F08(v60, v63, &v191);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_0, v54, v155, "ShimUtilities#getAppBundleId shim parameter: %s", v57, 0xCu);
    sub_306C(v156);
    v66 = v190;

    v67 = v189;

    v68 = v61;
    v69 = v188;
    v70 = *(v66 + 8);
    (v70)(v37, v67);
  }

  else
  {

    v64 = *(v43 + 8);
    (v64)(v46, v49);
    v70 = *(v52 + 8);
    (v70)(v37, v50);
    v67 = v50;
    v68 = v49;
    v69 = v188;
    v59 = v186;
  }

  v77 = v185;
  sub_2CA330();
  v78 = sub_2CB3C0();
  (*(v59 + 1))(v77, v69);
  v79 = v187;
  if (!*(v78 + 16) || (v80 = sub_4F538(7368801, 0xE300000000000000), (v81 & 1) == 0))
  {

    v94 = v184;
    v179(v184, v181, v67);
    v95 = sub_2CDFE0();
    v96 = sub_2CE680();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_0, v95, v96, "ShimUtilities#getAppBundleId app shimParameter not found", v97, 2u);
    }

    (v70)(v94, v67);
    v98 = v183;
    v99 = v68;
    goto LABEL_39;
  }

  v82 = *(*(v78 + 56) + 8 * v80);

  v179(v79, v181, v67);

  v83 = sub_2CDFE0();
  v84 = sub_2CE670();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v188 = v68;
    v186 = v70;
    v86 = v64;
    v87 = v85;
    v88 = swift_slowAlloc();
    v191 = v88;
    *v87 = 136315138;
    v89 = sub_2CE420();
    v91 = sub_3F08(v89, v90, &v191);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_0, v83, v84, "ShimUtilities#getAppBundleId app parameter: %s", v87, 0xCu);
    sub_306C(v88);

    v64 = v86;
    v70 = v186;
    v92 = v188;

    v93 = v187;
  }

  else
  {
    v92 = v68;

    v93 = v79;
  }

  (v70)(v93, v67);
  v101 = v175;
  v100 = v176;
  if (!*(v82 + 16))
  {

LABEL_26:
    v121 = v173;
    v179(v173, v181, v67);
    v122 = sub_2CDFE0();
    v123 = sub_2CE680();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "ShimUtilities#getAppBundleId unable to extract appValue", v124, 2u);
    }

    (v70)(v121, v67);
    v98 = v183;
    v99 = v92;
    goto LABEL_39;
  }

  v102 = v178;
  (*(v176 + 16))(v175, v82 + ((*(v176 + 80) + 32) & ~*(v176 + 80)), v178);

  if ((*(v100 + 88))(v101, v102) != enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    (*(v100 + 8))(v101, v102);
    goto LABEL_26;
  }

  v185 = v64;
  v188 = v92;
  (*(v100 + 96))(v101, v102);
  v103 = v171;
  v104 = v174;
  v105 = v177;
  (*(v171 + 32))(v174, v101, v177);
  v106 = v172;
  v179(v172, v181, v67);
  v107 = v67;
  v108 = *(v103 + 16);
  v109 = v169;
  v108(v169, v104, v105);
  v110 = sub_2CDFE0();
  v111 = sub_2CE670();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v191 = v113;
    *v112 = 136315138;
    v108(v163, v109, v177);
    v114 = sub_2CE2A0();
    v115 = v109;
    v117 = v116;
    v187 = *(v103 + 8);
    (v187)(v115, v177);
    v118 = sub_3F08(v114, v117, &v191);

    *(v112 + 4) = v118;
    _os_log_impl(&dword_0, v110, v111, "ShimUtilities#getAppBundleId app value: %s", v112, 0xCu);
    sub_306C(v113);

    v105 = v177;

    v119 = v172;
    v120 = v189;
  }

  else
  {

    v187 = *(v103 + 8);
    (v187)(v109, v105);
    v119 = v106;
    v120 = v107;
  }

  v70(v119);
  v125 = v170;
  v108(v170, v174, v105);
  if ((*(v103 + 88))(v125, v105) != enum case for TypedValue.primitive(_:))
  {
    (v187)(v125, v105);
    v64 = v185;
LABEL_36:
    v146 = v168;
    v179(v168, v181, v120);
    v147 = sub_2CDFE0();
    v148 = sub_2CE680();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_0, v147, v148, "ShimUtilities#getAppBundleId unable to extract appValue typed entity", v149, 2u);
    }

    (v70)(v146, v120);
    (v187)(v174, v105);
    v98 = v183;
    v99 = v188;
LABEL_39:
    (v64)(v98, v99);
    return 0;
  }

  v186 = v70;
  (*(v103 + 96))(v125, v105);
  v126 = swift_projectBox();
  v127 = v165;
  v128 = v164;
  v129 = v166;
  (*(v165 + 16))(v164, v126, v166);
  if ((*(v127 + 88))(v128, v129) != enum case for TypedValue.PrimitiveValue.app(_:))
  {
    (*(v127 + 8))(v128, v129);

    v64 = v185;
    v70 = v186;
    goto LABEL_36;
  }

  (*(v127 + 96))(v128, v129);
  v130 = v160;
  v131 = v167;
  v132 = v161;
  (*(v160 + 32))(v167, v128, v161);

  v133 = v162;
  v179(v162, v181, v120);
  v134 = *(v130 + 16);
  v135 = v159;
  v134(v159, v131, v132);
  v136 = sub_2CDFE0();
  v137 = sub_2CE670();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v191 = v184;
    *v138 = 136315138;
    v134(v158, v135, v132);
    v139 = sub_2CE2A0();
    v141 = v140;
    v142 = *(v130 + 8);
    v142(v135, v132);
    v143 = sub_3F08(v139, v141, &v191);

    *(v138 + 4) = v143;
    _os_log_impl(&dword_0, v136, v137, "ShimUtilities#getAppBundleId app: %s", v138, 0xCu);
    sub_306C(v184);

    v144 = v189;
    v145 = v162;
  }

  else
  {

    v142 = *(v130 + 8);
    v142(v135, v132);
    v145 = v133;
    v144 = v120;
  }

  (v186)(v145, v144);
  v151 = v188;
  v152 = v167;
  v153 = sub_2CE0D0();
  v142(v152, v132);
  (v187)(v174, v177);
  (v185)(v183, v151);
  return v153;
}

uint64_t sub_5258C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_525D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_52628(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_5267C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_52628(result, a2);
  }

  return result;
}

unint64_t sub_52690(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v13 = a1;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12[0] = j;
      v12[1] = v7;
      v10 = v13(v12);
      if (v3)
      {

        return j;
      }

      if (v10)
      {
        return j;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t MediaItemDisambiguationStrategy.actionForInput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:input:)@<X0>(void *a1@<X6>, uint64_t a2@<X8>)
{
  v125 = a2;
  v108 = sub_2CA810();
  v107 = *(v108 - 8);
  v3 = __chkstk_darwin(v108);
  v101 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v99 - v6;
  __chkstk_darwin(v5);
  v110 = &v99 - v8;
  v9 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v9 - 8);
  v122 = (&v99 - v10);
  v11 = sub_2CD490();
  v112 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v109 = &v99 - v15;
  __chkstk_darwin(v14);
  v111 = &v99 - v16;
  v120 = sub_2CA870();
  v119 = *(v120 - 8);
  v17 = __chkstk_darwin(v120);
  v113 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v99 - v19;
  v20 = sub_2CA7B0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v103 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v123 = &v99 - v29;
  v30 = __chkstk_darwin(v28);
  v106 = &v99 - v31;
  v32 = __chkstk_darwin(v30);
  v105 = &v99 - v33;
  __chkstk_darwin(v32);
  v35 = &v99 - v34;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v104 = v7;
  v36 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v37 = *(v25 + 16);
  v116 = v36;
  v115 = v25 + 16;
  v114 = v37;
  v37(v35, v36, v24);
  v38 = *(v21 + 16);
  v121 = a1;
  v38(v23, a1, v20);
  v39 = v23;
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  v42 = os_log_type_enabled(v40, v41);
  v118 = v11;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v130[0] = v100;
    *v43 = 136315138;
    sub_5C3A4(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v44 = sub_2CEE70();
    v45 = v25;
    v46 = v44;
    v117 = v45;
    v48 = v47;
    (*(v21 + 8))(v39, v20);
    v49 = sub_3F08(v46, v48, v130);
    v25 = v117;

    *(v43 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "MediaItemDisambiguationStrategy#actionForInput input:%s", v43, 0xCu);
    sub_306C(v100);
  }

  else
  {

    (*(v21 + 8))(v39, v20);
  }

  v50 = *(v25 + 8);
  v50(v35, v24);
  v51 = v123;
  v52 = v124;
  sub_2CA790();
  v53 = v119;
  v54 = v120;
  v55 = (*(v119 + 88))(v52, v120);
  v56 = v122;
  if (v55 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v53 + 96))(v52, v54);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v57 = sub_2CAFE0();
    (*(*(v57 - 8) + 8))(v52, v57);
  }

  else
  {
    if (v55 == enum case for Parse.directInvocation(_:))
    {
      (*(v53 + 96))(v52, v54);
      v62 = v107;
      v63 = v52;
      v64 = v110;
      v65 = v108;
      (*(v107 + 32))(v110, v63, v108);
      sub_238E4C(v64, v130);
      if (v131 == 3)
      {
        sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
        (*(v62 + 8))(v64, v65);
        return sub_2C9CE0();
      }

      v117 = v25;
      if (v131 != 255)
      {
        sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
      }

      v122 = v50;
      v114(v51, v116, v24);
      v66 = *(v62 + 16);
      v67 = v104;
      v66(v104, v64, v65);
      v68 = sub_2CDFE0();
      v69 = sub_2CE680();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v124 = v24;
        v121 = v71;
        *&v128 = v71;
        *v70 = 136315138;
        v66(v101, v67, v65);
        v72 = sub_2CE2A0();
        v74 = v73;
        v75 = *(v62 + 8);
        v75(v67, v65);
        v76 = sub_3F08(v72, v74, &v128);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_0, v68, v69, "MediaItemDisambiguationStrategy#actionForInput received unsupported directInvocation: %s", v70, 0xCu);
        sub_306C(v121);

        v77 = v123;
        v78 = v124;
      }

      else
      {

        v75 = *(v62 + 8);
        v75(v67, v65);
        v77 = v51;
        v78 = v24;
      }

      v122(v77, v78);
      sub_2C9CF0();
      return (v75)(v110, v65);
    }

    if (v55 != enum case for Parse.pommesResponse(_:))
    {
      v86 = v103;
      v114(v103, v116, v24);
      v87 = sub_2CDFE0();
      v88 = sub_2CE680();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "MediaItemDisambiguationStrategy#actionForInput Ignorning unsupported parse", v89, 2u);
      }

      v50(v86, v24);
      sub_2C9CF0();
      return (*(v53 + 8))(v124, v54);
    }

    (*(v53 + 8))(v52, v54);
  }

  v58 = v113;
  sub_2CA790();
  v59 = sub_D1D64(v58, &v128);
  (*(v53 + 8))(v58, v54, v59);
  if (v129)
  {
    sub_F338(&v128, v130);
    sub_35E0(v130, v130[3]);
    sub_2CD480();
    v60 = v112;
    v61 = v118;
    if ((*(v112 + 48))(v56, 1, v118) == 1)
    {
      sub_30B8(v56, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_306C(v130);
      return sub_2C9CE0();
    }

    v117 = v25;
    v124 = v24;
    (*(v60 + 32))(v111, v56, v61);
    v84 = *(v60 + 104);
    v84(v109, enum case for CommonAudio.Confirmation.cancel(_:), v61);
    sub_5C3A4(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v128 == v126 && *(&v128 + 1) == v127)
    {
      v85 = 1;
    }

    else
    {
      v85 = sub_2CEEA0();
    }

    v90 = *(v112 + 8);
    v91 = v118;
    v90(v109, v118);

    if ((v85 & 1) == 0)
    {
      v92 = v102;
      v84(v102, enum case for CommonAudio.Confirmation.no(_:), v91);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v128 == v126 && *(&v128 + 1) == v127)
      {
        v90(v92, v91);
      }

      else
      {
        v93 = sub_2CEEA0();
        v90(v92, v91);

        if ((v93 & 1) == 0)
        {
          v90(v111, v91);
          goto LABEL_11;
        }
      }
    }

    v94 = v105;
    v95 = v124;
    v114(v105, v116, v124);
    v96 = sub_2CDFE0();
    v97 = sub_2CE690();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "MediaItemDisambiguationStrategy#actionForInput cancelled", v98, 2u);
    }

    v50(v94, v95);
    sub_2C9CD0();
    v90(v111, v118);
    return sub_306C(v130);
  }

  else
  {
    sub_30B8(&v128, &qword_34CCF0, &unk_2D1270);
    v79 = v106;
    v114(v106, v116, v24);
    v80 = sub_2CDFE0();
    v81 = sub_2CE690();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "MediaItemDisambiguationStrategy#actionForInput received invalid intent", v82, 2u);
    }

    v50(v79, v24);
    return sub_2C9CF0();
  }
}

uint64_t sub_5385C(uint64_t a1)
{
  v1 = [*(a1 + 8) identifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2CE270();
    v5 = v4;

    v6 = sub_73218();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = sub_73218();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = v6;
  v8 = [v6 mediaIdentifier];

  if (v8)
  {
    v9 = sub_2CE270();
    v11 = v10;

    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = 0;
  v11 = 0;
  if (v5)
  {
LABEL_10:
    if (v11)
    {
      if (v3 == v9 && v5 == v11)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_2CEEA0();
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_16;
  }

LABEL_7:
  if (!v11)
  {
    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
LABEL_16:

  return v12 & 1;
}

uint64_t sub_5399C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353080, &qword_2D1460);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = [*(a1 + 8) identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2CE270();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_F3F4(a2, v6, &unk_353080, &qword_2D1460);
  v12 = sub_2CAB40();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_30B8(v6, &unk_353080, &qword_2D1460);
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_14:
    v18 = 0;
LABEL_19:

    return v18 & 1;
  }

  v14 = sub_2CAB20();
  v16 = v15;
  (*(v13 + 8))(v6, v12);
  if (v11)
  {
    if (v16)
    {
      if (v9 == v14 && v11 == v16)
      {

        v18 = 1;
      }

      else
      {
        v18 = sub_2CEEA0();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    v18 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_53BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (*a8)(void *), uint64_t a9)
{
  v99 = a8;
  v101 = a7;
  v102 = a6;
  v96 = a3;
  v97 = a4;
  v95 = a2;
  v92 = a1;
  v100 = a9;
  v98 = a5;
  v79 = *a5;
  v87 = sub_2C8EC0();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v89 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v91 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v12;
  __chkstk_darwin(v11);
  v94 = &v79 - v13;
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v84 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v16;
  __chkstk_darwin(v15);
  v93 = (&v79 - v17);
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v18 - 8);
  v83 = (&v79 - v19);
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v20 - 8);
  v81 = &v79 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v22 - 8);
  v80 = &v79 - v23;
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v32);
  v34 = (&v79 - v33);
  sub_F3F4(v92, &v79 - v33, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v28);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    LOBYTE(v78) = 0;
    v97 = sub_2CCAF0();

    (*(v25 + 8))(v27, v24);
    (*(v29 + 8))(v31, v28);
    v37 = v98[7];
    v36 = v98[8];
    v98 = sub_35E0(v98 + 4, v37);
    v38 = enum case for ActivityType.failed(_:);
    v39 = sub_2C9C20();
    v40 = *(v39 - 8);
    v41 = v80;
    (*(v40 + 104))(v80, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    v42 = sub_2CA130();
    v43 = v81;
    (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
    v44 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v45 = sub_2C98F0();
    v46 = *(v45 - 8);
    v47 = v83;
    (*(v46 + 104))(v83, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v77 = v37;
    v78 = v36;
    LOBYTE(v76) = 1;
    sub_2CB4E0();

    sub_30B8(v47, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v43, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v41, &qword_34CB88, &unk_2D0D90);
    v103[0] = v35;
    v104 = 1;
    swift_errorRetain();
    v99(v103);

    v48 = qword_34C798;
    v49 = &qword_2D0DA0;
    v50 = v103;
  }

  else
  {
    v51 = v93;
    sub_14A58(v34, v93, &qword_34C6E8, &unk_2D0FF0);
    sub_20410(&qword_34D4C0, &qword_2D1438);
    sub_2CA440();
    v52 = *(v79 + 80);
    v53 = *(v79 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v92 = AssociatedTypeWitness;
    v83 = swift_getAssociatedTypeWitness();
    v55 = v94;
    v56 = v102;
    sub_B37D0(v101, v102, AssociatedTypeWitness, v83, v94);

    v57 = sub_2CA460();
    v58 = v82;
    v59 = sub_2CB570();
    __chkstk_darwin(v59);
    v78 = v58;
    sub_98ED0(sub_5B6EC, &v76, v57);
    (*(v86 + 8))(v58, v87);
    sub_2AD1C(v57);

    sub_2C9960();
    swift_allocObject();
    v87 = sub_2C9950();
    v60 = v88;
    sub_F3F4(v51, v88, &qword_34C6E8, &unk_2D0FF0);
    v61 = v55;
    v62 = v91;
    sub_F3F4(v61, v91, &unk_353020, &unk_2D0970);
    v63 = (*(v84 + 80) + 96) & ~*(v84 + 80);
    v64 = (v85 + *(v89 + 80) + v63) & ~*(v89 + 80);
    v65 = swift_allocObject();
    v65[2] = v52;
    v65[3] = v53;
    v66 = v96;
    v65[4] = v95;
    v65[5] = v66;
    v67 = v97;
    v68 = v98;
    v65[6] = v97;
    v65[7] = v68;
    v65[8] = v56;
    v69 = v100;
    v70 = v101;
    v71 = v99;
    v65[9] = v101;
    v65[10] = v71;
    v65[11] = v69;
    sub_14A58(v60, v65 + v63, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v62, v65 + v64, &unk_353020, &unk_2D0970);

    v72 = v67;

    v73 = v102;

    v74 = v70;

    sub_10CE1C(v73, v87, sub_5B70C, v65);

    sub_30B8(v94, &unk_353020, &unk_2D0970);
    v50 = v93;
    v48 = &qword_34C6E8;
    v49 = &unk_2D0FF0;
  }

  return sub_30B8(v50, v48, v49);
}

uint64_t sub_54724(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v79 = a7;
  v80 = a8;
  v74 = a5;
  v75 = a6;
  v73 = a4;
  v72 = a3;
  LODWORD(v71) = a2;
  v81 = a10;
  v82 = a9;
  v68 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v68);
  v69 = &v63 - v13;
  v67 = sub_2CCB20();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CA910();
  v70 = *(v16 - 8);
  __chkstk_darwin(v16);
  v76 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v18 - 8);
  v78 = &v63 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v20 - 8);
  v77 = &v63 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v22 - 8);
  v24 = &v63 - v23;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v71)
  {
    (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v29);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v25);
    swift_getErrorValue();
    v76 = a1;
    sub_2CEEF0();
    v74 = sub_2CCAF0();

    (*(v26 + 8))(v28, v25);
    (*(v30 + 8))(v32, v29);
    sub_35E0(v75 + 4, v75[7]);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v24, v33, v34);
    (*(v35 + 56))(v24, 0, 1, v34);
    v36 = sub_2CA130();
    v37 = v77;
    (*(*(v36 - 8) + 56))(v77, 1, 1, v36);
    v38 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v39 = sub_2C98F0();
    v40 = *(v39 - 8);
    v41 = v78;
    (*(v40 + 104))(v78, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_2CB4E0();

    sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v24, &qword_34CB88, &unk_2D0D90);
    *&v83 = v76;
    v86 = 1;
    swift_errorRetain();
    v82(&v83);
  }

  else
  {
    v71 = v16;
    v65 = v24;
    v64 = a11;
    sub_2CB5B0();
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    sub_2C9DF0();
    sub_30B8(&v83, &qword_34CC80, &qword_2D1520);
    (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v29);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v25);
    v42 = v66;
    v43 = v67;
    (*(v66 + 104))(v15, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v67);
    v44 = sub_2CCB00();
    v73 = v45;
    v74 = v44;
    (*(v42 + 8))(v15, v43);
    (*(v26 + 8))(v28, v25);
    (*(v30 + 8))(v32, v29);
    sub_35E0(v75 + 4, v75[7]);
    v46 = enum case for ActivityType.disambiguation(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v65;
    (*(v48 + 104))(v65, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = v69;
    sub_F3F4(v64, v69, &qword_34C6E8, &unk_2D0FF0);

    v51 = sub_2CA130();
    v52 = *(v51 - 8);
    v53 = v77;
    (*(v52 + 32))(v77, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = enum case for SiriKitReliabilityCodes.success(_:);
    v55 = sub_2C98F0();
    v56 = *(v55 - 8);
    v57 = v78;
    (*(v56 + 104))(v78, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    sub_2CB4E0();

    sub_30B8(v57, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    v58 = v71;
    *(&v84 + 1) = v71;
    v85 = &protocol witness table for AceOutput;
    v59 = sub_F390(&v83);
    v60 = v70;
    v61 = v76;
    (*(v70 + 16))(v59, v76, v58);
    v86 = 0;
    v82(&v83);
    (*(v60 + 8))(v61, v58);
  }

  return sub_30B8(&v83, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_55214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v84 = a7;
  v90 = a5;
  v91 = a6;
  v92 = a4;
  v93 = a3;
  v8 = *a2;
  v89 = a2;
  v82 = v8;
  v81 = sub_2CD230();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v83 = &v76 - v11;
  v88 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v88);
  v78 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v76 - v15;
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v19 - 8);
  v87 = &v76 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v21 - 8);
  v86 = &v76 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v23 - 8);
  v85 = &v76 - v24;
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v76 - v30);
  sub_F3F4(a1, &v76 - v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_14A58(v31, v18, &qword_34C6E8, &unk_2D0FF0);
    v85 = sub_20410(&qword_34D4C0, &qword_2D1438);
    sub_2CA440();
    v56 = *(v82 + 80);
    v55 = *(v82 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v86 = v56;
    v58 = swift_getAssociatedTypeWitness();
    v59 = v83;
    sub_B37D0(v92, v93, AssociatedTypeWitness, v58, v83);

    sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
    v60 = *&v16[*(v88 + 48)];
    v61 = [v60 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v62 = sub_2CE410();

    if (v62 >> 62)
    {
      result = sub_2CEDA0();
    }

    else
    {
      result = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
    }

    v77 = v18;
    v76 = v16;
    v87 = v55;
    if (result)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v63 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v63 = *(v62 + 32);
      }

      v64 = v63;

      v65 = [v64 fullPrint];

      v66 = sub_2CE270();
      v68 = v67;
    }

    else
    {

      v66 = 0;
      v68 = 0xE000000000000000;
    }

    v69 = sub_2CA130();
    v70 = *(*(v69 - 8) + 8);
    v70(v76, v69);
    v71 = sub_2CA460();
    v72 = v79;
    sub_55D90(v66, v68, v71, v79);

    v73 = v77;
    v74 = v78;
    sub_F3F4(v77, v78, &qword_34C6E8, &unk_2D0FF0);
    v75 = *(v74 + *(v88 + 48));
    sub_5B8A4(v72, v74, v75, v59, v90, v91);

    (*(v80 + 8))(v72, v81);
    sub_30B8(v59, &unk_353020, &unk_2D0970);
    sub_30B8(v73, &qword_34C6E8, &unk_2D0FF0);
    return (v70)(v74, v69);
  }

  v32 = *v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v34 = v26;
  (*(v26 + 16))(v28, v33, v25);
  swift_errorRetain();
  v35 = sub_2CDFE0();
  v36 = sub_2CE680();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v37 = 136315394;
    swift_getErrorValue();
    v38 = sub_2CEEF0();
    v40 = sub_3F08(v38, v39, v94);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    v41 = sub_2CCCA0();
    v43 = sub_3F08(v41, v42, v94);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_0, v35, v36, "MediaItemDisambiguationStrategy#promptForDisambiguationWithRF failed to build dialog. error: %s %{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  (*(v34 + 8))(v28, v25);
  sub_35E0(v89 + 4, v89[7]);
  v44 = enum case for ActivityType.failed(_:);
  v45 = sub_2C9C20();
  v46 = *(v45 - 8);
  v47 = v85;
  (*(v46 + 104))(v85, v44, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = sub_2CA130();
  v49 = v86;
  (*(*(v48 - 8) + 56))(v86, 1, 1, v48);
  v50 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v51 = sub_2C98F0();
  v52 = *(v51 - 8);
  v53 = v87;
  (*(v52 + 104))(v87, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  swift_getErrorValue();
  sub_2CEEF0();
  sub_2CB4E0();

  sub_30B8(v53, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v49, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
  v94[0] = v32;
  v95 = 1;
  swift_errorRetain();
  v90(v94);

  return sub_30B8(v94, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_55D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v7 - 8);
  v83 = v69 - v8;
  v89 = sub_2CD220();
  v84 = *(v89 - 8);
  v9 = __chkstk_darwin(v89);
  v88 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = v69 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v72 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v69 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v19 = *(v13 + 16);
  v69[1] = v13 + 16;
  v69[0] = v19;
  v19(v17, v18, v12);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  v22 = os_log_type_enabled(v20, v21);
  v76 = a2;
  v77 = a4;
  v75 = a1;
  v70 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v90 = v24;
    *v23 = 136446210;
    v25 = sub_2CCCA0();
    v27 = sub_3F08(v25, v26, &v90);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "MediaItemDisambiguationStrategy#disambiguationSnippet... %{public}s", v23, 0xCu);
    sub_306C(v24);
  }

  v71 = *(v13 + 8);
  result = v71(v17, v12);
  v29 = v85;
  v74 = v12;
  if (v85 >> 62)
  {
    result = sub_2CEDA0();
    v30 = result;
  }

  else
  {
    v30 = *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8));
  }

  v73 = v13;
  if (v30)
  {
    if (v30 >= 1)
    {
      v31 = 0;
      v32 = v29 & 0xC000000000000001;
      v79 = v84 + 8;
      v80 = (v84 + 16);
      v78 = v84 + 32;
      v33 = _swiftEmptyArrayStorage;
      v34 = &selRef_hasTwoOrMoreRooms;
      v81 = v29 & 0xC000000000000001;
      v82 = v30;
      while (1)
      {
        if (v32)
        {
          v35 = sub_2CECD0();
        }

        else
        {
          v35 = *(v29 + 8 * v31 + 32);
        }

        v36 = v35;
        v37 = [v35 v34[12]];
        if (v37)
        {
          v38 = v37;
          sub_2CE270();

          v39 = [v36 title];
          if (v39)
          {
            v40 = v39;
            sub_2CE270();
            v86 = v41;

            v42 = [v36 artist];
            if (v42)
            {
              v43 = v42;
              v44 = v33;
              v45 = sub_2CE270();
              v47 = v46;
            }

            else
            {
              v44 = v33;
              v45 = 0;
              v47 = 0;
            }

            sub_565E8(v45, v47, [v36 type]);

            v48 = sub_2C8D90();
            (*(*(v48 - 8) + 56))(v83, 1, 1, v48);
            v49 = v87;
            sub_2CD210();
            (*v80)(v88, v49, v89);
            v33 = v44;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_B91F8(0, v44[2] + 1, 1, v44);
            }

            v32 = v81;
            v30 = v82;
            v34 = &selRef_hasTwoOrMoreRooms;
            v51 = v33[2];
            v50 = v33[3];
            if (v51 >= v50 >> 1)
            {
              v33 = sub_B91F8((v50 > 1), v51 + 1, 1, v33);
            }

            v52 = v84;
            v53 = v89;
            (*(v84 + 8))(v87, v89);
            v33[2] = v51 + 1;
            (*(v52 + 32))(v33 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v88, v53);
            v29 = v85;
            goto LABEL_12;
          }
        }

LABEL_12:
        if (v30 == ++v31)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v54 = v72;
    v55 = v74;
    (v69[0])(v72, v70, v74);
    v56 = sub_2CDFE0();
    v57 = sub_2CE670();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v58 = 136315394;

      v59 = sub_2CE420();
      v61 = v60;

      v62 = sub_3F08(v59, v61, &v90);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2082;
      v63 = sub_2CCCA0();
      v65 = sub_3F08(v63, v64, &v90);

      *(v58 + 14) = v65;
      _os_log_impl(&dword_0, v56, v57, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s %{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    v71(v54, v55);
    v66 = v77;

    sub_2CD310();
    v67 = enum case for SiriAudioSnippets.disambiguation(_:);
    v68 = sub_2CD230();
    (*(*(v68 - 8) + 104))(v66, v67, v68);
  }

  return result;
}

uint64_t sub_565E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v14[0] = a1;
  v15 = sub_2C8EC0();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_35E0((v3 + 120), *(v3 + 144));
  sub_1E93D4(a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v10 = sub_2CC620();
  v12 = v11;

  (*(v5 + 8))(v7, v15);
  if (v16)
  {
    v17 = v14[0];
    v18 = v16;

    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    sub_2CE350(v19);
    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_2CE350(v20);

    return v17;
  }

  return v10;
}

uint64_t sub_567DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a3;
  v20 = a4;
  v21 = sub_2C9C40();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  v12 = sub_2CB260();
  __chkstk_darwin(v12 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, v19 - v14, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v20, v11, &qword_34C6E8, &unk_2D0FF0);
  v15 = *&v11[*(v9 + 56)];
  v16 = [v15 catId];

  sub_2CE270();
  sub_2CA590();
  v17 = sub_2CA130();
  (*(*(v17 - 8) + 8))(v11, v17);
  sub_2CA5F0();
  sub_2CA5A0();
  (*(v5 + 104))(v7, enum case for ResponseType.disambiguation(_:), v21);
  return sub_2CA580();
}

uint64_t sub_56AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[15] = swift_task_alloc();
  v5 = sub_2CE000();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_56BB0, 0, 0);
}

uint64_t sub_56BB0()
{
  v30 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "MediaItemDisambiguationStrategy#clarificationOutput returning output. %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[11];
  v18 = v0[12];
  sub_2CA080();
  swift_allocObject();
  v0[19] = sub_2CA070();
  v20 = sub_2CD230();
  v0[5] = v20;
  v0[6] = sub_5C3A4(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v21 = sub_F390(v0 + 2);
  (*(*(v20 - 8) + 16))(v21, v19, v20);
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  v0[20] = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v16 + *(v17 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v16, v23);
  v28 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_56F1C;
  v25 = v0[13];
  v26 = v0[10];

  return v28(v26, v0 + 2, v22, v25);
}

uint64_t sub_56F1C()
{
  v1 = *v0;
  v4 = *v0;

  sub_306C((v1 + 16));

  v2 = *(v4 + 8);

  return v2();
}

void *MediaItemDisambiguationStrategy.deinit()
{

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);

  sub_306C(v0 + 15);

  return v0;
}

uint64_t MediaItemDisambiguationStrategy.__deallocating_deinit()
{
  MediaItemDisambiguationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_57120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return NeedsDisambiguationFlowStrategy.paginationStyle(app:intent:parameterName:intentResolutionResult:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_571C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;

  sub_5787C(a3, a4, a6, sub_333BC);
}

uint64_t sub_57368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a10 + 80), *(a10 + 88), a4);

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22, a11);
}

uint64_t sub_574A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a9 + 80), *(a9 + 88), a4);

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v21, a10);
}

uint64_t sub_5755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a7 + 80), *(a7 + 88), a4);

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_575E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a8 + 80), *(a8 + 88), a4);

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_57684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t sub_5777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = swift_task_alloc();
  *(v15 + 16) = v17;
  v19 = type metadata accessor for MediaItemDisambiguationStrategy(0, *(a7 + 80), *(a7 + 88), v18);
  *v17 = v15;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v19, a8);
}

uint64_t sub_5787C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 112);
  v33[0] = a1;
  v33[1] = a2;
  v32 = v33;
  if (sub_13964(sub_334E8, v31, v13))
  {
    v14 = [a3 disambiguationItems];
    v15 = sub_2CE410();

    v16 = *(v15 + 16);

    if (v16)
    {
      v17 = [a3 disambiguationItems];
      v18 = sub_2CE410();

      v19 = sub_29B74(v18);

      if (v19)
      {
        sub_20410(qword_34D438, &qword_2D1280);
        swift_allocObject();
        sub_2CA730();
        a4();
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v12, v26, v9);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "MediaItemDisambiguationStrategy#makeDisambiguationItemContainer resolutionResult.disambiguationItems not of type [INMediaItem] or empty", v29, 2u);
    }

    (*(v10 + 8))(v12, v9);
    v21 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v22 = swift_allocError();
    v24 = v30;
    v25 = &enum case for PlaybackCode.ceGE29(_:);
  }

  else
  {
    v21 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v22 = swift_allocError();
    v24 = v23;
    v25 = &enum case for PlaybackCode.ceGE28(_:);
  }

  (*(*(v21 - 8) + 104))(v24, *v25, v21);
  (a4)(v22, 1);
}

unint64_t sub_57C68(void *a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t *a6, unint64_t a7)
{
  v343 = a6;
  v328 = a5;
  v339 = a4;
  v338 = a3;
  v318 = a1;
  v10 = *v7;
  v326 = sub_2CA810();
  v333 = *(v326 - 8);
  v11 = __chkstk_darwin(v326);
  v308 = &v291[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v319 = &v291[-v14];
  __chkstk_darwin(v13);
  v330 = &v291[-v15];
  v314 = sub_2CD5D0();
  v298 = *(v314 - 8);
  __chkstk_darwin(v314);
  v313 = &v291[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v321 = sub_2CAB40();
  v325 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = &v291[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_20410(&unk_353080, &qword_2D1460);
  __chkstk_darwin(v18 - 8);
  v310 = &v291[-v19];
  v20 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v20 - 8);
  v307 = &v291[-v21];
  v22 = sub_2CAA00();
  v323 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v306 = &v291[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v322 = &v291[-v25];
  v26 = *(v10 + 80);
  v342 = *(v10 + 88);
  v341 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_2CA230();
  v316 = *(v27 - 8);
  __chkstk_darwin(v27);
  v315 = &v291[-v28];
  v317 = v29;
  sub_2CA380();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v30 = sub_2CEFA0();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v291[-v32];
  v335 = sub_2CA870();
  v334 = *(v335 - 8);
  v34 = __chkstk_darwin(v335);
  v336 = &v291[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v332 = sub_2CA7B0();
  v331 = *(v332 - 1);
  __chkstk_darwin(v332);
  v37 = &v291[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v337 = sub_2CE000();
  v340 = *(v337 - 8);
  v38 = __chkstk_darwin(v337);
  v312 = &v291[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v324 = &v291[-v41];
  v42 = __chkstk_darwin(v40);
  v303 = &v291[-v43];
  v44 = __chkstk_darwin(v42);
  v300 = &v291[-v45];
  v46 = __chkstk_darwin(v44);
  v301 = &v291[-v47];
  v48 = __chkstk_darwin(v46);
  v302 = &v291[-v49];
  v50 = __chkstk_darwin(v48);
  v311 = &v291[-v51];
  v52 = __chkstk_darwin(v50);
  v327 = &v291[-v53];
  v54 = __chkstk_darwin(v52);
  v309 = &v291[-v55];
  __chkstk_darwin(v54);
  v57 = &v291[-v56];
  v58 = v7[14];
  v347 = a2;
  v348 = v338;
  v345 = &v347;
  if ((sub_13964(sub_13A68, v344, v58) & 1) == 0)
  {
    v78 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v79 = swift_allocError();
    (*(*(v78 - 8) + 104))(v80, enum case for PlaybackCode.ceGE31(_:), v78);
    *v33 = v79;
    swift_storeEnumTagMultiPayload();
    (v343)(v33);
    return (*(v31 + 8))(v33, v30);
  }

  v59 = v22;
  v60 = v37;
  v293 = 0;
  v61 = v343;
  v305 = v59;
  v338 = v33;
  v299 = v30;
  v297 = v31;
  if (qword_34BF58 != -1)
  {
LABEL_108:
    swift_once();
  }

  v62 = v337;
  v63 = sub_3ED0(v337, static Logger.default);
  swift_beginAccess();
  v64 = v340[2];
  v294 = v63;
  v296 = v340 + 2;
  v295 = v64;
  v64(v57, v63, v62);
  v65 = v331;
  v66 = v332;
  (v331)[2](v60, v339, v332);
  v67 = sub_2CDFE0();
  v68 = sub_2CE660();
  v69 = os_log_type_enabled(v67, v68);
  v304 = a7;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v347 = v71;
    *v70 = 136315138;
    v292 = v68;
    sub_2CA790();
    v72 = v335;
    v73 = sub_2CE2A0();
    v75 = v74;
    (v65[1])(v60, v66);
    v76 = sub_3F08(v73, v75, &v347);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_0, v67, v292, "MediaItemDisambiguationStrategy#parseDisambiguationResult parse:%s", v70, 0xCu);
    sub_306C(v71);
    v77 = v337;
    v60 = v343;

    a7 = v304;

    v332 = v340[1];
    (v332)(v57, v77);
  }

  else
  {

    (v65[1])(v60, v66);
    v332 = v340[1];
    (v332)(v57, v62);
    v60 = v61;
    v72 = v335;
    v77 = v62;
  }

  v82 = v336;
  sub_2CA790();
  v83 = v334;
  v84 = (*(v334 + 88))(v82, v72);
  v85 = v338;
  v57 = v305;
  v86 = v333;
  if (v84 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v83 + 96))(v82, v72);
    v87 = *(v82 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v88 = sub_2CA830();
    v89 = swift_dynamicCastUnknownClass();
    if (v89)
    {
      v57 = v89;
      v339 = v87;
      sub_20410(&qword_34D4C0, &qword_2D1438);
      v90 = sub_2CA460();
      v91 = v90;
      if (v90 >> 62)
      {
LABEL_111:
        v92 = sub_2CEDA0();
      }

      else
      {
        v92 = *(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8));
      }

      v61 = v293;

      if (v92)
      {
        v93 = 0;
        a7 = v91 & 0xC000000000000001;
        while (1)
        {
          if (a7)
          {
            v94 = sub_2CECD0();
          }

          else
          {
            if (v93 >= *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v94 = *(v91 + 8 * v93 + 32);
          }

          v60 = v94;
          v95 = (v93 + 1);
          if (__OFADD__(v93, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v347 = v93;
          v348 = v94;
          if (sub_5385C(&v347))
          {
            break;
          }

          ++v93;
          if (v95 == v92)
          {
            goto LABEL_31;
          }
        }

        swift_bridgeObjectRelease_n();
        v156 = v309;
        v157 = v337;
        v295(v309, v294, v337);
        v158 = v60;
        v159 = sub_2CDFE0();
        v160 = sub_2CE690();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *v161 = 138412290;
          *(v161 + 4) = v158;
          *v162 = v158;
          v163 = v158;
          _os_log_impl(&dword_0, v159, v160, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %@", v161, 0xCu);
          sub_30B8(v162, &unk_34FC00, &unk_2D0150);
        }

        (v332)(v156, v157);
        sub_20410(&unk_351900, &unk_2D0960);
        v164 = swift_allocObject();
        *(v164 + 16) = xmmword_2D0770;
        *(v164 + 32) = v158;
        v165 = v158;
        v166 = v318;
        sub_732B0(v164, 1);

        v167 = v88;
        v168 = sub_73218();

        sub_73070(v168);
        v349[0] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
        v347 = v165;
        v169 = v165;
        v170 = v166;
        v171 = v315;
        sub_2CA220();
        v172 = v338;
        v173 = v317;
        sub_2CA370();
        (*(v316 + 8))(v171, v173);
        v174 = v299;
        swift_storeEnumTagMultiPayload();
        (v343)(v172);

        (*(v297 + 8))(v172, v174);
      }

      else
      {
LABEL_31:
        swift_bridgeObjectRelease_n();
        v132 = sub_2CB850();
        sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v133 = swift_allocError();
        (*(*(v132 - 8) + 104))(v134, enum case for PlaybackCode.ceGE33(_:), v132);
        v135 = v338;
        *v338 = v133;
        v136 = v299;
        swift_storeEnumTagMultiPayload();
        (v343)(v135);

        (*(v297 + 8))(v135, v136);
      }

      v175 = sub_2CAFE0();
      return (*(*(v175 - 8) + 8))(v336, v175);
    }

    else
    {

      v295(v327, v294, v77);
      v137 = sub_2CDFE0();
      v138 = sub_2CE680();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_0, v137, v138, "MediaItemDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v139, 2u);
      }

      (v332)(v327, v77);
      v140 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v141 = swift_allocError();
      (*(*(v140 - 8) + 104))(v142, enum case for PlaybackCode.ceGE32(_:), v140);
      *v85 = v141;
      v143 = v299;
      swift_storeEnumTagMultiPayload();
      (v60)(v85);

      (*(v297 + 8))(v85, v143);
      v144 = sub_2CAFE0();
      return (*(*(v144 - 8) + 8))(v82, v144);
    }
  }

  if (v84 != enum case for Parse.directInvocation(_:))
  {
    if (v84 != enum case for Parse.pommesResponse(_:))
    {
      v145 = v312;
      v295(v312, v294, v77);
      v146 = sub_2CDFE0();
      v147 = sub_2CE680();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&dword_0, v146, v147, "MediaItemDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v148, 2u);
      }

      (v332)(v145, v77);
      v149 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v150 = swift_allocError();
      (*(*(v149 - 8) + 104))(v151, enum case for PlaybackCode.ceGE39(_:), v149);
      *v85 = v150;
      v152 = v299;
      swift_storeEnumTagMultiPayload();
      (v60)(v85);
      (*(v297 + 8))(v85, v152);
      v153 = *(v334 + 8);
      v154 = v82;
      v155 = &v351;
      return (v153)(v154, *(v155 - 32));
    }

    (*(v83 + 96))(v82, v72);
    v113 = *v82;
    v114 = sub_1B7F14();
    if (!v114)
    {
      v193 = v303;
      v295(v303, v294, v77);
      v194 = sub_2CDFE0();
      v195 = sub_2CE680();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&dword_0, v194, v195, "MediaItemDisambiguationStrategy#parseDisambiguationResult pommesResponse contains no AudioExperience", v196, 2u);
      }

      (v332)(v193, v77);
      v197 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v198 = swift_allocError();
      (*(*(v197 - 8) + 104))(v199, enum case for PlaybackCode.ceGE34(_:), v197);
      *v85 = v198;
      v200 = v299;
      swift_storeEnumTagMultiPayload();
      (v60)(v85);

      return (*(v297 + 8))(v85, v200);
    }

    v333 = v113;
    v115 = v322;
    v331 = v114;
    sub_2CDA40();
    v116 = v311;
    v295(v311, v294, v77);
    v117 = v323;
    v118 = v77;
    v119 = *(v323 + 16);
    v120 = v306;
    v119(v306, v115, v57);
    v121 = sub_2CDFE0();
    v122 = sub_2CE690();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v346[0] = v124;
      *v123 = 136315138;
      sub_2CAA60();
      v349[0] = v57;
      v349[1] = sub_5C3A4(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
      v125 = sub_F390(&v347);
      v119(v125, v120, v57);
      v126 = sub_2CAA50();
      v128 = v127;
      v330 = *(v323 + 8);
      (v330)(v120, v57);
      sub_306C(&v347);
      v129 = sub_3F08(v126, v128, v346);

      *(v123 + 4) = v129;
      _os_log_impl(&dword_0, v121, v122, "MediaItemDisambiguationStrategy#parseDisambiguationResult pommesResponse userDialogAct: %s", v123, 0xCu);
      sub_306C(v124);

      v117 = v323;

      v130 = v311;
      v131 = v337;
    }

    else
    {

      v330 = *(v117 + 8);
      (v330)(v120, v57);
      v130 = v116;
      v131 = v118;
    }

    (v332)(v130, v131);
    sub_20410(&qword_34D4C0, &qword_2D1438);
    v201 = sub_2CA460();
    v202 = sub_2CD700();
    v203 = v307;
    v119(v307, v322, v57);
    (*(v117 + 56))(v203, 0, 1, v57);
    v342 = v202;
    v204 = sub_2CD600();
    v205 = v338;
    if (!v204)
    {

      v229 = v300;
      v230 = v337;
      v295(v300, v294, v337);
      v231 = sub_2CDFE0();
      v232 = sub_2CE680();
      v233 = os_log_type_enabled(v231, v232);
      v234 = v343;
      v235 = v299;
      if (v233)
      {
        v236 = swift_slowAlloc();
        *v236 = 0;
        _os_log_impl(&dword_0, v231, v232, "MediaItemDisambiguationStrategy#parseDisambiguationResult AudioUsoIntent failed to be constructed", v236, 2u);
      }

      (v332)(v229, v230);
      v237 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v238 = swift_allocError();
      (*(*(v237 - 8) + 104))(v239, enum case for PlaybackCode.ceGE35(_:), v237);
      *v205 = v238;
      swift_storeEnumTagMultiPayload();
      (v234)(v205);

      (*(v297 + 8))(v205, v235);
      return (v330)(v322, v305);
    }

    v206 = v204;
    v328 = v201;
    result = sub_2CD680();
    v207 = v343;
    v208 = v299;
    if (result >> 62)
    {
      v290 = result;
      v209 = sub_2CEDA0();
      result = v290;
    }

    else
    {
      v209 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v210 = v310;
    a7 = v321;
    if (v209)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v211 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v211 = *(result + 32);
      }

      if (v211)
      {
        v326 = v206;

        v88 = sub_2CAAE0();
        v327 = v211;

        v341 = v88;
        v60 = v320;
        v339 = *(v88 + 16);
        if (!v339)
        {
LABEL_95:

          v210 = v310;
          v240 = (*(v325 + 56))(v310, 1, 1, a7);
          v207 = v343;
          v208 = v299;
          goto LABEL_98;
        }

        v212 = 0;
        v336 = (v341 + ((*(v325 + 80) + 32) & ~*(v325 + 80)));
        v335 = v325 + 16;
        LODWORD(v334) = enum case for AudioUsoIntent.UsoNamespace.identifier(_:);
        v213 = (v298 + 104);
        v57 = (v298 + 8);
        v214 = (v325 + 8);
        while (1)
        {
          if (v212 >= v341[2])
          {
            __break(1u);
            goto LABEL_113;
          }

          (*(v325 + 16))(v60, v336 + *(v325 + 72) * v212, a7);
          v215 = sub_2CAB00();
          v217 = v216;
          v219 = sub_2CD630();
          v220 = v215;
          v88 = v218;
          if (v220 == v219 && v217 == v218)
          {
          }

          else
          {
            v221 = sub_2CEEA0();

            if ((v221 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          v88 = sub_2CAB30();
          v223 = v222;
          v224 = v313;
          v225 = v314;
          (*v213)(v313, v334, v314);
          v226 = sub_2CD5C0();
          v228 = v227;
          (*v57)(v224, v225);
          if (v223)
          {
            if (v88 == v226 && v223 == v228)
            {

              v60 = v320;
              a7 = v321;
LABEL_97:
              v252 = v325;
              v210 = v310;
              (*(v325 + 32))(v310, v60, a7);
              v240 = (*(v252 + 56))(v210, 0, 1, a7);
              v207 = v343;
              v208 = v299;
LABEL_98:
              v206 = v326;
LABEL_99:
              __chkstk_darwin(v240);
              *&v291[-16] = v210;
              sub_52690(sub_5C384, &v291[-32], v328);
              v254 = v253;

              if (v254)
              {
                v255 = sub_186DB8(v206, v254);
                v256 = v302;
                v295(v302, v294, v337);
                v257 = v254;
                v258 = sub_2CDFE0();
                v259 = sub_2CE690();

                if (os_log_type_enabled(v258, v259))
                {
                  v260 = swift_slowAlloc();
                  v261 = swift_slowAlloc();
                  *v260 = 138412290;
                  *(v260 + 4) = v257;
                  *v261 = v254;
                  v262 = v257;
                  _os_log_impl(&dword_0, v258, v259, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %@", v260, 0xCu);
                  sub_30B8(v261, &unk_34FC00, &unk_2D0150);

                  v256 = v302;
                }

                v263 = v256;
                v264 = v337;
                (v332)(v263, v337);
                v265 = v301;
                v295(v301, v294, v264);
                v266 = v255;
                v267 = sub_2CDFE0();
                v268 = sub_2CE690();

                if (os_log_type_enabled(v267, v268))
                {
                  v269 = swift_slowAlloc();
                  v270 = swift_slowAlloc();
                  *v269 = 138412290;
                  *(v269 + 4) = v266;
                  *v270 = v266;
                  v271 = v266;
                  _os_log_impl(&dword_0, v267, v268, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media search with: %@", v269, 0xCu);
                  sub_30B8(v270, &unk_34FC00, &unk_2D0150);
                }

                (v332)(v265, v337);
                sub_20410(&unk_351900, &unk_2D0960);
                v272 = swift_allocObject();
                *(v272 + 16) = xmmword_2D0770;
                *(v272 + 32) = v257;
                v273 = v257;
                v274 = v318;
                sub_732B0(v272, 1);

                v275 = v266;
                sub_73070(v266);

                v349[0] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
                v347 = v273;
                v276 = v274;
                v277 = v273;
                v278 = v315;
                sub_2CA220();
                v279 = v338;
                v280 = v317;
                sub_2CA370();
                (*(v316 + 8))(v278, v280);
                swift_storeEnumTagMultiPayload();
                (v343)(v279);

                (*(v297 + 8))(v279, v208);
                (v330)(v322, v305);
                return sub_30B8(v310, &unk_353080, &qword_2D1460);
              }

              else
              {
                v281 = sub_2CB850();
                sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                v282 = swift_allocError();
                (*(*(v281 - 8) + 104))(v283, enum case for PlaybackCode.ceGE36(_:), v281);
                v284 = v338;
                *v338 = v282;
                swift_storeEnumTagMultiPayload();
                (v207)(v284);

                (*(v297 + 8))(v284, v208);
                (v330)(v322, v305);
                return sub_30B8(v210, &unk_353080, &qword_2D1460);
              }
            }

            v88 = sub_2CEEA0();

            v60 = v320;
            a7 = v321;
            if (v88)
            {

              goto LABEL_97;
            }
          }

          else
          {

            v60 = v320;
            a7 = v321;
          }

LABEL_75:
          ++v212;
          (*v214)(v60, a7);
          if (v339 == v212)
          {
            goto LABEL_95;
          }
        }
      }
    }

    else
    {
    }

    v240 = (*(v325 + 56))(v210, 1, 1, a7);
    v327 = 0;
    goto LABEL_99;
  }

  (*(v83 + 96))(v82, v72);
  v96 = v330;
  v97 = v326;
  v86[4](v330, v82, v326);
  sub_238E4C(v96, &v347);
  if (v350 != 3)
  {
    if (v350 != 255)
    {
      sub_30B8(&v347, &qword_34CCB0, &qword_2D5710);
    }

    v98 = v324;
    v295(v324, v294, v77);
    v99 = v86[2];
    v100 = v319;
    v99(v319, v330, v97);
    v101 = sub_2CDFE0();
    v102 = sub_2CE680();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      LODWORD(v342) = v102;
      v104 = v97;
      v105 = v86;
      v106 = v103;
      v341 = swift_slowAlloc();
      v346[0] = v341;
      *v106 = 136315138;
      v99(v308, v100, v104);
      v107 = sub_2CE2A0();
      v109 = v108;
      v110 = v105[1];
      v110(v100, v104);
      v97 = v104;
      v111 = sub_3F08(v107, v109, v346);

      *(v106 + 4) = v111;
      _os_log_impl(&dword_0, v101, v342, "AppResolutionStrategy#makeAppResolutionStateFromParse received unsupported directInvocation: %s", v106, 0xCu);
      sub_306C(v341);

      v112 = v324;
    }

    else
    {

      v110 = v86[1];
      v110(v100, v97);
      v112 = v98;
    }

    (v332)(v112, v77);
    v187 = v297;
    v188 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v189 = swift_allocError();
    (*(*(v188 - 8) + 104))(v190, enum case for PlaybackCode.ceGE37(_:), v188);
    v191 = v338;
    *v338 = v189;
    v192 = v299;
    swift_storeEnumTagMultiPayload();
    (v343)(v191);
    (*(v187 + 8))(v191, v192);
    return (v110)(v330, v97);
  }

  v341 = v347;
  v340 = v348;
  sub_20410(&qword_34D4C0, &qword_2D1438);
  v176 = sub_2CA460();
  v88 = v176;
  if (v176 >> 62)
  {
LABEL_113:
    v91 = sub_2CEDA0();
    if (v91)
    {
      goto LABEL_44;
    }

LABEL_114:

    sub_30B8(&v347, &qword_34CCB0, &qword_2D5710);
    v285 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v286 = swift_allocError();
    (*(*(v285 - 8) + 104))(v287, enum case for PlaybackCode.ceGE38(_:), v285);
    v288 = v338;
    *v338 = v286;
    v289 = v299;
    swift_storeEnumTagMultiPayload();
    (v343)(v288);
    (*(v297 + 8))(v288, v289);
    goto LABEL_115;
  }

  v91 = *(&dword_10 + (v176 & 0xFFFFFFFFFFFFFF8));
  if (!v91)
  {
    goto LABEL_114;
  }

LABEL_44:
  v177 = 0;
  v342 = v88 & 0xC000000000000001;
  while (1)
  {
    if (v342)
    {
      v178 = sub_2CECD0();
    }

    else
    {
      if (v177 >= *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_110;
      }

      v178 = *(v88 + 8 * v177 + 32);
    }

    v179 = v178;
    v57 = (v177 + 1);
    if (__OFADD__(v177, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v180 = [v178 identifier];
    if (!v180)
    {
      goto LABEL_45;
    }

    v181 = a7;
    v182 = v180;
    v183 = sub_2CE270();
    v60 = v184;

    if (v183 == v341 && v60 == v340)
    {
      break;
    }

    v186 = sub_2CEEA0();

    a7 = v181;
    if (v186)
    {
      goto LABEL_92;
    }

LABEL_45:

    ++v177;
    if (v57 == v91)
    {
      goto LABEL_114;
    }
  }

LABEL_92:
  sub_30B8(&v347, &qword_34CCB0, &qword_2D5710);

  sub_20410(&unk_351900, &unk_2D0960);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_2D0770;
  *(v241 + 32) = v179;
  v242 = v179;
  v243 = v318;
  sub_732B0(v241, 1);

  v244 = [v243 backingStore];
  objc_opt_self();
  v245 = swift_dynamicCastObjCClass();
  if (v245)
  {
    [v245 setMediaSearch:0];
  }

  v346[3] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v346[0] = v242;
  v246 = v243;
  v247 = v242;
  v248 = v315;
  sub_2CA220();
  v249 = v338;
  v250 = v317;
  sub_2CA370();
  (*(v316 + 8))(v248, v250);
  v251 = v299;
  swift_storeEnumTagMultiPayload();
  (v343)(v249);

  (*(v297 + 8))(v249, v251);
LABEL_115:
  v153 = v333[1];
  v154 = v330;
  v155 = v349;
  return (v153)(v154, *(v155 - 32));
}

uint64_t sub_5AA9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v48 = a4;
  v43 = a6;
  v37 = a5;
  v45 = a3;
  v46 = a2;
  v39 = a1;
  v41 = *v7;
  v42 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v35 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136446210;
    v18 = sub_2CCCA0();
    v36 = v9;
    v20 = sub_3F08(v18, v19, &v49);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "MediaItemDisambiguationStrategy#promptForDisambiguationWithRF... %{public}s", v16, 0xCu);
    sub_306C(v17);

    (*(v10 + 8))(v12, v36);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v21 = v44;
  v22 = *(v44 + 24);
  v23 = v40;
  v24 = v38;
  v25 = v42;
  (*(v40 + 16))(v38, v37, v42);
  v26 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 2) = *(v41 + 80);
  *(v27 + 3) = *(v28 + 88);
  *(v27 + 4) = v21;
  v29 = v39;
  v31 = v46;
  v30 = v47;
  *(v27 + 5) = v39;
  *(v27 + 6) = v31;
  *(v27 + 7) = v43;
  *(v27 + 8) = v30;
  (*(v23 + 32))(&v27[v26], v24, v25);
  v32 = *(*v22 + 232);

  v33 = v31;

  v32(v29, v45, v48, v33, sub_5B81C, v27);
}

uint64_t sub_5AE8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v46 = a8;
  v47 = a4;
  v43 = a7;
  v44 = a2;
  v48 = a3;
  v45 = a1;
  v11 = *v8;
  v40 = a5;
  v41 = v11;
  v12 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v38 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "MediaItemDisambiguationStrategy#promptForDisambiguationLegacy...", v21, 2u);
  }

  (*(v15 + 8))(v17, v14);
  v38 = v9[3];
  v22 = v42;
  v23 = v39;
  (*(v42 + 16))(v39, a6, v12);
  v24 = (*(v22 + 80) + 96) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v27 = v40;
  v26 = v41;
  *(v25 + 2) = *(v41 + 80);
  v29 = v47;
  v28 = v48;
  *(v25 + 3) = *(v26 + 88);
  *(v25 + 4) = v28;
  *(v25 + 5) = v29;
  *(v25 + 6) = v27;
  v31 = v45;
  v30 = v46;
  *(v25 + 7) = v9;
  *(v25 + 8) = v31;
  v32 = v43;
  v33 = v44;
  *(v25 + 9) = v44;
  *(v25 + 10) = v32;
  *(v25 + 11) = v30;
  (*(v22 + 32))(&v25[v24], v23, v12);
  v34 = *(*v38 + 232);
  v43 = *v38 + 232;

  v35 = v27;

  v36 = v33;

  v34(v31, v48, v29, v36, sub_5B660, v25);
}